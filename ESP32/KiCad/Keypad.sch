EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Galaxy Keypad controller"
Date "2021-04-10"
Rev "4"
Comp ""
Comment1 "@TheRealRevK"
Comment2 "www.me.uk"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 60436927
P 6500 1900
F 0 "J2" H 6607 2767 50  0000 C CNN
F 1 "USB-C" H 6607 2676 50  0000 C CNN
F 2 "RevK:USC16-TR-Round" H 6650 1900 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6650 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 6043A8AD
P 7350 1500
F 0 "R6" V 7557 1500 50  0000 C CNN
F 1 "5K1" V 7466 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7280 1500 50  0001 C CNN
F 3 "~" H 7350 1500 50  0001 C CNN
	1    7350 1500
	0    -1   -1   0   
$EndComp
Text GLabel 3550 2050 2    50   Input ~ 0
I
Text GLabel 1850 1750 0    50   Input ~ 0
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
	1850 1750 2350 1750
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
Text GLabel 6300 4750 0    50   Input ~ 0
D+
Text GLabel 6300 4650 0    50   Input ~ 0
D-
Wire Wire Line
	6300 4750 6400 4750
Wire Wire Line
	6400 4650 6300 4650
Wire Wire Line
	7000 4050 7000 3750
NoConn ~ 2350 2950
NoConn ~ 2350 3050
NoConn ~ 2350 3150
NoConn ~ 2350 3250
NoConn ~ 2350 3350
NoConn ~ 2350 3450
$Comp
L Device:R R7
U 1 1 6049A32B
P 7350 1600
F 0 "R7" V 7450 1600 50  0000 C CNN
F 1 "5K1" V 7550 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7280 1600 50  0001 C CNN
F 3 "~" H 7350 1600 50  0001 C CNN
	1    7350 1600
	0    1    1    0   
$EndComp
NoConn ~ 7100 2400
NoConn ~ 7100 2500
Connection ~ 7200 5450
Wire Wire Line
	7100 5450 7200 5450
Wire Wire Line
	7000 5450 7100 5450
Connection ~ 7100 5450
Text GLabel 7800 4350 2    50   Input ~ 0
I
Text GLabel 7800 4450 2    50   Input ~ 0
O
Text GLabel 7800 4550 2    50   Input ~ 0
EN
Wire Wire Line
	7200 5450 8050 5450
$Comp
L Interface_USB:FT230XQ U2
U 1 1 6043CF0E
P 7100 4750
F 0 "U2" H 7100 5631 50  0000 C CNN
F 1 "FT230XQ" H 7100 5540 50  0000 C CNN
F 2 "RevK:QFN-16-(hand)-1EP_4x4mm_P0.65mm_EP2.1x2.1mm" H 8450 4150 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT230X.pdf" H 7100 4750 50  0001 C CNN
	1    7100 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 3750 7200 3750
NoConn ~ 3550 2950
NoConn ~ 3550 3050
NoConn ~ 3550 3250
NoConn ~ 3550 3750
$Comp
L power:VBUS #PWR05
U 1 1 60464020
P 7700 1300
F 0 "#PWR05" H 7700 1150 50  0001 C CNN
F 1 "VBUS" H 7715 1473 50  0000 C CNN
F 2 "" H 7700 1300 50  0001 C CNN
F 3 "" H 7700 1300 50  0001 C CNN
	1    7700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 6046533F
P 3950 1550
F 0 "#PWR03" H 3950 1400 50  0001 C CNN
F 1 "+3.3V" H 3965 1723 50  0000 C CNN
F 2 "" H 3950 1550 50  0001 C CNN
F 3 "" H 3950 1550 50  0001 C CNN
	1    3950 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6046CDD6
P 7700 1550
F 0 "#PWR06" H 7700 1300 50  0001 C CNN
F 1 "GND" H 7705 1377 50  0000 C CNN
F 2 "" H 7700 1550 50  0001 C CNN
F 3 "" H 7700 1550 50  0001 C CNN
	1    7700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6046DFEC
P 7750 2800
F 0 "#PWR07" H 7750 2550 50  0001 C CNN
F 1 "GND" H 7755 2627 50  0000 C CNN
F 2 "" H 7750 2800 50  0001 C CNN
F 3 "" H 7750 2800 50  0001 C CNN
	1    7750 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6046F185
P 8050 5450
F 0 "#PWR09" H 8050 5200 50  0001 C CNN
F 1 "GND" H 8055 5277 50  0000 C CNN
F 2 "" H 8050 5450 50  0001 C CNN
F 3 "" H 8050 5450 50  0001 C CNN
	1    8050 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6046FB14
P 4000 4350
F 0 "#PWR04" H 4000 4100 50  0001 C CNN
F 1 "GND" H 4005 4177 50  0000 C CNN
F 2 "" H 4000 4350 50  0001 C CNN
F 3 "" H 4000 4350 50  0001 C CNN
	1    4000 4350
	1    0    0    -1  
$EndComp
Text GLabel 7800 4850 2    50   Input ~ 0
CBUS0
Text GLabel 3550 1850 2    50   Input ~ 0
O
Text GLabel 3550 1750 2    50   Input ~ 0
CBUS0
NoConn ~ 3550 3850
Wire Wire Line
	2950 1550 2950 1650
Wire Wire Line
	2400 2050 2350 2050
Wire Wire Line
	1850 2050 1850 4350
Connection ~ 2350 2050
Wire Wire Line
	2350 2050 1850 2050
Wire Wire Line
	6500 2800 7750 2800
Wire Wire Line
	7100 1800 8250 1800
Wire Wire Line
	6000 4950 6000 4350
Wire Wire Line
	6000 4350 6400 4350
Wire Wire Line
	6000 4950 6400 4950
Wire Wire Line
	6400 4350 6400 3750
Wire Wire Line
	6400 3750 7000 3750
Connection ~ 6400 4350
Connection ~ 7000 3750
$Comp
L power:+3.3V #PWR08
U 1 1 6047388B
P 7750 3750
F 0 "#PWR08" H 7750 3600 50  0001 C CNN
F 1 "+3.3V" H 7765 3923 50  0000 C CNN
F 2 "" H 7750 3750 50  0001 C CNN
F 3 "" H 7750 3750 50  0001 C CNN
	1    7750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR010
U 1 1 6047B245
P 9100 1400
F 0 "#PWR010" H 9100 1250 50  0001 C CNN
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
L power:GND #PWR011
U 1 1 6047E83B
P 9100 2250
F 0 "#PWR011" H 9100 2000 50  0001 C CNN
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
L power:+3.3V #PWR012
U 1 1 60481E63
P 10350 1400
F 0 "#PWR012" H 10350 1250 50  0001 C CNN
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
	7200 4050 7200 3750
Connection ~ 7200 3750
Wire Wire Line
	7200 3750 7750 3750
$Comp
L RevK:D24V5F3-NoSHDN M1
U 1 1 60455088
P 9600 1600
F 0 "M1" H 9968 1461 50  0000 L CNN
F 1 "D24V5F3-NoSHDN" H 9500 1750 50  0000 L CNN
F 2 "RevK:D24V5F3-SMD-Like" H 9600 1800 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 9600 1800 50  0001 C CNN
	1    9600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1950 2350 2050
Wire Wire Line
	3850 3550 3850 3650
Connection ~ 3850 3650
NoConn ~ 3550 2350
Connection ~ 2950 4350
Wire Wire Line
	1850 4350 2950 4350
Connection ~ 2950 1550
Wire Wire Line
	3550 3650 3850 3650
Wire Wire Line
	3850 3550 3550 3550
Wire Wire Line
	2950 1550 3950 1550
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 6043326C
P 2950 2950
F 0 "U1" H 2950 4531 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2950 4440 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2950 1450 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2650 3000 50  0001 C CNN
	1    2950 2950
	1    0    0    -1  
$EndComp
NoConn ~ 3550 3450
NoConn ~ 3550 3150
NoConn ~ 3550 3350
Wire Wire Line
	2950 4350 3850 4350
NoConn ~ 3550 3950
NoConn ~ 3550 4050
Wire Wire Line
	3850 3650 3850 4350
Connection ~ 3850 4350
Wire Wire Line
	3850 4350 4000 4350
$Comp
L power:GND #PWR0101
U 1 1 60465D7D
P 8550 4650
F 0 "#PWR0101" H 8550 4400 50  0001 C CNN
F 1 "GND" H 8555 4477 50  0000 C CNN
F 2 "" H 8550 4650 50  0001 C CNN
F 3 "" H 8550 4650 50  0001 C CNN
	1    8550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 4650 7800 4650
NoConn ~ 9600 1600
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
$Comp
L RevK:SP3458 U3
U 1 1 60718926
P 4400 7000
F 0 "U3" H 4425 7915 50  0000 C CNN
F 1 "SP3458" H 4425 7824 50  0000 C CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 4400 6950 50  0001 C CNN
F 3 "" H 4400 6950 50  0001 C CNN
	1    4400 7000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 60720A2E
P 4350 5600
F 0 "J1" H 4450 5950 50  0000 C CNN
F 1 "SPOX" H 4450 5850 50  0000 C CNN
F 2 "Connector_Molex:Molex_SPOX_5268-04A_1x04_P2.50mm_Horizontal" H 4350 5600 50  0001 C CNN
F 3 "~" H 4350 5600 50  0001 C CNN
	1    4350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5500 4800 5200
Wire Wire Line
	4800 5200 5000 5200
Wire Wire Line
	4550 5500 4800 5500
$Comp
L power:GND #PWR0102
U 1 1 60724A2B
P 5000 5200
F 0 "#PWR0102" H 5000 4950 50  0001 C CNN
F 1 "GND" H 5005 5027 50  0000 C CNN
F 2 "" H 5000 5200 50  0001 C CNN
F 3 "" H 5000 5200 50  0001 C CNN
	1    5000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5800 5650 5800
Wire Wire Line
	4550 5700 5750 5700
Wire Wire Line
	5750 5700 5750 6750
Wire Wire Line
	4950 6750 5750 6750
Wire Wire Line
	4950 6600 5650 6600
Wire Wire Line
	5650 5800 5650 6600
$Comp
L power:+3.3V #PWR0103
U 1 1 60748A56
P 4950 6450
F 0 "#PWR0103" H 4950 6300 50  0001 C CNN
F 1 "+3.3V" H 4965 6623 50  0000 C CNN
F 2 "" H 4950 6450 50  0001 C CNN
F 3 "" H 4950 6450 50  0001 C CNN
	1    4950 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60749F87
P 4950 6900
F 0 "#PWR0104" H 4950 6650 50  0001 C CNN
F 1 "GND" H 4955 6727 50  0000 C CNN
F 2 "" H 4950 6900 50  0001 C CNN
F 3 "" H 4950 6900 50  0001 C CNN
	1    4950 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5600 5250 5600
NoConn ~ 7800 4950
NoConn ~ 7800 5050
NoConn ~ 7800 5150
NoConn ~ 850  3250
Wire Wire Line
	3450 4750 3450 6450
Wire Wire Line
	3450 6450 3850 6450
Wire Wire Line
	4450 2750 4450 4750
Wire Wire Line
	3550 2750 4450 2750
Wire Wire Line
	3450 4750 4450 4750
Wire Wire Line
	3550 2850 4350 2850
Wire Wire Line
	4350 2850 4350 4650
Wire Wire Line
	4350 4650 3300 4650
Wire Wire Line
	3300 4650 3300 6900
Wire Wire Line
	3300 6900 3850 6900
Wire Wire Line
	3850 6750 3850 6650
Wire Wire Line
	3550 2150 4600 2150
Wire Wire Line
	4600 2150 4600 4850
Wire Wire Line
	4600 4850 3700 4850
Wire Wire Line
	3700 4850 3700 6650
Wire Wire Line
	3700 6650 3850 6650
Connection ~ 3850 6650
Wire Wire Line
	3850 6650 3850 6600
NoConn ~ 3550 2250
NoConn ~ 3550 2450
NoConn ~ 3550 2550
NoConn ~ 3550 2650
NoConn ~ 3550 1950
$Comp
L power:VBUS #PWR0105
U 1 1 6076F3B0
P 5250 5600
F 0 "#PWR0105" H 5250 5450 50  0001 C CNN
F 1 "VBUS" H 5265 5773 50  0000 C CNN
F 2 "" H 5250 5600 50  0001 C CNN
F 3 "" H 5250 5600 50  0001 C CNN
	1    5250 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 60771471
P 4750 5600
F 0 "J3" H 4800 5200 50  0000 R CNN
F 1 "Molex" H 4800 5300 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4750 5600 50  0001 C CNN
F 3 "~" H 4750 5600 50  0001 C CNN
	1    4750 5600
	-1   0    0    -1  
$EndComp
Connection ~ 4550 5500
Connection ~ 4550 5600
Connection ~ 4550 5700
Connection ~ 4550 5800
$EndSCHEMATC
