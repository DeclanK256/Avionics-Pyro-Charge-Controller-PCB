EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "Charges PCB Schematic"
Date "2021-10-26"
Rev "v1.0.3"
Comp "Missouri S&T Rocket Design Team '21 (Thomas Francois)"
Comment1 "https://github.com/MSTRocketDesignTeam/Avionics-Charges-PCB"
Comment2 "Intended as initial pre-production design"
Comment3 "Schematic depicting logical connections between components"
Comment4 ""
$EndDescr
$Comp
L SparkFun-Connectors:CONN_05X2RA J?
U 1 1 619484B7
P 1150 3550
F 0 "J?" H 1150 4060 45  0000 C CNN
F 1 "ARM 10 Pin" H 1150 3976 45  0000 C CNN
F 2 "2X5-RA" H 1150 3950 20  0001 C CNN
F 3 "" H 1150 3550 50  0001 C CNN
F 4 "SWD Connector" H 1150 3881 60  0000 C CNN "Field4"
	1    1150 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6194ABC8
P 700 3300
F 0 "#PWR?" H 700 3150 50  0001 C CNN
F 1 "+3.3V" H 715 3473 50  0000 C CNN
F 2 "" H 700 3300 50  0001 C CNN
F 3 "" H 700 3300 50  0001 C CNN
	1    700  3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  3300 700  3350
Wire Wire Line
	700  3350 900  3350
$Comp
L power:GND #PWR?
U 1 1 6194E5C4
P 700 3800
F 0 "#PWR?" H 700 3550 50  0001 C CNN
F 1 "GND" H 705 3627 50  0000 C CNN
F 2 "" H 700 3800 50  0001 C CNN
F 3 "" H 700 3800 50  0001 C CNN
	1    700  3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  3800 700  3750
Wire Wire Line
	700  3750 900  3750
Wire Wire Line
	900  3550 700  3550
Wire Wire Line
	700  3550 700  3750
Connection ~ 700  3750
Wire Wire Line
	900  3450 700  3450
Wire Wire Line
	700  3450 700  3550
Connection ~ 700  3550
NoConn ~ 900  3650
$Comp
L Device:C_Small C?
U 1 1 619609EF
P 1500 3950
F 0 "C?" H 1592 3996 50  0000 L CNN
F 1 "100nF" H 1592 3905 50  0000 L CNN
F 2 "" H 1500 3950 50  0001 C CNN
F 3 "~" H 1500 3950 50  0001 C CNN
	1    1500 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3850 1500 3750
Wire Wire Line
	1500 3750 1400 3750
Connection ~ 1500 3750
$Comp
L power:GND #PWR?
U 1 1 61968F62
P 1500 4050
F 0 "#PWR?" H 1500 3800 50  0001 C CNN
F 1 "GND" H 1505 3877 50  0000 C CNN
F 2 "" H 1500 4050 50  0001 C CNN
F 3 "" H 1500 4050 50  0001 C CNN
	1    1500 4050
	1    0    0    -1  
$EndComp
Text Notes 600  4500 0    50   ~ 0
NRST cap protects\nagainst parasitic resets.
Wire Notes Line
	600  4300 600  2950
Wire Notes Line
	600  2950 1900 2950
Wire Notes Line
	1900 2950 1900 4300
Wire Notes Line
	1900 4300 600  4300
$Comp
L SparkFun-Connectors:CONN_06X2SMD_FEMALE J?
U 1 1 61972D8F
P 1050 1550
F 0 "J?" H 1050 2110 45  0000 C CNN
F 1 "CONN_06X2SMD_FEMALE" H 1050 2026 45  0000 C CNN
F 2 "2X6_SMD" H 1050 2000 20  0001 C CNN
F 3 "" H 1050 1550 50  0001 C CNN
F 4 "2x6 Header" H 1050 1931 60  0000 C CNN "Field4"
	1    1050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 619739DF
P 1850 1100
F 0 "#PWR?" H 1850 950 50  0001 C CNN
F 1 "+3.3V" H 1865 1273 50  0000 C CNN
F 2 "" H 1850 1100 50  0001 C CNN
F 3 "" H 1850 1100 50  0001 C CNN
	1    1850 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1100 1850 1400
Wire Wire Line
	1850 1400 1300 1400
$Comp
L power:+5V #PWR?
U 1 1 61978ADF
P 1550 1100
F 0 "#PWR?" H 1550 950 50  0001 C CNN
F 1 "+5V" H 1565 1273 50  0000 C CNN
F 2 "" H 1550 1100 50  0001 C CNN
F 3 "" H 1550 1100 50  0001 C CNN
	1    1550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1100 1550 1300
Wire Wire Line
	1550 1300 1300 1300
NoConn ~ 1400 3550
NoConn ~ 1400 3650
Wire Notes Line
	600  850  600  1950
Wire Notes Line
	600  1950 2050 1950
Wire Notes Line
	2050 1950 2050 850 
Wire Notes Line
	2050 850  600  850 
Text Notes 1900 800  2    100  ~ 0
Main System Bus
Text Notes 1750 2900 2    100  ~ 0
SWD Connector
Text Notes 600  2400 0    50   ~ 0
Current version uses connector data\nbus for communications to BMS.\nThis may not be ideal, and perhaps a \ndedicated communcation line\nto the BMS should be used instead.
$Sheet
S 3100 1650 700  1500
U 6160DF75
F0 "MCU_F030F4P6" 50
F1 "F030F4P6.sch" 50
F2 "SWCLK" I L 3100 2800 50 
F3 "SWDIO" I L 3100 2650 50 
F4 "I2C1_SDA" I R 3800 2350 50 
F5 "I2C1_SCL" I R 3800 2450 50 
F6 "NRST" I L 3100 2950 50 
F7 "Sense_A" I L 3100 1800 50 
F8 "Sense_B" I L 3100 1900 50 
F9 "Fet_A" I R 3800 1800 50 
F10 "Fet_B" I R 3800 1900 50 
F11 "Fire_A" I R 3800 2000 50 
F12 "Fire_B" I R 3800 2100 50 
F13 "Buzzer_Excitation" I R 3800 2200 50 
$EndSheet
Wire Wire Line
	1400 3350 2150 3350
Wire Wire Line
	2150 3350 2150 2650
Wire Wire Line
	2150 2650 3100 2650
Wire Wire Line
	3100 2800 2300 2800
Wire Wire Line
	2300 2800 2300 3450
Wire Wire Line
	2300 3450 1400 3450
Wire Wire Line
	2450 3750 2450 2950
Wire Wire Line
	2450 2950 3100 2950
Wire Wire Line
	1500 3750 2450 3750
NoConn ~ 800  1300
NoConn ~ 800  1400
NoConn ~ 800  1500
NoConn ~ 800  1600
NoConn ~ 800  1700
NoConn ~ 800  1800
NoConn ~ 1300 1700
NoConn ~ 1300 1800
Text Label 1300 1500 0    50   ~ 0
I2C1_SDA
Text Label 1300 1600 0    50   ~ 0
I2C1_SCL
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617957C5
P 5350 2050
F 0 "R?" H 5350 2250 45  0000 C CNN
F 1 "1k" H 5350 2150 45  0000 C CNN
F 2 "0402" H 5350 2200 20  0001 C CNN
F 3 "" H 5350 2050 60  0001 C CNN
F 4 " " H 5350 2171 60  0000 C CNN "Field4"
	1    5350 2050
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617A98EF
P 5150 2250
F 0 "R?" V 5100 2300 45  0000 L CNN
F 1 "3.3k" V 5200 2300 45  0000 L CNN
F 2 "0402" H 5150 2400 20  0001 C CNN
F 3 "" H 5150 2250 60  0001 C CNN
F 4 " " V 5234 2318 60  0000 L CNN "Field4"
	1    5150 2250
	0    1    1    0   
$EndComp
$Comp
L SparkFun-DiscreteSemi:MOSFET-NCH-2N7002PW Q?
U 1 1 617B1108
P 5750 1950
F 0 "Q?" H 5700 2050 45  0000 L CNN
F 1 "MOSFET-NCH-2N7002PW" H 5400 1750 45  0000 L CNN
F 2 "SOT323" H 5750 2250 20  0001 C CNN
F 3 "" H 5750 1950 50  0001 C CNN
F 4 "TRANS-11151" H 5500 1800 60  0000 L CNN "Field4"
	1    5750 1950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617B3C91
P 6300 1750
F 0 "R?" H 6300 1950 45  0000 C CNN
F 1 "100k" H 6300 1850 45  0000 C CNN
F 2 "0402" H 6300 1900 20  0001 C CNN
F 3 "" H 6300 1750 60  0001 C CNN
F 4 " " H 6300 1871 60  0000 C CNN "Field4"
	1    6300 1750
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617B585E
P 6500 1950
F 0 "R?" V 6450 2050 45  0000 L CNN
F 1 "27k" V 6550 2050 45  0000 L CNN
F 2 "0402" H 6500 2100 20  0001 C CNN
F 3 "" H 6500 1950 60  0001 C CNN
F 4 " " V 6584 2018 60  0000 L CNN "Field4"
	1    6500 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 1750 6100 1750
Wire Wire Line
	5850 1750 5850 1500
Wire Wire Line
	5850 1500 6100 1500
Wire Wire Line
	6100 1500 6100 1750
Connection ~ 5850 1750
Connection ~ 6100 1750
$Comp
L power:GND #PWR?
U 1 1 617BC23A
P 6500 2150
F 0 "#PWR?" H 6500 1900 50  0001 C CNN
F 1 "GND" H 6505 1977 50  0000 C CNN
F 2 "" H 6500 2150 50  0001 C CNN
F 3 "" H 6500 2150 50  0001 C CNN
	1    6500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617BF9E9
P 5850 2150
F 0 "#PWR?" H 5850 1900 50  0001 C CNN
F 1 "GND" H 5855 1977 50  0000 C CNN
F 2 "" H 5850 2150 50  0001 C CNN
F 3 "" H 5850 2150 50  0001 C CNN
	1    5850 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617BFF76
P 5150 2450
F 0 "#PWR?" H 5150 2200 50  0001 C CNN
F 1 "GND" H 5155 2277 50  0000 C CNN
F 2 "" H 5150 2450 50  0001 C CNN
F 3 "" H 5150 2450 50  0001 C CNN
	1    5150 2450
	1    0    0    -1  
$EndComp
Connection ~ 6100 1500
Wire Wire Line
	5150 2050 4800 2050
Connection ~ 5150 2050
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617D1DD4
P 8800 1750
F 0 "R?" H 8800 1950 45  0000 C CNN
F 1 "100k" H 8800 1850 45  0000 C CNN
F 2 "0402" H 8800 1900 20  0001 C CNN
F 3 "" H 8800 1750 60  0001 C CNN
F 4 " " H 8800 1871 60  0000 C CNN "Field4"
	1    8800 1750
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617D1DDB
P 9000 1950
F 0 "R?" V 8950 2050 45  0000 L CNN
F 1 "27k" V 9050 2050 45  0000 L CNN
F 2 "0402" H 9000 2100 20  0001 C CNN
F 3 "" H 9000 1950 60  0001 C CNN
F 4 " " V 9084 2018 60  0000 L CNN "Field4"
	1    9000 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	8350 1750 8600 1750
Wire Wire Line
	8350 1750 8350 1500
Wire Wire Line
	8350 1500 8600 1500
Wire Wire Line
	8600 1500 8600 1750
Connection ~ 8600 1750
$Comp
L power:GND #PWR?
U 1 1 617D1DE7
P 9000 2150
F 0 "#PWR?" H 9000 1900 50  0001 C CNN
F 1 "GND" H 9005 1977 50  0000 C CNN
F 2 "" H 9000 2150 50  0001 C CNN
F 3 "" H 9000 2150 50  0001 C CNN
	1    9000 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617D1DED
P 8350 2150
F 0 "#PWR?" H 8350 1900 50  0001 C CNN
F 1 "GND" H 8355 1977 50  0000 C CNN
F 2 "" H 8350 2150 50  0001 C CNN
F 3 "" H 8350 2150 50  0001 C CNN
	1    8350 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 617D1DF3
P 7650 2450
F 0 "#PWR?" H 7650 2200 50  0001 C CNN
F 1 "GND" H 7655 2277 50  0000 C CNN
F 2 "" H 7650 2450 50  0001 C CNN
F 3 "" H 7650 2450 50  0001 C CNN
	1    7650 2450
	1    0    0    -1  
$EndComp
Connection ~ 8600 1500
Text Label 6750 1500 0    50   ~ 0
Fet_A
Text Label 9200 1500 0    50   ~ 0
Fet_B
Wire Wire Line
	6100 1500 6750 1500
Wire Wire Line
	8600 1500 9200 1500
Wire Wire Line
	9000 1750 9200 1750
Connection ~ 9000 1750
Text Label 9200 1750 0    50   ~ 0
Sense_B
Text Label 4800 2050 2    50   ~ 0
Fire_A
Connection ~ 6500 1750
Connection ~ 8350 1750
Text Label 7300 2050 2    50   ~ 0
Fire_B
Text Label 6750 1750 0    50   ~ 0
Sense_A
Wire Wire Line
	6500 1750 6750 1750
Connection ~ 7650 2050
Wire Wire Line
	7650 2050 7300 2050
$Comp
L SparkFun-DiscreteSemi:MOSFET-NCH-2N7002PW Q?
U 1 1 617D1DCD
P 8250 1950
F 0 "Q?" H 8200 2050 45  0000 L CNN
F 1 "MOSFET-NCH-2N7002PW" H 7900 1750 45  0000 L CNN
F 2 "SOT323" H 8250 2250 20  0001 C CNN
F 3 "" H 8250 1950 50  0001 C CNN
F 4 "TRANS-11151" H 8000 1800 60  0000 L CNN "Field4"
	1    8250 1950
	1    0    0    -1  
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617D1DC6
P 7650 2250
F 0 "R?" V 7600 2300 45  0000 L CNN
F 1 "3.3k" V 7700 2300 45  0000 L CNN
F 2 "0402" H 7650 2400 20  0001 C CNN
F 3 "" H 7650 2250 60  0001 C CNN
F 4 " " V 7734 2318 60  0000 L CNN "Field4"
	1    7650 2250
	0    1    1    0   
$EndComp
$Comp
L SparkFun-Resistors:RESISTOR0402 R?
U 1 1 617D1DBF
P 7850 2050
F 0 "R?" H 7850 2250 45  0000 C CNN
F 1 "1k" H 7850 2150 45  0000 C CNN
F 2 "0402" H 7850 2200 20  0001 C CNN
F 3 "" H 7850 2050 60  0001 C CNN
F 4 " " H 7850 2171 60  0000 C CNN "Field4"
	1    7850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3850 6900 3850
Wire Wire Line
	7100 3650 6900 3650
$Comp
L Device:R_Small_US R?
U 1 1 617F57E2
P 6900 3750
F 0 "R?" H 6650 3750 50  0000 L CNN
F 1 "1k" V 6800 3700 50  0000 L CNN
F 2 "" H 6900 3750 50  0001 C CNN
F 3 "~" H 6900 3750 50  0001 C CNN
	1    6900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3850 7100 4000
Connection ~ 7100 3850
Wire Wire Line
	7100 4000 6950 4000
Text Label 6950 4000 2    50   ~ 0
Buzzer_Excitation
Connection ~ 7100 3650
Wire Wire Line
	7100 3650 7100 3500
$Comp
L power:+3.3V #PWR?
U 1 1 61805B6A
P 7100 3500
F 0 "#PWR?" H 7100 3350 50  0001 C CNN
F 1 "+3.3V" H 7115 3673 50  0000 C CNN
F 2 "" H 7100 3500 50  0001 C CNN
F 3 "" H 7100 3500 50  0001 C CNN
	1    7100 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ?
U 1 1 617ECF55
P 7200 3750
F 0 "BZ?" H 7352 3779 50  0000 L CNN
F 1 "Buzzer" H 7352 3688 50  0000 L CNN
F 2 "" V 7175 3850 50  0001 C CNN
F 3 "~" V 7175 3850 50  0001 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
Text Label 3800 2000 0    50   ~ 0
Fire_A
Text Label 3100 1800 2    50   ~ 0
Sense_A
Text Label 3800 1800 0    50   ~ 0
Fet_A
Text Label 3800 2100 0    50   ~ 0
Fire_B
Text Label 3100 1900 2    50   ~ 0
Sense_B
Text Label 3800 1900 0    50   ~ 0
Fet_B
Text Label 3800 2200 0    50   ~ 0
Buzzer_Excitation
Text Label 3800 2350 0    50   ~ 0
I2C1_SDA
Text Label 3800 2450 0    50   ~ 0
I2C1_SCL
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 6180EEED
P 5200 4550
F 0 "J?" H 5280 4542 50  0000 L CNN
F 1 "Screw_Terminal_01x04" H 5280 4451 50  0000 L CNN
F 2 "" H 5200 4550 50  0001 C CNN
F 3 "~" H 5200 4550 50  0001 C CNN
	1    5200 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4750 4850 4750
Wire Wire Line
	4850 4750 4850 4550
Wire Wire Line
	4850 4550 5000 4550
Connection ~ 4850 4750
Text Label 5000 4450 2    50   ~ 0
Fet_A
Text Label 5000 4650 2    50   ~ 0
Fet_B
Wire Wire Line
	4850 4750 4850 4900
$Comp
L power:+5V #PWR?
U 1 1 61815497
P 4850 4900
F 0 "#PWR?" H 4850 4750 50  0001 C CNN
F 1 "+5V" H 4865 5073 50  0000 C CNN
F 2 "" H 4850 4900 50  0001 C CNN
F 3 "" H 4850 4900 50  0001 C CNN
	1    4850 4900
	-1   0    0    1   
$EndComp
$Comp
L SparkFun-Capacitors:10UF-POLAR-0603-6.3V-20%_TANT_ C?
U 1 1 61817765
P 4750 4750
F 0 "C?" V 4496 4700 45  0000 C CNN
F 1 "860160272005 5v 47micro farad" H 4600 4600 45  0000 C CNN
F 2 "Capacitor_THT:C_Radial_D5.0mm_H11.0mm_P2.00mm" H 4750 5000 20  0001 C CNN
F 3 "" H 4750 4750 50  0000 C CNN
	1    4750 4750
	0    1    1    0   
$EndComp
$EndSCHEMATC
