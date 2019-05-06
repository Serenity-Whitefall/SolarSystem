// Solar System
// (c) Andrews & Arnold Ltd, Adrian Kennard, see LICENSE file (GPL)

// Beep buttons

#include <ESP8266RevK.h>
#include "Beep.h"
const char* beep_fault = false;

#define MAX_PIN 17

#define app_settings  \
  s(beep);   \

#define s(n) unsigned int n=0;
  app_settings
#undef s

  const char* beep_setting(const char *tag, const byte *value, size_t len)
  { // Called for settings retrieved from EEPROM
#define s(n) do{const char *t=PSTR(#n);if(!strcmp_P(tag,t)){n=(value?atoi((char*)value):0);return t;}}while(0)
    app_settings
#undef s
    return NULL; // Done
  }

  boolean beep_command(const char*tag, const byte *message, size_t len)
  { // Called for incoming MQTT messages
    if (!beep)return false; // No beeps defined
    if (!strcasecmp(tag, PSTR("output9")))
    {
      if (len && *message == '1')
        analogWrite(beeper, PWMRANGE / 2);
      else
        analogWrite(beeper, 0);
      return true;
    }
    return false;
  }

  boolean beep_setup(ESP8266RevK&revk)
  {
    if (!beep)return false; // No beeps defined
    debugf("GPIO available %X for %d beeper", gpiomap, beep);
    gpiomap &= ~(1 << 0); // Dont use GPIO0 as general beep because flash mode
    if (!beeper) for (beeper = 1; beeper < MAX_PIN && !(gpiomap & (1 << beeper)); beeper++); // Find a pin
    if (beeper >= MAX_PIN || !(gpiomap & (1 << beeper)))
    {
      beep_fault = PSTR("Beep pins assignment available");
      beep = NULL;
      return false;
    }
    if (beeper == 1)
      Serial.end(); // Using Tx pin!
    if (beep > 1)
      analogWriteFreq(beep);
    debug("Beep OK");
    return true;
  }

  boolean beep_loop(ESP8266RevK&revk, boolean force)
  {
    if (!beep)return false; // No beeps defined
    // No need, done from commands
    return true;
  }