EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "CW Ultrasonic Doppler Radar PCB"
Date "2021-11-03"
Rev ""
Comp "UCT"
Comment1 "Ian Edwards"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SamacSys_Parts:LT1214CN#PBF IC4
U 1 1 61827E29
P 6550 2450
F 0 "IC4" H 7150 2715 50  0000 C CNN
F 1 "LT1214CN#PBF" H 7150 2624 50  0000 C CNN
F 2 "DIP794W53P254L1956H394Q14N" H 7600 2550 50  0001 L CNN
F 3 "http://cds.linear.com/docs/en/datasheet/12134fa.pdf" H 7600 2450 50  0001 L CNN
F 4 "LT1214CN#PBF, Operational Amplifier 26MHz 3 to 28V, 14-Pin PDIP" H 7600 2350 50  0001 L CNN "Description"
F 5 "3.937" H 7600 2250 50  0001 L CNN "Height"
F 6 "584-LT1214CN#PBF" H 7600 2150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Analog-Devices-Linear-Technology/LT1214CNPBF?qs=ytflclh7QUV8Rx5dVb2%2FFw%3D%3D" H 7600 2050 50  0001 L CNN "Mouser Price/Stock"
F 8 "Linear Technology" H 7600 1950 50  0001 L CNN "Manufacturer_Name"
F 9 "LT1214CN#PBF" H 7600 1850 50  0001 L CNN "Manufacturer_Part_Number"
	1    6550 2450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 61839652
P 1550 1000
F 0 "#PWR03" H 1550 850 50  0001 C CNN
F 1 "VCC" H 1565 1173 50  0000 C CNN
F 2 "" H 1550 1000 50  0001 C CNN
F 3 "" H 1550 1000 50  0001 C CNN
	1    1550 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6183A36C
P 1750 1100
F 0 "#PWR05" H 1750 850 50  0001 C CNN
F 1 "GND" H 1755 927 50  0000 C CNN
F 2 "" H 1750 1100 50  0001 C CNN
F 3 "" H 1750 1100 50  0001 C CNN
	1    1750 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR04
U 1 1 6183AD07
P 1700 1400
F 0 "#PWR04" H 1700 1150 50  0001 C CNN
F 1 "GND1" H 1705 1227 50  0000 C CNN
F 2 "" H 1700 1400 50  0001 C CNN
F 3 "" H 1700 1400 50  0001 C CNN
	1    1700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1200 1450 1200
Wire Wire Line
	1550 1300 1150 1300
$Comp
L Regulator_Switching:MT3608 U2
U 1 1 6183C3B2
P 6500 1300
F 0 "U2" H 6500 1667 50  0000 C CNN
F 1 "MT3608" H 6500 1576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6550 1050 50  0001 L CIN
F 3 "https://www.olimex.com/Products/Breadboarding/BB-PWR-3608/resources/MT3608.pdf" H 6250 1750 50  0001 C CNN
	1    6500 1300
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM337_TO39 U4
U 1 1 61840183
P 9400 1400
F 0 "U4" H 9400 1251 50  0000 C CNN
F 1 "LM337_TO39" H 9400 1160 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 9400 1200 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm337-n.pdf" H 9400 1400 50  0001 C CNN
	1    9400 1400
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM317_TO39 U3
U 1 1 61841453
P 9350 2600
F 0 "U3" H 9350 2842 50  0000 C CNN
F 1 "LM317_TO39" H 9350 2751 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 9350 2825 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 9350 2600 50  0001 C CNN
	1    9350 2600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 6184F557
P 2250 1150
F 0 "#PWR07" H 2250 1000 50  0001 C CNN
F 1 "VCC" H 2265 1323 50  0000 C CNN
F 2 "" H 2250 1150 50  0001 C CNN
F 3 "" H 2250 1150 50  0001 C CNN
	1    2250 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1000 1550 1000
Wire Wire Line
	1150 1400 1700 1400
Wire Wire Line
	1350 1550 1150 1550
Wire Wire Line
	1150 1550 1150 1500
Text Notes 2700 1100 2    50   ~ 0
7.2V input\n
Text Notes 4500 1150 2    50   ~ 0
5V input
$Comp
L Device:CP1 C29
U 1 1 618583B4
P 8850 950
F 0 "C29" H 8965 996 50  0000 L CNN
F 1 "0.1u" H 8965 905 50  0000 L CNN
F 2 "" H 8850 950 50  0001 C CNN
F 3 "~" H 8850 950 50  0001 C CNN
	1    8850 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR030
U 1 1 61859DD2
P 10500 750
F 0 "#PWR030" H 10500 500 50  0001 C CNN
F 1 "GND1" H 10505 577 50  0000 C CNN
F 2 "" H 10500 750 50  0001 C CNN
F 3 "" H 10500 750 50  0001 C CNN
	1    10500 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR028
U 1 1 6185A4B9
P 9800 3500
F 0 "#PWR028" H 9800 3250 50  0001 C CNN
F 1 "GND1" H 9805 3327 50  0000 C CNN
F 2 "" H 9800 3500 50  0001 C CNN
F 3 "" H 9800 3500 50  0001 C CNN
	1    9800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C27
U 1 1 6185C074
P 8550 2800
F 0 "C27" H 8665 2846 50  0000 L CNN
F 1 "0.1u" H 8665 2755 50  0000 L CNN
F 2 "" H 8550 2800 50  0001 C CNN
F 3 "~" H 8550 2800 50  0001 C CNN
	1    8550 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C33
U 1 1 6185CDD1
P 10950 2750
F 0 "C33" H 11065 2796 50  0000 L CNN
F 1 "1u" H 11065 2705 50  0000 L CNN
F 2 "" H 10950 2750 50  0001 C CNN
F 3 "~" H 10950 2750 50  0001 C CNN
	1    10950 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C30
U 1 1 6185DF37
P 10150 900
F 0 "C30" H 10265 946 50  0000 L CNN
F 1 "1u" H 10265 855 50  0000 L CNN
F 2 "" H 10150 900 50  0001 C CNN
F 3 "~" H 10150 900 50  0001 C CNN
	1    10150 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:RTRIM R29
U 1 1 61860129
P 9800 900
F 0 "R29" H 9927 946 50  0000 L CNN
F 1 "1K" H 9927 855 50  0000 L CNN
F 2 "" V 9730 900 50  0001 C CNN
F 3 "~" H 9800 900 50  0001 C CNN
	1    9800 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R30
U 1 1 6186012F
P 9800 1200
F 0 "R30" H 9870 1246 50  0000 L CNN
F 1 "120R" H 9870 1155 50  0000 L CNN
F 2 "" V 9730 1200 50  0001 C CNN
F 3 "~" H 9800 1200 50  0001 C CNN
	1    9800 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1100 9400 1050
Wire Wire Line
	9400 1050 9800 1050
Connection ~ 9800 1050
Wire Wire Line
	10500 750  10150 750 
Wire Wire Line
	8850 750  8850 800 
Connection ~ 9800 750 
Wire Wire Line
	9800 750  8850 750 
Connection ~ 10150 750 
Wire Wire Line
	10150 750  9800 750 
Wire Wire Line
	9100 1400 8950 1400
Wire Wire Line
	8850 1400 8850 1100
Wire Wire Line
	9700 1400 9800 1400
Wire Wire Line
	9800 1400 9800 1350
Wire Wire Line
	10500 1400 10150 1400
Connection ~ 9800 1400
Wire Wire Line
	10500 1350 10500 1400
$Comp
L Diode:1N4002 D6
U 1 1 6186D2A6
P 9400 1850
F 0 "D6" H 9400 2067 50  0000 C CNN
F 1 "1N4002" H 9400 1976 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9400 1675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9400 1850 50  0001 C CNN
	1    9400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 1850 9550 1850
Wire Wire Line
	9250 1850 8950 1850
Wire Wire Line
	9800 1400 9800 1850
Wire Wire Line
	8950 1850 8950 1400
Connection ~ 8950 1400
Wire Wire Line
	8950 1400 8850 1400
$Comp
L Diode:1N4002 D5
U 1 1 61874511
P 9350 2200
F 0 "D5" H 9350 2417 50  0000 C CNN
F 1 "1N4002" H 9350 2326 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9350 2025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9350 2200 50  0001 C CNN
	1    9350 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2200 9500 2200
Wire Wire Line
	9200 2200 8900 2200
Wire Wire Line
	9750 2200 9750 2600
Wire Wire Line
	9750 2600 9650 2600
Wire Wire Line
	9050 2600 8900 2600
Wire Wire Line
	8900 2600 8900 2200
Connection ~ 9750 2600
Wire Wire Line
	9750 2600 10500 2600
$Comp
L Diode:1N4002 D8
U 1 1 6187D3A0
P 10500 2750
F 0 "D8" H 10500 2967 50  0000 C CNN
F 1 "1N4002" H 10500 2876 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 10500 2575 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10500 2750 50  0001 C CNN
	1    10500 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	10500 3150 10500 3050
$Comp
L Device:C C31
U 1 1 6187E993
P 10500 3300
F 0 "C31" H 10615 3346 50  0000 L CNN
F 1 "1u" H 10615 3255 50  0000 L CNN
F 2 "" H 10538 3150 50  0001 C CNN
F 3 "~" H 10500 3300 50  0001 C CNN
	1    10500 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:RTRIM R25
U 1 1 6187F484
P 9350 3350
F 0 "R25" H 9477 3396 50  0000 L CNN
F 1 "2K" H 9477 3305 50  0000 L CNN
F 2 "" V 9280 3350 50  0001 C CNN
F 3 "~" H 9350 3350 50  0001 C CNN
	1    9350 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 61880674
P 9650 2750
F 0 "R27" H 9720 2796 50  0000 L CNN
F 1 "240R" H 9720 2705 50  0000 L CNN
F 2 "" V 9580 2750 50  0001 C CNN
F 3 "~" H 9650 2750 50  0001 C CNN
	1    9650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2900 9350 3050
Wire Wire Line
	9650 2900 9650 3050
Wire Wire Line
	9650 3050 9350 3050
Connection ~ 9350 3050
Wire Wire Line
	9350 3050 9350 3200
Wire Wire Line
	9650 3050 10500 3050
Connection ~ 9650 3050
Connection ~ 10500 3050
Wire Wire Line
	10500 3050 10500 2900
Wire Wire Line
	10950 2900 10950 3500
Wire Wire Line
	10950 3500 10500 3500
Wire Wire Line
	10500 3450 10500 3500
Connection ~ 10500 3500
Wire Wire Line
	10500 3500 9800 3500
Wire Wire Line
	8550 2950 8550 3500
Wire Wire Line
	8550 3500 9350 3500
Connection ~ 9350 3500
Wire Wire Line
	8550 2650 8550 2600
Wire Wire Line
	8550 2600 8900 2600
Connection ~ 8900 2600
Connection ~ 9800 3500
Wire Wire Line
	9800 3500 9350 3500
Text Label 10950 2600 1    50   ~ 0
+8V
Text Label 10500 1350 1    50   ~ 0
-8V
$Comp
L power:VCC #PWR017
U 1 1 6189CC8C
P 5900 1200
F 0 "#PWR017" H 5900 1050 50  0001 C CNN
F 1 "VCC" H 5915 1373 50  0000 C CNN
F 2 "" H 5900 1200 50  0001 C CNN
F 3 "" H 5900 1200 50  0001 C CNN
	1    5900 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1200 6050 1200
Wire Wire Line
	6200 1400 6050 1400
Wire Wire Line
	6050 1400 6050 1200
Connection ~ 6050 1200
Wire Wire Line
	6050 1200 5900 1200
$Comp
L power:GND #PWR021
U 1 1 618A0460
P 6500 1600
F 0 "#PWR021" H 6500 1350 50  0001 C CNN
F 1 "GND" H 6505 1427 50  0000 C CNN
F 2 "" H 6500 1600 50  0001 C CNN
F 3 "" H 6500 1600 50  0001 C CNN
	1    6500 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 618A247E
P 6500 850
F 0 "L1" V 6690 850 50  0000 C CNN
F 1 "22uH" V 6599 850 50  0000 C CNN
F 2 "" H 6500 850 50  0001 C CNN
F 3 "~" H 6500 850 50  0001 C CNN
	1    6500 850 
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 618A4397
P 7200 850
F 0 "D2" H 7200 633 50  0000 C CNN
F 1 "D_Schottky" H 7200 724 50  0000 C CNN
F 2 "" H 7200 850 50  0001 C CNN
F 3 "~" H 7200 850 50  0001 C CNN
	1    7200 850 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R24
U 1 1 618A510C
P 7550 1550
F 0 "R24" H 7620 1596 50  0000 L CNN
F 1 "2.2k" H 7620 1505 50  0000 L CNN
F 2 "" V 7480 1550 50  0001 C CNN
F 3 "~" H 7550 1550 50  0001 C CNN
	1    7550 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C26
U 1 1 618A6C38
P 8050 1200
F 0 "C26" H 8165 1246 50  0000 L CNN
F 1 "22u" H 8165 1155 50  0000 L CNN
F 2 "" H 8088 1050 50  0001 C CNN
F 3 "~" H 8050 1200 50  0001 C CNN
	1    8050 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 618A8469
P 7550 1700
F 0 "#PWR024" H 7550 1450 50  0001 C CNN
F 1 "GND" H 7555 1527 50  0000 C CNN
F 2 "" H 7550 1700 50  0001 C CNN
F 3 "" H 7550 1700 50  0001 C CNN
	1    7550 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV1
U 1 1 618AA55A
P 7550 1250
F 0 "RV1" H 7480 1204 50  0000 R CNN
F 1 "100k" H 7480 1295 50  0000 R CNN
F 2 "" H 7550 1250 50  0001 C CNN
F 3 "~" H 7550 1250 50  0001 C CNN
	1    7550 1250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6800 1200 6800 850 
Wire Wire Line
	6800 850  6650 850 
Wire Wire Line
	7050 850  6800 850 
Connection ~ 6800 850 
Wire Wire Line
	6350 850  6050 850 
Wire Wire Line
	6050 850  6050 1200
Wire Wire Line
	8050 1050 8050 850 
Wire Wire Line
	8050 850  7550 850 
Wire Wire Line
	7550 1100 7550 850 
Connection ~ 7550 850 
Wire Wire Line
	7550 850  7350 850 
Wire Wire Line
	7550 1400 6800 1400
Connection ~ 7550 1400
Wire Wire Line
	8050 1350 8050 1700
Wire Wire Line
	8050 1700 7550 1700
Connection ~ 7550 1700
Text Label 1450 1200 1    50   ~ 0
+8V
Text Label 1550 1300 1    50   ~ 0
-8V
Wire Wire Line
	1750 1100 1150 1100
Text GLabel 1350 1600 2    50   Input ~ 0
SIG
Text GLabel 1350 1700 2    50   Input ~ 0
Tx
Text GLabel 1350 1900 2    50   Input ~ 0
Rx
Wire Wire Line
	1350 1600 1150 1600
Wire Wire Line
	1150 1700 1350 1700
Wire Wire Line
	1350 1800 1150 1800
Wire Wire Line
	1150 1900 1350 1900
$Comp
L Connector:Conn_01x10_Male J1
U 1 1 618C91E8
P 950 1400
F 0 "J1" H 1058 1981 50  0000 C CNN
F 1 "Conn_01x10_Male" H 1058 1890 50  0000 C CNN
F 2 "" H 950 1400 50  0001 C CNN
F 3 "~" H 950 1400 50  0001 C CNN
	1    950  1400
	1    0    0    -1  
$EndComp
Text Label 8050 850  0    50   ~ 0
16V
$Comp
L Device:R R13
U 1 1 618D6C58
P 5750 2550
F 0 "R13" H 5820 2596 50  0000 L CNN
F 1 "12k" H 5820 2505 50  0000 L CNN
F 2 "" V 5680 2550 50  0001 C CNN
F 3 "~" H 5750 2550 50  0001 C CNN
	1    5750 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 618D8F00
P 5750 2850
F 0 "R14" H 5820 2896 50  0000 L CNN
F 1 "12k" H 5820 2805 50  0000 L CNN
F 2 "" V 5680 2850 50  0001 C CNN
F 3 "~" H 5750 2850 50  0001 C CNN
	1    5750 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 618DB1CC
P 5750 3000
F 0 "#PWR016" H 5750 2750 50  0001 C CNN
F 1 "GND" H 5755 2827 50  0000 C CNN
F 2 "" H 5750 3000 50  0001 C CNN
F 3 "" H 5750 3000 50  0001 C CNN
	1    5750 3000
	1    0    0    -1  
$EndComp
Text Label 5750 2400 1    50   ~ 0
16V
Wire Wire Line
	6550 2450 6500 2450
Wire Wire Line
	6500 2450 6500 2550
Wire Wire Line
	6500 2550 6550 2550
Wire Wire Line
	6550 2750 6200 2750
Wire Wire Line
	6200 2750 6200 2400
Wire Wire Line
	6200 2400 5750 2400
$Comp
L power:GND #PWR026
U 1 1 618E47F9
P 7950 2750
F 0 "#PWR026" H 7950 2500 50  0001 C CNN
F 1 "GND" H 7955 2577 50  0000 C CNN
F 2 "" H 7950 2750 50  0001 C CNN
F 3 "" H 7950 2750 50  0001 C CNN
	1    7950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2750 7950 2750
$Comp
L power:GND1 #PWR020
U 1 1 618EF754
P 6350 2450
F 0 "#PWR020" H 6350 2200 50  0001 C CNN
F 1 "GND1" H 6355 2277 50  0000 C CNN
F 2 "" H 6350 2450 50  0001 C CNN
F 3 "" H 6350 2450 50  0001 C CNN
	1    6350 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2450 6500 2450
Connection ~ 6500 2450
Wire Wire Line
	5750 2700 6550 2700
Wire Wire Line
	6550 2700 6550 2650
Connection ~ 5750 2700
Text Label 7950 2750 1    50   ~ 0
-8V_unreg
Text Label 6200 2400 1    50   ~ 0
+8V_unreg
Text Label 8850 750  2    50   ~ 0
-8V_unreg
Text Label 8550 2600 2    50   ~ 0
+8V_unreg
Connection ~ 9650 2600
Connection ~ 10500 2600
Wire Wire Line
	10500 2600 10950 2600
$Comp
L SamacSys_Parts:LTC1064-2CN#PBF IC2
U 1 1 61826397
P 2600 3050
F 0 "IC2" H 3250 3315 50  0000 C CNN
F 1 "LTC1064-2CN#PBF" H 3250 3224 50  0000 C CNN
F 2 "DIP794W53P254L1956H394Q14N" H 3750 3150 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/LTC1064-2CN#PBF.pdf" H 3750 3050 50  0001 L CNN
F 4 "LTC1064-2CN#PBF, Active Filter, Low Pass Filter, 8th Order 140kHz, 14-Pin PDIP N" H 3750 2950 50  0001 L CNN "Description"
F 5 "3.937" H 3750 2850 50  0001 L CNN "Height"
F 6 "584-LTC1064-2CN#PBF" H 3750 2750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=584-LTC1064-2CN%23PBF" H 3750 2650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Linear Technology" H 3750 2550 50  0001 L CNN "Manufacturer_Name"
F 9 "LTC1064-2CN#PBF" H 3750 2450 50  0001 L CNN "Manufacturer_Part_Number"
	1    2600 3050
	1    0    0    -1  
$EndComp
Wire Notes Line
	11150 3700 11150 550 
Wire Notes Line
	11150 550  5550 550 
Wire Notes Line
	5550 550  5550 3700
Wire Notes Line
	5550 3700 11150 3700
Text Notes 10250 3850 2    50   ~ 0
Active rail splitter circuit. Receives 7.2V from Li-Ion battery (x2) and steps up to 16V, splits to +-8V and regulates it.
Wire Notes Line
	4500 2250 4500 600 
Wire Notes Line
	4500 600  2150 600 
Wire Notes Line
	2150 600  2150 2250
Wire Notes Line
	2150 2250 4500 2250
Text Notes 4350 2350 2    50   ~ 0
Regulates 7.2V to 5V 0.8A output for RPi powering\n
$Comp
L power:GND1 #PWR08
U 1 1 6196A130
P 2450 3700
F 0 "#PWR08" H 2450 3450 50  0001 C CNN
F 1 "GND1" H 2455 3527 50  0000 C CNN
F 2 "" H 2450 3700 50  0001 C CNN
F 3 "" H 2450 3700 50  0001 C CNN
	1    2450 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 6196D823
P 2000 3500
F 0 "C7" H 2115 3546 50  0000 L CNN
F 1 "0.1u" H 2115 3455 50  0000 L CNN
F 2 "" H 2038 3350 50  0001 C CNN
F 3 "~" H 2000 3500 50  0001 C CNN
	1    2000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 619705A1
P 4200 3750
F 0 "C13" H 4315 3796 50  0000 L CNN
F 1 "0.1u" H 4315 3705 50  0000 L CNN
F 2 "" H 4238 3600 50  0001 C CNN
F 3 "~" H 4200 3750 50  0001 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3050 2450 3050
Wire Wire Line
	2450 3050 2450 3250
Wire Wire Line
	2600 3250 2450 3250
Connection ~ 2450 3250
Wire Wire Line
	2450 3250 2450 3450
Wire Wire Line
	2600 3450 2450 3450
Connection ~ 2450 3450
Wire Wire Line
	2450 3450 2450 3700
Wire Wire Line
	2600 3650 2600 3800
Wire Wire Line
	2600 3800 4050 3800
Wire Wire Line
	4050 3800 4050 3050
Wire Wire Line
	4050 3050 3900 3050
Wire Wire Line
	1800 3350 2000 3350
Connection ~ 2000 3350
Wire Wire Line
	2000 3350 2600 3350
Wire Wire Line
	3900 3250 4200 3250
Wire Wire Line
	4200 3250 4200 3600
Connection ~ 4200 3250
Wire Wire Line
	4200 3250 4650 3250
Wire Wire Line
	3900 3550 4650 3550
Wire Wire Line
	3900 3150 4000 3150
Wire Wire Line
	4000 3150 4000 3650
Wire Wire Line
	3900 3650 4000 3650
Connection ~ 4000 3650
Wire Wire Line
	4000 3650 4000 3900
$Comp
L power:GND1 #PWR06
U 1 1 619A8355
P 2000 3650
F 0 "#PWR06" H 2000 3400 50  0001 C CNN
F 1 "GND1" H 2005 3477 50  0000 C CNN
F 2 "" H 2000 3650 50  0001 C CNN
F 3 "" H 2000 3650 50  0001 C CNN
	1    2000 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR012
U 1 1 619AC6B7
P 4000 3900
F 0 "#PWR012" H 4000 3650 50  0001 C CNN
F 1 "GND1" H 4005 3727 50  0000 C CNN
F 2 "" H 4000 3900 50  0001 C CNN
F 3 "" H 4000 3900 50  0001 C CNN
	1    4000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR013
U 1 1 619B09E4
P 4200 3900
F 0 "#PWR013" H 4200 3650 50  0001 C CNN
F 1 "GND1" H 4205 3727 50  0000 C CNN
F 2 "" H 4200 3900 50  0001 C CNN
F 3 "" H 4200 3900 50  0001 C CNN
	1    4200 3900
	1    0    0    -1  
$EndComp
Text Label 1800 3350 2    50   ~ 0
+8V
Text Label 4650 3250 0    50   ~ 0
-8V
Wire Wire Line
	3900 3350 4650 3350
Wire Wire Line
	3900 3450 4650 3450
Text Label 4650 3350 0    50   ~ 0
clk
Text Label 4650 3450 0    50   ~ 0
+8V
Text Label 4650 3550 0    50   ~ 0
buff_in
$Comp
L Device:R R18
U 1 1 619C20CF
P 6400 3300
F 0 "R18" V 6193 3300 50  0000 C CNN
F 1 "10k" V 6284 3300 50  0000 C CNN
F 2 "" V 6330 3300 50  0001 C CNN
F 3 "~" H 6400 3300 50  0001 C CNN
	1    6400 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 619C20D5
P 6100 3300
F 0 "R16" V 5893 3300 50  0000 C CNN
F 1 "10k" V 5984 3300 50  0000 C CNN
F 2 "" V 6030 3300 50  0001 C CNN
F 3 "~" H 6100 3300 50  0001 C CNN
	1    6100 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C22
U 1 1 619D36E6
P 6250 3450
F 0 "C22" H 6365 3496 50  0000 L CNN
F 1 "220pF" H 6365 3405 50  0000 L CNN
F 2 "" H 6288 3300 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR019
U 1 1 619D36EC
P 6250 3600
F 0 "#PWR019" H 6250 3350 50  0001 C CNN
F 1 "GND1" H 6255 3427 50  0000 C CNN
F 2 "" H 6250 3600 50  0001 C CNN
F 3 "" H 6250 3600 50  0001 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
Text Label 5950 3300 2    50   ~ 0
buff_in
Connection ~ 6250 3300
Wire Wire Line
	6550 3300 6550 3150
Wire Wire Line
	6550 3150 6250 3150
Wire Wire Line
	6250 3150 6250 2950
Wire Wire Line
	6250 2950 6550 2950
$Comp
L Device:R R20
U 1 1 619E1C94
P 6950 3300
F 0 "R20" V 6743 3300 50  0000 C CNN
F 1 "20k" V 6834 3300 50  0000 C CNN
F 2 "" V 6880 3300 50  0001 C CNN
F 3 "~" H 6950 3300 50  0001 C CNN
	1    6950 3300
	0    1    1    0   
$EndComp
$Comp
L Device:C C24
U 1 1 619E6B7F
P 6950 3600
F 0 "C24" V 6698 3600 50  0000 C CNN
F 1 "100pF" V 6789 3600 50  0000 C CNN
F 2 "" H 6988 3450 50  0001 C CNN
F 3 "~" H 6950 3600 50  0001 C CNN
	1    6950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 3300 6750 3300
Connection ~ 6550 3300
Wire Wire Line
	6750 3300 6750 3600
Wire Wire Line
	6750 3600 6800 3600
Connection ~ 6750 3300
Wire Wire Line
	6750 3300 6800 3300
Wire Wire Line
	7100 3300 7550 3300
Text Label 7550 3300 0    50   ~ 0
Tx_in
Wire Wire Line
	7100 3600 7150 3600
Wire Wire Line
	7150 3200 6650 3200
Wire Wire Line
	6650 3200 6650 3100
Wire Wire Line
	6650 3100 6550 3100
Wire Wire Line
	6550 3100 6550 3050
$Comp
L Device:C C25
U 1 1 61A170A1
P 7550 3500
F 0 "C25" H 7665 3546 50  0000 L CNN
F 1 "0.027uF" H 7665 3455 50  0000 L CNN
F 2 "" H 7588 3350 50  0001 C CNN
F 3 "~" H 7550 3500 50  0001 C CNN
	1    7550 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR025
U 1 1 61A1C899
P 7550 3650
F 0 "#PWR025" H 7550 3400 50  0001 C CNN
F 1 "GND1" H 7555 3477 50  0000 C CNN
F 2 "" H 7550 3650 50  0001 C CNN
F 3 "" H 7550 3650 50  0001 C CNN
	1    7550 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3300 7550 3350
Wire Wire Line
	7150 3200 7150 3350
$Comp
L Device:R R23
U 1 1 61A385FC
P 7350 3350
F 0 "R23" V 7143 3350 50  0000 C CNN
F 1 "50R" V 7234 3350 50  0000 C CNN
F 2 "" V 7280 3350 50  0001 C CNN
F 3 "~" H 7350 3350 50  0001 C CNN
	1    7350 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 3350 7550 3350
Connection ~ 7550 3350
Wire Wire Line
	7200 3350 7150 3350
Connection ~ 7150 3350
Wire Wire Line
	7150 3350 7150 3600
$Comp
L power:GND1 #PWR018
U 1 1 61A49869
P 6100 2850
F 0 "#PWR018" H 6100 2600 50  0001 C CNN
F 1 "GND1" H 6105 2677 50  0000 C CNN
F 2 "" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    6100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2850 6100 2850
$Comp
L SamacSys_Parts:LT1214CN#PBF IC1
U 1 1 61A55B96
P 2150 4750
F 0 "IC1" H 2750 5015 50  0000 C CNN
F 1 "LT1214CN#PBF" H 2750 4924 50  0000 C CNN
F 2 "DIP794W53P254L1956H394Q14N" H 3200 4850 50  0001 L CNN
F 3 "http://cds.linear.com/docs/en/datasheet/12134fa.pdf" H 3200 4750 50  0001 L CNN
F 4 "LT1214CN#PBF, Operational Amplifier 26MHz 3 to 28V, 14-Pin PDIP" H 3200 4650 50  0001 L CNN "Description"
F 5 "3.937" H 3200 4550 50  0001 L CNN "Height"
F 6 "584-LT1214CN#PBF" H 3200 4450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Analog-Devices-Linear-Technology/LT1214CNPBF?qs=ytflclh7QUV8Rx5dVb2%2FFw%3D%3D" H 3200 4350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Linear Technology" H 3200 4250 50  0001 L CNN "Manufacturer_Name"
F 9 "LT1214CN#PBF" H 3200 4150 50  0001 L CNN "Manufacturer_Part_Number"
	1    2150 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61A574B8
P 1400 4850
F 0 "R1" V 1193 4850 50  0000 C CNN
F 1 "1k" V 1284 4850 50  0000 C CNN
F 2 "" V 1330 4850 50  0001 C CNN
F 3 "~" H 1400 4850 50  0001 C CNN
	1    1400 4850
	0    1    1    0   
$EndComp
Text Label 1250 4850 2    50   ~ 0
Tx_in
Wire Wire Line
	2150 4850 1700 4850
$Comp
L Device:RTRIM R3
U 1 1 61A64E9B
P 1700 4700
F 0 "R3" H 1827 4746 50  0000 L CNN
F 1 "10k" H 1827 4655 50  0000 L CNN
F 2 "" V 1630 4700 50  0001 C CNN
F 3 "~" H 1700 4700 50  0001 C CNN
	1    1700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4550 2150 4550
Wire Wire Line
	2150 4550 2150 4750
$Comp
L power:GND1 #PWR01
U 1 1 61A774A3
P 1350 4950
F 0 "#PWR01" H 1350 4700 50  0001 C CNN
F 1 "GND1" H 1355 4777 50  0000 C CNN
F 2 "" H 1350 4950 50  0001 C CNN
F 3 "" H 1350 4950 50  0001 C CNN
	1    1350 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4950 1900 4950
Text Label 2150 5050 2    50   ~ 0
+8V
Text Label 3350 5050 0    50   ~ 0
-8V
$Comp
L Device:C C1
U 1 1 6182F546
P 1300 5400
F 0 "C1" H 1415 5446 50  0000 L CNN
F 1 "100p" H 1415 5355 50  0000 L CNN
F 2 "" H 1338 5250 50  0001 C CNN
F 3 "~" H 1300 5400 50  0001 C CNN
	1    1300 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6183BA11
P 1600 5400
F 0 "C4" H 1715 5446 50  0000 L CNN
F 1 "330p" H 1715 5355 50  0000 L CNN
F 2 "" H 1638 5250 50  0001 C CNN
F 3 "~" H 1600 5400 50  0001 C CNN
	1    1600 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 618424F2
P 1800 5250
F 0 "R4" V 1593 5250 50  0000 C CNN
F 1 "12k" V 1684 5250 50  0000 C CNN
F 2 "" V 1730 5250 50  0001 C CNN
F 3 "~" H 1800 5250 50  0001 C CNN
	1    1800 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 4550 1000 4550
Wire Wire Line
	1000 4550 1000 5550
Wire Wire Line
	1000 5550 1300 5550
Connection ~ 1700 4550
Connection ~ 1300 5550
Wire Wire Line
	1300 5550 1600 5550
Wire Wire Line
	1300 5250 1600 5250
Connection ~ 1600 5250
Wire Wire Line
	1600 5250 1650 5250
Wire Wire Line
	1950 5250 2000 5250
$Comp
L Device:C C3
U 1 1 6185E693
P 1450 6000
F 0 "C3" H 1565 6046 50  0000 L CNN
F 1 "220p" H 1565 5955 50  0000 L CNN
F 2 "" H 1488 5850 50  0001 C CNN
F 3 "~" H 1450 6000 50  0001 C CNN
	1    1450 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 6185E699
P 1450 5700
F 0 "C2" H 1565 5746 50  0000 L CNN
F 1 "47p" H 1565 5655 50  0000 L CNN
F 2 "" H 1488 5550 50  0001 C CNN
F 3 "~" H 1450 5700 50  0001 C CNN
	1    1450 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 6300 1600 6000
Connection ~ 1600 6000
Wire Wire Line
	1600 6000 1600 5700
$Comp
L Device:R R2
U 1 1 61865AFA
P 1450 6300
F 0 "R2" V 1243 6300 50  0000 C CNN
F 1 "12k" V 1334 6300 50  0000 C CNN
F 2 "" V 1380 6300 50  0001 C CNN
F 3 "~" H 1450 6300 50  0001 C CNN
	1    1450 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 5700 1300 6000
Connection ~ 1300 6000
Wire Wire Line
	1300 6000 1300 6300
Wire Wire Line
	2000 5250 2000 5600
Wire Wire Line
	2000 5600 1200 5600
Wire Wire Line
	1200 5600 1200 6000
Wire Wire Line
	1200 6000 1300 6000
Connection ~ 2000 5250
Wire Wire Line
	2000 5250 2150 5250
Wire Wire Line
	2150 6000 2150 5350
Wire Wire Line
	1600 6000 2150 6000
$Comp
L Device:C C6
U 1 1 618AC990
P 2400 6150
F 0 "C6" H 2515 6196 50  0000 L CNN
F 1 "68p" H 2515 6105 50  0000 L CNN
F 2 "" H 2438 6000 50  0001 C CNN
F 3 "~" H 2400 6150 50  0001 C CNN
	1    2400 6150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 618AC996
P 2400 5850
F 0 "C5" H 2515 5896 50  0000 L CNN
F 1 "330p" H 2515 5805 50  0000 L CNN
F 2 "" H 2438 5700 50  0001 C CNN
F 3 "~" H 2400 5850 50  0001 C CNN
	1    2400 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 6150 2550 6000
Wire Wire Line
	2250 5850 2250 6000
$Comp
L Device:R R5
U 1 1 618CE5E9
P 2700 6000
F 0 "R5" V 2493 6000 50  0000 C CNN
F 1 "12k" V 2584 6000 50  0000 C CNN
F 2 "" V 2630 6000 50  0001 C CNN
F 3 "~" H 2700 6000 50  0001 C CNN
	1    2700 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 6000 2250 6000
Connection ~ 2150 6000
Connection ~ 2250 6000
Wire Wire Line
	2250 6000 2250 6150
$Comp
L Device:C C10
U 1 1 618DFE92
P 3100 6000
F 0 "C10" H 3215 6046 50  0000 L CNN
F 1 "3.3p" H 3215 5955 50  0000 L CNN
F 2 "" H 3138 5850 50  0001 C CNN
F 3 "~" H 3100 6000 50  0001 C CNN
	1    3100 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C9
U 1 1 618DFE98
P 3100 5700
F 0 "C9" H 3215 5746 50  0000 L CNN
F 1 "22p" H 3215 5655 50  0000 L CNN
F 2 "" H 3138 5550 50  0001 C CNN
F 3 "~" H 3100 5700 50  0001 C CNN
	1    3100 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 6300 3250 6000
Connection ~ 3250 6000
Wire Wire Line
	3250 6000 3250 5700
$Comp
L Device:R R6
U 1 1 618DFEA1
P 3100 6300
F 0 "R6" V 2893 6300 50  0000 C CNN
F 1 "120k" V 2984 6300 50  0000 C CNN
F 2 "" V 3030 6300 50  0001 C CNN
F 3 "~" H 3100 6300 50  0001 C CNN
	1    3100 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 6000 3350 6000
Wire Wire Line
	2950 6000 2950 5700
Wire Wire Line
	2950 6000 2950 6300
Connection ~ 2950 6000
Wire Wire Line
	2850 6000 2950 6000
Wire Wire Line
	3350 5250 3400 5250
Wire Wire Line
	3400 5250 3400 5550
Wire Wire Line
	3400 5550 2850 5550
Wire Wire Line
	2850 5550 2850 6000
Connection ~ 2850 6000
Wire Wire Line
	3350 5350 3350 6000
Connection ~ 3350 6000
Wire Wire Line
	3350 6000 3800 6000
$Comp
L power:GND1 #PWR010
U 1 1 61922CD2
P 3550 5150
F 0 "#PWR010" H 3550 4900 50  0001 C CNN
F 1 "GND1" H 3555 4977 50  0000 C CNN
F 2 "" H 3550 5150 50  0001 C CNN
F 3 "" H 3550 5150 50  0001 C CNN
	1    3550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 5150 3550 5150
Wire Wire Line
	2150 5150 1900 5150
Wire Wire Line
	1900 5150 1900 4950
Connection ~ 1900 4950
Wire Wire Line
	1900 4950 1350 4950
Text GLabel 3800 6000 2    50   Input ~ 0
Tx
$Comp
L SamacSys_Parts:LT1214CN#PBF IC3
U 1 1 6195A9EA
P 5250 4750
F 0 "IC3" H 5850 5015 50  0000 C CNN
F 1 "LT1214CN#PBF" H 5850 4924 50  0000 C CNN
F 2 "DIP794W53P254L1956H394Q14N" H 6300 4850 50  0001 L CNN
F 3 "http://cds.linear.com/docs/en/datasheet/12134fa.pdf" H 6300 4750 50  0001 L CNN
F 4 "LT1214CN#PBF, Operational Amplifier 26MHz 3 to 28V, 14-Pin PDIP" H 6300 4650 50  0001 L CNN "Description"
F 5 "3.937" H 6300 4550 50  0001 L CNN "Height"
F 6 "584-LT1214CN#PBF" H 6300 4450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Analog-Devices-Linear-Technology/LT1214CNPBF?qs=ytflclh7QUV8Rx5dVb2%2FFw%3D%3D" H 6300 4350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Linear Technology" H 6300 4250 50  0001 L CNN "Manufacturer_Name"
F 9 "LT1214CN#PBF" H 6300 4150 50  0001 L CNN "Manufacturer_Part_Number"
	1    5250 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 6195A9F0
P 4500 4850
F 0 "R9" V 4293 4850 50  0000 C CNN
F 1 "1k" V 4384 4850 50  0000 C CNN
F 2 "" V 4430 4850 50  0001 C CNN
F 3 "~" H 4500 4850 50  0001 C CNN
	1    4500 4850
	0    1    1    0   
$EndComp
Text Label 4350 4850 2    50   ~ 0
Rx_in
Wire Wire Line
	5250 4850 4650 4850
$Comp
L Device:RTRIM R11
U 1 1 6195A9F8
P 4800 4700
F 0 "R11" H 4927 4746 50  0000 L CNN
F 1 "10k" H 4927 4655 50  0000 L CNN
F 2 "" V 4730 4700 50  0001 C CNN
F 3 "~" H 4800 4700 50  0001 C CNN
	1    4800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4550 5250 4550
Wire Wire Line
	5250 4550 5250 4750
$Comp
L power:GND1 #PWR015
U 1 1 6195AA00
P 4450 4950
F 0 "#PWR015" H 4450 4700 50  0001 C CNN
F 1 "GND1" H 4455 4777 50  0000 C CNN
F 2 "" H 4450 4950 50  0001 C CNN
F 3 "" H 4450 4950 50  0001 C CNN
	1    4450 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4950 5000 4950
Text Label 5250 5050 2    50   ~ 0
+8V
Text Label 6450 5050 0    50   ~ 0
-8V
$Comp
L Device:C C14
U 1 1 6195AA09
P 4400 5400
F 0 "C14" H 4515 5446 50  0000 L CNN
F 1 "150p" H 4515 5355 50  0000 L CNN
F 2 "" H 4438 5250 50  0001 C CNN
F 3 "~" H 4400 5400 50  0001 C CNN
	1    4400 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 6195AA0F
P 4700 5400
F 0 "C17" H 4815 5446 50  0000 L CNN
F 1 "15n" H 4815 5355 50  0000 L CNN
F 2 "" H 4738 5250 50  0001 C CNN
F 3 "~" H 4700 5400 50  0001 C CNN
	1    4700 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 6195AA15
P 4900 5250
F 0 "R12" V 4693 5250 50  0000 C CNN
F 1 "12k" V 4784 5250 50  0000 C CNN
F 2 "" V 4830 5250 50  0001 C CNN
F 3 "~" H 4900 5250 50  0001 C CNN
	1    4900 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 4550 4100 4550
Wire Wire Line
	4100 4550 4100 5550
Wire Wire Line
	4100 5550 4400 5550
Connection ~ 4800 4550
Connection ~ 4400 5550
Wire Wire Line
	4400 5550 4700 5550
Wire Wire Line
	4400 5250 4700 5250
Connection ~ 4700 5250
Wire Wire Line
	4700 5250 4750 5250
Wire Wire Line
	5050 5250 5100 5250
$Comp
L Device:C C16
U 1 1 6195AA25
P 4550 6000
F 0 "C16" H 4665 6046 50  0000 L CNN
F 1 "10p" H 4665 5955 50  0000 L CNN
F 2 "" H 4588 5850 50  0001 C CNN
F 3 "~" H 4550 6000 50  0001 C CNN
	1    4550 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C15
U 1 1 6195AA2B
P 4550 5700
F 0 "C15" H 4665 5746 50  0000 L CNN
F 1 "100p" H 4665 5655 50  0000 L CNN
F 2 "" H 4588 5550 50  0001 C CNN
F 3 "~" H 4550 5700 50  0001 C CNN
	1    4550 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 6300 4700 6000
Connection ~ 4700 6000
Wire Wire Line
	4700 6000 4700 5700
$Comp
L Device:R R10
U 1 1 6195AA34
P 4550 6300
F 0 "R10" V 4343 6300 50  0000 C CNN
F 1 "12k" V 4434 6300 50  0000 C CNN
F 2 "" V 4480 6300 50  0001 C CNN
F 3 "~" H 4550 6300 50  0001 C CNN
	1    4550 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 5700 4400 6000
Connection ~ 4400 6000
Wire Wire Line
	4400 6000 4400 6300
Wire Wire Line
	5100 5250 5100 5600
Wire Wire Line
	5100 5600 4300 5600
Wire Wire Line
	4300 5600 4300 6000
Wire Wire Line
	4300 6000 4400 6000
Connection ~ 5100 5250
Wire Wire Line
	5100 5250 5250 5250
Wire Wire Line
	5250 6000 5250 5350
Wire Wire Line
	4700 6000 5250 6000
$Comp
L Device:C C19
U 1 1 6195AA45
P 5500 6150
F 0 "C19" H 5615 6196 50  0000 L CNN
F 1 "1n" H 5615 6105 50  0000 L CNN
F 2 "" H 5538 6000 50  0001 C CNN
F 3 "~" H 5500 6150 50  0001 C CNN
	1    5500 6150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C18
U 1 1 6195AA4B
P 5500 5850
F 0 "C18" H 5615 5896 50  0000 L CNN
F 1 "100p" H 5615 5805 50  0000 L CNN
F 2 "" H 5538 5700 50  0001 C CNN
F 3 "~" H 5500 5850 50  0001 C CNN
	1    5500 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 6150 5650 5850
Wire Wire Line
	5350 5850 5350 6000
$Comp
L Device:R R15
U 1 1 6195AA53
P 5800 6000
F 0 "R15" V 5593 6000 50  0000 C CNN
F 1 "12k" V 5684 6000 50  0000 C CNN
F 2 "" V 5730 6000 50  0001 C CNN
F 3 "~" H 5800 6000 50  0001 C CNN
	1    5800 6000
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 6000 5350 6000
Connection ~ 5250 6000
Connection ~ 5350 6000
Wire Wire Line
	5350 6000 5350 6150
$Comp
L Device:C C21
U 1 1 6195AA5D
P 6200 6000
F 0 "C21" H 6315 6046 50  0000 L CNN
F 1 "3.3p" H 6315 5955 50  0000 L CNN
F 2 "" H 6238 5850 50  0001 C CNN
F 3 "~" H 6200 6000 50  0001 C CNN
	1    6200 6000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C20
U 1 1 6195AA63
P 6200 5700
F 0 "C20" H 6315 5746 50  0000 L CNN
F 1 "10p" H 6315 5655 50  0000 L CNN
F 2 "" H 6238 5550 50  0001 C CNN
F 3 "~" H 6200 5700 50  0001 C CNN
	1    6200 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6350 6300 6350 6000
Connection ~ 6350 6000
Wire Wire Line
	6350 6000 6350 5700
$Comp
L Device:R R17
U 1 1 6195AA6C
P 6200 6300
F 0 "R17" V 5993 6300 50  0000 C CNN
F 1 "120k" V 6084 6300 50  0000 C CNN
F 2 "" V 6130 6300 50  0001 C CNN
F 3 "~" H 6200 6300 50  0001 C CNN
	1    6200 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 6000 6450 6000
Wire Wire Line
	6050 6000 6050 5700
Wire Wire Line
	6050 6000 6050 6300
Connection ~ 6050 6000
Wire Wire Line
	5950 6000 6050 6000
Wire Wire Line
	6450 5250 6500 5250
Wire Wire Line
	6500 5250 6500 5550
Wire Wire Line
	6500 5550 5950 5550
Wire Wire Line
	5950 5550 5950 6000
Connection ~ 5950 6000
Wire Wire Line
	6450 5350 6450 6000
$Comp
L power:GND1 #PWR022
U 1 1 6195AA7F
P 6650 5150
F 0 "#PWR022" H 6650 4900 50  0001 C CNN
F 1 "GND1" H 6655 4977 50  0000 C CNN
F 2 "" H 6650 5150 50  0001 C CNN
F 3 "" H 6650 5150 50  0001 C CNN
	1    6650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5150 6650 5150
Wire Wire Line
	5250 5150 5000 5150
Wire Wire Line
	5000 5150 5000 4950
Connection ~ 5000 4950
Wire Wire Line
	5000 4950 4450 4950
$Comp
L Device:R R19
U 1 1 619A6EB6
P 6600 6000
F 0 "R19" V 6393 6000 50  0000 C CNN
F 1 "12k" V 6484 6000 50  0000 C CNN
F 2 "" V 6530 6000 50  0001 C CNN
F 3 "~" H 6600 6000 50  0001 C CNN
	1    6600 6000
	0    1    1    0   
$EndComp
$Comp
L Regulator_Linear:LM317_TO39 U5
U 1 1 619F3FC9
P 9400 5400
F 0 "U5" H 9400 5642 50  0000 C CNN
F 1 "LM317_TO39" H 9400 5551 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 9400 5625 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 9400 5400 50  0001 C CNN
	1    9400 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR029
U 1 1 619F3FCF
P 9850 6300
F 0 "#PWR029" H 9850 6050 50  0001 C CNN
F 1 "GND1" H 9855 6127 50  0000 C CNN
F 2 "" H 9850 6300 50  0001 C CNN
F 3 "" H 9850 6300 50  0001 C CNN
	1    9850 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C28
U 1 1 619F3FD5
P 8600 5600
F 0 "C28" H 8715 5646 50  0000 L CNN
F 1 "0.1u" H 8715 5555 50  0000 L CNN
F 2 "" H 8600 5600 50  0001 C CNN
F 3 "~" H 8600 5600 50  0001 C CNN
	1    8600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C34
U 1 1 619F3FDB
P 11000 5550
F 0 "C34" H 11115 5596 50  0000 L CNN
F 1 "1u" H 11115 5505 50  0000 L CNN
F 2 "" H 11000 5550 50  0001 C CNN
F 3 "~" H 11000 5550 50  0001 C CNN
	1    11000 5550
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4002 D7
U 1 1 619F3FE1
P 9400 5000
F 0 "D7" H 9400 5217 50  0000 C CNN
F 1 "1N4002" H 9400 5126 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9400 4825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9400 5000 50  0001 C CNN
	1    9400 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5000 9550 5000
Wire Wire Line
	9250 5000 8950 5000
Wire Wire Line
	9800 5000 9800 5400
Wire Wire Line
	9800 5400 9700 5400
Wire Wire Line
	9100 5400 8950 5400
Wire Wire Line
	8950 5400 8950 5000
Connection ~ 9800 5400
Wire Wire Line
	9800 5400 10550 5400
$Comp
L Diode:1N4002 D9
U 1 1 619F3FEF
P 10550 5550
F 0 "D9" H 10550 5767 50  0000 C CNN
F 1 "1N4002" H 10550 5676 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 10550 5375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10550 5550 50  0001 C CNN
	1    10550 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	10550 5950 10550 5850
$Comp
L Device:C C32
U 1 1 619F3FF6
P 10550 6100
F 0 "C32" H 10665 6146 50  0000 L CNN
F 1 "1u" H 10665 6055 50  0000 L CNN
F 2 "" H 10588 5950 50  0001 C CNN
F 3 "~" H 10550 6100 50  0001 C CNN
	1    10550 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:RTRIM R26
U 1 1 619F3FFC
P 9400 6150
F 0 "R26" H 9527 6196 50  0000 L CNN
F 1 "400R" H 9527 6105 50  0000 L CNN
F 2 "" V 9330 6150 50  0001 C CNN
F 3 "~" H 9400 6150 50  0001 C CNN
	1    9400 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 619F4002
P 9700 5550
F 0 "R28" H 9770 5596 50  0000 L CNN
F 1 "240R" H 9770 5505 50  0000 L CNN
F 2 "" V 9630 5550 50  0001 C CNN
F 3 "~" H 9700 5550 50  0001 C CNN
	1    9700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 5700 9400 5850
Wire Wire Line
	9700 5700 9700 5850
Wire Wire Line
	9700 5850 9400 5850
Connection ~ 9400 5850
Wire Wire Line
	9400 5850 9400 6000
Wire Wire Line
	9700 5850 10550 5850
Connection ~ 9700 5850
Connection ~ 10550 5850
Wire Wire Line
	10550 5850 10550 5700
Wire Wire Line
	11000 5700 11000 6300
Wire Wire Line
	11000 6300 10550 6300
Wire Wire Line
	10550 6250 10550 6300
Connection ~ 10550 6300
Wire Wire Line
	10550 6300 9850 6300
Wire Wire Line
	8600 5750 8600 6300
Wire Wire Line
	8600 6300 9400 6300
Connection ~ 9400 6300
Wire Wire Line
	8600 5450 8600 5400
Wire Wire Line
	8600 5400 8950 5400
Connection ~ 8950 5400
Connection ~ 9850 6300
Wire Wire Line
	9850 6300 9400 6300
Connection ~ 9700 5400
Connection ~ 10550 5400
Wire Wire Line
	10550 5400 11000 5400
Text Label 8600 5400 2    50   ~ 0
+8V
Text Label 11000 5400 2    50   ~ 0
3.3V
$Comp
L Device:CP1 C23
U 1 1 61A2A694
P 6900 6000
F 0 "C23" H 7015 6046 50  0000 L CNN
F 1 "100n" H 7015 5955 50  0000 L CNN
F 2 "" H 6900 6000 50  0001 C CNN
F 3 "~" H 6900 6000 50  0001 C CNN
	1    6900 6000
	0    1    -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 61A3B8D2
P 7150 5850
F 0 "R21" V 6943 5850 50  0000 C CNN
F 1 "12k" V 7034 5850 50  0000 C CNN
F 2 "" V 7080 5850 50  0001 C CNN
F 3 "~" H 7150 5850 50  0001 C CNN
	1    7150 5850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 61A4C6FA
P 7150 6150
F 0 "R22" V 6943 6150 50  0000 C CNN
F 1 "12k" V 7034 6150 50  0000 C CNN
F 2 "" V 7080 6150 50  0001 C CNN
F 3 "~" H 7150 6150 50  0001 C CNN
	1    7150 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7050 6000 7150 6000
Connection ~ 7150 6000
Wire Wire Line
	7150 6000 7550 6000
$Comp
L Device:D_Schottky D3
U 1 1 61A817DD
P 7550 6150
F 0 "D3" V 7596 6070 50  0000 R CNN
F 1 "D_Schottky" V 7505 6070 50  0000 R CNN
F 2 "" H 7550 6150 50  0001 C CNN
F 3 "~" H 7550 6150 50  0001 C CNN
	1    7550 6150
	0    -1   -1   0   
$EndComp
Connection ~ 7550 6000
Wire Wire Line
	7550 6000 8050 6000
$Comp
L Device:D_Schottky D4
U 1 1 61A84ACC
P 8050 6150
F 0 "D4" V 8096 6070 50  0000 R CNN
F 1 "D_Schottky" V 8005 6070 50  0000 R CNN
F 2 "" H 8050 6150 50  0001 C CNN
F 3 "~" H 8050 6150 50  0001 C CNN
	1    8050 6150
	0    -1   1    0   
$EndComp
Text Label 7550 6300 3    50   ~ 0
3.3V
Text Label 7150 5700 1    50   ~ 0
3.3V
$Comp
L power:GND1 #PWR023
U 1 1 61A970C8
P 7150 6300
F 0 "#PWR023" H 7150 6050 50  0001 C CNN
F 1 "GND1" H 7155 6127 50  0000 C CNN
F 2 "" H 7150 6300 50  0001 C CNN
F 3 "" H 7150 6300 50  0001 C CNN
	1    7150 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND1 #PWR027
U 1 1 61AA849F
P 8050 6300
F 0 "#PWR027" H 8050 6050 50  0001 C CNN
F 1 "GND1" H 8055 6127 50  0000 C CNN
F 2 "" H 8050 6300 50  0001 C CNN
F 3 "" H 8050 6300 50  0001 C CNN
	1    8050 6300
	1    0    0    -1  
$EndComp
Text GLabel 8050 6000 2    50   Input ~ 0
Rx
Connection ~ 1700 4850
Wire Wire Line
	1700 4850 1550 4850
Connection ~ 2550 6000
Wire Wire Line
	2550 6000 2550 5850
Wire Notes Line
	5150 4150 5150 2650
Wire Notes Line
	5150 2650 1600 2650
Wire Notes Line
	1600 2650 1600 4150
Wire Notes Line
	1600 4150 5150 4150
Wire Notes Line
	4050 4400 900  4400
Wire Notes Line
	900  4400 900  6500
Wire Notes Line
	900  6500 4050 6500
Wire Notes Line
	4050 4400 4050 6500
Wire Notes Line
	4100 4400 11150 4400
Wire Notes Line
	4100 4400 4100 6500
Wire Notes Line
	11150 4400 11150 6500
Text Notes 1300 6650 2    50   ~ 0
Tx circuit\n
Text Notes 3300 4100 2    50   ~ 0
Reconstruction filter to get sine from PWM
Text Notes 5750 6650 2    50   ~ 0
Rx circuit\n
Text Notes 9950 4550 2    50   ~ 0
Regulate 8V to 3.3V
Wire Notes Line
	4100 6500 11150 6500
Text GLabel 2000 3150 0    50   Input ~ 0
SIG
Wire Wire Line
	2000 3150 2600 3150
Text Label 1350 1800 0    50   ~ 0
Rx_in
Wire Wire Line
	10150 1050 10150 1400
Connection ~ 10150 1400
Wire Wire Line
	10150 1400 9800 1400
$Comp
L Regulator_Switching:LM2596S-5 U?
U 1 1 618810D5
P 3250 1300
F 0 "U?" H 3250 1667 50  0000 C CNN
F 1 "LM2596S-5" H 3250 1576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-5_TabPin3" H 3300 1050 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2596.pdf" H 3250 1300 50  0001 C CNN
	1    3250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1200 2250 1200
Wire Wire Line
	2250 1200 2250 1150
$Comp
L Device:C C?
U 1 1 61915909
P 2250 1350
F 0 "C?" H 2365 1396 50  0000 L CNN
F 1 "680u" H 2365 1305 50  0000 L CNN
F 2 "" H 2288 1200 50  0001 C CNN
F 3 "~" H 2250 1350 50  0001 C CNN
	1    2250 1350
	1    0    0    -1  
$EndComp
Connection ~ 2250 1200
$Comp
L Device:L L?
U 1 1 61916AB3
P 4100 1400
F 0 "L?" V 4290 1400 50  0000 C CNN
F 1 "33uH" V 4199 1400 50  0000 C CNN
F 2 "" H 4100 1400 50  0001 C CNN
F 3 "~" H 4100 1400 50  0001 C CNN
	1    4100 1400
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N5822 D?
U 1 1 619281A2
P 3850 1550
F 0 "D?" V 3804 1630 50  0000 L CNN
F 1 "1N5822" V 3895 1630 50  0000 L CNN
F 2 "Diode_THT:D_DO-201AD_P15.24mm_Horizontal" H 3850 1375 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88526/1n5820.pdf" H 3850 1550 50  0001 C CNN
	1    3850 1550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6194962F
P 2250 1500
F 0 "#PWR?" H 2250 1250 50  0001 C CNN
F 1 "GND" H 2255 1327 50  0000 C CNN
F 2 "" H 2250 1500 50  0001 C CNN
F 3 "" H 2250 1500 50  0001 C CNN
	1    2250 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61959860
P 2750 1400
F 0 "#PWR?" H 2750 1150 50  0001 C CNN
F 1 "GND" H 2755 1227 50  0000 C CNN
F 2 "" H 2750 1400 50  0001 C CNN
F 3 "" H 2750 1400 50  0001 C CNN
	1    2750 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61969B2B
P 3250 1600
F 0 "#PWR?" H 3250 1350 50  0001 C CNN
F 1 "GND" H 3255 1427 50  0000 C CNN
F 2 "" H 3250 1600 50  0001 C CNN
F 3 "" H 3250 1600 50  0001 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61979DA3
P 3850 1700
F 0 "#PWR?" H 3850 1450 50  0001 C CNN
F 1 "GND" H 3855 1527 50  0000 C CNN
F 2 "" H 3850 1700 50  0001 C CNN
F 3 "" H 3850 1700 50  0001 C CNN
	1    3850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1200 4300 1200
Wire Wire Line
	4300 1200 4300 1400
Wire Wire Line
	4300 1400 4250 1400
Wire Wire Line
	3750 1400 3850 1400
Connection ~ 3850 1400
Wire Wire Line
	3850 1400 3950 1400
Wire Wire Line
	4300 1400 4400 1400
Connection ~ 4300 1400
$Comp
L Device:C C?
U 1 1 619C0138
P 4300 1550
F 0 "C?" H 4415 1596 50  0000 L CNN
F 1 "220u" H 4415 1505 50  0000 L CNN
F 2 "" H 4338 1400 50  0001 C CNN
F 3 "~" H 4300 1550 50  0001 C CNN
	1    4300 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619C013E
P 4300 1700
F 0 "#PWR?" H 4300 1450 50  0001 C CNN
F 1 "GND" H 4305 1527 50  0000 C CNN
F 2 "" H 4300 1700 50  0001 C CNN
F 3 "" H 4300 1700 50  0001 C CNN
	1    4300 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 619D2509
P 4400 1400
F 0 "#PWR?" H 4400 1250 50  0001 C CNN
F 1 "+5V" H 4415 1573 50  0000 C CNN
F 2 "" H 4400 1400 50  0001 C CNN
F 3 "" H 4400 1400 50  0001 C CNN
	1    4400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 61A09358
P 1350 1550
F 0 "#PWR?" H 1350 1400 50  0001 C CNN
F 1 "+5V" H 1365 1723 50  0000 C CNN
F 2 "" H 1350 1550 50  0001 C CNN
F 3 "" H 1350 1550 50  0001 C CNN
	1    1350 1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
