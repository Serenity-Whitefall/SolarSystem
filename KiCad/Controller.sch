EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Solar System Controller"
Date "2021-04-23"
Rev "6"
Comp "Adrian Kennard Andrews & Arnold Ltd"
Comment1 "@TheRealRevK"
Comment2 "www.me.uk"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J9
U 1 1 60436927
P 6500 1900
F 0 "J9" H 6607 2767 50  0000 C CNN
F 1 "USB-C" H 6607 2676 50  0000 C CNN
F 2 "RevK:USC16-TR-Round" H 6650 1900 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6650 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 6043A8AD
P 7350 1500
F 0 "R13" V 7557 1500 50  0000 C CNN
F 1 "5K1" V 7466 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7280 1500 50  0001 C CNN
F 3 "~" H 7350 1500 50  0001 C CNN
	1    7350 1500
	0    -1   -1   0   
$EndComp
Text GLabel 2700 1600 2    50   Input ~ 0
I
Text GLabel 1000 1300 0    50   Input ~ 0
EN
Text GLabel 8250 1800 2    50   Input ~ 0
D-
Text GLabel 8250 2000 2    50   Input ~ 0
D+
Wire Wire Line
	6200 2800 6500 2800
Connection ~ 6500 2800
Wire Wire Line
	7100 2100 7100 2000
Connection ~ 7100 2000
Wire Wire Line
	7100 1900 7100 1800
Connection ~ 7100 1800
Wire Wire Line
	7100 1300 7700 1300
Wire Wire Line
	1000 1300 1500 1300
Wire Wire Line
	7100 1500 7200 1500
Wire Wire Line
	7100 1600 7200 1600
Wire Wire Line
	7500 1500 7500 1550
Wire Wire Line
	7700 1550 7500 1550
Connection ~ 7500 1550
Wire Wire Line
	7500 1550 7500 1600
NoConn ~ 1500 2500
NoConn ~ 1500 2600
NoConn ~ 1500 2700
NoConn ~ 1500 2800
NoConn ~ 1500 2900
NoConn ~ 1500 3000
$Comp
L Device:R R14
U 1 1 6049A32B
P 7350 1600
F 0 "R14" V 7450 1600 50  0000 C CNN
F 1 "5K1" V 7550 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7280 1600 50  0001 C CNN
F 3 "~" H 7350 1600 50  0001 C CNN
	1    7350 1600
	0    1    1    0   
$EndComp
NoConn ~ 7100 2400
NoConn ~ 7100 2500
$Comp
L power:VBUS #PWR015
U 1 1 60464020
P 7700 1300
F 0 "#PWR015" H 7700 1150 50  0001 C CNN
F 1 "VBUS" H 7715 1473 50  0000 C CNN
F 2 "" H 7700 1300 50  0001 C CNN
F 3 "" H 7700 1300 50  0001 C CNN
	1    7700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6046533F
P 3100 1100
F 0 "#PWR01" H 3100 950 50  0001 C CNN
F 1 "+3.3V" H 3115 1273 50  0000 C CNN
F 2 "" H 3100 1100 50  0001 C CNN
F 3 "" H 3100 1100 50  0001 C CNN
	1    3100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 6046CDD6
P 7700 1550
F 0 "#PWR016" H 7700 1300 50  0001 C CNN
F 1 "GND" H 7705 1377 50  0000 C CNN
F 2 "" H 7700 1550 50  0001 C CNN
F 3 "" H 7700 1550 50  0001 C CNN
	1    7700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6046DFEC
P 7750 2800
F 0 "#PWR017" H 7750 2550 50  0001 C CNN
F 1 "GND" H 7755 2627 50  0000 C CNN
F 2 "" H 7750 2800 50  0001 C CNN
F 3 "" H 7750 2800 50  0001 C CNN
	1    7750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6046FB14
P 3150 3900
F 0 "#PWR02" H 3150 3650 50  0001 C CNN
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
	1550 1600 1500 1600
Wire Wire Line
	1000 1600 1000 3900
Connection ~ 1500 1600
Wire Wire Line
	1500 1600 1000 1600
Wire Wire Line
	6500 2800 7750 2800
Wire Wire Line
	7100 1800 8250 1800
$Comp
L power:VBUS #PWR021
U 1 1 6047B245
P 9100 1400
F 0 "#PWR021" H 9100 1250 50  0001 C CNN
F 1 "VBUS" H 9115 1573 50  0000 C CNN
F 2 "" H 9100 1400 50  0001 C CNN
F 3 "" H 9100 1400 50  0001 C CNN
	1    9100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1700 9100 1700
Wire Wire Line
	9100 1700 9100 1400
$Comp
L power:GND #PWR022
U 1 1 6047E83B
P 9100 2250
F 0 "#PWR022" H 9100 2000 50  0001 C CNN
F 1 "GND" H 9105 2077 50  0000 C CNN
F 2 "" H 9100 2250 50  0001 C CNN
F 3 "" H 9100 2250 50  0001 C CNN
	1    9100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1800 9100 1800
Wire Wire Line
	9100 1800 9100 2250
$Comp
L power:+3.3V #PWR026
U 1 1 60481E63
P 10350 1400
F 0 "#PWR026" H 10350 1250 50  0001 C CNN
F 1 "+3.3V" H 10365 1573 50  0000 C CNN
F 2 "" H 10350 1400 50  0001 C CNN
F 3 "" H 10350 1400 50  0001 C CNN
	1    10350 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1900 9600 2150
Wire Wire Line
	9600 2150 10350 2150
Wire Wire Line
	10350 2150 10350 1400
Wire Wire Line
	1500 1500 1500 1600
Wire Wire Line
	2100 1100 3100 1100
Wire Wire Line
	7100 2000 8250 2000
$Comp
L RevK:AJK AJK1
U 1 1 60629B22
P 10500 6900
F 0 "AJK1" H 10500 7000 50  0001 C CNN
F 1 "AJK" H 10525 6900 50  0000 L CNN
F 2 "RevK:AJK" H 10500 6800 50  0001 C CNN
F 3 "" H 10500 6800 50  0001 C CNN
	1    10500 6900
	1    0    0    -1  
$EndComp
NoConn ~ 850  3250
Connection ~ 2100 1100
Wire Wire Line
	1000 3900 2100 3900
Connection ~ 2100 3900
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 6043326C
P 2100 2500
F 0 "U1" H 2100 4081 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2100 3990 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2100 1000 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 1800 2550 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3900 3150 3900
Text GLabel 2700 1700 2    50   Input ~ 0
IN1
Text GLabel 2700 1500 2    50   Input ~ 0
IN2
Text GLabel 2700 2200 2    50   Input ~ 0
IN3
Text GLabel 2700 2000 2    50   Input ~ 0
IN4
Text GLabel 2700 2100 2    50   Input ~ 0
IN5
Text GLabel 2700 3200 2    50   Input ~ 0
IN6
Text GLabel 2700 3400 2    50   Input ~ 0
IN7
Text GLabel 2700 3300 2    50   Input ~ 0
IN8
Text GLabel 2700 2400 2    50   Input ~ 0
RFTX
Text GLabel 2700 2300 2    50   Input ~ 0
RFRX
NoConn ~ 4150 -1850
NoConn ~ 2700 3500
NoConn ~ 2700 3600
Text GLabel 2700 2500 2    50   Input ~ 0
SDA
Text GLabel 2700 2600 2    50   Input ~ 0
SCL
Text GLabel 2700 2800 2    50   Input ~ 0
OUT1
Text GLabel 2700 2700 2    50   Input ~ 0
OUT2
Text GLabel 2700 2900 2    50   Input ~ 0
OUT3
Text GLabel 2700 3000 2    50   Input ~ 0
OUT4
$Comp
L power:VBUS #PWR023
U 1 1 60736BD5
P 9100 2950
F 0 "#PWR023" H 9100 2800 50  0001 C CNN
F 1 "VBUS" H 9115 3123 50  0000 C CNN
F 2 "" H 9100 2950 50  0001 C CNN
F 3 "" H 9100 2950 50  0001 C CNN
	1    9100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3250 9100 3250
Wire Wire Line
	9100 3250 9100 2950
$Comp
L power:GND #PWR024
U 1 1 60736BDD
P 9100 3800
F 0 "#PWR024" H 9100 3550 50  0001 C CNN
F 1 "GND" H 9105 3627 50  0000 C CNN
F 2 "" H 9100 3800 50  0001 C CNN
F 3 "" H 9100 3800 50  0001 C CNN
	1    9100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3350 9100 3350
Wire Wire Line
	9100 3350 9100 3800
Wire Wire Line
	9600 3450 9600 3700
Wire Wire Line
	9600 3700 10350 3700
Wire Wire Line
	10350 3700 10350 2950
$Comp
L power:+5V #PWR027
U 1 1 607379D0
P 10350 2950
F 0 "#PWR027" H 10350 2800 50  0001 C CNN
F 1 "+5V" H 10365 3123 50  0000 C CNN
F 2 "" H 10350 2950 50  0001 C CNN
F 3 "" H 10350 2950 50  0001 C CNN
	1    10350 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x09 J1
U 1 1 60737CB3
P 5350 1500
F 0 "J1" H 5300 950 50  0000 L CNN
F 1 "Inputs" H 5250 2100 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-09A_1x09_P2.50mm_Horizontal" H 5350 1500 50  0001 C CNN
F 3 "~" H 5350 1500 50  0001 C CNN
	1    5350 1500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 60739FA0
P 5350 3950
F 0 "J4" H 5430 3942 50  0000 L CNN
F 1 "RFID" H 5430 3851 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-04A_1x04_P2.50mm_Horizontal" H 5350 3950 50  0001 C CNN
F 3 "~" H 5350 3950 50  0001 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 6073B376
P 5350 3300
F 0 "J3" H 5430 3292 50  0000 L CNN
F 1 "RANGER" H 5430 3201 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-04A_1x04_P2.50mm_Horizontal" H 5350 3300 50  0001 C CNN
F 3 "~" H 5350 3300 50  0001 C CNN
	1    5350 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 6073F57B
P 5350 5250
F 0 "J5" H 5430 5242 50  0000 L CNN
F 1 "OUT1" H 5430 5151 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-02A_1x02_P2.50mm_Horizontal" H 5350 5250 50  0001 C CNN
F 3 "~" H 5350 5250 50  0001 C CNN
	1    5350 5250
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 60740AE9
P 5350 5800
F 0 "J6" H 5430 5792 50  0000 L CNN
F 1 "OUT2" H 5430 5701 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-02A_1x02_P2.50mm_Horizontal" H 5350 5800 50  0001 C CNN
F 3 "~" H 5350 5800 50  0001 C CNN
	1    5350 5800
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J7
U 1 1 60741D8C
P 5350 6350
F 0 "J7" H 5430 6342 50  0000 L CNN
F 1 "OUT3" H 5430 6251 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-02A_1x02_P2.50mm_Horizontal" H 5350 6350 50  0001 C CNN
F 3 "~" H 5350 6350 50  0001 C CNN
	1    5350 6350
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 607421F7
P 5350 6900
F 0 "J8" H 5430 6892 50  0000 L CNN
F 1 "OUT4" H 5430 6801 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-02A_1x02_P2.50mm_Horizontal" H 5350 6900 50  0001 C CNN
F 3 "~" H 5350 6900 50  0001 C CNN
	1    5350 6900
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 6074263F
P 5350 2400
F 0 "J2" H 5430 2392 50  0000 L CNN
F 1 "POWER" H 5430 2301 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-02A_1x02_P2.50mm_Horizontal" H 5350 2400 50  0001 C CNN
F 3 "~" H 5350 2400 50  0001 C CNN
	1    5350 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 60743895
P 5150 1100
F 0 "#PWR08" H 5150 850 50  0001 C CNN
F 1 "GND" V 5155 972 50  0000 R CNN
F 2 "" H 5150 1100 50  0001 C CNN
F 3 "" H 5150 1100 50  0001 C CNN
	1    5150 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60743D17
P 5150 3850
F 0 "#PWR013" H 5150 3600 50  0001 C CNN
F 1 "GND" V 5155 3722 50  0000 R CNN
F 2 "" H 5150 3850 50  0001 C CNN
F 3 "" H 5150 3850 50  0001 C CNN
	1    5150 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 607441A2
P 5150 3200
F 0 "#PWR011" H 5150 2950 50  0001 C CNN
F 1 "GND" V 5155 3072 50  0000 R CNN
F 2 "" H 5150 3200 50  0001 C CNN
F 3 "" H 5150 3200 50  0001 C CNN
	1    5150 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 607450BB
P 5150 2400
F 0 "#PWR09" H 5150 2150 50  0001 C CNN
F 1 "GND" V 5155 2272 50  0000 R CNN
F 2 "" H 5150 2400 50  0001 C CNN
F 3 "" H 5150 2400 50  0001 C CNN
	1    5150 2400
	0    1    1    0   
$EndComp
$Comp
L power:VBUS #PWR010
U 1 1 60745749
P 5150 2500
F 0 "#PWR010" H 5150 2350 50  0001 C CNN
F 1 "VBUS" V 5165 2627 50  0000 L CNN
F 2 "" H 5150 2500 50  0001 C CNN
F 3 "" H 5150 2500 50  0001 C CNN
	1    5150 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 607622A0
P 5150 3950
F 0 "#PWR014" H 5150 3800 50  0001 C CNN
F 1 "+5V" V 5165 4078 50  0000 L CNN
F 2 "" H 5150 3950 50  0001 C CNN
F 3 "" H 5150 3950 50  0001 C CNN
	1    5150 3950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 607629AC
P 5150 3300
F 0 "#PWR012" H 5150 3150 50  0001 C CNN
F 1 "+3.3V" V 5165 3428 50  0000 L CNN
F 2 "" H 5150 3300 50  0001 C CNN
F 3 "" H 5150 3300 50  0001 C CNN
	1    5150 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 6076D038
P 4350 5300
F 0 "#PWR03" H 4350 5050 50  0001 C CNN
F 1 "GND" V 4355 5172 50  0000 R CNN
F 2 "" H 4350 5300 50  0001 C CNN
F 3 "" H 4350 5300 50  0001 C CNN
	1    4350 5300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6076D8B2
P 4350 5850
F 0 "#PWR04" H 4350 5600 50  0001 C CNN
F 1 "GND" V 4355 5722 50  0000 R CNN
F 2 "" H 4350 5850 50  0001 C CNN
F 3 "" H 4350 5850 50  0001 C CNN
	1    4350 5850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6076DF20
P 4350 6400
F 0 "#PWR05" H 4350 6150 50  0001 C CNN
F 1 "GND" V 4355 6272 50  0000 R CNN
F 2 "" H 4350 6400 50  0001 C CNN
F 3 "" H 4350 6400 50  0001 C CNN
	1    4350 6400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6076E59A
P 4350 6950
F 0 "#PWR06" H 4350 6700 50  0001 C CNN
F 1 "GND" V 4355 6822 50  0000 R CNN
F 2 "" H 4350 6950 50  0001 C CNN
F 3 "" H 4350 6950 50  0001 C CNN
	1    4350 6950
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6076ECA1
P 4200 5100
F 0 "R3" V 3993 5100 50  0000 C CNN
F 1 "1K" V 4084 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4130 5100 50  0001 C CNN
F 3 "~" H 4200 5100 50  0001 C CNN
	1    4200 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6076F9A2
P 4200 5650
F 0 "R4" V 3993 5650 50  0000 C CNN
F 1 "1K" V 4084 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4130 5650 50  0001 C CNN
F 3 "~" H 4200 5650 50  0001 C CNN
	1    4200 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 6077006A
P 4200 6200
F 0 "R5" V 3993 6200 50  0000 C CNN
F 1 "1K" V 4084 6200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4130 6200 50  0001 C CNN
F 3 "~" H 4200 6200 50  0001 C CNN
	1    4200 6200
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 60770742
P 4200 6750
F 0 "R6" V 3993 6750 50  0000 C CNN
F 1 "1K" V 4084 6750 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4130 6750 50  0001 C CNN
F 3 "~" H 4200 6750 50  0001 C CNN
	1    4200 6750
	0    1    1    0   
$EndComp
Text GLabel 4050 5100 0    50   Input ~ 0
OUT1
Text GLabel 4050 5650 0    50   Input ~ 0
OUT2
Text GLabel 4050 6200 0    50   Input ~ 0
OUT3
Text GLabel 4050 6750 0    50   Input ~ 0
OUT4
Wire Wire Line
	4950 5100 5150 5100
Wire Wire Line
	5150 5100 5150 5150
Wire Wire Line
	4950 5300 5150 5300
Wire Wire Line
	5150 5300 5150 5250
Wire Wire Line
	4950 5650 5150 5650
Wire Wire Line
	5150 5650 5150 5700
Wire Wire Line
	4950 5850 5150 5850
Wire Wire Line
	5150 5850 5150 5800
Wire Wire Line
	4950 6200 5150 6200
Wire Wire Line
	5150 6200 5150 6250
Wire Wire Line
	4950 6400 5150 6400
Wire Wire Line
	5150 6400 5150 6350
Wire Wire Line
	4950 6750 5150 6750
Wire Wire Line
	5150 6750 5150 6800
Wire Wire Line
	4950 6950 5150 6950
Wire Wire Line
	5150 6950 5150 6900
Text GLabel 4000 1200 0    50   Input ~ 0
IN1
Text GLabel 4000 1300 0    50   Input ~ 0
IN2
Text GLabel 4000 1400 0    50   Input ~ 0
IN3
Text GLabel 4000 1500 0    50   Input ~ 0
IN4
Text GLabel 4000 1600 0    50   Input ~ 0
IN5
Text GLabel 4000 1700 0    50   Input ~ 0
IN6
Text GLabel 4000 1800 0    50   Input ~ 0
IN7
Text GLabel 4000 1900 0    50   Input ~ 0
IN8
Text GLabel 5150 3400 0    50   Input ~ 0
SCL
Text GLabel 5150 3500 0    50   Input ~ 0
SDA
Text GLabel 5150 4150 0    50   Input ~ 0
RFTX
Text GLabel 5150 4050 0    50   Input ~ 0
RFRX
NoConn ~ 2700 3100
$Comp
L Device:R R1
U 1 1 607D6B75
P 4100 850
F 0 "R1" H 4050 1100 50  0000 L CNN
F 1 "NF" H 4050 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4030 850 50  0001 C CNN
F 3 "~" H 4100 850 50  0001 C CNN
	1    4100 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 607D931A
P 4200 850
F 0 "R2" H 4150 1100 50  0000 L CNN
F 1 "NF" H 4150 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4130 850 50  0001 C CNN
F 3 "~" H 4200 850 50  0001 C CNN
	1    4200 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 607DEA14
P 4300 850
F 0 "R7" H 4250 1100 50  0000 L CNN
F 1 "NF" H 4250 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4230 850 50  0001 C CNN
F 3 "~" H 4300 850 50  0001 C CNN
	1    4300 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 607DEA1A
P 4400 850
F 0 "R8" H 4350 1100 50  0000 L CNN
F 1 "NF" H 4350 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4330 850 50  0001 C CNN
F 3 "~" H 4400 850 50  0001 C CNN
	1    4400 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 607E16CE
P 4500 850
F 0 "R9" H 4450 1100 50  0000 L CNN
F 1 "NF" H 4450 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4430 850 50  0001 C CNN
F 3 "~" H 4500 850 50  0001 C CNN
	1    4500 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 607E16D4
P 4600 850
F 0 "R10" H 4550 1100 50  0000 L CNN
F 1 "NF" H 4550 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4530 850 50  0001 C CNN
F 3 "~" H 4600 850 50  0001 C CNN
	1    4600 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 607E16DA
P 4700 850
F 0 "R11" H 4650 1100 50  0000 L CNN
F 1 "NF" H 4650 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4630 850 50  0001 C CNN
F 3 "~" H 4700 850 50  0001 C CNN
	1    4700 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 607E16E0
P 4800 850
F 0 "R12" H 4750 1100 50  0000 L CNN
F 1 "NF" H 4750 800 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 4730 850 50  0001 C CNN
F 3 "~" H 4800 850 50  0001 C CNN
	1    4800 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 607EFA17
P 4800 700
F 0 "#PWR07" H 4800 550 50  0001 C CNN
F 1 "+3.3V" V 4815 828 50  0000 L CNN
F 2 "" H 4800 700 50  0001 C CNN
F 3 "" H 4800 700 50  0001 C CNN
	1    4800 700 
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 1200 4100 1200
Wire Wire Line
	5150 1300 4200 1300
Wire Wire Line
	5150 1400 4300 1400
Wire Wire Line
	4000 1500 4400 1500
Wire Wire Line
	5150 1600 4500 1600
Wire Wire Line
	4000 1700 4600 1700
Wire Wire Line
	5150 1800 4700 1800
Wire Wire Line
	4000 1900 4800 1900
Wire Wire Line
	4100 1000 4100 1200
Connection ~ 4100 1200
Wire Wire Line
	4100 1200 5150 1200
Wire Wire Line
	4200 1000 4200 1300
Connection ~ 4200 1300
Wire Wire Line
	4200 1300 4000 1300
Wire Wire Line
	4300 1000 4300 1400
Connection ~ 4300 1400
Wire Wire Line
	4300 1400 4000 1400
Wire Wire Line
	4400 1000 4400 1500
Connection ~ 4400 1500
Wire Wire Line
	4400 1500 5150 1500
Wire Wire Line
	4500 1000 4500 1600
Connection ~ 4500 1600
Wire Wire Line
	4500 1600 4000 1600
Wire Wire Line
	4600 1000 4600 1700
Connection ~ 4600 1700
Wire Wire Line
	4600 1700 5150 1700
Wire Wire Line
	4700 1000 4700 1800
Connection ~ 4700 1800
Wire Wire Line
	4700 1800 4000 1800
Wire Wire Line
	4800 1000 4800 1900
Connection ~ 4800 1900
Wire Wire Line
	4800 1900 5150 1900
Connection ~ 4200 700 
Connection ~ 4300 700 
Connection ~ 4400 700 
Connection ~ 4500 700 
Connection ~ 4600 700 
Connection ~ 4700 700 
Wire Wire Line
	4100 700  4200 700 
Wire Wire Line
	4700 700  4800 700 
Wire Wire Line
	4200 700  4300 700 
Wire Wire Line
	4300 700  4400 700 
Wire Wire Line
	4400 700  4500 700 
Wire Wire Line
	4500 700  4600 700 
Wire Wire Line
	4600 700  4700 700 
Connection ~ 4800 700 
$Comp
L power:GND #PWR025
U 1 1 60776D64
P 9450 4450
F 0 "#PWR025" H 9450 4200 50  0001 C CNN
F 1 "GND" H 9455 4277 50  0000 C CNN
F 2 "" H 9450 4450 50  0001 C CNN
F 3 "" H 9450 4450 50  0001 C CNN
	1    9450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3150 9450 3150
Wire Wire Line
	9450 3150 9450 3950
$Comp
L Device:R R15
U 1 1 6077B7DD
P 9000 4250
F 0 "R15" V 8793 4250 50  0000 C CNN
F 1 "1k" V 8884 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 8930 4250 50  0001 C CNN
F 3 "~" H 9000 4250 50  0001 C CNN
	1    9000 4250
	0    1    1    0   
$EndComp
Text GLabel 2700 1800 2    50   Input ~ 0
SHDN
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 6077F53E
P 9350 4250
F 0 "Q1" H 9541 4296 50  0000 L CNN
F 1 "BC817" H 9541 4205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9550 4175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC818-D.pdf" H 9350 4250 50  0001 L CNN
	1    9350 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 60818BC0
P 9650 5400
F 0 "D1" H 9643 5617 50  0000 C CNN
F 1 "LED" H 9643 5526 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 9650 5400 50  0001 C CNN
F 3 "~" H 9650 5400 50  0001 C CNN
	1    9650 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 60819C12
P 9350 5400
F 0 "R16" V 9143 5400 50  0000 C CNN
F 1 "680R" V 9234 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 9280 5400 50  0001 C CNN
F 3 "~" H 9350 5400 50  0001 C CNN
	1    9350 5400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 6081C3D8
P 9800 5400
F 0 "#PWR0101" H 9800 5250 50  0001 C CNN
F 1 "+3.3V" V 9815 5528 50  0000 L CNN
F 2 "" H 9800 5400 50  0001 C CNN
F 3 "" H 9800 5400 50  0001 C CNN
	1    9800 5400
	0    1    1    0   
$EndComp
Text GLabel 9200 5400 0    50   Input ~ 0
LED
Text GLabel 2700 1900 2    50   Input ~ 0
LED
Text GLabel 8850 4250 0    50   Input ~ 0
SHDN
$Comp
L Interface_USB:FT231XQ U6
U 1 1 6084108B
P 7000 4550
F 0 "U6" H 7000 5631 50  0000 C CNN
F 1 "FT231XQ" H 7000 5540 50  0000 C CNN
F 2 "RevK:QFN-20-(hand)-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 8350 3750 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 7000 4550 50  0001 C CNN
	1    7000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3650 6900 3650
Connection ~ 6900 3650
Text GLabel 6300 4250 0    50   Input ~ 0
D-
Text GLabel 6300 4350 0    50   Input ~ 0
D+
Wire Wire Line
	6300 4550 5950 4550
Wire Wire Line
	5950 4550 5950 3950
Wire Wire Line
	5950 3950 6300 3950
Connection ~ 5950 3950
Wire Wire Line
	5950 3950 5950 3650
Wire Wire Line
	5950 3650 6900 3650
Wire Wire Line
	6900 5450 7000 5450
Wire Wire Line
	7000 5450 7100 5450
Connection ~ 7000 5450
$Comp
L power:GND #PWR0102
U 1 1 6085BF74
P 7000 5450
F 0 "#PWR0102" H 7000 5200 50  0001 C CNN
F 1 "GND" H 7005 5277 50  0000 C CNN
F 2 "" H 7000 5450 50  0001 C CNN
F 3 "" H 7000 5450 50  0001 C CNN
	1    7000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 6085C74E
P 5950 3650
F 0 "#PWR0103" H 5950 3500 50  0001 C CNN
F 1 "+3.3V" H 5965 3823 50  0000 C CNN
F 2 "" H 5950 3650 50  0001 C CNN
F 3 "" H 5950 3650 50  0001 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
Connection ~ 5950 3650
$Comp
L power:GND #PWR0104
U 1 1 6085CF95
P 7700 4250
F 0 "#PWR0104" H 7700 4000 50  0001 C CNN
F 1 "GND" V 7705 4122 50  0000 R CNN
F 2 "" H 7700 4250 50  0001 C CNN
F 3 "" H 7700 4250 50  0001 C CNN
	1    7700 4250
	0    -1   -1   0   
$EndComp
Text GLabel 7700 4350 2    50   Input ~ 0
CBUS0
Text GLabel 7700 3950 2    50   Input ~ 0
I
Text GLabel 7700 4050 2    50   Input ~ 0
O
Text GLabel 7700 4150 2    50   Input ~ 0
EN
NoConn ~ 7700 4850
NoConn ~ 7700 4950
NoConn ~ 7700 5050
NoConn ~ 7700 5150
$Comp
L power:GND #PWR0105
U 1 1 6087F33E
P 7700 4450
F 0 "#PWR0105" H 7700 4200 50  0001 C CNN
F 1 "GND" V 7705 4322 50  0000 R CNN
F 2 "" H 7700 4450 50  0001 C CNN
F 3 "" H 7700 4450 50  0001 C CNN
	1    7700 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6087FBAE
P 7700 4550
F 0 "#PWR0106" H 7700 4300 50  0001 C CNN
F 1 "GND" V 7705 4422 50  0000 R CNN
F 2 "" H 7700 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0001 C CNN
	1    7700 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 608803BE
P 7700 4650
F 0 "#PWR0107" H 7700 4400 50  0001 C CNN
F 1 "GND" V 7705 4522 50  0000 R CNN
F 2 "" H 7700 4650 50  0001 C CNN
F 3 "" H 7700 4650 50  0001 C CNN
	1    7700 4650
	0    -1   -1   0   
$EndComp
$Comp
L RevK:G3VM-41GR8 U2
U 1 1 608BF21E
P 4650 5200
F 0 "U2" H 4650 5525 50  0000 C CNN
F 1 "G3VM-41GR8" H 4650 5434 50  0000 C CNN
F 2 "RevK:Special-SOP-4-3.7x4.55" H 4650 4900 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=1284&prodName=TLP3542" H 4650 5200 50  0001 C CNN
	1    4650 5200
	1    0    0    -1  
$EndComp
$Comp
L RevK:G3VM-41GR8 U3
U 1 1 608C1E21
P 4650 5750
F 0 "U3" H 4650 6075 50  0000 C CNN
F 1 "G3VM-41GR8" H 4650 5984 50  0000 C CNN
F 2 "RevK:Special-SOP-4-3.7x4.55" H 4650 5450 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=1284&prodName=TLP3542" H 4650 5750 50  0001 C CNN
	1    4650 5750
	1    0    0    -1  
$EndComp
$Comp
L RevK:G3VM-41GR8 U4
U 1 1 608C2BF7
P 4650 6300
F 0 "U4" H 4650 6625 50  0000 C CNN
F 1 "G3VM-41GR8" H 4650 6534 50  0000 C CNN
F 2 "RevK:Special-SOP-4-3.7x4.55" H 4650 6000 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=1284&prodName=TLP3542" H 4650 6300 50  0001 C CNN
	1    4650 6300
	1    0    0    -1  
$EndComp
$Comp
L RevK:G3VM-41GR8 U5
U 1 1 608C3CED
P 4650 6850
F 0 "U5" H 4650 7175 50  0000 C CNN
F 1 "G3VM-41GR8" H 4650 7084 50  0000 C CNN
F 2 "RevK:Special-SOP-4-3.7x4.55" H 4650 6550 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=1284&prodName=TLP3542" H 4650 6850 50  0001 C CNN
	1    4650 6850
	1    0    0    -1  
$EndComp
$Comp
L RevK:QR U7
U 1 1 608F5575
P 10950 6350
F 0 "U7" H 10950 6225 50  0001 C CNN
F 1 "QR" H 10950 6225 50  0001 C CNN
F 2 "RevK:QR-SS" H 10925 6325 50  0001 C CNN
F 3 "" H 10925 6325 50  0001 C CNN
	1    10950 6350
	1    0    0    -1  
$EndComp
$Comp
L RevK:Regulator Reg1
U 1 1 608F07CF
P 9600 1600
F 0 "Reg1" H 10178 1501 50  0000 L CNN
F 1 "Regulator" H 10178 1410 50  0000 L CNN
F 2 "RevK:RegulatorBlock" H 10050 1700 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 10050 1700 50  0001 C CNN
	1    9600 1600
	1    0    0    -1  
$EndComp
$Comp
L RevK:Regulator Reg2
U 1 1 608F19AF
P 9600 3150
F 0 "Reg2" H 10178 3051 50  0000 L CNN
F 1 "Regulator" H 10178 2960 50  0000 L CNN
F 2 "RevK:RegulatorBlock" H 10050 3250 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 10050 3250 50  0001 C CNN
	1    9600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1600 9600 1700
Connection ~ 9600 1700
$Comp
L Device:R R17
U 1 1 608F586F
P 9600 3950
F 0 "R17" V 9393 3950 50  0000 C CNN
F 1 "100K" V 9484 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9530 3950 50  0001 C CNN
F 3 "~" H 9600 3950 50  0001 C CNN
	1    9600 3950
	0    1    1    0   
$EndComp
Connection ~ 9450 3950
Wire Wire Line
	9450 3950 9450 4050
$Comp
L power:VBUS #PWR0108
U 1 1 608F72DC
P 9750 3950
F 0 "#PWR0108" H 9750 3800 50  0001 C CNN
F 1 "VBUS" V 9765 4078 50  0000 L CNN
F 2 "" H 9750 3950 50  0001 C CNN
F 3 "" H 9750 3950 50  0001 C CNN
	1    9750 3950
	0    1    1    0   
$EndComp
$EndSCHEMATC
