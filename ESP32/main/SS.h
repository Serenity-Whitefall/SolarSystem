// Common functions and data
// Copyright © 2019-21 Adrian Kennard, Andrews & Arnold Ltd. See LICENCE file for details. GPL 3.0

#include "revk.h"
#include "esp_task_wdt.h"
#include "areas.h"

void status(const char *);      // Report change in tamper/fault (arg is ignored, but used xxx_fault="whatever");

extern uint8_t iotstatedoor;
extern uint8_t iotstateinput;
extern uint8_t iotstateoutput;
extern uint8_t iotstatefault;
extern uint8_t iotstatewarning;
extern uint8_t iotstatetamper;
extern uint8_t iotstatesystem;
extern uint8_t ioteventfob;
extern uint8_t ioteventarm;
extern uint8_t iotkeypad;
extern uint8_t debug;

#define	MAX_PORT	40
const char *app_callback(int client, const char *prefix, const char *target, const char *suffix, jo_t j);
const char *port_check(int p, const char *module, int i);       // Check port is OK, NULL if OK, else error
uint8_t bcdutctime(time_t now, uint8_t datetime[7]);
uint8_t bcdlocaltime(time_t now, uint8_t datetime[7]);

typedef uint32_t area_t;
