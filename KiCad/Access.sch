EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Access control"
Date "2021-05-01"
Rev "1"
Comp "Adrian Kennard Andrews & Arnold Ltd"
Comment1 "@TheRealRevK"
Comment2 "www.me.uk"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J5
U 1 1 60436927
P 6500 1900
F 0 "J5" H 6607 2767 50  0000 C CNN
F 1 "USB-C" H 6607 2676 50  0000 C CNN
F 2 "RevK:USC16-TR-Round" H 6650 1900 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6650 1900 50  0001 C CNN
	1    6500 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 6043A8AD
P 7350 1500
F 0 "R5" V 7557 1500 50  0000 C CNN
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
L Device:R R6
U 1 1 6049A32B
P 7350 1600
F 0 "R6" V 7450 1600 50  0000 C CNN
F 1 "5K1" V 7550 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7280 1600 50  0001 C CNN
F 3 "~" H 7350 1600 50  0001 C CNN
	1    7350 1600
	0    1    1    0   
$EndComp
NoConn ~ 7100 2400
NoConn ~ 7100 2500
$Comp
L power:VBUS #PWR021
U 1 1 60464020
P 7700 1300
F 0 "#PWR021" H 7700 1150 50  0001 C CNN
F 1 "VBUS" H 7715 1473 50  0000 C CNN
F 2 "" H 7700 1300 50  0001 C CNN
F 3 "" H 7700 1300 50  0001 C CNN
	1    7700 1300
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
L power:GND #PWR022
U 1 1 6046CDD6
P 7700 1550
F 0 "#PWR022" H 7700 1300 50  0001 C CNN
F 1 "GND" H 7705 1377 50  0000 C CNN
F 2 "" H 7700 1550 50  0001 C CNN
F 3 "" H 7700 1550 50  0001 C CNN
	1    7700 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6046DFEC
P 7750 2800
F 0 "#PWR027" H 7750 2550 50  0001 C CNN
F 1 "GND" H 7755 2627 50  0000 C CNN
F 2 "" H 7750 2800 50  0001 C CNN
F 3 "" H 7750 2800 50  0001 C CNN
	1    7750 2800
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
	1550 1600 1500 1600
Wire Wire Line
	1000 1600 1000 3900
Connection ~ 1500 1600
Wire Wire Line
	1500 1600 1000 1600
Wire Wire Line
	6500 2800 7750 2800
Wire Wire Line
	7100 1800 7850 1800
Wire Wire Line
	9600 1700 9100 1700
Wire Wire Line
	9100 1700 9100 1400
$Comp
L power:GND #PWR029
U 1 1 6047E83B
P 9100 2250
F 0 "#PWR029" H 9100 2000 50  0001 C CNN
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
L power:+3.3V #PWR034
U 1 1 60481E63
P 10350 1400
F 0 "#PWR034" H 10350 1250 50  0001 C CNN
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
	1500 1500 1500 1600
Wire Wire Line
	2100 1100 3100 1100
NoConn ~ 9600 1600
Wire Wire Line
	7100 2000 7850 2000
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
NoConn ~ 4150 -1850
NoConn ~ 2700 3500
NoConn ~ 2700 3600
Text GLabel 2700 2200 2    50   Input ~ 0
OUT1
Wire Wire Line
	9600 3250 9100 3250
Wire Wire Line
	9100 3250 9100 2950
$Comp
L power:GND #PWR031
U 1 1 60736BDD
P 9100 3800
F 0 "#PWR031" H 9100 3550 50  0001 C CNN
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
L RevK:D24V5F3-NoSHDN M2
U 1 1 60736BEE
P 9600 3150
F 0 "M2" H 9968 3011 50  0000 L CNN
F 1 "D24V5F5-NoSHDN" H 9650 2700 50  0000 L CNN
F 2 "RevK:D24V5F3-SMD-Like" H 9600 3350 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 9600 3350 50  0001 C CNN
	1    9600 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 607379D0
P 10350 2950
F 0 "#PWR035" H 10350 2800 50  0001 C CNN
F 1 "+5V" H 10365 3123 50  0000 C CNN
F 2 "" H 10350 2950 50  0001 C CNN
F 3 "" H 10350 2950 50  0001 C CNN
	1    10350 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 60739FA0
P 4500 5800
F 0 "J3" H 4580 5792 50  0000 L CNN
F 1 "RFID" H 4580 5701 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-04A_1x04_P2.50mm_Horizontal" H 4500 5800 50  0001 C CNN
F 3 "~" H 4500 5800 50  0001 C CNN
	1    4500 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 6074263F
P 4500 4500
F 0 "J1" H 4580 4492 50  0000 L CNN
F 1 "POWER" H 4580 4401 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-02A_1x02_P2.50mm_Horizontal" H 4500 4500 50  0001 C CNN
F 3 "~" H 4500 4500 50  0001 C CNN
	1    4500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 60743D17
P 4300 5700
F 0 "#PWR014" H 4300 5450 50  0001 C CNN
F 1 "GND" V 4305 5572 50  0000 R CNN
F 2 "" H 4300 5700 50  0001 C CNN
F 3 "" H 4300 5700 50  0001 C CNN
	1    4300 5700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 607450BB
P 4300 4500
F 0 "#PWR011" H 4300 4250 50  0001 C CNN
F 1 "GND" V 4305 4372 50  0000 R CNN
F 2 "" H 4300 4500 50  0001 C CNN
F 3 "" H 4300 4500 50  0001 C CNN
	1    4300 4500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 607622A0
P 4300 5800
F 0 "#PWR015" H 4300 5650 50  0001 C CNN
F 1 "+5V" V 4315 5928 50  0000 L CNN
F 2 "" H 4300 5800 50  0001 C CNN
F 3 "" H 4300 5800 50  0001 C CNN
	1    4300 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6076D038
P 3200 5500
F 0 "#PWR06" H 3200 5250 50  0001 C CNN
F 1 "GND" V 3205 5372 50  0000 R CNN
F 2 "" H 3200 5500 50  0001 C CNN
F 3 "" H 3200 5500 50  0001 C CNN
	1    3200 5500
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6076ECA1
P 3050 5300
F 0 "R4" V 2843 5300 50  0000 C CNN
F 1 "1K" V 2934 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2980 5300 50  0001 C CNN
F 3 "~" H 3050 5300 50  0001 C CNN
	1    3050 5300
	0    1    1    0   
$EndComp
Text GLabel 2900 5300 0    50   Input ~ 0
OUT1
Text GLabel 4300 6000 0    50   Input ~ 0
RFTX
Text GLabel 4300 5900 0    50   Input ~ 0
RFRX
NoConn ~ 2700 3100
$Comp
L power:GND #PWR032
U 1 1 60776D64
P 9450 4450
F 0 "#PWR032" H 9450 4200 50  0001 C CNN
F 1 "GND" H 9455 4277 50  0000 C CNN
F 2 "" H 9450 4450 50  0001 C CNN
F 3 "" H 9450 4450 50  0001 C CNN
	1    9450 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3150 9450 3150
Wire Wire Line
	9450 3150 9450 4050
$Comp
L Device:R R9
U 1 1 6077B7DD
P 9000 4250
F 0 "R9" V 8793 4250 50  0000 C CNN
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
L Device:R R10
U 1 1 60819C12
P 9350 5400
F 0 "R10" V 9143 5400 50  0000 C CNN
F 1 "680R" V 9234 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 9280 5400 50  0001 C CNN
F 3 "~" H 9350 5400 50  0001 C CNN
	1    9350 5400
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR033
U 1 1 6081C3D8
P 9800 5400
F 0 "#PWR033" H 9800 5250 50  0001 C CNN
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
L power:GND #PWR020
U 1 1 6085BF74
P 7000 5450
F 0 "#PWR020" H 7000 5200 50  0001 C CNN
F 1 "GND" H 7005 5277 50  0000 C CNN
F 2 "" H 7000 5450 50  0001 C CNN
F 3 "" H 7000 5450 50  0001 C CNN
	1    7000 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 6085C74E
P 5950 3650
F 0 "#PWR019" H 5950 3500 50  0001 C CNN
F 1 "+3.3V" H 5965 3823 50  0000 C CNN
F 2 "" H 5950 3650 50  0001 C CNN
F 3 "" H 5950 3650 50  0001 C CNN
	1    5950 3650
	1    0    0    -1  
$EndComp
Connection ~ 5950 3650
$Comp
L power:GND #PWR023
U 1 1 6085CF95
P 7700 4250
F 0 "#PWR023" H 7700 4000 50  0001 C CNN
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
L power:GND #PWR024
U 1 1 6087F33E
P 7700 4450
F 0 "#PWR024" H 7700 4200 50  0001 C CNN
F 1 "GND" V 7705 4322 50  0000 R CNN
F 2 "" H 7700 4450 50  0001 C CNN
F 3 "" H 7700 4450 50  0001 C CNN
	1    7700 4450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 6087FBAE
P 7700 4550
F 0 "#PWR025" H 7700 4300 50  0001 C CNN
F 1 "GND" V 7705 4422 50  0000 R CNN
F 2 "" H 7700 4550 50  0001 C CNN
F 3 "" H 7700 4550 50  0001 C CNN
	1    7700 4550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR026
U 1 1 608803BE
P 7700 4650
F 0 "#PWR026" H 7700 4400 50  0001 C CNN
F 1 "GND" V 7705 4522 50  0000 R CNN
F 2 "" H 7700 4650 50  0001 C CNN
F 3 "" H 7700 4650 50  0001 C CNN
	1    7700 4650
	0    -1   -1   0   
$EndComp
$Comp
L RevK:G3VM-41GR8 U5
U 1 1 608BF21E
P 3500 5400
F 0 "U5" H 3500 5725 50  0000 C CNN
F 1 "G3VM-41GR8" H 3500 5634 50  0000 C CNN
F 2 "RevK:Special-SOP-4-3.7x4.55" H 3500 5100 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/info/docget.jsp?did=1284&prodName=TLP3542" H 3500 5400 50  0001 C CNN
	1    3500 5400
	1    0    0    -1  
$EndComp
$Comp
L RevK:QR U7
U 1 1 608F5575
P 11000 6900
F 0 "U7" H 11000 6775 50  0001 C CNN
F 1 "QR" H 11000 6775 50  0001 C CNN
F 2 "RevK:QR-SS" H 10975 6875 50  0001 C CNN
F 3 "" H 10975 6875 50  0001 C CNN
	1    11000 6900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 608CB396
P 4500 5000
F 0 "J2" H 4580 5042 50  0000 L CNN
F 1 "DOOR" H 4580 4951 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-03A_1x03_P2.50mm_Horizontal" H 4500 5000 50  0001 C CNN
F 3 "~" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 608CF414
P 4500 6650
F 0 "J4" H 4580 6642 50  0000 L CNN
F 1 "INPUTS" H 4580 6551 50  0000 L CNN
F 2 "Connector_Molex:Molex_SPOX_5268-06A_1x06_P2.50mm_Horizontal" H 4500 6650 50  0001 C CNN
F 3 "~" H 4500 6650 50  0001 C CNN
	1    4500 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 608E5346
P 4300 4900
F 0 "#PWR013" H 4300 4650 50  0001 C CNN
F 1 "GND" V 4305 4772 50  0000 R CNN
F 2 "" H 4300 4900 50  0001 C CNN
F 3 "" H 4300 4900 50  0001 C CNN
	1    4300 4900
	0    1    1    0   
$EndComp
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 608E5B1F
P 3750 5000
F 0 "JP1" H 3750 5185 50  0000 C CNN
F 1 "12V" H 3750 5094 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_1x02_P1.27mm_Vertical" H 3750 5000 50  0001 C CNN
F 3 "~" H 3750 5000 50  0001 C CNN
	1    3750 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5000 4050 5000
Wire Wire Line
	3800 5300 4050 5300
Wire Wire Line
	4050 5300 4050 5000
Connection ~ 4050 5000
Wire Wire Line
	4050 5000 3850 5000
$Comp
L power:GND #PWR016
U 1 1 60907367
P 4300 6450
F 0 "#PWR016" H 4300 6200 50  0001 C CNN
F 1 "GND" V 4305 6322 50  0000 R CNN
F 2 "" H 4300 6450 50  0001 C CNN
F 3 "" H 4300 6450 50  0001 C CNN
	1    4300 6450
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 6090791B
P 4300 6650
F 0 "#PWR017" H 4300 6400 50  0001 C CNN
F 1 "GND" V 4305 6522 50  0000 R CNN
F 2 "" H 4300 6650 50  0001 C CNN
F 3 "" H 4300 6650 50  0001 C CNN
	1    4300 6650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 60907F2D
P 4300 6850
F 0 "#PWR018" H 4300 6600 50  0001 C CNN
F 1 "GND" V 4305 6722 50  0000 R CNN
F 2 "" H 4300 6850 50  0001 C CNN
F 3 "" H 4300 6850 50  0001 C CNN
	1    4300 6850
	0    1    1    0   
$EndComp
$Comp
L Isolator:LTV-356T U2
U 1 1 60916409
P 3250 6100
F 0 "U2" H 3250 6425 50  0000 C CNN
F 1 "LTV-356T" H 3250 6334 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x3.6mm_P2.54mm" H 3050 5900 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-010/S_110_LTV-356T%2020140520.pdf" H 3250 6100 50  0001 L CNN
	1    3250 6100
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-356T U3
U 1 1 60917F97
P 3250 6700
F 0 "U3" H 3250 7025 50  0000 C CNN
F 1 "LTV-356T" H 3250 6934 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x3.6mm_P2.54mm" H 3050 6500 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-010/S_110_LTV-356T%2020140520.pdf" H 3250 6700 50  0001 L CNN
	1    3250 6700
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-356T U4
U 1 1 6091A600
P 3250 7300
F 0 "U4" H 3250 7625 50  0000 C CNN
F 1 "LTV-356T" H 3250 7534 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x3.6mm_P2.54mm" H 3050 7100 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS70-2001-010/S_110_LTV-356T%2020140520.pdf" H 3250 7300 50  0001 L CNN
	1    3250 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6091C229
P 2800 6000
F 0 "R1" V 2593 6000 50  0000 C CNN
F 1 "1K" V 2684 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2730 6000 50  0001 C CNN
F 3 "~" H 2800 6000 50  0001 C CNN
	1    2800 6000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 6091D170
P 2800 6600
F 0 "R2" V 2593 6600 50  0000 C CNN
F 1 "1K" V 2684 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2730 6600 50  0001 C CNN
F 3 "~" H 2800 6600 50  0001 C CNN
	1    2800 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6091DCE5
P 2800 7200
F 0 "R3" V 2593 7200 50  0000 C CNN
F 1 "1K" V 2684 7200 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 2730 7200 50  0001 C CNN
F 3 "~" H 2800 7200 50  0001 C CNN
	1    2800 7200
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 7400 2950 7500
Wire Wire Line
	2950 7500 3850 7500
Wire Wire Line
	3850 7500 3850 6950
Wire Wire Line
	3850 6950 4300 6950
Wire Wire Line
	2950 6800 2950 6900
Wire Wire Line
	2950 6900 3750 6900
Wire Wire Line
	3750 6900 3750 6750
Wire Wire Line
	3750 6750 4300 6750
Wire Wire Line
	2950 6200 2950 6300
Wire Wire Line
	2950 6300 3850 6300
Wire Wire Line
	3850 6300 3850 6550
Wire Wire Line
	3850 6550 4300 6550
$Comp
L power:+3.3V #PWR01
U 1 1 6092985D
P 2650 6000
F 0 "#PWR01" H 2650 5850 50  0001 C CNN
F 1 "+3.3V" V 2665 6128 50  0000 L CNN
F 2 "" H 2650 6000 50  0001 C CNN
F 3 "" H 2650 6000 50  0001 C CNN
	1    2650 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR02
U 1 1 60929FE3
P 2650 6600
F 0 "#PWR02" H 2650 6450 50  0001 C CNN
F 1 "+3.3V" V 2665 6728 50  0000 L CNN
F 2 "" H 2650 6600 50  0001 C CNN
F 3 "" H 2650 6600 50  0001 C CNN
	1    2650 6600
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 6092A6B3
P 2650 7200
F 0 "#PWR03" H 2650 7050 50  0001 C CNN
F 1 "+3.3V" V 2665 7328 50  0000 L CNN
F 2 "" H 2650 7200 50  0001 C CNN
F 3 "" H 2650 7200 50  0001 C CNN
	1    2650 7200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6092AF18
P 3550 6200
F 0 "#PWR07" H 3550 5950 50  0001 C CNN
F 1 "GND" V 3555 6072 50  0000 R CNN
F 2 "" H 3550 6200 50  0001 C CNN
F 3 "" H 3550 6200 50  0001 C CNN
	1    3550 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6092B628
P 3550 6800
F 0 "#PWR08" H 3550 6550 50  0001 C CNN
F 1 "GND" V 3555 6672 50  0000 R CNN
F 2 "" H 3550 6800 50  0001 C CNN
F 3 "" H 3550 6800 50  0001 C CNN
	1    3550 6800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 6092BD24
P 3550 7400
F 0 "#PWR09" H 3550 7150 50  0001 C CNN
F 1 "GND" V 3555 7272 50  0000 R CNN
F 2 "" H 3550 7400 50  0001 C CNN
F 3 "" H 3550 7400 50  0001 C CNN
	1    3550 7400
	0    -1   -1   0   
$EndComp
Text GLabel 3550 6000 2    50   Input ~ 0
IN1
Text GLabel 3550 6600 2    50   Input ~ 0
IN2
Text GLabel 3550 7200 2    50   Input ~ 0
IN3
NoConn ~ 2700 2000
NoConn ~ 2700 2100
NoConn ~ 2700 1500
NoConn ~ 2700 2900
NoConn ~ 2700 3000
NoConn ~ 2700 3200
NoConn ~ 2700 3300
NoConn ~ 2700 3400
NoConn ~ 2700 1700
NoConn ~ 2700 2600
NoConn ~ 3750 5000
NoConn ~ 12800 7350
NoConn ~ 9400 9850
Wire Wire Line
	4300 5100 4300 5500
Wire Wire Line
	4300 5500 3800 5500
$Comp
L Device:R R7
U 1 1 608C473E
P 8000 1800
F 0 "R7" V 7793 1800 50  0000 C CNN
F 1 "27R" V 7884 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7930 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 1800 8250 1800
$Comp
L Device:R R8
U 1 1 608C572B
P 8000 2000
F 0 "R8" V 8250 2000 50  0000 C CNN
F 1 "27R" V 8150 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" V 7930 2000 50  0001 C CNN
F 3 "~" H 8000 2000 50  0001 C CNN
	1    8000 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 2000 8250 2000
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 608D1452
P 10500 6150
F 0 "H1" H 10600 6196 50  0000 L CNN
F 1 "MountingHole" H 10600 6105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_ISO7380_Pad" H 10500 6150 50  0001 C CNN
F 3 "~" H 10500 6150 50  0001 C CNN
	1    10500 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 608DE2B1
P 10500 6250
F 0 "#PWR0101" H 10500 6000 50  0001 C CNN
F 1 "GND" H 10505 6077 50  0000 C CNN
F 2 "" H 10500 6250 50  0001 C CNN
F 3 "" H 10500 6250 50  0001 C CNN
	1    10500 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 608D441F
P 4300 4600
F 0 "#PWR0102" H 4300 4450 50  0001 C CNN
F 1 "+12V" V 4315 4728 50  0000 L CNN
F 2 "" H 4300 4600 50  0001 C CNN
F 3 "" H 4300 4600 50  0001 C CNN
	1    4300 4600
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0103
U 1 1 608D5B24
P 9100 2950
F 0 "#PWR0103" H 9100 2800 50  0001 C CNN
F 1 "+12V" H 9115 3123 50  0000 C CNN
F 2 "" H 9100 2950 50  0001 C CNN
F 3 "" H 9100 2950 50  0001 C CNN
	1    9100 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 608D6235
P 9100 1400
F 0 "#PWR0104" H 9100 1250 50  0001 C CNN
F 1 "+12V" H 9115 1573 50  0000 C CNN
F 2 "" H 9100 1400 50  0001 C CNN
F 3 "" H 9100 1400 50  0001 C CNN
	1    9100 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 608D7F70
P 8950 1700
F 0 "D2" H 8950 1483 50  0000 C CNN
F 1 "D" H 8950 1574 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8950 1700 50  0001 C CNN
F 3 "~" H 8950 1700 50  0001 C CNN
	1    8950 1700
	-1   0    0    1   
$EndComp
Connection ~ 9100 1700
Wire Wire Line
	8800 1700 8800 1400
$Comp
L power:VBUS #PWR0105
U 1 1 608DB037
P 8800 1400
F 0 "#PWR0105" H 8800 1250 50  0001 C CNN
F 1 "VBUS" H 8815 1573 50  0000 C CNN
F 2 "" H 8800 1400 50  0001 C CNN
F 3 "" H 8800 1400 50  0001 C CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 608D570F
P 3650 5000
F 0 "#PWR?" H 3650 4850 50  0001 C CNN
F 1 "+12V" V 3665 5128 50  0000 L CNN
F 2 "" H 3650 5000 50  0001 C CNN
F 3 "" H 3650 5000 50  0001 C CNN
	1    3650 5000
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
