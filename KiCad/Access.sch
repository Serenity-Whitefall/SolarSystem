EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Access control"
Date "2021-05-20"
Rev "1"
Comp "Adrian Kennard Andrews & Arnold Ltd"
Comment1 "@TheRealRevK"
Comment2 "www.me.uk"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J1
U 1 1 60436927
P 4200 1750
F 0 "J1" H 4307 2617 50  0000 C CNN
F 1 "USB-C" H 4307 2526 50  0000 C CNN
F 2 "RevK:USC16-TR-Round" H 4350 1750 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 4350 1750 50  0001 C CNN
	1    4200 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6043A8AD
P 5050 1350
F 0 "R1" V 5257 1350 50  0000 C CNN
F 1 "5K1" V 5166 1350 50  0000 C CNN
F 2 "RevK:R_0603" V 4980 1350 50  0001 C CNN
F 3 "~" H 5050 1350 50  0001 C CNN
	1    5050 1350
	0    -1   -1   0   
$EndComp
Text GLabel 2700 1600 2    50   Input ~ 0
I
Text GLabel 1000 1300 0    50   Input ~ 0
EN
Text GLabel 5950 1650 2    50   Input ~ 0
D-
Text GLabel 5950 1850 2    50   Input ~ 0
D+
Wire Wire Line
	3900 2650 4200 2650
Connection ~ 4200 2650
Wire Wire Line
	4800 1950 4800 1850
Connection ~ 4800 1850
Wire Wire Line
	4800 1750 4800 1650
Connection ~ 4800 1650
Wire Wire Line
	4800 1150 5400 1150
Wire Wire Line
	1000 1300 1500 1300
Wire Wire Line
	4800 1350 4900 1350
Wire Wire Line
	4800 1450 4900 1450
Wire Wire Line
	5200 1350 5200 1400
Wire Wire Line
	5400 1400 5200 1400
Connection ~ 5200 1400
Wire Wire Line
	5200 1400 5200 1450
NoConn ~ 1500 2500
NoConn ~ 1500 2600
NoConn ~ 1500 2700
NoConn ~ 1500 2800
NoConn ~ 1500 2900
NoConn ~ 1500 3000
$Comp
L Device:R R2
U 1 1 6049A32B
P 5050 1450
F 0 "R2" V 5150 1450 50  0000 C CNN
F 1 "5K1" V 5250 1450 50  0000 C CNN
F 2 "RevK:R_0603" V 4980 1450 50  0001 C CNN
F 3 "~" H 5050 1450 50  0001 C CNN
	1    5050 1450
	0    1    1    0   
$EndComp
NoConn ~ 4800 2250
NoConn ~ 4800 2350
$Comp
L power:VBUS #PWR013
U 1 1 60464020
P 5400 1150
F 0 "#PWR013" H 5400 1000 50  0001 C CNN
F 1 "VBUS" H 5415 1323 50  0000 C CNN
F 2 "" H 5400 1150 50  0001 C CNN
F 3 "" H 5400 1150 50  0001 C CNN
	1    5400 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 6046533F
P 3100 1100
F 0 "#PWR04" H 3100 950 50  0001 C CNN
F 1 "+3.3V" H 3115 1273 50  0000 C CNN
F 2 "" H 3100 1100 50  0001 C CNN
F 3 "" H 3100 1100 50  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 6046CDD6
P 5400 1400
F 0 "#PWR014" H 5400 1150 50  0001 C CNN
F 1 "GND" H 5405 1227 50  0000 C CNN
F 2 "" H 5400 1400 50  0001 C CNN
F 3 "" H 5400 1400 50  0001 C CNN
	1    5400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 6046DFEC
P 5450 2650
F 0 "#PWR015" H 5450 2400 50  0001 C CNN
F 1 "GND" H 5455 2477 50  0000 C CNN
F 2 "" H 5450 2650 50  0001 C CNN
F 3 "" H 5450 2650 50  0001 C CNN
	1    5450 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6046FB14
P 3150 3900
F 0 "#PWR05" H 3150 3650 50  0001 C CNN
F 1 "GND" H 3155 3727 50  0000 C CNN
F 2 "" H 3150 3900 50  0001 C CNN
F 3 "" H 3150 3900 50  0001 C CNN
	1    3150 3900
	1    0    0    -1  
$EndComp
Text GLabel 2700 1400 2    50   Input ~ 0
O
Text GLabel 2700 1300 2    50   Input ~ 0
CBUS0
Wire Wire Line
	2100 1100 2100 1200
Wire Wire Line
	4200 2650 5450 2650
Wire Wire Line
	4800 1650 5550 1650
Wire Wire Line
	10650 1500 10650 1200
Wire Wire Line
	2100 1100 3100 1100
Wire Wire Line
	4800 1850 5550 1850
$Comp
L RevK:AJK AJK1
U 1 1 60629B22
P 10500 6900
F 0 "AJK1" H 10500 7000 50  0001 C CNN
F 1 "AJK" H 10750 6900 50  0000 L CNN
F 2 "RevK:AJK" H 10500 6800 50  0001 C CNN
F 3 "" H 10500 6800 50  0001 C CNN
	1    10500 6900
	1    0    0    -1  
$EndComp
Connection ~ 2100 1100
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 6043326C
P 2100 2500
F 0 "U1" H 2100 4081 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2100 3990 50  0000 C CNN
F 2 "RevK:ESP32-WROOM-32" H 2100 1000 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 1800 2550 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3900 3150 3900
Text GLabel 2700 2500 2    50   Input ~ 0
IN1
Text GLabel 2700 2700 2    50   Input ~ 0
IN2
Text GLabel 2700 2800 2    50   Input ~ 0
IN3
Text GLabel 2700 2400 2    50   Input ~ 0
RFTX
Text GLabel 2700 2300 2    50   Input ~ 0
RFRX
NoConn ~ 2700 3500
NoConn ~ 2700 3600
Text GLabel 2700 2200 2    50   Input ~ 0
OUT1
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 60739FA0
P 7200 4100
F 0 "J4" H 7280 4092 50  0000 L CNN
F 1 "RFID" H 7280 4001 50  0000 L CNN
F 2 "RevK:Molex_MiniSPOX_H4RA" H 7200 4100 50  0001 C CNN
F 3 "~" H 7200 4100 50  0001 C CNN
	1    7200 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6074263F
P 7200 2550
F 0 "J2" H 7280 2542 50  0000 L CNN
F 1 "POWER" H 7280 2451 50  0000 L CNN
F 2 "RevK:Molex_MiniSPOX_H2RA" H 7200 2550 50  0001 C CNN
F 3 "~" H 7200 2550 50  0001 C CNN
	1    7200 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 60743D17
P 7000 4000
F 0 "#PWR028" H 7000 3750 50  0001 C CNN
F 1 "GND" V 7005 3872 50  0000 R CNN
F 2 "" H 7000 4000 50  0001 C CNN
F 3 "" H 7000 4000 50  0001 C CNN
	1    7000 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 607450BB
P 7000 2550
F 0 "#PWR025" H 7000 2300 50  0001 C CNN
F 1 "GND" V 7005 2422 50  0000 R CNN
F 2 "" H 7000 2550 50  0001 C CNN
F 3 "" H 7000 2550 50  0001 C CNN
	1    7000 2550
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 607622A0
P 7000 4100
F 0 "#PWR029" H 7000 3950 50  0001 C CNN
F 1 "+5V" V 7015 4228 50  0000 L CNN
F 2 "" H 7000 4100 50  0001 C CNN
F 3 "" H 7000 4100 50  0001 C CNN
	1    7000 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 6076D038
P 5650 3600
F 0 "#PWR016" H 5650 3350 50  0001 C CNN
F 1 "GND" V 5655 3472 50  0000 R CNN
F 2 "" H 5650 3600 50  0001 C CNN
F 3 "" H 5650 3600 50  0001 C CNN
	1    5650 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6076ECA1
P 5500 3400
F 0 "R3" V 5293 3400 50  0000 C CNN
F 1 "1K" V 5384 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5430 3400 50  0001 C CNN
F 3 "~" H 5500 3400 50  0001 C CNN
	1    5500 3400
	0    1    1    0   
$EndComp
Text GLabel 5350 3400 0    50   Input ~ 0
OUT1
Text GLabel 5800 4300 0    50   Input ~ 0
RFTX
Text GLabel 5800 4200 0    50   Input ~ 0
RFRX
NoConn ~ 2700 3100
$Comp
L power:GND #PWR034
U 1 1 60776D64
P 9450 3500
F 0 "#PWR034" H 9450 3250 50  0001 C CNN
F 1 "GND" H 9455 3327 50  0000 C CNN
F 2 "" H 9450 3500 50  0001 C CNN
F 3 "" H 9450 3500 50  0001 C CNN
	1    9450 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 6077B7DD
P 9000 3300
F 0 "R11" V 8793 3300 50  0000 C CNN
F 1 "1k" V 8884 3300 50  0000 C CNN
F 2 "RevK:R_0603" V 8930 3300 50  0001 C CNN
F 3 "~" H 9000 3300 50  0001 C CNN
	1    9000 3300
	0    1    1    0   
$EndComp
Text GLabel 2700 1800 2    50   Input ~ 0
SHDN
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 6077F53E
P 9350 3300
F 0 "Q1" H 9541 3346 50  0000 L CNN
F 1 "BC817" H 9541 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9550 3225 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC818-D.pdf" H 9350 3300 50  0001 L CNN
	1    9350 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 60818BC0
P 10350 4300
F 0 "D4" H 10343 4517 50  0000 C CNN
F 1 "LED" H 10343 4426 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10350 4300 50  0001 C CNN
F 3 "~" H 10350 4300 50  0001 C CNN
	1    10350 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 60819C12
P 10050 4300
F 0 "R13" V 9843 4300 50  0000 C CNN
F 1 "680R" V 9934 4300 50  0000 C CNN
F 2 "RevK:R_0603" V 9980 4300 50  0001 C CNN
F 3 "~" H 10050 4300 50  0001 C CNN
	1    10050 4300
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR044
U 1 1 6081C3D8
P 10500 4300
F 0 "#PWR044" H 10500 4150 50  0001 C CNN
F 1 "+3.3V" V 10515 4428 50  0000 L CNN
F 2 "" H 10500 4300 50  0001 C CNN
F 3 "" H 10500 4300 50  0001 C CNN
	1    10500 4300
	0    1    1    0   
$EndComp
Text GLabel 9900 4300 0    50   Input ~ 0
LED
Text GLabel 2700 2100 2    50   Input ~ 0
LED
Text GLabel 8850 3300 0    50   Input ~ 0
SHDN
$Comp
L Interface_USB:FT231XQ U2
U 1 1 6084108B
P 2600 6350
F 0 "U2" H 2600 7431 50  0000 C CNN
F 1 "FT231XQ" H 2600 7340 50  0000 C CNN
F 2 "RevK:QFN-20-(hand)-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 3950 5550 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 2600 6350 50  0001 C CNN
	1    2600 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5450 2500 5450
Connection ~ 2500 5450
Text GLabel 1900 6050 0    50   Input ~ 0
D-
Text GLabel 1900 6150 0    50   Input ~ 0
D+
Wire Wire Line
	1900 6350 1550 6350
Wire Wire Line
	1550 6350 1550 5750
Wire Wire Line
	1550 5750 1900 5750
Connection ~ 1550 5750
Wire Wire Line
	1550 5750 1550 5450
Wire Wire Line
	1550 5450 2500 5450
Wire Wire Line
	2500 7250 2600 7250
Wire Wire Line
	2600 7250 2700 7250
Connection ~ 2600 7250
$Comp
L power:GND #PWR03
U 1 1 6085BF74
P 2600 7250
F 0 "#PWR03" H 2600 7000 50  0001 C CNN
F 1 "GND" H 2605 7077 50  0000 C CNN
F 2 "" H 2600 7250 50  0001 C CNN
F 3 "" H 2600 7250 50  0001 C CNN
	1    2600 7250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6085C74E
P 1550 5450
F 0 "#PWR01" H 1550 5300 50  0001 C CNN
F 1 "+3.3V" H 1565 5623 50  0000 C CNN
F 2 "" H 1550 5450 50  0001 C CNN
F 3 "" H 1550 5450 50  0001 C CNN
	1    1550 5450
	1    0    0    -1  
$EndComp
Connection ~ 1550 5450
$Comp
L power:GND #PWR06
U 1 1 6085CF95
P 3300 6050
F 0 "#PWR06" H 3300 5800 50  0001 C CNN
F 1 "GND" V 3305 5922 50  0000 R CNN
F 2 "" H 3300 6050 50  0001 C CNN
F 3 "" H 3300 6050 50  0001 C CNN
	1    3300 6050
	0    -1   -1   0   
$EndComp
Text GLabel 3300 6150 2    50   Input ~ 0
CBUS0
Text GLabel 3300 5750 2    50   Input ~ 0
I
Text GLabel 3300 5850 2    50   Input ~ 0
O
Text GLabel 3300 5950 2    50   Input ~ 0
EN
NoConn ~ 3300 6650
NoConn ~ 3300 6750
NoConn ~ 3300 6850
NoConn ~ 3300 6950
$Comp
L power:GND #PWR07
U 1 1 6087F33E
P 3300 6250
F 0 "#PWR07" H 3300 6000 50  0001 C CNN
F 1 "GND" V 3305 6122 50  0000 R CNN
F 2 "" H 3300 6250 50  0001 C CNN
F 3 "" H 3300 6250 50  0001 C CNN
	1    3300 6250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6087FBAE
P 3300 6350
F 0 "#PWR08" H 3300 6100 50  0001 C CNN
F 1 "GND" V 3305 6222 50  0000 R CNN
F 2 "" H 3300 6350 50  0001 C CNN
F 3 "" H 3300 6350 50  0001 C CNN
	1    3300 6350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 608803BE
P 3300 6450
F 0 "#PWR09" H 3300 6200 50  0001 C CNN
F 1 "GND" V 3305 6322 50  0000 R CNN
F 2 "" H 3300 6450 50  0001 C CNN
F 3 "" H 3300 6450 50  0001 C CNN
	1    3300 6450
	0    -1   -1   0   
$EndComp
$Comp
L RevK:G3VM-41GR8 U3
U 1 1 608BF21E
P 5950 3500
F 0 "U3" H 5950 3825 50  0000 C CNN
F 1 "G3VM-41GR8" H 5950 3734 50  0000 C CNN
F 2 "RevK:Special-SOP-4-3.7x4.55" H 5950 3200 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=1284&prodName=TLP3542" H 5950 3500 50  0001 C CNN
	1    5950 3500
	1    0    0    -1  
$EndComp
$Comp
L RevK:QR U4
U 1 1 608F5575
P 11000 6900
F 0 "U4" H 11000 6775 50  0001 C CNN
F 1 "QR" H 11000 6775 50  0001 C CNN
F 2 "RevK:QR-SS" H 10975 6875 50  0001 C CNN
F 3 "" H 10975 6875 50  0001 C CNN
	1    11000 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 608CB396
P 7200 3100
F 0 "J3" H 7280 3142 50  0000 L CNN
F 1 "DOOR" H 7280 3051 50  0000 L CNN
F 2 "RevK:Molex_MiniSPOX_H3RA" H 7200 3100 50  0001 C CNN
F 3 "~" H 7200 3100 50  0001 C CNN
	1    7200 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J5
U 1 1 608CF414
P 7250 5800
F 0 "J5" H 7330 5792 50  0000 L CNN
F 1 "INPUTS" H 7330 5701 50  0000 L CNN
F 2 "RevK:Molex_MiniSPOX_H6RA" H 7250 5800 50  0001 C CNN
F 3 "~" H 7250 5800 50  0001 C CNN
	1    7250 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 608E5346
P 7000 3000
F 0 "#PWR027" H 7000 2750 50  0001 C CNN
F 1 "GND" V 7005 2872 50  0000 R CNN
F 2 "" H 7000 3000 50  0001 C CNN
F 3 "" H 7000 3000 50  0001 C CNN
	1    7000 3000
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 608E5B1F
P 6200 3100
F 0 "JP1" H 6200 3285 50  0000 C CNN
F 1 "12V" H 6200 3194 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 6200 3100 50  0001 C CNN
F 3 "~" H 6200 3100 50  0001 C CNN
	1    6200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 3400 6500 3400
Wire Wire Line
	6500 3400 6500 3100
Wire Wire Line
	6500 3100 6300 3100
$Comp
L power:GND #PWR030
U 1 1 60907367
P 7050 5600
F 0 "#PWR030" H 7050 5350 50  0001 C CNN
F 1 "GND" V 7055 5472 50  0000 R CNN
F 2 "" H 7050 5600 50  0001 C CNN
F 3 "" H 7050 5600 50  0001 C CNN
	1    7050 5600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR031
U 1 1 6090791B
P 7050 5800
F 0 "#PWR031" H 7050 5550 50  0001 C CNN
F 1 "GND" V 7055 5672 50  0000 R CNN
F 2 "" H 7050 5800 50  0001 C CNN
F 3 "" H 7050 5800 50  0001 C CNN
	1    7050 5800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 60907F2D
P 7050 6000
F 0 "#PWR032" H 7050 5750 50  0001 C CNN
F 1 "GND" V 7055 5872 50  0000 R CNN
F 2 "" H 7050 6000 50  0001 C CNN
F 3 "" H 7050 6000 50  0001 C CNN
	1    7050 6000
	0    1    1    0   
$EndComp
NoConn ~ 2700 1900
NoConn ~ 2700 1500
NoConn ~ 2700 2900
NoConn ~ 2700 3000
NoConn ~ 2700 3200
NoConn ~ 2700 3300
NoConn ~ 2700 3400
NoConn ~ 2700 1700
NoConn ~ 2700 2600
NoConn ~ 6200 3100
NoConn ~ 9400 9850
Wire Wire Line
	7000 3200 7000 3600
$Comp
L Device:R R4
U 1 1 608C473E
P 5700 1650
F 0 "R4" V 5493 1650 50  0000 C CNN
F 1 "27R" V 5584 1650 50  0000 C CNN
F 2 "RevK:R_0603" V 5630 1650 50  0001 C CNN
F 3 "~" H 5700 1650 50  0001 C CNN
	1    5700 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 1650 5950 1650
$Comp
L Device:R R5
U 1 1 608C572B
P 5700 1850
F 0 "R5" V 5950 1850 50  0000 C CNN
F 1 "27R" V 5850 1850 50  0000 C CNN
F 2 "RevK:R_0603" V 5630 1850 50  0001 C CNN
F 3 "~" H 5700 1850 50  0001 C CNN
	1    5700 1850
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 1850 5950 1850
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 608D1452
P 10500 6150
F 0 "H1" H 10600 6196 50  0000 L CNN
F 1 "MountingHole" H 10600 6105 50  0000 L CNN
F 2 "RevK:ISO7380-M3-Pad" H 10500 6150 50  0001 C CNN
F 3 "~" H 10500 6150 50  0001 C CNN
	1    10500 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR045
U 1 1 608DE2B1
P 10500 6250
F 0 "#PWR045" H 10500 6000 50  0001 C CNN
F 1 "GND" H 10505 6077 50  0000 C CNN
F 2 "" H 10500 6250 50  0001 C CNN
F 3 "" H 10500 6250 50  0001 C CNN
	1    10500 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR026
U 1 1 608D441F
P 7000 2650
F 0 "#PWR026" H 7000 2500 50  0001 C CNN
F 1 "+12V" V 7015 2778 50  0000 L CNN
F 2 "" H 7000 2650 50  0001 C CNN
F 3 "" H 7000 2650 50  0001 C CNN
	1    7000 2650
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR046
U 1 1 608D6235
P 10650 1200
F 0 "#PWR046" H 10650 1050 50  0001 C CNN
F 1 "+12V" H 10665 1373 50  0000 C CNN
F 2 "" H 10650 1200 50  0001 C CNN
F 3 "" H 10650 1200 50  0001 C CNN
	1    10650 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 608D7F70
P 10500 1500
F 0 "D5" H 10500 1283 50  0000 C CNN
F 1 "D" H 10500 1374 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10500 1500 50  0001 C CNN
F 3 "~" H 10500 1500 50  0001 C CNN
	1    10500 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	10350 1500 10350 1200
$Comp
L power:VBUS #PWR043
U 1 1 608DB037
P 10350 1200
F 0 "#PWR043" H 10350 1050 50  0001 C CNN
F 1 "VBUS" H 10365 1373 50  0000 C CNN
F 2 "" H 10350 1200 50  0001 C CNN
F 3 "" H 10350 1200 50  0001 C CNN
	1    10350 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR022
U 1 1 608D570F
P 6100 3100
F 0 "#PWR022" H 6100 2950 50  0001 C CNN
F 1 "+12V" V 6115 3228 50  0000 L CNN
F 2 "" H 6100 3100 50  0001 C CNN
F 3 "" H 6100 3100 50  0001 C CNN
	1    6100 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 609872B4
P 9450 2950
F 0 "R12" V 9243 2950 50  0000 C CNN
F 1 "100K" V 9334 2950 50  0000 C CNN
F 2 "RevK:R_0603" V 9380 2950 50  0001 C CNN
F 3 "~" H 9450 2950 50  0001 C CNN
	1    9450 2950
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR033
U 1 1 6098D6E9
P 9450 2800
F 0 "#PWR033" H 9450 2650 50  0001 C CNN
F 1 "+12V" V 9465 2928 50  0000 L CNN
F 2 "" H 9450 2800 50  0001 C CNN
F 3 "" H 9450 2800 50  0001 C CNN
	1    9450 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 608FD8A1
P 10100 2150
F 0 "#PWR038" H 10100 1900 50  0001 C CNN
F 1 "GND" V 10105 2022 50  0000 R CNN
F 2 "" H 10100 2150 50  0001 C CNN
F 3 "" H 10100 2150 50  0001 C CNN
	1    10100 2150
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR039
U 1 1 608FE15A
P 10100 2250
F 0 "#PWR039" H 10100 2100 50  0001 C CNN
F 1 "+3.3V" V 10115 2378 50  0000 L CNN
F 2 "" H 10100 2250 50  0001 C CNN
F 3 "" H 10100 2250 50  0001 C CNN
	1    10100 2250
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR036
U 1 1 60913ECD
P 10100 1950
F 0 "#PWR036" H 10100 1800 50  0001 C CNN
F 1 "+12V" V 10115 2078 50  0000 L CNN
F 2 "" H 10100 1950 50  0001 C CNN
F 3 "" H 10100 1950 50  0001 C CNN
	1    10100 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR037
U 1 1 60914FE1
P 10100 2050
F 0 "#PWR037" H 10100 1900 50  0001 C CNN
F 1 "+12V" V 10115 2178 50  0000 L CNN
F 2 "" H 10100 2050 50  0001 C CNN
F 3 "" H 10100 2050 50  0001 C CNN
	1    10100 2050
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR040
U 1 1 60919863
P 10150 3200
F 0 "#PWR040" H 10150 3050 50  0001 C CNN
F 1 "+12V" V 10165 3328 50  0000 L CNN
F 2 "" H 10150 3200 50  0001 C CNN
F 3 "" H 10150 3200 50  0001 C CNN
	1    10150 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR041
U 1 1 6091A03A
P 10150 3300
F 0 "#PWR041" H 10150 3050 50  0001 C CNN
F 1 "GND" V 10155 3172 50  0000 R CNN
F 2 "" H 10150 3300 50  0001 C CNN
F 3 "" H 10150 3300 50  0001 C CNN
	1    10150 3300
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 6091A941
P 10150 3400
F 0 "#PWR042" H 10150 3250 50  0001 C CNN
F 1 "+5V" V 10165 3528 50  0000 L CNN
F 2 "" H 10150 3400 50  0001 C CNN
F 3 "" H 10150 3400 50  0001 C CNN
	1    10150 3400
	0    -1   -1   0   
$EndComp
Connection ~ 9450 3100
$Comp
L RevK:Regulator Reg1
U 1 1 608E8C57
P 10100 1950
F 0 "Reg1" H 10678 1851 50  0000 L CNN
F 1 "3.3V" H 10678 1760 50  0000 L CNN
F 2 "RevK:RegulatorBlock" H 10550 2050 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 10550 2050 50  0001 C CNN
	1    10100 1950
	1    0    0    -1  
$EndComp
$Comp
L RevK:Regulator Reg2
U 1 1 608E9E8F
P 10150 3100
F 0 "Reg2" H 10728 3001 50  0000 L CNN
F 1 "5V" H 10728 2910 50  0000 L CNN
F 2 "RevK:RegulatorBlock" H 10600 3200 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 10600 3200 50  0001 C CNN
	1    10150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3100 10150 3100
Wire Wire Line
	6500 3100 7000 3100
Connection ~ 6500 3100
Wire Wire Line
	6250 3600 7000 3600
NoConn ~ 1500 1500
NoConn ~ 1500 1600
$Comp
L Device:C C1
U 1 1 60910A6C
P 1550 6500
F 0 "C1" H 1665 6546 50  0000 L CNN
F 1 "0.1uF" H 1665 6455 50  0000 L CNN
F 2 "RevK:C_0603" H 1588 6350 50  0001 C CNN
F 3 "~" H 1550 6500 50  0001 C CNN
	1    1550 6500
	1    0    0    -1  
$EndComp
Connection ~ 1550 6350
$Comp
L power:GND #PWR02
U 1 1 6091181E
P 1550 6650
F 0 "#PWR02" H 1550 6400 50  0001 C CNN
F 1 "GND" H 1555 6477 50  0000 C CNN
F 2 "" H 1550 6650 50  0001 C CNN
F 3 "" H 1550 6650 50  0001 C CNN
	1    1550 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 6095334D
P 10000 5050
F 0 "#PWR035" H 10000 4800 50  0001 C CNN
F 1 "GND" V 10005 4922 50  0000 R CNN
F 2 "" H 10000 5050 50  0001 C CNN
F 3 "" H 10000 5050 50  0001 C CNN
	1    10000 5050
	0    1    1    0   
$EndComp
Text GLabel 10400 5050 2    50   Input ~ 0
TAMPER
Text GLabel 2700 2000 2    50   Input ~ 0
TAMPER
$Comp
L Switch:SW_Push SW1
U 1 1 6093BE97
P 10200 5050
F 0 "SW1" H 10200 5335 50  0000 C CNN
F 1 "Tamper" H 10200 5244 50  0000 C CNN
F 2 "RevK:SW_PUSH_6mm_SMD" H 10200 5250 50  0001 C CNN
F 3 "~" H 10200 5250 50  0001 C CNN
	1    10200 5050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 6094F3AD
P 10150 5350
F 0 "J6" V 10022 5162 50  0000 R CNN
F 1 "ExtTamper" V 10113 5162 50  0000 R CNN
F 2 "TestPoint:TestPoint_2Pads_Pitch5.08mm_Drill1.3mm" H 10150 5350 50  0001 C CNN
F 3 "~" H 10150 5350 50  0001 C CNN
	1    10150 5350
	0    -1   1    0   
$EndComp
Wire Wire Line
	10000 5050 10000 5150
Connection ~ 10000 5050
Wire Wire Line
	10000 5150 10150 5150
Wire Wire Line
	10400 5050 10400 5150
Wire Wire Line
	10250 5150 10400 5150
$Comp
L Device:R R10
U 1 1 6098E6BE
P 6400 4300
F 0 "R10" V 6500 4300 50  0000 C CNN
F 1 "100R" V 6600 4300 50  0000 C CNN
F 2 "RevK:R_0603" V 6330 4300 50  0001 C CNN
F 3 "~" H 6400 4300 50  0001 C CNN
	1    6400 4300
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 6098F76B
P 6400 4200
F 0 "R9" V 6300 4200 50  0000 C CNN
F 1 "100R" V 6200 4200 50  0000 C CNN
F 2 "RevK:R_0603" V 6330 4200 50  0001 C CNN
F 3 "~" H 6400 4200 50  0001 C CNN
	1    6400 4200
	0    1    1    0   
$EndComp
$Comp
L Diode:BAV99S D3
U 1 1 6099FC70
P 5950 4000
F 0 "D3" H 5950 4217 50  0000 C CNN
F 1 "BAV99S" H 5950 4126 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5950 3500 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 5950 4000 50  0001 C CNN
	1    5950 4000
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAV99S D3
U 2 1 60A017E2
P 5950 4500
F 0 "D3" H 5950 4717 50  0000 C CNN
F 1 "BAV99S" H 5950 4626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5950 4000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 5950 4500 50  0001 C CNN
	2    5950 4500
	1    0    0    1   
$EndComp
Wire Wire Line
	5800 4200 5950 4200
Wire Wire Line
	5800 4300 5950 4300
Connection ~ 5950 4200
Wire Wire Line
	5950 4200 6250 4200
Wire Wire Line
	5950 4300 6250 4300
Connection ~ 5950 4300
Wire Wire Line
	6550 4200 7000 4200
Wire Wire Line
	6550 4300 7000 4300
$Comp
L power:+3.3V #PWR023
U 1 1 60A1DD31
P 6250 4000
F 0 "#PWR023" H 6250 3850 50  0001 C CNN
F 1 "+3.3V" H 6265 4173 50  0000 C CNN
F 2 "" H 6250 4000 50  0001 C CNN
F 3 "" H 6250 4000 50  0001 C CNN
	1    6250 4000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR024
U 1 1 60A1E596
P 6250 4500
F 0 "#PWR024" H 6250 4350 50  0001 C CNN
F 1 "+3.3V" H 6265 4673 50  0000 C CNN
F 2 "" H 6250 4500 50  0001 C CNN
F 3 "" H 6250 4500 50  0001 C CNN
	1    6250 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 60A1EFD2
P 5650 4500
F 0 "#PWR018" H 5650 4250 50  0001 C CNN
F 1 "GND" H 5655 4327 50  0000 C CNN
F 2 "" H 5650 4500 50  0001 C CNN
F 3 "" H 5650 4500 50  0001 C CNN
	1    5650 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60A1F837
P 5650 4000
F 0 "#PWR017" H 5650 3750 50  0001 C CNN
F 1 "GND" H 5655 3827 50  0000 C CNN
F 2 "" H 5650 4000 50  0001 C CNN
F 3 "" H 5650 4000 50  0001 C CNN
	1    5650 4000
	-1   0    0    1   
$EndComp
Text GLabel 5450 5500 0    50   Input ~ 0
IN1
$Comp
L Device:R R6
U 1 1 609F92AA
P 6050 5500
F 0 "R6" V 5950 5500 50  0000 C CNN
F 1 "100R" V 5850 5500 50  0000 C CNN
F 2 "RevK:R_0603" V 5980 5500 50  0001 C CNN
F 3 "~" H 6050 5500 50  0001 C CNN
	1    6050 5500
	0    1    1    0   
$EndComp
$Comp
L Diode:BAV99S D1
U 1 1 609F92B0
P 5600 5300
F 0 "D1" H 5600 5517 50  0000 C CNN
F 1 "BAV99S" H 5600 5426 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5600 4800 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 5600 5300 50  0001 C CNN
	1    5600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5500 5600 5500
Connection ~ 5600 5500
Wire Wire Line
	5600 5500 5900 5500
$Comp
L power:+3.3V #PWR019
U 1 1 609F92C2
P 5900 5300
F 0 "#PWR019" H 5900 5150 50  0001 C CNN
F 1 "+3.3V" H 5915 5473 50  0000 C CNN
F 2 "" H 5900 5300 50  0001 C CNN
F 3 "" H 5900 5300 50  0001 C CNN
	1    5900 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 609F92D4
P 5300 5300
F 0 "#PWR010" H 5300 5050 50  0001 C CNN
F 1 "GND" H 5305 5127 50  0000 C CNN
F 2 "" H 5300 5300 50  0001 C CNN
F 3 "" H 5300 5300 50  0001 C CNN
	1    5300 5300
	-1   0    0    1   
$EndComp
Text GLabel 5450 6100 0    50   Input ~ 0
IN2
$Comp
L Device:R R7
U 1 1 60A012EA
P 6050 6100
F 0 "R7" V 5950 6100 50  0000 C CNN
F 1 "100R" V 5850 6100 50  0000 C CNN
F 2 "RevK:R_0603" V 5980 6100 50  0001 C CNN
F 3 "~" H 6050 6100 50  0001 C CNN
	1    6050 6100
	0    1    1    0   
$EndComp
$Comp
L Diode:BAV99S D1
U 2 1 60A012F0
P 5600 5900
F 0 "D1" H 5600 6117 50  0000 C CNN
F 1 "BAV99S" H 5600 6026 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 5600 5400 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 5600 5900 50  0001 C CNN
	2    5600 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6100 5600 6100
Connection ~ 5600 6100
Wire Wire Line
	5600 6100 5900 6100
$Comp
L power:+3.3V #PWR020
U 1 1 60A012F9
P 5900 5900
F 0 "#PWR020" H 5900 5750 50  0001 C CNN
F 1 "+3.3V" H 5915 6073 50  0000 C CNN
F 2 "" H 5900 5900 50  0001 C CNN
F 3 "" H 5900 5900 50  0001 C CNN
	1    5900 5900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 60A012FF
P 5300 5900
F 0 "#PWR011" H 5300 5650 50  0001 C CNN
F 1 "GND" H 5305 5727 50  0000 C CNN
F 2 "" H 5300 5900 50  0001 C CNN
F 3 "" H 5300 5900 50  0001 C CNN
	1    5300 5900
	-1   0    0    1   
$EndComp
Text GLabel 5450 6700 0    50   Input ~ 0
IN3
$Comp
L Device:R R8
U 1 1 60A041CC
P 6050 6700
F 0 "R8" V 5950 6700 50  0000 C CNN
F 1 "100R" V 5850 6700 50  0000 C CNN
F 2 "RevK:R_0603" V 5980 6700 50  0001 C CNN
F 3 "~" H 6050 6700 50  0001 C CNN
	1    6050 6700
	0    1    1    0   
$EndComp
$Comp
L Diode:BAV99 D2
U 1 1 60A041D2
P 5600 6500
F 0 "D2" H 5600 6717 50  0000 C CNN
F 1 "BAV99W" H 5600 6626 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 5600 6000 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 5600 6500 50  0001 C CNN
	1    5600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6700 5600 6700
Connection ~ 5600 6700
Wire Wire Line
	5600 6700 5900 6700
$Comp
L power:+3.3V #PWR021
U 1 1 60A041DB
P 5900 6500
F 0 "#PWR021" H 5900 6350 50  0001 C CNN
F 1 "+3.3V" H 5915 6673 50  0000 C CNN
F 2 "" H 5900 6500 50  0001 C CNN
F 3 "" H 5900 6500 50  0001 C CNN
	1    5900 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 60A041E1
P 5300 6500
F 0 "#PWR012" H 5300 6250 50  0001 C CNN
F 1 "GND" H 5305 6327 50  0000 C CNN
F 2 "" H 5300 6500 50  0001 C CNN
F 3 "" H 5300 6500 50  0001 C CNN
	1    5300 6500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 5500 6550 5700
Wire Wire Line
	6550 5700 7050 5700
Wire Wire Line
	6200 6100 6350 6100
Wire Wire Line
	6350 6100 6350 5900
Wire Wire Line
	6350 5900 7050 5900
Wire Wire Line
	6200 6700 6500 6700
Wire Wire Line
	6500 6700 6500 6100
Wire Wire Line
	6500 6100 7050 6100
Wire Wire Line
	6200 5500 6550 5500
$Comp
L RevK:AA 11
U 1 1 60A37FFE
P 10600 6900
F 0 "11" H 10650 6950 50  0001 C CNN
F 1 "AA" H 10625 6900 50  0000 L CNN
F 2 "RevK:AA" H 10600 6900 50  0001 C CNN
F 3 "" H 10600 6900 50  0001 C CNN
	1    10600 6900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
