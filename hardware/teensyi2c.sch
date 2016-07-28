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
LIBS:wickerlib
LIBS:teensyi2c-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L TEENSY-LC J1
U 1 1 573A858B
P 5475 2950
F 0 "J1" H 5025 4200 50  0000 L CNN
F 1 "TEENSY-LC" H 5025 4100 50  0000 L CNN
F 2 "Wickerlib:TEENSY-LC" V 4975 2550 50  0001 C CIN
F 3 "https://cdn.harwin.com/pdfs/60page140.pdf" H 5275 2950 5   0001 C CNN
F 4 "TEENSY-LC" V 4975 2550 50  0001 C CIN "Package"
F 5 "Harwin" V 4975 2550 50  0001 C CIN "MF_Name"
F 6 "TEENSY-LC" V 4975 2550 50  0001 C CIN "MF_PN"
F 7 "PJRC" V 4975 2550 50  0001 C CIN "S1_Name"
F 8 "TEENSY-LC" V 4975 2600 50  0001 C CIN "S1_PN"
F 9 "TEENSY LC " V 4975 2550 50  0001 C CIN "Description"
F 10 "Not Verified" V 4975 2550 50  0001 C CIN "Verified"
	1    5475 2950
	1    0    0    -1  
$EndComp
Text Label 5925 2150 0    60   ~ 0
VIN
$Comp
L HEADER-FEMALE-6POS-TH-1x06-P0.1IN J2
U 1 1 57712F77
P 7550 3475
F 0 "J2" H 7550 3925 50  0000 L CNN
F 1 "OLED-I2C" H 7550 3825 50  0000 L CNN
F 2 "Wickerlib:Pin_Header_Straight_1x06" H 7550 3125 50  0001 C CIN
F 3 "https://cdn.harwin.com/pdfs/60page140.pdf" H 7550 3475 5   0001 C CNN
F 4 "Pin_Header_Straight_1x06" H 7550 3125 50  0001 C CIN "Package"
F 5 "Harwin" H 7550 3125 50  0001 C CIN "MF_Name"
F 6 "M20-7820642" H 7550 3125 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 7550 3125 50  0001 C CIN "S1_Name"
F 8 "952-1808-ND" H 7550 3125 50  0001 C CIN "S1_PN"
F 9 "HEADER FEMALE 6POS TH 1x06 0.1”" H 7550 3125 50  0001 C CIN "Description"
F 10 "Not Verified" H 7550 3125 50  0001 C CIN "Verified"
	1    7550 3475
	1    0    0    -1  
$EndComp
Wire Wire Line
	5525 2150 8200 2150
Wire Wire Line
	5825 3225 7350 3225
Wire Wire Line
	5975 3325 7350 3325
Wire Wire Line
	6150 3425 7350 3425
Wire Wire Line
	6775 3525 7350 3525
Wire Wire Line
	7350 3625 6950 3625
Wire Wire Line
	7350 3725 6900 3725
Text Label 7150 3225 0    60   ~ 0
SDA
Text Label 7150 3325 0    60   ~ 0
SCL
Text Label 7150 3425 0    60   ~ 0
RST
Text Label 7150 3525 0    60   ~ 0
GND
Text Label 7150 3625 0    60   ~ 0
3.3V
Text Label 7175 3725 0    60   ~ 0
VIN
Wire Wire Line
	5825 3225 5825 4150
Wire Wire Line
	5825 4150 5475 4150
Wire Wire Line
	5975 3325 5975 4250
Wire Wire Line
	5975 4250 5475 4250
Wire Wire Line
	6150 3425 6150 2750
Wire Wire Line
	6150 2750 5475 2750
Wire Wire Line
	6775 3525 6775 5150
Text Label 5875 5150 0    60   ~ 0
GND
Wire Wire Line
	5475 5150 8200 5150
Wire Wire Line
	6900 3725 6900 2150
$Comp
L HEADER-FEMALE-7POS-TH-1x07-P0.1IN J?
U 1 1 57713409
P 8725 3450
F 0 "J?" H 8725 3900 50  0000 L CNN
F 1 "ADAFRUIT_BME280" H 8725 3800 50  0000 L CNN
F 2 "CONN-1x07-2.54MM-TH" H 8725 3100 50  0001 C CIN
F 3 "https://cdn.harwin.com/pdfs/60page140.pdf" H 8725 3450 5   0001 C CNN
F 4 "Pin_Header_Straight_1x07" H 8725 3100 50  0001 C CIN "Package"
F 5 "Harwin" H 8725 3100 50  0001 C CIN "MF_Name"
F 6 "M20-7822046" H 8725 3100 50  0001 C CIN "MF_PN"
F 7 "Digikey" H 8725 3100 50  0001 C CIN "S1_Name"
F 8 "952-1905-ND" H 8725 3100 50  0001 C CIN "S1_PN"
F 9 "HEADER FEMALE 7POS TH 1x07 0.1”" H 8725 3100 50  0001 C CIN "Description"
F 10 "Not Verified" H 8725 3100 50  0001 C CIN "Verified"
	1    8725 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8525 3150 8200 3150
Wire Wire Line
	8200 3150 8200 2150
Connection ~ 6900 2150
Wire Wire Line
	8525 3350 8200 3350
Wire Wire Line
	8200 3350 8200 5150
Connection ~ 6775 5150
Wire Wire Line
	8525 3450 7725 3450
Wire Wire Line
	7725 3450 7725 3900
Wire Wire Line
	7725 3900 5975 3900
Connection ~ 5975 3900
Wire Wire Line
	8525 3650 7775 3650
Wire Wire Line
	7775 3650 7775 4025
Wire Wire Line
	7775 4025 5825 4025
Connection ~ 5825 4025
Wire Wire Line
	8525 3250 8200 3250
Wire Wire Line
	8300 3550 8525 3550
Wire Wire Line
	8525 3750 8300 3750
Wire Wire Line
	8300 3750 8300 3725
Text Label 8350 3150 0    60   ~ 0
VIN
Text Label 8325 3250 0    60   ~ 0
3V0
Text Label 8300 3350 0    60   ~ 0
GND
Text Label 8325 3450 0    60   ~ 0
SCK
Text Label 8325 3550 0    60   ~ 0
SDO
Text Label 8350 3650 0    60   ~ 0
SDI
Text Label 8375 3750 0    60   ~ 0
CS
$EndSCHEMATC
