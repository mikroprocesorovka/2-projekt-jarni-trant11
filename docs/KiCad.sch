EESchema Schematic File Version 4
EELAYER 30 0
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
L Motor:Motor_DC M?
U 1 1 625C539F
P 5630 4120
F 0 "M?" H 5788 4116 50  0000 L CNN
F 1 "Motor_DC" H 5788 4025 50  0000 L CNN
F 2 "" H 5630 4030 50  0001 C CNN
F 3 "~" H 5630 4030 50  0001 C CNN
	1    5630 4120
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA?
U 1 1 62637F41
P 5620 1970
F 0 "LA?" H 5748 2016 50  0000 L CNN
F 1 "Lamp" H 5748 1925 50  0000 L CNN
F 2 "" V 5620 2070 50  0001 C CNN
F 3 "~" V 5620 2070 50  0001 C CNN
	1    5620 1970
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 625C4A14
P 5630 3390
F 0 "#PWR?" H 5630 3140 50  0001 C CNN
F 1 "GND" H 5635 3217 50  0000 C CNN
F 2 "" H 5630 3390 50  0001 C CNN
F 3 "" H 5630 3390 50  0001 C CNN
	1    5630 3390
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 3310 5630 3390
$Comp
L power:+5V #PWR?
U 1 1 625C3C9B
P 5630 2660
F 0 "#PWR?" H 5630 2510 50  0001 C CNN
F 1 "+5V" H 5530 2760 50  0000 C CNN
F 2 "" H 5630 2660 50  0001 C CNN
F 3 "" H 5630 2660 50  0001 C CNN
	1    5630 2660
	1    0    0    -1  
$EndComp
Wire Wire Line
	6630 3010 6030 3010
$Comp
L MCU_ST_STM8:STM8S208RB STM8_1
U 1 1 61E861E2
P 7230 3510
F 0 "STM8_1" H 7730 5410 50  0000 C CNN
F 1 "STM8S208RB" H 7730 5310 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 7280 1310 50  0001 C CNN
F 3 "https://www.st.com/resource/en/datasheet/stm8s208rb.pdf" H 7130 3510 50  0001 C CNN
	1    7230 3510
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 61E8C908
P 7030 1600
F 0 "#PWR01" H 7030 1450 50  0001 C CNN
F 1 "+5V" H 6930 1700 50  0000 C CNN
F 2 "" H 7030 1600 50  0001 C CNN
F 3 "" H 7030 1600 50  0001 C CNN
	1    7030 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 61E8E0D9
P 7030 5460
F 0 "#PWR02" H 7030 5210 50  0001 C CNN
F 1 "GND" H 7035 5287 50  0000 C CNN
F 2 "" H 7030 5460 50  0001 C CNN
F 3 "" H 7030 5460 50  0001 C CNN
	1    7030 5460
	1    0    0    -1  
$EndComp
Wire Wire Line
	7030 1600 7030 1710
Wire Wire Line
	7030 5310 7030 5460
$Comp
L Sensor_Temperature:MCP9700AT-ELT U?
U 1 1 625B746A
P 5630 3010
F 0 "U?" H 5300 3056 50  0000 R CNN
F 1 "MCP9700AT-ELT" H 5300 2965 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5630 2610 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf" H 5630 3010 50  0001 C CNN
	1    5630 3010
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 2660 5630 2710
$Comp
L power:+6V #PWR?
U 1 1 6267BC5C
P 5620 1700
F 0 "#PWR?" H 5620 1550 50  0001 C CNN
F 1 "+6V" H 5635 1873 50  0000 C CNN
F 2 "" H 5620 1700 50  0001 C CNN
F 3 "" H 5620 1700 50  0001 C CNN
	1    5620 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+6V #PWR?
U 1 1 6267D3C6
P 5630 3870
F 0 "#PWR?" H 5630 3720 50  0001 C CNN
F 1 "+6V" H 5645 4043 50  0000 C CNN
F 2 "" H 5630 3870 50  0001 C CNN
F 3 "" H 5630 3870 50  0001 C CNN
	1    5630 3870
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 3870 5630 3920
Wire Wire Line
	5620 1700 5620 1770
$Comp
L Switch:SW_Push SW?
U 1 1 6267F305
P 5070 2340
F 0 "SW?" H 5070 2625 50  0000 C CNN
F 1 "SW_Push" H 5070 2534 50  0000 C CNN
F 2 "" H 5070 2540 50  0001 C CNN
F 3 "~" H 5070 2540 50  0001 C CNN
	1    5070 2340
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 62681143
P 5170 4600
F 0 "SW?" H 5170 4885 50  0000 C CNN
F 1 "SW_Push" H 5170 4794 50  0000 C CNN
F 2 "" H 5170 4800 50  0001 C CNN
F 3 "~" H 5170 4800 50  0001 C CNN
	1    5170 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5620 2170 5620 2340
Wire Wire Line
	5620 2340 5270 2340
Wire Wire Line
	5630 4420 5630 4600
Wire Wire Line
	5630 4600 5370 4600
$Comp
L power:-6V #PWR?
U 1 1 6268E3E4
P 4870 2420
F 0 "#PWR?" H 4870 2520 50  0001 C CNN
F 1 "-6V" H 4885 2593 50  0000 C CNN
F 2 "" H 4870 2420 50  0001 C CNN
F 3 "" H 4870 2420 50  0001 C CNN
	1    4870 2420
	-1   0    0    1   
$EndComp
$Comp
L power:-6V #PWR?
U 1 1 6268F40F
P 4970 4680
F 0 "#PWR?" H 4970 4780 50  0001 C CNN
F 1 "-6V" H 4985 4853 50  0000 C CNN
F 2 "" H 4970 4680 50  0001 C CNN
F 3 "" H 4970 4680 50  0001 C CNN
	1    4970 4680
	-1   0    0    1   
$EndComp
Wire Wire Line
	4970 4600 4970 4680
Wire Wire Line
	4870 2340 4870 2420
$EndSCHEMATC