EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Galaxy Keypad controller"
Date "2021-06-01"
Rev "4"
Comp "Adrian Kennard Andrews & Arnold Ltd"
Comment1 "@TheRealRevK"
Comment2 "www.me.uk"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:USB_C_Receptacle_USB2.0 J2
U 1 1 60CC7AD1
P 6525 1850
F 0 "J2" H 6632 2717 50  0000 C CNN
F 1 "USB-C" H 6632 2626 50  0000 C CNN
F 2 "RevK:USC16-TR-Round" H 6675 1850 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 6675 1850 50  0001 C CNN
	1    6525 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60CC7AD2
P 7375 1450
F 0 "R6" V 7582 1450 50  0000 C CNN
F 1 "5K1" V 7491 1450 50  0000 C CNN
F 2 "RevK:R_0603" V 7305 1450 50  0001 C CNN
F 3 "~" H 7375 1450 50  0001 C CNN
	1    7375 1450
	0    -1   -1   0   
$EndComp
Text GLabel 3575 2000 2    50   Input ~ 0
I
Text GLabel 1875 1700 0    50   Input ~ 0
EN
Text GLabel 8275 1750 2    50   Input ~ 0
D-
Text GLabel 8275 1950 2    50   Input ~ 0
D+
Wire Wire Line
	6225 2750 6525 2750
Connection ~ 6525 2750
Wire Wire Line
	7125 2050 7125 1950
Connection ~ 7125 1950
Wire Wire Line
	7125 1850 7125 1750
Connection ~ 7125 1750
Wire Wire Line
	7125 1250 7725 1250
Wire Wire Line
	1875 1700 2375 1700
Wire Wire Line
	7125 1450 7225 1450
Wire Wire Line
	7125 1550 7225 1550
Wire Wire Line
	7525 1450 7525 1500
Wire Wire Line
	7725 1500 7525 1500
Connection ~ 7525 1500
Wire Wire Line
	7525 1500 7525 1550
NoConn ~ 2375 2900
NoConn ~ 2375 3000
NoConn ~ 2375 3100
NoConn ~ 2375 3200
NoConn ~ 2375 3300
NoConn ~ 2375 3400
$Comp
L Device:R R7
U 1 1 6049A32B
P 7375 1550
F 0 "R7" V 7475 1550 50  0000 C CNN
F 1 "5K1" V 7575 1550 50  0000 C CNN
F 2 "RevK:R_0603" V 7305 1550 50  0001 C CNN
F 3 "~" H 7375 1550 50  0001 C CNN
	1    7375 1550
	0    1    1    0   
$EndComp
NoConn ~ 7125 2350
NoConn ~ 7125 2450
NoConn ~ 3575 2900
NoConn ~ 3575 3000
NoConn ~ 3575 3200
NoConn ~ 3575 3700
$Comp
L power:VBUS #PWR05
U 1 1 60CC7AD3
P 7725 1250
F 0 "#PWR05" H 7725 1100 50  0001 C CNN
F 1 "VBUS" H 7740 1423 50  0000 C CNN
F 2 "" H 7725 1250 50  0001 C CNN
F 3 "" H 7725 1250 50  0001 C CNN
	1    7725 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 60CC7AD4
P 3975 1500
F 0 "#PWR03" H 3975 1350 50  0001 C CNN
F 1 "+3.3V" H 3990 1673 50  0000 C CNN
F 2 "" H 3975 1500 50  0001 C CNN
F 3 "" H 3975 1500 50  0001 C CNN
	1    3975 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60CC7AD5
P 7725 1500
F 0 "#PWR06" H 7725 1250 50  0001 C CNN
F 1 "GND" H 7730 1327 50  0000 C CNN
F 2 "" H 7725 1500 50  0001 C CNN
F 3 "" H 7725 1500 50  0001 C CNN
	1    7725 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 6046DFEC
P 7775 2750
F 0 "#PWR07" H 7775 2500 50  0001 C CNN
F 1 "GND" H 7780 2577 50  0000 C CNN
F 2 "" H 7775 2750 50  0001 C CNN
F 3 "" H 7775 2750 50  0001 C CNN
	1    7775 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6046FB14
P 4025 4300
F 0 "#PWR04" H 4025 4050 50  0001 C CNN
F 1 "GND" H 4030 4127 50  0000 C CNN
F 2 "" H 4025 4300 50  0001 C CNN
F 3 "" H 4025 4300 50  0001 C CNN
	1    4025 4300
	1    0    0    -1  
$EndComp
Text GLabel 3575 1800 2    50   Input ~ 0
O
NoConn ~ 3575 3800
Wire Wire Line
	2975 1500 2975 1600
Wire Wire Line
	2425 2000 2375 2000
Wire Wire Line
	1875 2000 1875 4300
Connection ~ 2375 2000
Wire Wire Line
	2375 2000 1875 2000
Wire Wire Line
	6525 2750 7775 2750
Wire Wire Line
	7125 1750 8275 1750
Wire Wire Line
	2375 1900 2375 2000
Wire Wire Line
	3875 3500 3875 3600
Connection ~ 3875 3600
NoConn ~ 3575 2300
Connection ~ 2975 4300
Wire Wire Line
	1875 4300 2975 4300
Connection ~ 2975 1500
Wire Wire Line
	3575 3600 3875 3600
Wire Wire Line
	3875 3500 3575 3500
Wire Wire Line
	2975 1500 3975 1500
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 60CC7AD0
P 2975 2900
F 0 "U1" H 2975 4481 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 2975 4390 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 2975 1400 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 2675 2950 50  0001 C CNN
	1    2975 2900
	1    0    0    -1  
$EndComp
NoConn ~ 3575 3400
NoConn ~ 3575 3100
NoConn ~ 3575 3300
Wire Wire Line
	2975 4300 3875 4300
NoConn ~ 3575 3900
NoConn ~ 3575 4000
Wire Wire Line
	3875 3600 3875 4300
Connection ~ 3875 4300
Wire Wire Line
	3875 4300 4025 4300
Wire Wire Line
	7125 1950 8275 1950
$Comp
L RevK:AJK AJK1
U 1 1 60629B22
P 10525 6850
F 0 "AJK1" H 10525 6950 50  0001 C CNN
F 1 "AJK" H 10550 6850 50  0000 L CNN
F 2 "RevK:AJK" H 10525 6750 50  0001 C CNN
F 3 "" H 10525 6750 50  0001 C CNN
	1    10525 6850
	1    0    0    -1  
$EndComp
$Comp
L RevK:SP3458 U3
U 1 1 60718926
P 4425 6950
F 0 "U3" H 4450 7865 50  0000 C CNN
F 1 "SP3458" H 4450 7774 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 4425 6900 50  0001 C CNN
F 3 "" H 4425 6900 50  0001 C CNN
	1    4425 6950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J1
U 1 1 60720A2E
P 4375 5550
F 0 "J1" H 4475 5900 50  0000 C CNN
F 1 "SPOX" H 4475 5800 50  0000 C CNN
F 2 "RevK:Molex_MiniSPOX_H4RA" H 4375 5550 50  0001 C CNN
F 3 "~" H 4375 5550 50  0001 C CNN
	1    4375 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4825 5450 4825 5150
Wire Wire Line
	4825 5150 5025 5150
Wire Wire Line
	4575 5450 4825 5450
$Comp
L power:GND #PWR0102
U 1 1 60724A2B
P 5025 5150
F 0 "#PWR0102" H 5025 4900 50  0001 C CNN
F 1 "GND" H 5030 4977 50  0000 C CNN
F 2 "" H 5025 5150 50  0001 C CNN
F 3 "" H 5025 5150 50  0001 C CNN
	1    5025 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 5750 5675 5750
Wire Wire Line
	4575 5650 5775 5650
Wire Wire Line
	5775 5650 5775 6700
Wire Wire Line
	4975 6700 5775 6700
Wire Wire Line
	4975 6550 5675 6550
Wire Wire Line
	5675 5750 5675 6550
$Comp
L power:+3.3V #PWR0103
U 1 1 60748A56
P 4975 6400
F 0 "#PWR0103" H 4975 6250 50  0001 C CNN
F 1 "+3.3V" H 4990 6573 50  0000 C CNN
F 2 "" H 4975 6400 50  0001 C CNN
F 3 "" H 4975 6400 50  0001 C CNN
	1    4975 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60749F87
P 4975 6850
F 0 "#PWR0104" H 4975 6600 50  0001 C CNN
F 1 "GND" H 4980 6677 50  0000 C CNN
F 2 "" H 4975 6850 50  0001 C CNN
F 3 "" H 4975 6850 50  0001 C CNN
	1    4975 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4575 5550 5275 5550
NoConn ~ 875  3200
Wire Wire Line
	3475 4700 3475 6400
Wire Wire Line
	3475 6400 3875 6400
Wire Wire Line
	4475 2700 4475 4700
Wire Wire Line
	3575 2700 4475 2700
Wire Wire Line
	3475 4700 4475 4700
Wire Wire Line
	3575 2800 4375 2800
Wire Wire Line
	4375 2800 4375 4600
Wire Wire Line
	4375 4600 3325 4600
Wire Wire Line
	3325 4600 3325 6850
Wire Wire Line
	3325 6850 3875 6850
Wire Wire Line
	3875 6700 3875 6600
Wire Wire Line
	3575 2100 4625 2100
Wire Wire Line
	4625 2100 4625 4800
Wire Wire Line
	4625 4800 3725 4800
Wire Wire Line
	3725 4800 3725 6600
Wire Wire Line
	3725 6600 3875 6600
Connection ~ 3875 6600
Wire Wire Line
	3875 6600 3875 6550
NoConn ~ 3575 2200
NoConn ~ 3575 2400
NoConn ~ 3575 2600
NoConn ~ 3575 1900
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 60771471
P 4775 5550
F 0 "J3" H 4825 5150 50  0000 R CNN
F 1 "Molex" H 4825 5250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 4775 5550 50  0001 C CNN
F 3 "~" H 4775 5550 50  0001 C CNN
	1    4775 5550
	-1   0    0    -1  
$EndComp
Connection ~ 4575 5450
Connection ~ 4575 5550
Connection ~ 4575 5650
Connection ~ 4575 5750
$Comp
L RevK:AA Logo1
U 1 1 60B9351C
P 10750 6850
F 0 "Logo1" H 10750 6850 50  0001 C CNN
F 1 "AA" H 10775 6850 50  0000 L CNN
F 2 "RevK:AA" H 10750 6850 50  0001 C CNN
F 3 "" H 10750 6850 50  0001 C CNN
	1    10750 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 60C8C176
P 5275 5550
F 0 "#PWR0101" H 5275 5400 50  0001 C CNN
F 1 "+12V" H 5290 5723 50  0000 C CNN
F 2 "" H 5275 5550 50  0001 C CNN
F 3 "" H 5275 5550 50  0001 C CNN
	1    5275 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9525 4975 9525 4675
$Comp
L Device:LED D5
U 1 1 60818BC0
P 9450 3900
F 0 "D5" H 9443 4117 50  0000 C CNN
F 1 "LED" H 9443 4026 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9450 3900 50  0001 C CNN
F 3 "~" H 9450 3900 50  0001 C CNN
	1    9450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 60819C12
P 9150 3900
F 0 "R16" V 8943 3900 50  0000 C CNN
F 1 "680R" V 9034 3900 50  0000 C CNN
F 2 "RevK:R_0603" V 9080 3900 50  0001 C CNN
F 3 "~" H 9150 3900 50  0001 C CNN
	1    9150 3900
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR047
U 1 1 6081C3D8
P 9600 3900
F 0 "#PWR047" H 9600 3750 50  0001 C CNN
F 1 "+3.3V" V 9615 4028 50  0000 L CNN
F 2 "" H 9600 3900 50  0001 C CNN
F 3 "" H 9600 3900 50  0001 C CNN
	1    9600 3900
	0    1    1    0   
$EndComp
Text GLabel 9000 3900 0    50   Input ~ 0
LED
$Comp
L power:+12V #PWR049
U 1 1 608D6235
P 9525 4675
F 0 "#PWR049" H 9525 4525 50  0001 C CNN
F 1 "+12V" H 9540 4848 50  0000 C CNN
F 2 "" H 9525 4675 50  0001 C CNN
F 3 "" H 9525 4675 50  0001 C CNN
	1    9525 4675
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 608D7F70
P 9375 4975
F 0 "D6" H 9375 4758 50  0000 C CNN
F 1 "D" H 9375 4849 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9375 4975 50  0001 C CNN
F 3 "~" H 9375 4975 50  0001 C CNN
	1    9375 4975
	-1   0    0    1   
$EndComp
Wire Wire Line
	9225 4975 9225 4675
$Comp
L power:VBUS #PWR046
U 1 1 608DB037
P 9225 4675
F 0 "#PWR046" H 9225 4525 50  0001 C CNN
F 1 "VBUS" H 9240 4848 50  0000 C CNN
F 2 "" H 9225 4675 50  0001 C CNN
F 3 "" H 9225 4675 50  0001 C CNN
	1    9225 4675
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6091181E
P 5975 4925
F 0 "#PWR02" H 5975 4675 50  0001 C CNN
F 1 "GND" H 5980 4752 50  0000 C CNN
F 2 "" H 5975 4925 50  0001 C CNN
F 3 "" H 5975 4925 50  0001 C CNN
	1    5975 4925
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 60910A6C
P 5975 4775
F 0 "C1" H 6090 4821 50  0000 L CNN
F 1 "0.1uF" H 6090 4730 50  0000 L CNN
F 2 "RevK:C_0603" H 6013 4625 50  0001 C CNN
F 3 "~" H 5975 4775 50  0001 C CNN
	1    5975 4775
	1    0    0    -1  
$EndComp
$Comp
L RevK:Regulator Reg1
U 1 1 608E8C57
P 9475 1725
F 0 "Reg1" H 10053 1626 50  0000 L CNN
F 1 "3.3V" H 10053 1535 50  0000 L CNN
F 2 "RevK:RegulatorBlock" H 9925 1825 50  0001 C CNN
F 3 "https://www.pololu.com/product/2842/resources" H 9925 1825 50  0001 C CNN
	1    9475 1725
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR040
U 1 1 60914FE1
P 9475 1825
F 0 "#PWR040" H 9475 1675 50  0001 C CNN
F 1 "+12V" V 9490 1953 50  0000 L CNN
F 2 "" H 9475 1825 50  0001 C CNN
F 3 "" H 9475 1825 50  0001 C CNN
	1    9475 1825
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR039
U 1 1 60913ECD
P 9475 1725
F 0 "#PWR039" H 9475 1575 50  0001 C CNN
F 1 "+12V" V 9490 1853 50  0000 L CNN
F 2 "" H 9475 1725 50  0001 C CNN
F 3 "" H 9475 1725 50  0001 C CNN
	1    9475 1725
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR042
U 1 1 608FE15A
P 9475 2025
F 0 "#PWR042" H 9475 1875 50  0001 C CNN
F 1 "+3.3V" V 9490 2153 50  0000 L CNN
F 2 "" H 9475 2025 50  0001 C CNN
F 3 "" H 9475 2025 50  0001 C CNN
	1    9475 2025
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR041
U 1 1 608FD8A1
P 9475 1925
F 0 "#PWR041" H 9475 1675 50  0001 C CNN
F 1 "GND" V 9480 1797 50  0000 R CNN
F 2 "" H 9475 1925 50  0001 C CNN
F 3 "" H 9475 1925 50  0001 C CNN
	1    9475 1925
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 608803BE
P 7725 4725
F 0 "#PWR09" H 7725 4475 50  0001 C CNN
F 1 "GND" V 7730 4597 50  0000 R CNN
F 2 "" H 7725 4725 50  0001 C CNN
F 3 "" H 7725 4725 50  0001 C CNN
	1    7725 4725
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR08
U 1 1 6087FBAE
P 7725 4625
F 0 "#PWR08" H 7725 4375 50  0001 C CNN
F 1 "GND" V 7730 4497 50  0000 R CNN
F 2 "" H 7725 4625 50  0001 C CNN
F 3 "" H 7725 4625 50  0001 C CNN
	1    7725 4625
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6087F33E
P 7725 4525
F 0 "#PWR0105" H 7725 4275 50  0001 C CNN
F 1 "GND" V 7730 4397 50  0000 R CNN
F 2 "" H 7725 4525 50  0001 C CNN
F 3 "" H 7725 4525 50  0001 C CNN
	1    7725 4525
	0    -1   -1   0   
$EndComp
NoConn ~ 7725 5225
NoConn ~ 7725 5125
NoConn ~ 7725 5025
NoConn ~ 7725 4925
Text GLabel 7725 4225 2    50   Input ~ 0
EN
Text GLabel 7725 4125 2    50   Input ~ 0
O
Text GLabel 7725 4025 2    50   Input ~ 0
I
Text GLabel 7725 4425 2    50   Input ~ 0
BOOT
$Comp
L power:GND #PWR0106
U 1 1 6085CF95
P 7725 4325
F 0 "#PWR0106" H 7725 4075 50  0001 C CNN
F 1 "GND" V 7730 4197 50  0000 R CNN
F 2 "" H 7725 4325 50  0001 C CNN
F 3 "" H 7725 4325 50  0001 C CNN
	1    7725 4325
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6085C74E
P 5975 3725
F 0 "#PWR01" H 5975 3575 50  0001 C CNN
F 1 "+3.3V" H 5990 3898 50  0000 C CNN
F 2 "" H 5975 3725 50  0001 C CNN
F 3 "" H 5975 3725 50  0001 C CNN
	1    5975 3725
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 6085BF74
P 7025 5525
F 0 "#PWR0107" H 7025 5275 50  0001 C CNN
F 1 "GND" H 7030 5352 50  0000 C CNN
F 2 "" H 7025 5525 50  0001 C CNN
F 3 "" H 7025 5525 50  0001 C CNN
	1    7025 5525
	1    0    0    -1  
$EndComp
Wire Wire Line
	7025 5525 7125 5525
Connection ~ 7025 5525
Wire Wire Line
	6925 5525 7025 5525
Connection ~ 5975 3725
Wire Wire Line
	5975 4025 5975 3725
Wire Wire Line
	5975 4025 6325 4025
Connection ~ 5975 4025
Wire Wire Line
	5975 4625 5975 4025
Connection ~ 5975 4625
Wire Wire Line
	6325 4625 5975 4625
Text GLabel 6325 4425 0    50   Input ~ 0
D+
Text GLabel 6325 4325 0    50   Input ~ 0
D-
Wire Wire Line
	5975 3725 6925 3725
Wire Wire Line
	7125 3725 6925 3725
Connection ~ 6925 3725
$Comp
L Interface_USB:FT231XQ U2
U 1 1 6084108B
P 7025 4625
F 0 "U2" H 7025 5706 50  0000 C CNN
F 1 "FT231XQ" H 7025 5615 50  0000 C CNN
F 2 "RevK:QFN-20-1EP_4x4mm_P0.5mm_EP2.5x2.5mm" H 8375 3825 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 7025 4625 50  0001 C CNN
	1    7025 4625
	1    0    0    -1  
$EndComp
Text GLabel 3575 2500 2    50   Input ~ 0
LED
Text GLabel 3575 1700 2    50   Input ~ 0
BOOT
$EndSCHEMATC
