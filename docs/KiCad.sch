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
P 4740 4520
F 0 "M?" H 4898 4516 50  0000 L CNN
F 1 "Motor_DC" H 4898 4425 50  0000 L CNN
F 2 "" H 4740 4430 50  0001 C CNN
F 3 "~" H 4740 4430 50  0001 C CNN
	1    4740 4520
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 3310 5630 3390
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
L power:+6V #PWR?
U 1 1 6267D3C6
P 4740 4270
F 0 "#PWR?" H 4740 4120 50  0001 C CNN
F 1 "+6V" H 4755 4443 50  0000 C CNN
F 2 "" H 4740 4270 50  0001 C CNN
F 3 "" H 4740 4270 50  0001 C CNN
	1    4740 4270
	1    0    0    -1  
$EndComp
Wire Wire Line
	4740 4270 4740 4320
$Comp
L Switch:SW_Push SW?
U 1 1 62681143
P 4280 5000
F 0 "SW?" H 4280 5285 50  0000 C CNN
F 1 "SW_Push" H 4280 5194 50  0000 C CNN
F 2 "" H 4280 5200 50  0001 C CNN
F 3 "~" H 4280 5200 50  0001 C CNN
	1    4280 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4740 4820 4740 5000
Wire Wire Line
	4740 5000 4480 5000
$Comp
L power:-6V #PWR?
U 1 1 6268F40F
P 4080 5080
F 0 "#PWR?" H 4080 5180 50  0001 C CNN
F 1 "-6V" H 4095 5253 50  0000 C CNN
F 2 "" H 4080 5080 50  0001 C CNN
F 3 "" H 4080 5080 50  0001 C CNN
	1    4080 5080
	-1   0    0    1   
$EndComp
Wire Wire Line
	4080 5000 4080 5080
$Comp
L Switch:SW_Push USER
U 1 1 62672E24
P 8250 3910
F 0 "USER" H 8250 4195 50  0000 C CNN
F 1 "SW_Push" H 8250 4104 50  0000 C CNN
F 2 "" H 8250 4110 50  0001 C CNN
F 3 "~" H 8250 4110 50  0001 C CNN
	1    8250 3910
	1    0    0    -1  
$EndComp
Wire Wire Line
	7830 3910 8050 3910
$Comp
L Device:LED D?
U 1 1 626734A1
P 6390 3910
F 0 "D?" H 6383 3655 50  0000 C CNN
F 1 "LED" H 6383 3746 50  0000 C CNN
F 2 "" H 6390 3910 50  0001 C CNN
F 3 "~" H 6390 3910 50  0001 C CNN
	1    6390 3910
	1    0    0    1   
$EndComp
Wire Wire Line
	6540 3910 6630 3910
$Comp
L power:GND #PWR?
U 1 1 62676B98
P 6240 3980
F 0 "#PWR?" H 6240 3730 50  0001 C CNN
F 1 "GND" H 6245 3807 50  0000 C CNN
F 2 "" H 6240 3980 50  0001 C CNN
F 3 "" H 6240 3980 50  0001 C CNN
	1    6240 3980
	1    0    0    -1  
$EndComp
Wire Wire Line
	6240 3910 6240 3980
$Comp
L power:GND #PWR?
U 1 1 62677826
P 8450 4060
F 0 "#PWR?" H 8450 3810 50  0001 C CNN
F 1 "GND" H 8455 3887 50  0000 C CNN
F 2 "" H 8450 4060 50  0001 C CNN
F 3 "" H 8450 4060 50  0001 C CNN
	1    8450 4060
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 3910 8450 4060
Wire Wire Line
	3990 2390 3990 2470
$Comp
L power:-6V #PWR?
U 1 1 6268E3E4
P 3990 2470
F 0 "#PWR?" H 3990 2570 50  0001 C CNN
F 1 "-6V" H 4005 2643 50  0000 C CNN
F 2 "" H 3990 2470 50  0001 C CNN
F 3 "" H 3990 2470 50  0001 C CNN
	1    3990 2470
	-1   0    0    1   
$EndComp
Wire Wire Line
	4740 2390 4390 2390
Wire Wire Line
	4740 2220 4740 2390
$Comp
L Switch:SW_Push SW?
U 1 1 6267F305
P 4190 2390
F 0 "SW?" H 4190 2675 50  0000 C CNN
F 1 "SW_Push" H 4190 2584 50  0000 C CNN
F 2 "" H 4190 2590 50  0001 C CNN
F 3 "~" H 4190 2590 50  0001 C CNN
	1    4190 2390
	1    0    0    -1  
$EndComp
Wire Wire Line
	4740 1750 4740 1820
$Comp
L power:+6V #PWR?
U 1 1 6267BC5C
P 4740 1750
F 0 "#PWR?" H 4740 1600 50  0001 C CNN
F 1 "+6V" H 4755 1923 50  0000 C CNN
F 2 "" H 4740 1750 50  0001 C CNN
F 3 "" H 4740 1750 50  0001 C CNN
	1    4740 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Lamp LA?
U 1 1 62637F41
P 4740 2020
F 0 "LA?" H 4868 2066 50  0000 L CNN
F 1 "Lamp" H 4868 1975 50  0000 L CNN
F 2 "" V 4740 2120 50  0001 C CNN
F 3 "~" V 4740 2120 50  0001 C CNN
	1    4740 2020
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:MCP9700AT-ELT U?
U 1 1 625B746A
P 5630 3010
F 0 "U?" H 6040 3360 50  0000 R CNN
F 1 "MCP9701E-ELT" H 6260 3280 50  0000 R CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 5630 2610 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001942G.pdf" H 5630 3010 50  0001 C CNN
	1    5630 3010
	1    0    0    -1  
$EndComp
Wire Wire Line
	6630 3010 6030 3010
$Comp
L Converter_DCDC:IA0503D PS?
U 1 1 6268E9C4
P 6140 1300
F 0 "PS?" H 6140 1667 50  0000 C CNN
F 1 "IA0503D" H 6140 1576 50  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_XP_POWER-IAxxxxD_THT" H 5090 1050 50  0001 L CNN
F 3 "https://www.xppower.com/pdfs/SF_IA.pdf" H 7190 1000 50  0001 L CNN
	1    6140 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	5630 1400 5740 1400
Wire Wire Line
	5630 1400 5630 2710
Wire Wire Line
	5740 1200 5200 1200
Wire Wire Line
	5200 1200 5200 3390
Wire Wire Line
	5200 3390 5630 3390
Wire Wire Line
	6540 1400 7130 1400
Wire Wire Line
	7130 1400 7130 1710
$Comp
L power:GND #PWR?
U 1 1 6269CE1F
P 6620 1510
F 0 "#PWR?" H 6620 1260 50  0001 C CNN
F 1 "GND" H 6625 1337 50  0000 C CNN
F 2 "" H 6620 1510 50  0001 C CNN
F 3 "" H 6620 1510 50  0001 C CNN
	1    6620 1510
	1    0    0    -1  
$EndComp
Wire Wire Line
	6540 1200 6620 1200
Wire Wire Line
	6620 1200 6620 1510
$Comp
L Connector:Conn_01x02_Female UART
U 1 1 6269E599
P 6370 2310
F 0 "UART" H 6398 2286 50  0000 L CNN
F 1 "Conn_01x02_Female" H 6210 2380 50  0000 L CNN
F 2 "" H 6370 2310 50  0001 C CNN
F 3 "~" H 6370 2310 50  0001 C CNN
	1    6370 2310
	-1   0    0    1   
$EndComp
Wire Wire Line
	6570 2210 6630 2210
Wire Wire Line
	6570 2310 6630 2310
$EndSCHEMATC
