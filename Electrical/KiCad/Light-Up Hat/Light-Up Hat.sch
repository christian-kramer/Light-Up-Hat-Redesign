EESchema Schematic File Version 4
LIBS:Light-Up Hat-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Light-Up Hat PCB"
Date "2019-10-22"
Rev "1.0"
Comp "Christian Kramer"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_PIC10:PIC10F220-IOT U2
U 1 1 5DAB79AC
P 6300 3400
F 0 "U2" H 6650 4000 50  0000 C CNN
F 1 "PIC10F220-IOT" H 6650 3900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6350 4050 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41270E.pdf" H 6300 3400 50  0001 C CNN
	1    6300 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5DAB7A79
P 6300 4000
F 0 "#PWR09" H 6300 3750 50  0001 C CNN
F 1 "GND" H 6305 3827 50  0000 C CNN
F 2 "" H 6300 4000 50  0001 C CNN
F 3 "" H 6300 4000 50  0001 C CNN
	1    6300 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 5DAB7AD1
P 3400 5250
F 0 "D5" V 3438 5133 50  0000 R CNN
F 1 "LED" V 3347 5133 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3400 5250 50  0001 C CNN
F 3 "~" H 3400 5250 50  0001 C CNN
	1    3400 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 5DAB7B97
P 3050 5250
F 0 "D4" V 3088 5133 50  0000 R CNN
F 1 "LED" V 2997 5133 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 3050 5250 50  0001 C CNN
F 3 "~" H 3050 5250 50  0001 C CNN
	1    3050 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5DAB7BB9
P 2700 5250
F 0 "D3" V 2738 5133 50  0000 R CNN
F 1 "LED" V 2647 5133 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2700 5250 50  0001 C CNN
F 3 "~" H 2700 5250 50  0001 C CNN
	1    2700 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5DAB7BDA
P 2350 5250
F 0 "D2" V 2388 5133 50  0000 R CNN
F 1 "LED" V 2297 5133 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2350 5250 50  0001 C CNN
F 3 "~" H 2350 5250 50  0001 C CNN
	1    2350 5250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 5DAB7BF8
P 2000 5250
F 0 "D1" V 2038 5133 50  0000 R CNN
F 1 "LED" V 1947 5133 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm" H 2000 5250 50  0001 C CNN
F 3 "~" H 2000 5250 50  0001 C CNN
	1    2000 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DAB7C51
P 2700 5400
F 0 "#PWR06" H 2700 5150 50  0001 C CNN
F 1 "GND" H 2705 5227 50  0000 C CNN
F 2 "" H 2700 5400 50  0001 C CNN
F 3 "" H 2700 5400 50  0001 C CNN
	1    2700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5400 2350 5400
Connection ~ 2350 5400
Wire Wire Line
	2350 5400 2700 5400
Connection ~ 2700 5400
Wire Wire Line
	2700 5400 3050 5400
Connection ~ 3050 5400
Wire Wire Line
	3050 5400 3400 5400
Wire Wire Line
	3400 5100 3050 5100
Connection ~ 2350 5100
Wire Wire Line
	2350 5100 2000 5100
Connection ~ 2700 5100
Wire Wire Line
	2700 5100 2350 5100
Connection ~ 3050 5100
Text Label 9100 1650 2    50   ~ 0
ICSPDAT
Text Label 9100 1750 2    50   ~ 0
ICSPCLK
Text Label 5700 3300 2    50   ~ 0
ICSPDAT
Text Label 5700 3500 2    50   ~ 0
ICSPCLK
Text Label 6900 3500 0    50   ~ 0
LED_CONTROL
$Comp
L Device:R_Small R1
U 1 1 5DAB8974
P 2300 4900
F 0 "R1" V 2400 4900 50  0000 C CNN
F 1 "1KΩ" V 2500 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 2300 4900 50  0001 C CNN
F 3 "~" H 2300 4900 50  0001 C CNN
	1    2300 4900
	0    1    -1   0   
$EndComp
Text Label 2200 4900 2    50   ~ 0
LED_CONTROL
$Comp
L Device:Battery_Cell BT1
U 1 1 5DAB9009
P 700 1450
F 0 "BT1" H 818 1546 50  0000 L CNN
F 1 "Battery_Cell" H 818 1455 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P5.08mm_Drill1.5mm" V 700 1510 50  0001 C CNN
F 3 "~" V 700 1510 50  0001 C CNN
	1    700  1450
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR01
U 1 1 5DAB9274
P 700 1250
F 0 "#PWR01" H 700 1100 50  0001 C CNN
F 1 "+BATT" H 715 1423 50  0000 C CNN
F 2 "" H 700 1250 50  0001 C CNN
F 3 "" H 700 1250 50  0001 C CNN
	1    700  1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5DAB9321
P 700 1550
F 0 "#PWR02" H 700 1300 50  0001 C CNN
F 1 "GND" H 705 1377 50  0000 C CNN
F 2 "" H 700 1550 50  0001 C CNN
F 3 "" H 700 1550 50  0001 C CNN
	1    700  1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5DAB93E0
P 9100 1550
F 0 "#PWR013" H 9100 1300 50  0001 C CNN
F 1 "GND" V 9105 1422 50  0000 R CNN
F 2 "" H 9100 1550 50  0001 C CNN
F 3 "" H 9100 1550 50  0001 C CNN
	1    9100 1550
	0    1    1    0   
$EndComp
Text Label 5700 3650 2    50   ~ 0
BUTTON_INPUT
Text Label 9100 5400 2    50   ~ 0
BUTTON_INPUT
$Comp
L power:GND #PWR014
U 1 1 5DABAB97
P 9500 5400
F 0 "#PWR014" H 9500 5150 50  0001 C CNN
F 1 "GND" V 9505 5272 50  0000 R CNN
F 2 "" H 9500 5400 50  0001 C CNN
F 3 "" H 9500 5400 50  0001 C CNN
	1    9500 5400
	0    -1   -1   0   
$EndComp
$Comp
L power:VPP #PWR012
U 1 1 5DABBB4A
P 9100 1450
F 0 "#PWR012" H 9100 1300 50  0001 C CNN
F 1 "VPP" V 9115 1577 50  0000 L CNN
F 2 "" H 9100 1450 50  0001 C CNN
F 3 "" H 9100 1450 50  0001 C CNN
	1    9100 1450
	0    -1   -1   0   
$EndComp
$Comp
L power:VPP #PWR011
U 1 1 5DABDDE6
P 6900 3300
F 0 "#PWR011" H 6900 3150 50  0001 C CNN
F 1 "VPP" V 6915 3428 50  0000 L CNN
F 2 "" H 6900 3300 50  0001 C CNN
F 3 "" H 6900 3300 50  0001 C CNN
	1    6900 3300
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5DAB7C1C
P 2700 4700
F 0 "#PWR05" H 2700 4550 50  0001 C CNN
F 1 "+3.3V" H 2715 4873 50  0000 C CNN
F 2 "" H 2700 4700 50  0001 C CNN
F 3 "" H 2700 4700 50  0001 C CNN
	1    2700 4700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5DAB7A37
P 6300 2800
F 0 "#PWR08" H 6300 2650 50  0001 C CNN
F 1 "+3.3V" H 6315 2973 50  0000 C CNN
F 2 "" H 6300 2800 50  0001 C CNN
F 3 "" H 6300 2800 50  0001 C CNN
	1    6300 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3500 5700 3650
$Comp
L Regulator_Linear:AP1117-33 U1
U 1 1 5DAE91E6
P 2350 1250
F 0 "U1" H 2350 1492 50  0000 C CNN
F 1 "AP1117-33" H 2350 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2350 1450 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 2450 1000 50  0001 C CNN
	1    2350 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DAE92E8
P 1900 1400
F 0 "C1" H 1992 1446 50  0000 L CNN
F 1 "1μF" H 1992 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1900 1400 50  0001 C CNN
F 3 "~" H 1900 1400 50  0001 C CNN
	1    1900 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5DAE945B
P 2800 1400
F 0 "C2" H 2892 1446 50  0000 L CNN
F 1 "1μF" H 2892 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2800 1400 50  0001 C CNN
F 3 "~" H 2800 1400 50  0001 C CNN
	1    2800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1300 2800 1250
Wire Wire Line
	2800 1250 2650 1250
Wire Wire Line
	2800 1500 2800 1550
Wire Wire Line
	2800 1550 2350 1550
Wire Wire Line
	2350 1550 1900 1550
Wire Wire Line
	1900 1550 1900 1500
Connection ~ 2350 1550
Wire Wire Line
	1900 1300 1900 1250
Wire Wire Line
	1900 1250 2050 1250
$Comp
L power:GND #PWR04
U 1 1 5DAEAF32
P 2350 1550
F 0 "#PWR04" H 2350 1300 50  0001 C CNN
F 1 "GND" H 2355 1377 50  0000 C CNN
F 2 "" H 2350 1550 50  0001 C CNN
F 3 "" H 2350 1550 50  0001 C CNN
	1    2350 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5DAEAF87
P 2800 1250
F 0 "#PWR07" H 2800 1100 50  0001 C CNN
F 1 "+3.3V" H 2815 1423 50  0000 C CNN
F 2 "" H 2800 1250 50  0001 C CNN
F 3 "" H 2800 1250 50  0001 C CNN
	1    2800 1250
	1    0    0    -1  
$EndComp
Connection ~ 2800 1250
$Comp
L power:+BATT #PWR03
U 1 1 5DAEB006
P 1900 1250
F 0 "#PWR03" H 1900 1100 50  0001 C CNN
F 1 "+BATT" H 1915 1423 50  0000 C CNN
F 2 "" H 1900 1250 50  0001 C CNN
F 3 "" H 1900 1250 50  0001 C CNN
	1    1900 1250
	1    0    0    -1  
$EndComp
Connection ~ 1900 1250
$Comp
L Device:C_Small C3
U 1 1 5DAEC38E
P 6850 3900
F 0 "C3" H 6942 3946 50  0000 L CNN
F 1 "C_Small" H 6942 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 6850 3900 50  0001 C CNN
F 3 "~" H 6850 3900 50  0001 C CNN
	1    6850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4000 6850 4000
Connection ~ 6300 4000
$Comp
L power:+3.3V #PWR010
U 1 1 5DAED661
P 6850 3800
F 0 "#PWR010" H 6850 3650 50  0001 C CNN
F 1 "+3.3V" H 6865 3973 50  0000 C CNN
F 2 "" H 6850 3800 50  0001 C CNN
F 3 "" H 6850 3800 50  0001 C CNN
	1    6850 3800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5DAE9898
P 9300 1550
F 0 "J1" H 9380 1542 50  0000 L CNN
F 1 "Conn_01x04" H 9380 1451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 9300 1550 50  0001 C CNN
F 3 "~" H 9300 1550 50  0001 C CNN
	1    9300 1550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 5DAF9988
P 9300 5400
F 0 "SW1" H 9300 5635 50  0000 C CNN
F 1 "SW_SPST" H 9300 5544 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_8mm_H5mm" H 9300 5400 50  0001 C CNN
F 3 "" H 9300 5400 50  0001 C CNN
	1    9300 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5100 3050 5100
$Comp
L Transistor_BJT:MMBT3906 Q1
U 1 1 5DD09D79
P 2600 4900
F 0 "Q1" H 2791 4854 50  0000 L CNN
F 1 "MMBT3906" H 2791 4945 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2800 4825 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3906.pdf" H 2600 4900 50  0001 L CNN
	1    2600 4900
	1    0    0    1   
$EndComp
$EndSCHEMATC
