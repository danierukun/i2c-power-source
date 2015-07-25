EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:PIC16F1823
LIBS:dips-s
LIBS:powerchannel-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74LS165 U?
U 1 1 55B3B283
P 6050 2600
F 0 "U?" H 6200 2550 60  0000 C CNN
F 1 "74LS165" H 6200 2350 60  0000 C CNN
F 2 "" H 6050 2600 60  0000 C CNN
F 3 "" H 6050 2600 60  0000 C CNN
	1    6050 2600
	1    0    0    -1  
$EndComp
$Comp
L 24C16 U?
U 1 1 55B3B2C4
P 6000 4950
F 0 "U?" H 6150 5300 60  0000 C CNN
F 1 "24C16" H 6200 4600 60  0000 C CNN
F 2 "" H 6000 4950 60  0000 C CNN
F 3 "" H 6000 4950 60  0000 C CNN
	1    6000 4950
	1    0    0    -1  
$EndComp
$Comp
L DIPS_08 SW?
U 1 1 55B3B54F
P 4300 2450
F 0 "SW?" V 3850 2450 60  0000 C CNN
F 1 "I2C ADDR" V 4750 2450 60  0000 C CNN
F 2 "" H 4300 2450 60  0000 C CNN
F 3 "" H 4300 2450 60  0000 C CNN
	1    4300 2450
	0    -1   1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 55B3B8D5
P 3950 1800
F 0 "#PWR?" H 3950 1650 50  0001 C CNN
F 1 "+5V" H 3950 1940 50  0000 C CNN
F 2 "" H 3950 1800 60  0000 C CNN
F 3 "" H 3950 1800 60  0000 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
NoConn ~ 6750 2200
Text HLabel 5200 2950 0    60   Input ~ 0
ADDR_LATCH
Text HLabel 5200 3200 0    60   Input ~ 0
CLK
$Comp
L GND #PWR?
U 1 1 55B3BB46
P 5150 1800
F 0 "#PWR?" H 5150 1550 50  0001 C CNN
F 1 "GND" H 5150 1650 50  0000 C CNN
F 2 "" H 5150 1800 60  0000 C CNN
F 3 "" H 5150 1800 60  0000 C CNN
	1    5150 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 55B3BCA5
P 5750 1650
F 0 "#PWR?" H 5750 1500 50  0001 C CNN
F 1 "+5V" H 5750 1790 50  0000 C CNN
F 2 "" H 5750 1650 60  0000 C CNN
F 3 "" H 5750 1650 60  0000 C CNN
	1    5750 1650
	1    0    0    -1  
$EndComp
Text HLabel 7100 2100 2    60   Output ~ 0
DATA_OUT
NoConn ~ 6700 4850
Text GLabel 7000 5150 2    60   BiDi ~ 0
I2C_SDA
Text GLabel 7000 5050 2    60   BiDi ~ 0
I2C_SCL
$Comp
L +5V #PWR?
U 1 1 55B3C1C5
P 6000 4450
F 0 "#PWR?" H 6000 4300 50  0001 C CNN
F 1 "+5V" H 6000 4590 50  0000 C CNN
F 2 "" H 6000 4450 60  0000 C CNN
F 3 "" H 6000 4450 60  0000 C CNN
	1    6000 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55B3C1DF
P 6000 5450
F 0 "#PWR?" H 6000 5200 50  0001 C CNN
F 1 "GND" H 6000 5300 50  0000 C CNN
F 2 "" H 6000 5450 60  0000 C CNN
F 3 "" H 6000 5450 60  0000 C CNN
	1    6000 5450
	1    0    0    -1  
$EndComp
Text Label 5050 4750 2    60   ~ 0
EEPROM_A0
Text Label 5050 4850 2    60   ~ 0
EEPROM_A1
Text Label 5050 4950 2    60   ~ 0
EEPROM_A2
Text Label 4700 1150 2    60   ~ 0
EEPROM_A0
Text Label 4700 1250 2    60   ~ 0
EEPROM_A1
Text Label 4700 1350 2    60   ~ 0
EEPROM_A2
Wire Wire Line
	4500 2100 5350 2100
Wire Wire Line
	5350 2200 4500 2200
Wire Wire Line
	4500 2300 5350 2300
Wire Wire Line
	5350 2400 4500 2400
Wire Wire Line
	4500 2500 5350 2500
Wire Wire Line
	5350 2600 4500 2600
Wire Wire Line
	4500 2700 5350 2700
Wire Wire Line
	5350 2800 4500 2800
Wire Wire Line
	4100 2100 3950 2100
Wire Wire Line
	3950 1800 3950 2800
Wire Wire Line
	3950 2800 4100 2800
Wire Wire Line
	4100 2700 3950 2700
Connection ~ 3950 2700
Wire Wire Line
	4100 2600 3950 2600
Connection ~ 3950 2600
Wire Wire Line
	4100 2500 3950 2500
Connection ~ 3950 2500
Wire Wire Line
	4100 2400 3950 2400
Connection ~ 3950 2400
Wire Wire Line
	4100 2300 3950 2300
Connection ~ 3950 2300
Wire Wire Line
	4100 2200 3950 2200
Connection ~ 3950 2200
Connection ~ 3950 2100
Wire Wire Line
	5200 2950 5350 2950
Wire Wire Line
	5200 3200 5350 3200
Wire Wire Line
	5350 3100 5250 3100
Wire Wire Line
	5250 3100 5250 3200
Connection ~ 5250 3200
Wire Wire Line
	5150 1800 5350 1800
Wire Wire Line
	5350 1800 5350 2000
Wire Wire Line
	5750 1650 5750 1950
Wire Wire Line
	7100 2100 6750 2100
Wire Wire Line
	7000 5050 6700 5050
Wire Wire Line
	6700 5150 7000 5150
Wire Wire Line
	5050 4750 5300 4750
Wire Wire Line
	5050 4850 5300 4850
Wire Wire Line
	5050 4950 5300 4950
Wire Wire Line
	4700 1150 5050 1150
Wire Wire Line
	5050 1150 5050 2100
Connection ~ 5050 2100
Wire Wire Line
	4700 1250 4950 1250
Wire Wire Line
	4950 1250 4950 2200
Connection ~ 4950 2200
Wire Wire Line
	4700 1350 4850 1350
Wire Wire Line
	4850 1350 4850 2300
Connection ~ 4850 2300
$EndSCHEMATC
