// NFC reader interface - working with door control
// Copyright © 2019 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0
static const char TAG[] = "nfc";
#include "SS.h"
const char *nfc_fault = NULL;
const char *nfc_tamper = NULL;

#include "desfireaes.h"
#include "nfc.h"
#include "door.h"
#include "pn532.h"
#include <driver/gpio.h>

#define port_mask(p) ((p)&0x3F)
#define	BITFIELDS "-"
#define PORT_INV 0x40
#define GPIO_INV 0x80           // No SETTING bit

inline int16_t gpio_mask(uint8_t p)
{
   if (!p)
      return -1;                // Invalid (bit set if port is set)
   p &= 0x7F;                   // Does not have SETTING, so just invert at top bit
   if (p >= 30 && p <= 35)
      return p - 30;
   if (p >= 71 && p <= 72)
      return p + 6 - 71;        // Yes, does not work for one byte port with two bits
   return -1;                   // Invalid
}

// Other settings
#define settings  \
  gpio(nfcred) \
  gpio(nfcamber) \
  gpio(nfcgreen) \
  gpio(nfccard) \
  gpio(nfctamper) \
  gpio(nfcbell) \
  u16(nfcpoll,50) \
  u16(nfchold,3000) \
  u16(nfcholdpoll,500) \
  u16(nfcledpoll,100) \
  u16(nfciopoll,200) \
  io(nfctx) \
  io(nfcrx) \
  io(nfcpower) \
  u8(nfcuart,1) \
  t(nfcmqttbell,NULL) \
  bap(aes,17,3) \
  b(aid,3) \
  t(ledIDLE,"3R3-") \

#define i8(n,d) int8_t n;
#define io(n) uint8_t n;
#define gpio(n) uint8_t n;
#define u8(n,d) uint8_t n;
#define u16(n,d) uint16_t n;
#define b(n,l) uint8_t n[l];
#define ba(n,l,a) uint8_t n[a][l];
#define bap(n,l,a) uint8_t n[a][l];
#define u1(n) uint8_t n;
#define t(n,d) const char*n=NULL;
settings
#undef t
#undef i8
#undef io
#undef gpio
#undef u8
#undef u16
#undef b
#undef ba
#undef bap
#undef u1
    pn532_t * pn532 = NULL;
uint8_t nfcmask = 0,
    nfcinvert = 0;
df_t df;
SemaphoreHandle_t nfc_mutex = NULL;     // PN532 has low level message mutex, but this is needed for DESFire level.

static uint8_t ledpattern[20] = "";

static fob_t fob = { };         // Current card state

const char *nfc_led(int len, const void *value)
{
   if (!len)
      len = strlen(value = ledIDLE);    // Default
   jo_t j = jo_object_alloc();
   jo_stringf(j, "sequence", "%.*s", len, value);
   revk_infoj("led", &j);
   if (len > sizeof(ledpattern))
      len = sizeof(ledpattern);
   if (len < sizeof(ledpattern))
      ledpattern[len] = 0;
   if (len)
      memcpy(ledpattern, value, len);
   return "";
}

static void fobevent(void)
{
   jo_t j = jo_object_alloc();
   if (*fob.id)
   {
      if (fob.secureset)
         jo_bool(j, "secure", fob.secure);
      jo_string(j, "id", fob.id);
      if (fob.secure)
         jo_stringf(j, "ver", "%02X", aes[fob.aesid][0]);
      if (fob.keyupdated)
         jo_bool(j, "keyupdated", fob.keyupdated);
      if (fob.fail)
         jo_string(j, "fail", fob.fail);
      if (fob.deny)
         jo_string(j, "deny", fob.deny);
      if (fob.updated)
         jo_bool(j, "updated", fob.updated);
      if (fob.logged)
         jo_bool(j, "logged", fob.logged);
      if (fob.checked)
         jo_bool(j, "checked", fob.checked);
      if (fob.held)
         jo_bool(j, "held", fob.held);
      if (fob.gone)
         jo_bool(j, "gone", fob.gone);
      if (fob.block)
         jo_bool(j, "block", fob.block);
      if (fob.blacklist)
         jo_bool(j, "blacklist", fob.blacklist);
      if (fob.fallback)
         jo_bool(j, "fallback", fob.fallback);
      if (fob.unlocked)
         jo_bool(j, "unlocked", fob.unlocked);
      else if (fob.checked)
         jo_bool(j, "unlockok", fob.unlockok);
#if 0                           // TODO when we have this logic set up
      if (fob.disarmed)
         jo_bool(j, "disarmed", fob.disarmed);
      else if (fob.checked)
         jo_bool(j, "disarmok", fob.disarmok);
      if (fob.armed)
         jo_bool(j, "armed", fob.armed);
      else if (fob.checked)
         jo_bool(j, "armok", fob.armok);
#endif
      if (fob.afile)
         jo_stringf(j, "crc", "%08X", fob.crc);
   }
   if (fob.override)
      jo_bool(j, "override", 1);
   revk_eventj("fob", &j);
}

static void task(void *pvParameters)
{
   if (!nfciopoll)
      nfciopoll = 100;          // Should not happen
   esp_task_wdt_add(NULL);
   pvParameters = pvParameters;
   int64_t nextpoll = 0;        // Timers
   int64_t nextled = 0;
   int64_t nextio = 0;
   int64_t found = 0;
   uint8_t ledlast = 0xFF;
   uint8_t ledpos = 0;
   uint8_t retry = 0;
   while (1)
   {
      esp_task_wdt_reset();
      usleep(1000);
      int64_t now = esp_timer_get_time();
      // Regular tasks
      // Check tamper
      if (nextio < now)
      {                         // Check tamper
         nextio += (uint64_t) nfciopoll *1000LL;
         int p3 = -1;
         if (pn532)
         {                      // Connected, get port
            p3 = pn532_read_GPIO(pn532);
            if (p3 >= 0)
               retry = 0;
            else
            {
               nextio = now;    // Try again right away
               ESP_LOGI(TAG, "Retry %d", retry + 1);
               if (retry++ >= 10)
               {                // We don't expect this in normal operation, but some flash operations seem to stall serial a bit
                  pn532 = pn532_end(pn532);
                  status(nfc_fault = "Failed");
               }
            }
         }
         if (!pn532)
         {                      // In failed state
            static uint8_t wait = 0,
                on = 1;
            if (wait)
               wait--;
            if (wait)
               continue;
            if (on)
            {                   // Try talking to it
               ESP_LOGE(TAG, "NFC re-init");
               pn532 = pn532_init(nfcuart, port_mask(nfctx), port_mask(nfcrx), nfcmask);
               if (pn532)
               {                // All good!
                  df_init(&df, pn532, pn532_dx);
                  ledlast = 0xFF;
                  status(nfc_fault = NULL);
               } else
               {                // Failed
                  on = 0;
                  if (nfcpower)
                     gpio_set_level(port_mask(nfcpower), (nfcpower & PORT_INV) ? 1 : 0);        // Off
                  wait = 2000 / nfciopoll;      // off wait
               }
            } else
            {                   // Off, so turn on
               on = 1;
               if (nfcpower)
                  gpio_set_level(port_mask(nfcpower), (nfcpower & PORT_INV) ? 0 : 1);   // On
               wait = 200 / nfciopoll;  // on wait
            }
         }
         if (!pn532)
            continue;           // No point doing any more
         if (p3 >= 0)
         {                      // Inputs
            p3 ^= nfcinvert;
            if (nfctamper)
            {                   // Check tamper
               if (p3 & (1 << gpio_mask(nfctamper)))
                  status(nfc_tamper = "Tamper switch");
               else
                  status(nfc_tamper = NULL);
            }
            if (nfcbell)
            {
               static uint8_t bell = 0;
               if (p3 & (1 << gpio_mask(nfcbell)))
               {
                  if (!bell)
                  {
                     bell = 1;
                     if (nfcmqttbell)
                     {
                        char *topic = strdup(nfcmqttbell);
                        char *data = strchr(topic, ' ');
                        if (data)
                           *data++ = 0;
                        revk_raw(NULL, topic, data ? strlen(data) : 0, data, 0);
                        free(topic);
                     }
                     revk_info("bell", "pushed");
                  }
               } else
                  bell = 0;
            }
         }
      }
      // LED
      void blink(uint8_t p) {   // Blink an LED
         if (!p)
            return;             //Port not set
         if (ledlast & (1 << gpio_mask(p)))
            return;             //Already set
         pn532_write_GPIO(pn532, (ledlast ^= (1 << gpio_mask(p))) ^ nfcinvert); //Blink on
         nextled = now + (uint64_t) nfcledpoll *1000LL;
      }
      if (nextled < now)
      {                         // Check LED
         nextled = now + (uint64_t) nfcledpoll *1000LL;
         static int count = 0;
         if (count)
            count--;            // We are repeating existing pattern for a while
         if (!count)
         {                      // Next colour
            ledpos++;
            if (ledpos >= sizeof(ledpattern) || !ledpattern[ledpos] || !*ledpattern)
               ledpos = 0;      // Wrap
            uint8_t newled = 0;
            while (ledpos < sizeof(ledpattern) && ledpattern[ledpos] && isdigit(ledpattern[ledpos]))
               count = count * 10 + ledpattern[ledpos++] - '0';
            while (ledpos < sizeof(ledpattern) && ledpattern[ledpos])
            {                   // Check combined colours
               if (nfcred && ledpattern[ledpos] == 'R')
                  newled |= (1 << gpio_mask(nfcred));
               if (nfcamber && ledpattern[ledpos] == 'A')
                  newled |= (1 << gpio_mask(nfcamber));
               if (nfcgreen && ledpattern[ledpos] == 'G')
                  newled |= (1 << gpio_mask(nfcgreen));
               if (nfccard && found)
                  newled |= (1 << gpio_mask(nfccard));
               if (ledpos + 1 >= sizeof(ledpattern) || ledpattern[ledpos + 1] != '+')
                  break;        // Combined LED pattern with +
               ledpos += 2;
            }
            if (newled != ledlast)
               pn532_write_GPIO(pn532, (ledlast = newled) ^ nfcinvert);
         }
      }
      // Card
      if (nextpoll < now)
      {                         // Check for card
         nextpoll = now + (uint64_t) nfcpoll *1000LL;
         if (found && !pn532_Present(pn532))
         {                      // Card gone
            ESP_LOGI(TAG, "gone %s", fob.id);
            fob.gone = 1;
            if (fob.override || (fob.held && nfchold))
               fobevent();
            memset(&fob, 0, sizeof(fob));
            found = 0;
         }
         if (found)
         {
            nextpoll = now + (int64_t) nfcholdpoll *1000LL;
            if (!fob.override && !fob.held && nfchold && found < now)
            {                   // Card has been held for a while, report
               fob.held = 1;
               door_fob(&fob);
               fobevent();
            }
            continue;           // Waiting for card to go
         }
         // Check for new card
         df.keylen = 0;         // New card
         int cards = pn532_Cards(pn532);
         if (cards > 1)
         {
            ESP_LOGI(TAG, "Release 2nd card");
            uint8_t buf[2];
            buf[0] = 0x02;
            int l = pn532_tx(pn532, 0x52, 1, buf, 0, NULL);
            if (l >= 0)
               l = pn532_rx(pn532, 0, NULL, sizeof(buf), buf, 100);
            nextpoll = 0;
         } else if (cards > 0)
         {                      // Check for new card
            xSemaphoreTake(nfc_mutex, portMAX_DELAY);
            nextpoll = now + (int64_t) nfcholdpoll *1000LL;     // Set periodic check for card held
            const char *e = NULL;
            uint8_t *ats = pn532_ats(pn532);
            pn532_nfcid(pn532, fob.id);
            if (*ats && ats[1] == 0x78)
               fob.iso = 1;
            if (!fob.override && aes[0][0] && (aid[0] || aid[1] || aid[2]) && *ats && ats[1] == 0x75)
            {                   // DESFire
               fob.secureset = 1;       // We checked security
               // Select application
               if (!e)
                  e = df_select_application(&df, aid);
               if (e)
               {
                  if (!strstr(e, "TIMEOUT"))
                     e = NULL;  // Just treat as insecure
               } else
               {
                  if (!e && aes[1][0])
                  {             // Get key to work out which AES
                     uint8_t version = 0;
                     e = df_get_key_version(&df, 1, &version);
                     if (!e && version)
                     {
                        uint8_t aesid;
                        for (aesid = 0; aesid < sizeof(aes) / sizeof(*aes) && aes[aesid][0] != version; aesid++);
                        if (aesid == sizeof(aes) / sizeof(*aes))
                           e = "Unknown key version";
                        else
                           fob.aesid = aesid;
                     }
                  }
                  // Authenticate
                  if (!e)
                     e = df_authenticate(&df, 1, aes[fob.aesid] + 1);
                  uint8_t uid[7];       // Real ID
                  if (!e)
                     e = df_get_uid(&df, uid);
                  if (!e)
                  {
                     fob.secure = 1;
                     snprintf(fob.id, sizeof(fob.id), "%02X%02X%02X%02X%02X%02X%02X", uid[0], uid[1], uid[2], uid[3], uid[4], uid[5], uid[6]);
                  }
               }
            }
            // Door check
            if (e)
               fob.fail = e;
            else
               door_fob(&fob);
            void log(void) {    // Log and count
               if (fob.log)
               {                // Log
                  uint8_t buf[13];
                  buf[0] = revk_binid >> 40;
                  buf[1] = revk_binid >> 32;
                  buf[2] = revk_binid >> 24;
                  buf[3] = revk_binid >> 16;
                  buf[4] = revk_binid >> 8;
                  buf[5] = revk_binid;
                  bcdtime(0, buf + 6);
                  if (buf[6] == 0x19)
                     revk_error(TAG, "Clock not set");
                  else if ((e = df_write_data(&df, 1, 'C', DF_MODE_CMAC, 0, 13, buf)))
                     return;
               }
               if (fob.count)
               {                // Count
                  if ((e = df_credit(&df, 2, DF_MODE_CMAC, 1)))
                     return;
               }
               if (fob.log || fob.count || fob.updated)
               {                // Commit
                  if ((e = df_commit(&df)))
                     return;
               }
               // Key update
               if (fob.aesid)
               {
                  e = df_change_key(&df, 1, aes[0][0], aes[fob.aesid] + 1, aes[0] + 1);
                  fob.keyupdated = 1;
               }
               if (!e)
               {
                  if (fob.log)
                     fob.logged = 1;
                  if (fob.count)
                     fob.counted = 1;
               }
            }
            if (e && strstr(e, "TIMEOUT"))
            {
               blink(nfcamber); // Read ID OK
               ESP_LOGI(TAG, "Retry %s %s", fob.id, e);
               nextpoll = 0;    // Try again immediately
               memset(&fob, 0, sizeof(fob));
            } else
            {                   // Processing door
               if (fob.fail)
                  ESP_LOGI(TAG, "Fail %s: %s", fob.id, fob.fail);
               else if (fob.deny)
                  ESP_LOGI(TAG, "Deny %s: %s", fob.id, fob.deny);
               else
                  ESP_LOGI(TAG, "Read %s", fob.id);
               if (!e && df.keylen && fob.commit)
               {
                  log();        // Log before reporting or opening door
                  if (e)
                     fob.unlocked = 0;
               }
               if (fob.unlockok)
                  blink(nfcgreen);
               else if (fob.deny)
                  blink(nfcred);
               else
                  blink(nfcamber);
               if (fob.unlocked)
                  door_unlock(NULL, "fob");     // Door system was happy with fob, let 'em in
               nextled = now + 200000LL;
               fobevent();      // Report
               if (!e && df.keylen && !fob.commit)
               {
                  log();        // Can log after reporting / opening
                  if (e && !strstr(e, "TIMEOUT"))
                     revk_error(TAG, "%s", e);  // Log new error anyway, unless simple timeout
               }
               found = now + (uint64_t) nfchold *1000LL;
            }
            xSemaphoreGive(nfc_mutex);
         }
      }
   }
}

static void report_state(void)
{
   if (!aid[0] && !aid[1] && !aid[2])
      return;
   if (revk_offline())
      return;
   jo_t j = jo_object_alloc();
   jo_stringf(j, "aid", "%02X%02X%02X", aid[0], aid[1], aid[2]);
   jo_array(j, "ver");
   for (int i = 0; i < sizeof(aes) / sizeof(*aes) && aes[i][0]; i++)
      jo_stringf(j, NULL, "%02X", aes[i][0]);
   revk_statej("keys", &j);
}

const char *nfc_command(const char *tag, unsigned int len, const unsigned char *value)
{
   if (!strcmp(tag, "connect"))
      report_state();
   if (!pn532)
      return NULL;              // Not running
   if (!strcmp(tag, "shutdown"))
   {
      if (nfcpower)
         gpio_set_level(port_mask(nfcpower), (nfcpower & PORT_INV) ? 1 : 0);    // Off
   }
   if (nfcmask && !strcmp(tag, "led"))
   {
      jo_t j = jo_parse_mem(value, len);
      char temp[sizeof(ledpattern)];
      int l = jo_strncpy(j, temp, sizeof(temp));
      jo_free(&j);
      if (l < 0)
         return "Expecting JSON string";
      if (l > sizeof(temp))
         return "Too long";
      return nfc_led(l, temp);
   }
   if (!strcmp(tag, TAG))
   {                            // Direct NFC data
      if (!len)
      {
         fob.override = 1;      // Disable normal working
         ESP_LOGI(TAG, "NFC access override");
      } else
      {
         jo_t j = jo_parse_mem((char *) value, len);
         if (jo_here(j) != JO_STRING)
         {
            jo_free(&j);
            return "Expecting JSON string";
         }
         uint8_t buf[256];
         int len = jo_strncpy16(j, (char *) buf, sizeof(buf));
         if (len < 0 || len > sizeof(buf))
         {
            jo_free(&j);
            return "Too big";
         }
         const char *err = NULL;
         xSemaphoreTake(nfc_mutex, portMAX_DELAY);
         len = pn532_dx(pn532, len, buf, sizeof(buf), &err);
         xSemaphoreGive(nfc_mutex);
         if (len < 0)
            return err ? : "?";
         j = jo_create_alloc();
         jo_base16(j, NULL, buf, len);
         revk_infoj(TAG, &j);
      }
      return "";
   }
   return NULL;
}

void nfc_init(void)
{
   revk_register("nfc", 0, sizeof(nfctx), &nfctx, BITFIELDS, SETTING_SET | SETTING_BITFIELD | SETTING_SECRET);  // parent setting
#define i8(n,d) revk_register(#n,0,sizeof(n),&n,#d,SETTING_SIGNED);
#define io(n) revk_register(#n,0,sizeof(n),&n,BITFIELDS,SETTING_SET|SETTING_BITFIELD);
#define gpio(n) revk_register(#n,0,sizeof(n),&n,BITFIELDS,SETTING_BITFIELD);
#define u8(n,d) revk_register(#n,0,sizeof(n),&n,#d,0);
#define u16(n,d) revk_register(#n,0,sizeof(n),&n,#d,0);
#define b(n,l) revk_register(#n,0,sizeof(n),n,NULL,SETTING_BINARY|SETTING_HEX);
#define ba(n,l,a) revk_register(#n,a,sizeof(n[0]),n,NULL,SETTING_BINARY|SETTING_HEX);
#define bap(n,l,a) revk_register(#n,a,sizeof(n[0]),n,NULL,SETTING_BINARY|SETTING_HEX|SETTING_SECRET);
#define u1(n) revk_register(#n,0,sizeof(n),&n,NULL,SETTING_BOOLEAN);
#define t(n,d) revk_register(#n,0,0,&n,d,0);
   settings
#undef t
#undef io
#undef gpio
#undef i8
#undef u8
#undef u16
#undef b
#undef ba
#undef bap
#undef u1
       // Set up ports */
       nfcmask = 0;             /* output mask for NFC */
   if (nfcred)
      nfcmask |= (1 << gpio_mask(nfcred));
   if (nfcamber)
      nfcmask |= (1 << gpio_mask(nfcamber));
   if (nfcgreen)
      nfcmask |= (1 << gpio_mask(nfcgreen));
   if (nfccard)
      nfcmask |= (1 << gpio_mask(nfccard));
   if (nfcred & GPIO_INV)
      nfcinvert |= (1 << gpio_mask(nfcred));
   if (nfcamber & GPIO_INV)
      nfcinvert |= (1 << gpio_mask(nfcamber));
   if (nfcgreen & GPIO_INV)
      nfcinvert |= (1 << gpio_mask(nfcgreen));
   if (nfccard & GPIO_INV)
      nfcinvert |= (1 << gpio_mask(nfccard));
   if (nfctamper & GPIO_INV)
      nfcinvert |= (1 << gpio_mask(nfctamper));
   if (nfcbell & GPIO_INV)
      nfcinvert |= (1 << gpio_mask(nfcbell));
   if (nfcpower)
   {
      gpio_set_level(port_mask(nfcpower), (nfcpower & PORT_INV) ? 0 : 1);
      gpio_set_direction(port_mask(nfcpower), GPIO_MODE_OUTPUT);
      usleep(100000);
   }
   nfc_led(0, NULL);
   if (nfctx && nfcrx)
   {
      const char *e = port_check(port_mask(nfctx), TAG, 0);
      if (!e)
         e = port_check(port_mask(nfcrx), TAG, 1);
      if (e)
         status(nfc_fault = e);
      else
      {
         nfc_mutex = xSemaphoreCreateBinary();
         xSemaphoreGive(nfc_mutex);
         pn532 = pn532_init(nfcuart, port_mask(nfctx), port_mask(nfcrx), nfcmask);
         if (!pn532)
            status(nfc_fault = "Failed to start PN532");
         df_init(&df, pn532, pn532_dx); // Start anyway, er re-try init
         revk_task(TAG, task, pn532);
      }
   } else if (nfcrx || nfctx)
      status(nfc_fault = "Set nfctx, and nfcrx");
   report_state();
}
