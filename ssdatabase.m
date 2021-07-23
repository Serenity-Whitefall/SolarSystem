// Database template

#ifndef table
#define table(n,l)              // Table (n is name, and field name for auto increment id if l=0, or fixed string len l, as primary key)
#endif

#ifndef	join
#define	join(a,b)
#endif

#ifndef	link
#define	link(n)                 // Foreign key link to table n
#endif

#ifndef	link2
#define	link2(a,b)              // Foreign key link to table n under different name
#endif

#ifndef	unique
#define unique(a,b)             // Unique key for a/b
#endif

#ifndef	key
#define key(n,l)                // Unique key for a(l)
#endif

#ifndef	index
#define index(n)                // Simple index
#endif

#ifndef text
#define text(n,l)               // Text field (l set for fixed size)
#endif

#ifndef num
#define num(n)                  // Numeric field (integer)
#endif

#ifndef datetime
#define datetime(n)             // Time field
#endif

#ifndef date
#define date(n)                 // Time field
#endif

#ifndef time0000
#define time0000(n)             // Time field (default 00:00:00)
#endif

#ifndef time2359
#define time2359(n)             // Time field (default 23:59:59)
#endif

#ifndef ip
#define ip(n)                   // IP field
#endif

#ifndef gpio
#define gpio(n)                 // GPIO number field (and inverted)
#endif

#ifndef gpionfc
#define gpionfc(n)              // NFC GPIO number field (and inverted)
#endif

#ifndef gpiopcb
#define gpiopcb(n)              // PCB template GPIO type
#endif

#ifndef gpiotype
#define gpiotype(n)             // GPIO assignment field
#endif

#ifndef bool
#define bool(n)                 // Boolean field
#endif

#ifndef areas
#define areas(n)                // Area list
#endif

#ifndef area
#define area(n)                 // Area
#endif

table(user, 0);                 // Users of the system (web)
text(username, 0);              // Users name
text(email, 0);                 // Users email - we expect unique
key(email, 128);
text(hash, 0);                  // Password hash
bool (admin);                   // Top level admin user - can do anything

table(session, 36);             // Login session
link(user);                     // Which user
datetime(logintime);            // Login time
datetime(expires);              // Session expiry
index(expires);                 // Easier to delete
ip(loginip);                    // Login ip
text(useragent, 0);             // User agent
link(organisation);             // Current selected organisation
link(site);                     // Current selected site

join(user, organisation);
text(userorganisationname, 0);  // Job Title
bool (admin);                   // Customer level admin user - can do anything relating to this organisation
bool (caneditorganisation);
bool (caneditaccess);
bool (caneditsite);
bool (canedituser);
bool (caneditdevice);
bool (canadoptfob);
bool (caneditfob);
bool (caneditarea);
bool (canarm);
bool (candisarm);
bool (canunlock);
bool (canviewlog);

table(organisation, 0);         // Customer (may be more than one site)
text(organisationname, 0);

table(site, 0);                 // Site
link(organisation);
text(sitename, 0);
text(wifissid, 0);              // Site WiFi settings
text(wifipass, 0);              // Site WiFi settings
text(iothost, 0);               // IoT host for local MQTT
bool (nomesh);                  // Don't mesh - i.e. where separate devices on-line
text(meshid, 12);               // Mesh ID (MAC)
key(meshid, 12);
text(meshpass, 0);              // Mesh WiFi passphrase
text(meshkey, 32);              // AES key
key(meshkey, 32);
text(smsuser, 0);
text(smspass, 0);
areas(engineer);                // Site wide engineering state
areas(alarmed);                 // Site wide state from mesh
areas(tampered);                // Site wide state from mesh
areas(faulted);                 // Site wide state from mesh
num(armcancel);                 // Pre arm time
num(alarmdelay);                // Pre alarm time
num(alarmhold);                 // Hold alarm state time
bool (ioteventarm);             // Copy stuff to IoT
#define s(state,c) areas(state)
#include "ESP32/main/states.m"  // Related areas
text(smsnumber, 20);            // Number to SMS
text(smsfrom, 10);              // From, where settable by carrier
areas(smsarm);                  // When to SMS
areas(smsdisarm);
areas(smsarmfail);
areas(smsalarm);
areas(smspanic);
areas(mixand1);
areas(mixset1);
text(mixarm1,0);
text(mixdisarm1,0);
areas(mixand2);
areas(mixset2);
text(mixarm2,0);
text(mixdisarm2,0);
areas(mixand3);
areas(mixset3);
text(mixarm3,0);
text(mixdisarm3,0);
areas(mixand4);
areas(mixset4);
text(mixarm4,0);
text(mixdisarm4,0);
areas(mixand5);
areas(mixset5);
text(mixarm5,0);
text(mixdisarm5,0);
bool (debug);                   // MQTT debug logging

table(area, 0);
link(organisation);             // Quicker
link(site);
area(tag);
unique(site, tag);
text(areaname, 0);

table(access, 0);               // Fob access permissions - available site wide, set on an aid
link(organisation);             // Quicker access
link(site);
text(accessname, 0);
areas(enter);                   // Allow enter
areas(arm);                     // Allow arm
areas(strongarm);               // Allow strong arm
areas(prop);                    // Allow prop
areas(disarm);                  // Allow disarm
num(expiry);                    // Auto expiry (days)
time0000(sunfrom);
time2359(sunto);
time0000(monfrom);
time2359(monto);
time0000(tuefrom);
time2359(tueto);
time0000(wedfrom);
time2359(wedto);
time0000(thufrom);
time2359(thuto);
time0000(frifrom);
time2359(frito);
time0000(satfrom);
time2359(satto);
bool (clock);                   // Ignore time if clock not set
bool (override);                // Open regardless
bool (armlate);                 // Out of hours arming
bool (log);                     // Log access
bool (count);                   // Count access
bool (commit);                  // Commit log/count

table(fob, 14);
datetime(provisioned);          // When provisioned
bool (format);                  // Admin only - reformat fob when seen
num(mem);                       // Free memory

join(fob, aid);                 // Fob is in AID (adopted)
datetime(adopted);              // When adopted
text(ver, 2);                   // Key version
link(access);                   // Access permissions

join(fob, organisation);        // Yes, per org, for security reasons
datetime(blocked);              // Block card (when blocked)
datetime(confirmed);            // When confirmed blocked
text(fobname, 15);              // Name of fob user
datetime(expires);              // Fixed expiry (local time on server)

table(device, 12);
link2(device, via);             // Via another device using mesh
text(devicename, 20);           // Device name
text(keypadidle, 16);           // Keypad display name
link(organisation);             // Yes, can get from site, but useful to reference quickly
link(site);                     // The site the device is on
link(pcb);                      // What type of device this is
bool (iotstatedoor);            // Copy stuff to IoT
bool (iotstateinput);           // Copy stuff to IoT
bool (iotstateoutput);          // Copy stuff to IoT
bool (iotstatefault);           // Copy stuff to IoT
bool (iotstatewarning);         // Copy stuff to IoT
bool (iotstatetamper);          // Copy stuff to IoT
bool (iotstatesystem);          // Copy stuff to IoT
bool (ioteventfob);             // Copy stuff to IoT
bool (iotkeypad);               // Copy stuff to IoT
bool (nfc);                     // Yes, can get from pcb, but useful to reference quickly
bool (rgb);                     // Yes, can get from pcb, but useful to reference quickly
bool (nfcadmin);                // NFC reader for admin use, e.g. on a desk
bool (nfctrusted);              // Trusted device for fob provisioning
bool (door);                    // This is a door
bool (doorexitarm);             // Exit button hold arm
bool (doorexitdisarm);          // Exit button disarm
bool (keypad);                  // Keypad
text(version, 0);               // S/w version
text(build, 0);                 // S/w build
num(chan);                      // WiFi channel
text(bssid, 0);                 // WiFi SSID
text(ssid, 0);                  // WiFi SSID
bool (encryptednvs);            // Built with encrypted NVS
bool (secureboot);              // Built with secure boot
num(flash);                     // Flash size
link(aid);                      // The AID for door access (defines what site it is)
areas(areaenter);               // Areas allowed enter by fob
areas(areaarm);                 // Areas allowed arm by fob
areas(areastrongarm);           // Areas allowed arm by fob
areas(areadisarm);              // Areas allowed disarm by fob
areas(areawarning);             // Areas set by warning
areas(areafault);               // Areas set by fault
areas(areatamper);              // Areas set by tamper
areas(areabell);                // Areas for door bell input
areas(areadeadlock);            // Areas for door bell input
areas(arealed);                 // LED area
areas(areakeypad);              // Keypad area
datetime(online);               // When online, if online
datetime(lastonline);           // When last went offline
text(offlinereason, 0);         // If sent offline reason, what was it
datetime(upgrade);              // When to do upgrade
ip(address);                    // IP address when last online
num(id);                        // Instance for communications when on line
datetime(poke);                 // Poke settings
text(tamper, 0);                // Latest tamper state
text(fault, 0);                 // Latest fault state
num(doorunlock);                // Door timer
num(doorlock);                  // Door timer
num(dooropen);                  // Door timer
num(doorclose);                 // Door timer
num(doorprop);                  // Door timer
num(doorexit);                  // Door timer
num(doorpoll);                  // Door timer
num(doordebounce);              // Door timer

join(device, gpio);
index(device);
gpiotype(type);                 // Pin Usage (in/out/power/exit/etc)
bool (invert);                  // Invert normal polarity for pin
text(name, 0);                  // Port name, default to pin name
num(hold);                      // Port hold time
num(pulse);                     // Port output time
#define i(state,c) areas(state)
#define s(state,c) areas(state)
#include "ESP32/main/states.m"  // Related areas

table(pending, 12);
datetime(online);
ip(address);
num(id);
text(version, 0);               // S/w version
text(build, 0);                 // S/w build
num(chan);                      // WiFi channel
text(bssid, 0);                 // WiFi SSID
text(ssid, 0);                  // WiFi SSID
bool (encryptednvs);            // Built with encrypted NVS
bool (secureboot);              // Built with secure boot
bool (authenticated);           // New authenticated device
num(flash);                     // Flash size

table(pcb, 0);                  // PCB type
text(pcbname, 0);
gpio(tamper);                   // Fixed GPIOs
gpio(leda);
gpio(ledr);
gpio(ledg);
gpio(ledb);
gpio(keypadtx);
gpio(keypadrx);
gpio(keypadde);
gpio(keypadre);
gpio(nfctx);
gpio(nfcrx);
gpio(nfcpower);
gpionfc(nfcred);                // NFC GPIO (actually NFC PCB specific, but set here, so PCB for PCB+NFC combination)
gpionfc(nfcamber);
gpionfc(nfcgreen);
gpionfc(nfctamper);
gpionfc(nfcbell);
gpionfc(nfccard);

table(gpio, 0);
link(pcb);
gpio(pin);
unique(pcb, gpio);
gpiopcb(io);
gpiotype(inittype);
text(initname, 0);              // Default port pin name
num(inithold);                  // Default port hold time
num(initpulse);                 // Default port pulse time

table(aid, 6);                  // AID
link(organisation);
link(site);
text(aidname, 0);

table(event,0);			// Logging
link(device);
datetime(logged);
text(suffix,0);
text(data,0);

#undef table
#undef join
#undef link
#undef link2
#undef unique
#undef key
#undef index
#undef text
#undef num
#undef datetime
#undef date
#undef time0000
#undef time2359
#undef ip
#undef gpio
#undef gpionfc
#undef gpiopcb
#undef gpiotype
#undef bool
#undef areas
#undef area
