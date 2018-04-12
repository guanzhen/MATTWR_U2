-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "01/16/2018 13:35:29"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	MaterialTowerCPLD IS
    PORT (
	ENC_1_PS : OUT std_logic;
	ENC_1_A : IN std_logic;
	ENC_1_B : IN std_logic;
	ENC_1_N : IN std_logic;
	Clk : IN std_logic;
	CPLD_INT : IN std_logic;
	nRD : IN std_logic;
	nWR : IN std_logic;
	nCS : IN std_logic;
	nADV : IN std_logic;
	nWAIT : IN std_logic;
	AD : INOUT std_logic_vector(7 DOWNTO 0);
	PWM_LED : IN std_logic;
	DIP_SWITCH : IN std_logic_vector(3 DOWNTO 0);
	ENC_2_A : IN std_logic;
	ENC_2_B : IN std_logic;
	ENC_2_N : IN std_logic;
	IO_Input13 : IN std_logic;
	IO_Input12 : IN std_logic;
	IO_Input11 : IN std_logic;
	IO_Input10 : IN std_logic;
	IO_Input9 : IN std_logic;
	IO_Input8 : IN std_logic;
	IO_Input23 : IN std_logic;
	IO_Input22 : IN std_logic;
	IO_Input21 : IN std_logic;
	IO_Input20 : IN std_logic;
	IO_Input19 : IN std_logic;
	IO_Input18 : IN std_logic;
	IO_Input17 : IN std_logic;
	IO_Input16 : IN std_logic;
	IO_Input2 : IN std_logic;
	IO_Input1 : IN std_logic;
	IO_Input0 : IN std_logic;
	ENC_1_DIR : OUT std_logic;
	ENC_1_INX : OUT std_logic;
	ENC_2_PS : OUT std_logic;
	ENC_2_DIR : OUT std_logic;
	ENC_2_INX : OUT std_logic;
	CAN1_TXD : OUT std_logic;
	CC_CAN1_TXD : IN std_logic;
	CAN2_TXD : OUT std_logic;
	CC_CAN2_TXD : IN std_logic;
	CC_CAN1_RXD : OUT std_logic;
	CAN1_RXD : IN std_logic;
	EN_EDIF_CAN : IN std_logic;
	CC_CAN2_RXD : OUT std_logic;
	CAN2_RXD : IN std_logic;
	FPGA_OK : OUT std_logic;
	FAN_PWM : OUT std_logic;
	LED_PWM : OUT std_logic;
	PIZZA_CALIBRATION : OUT std_logic;
	ENC_ERR : OUT std_logic;
	RST : OUT std_logic;
	IO_Output : OUT std_logic_vector(16 DOWNTO 0);
	Seg_LED : OUT std_logic_vector(7 DOWNTO 0);
	FAN_PULSE : IN std_logic;
	SDCLKO : IN std_logic;
	A : IN std_logic_vector(6 DOWNTO 0)
	);
END MaterialTowerCPLD;

-- Design Ports Information
-- ENC_1_PS	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nWAIT	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_1_DIR	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENC_1_INX	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENC_2_PS	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENC_2_DIR	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENC_2_INX	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CAN1_TXD	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CAN2_TXD	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CC_CAN1_RXD	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CC_CAN2_RXD	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- FPGA_OK	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- FAN_PWM	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LED_PWM	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- PIZZA_CALIBRATION	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENC_ERR	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- RST	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- IO_Output[16]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[15]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[14]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[13]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[12]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[11]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[10]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[9]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[8]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[7]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[6]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[4]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[3]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[2]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[1]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- IO_Output[0]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[7]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[6]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[5]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[4]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[2]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[1]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Seg_LED[0]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- FAN_PULSE	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SDCLKO	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AD[7]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AD[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AD[5]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AD[4]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AD[3]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AD[2]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AD[1]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- AD[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ENC_1_N	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_2_N	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CC_CAN1_TXD	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CC_CAN2_TXD	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CAN2_RXD	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_1_A	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_1_B	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_2_A	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENC_2_B	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CAN1_RXD	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN_EDIF_CAN	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CPLD_INT	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIP_SWITCH[1]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input8	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input16	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PWM_LED	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nWR	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nCS	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nRD	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nADV	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input23	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input22	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input21	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input13	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input20	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input12	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input11	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input19	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIP_SWITCH[3]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input18	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input10	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input2	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIP_SWITCH[2]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input17	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input9	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input1	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DIP_SWITCH[0]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IO_Input0	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MaterialTowerCPLD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ENC_1_PS : std_logic;
SIGNAL ww_ENC_1_A : std_logic;
SIGNAL ww_ENC_1_B : std_logic;
SIGNAL ww_ENC_1_N : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_CPLD_INT : std_logic;
SIGNAL ww_nRD : std_logic;
SIGNAL ww_nWR : std_logic;
SIGNAL ww_nCS : std_logic;
SIGNAL ww_nADV : std_logic;
SIGNAL ww_nWAIT : std_logic;
SIGNAL ww_PWM_LED : std_logic;
SIGNAL ww_DIP_SWITCH : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENC_2_A : std_logic;
SIGNAL ww_ENC_2_B : std_logic;
SIGNAL ww_ENC_2_N : std_logic;
SIGNAL ww_IO_Input13 : std_logic;
SIGNAL ww_IO_Input12 : std_logic;
SIGNAL ww_IO_Input11 : std_logic;
SIGNAL ww_IO_Input10 : std_logic;
SIGNAL ww_IO_Input9 : std_logic;
SIGNAL ww_IO_Input8 : std_logic;
SIGNAL ww_IO_Input23 : std_logic;
SIGNAL ww_IO_Input22 : std_logic;
SIGNAL ww_IO_Input21 : std_logic;
SIGNAL ww_IO_Input20 : std_logic;
SIGNAL ww_IO_Input19 : std_logic;
SIGNAL ww_IO_Input18 : std_logic;
SIGNAL ww_IO_Input17 : std_logic;
SIGNAL ww_IO_Input16 : std_logic;
SIGNAL ww_IO_Input2 : std_logic;
SIGNAL ww_IO_Input1 : std_logic;
SIGNAL ww_IO_Input0 : std_logic;
SIGNAL ww_ENC_1_DIR : std_logic;
SIGNAL ww_ENC_1_INX : std_logic;
SIGNAL ww_ENC_2_PS : std_logic;
SIGNAL ww_ENC_2_DIR : std_logic;
SIGNAL ww_ENC_2_INX : std_logic;
SIGNAL ww_CAN1_TXD : std_logic;
SIGNAL ww_CC_CAN1_TXD : std_logic;
SIGNAL ww_CAN2_TXD : std_logic;
SIGNAL ww_CC_CAN2_TXD : std_logic;
SIGNAL ww_CC_CAN1_RXD : std_logic;
SIGNAL ww_CAN1_RXD : std_logic;
SIGNAL ww_EN_EDIF_CAN : std_logic;
SIGNAL ww_CC_CAN2_RXD : std_logic;
SIGNAL ww_CAN2_RXD : std_logic;
SIGNAL ww_FPGA_OK : std_logic;
SIGNAL ww_FAN_PWM : std_logic;
SIGNAL ww_LED_PWM : std_logic;
SIGNAL ww_PIZZA_CALIBRATION : std_logic;
SIGNAL ww_ENC_ERR : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_IO_Output : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_Seg_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_FAN_PULSE : std_logic;
SIGNAL ww_SDCLKO : std_logic;
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL \U5|WrPrev~regout\ : std_logic;
SIGNAL \U4|WrPrev~regout\ : std_logic;
SIGNAL \AD~0\ : std_logic;
SIGNAL \AD~1\ : std_logic;
SIGNAL \AD~2\ : std_logic;
SIGNAL \AD~3\ : std_logic;
SIGNAL \AD~4\ : std_logic;
SIGNAL \AD~5\ : std_logic;
SIGNAL \AD~6\ : std_logic;
SIGNAL \AD~7\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \ENC_1_B~combout\ : std_logic;
SIGNAL \ENC_1_A~combout\ : std_logic;
SIGNAL \U4|sDir~0\ : std_logic;
SIGNAL \U4|sDir~regout\ : std_logic;
SIGNAL \U4|P~regout\ : std_logic;
SIGNAL \U4|PS~regout\ : std_logic;
SIGNAL \ENC_1_N~combout\ : std_logic;
SIGNAL \ENC_2_A~combout\ : std_logic;
SIGNAL \ENC_2_B~combout\ : std_logic;
SIGNAL \U5|sDir~0\ : std_logic;
SIGNAL \U5|sDir~regout\ : std_logic;
SIGNAL \U5|P~regout\ : std_logic;
SIGNAL \U5|PS~regout\ : std_logic;
SIGNAL \ENC_2_N~combout\ : std_logic;
SIGNAL \CC_CAN1_TXD~combout\ : std_logic;
SIGNAL \CC_CAN2_TXD~combout\ : std_logic;
SIGNAL \CAN1_RXD~combout\ : std_logic;
SIGNAL \EN_EDIF_CAN~combout\ : std_logic;
SIGNAL \CAN2_RXD~combout\ : std_logic;
SIGNAL \CPLD_INT~combout\ : std_logic;
SIGNAL \nCS~combout\ : std_logic;
SIGNAL \nADV~combout\ : std_logic;
SIGNAL \U2|SRAM_ADDR_PROC~0_combout\ : std_logic;
SIGNAL \U3|Mux162~4_combout\ : std_logic;
SIGNAL \U3|sWr_LED~0_combout\ : std_logic;
SIGNAL \nWR~combout\ : std_logic;
SIGNAL \U3|sWr_FAN~0_combout\ : std_logic;
SIGNAL \U3|sWr_FAN~1_combout\ : std_logic;
SIGNAL \U2|IO_RDY_WR~1_combout\ : std_logic;
SIGNAL \U3|sFAN_ONOFF~combout\ : std_logic;
SIGNAL \U3|FAN_ONOFF~regout\ : std_logic;
SIGNAL \U3|sPWM_Duty[8]~0_combout\ : std_logic;
SIGNAL \U3|sPWM_Duty[8]~1_combout\ : std_logic;
SIGNAL \U3|sWr_FAN~2\ : std_logic;
SIGNAL \U6|PM2|WrPrev~regout\ : std_logic;
SIGNAL \U6|PM2|PWM_G~0_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~66_combout\ : std_logic;
SIGNAL \U3|sWr_timer~1_combout\ : std_logic;
SIGNAL \U3|sPWM_Frq[0]~3_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[13]~10_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~68\ : std_logic;
SIGNAL \U6|PM2|Add0~68COUT1_96\ : std_logic;
SIGNAL \U6|PM2|Add0~78_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~80\ : std_logic;
SIGNAL \U6|PM2|Add0~72_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~74\ : std_logic;
SIGNAL \U6|PM2|Add0~74COUT1_98\ : std_logic;
SIGNAL \U6|PM2|Add0~60_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~62\ : std_logic;
SIGNAL \U6|PM2|Add0~62COUT1_100\ : std_logic;
SIGNAL \U6|PM2|Add0~54_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~56\ : std_logic;
SIGNAL \U6|PM2|Add0~56COUT1_102\ : std_logic;
SIGNAL \U6|PM2|Add0~48_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~50\ : std_logic;
SIGNAL \U6|PM2|Add0~50COUT1_104\ : std_logic;
SIGNAL \U6|PM2|Add0~42_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~44\ : std_logic;
SIGNAL \U6|PM2|Add0~36_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[7]~11_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[7]~12_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~38\ : std_logic;
SIGNAL \U6|PM2|Add0~38COUT1_106\ : std_logic;
SIGNAL \U6|PM2|Add0~30_combout\ : std_logic;
SIGNAL \U3|sPWM_Frq[8]~4_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~32\ : std_logic;
SIGNAL \U6|PM2|Add0~32COUT1_108\ : std_logic;
SIGNAL \U6|PM2|Add0~24_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[9]~8_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[9]~9_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~26\ : std_logic;
SIGNAL \U6|PM2|Add0~26COUT1_110\ : std_logic;
SIGNAL \U6|PM2|Add0~18_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[10]~6_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[10]~7_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~20\ : std_logic;
SIGNAL \U6|PM2|Add0~20COUT1_112\ : std_logic;
SIGNAL \U6|PM2|Add0~12_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[11]~4_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[11]~5_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~14\ : std_logic;
SIGNAL \U6|PM2|Add0~6_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[12]~2_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[12]~3_combout\ : std_logic;
SIGNAL \U6|PM2|Add0~8\ : std_logic;
SIGNAL \U6|PM2|Add0~8COUT1_114\ : std_logic;
SIGNAL \U6|PM2|Add0~0_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[13]~0_combout\ : std_logic;
SIGNAL \U6|PM2|T_Frq[13]~1_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan0~1_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan0~0_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan0~2_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan0~3_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan0~4_combout\ : std_logic;
SIGNAL \U3|sPWM_Duty[0]~2_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~65_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~26_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~67\ : std_logic;
SIGNAL \U6|PM2|Add1~67COUT1_82\ : std_logic;
SIGNAL \U6|PM2|Add1~60_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~25_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~62\ : std_logic;
SIGNAL \U6|PM2|Add1~55_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~24_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~57\ : std_logic;
SIGNAL \U6|PM2|Add1~57COUT1_84\ : std_logic;
SIGNAL \U6|PM2|Add1~50_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~23_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~52\ : std_logic;
SIGNAL \U6|PM2|Add1~52COUT1_86\ : std_logic;
SIGNAL \U6|PM2|Add1~45_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~22_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan1~2_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~47\ : std_logic;
SIGNAL \U6|PM2|Add1~47COUT1_88\ : std_logic;
SIGNAL \U6|PM2|Add1~40_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~21_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~42\ : std_logic;
SIGNAL \U6|PM2|Add1~42COUT1_90\ : std_logic;
SIGNAL \U6|PM2|Add1~35_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~18_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[6]~19_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[6]~20_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~37\ : std_logic;
SIGNAL \U6|PM2|Add1~30_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~17_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~32\ : std_logic;
SIGNAL \U6|PM2|Add1~32COUT1_92\ : std_logic;
SIGNAL \U6|PM2|Add1~25_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~14_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[8]~15_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[8]~16_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~27\ : std_logic;
SIGNAL \U6|PM2|Add1~27COUT1_94\ : std_logic;
SIGNAL \U6|PM2|Add1~20_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~11_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[9]~12_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[9]~13_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~5_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~2_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[12]~3_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[12]~4_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~22\ : std_logic;
SIGNAL \U6|PM2|Add1~22COUT1_96\ : std_logic;
SIGNAL \U6|PM2|Add1~15_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~8_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[10]~9_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[10]~10_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan1~0_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan1~1_combout\ : std_logic;
SIGNAL \U6|PM2|LessThan1~3_combout\ : std_logic;
SIGNAL \U6|PM2|P~0_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~0\ : std_logic;
SIGNAL \U6|PM2|Add1~17\ : std_logic;
SIGNAL \U6|PM2|Add1~17COUT1_98\ : std_logic;
SIGNAL \U6|PM2|Add1~10_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~5_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[11]~6_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty[11]~7_combout\ : std_logic;
SIGNAL \U6|PM2|Add1~12\ : std_logic;
SIGNAL \U6|PM2|Add1~7\ : std_logic;
SIGNAL \U6|PM2|Add1~7COUT1_100\ : std_logic;
SIGNAL \U6|PM2|Add1~0_combout\ : std_logic;
SIGNAL \U6|PM2|T_Duty~1_combout\ : std_logic;
SIGNAL \U6|PM2|P~regout\ : std_logic;
SIGNAL \U6|PM2|PWM~combout\ : std_logic;
SIGNAL \U3|sWr_timer~0_combout\ : std_logic;
SIGNAL \U2|IO_RDY_WR~0_combout\ : std_logic;
SIGNAL \U3|sWr_LED~1_combout\ : std_logic;
SIGNAL \U3|sLED_ONOFF~combout\ : std_logic;
SIGNAL \U3|LED_ONOFF~regout\ : std_logic;
SIGNAL \U6|PM1|Add0~66_combout\ : std_logic;
SIGNAL \U3|sWr_LED~2_combout\ : std_logic;
SIGNAL \U6|PM1|WrPrev~regout\ : std_logic;
SIGNAL \U6|PM1|PWM_G~0_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[13]~10_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~68\ : std_logic;
SIGNAL \U6|PM1|Add0~68COUT1_96\ : std_logic;
SIGNAL \U6|PM1|Add0~78_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~80\ : std_logic;
SIGNAL \U6|PM1|Add0~72_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~74\ : std_logic;
SIGNAL \U6|PM1|Add0~74COUT1_98\ : std_logic;
SIGNAL \U6|PM1|Add0~60_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~62\ : std_logic;
SIGNAL \U6|PM1|Add0~62COUT1_100\ : std_logic;
SIGNAL \U6|PM1|Add0~54_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~56\ : std_logic;
SIGNAL \U6|PM1|Add0~56COUT1_102\ : std_logic;
SIGNAL \U6|PM1|Add0~48_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~50\ : std_logic;
SIGNAL \U6|PM1|Add0~50COUT1_104\ : std_logic;
SIGNAL \U6|PM1|Add0~42_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~44\ : std_logic;
SIGNAL \U6|PM1|Add0~36_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[7]~11_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[7]~12_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~38\ : std_logic;
SIGNAL \U6|PM1|Add0~38COUT1_106\ : std_logic;
SIGNAL \U6|PM1|Add0~30_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~32\ : std_logic;
SIGNAL \U6|PM1|Add0~32COUT1_108\ : std_logic;
SIGNAL \U6|PM1|Add0~24_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[9]~8_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[9]~9_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~26\ : std_logic;
SIGNAL \U6|PM1|Add0~26COUT1_110\ : std_logic;
SIGNAL \U6|PM1|Add0~18_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[10]~6_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[10]~7_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~20\ : std_logic;
SIGNAL \U6|PM1|Add0~20COUT1_112\ : std_logic;
SIGNAL \U6|PM1|Add0~12_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[11]~4_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[11]~5_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~14\ : std_logic;
SIGNAL \U6|PM1|Add0~6_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[12]~2_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[12]~3_combout\ : std_logic;
SIGNAL \U6|PM1|Add0~8\ : std_logic;
SIGNAL \U6|PM1|Add0~8COUT1_114\ : std_logic;
SIGNAL \U6|PM1|Add0~0_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[13]~0_combout\ : std_logic;
SIGNAL \U6|PM1|T_Frq[13]~1\ : std_logic;
SIGNAL \U6|PM1|LessThan0~1_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan0~0_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan0~2_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan0~3_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan0~4_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~65_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~26_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~67\ : std_logic;
SIGNAL \U6|PM1|Add1~67COUT1_82\ : std_logic;
SIGNAL \U6|PM1|Add1~60_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~25_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~62\ : std_logic;
SIGNAL \U6|PM1|Add1~55_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~24_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~57\ : std_logic;
SIGNAL \U6|PM1|Add1~57COUT1_84\ : std_logic;
SIGNAL \U6|PM1|Add1~50_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~23_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~52\ : std_logic;
SIGNAL \U6|PM1|Add1~52COUT1_86\ : std_logic;
SIGNAL \U6|PM1|Add1~45_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~22_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~47\ : std_logic;
SIGNAL \U6|PM1|Add1~47COUT1_88\ : std_logic;
SIGNAL \U6|PM1|Add1~40_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~21_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~42\ : std_logic;
SIGNAL \U6|PM1|Add1~42COUT1_90\ : std_logic;
SIGNAL \U6|PM1|Add1~35_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~18_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[6]~19_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[6]~20_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~37\ : std_logic;
SIGNAL \U6|PM1|Add1~30_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~17_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~32\ : std_logic;
SIGNAL \U6|PM1|Add1~32COUT1_92\ : std_logic;
SIGNAL \U6|PM1|Add1~25_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~14_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[8]~15_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[8]~16_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan1~1_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~27\ : std_logic;
SIGNAL \U6|PM1|Add1~27COUT1_94\ : std_logic;
SIGNAL \U6|PM1|Add1~20_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~11_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[9]~12_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[9]~13_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~22\ : std_logic;
SIGNAL \U6|PM1|Add1~22COUT1_96\ : std_logic;
SIGNAL \U6|PM1|Add1~15_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~8_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[10]~9_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[10]~10_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~5_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~2_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[12]~3_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[12]~4_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan1~0_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan1~2_combout\ : std_logic;
SIGNAL \U6|PM1|LessThan1~3_combout\ : std_logic;
SIGNAL \U6|PM1|P~0_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~0\ : std_logic;
SIGNAL \U6|PM1|Add1~17\ : std_logic;
SIGNAL \U6|PM1|Add1~17COUT1_98\ : std_logic;
SIGNAL \U6|PM1|Add1~10_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~5_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[11]~6_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty[11]~7_combout\ : std_logic;
SIGNAL \U6|PM1|Add1~12\ : std_logic;
SIGNAL \U6|PM1|Add1~7\ : std_logic;
SIGNAL \U6|PM1|Add1~7COUT1_100\ : std_logic;
SIGNAL \U6|PM1|Add1~0_combout\ : std_logic;
SIGNAL \U6|PM1|T_Duty~1_combout\ : std_logic;
SIGNAL \U6|PM1|P~regout\ : std_logic;
SIGNAL \U6|PM1|PWM~combout\ : std_logic;
SIGNAL \IO_Input8~combout\ : std_logic;
SIGNAL \IO_Input16~combout\ : std_logic;
SIGNAL \U3|Pizza_Cali~regout\ : std_logic;
SIGNAL \U3|sWr_timer~2\ : std_logic;
SIGNAL \U1|WrPrev~regout\ : std_logic;
SIGNAL \U1|reset~0_combout\ : std_logic;
SIGNAL \U3|sH_timer[0]~0_combout\ : std_logic;
SIGNAL \U1|CNTVal[21]~0_combout\ : std_logic;
SIGNAL \U1|Add0~138_combout\ : std_logic;
SIGNAL \U3|sTrigger_Reset~0\ : std_logic;
SIGNAL \U1|triggerPrev~regout\ : std_logic;
SIGNAL \U1|HW_Reset~1_combout\ : std_logic;
SIGNAL \U1|Add0~140\ : std_logic;
SIGNAL \U1|Add0~140COUT1_164\ : std_logic;
SIGNAL \U1|Add0~132_combout\ : std_logic;
SIGNAL \U1|Add0~134\ : std_logic;
SIGNAL \U1|Add0~126_combout\ : std_logic;
SIGNAL \U1|Add0~128\ : std_logic;
SIGNAL \U1|Add0~128COUT1_166\ : std_logic;
SIGNAL \U1|Add0~120_combout\ : std_logic;
SIGNAL \U1|Add0~122\ : std_logic;
SIGNAL \U1|Add0~122COUT1_168\ : std_logic;
SIGNAL \U1|Add0~114_combout\ : std_logic;
SIGNAL \U1|Add0~116\ : std_logic;
SIGNAL \U1|Add0~116COUT1_170\ : std_logic;
SIGNAL \U1|Add0~108_combout\ : std_logic;
SIGNAL \U1|Add0~110\ : std_logic;
SIGNAL \U1|Add0~110COUT1_172\ : std_logic;
SIGNAL \U1|Add0~102_combout\ : std_logic;
SIGNAL \U1|Add0~104\ : std_logic;
SIGNAL \U1|Add0~96_combout\ : std_logic;
SIGNAL \U1|Add0~98\ : std_logic;
SIGNAL \U1|Add0~98COUT1_174\ : std_logic;
SIGNAL \U1|Add0~90_combout\ : std_logic;
SIGNAL \U1|Add0~92\ : std_logic;
SIGNAL \U1|Add0~92COUT1_176\ : std_logic;
SIGNAL \U1|Add0~84_combout\ : std_logic;
SIGNAL \U1|Add0~86\ : std_logic;
SIGNAL \U1|Add0~86COUT1_178\ : std_logic;
SIGNAL \U1|Add0~78_combout\ : std_logic;
SIGNAL \U1|Add0~80\ : std_logic;
SIGNAL \U1|Add0~80COUT1_180\ : std_logic;
SIGNAL \U1|Add0~72_combout\ : std_logic;
SIGNAL \U1|Add0~74\ : std_logic;
SIGNAL \U1|Add0~66_combout\ : std_logic;
SIGNAL \U1|Add0~68\ : std_logic;
SIGNAL \U1|Add0~68COUT1_182\ : std_logic;
SIGNAL \U1|Add0~60_combout\ : std_logic;
SIGNAL \U1|Add0~62\ : std_logic;
SIGNAL \U1|Add0~62COUT1_184\ : std_logic;
SIGNAL \U1|Add0~54_combout\ : std_logic;
SIGNAL \U1|CNTVal[14]~8_combout\ : std_logic;
SIGNAL \U1|CNTVal[21]~1_combout\ : std_logic;
SIGNAL \U1|Add0~56\ : std_logic;
SIGNAL \U1|Add0~56COUT1_186\ : std_logic;
SIGNAL \U1|Add0~48_combout\ : std_logic;
SIGNAL \U1|CNTVal[15]~7_combout\ : std_logic;
SIGNAL \U1|Add0~50\ : std_logic;
SIGNAL \U1|Add0~50COUT1_188\ : std_logic;
SIGNAL \U1|Add0~42_combout\ : std_logic;
SIGNAL \U1|CNTVal[16]~6_combout\ : std_logic;
SIGNAL \U1|Add0~44\ : std_logic;
SIGNAL \U1|CNTVal[19]~3_combout\ : std_logic;
SIGNAL \U1|Add0~36_combout\ : std_logic;
SIGNAL \U1|CNTVal[17]~5_combout\ : std_logic;
SIGNAL \U1|Add0~38\ : std_logic;
SIGNAL \U1|Add0~38COUT1_190\ : std_logic;
SIGNAL \U1|Add0~30_combout\ : std_logic;
SIGNAL \U1|CNTVal[18]~4_combout\ : std_logic;
SIGNAL \U1|Add0~32\ : std_logic;
SIGNAL \U1|Add0~32COUT1_192\ : std_logic;
SIGNAL \U1|Add0~24_combout\ : std_logic;
SIGNAL \U1|Add0~26\ : std_logic;
SIGNAL \U1|Add0~26COUT1_194\ : std_logic;
SIGNAL \U1|Add0~18_combout\ : std_logic;
SIGNAL \U1|CNTVal[20]~2_combout\ : std_logic;
SIGNAL \U1|Add0~20\ : std_logic;
SIGNAL \U1|Add0~20COUT1_196\ : std_logic;
SIGNAL \U1|Add0~12_combout\ : std_logic;
SIGNAL \U1|Add0~14\ : std_logic;
SIGNAL \U1|Add0~6_combout\ : std_logic;
SIGNAL \U1|Add0~8\ : std_logic;
SIGNAL \U1|Add0~8COUT1_198\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \U1|TR~0_combout\ : std_logic;
SIGNAL \U1|reset~1_combout\ : std_logic;
SIGNAL \U1|TR~regout\ : std_logic;
SIGNAL \U1|LessThan0~5_combout\ : std_logic;
SIGNAL \U1|LessThan0~6_combout\ : std_logic;
SIGNAL \U1|LessThan0~3_combout\ : std_logic;
SIGNAL \U1|LessThan0~2_combout\ : std_logic;
SIGNAL \U1|LessThan0~1_combout\ : std_logic;
SIGNAL \U1|LessThan0~0_combout\ : std_logic;
SIGNAL \U1|LessThan0~4_combout\ : std_logic;
SIGNAL \U1|HW_Reset~0_combout\ : std_logic;
SIGNAL \U1|HW_Reset~regout\ : std_logic;
SIGNAL \U3|sWr_LED~3_combout\ : std_logic;
SIGNAL \U3|Mux156~2_combout\ : std_logic;
SIGNAL \U3|soPin7_0[0]~0_combout\ : std_logic;
SIGNAL \U3|soPin23_16~0_combout\ : std_logic;
SIGNAL \U3|soPin23_16~combout\ : std_logic;
SIGNAL \U3|oPin23_16~regout\ : std_logic;
SIGNAL \U3|soPin15_8[0]~0_combout\ : std_logic;
SIGNAL \U3|sPWM_Frq[8]~2_combout\ : std_logic;
SIGNAL \U3|soPin7_0[0]~1_combout\ : std_logic;
SIGNAL \PWM_LED~combout\ : std_logic;
SIGNAL \U3|sSeg_LED[0]~0_combout\ : std_logic;
SIGNAL \U3|sSeg_LED[0]~1_combout\ : std_logic;
SIGNAL \nRD~combout\ : std_logic;
SIGNAL \U2|IO_RDY_RD~0_combout\ : std_logic;
SIGNAL \U3|Mux164~1_combout\ : std_logic;
SIGNAL \U3|Mux164~0_combout\ : std_logic;
SIGNAL \U3|IO_DAT_RD[7]~0_combout\ : std_logic;
SIGNAL \U3|Mux161~0_combout\ : std_logic;
SIGNAL \U3|Mux162~5_combout\ : std_logic;
SIGNAL \U3|Mux163~14_combout\ : std_logic;
SIGNAL \U3|Mux162~14_combout\ : std_logic;
SIGNAL \U3|Mux162~25_combout\ : std_logic;
SIGNAL \U3|sEnc_MT2[1]~0_combout\ : std_logic;
SIGNAL \U3|sEnc_MT2[1]~1_combout\ : std_logic;
SIGNAL \U3|sEnc_MT2[1]~2_combout\ : std_logic;
SIGNAL \U3|sWrVal_MT2[0]~0_combout\ : std_logic;
SIGNAL \U3|sWr_MT2~0_combout\ : std_logic;
SIGNAL \U5|enc_count~0\ : std_logic;
SIGNAL \U5|EncVal[0]~63\ : std_logic;
SIGNAL \U5|EncVal[1]~55\ : std_logic;
SIGNAL \U5|EncVal[1]~55COUT1_90\ : std_logic;
SIGNAL \U5|EncVal[2]~47\ : std_logic;
SIGNAL \U5|EncVal[2]~47COUT1_92\ : std_logic;
SIGNAL \U5|EncVal[3]~37\ : std_logic;
SIGNAL \U5|EncVal[3]~37COUT1_94\ : std_logic;
SIGNAL \U5|EncVal[4]~31\ : std_logic;
SIGNAL \U5|EncVal[4]~31COUT1_96\ : std_logic;
SIGNAL \U5|EncVal[5]~23\ : std_logic;
SIGNAL \U5|EncVal[6]~9\ : std_logic;
SIGNAL \U5|EncVal[6]~9COUT1_98\ : std_logic;
SIGNAL \U3|sWrVal_MT2[8]~1_combout\ : std_logic;
SIGNAL \U5|EncVal[7]~1\ : std_logic;
SIGNAL \U5|EncVal[7]~1COUT1_100\ : std_logic;
SIGNAL \U5|EncVal[8]~61\ : std_logic;
SIGNAL \U5|EncVal[8]~61COUT1_102\ : std_logic;
SIGNAL \U5|EncVal[9]~53\ : std_logic;
SIGNAL \U5|EncVal[9]~53COUT1_104\ : std_logic;
SIGNAL \U5|EncVal[10]~45\ : std_logic;
SIGNAL \U5|EncVal[11]~39\ : std_logic;
SIGNAL \U5|EncVal[11]~39COUT1_106\ : std_logic;
SIGNAL \U5|EncVal[12]~25\ : std_logic;
SIGNAL \U5|EncVal[12]~25COUT1_108\ : std_logic;
SIGNAL \U5|EncVal[13]~17\ : std_logic;
SIGNAL \U5|EncVal[13]~17COUT1_110\ : std_logic;
SIGNAL \U5|EncVal[14]~11\ : std_logic;
SIGNAL \U5|EncVal[14]~11COUT1_112\ : std_logic;
SIGNAL \U3|Mux162~13_combout\ : std_logic;
SIGNAL \U3|Mux162~12_combout\ : std_logic;
SIGNAL \U3|Mux162~6_combout\ : std_logic;
SIGNAL \U3|sEnc_MT1[0]~0_combout\ : std_logic;
SIGNAL \U3|sEnc_MT1[0]~1_combout\ : std_logic;
SIGNAL \U3|sWrVal_MT1[8]~8_combout\ : std_logic;
SIGNAL \U3|sWr_MT1~0_combout\ : std_logic;
SIGNAL \U4|enc_count~0\ : std_logic;
SIGNAL \U3|sWrVal_MT1[0]~11_combout\ : std_logic;
SIGNAL \U4|EncVal[0]~57\ : std_logic;
SIGNAL \U4|EncVal[1]~51\ : std_logic;
SIGNAL \U4|EncVal[1]~51COUT1_90\ : std_logic;
SIGNAL \U4|EncVal[2]~41\ : std_logic;
SIGNAL \U4|EncVal[2]~41COUT1_92\ : std_logic;
SIGNAL \U4|EncVal[3]~37\ : std_logic;
SIGNAL \U4|EncVal[3]~37COUT1_94\ : std_logic;
SIGNAL \U4|EncVal[4]~27\ : std_logic;
SIGNAL \U4|EncVal[4]~27COUT1_96\ : std_logic;
SIGNAL \U4|EncVal[5]~17\ : std_logic;
SIGNAL \U4|EncVal[6]~13\ : std_logic;
SIGNAL \U4|EncVal[6]~13COUT1_98\ : std_logic;
SIGNAL \U4|EncVal[7]~5\ : std_logic;
SIGNAL \U4|EncVal[7]~5COUT1_100\ : std_logic;
SIGNAL \U4|EncVal[8]~61\ : std_logic;
SIGNAL \U4|EncVal[8]~61COUT1_102\ : std_logic;
SIGNAL \U4|EncVal[9]~55\ : std_logic;
SIGNAL \U4|EncVal[9]~55COUT1_104\ : std_logic;
SIGNAL \U4|EncVal[10]~47\ : std_logic;
SIGNAL \U4|EncVal[11]~33\ : std_logic;
SIGNAL \U4|EncVal[11]~33COUT1_106\ : std_logic;
SIGNAL \U4|EncVal[12]~31\ : std_logic;
SIGNAL \U4|EncVal[12]~31COUT1_108\ : std_logic;
SIGNAL \U4|EncVal[13]~23\ : std_logic;
SIGNAL \U4|EncVal[13]~23COUT1_110\ : std_logic;
SIGNAL \U4|EncVal[14]~11\ : std_logic;
SIGNAL \U4|EncVal[14]~11COUT1_112\ : std_logic;
SIGNAL \U3|Mux159~15_combout\ : std_logic;
SIGNAL \U3|sWrVal_MT1[16]~10_combout\ : std_logic;
SIGNAL \U4|EncVal[15]~3\ : std_logic;
SIGNAL \U4|EncVal[16]~63\ : std_logic;
SIGNAL \U4|EncVal[16]~63COUT1_114\ : std_logic;
SIGNAL \U4|EncVal[17]~49\ : std_logic;
SIGNAL \U4|EncVal[17]~49COUT1_116\ : std_logic;
SIGNAL \U4|EncVal[18]~45\ : std_logic;
SIGNAL \U4|EncVal[18]~45COUT1_118\ : std_logic;
SIGNAL \U4|EncVal[19]~35\ : std_logic;
SIGNAL \U4|EncVal[19]~35COUT1_120\ : std_logic;
SIGNAL \U4|EncVal[20]~25\ : std_logic;
SIGNAL \U4|EncVal[21]~21\ : std_logic;
SIGNAL \U4|EncVal[21]~21COUT1_122\ : std_logic;
SIGNAL \U4|EncVal[22]~9\ : std_logic;
SIGNAL \U4|EncVal[22]~9COUT1_124\ : std_logic;
SIGNAL \U3|Mux162~7_combout\ : std_logic;
SIGNAL \IO_Input23~combout\ : std_logic;
SIGNAL \U3|Mux163~4_combout\ : std_logic;
SIGNAL \U3|Mux163~5_combout\ : std_logic;
SIGNAL \U3|Mux163~6_combout\ : std_logic;
SIGNAL \U3|Mux162~11_combout\ : std_logic;
SIGNAL \U3|Mux162~10_combout\ : std_logic;
SIGNAL \U3|Mux162~8_combout\ : std_logic;
SIGNAL \U3|Mux158~16_combout\ : std_logic;
SIGNAL \U3|sWrVal_MT2[16]~3_combout\ : std_logic;
SIGNAL \U5|EncVal[15]~3\ : std_logic;
SIGNAL \U5|EncVal[16]~59\ : std_logic;
SIGNAL \U5|EncVal[16]~59COUT1_114\ : std_logic;
SIGNAL \U5|EncVal[17]~51\ : std_logic;
SIGNAL \U5|EncVal[17]~51COUT1_116\ : std_logic;
SIGNAL \U5|EncVal[18]~43\ : std_logic;
SIGNAL \U5|EncVal[18]~43COUT1_118\ : std_logic;
SIGNAL \U5|EncVal[19]~35\ : std_logic;
SIGNAL \U5|EncVal[19]~35COUT1_120\ : std_logic;
SIGNAL \U5|EncVal[20]~29\ : std_logic;
SIGNAL \U5|EncVal[21]~21\ : std_logic;
SIGNAL \U5|EncVal[21]~21COUT1_122\ : std_logic;
SIGNAL \U5|EncVal[22]~15\ : std_logic;
SIGNAL \U5|EncVal[22]~15COUT1_124\ : std_logic;
SIGNAL \U3|Mux162~9_combout\ : std_logic;
SIGNAL \U3|sWrVal_MT2[24]~2_combout\ : std_logic;
SIGNAL \U5|EncVal[23]~7\ : std_logic;
SIGNAL \U5|EncVal[23]~7COUT1_126\ : std_logic;
SIGNAL \U5|EncVal[24]~57\ : std_logic;
SIGNAL \U5|EncVal[24]~57COUT1_128\ : std_logic;
SIGNAL \U5|EncVal[25]~49\ : std_logic;
SIGNAL \U5|EncVal[26]~41\ : std_logic;
SIGNAL \U5|EncVal[26]~41COUT1_130\ : std_logic;
SIGNAL \U5|EncVal[27]~33\ : std_logic;
SIGNAL \U5|EncVal[27]~33COUT1_132\ : std_logic;
SIGNAL \U5|EncVal[28]~27\ : std_logic;
SIGNAL \U5|EncVal[28]~27COUT1_134\ : std_logic;
SIGNAL \U5|EncVal[29]~19\ : std_logic;
SIGNAL \U5|EncVal[29]~19COUT1_136\ : std_logic;
SIGNAL \U5|EncVal[30]~13\ : std_logic;
SIGNAL \U3|sWrVal_MT1[24]~9_combout\ : std_logic;
SIGNAL \U4|EncVal[23]~1\ : std_logic;
SIGNAL \U4|EncVal[23]~1COUT1_126\ : std_logic;
SIGNAL \U4|EncVal[24]~59\ : std_logic;
SIGNAL \U4|EncVal[24]~59COUT1_128\ : std_logic;
SIGNAL \U4|EncVal[25]~53\ : std_logic;
SIGNAL \U4|EncVal[26]~43\ : std_logic;
SIGNAL \U4|EncVal[26]~43COUT1_130\ : std_logic;
SIGNAL \U4|EncVal[27]~39\ : std_logic;
SIGNAL \U4|EncVal[27]~39COUT1_132\ : std_logic;
SIGNAL \U4|EncVal[28]~29\ : std_logic;
SIGNAL \U4|EncVal[28]~29COUT1_134\ : std_logic;
SIGNAL \U4|EncVal[29]~19\ : std_logic;
SIGNAL \U4|EncVal[29]~19COUT1_136\ : std_logic;
SIGNAL \U4|EncVal[30]~15\ : std_logic;
SIGNAL \U3|Mux163~7_combout\ : std_logic;
SIGNAL \U3|Mux163~8_combout\ : std_logic;
SIGNAL \U3|Mux163~9_combout\ : std_logic;
SIGNAL \U3|Mux163~10_combout\ : std_logic;
SIGNAL \U3|Mux163~11_combout\ : std_logic;
SIGNAL \U3|Mux163~12_combout\ : std_logic;
SIGNAL \U3|Mux163~13_combout\ : std_logic;
SIGNAL \IO_Input22~combout\ : std_logic;
SIGNAL \U3|Mux162~15_combout\ : std_logic;
SIGNAL \U3|Mux162~16_combout\ : std_logic;
SIGNAL \U3|Mux162~17_combout\ : std_logic;
SIGNAL \U3|Mux162~18_combout\ : std_logic;
SIGNAL \U3|Mux162~19_combout\ : std_logic;
SIGNAL \U3|Mux162~20_combout\ : std_logic;
SIGNAL \U3|Mux162~21_combout\ : std_logic;
SIGNAL \U3|Mux162~22_combout\ : std_logic;
SIGNAL \U3|Mux162~23_combout\ : std_logic;
SIGNAL \U3|Mux162~24_combout\ : std_logic;
SIGNAL \U3|Mux161~1_combout\ : std_logic;
SIGNAL \U3|Mux161~2_combout\ : std_logic;
SIGNAL \U3|Mux161~15_combout\ : std_logic;
SIGNAL \U3|Mux158~2_combout\ : std_logic;
SIGNAL \U3|Mux161~3_combout\ : std_logic;
SIGNAL \IO_Input13~combout\ : std_logic;
SIGNAL \IO_Input21~combout\ : std_logic;
SIGNAL \U3|Mux161~7_combout\ : std_logic;
SIGNAL \U3|Mux161~8_combout\ : std_logic;
SIGNAL \U3|Mux161~6_combout\ : std_logic;
SIGNAL \U3|Mux161~9_combout\ : std_logic;
SIGNAL \U3|Mux161~10_combout\ : std_logic;
SIGNAL \U3|Mux161~11_combout\ : std_logic;
SIGNAL \U3|Mux161~4_combout\ : std_logic;
SIGNAL \U3|Mux161~5_combout\ : std_logic;
SIGNAL \U3|Mux161~12_combout\ : std_logic;
SIGNAL \U3|Mux161~13_combout\ : std_logic;
SIGNAL \U3|Mux161~14_combout\ : std_logic;
SIGNAL \U3|Mux161~16_combout\ : std_logic;
SIGNAL \U3|Mux160~0_combout\ : std_logic;
SIGNAL \IO_Input12~combout\ : std_logic;
SIGNAL \IO_Input20~combout\ : std_logic;
SIGNAL \U3|Mux160~3_combout\ : std_logic;
SIGNAL \U3|Mux160~4_combout\ : std_logic;
SIGNAL \U3|Mux160~5_combout\ : std_logic;
SIGNAL \U3|Mux160~1_combout\ : std_logic;
SIGNAL \U3|Mux160~2_combout\ : std_logic;
SIGNAL \U3|Mux160~6_combout\ : std_logic;
SIGNAL \U3|Mux160~7_combout\ : std_logic;
SIGNAL \U3|Mux160~8_combout\ : std_logic;
SIGNAL \U3|Mux160~9_combout\ : std_logic;
SIGNAL \U3|Mux160~10_combout\ : std_logic;
SIGNAL \U3|Mux159~10_combout\ : std_logic;
SIGNAL \U3|Mux159~11_combout\ : std_logic;
SIGNAL \U3|Mux159~12_combout\ : std_logic;
SIGNAL \U3|Mux159~13_combout\ : std_logic;
SIGNAL \U3|Mux159~2_combout\ : std_logic;
SIGNAL \U3|Mux159~3_combout\ : std_logic;
SIGNAL \U3|Mux159~4_combout\ : std_logic;
SIGNAL \U3|Mux159~5_combout\ : std_logic;
SIGNAL \U3|Mux159~6_combout\ : std_logic;
SIGNAL \IO_Input19~combout\ : std_logic;
SIGNAL \IO_Input11~combout\ : std_logic;
SIGNAL \U3|Mux159~7_combout\ : std_logic;
SIGNAL \U3|Mux159~8_combout\ : std_logic;
SIGNAL \U3|Mux159~9_combout\ : std_logic;
SIGNAL \U3|Mux159~16_combout\ : std_logic;
SIGNAL \U3|Mux159~14_combout\ : std_logic;
SIGNAL \U3|Mux158~18_combout\ : std_logic;
SIGNAL \U3|Mux158~17_combout\ : std_logic;
SIGNAL \U3|Mux158~15_combout\ : std_logic;
SIGNAL \IO_Input2~combout\ : std_logic;
SIGNAL \U3|Mux158~11_combout\ : std_logic;
SIGNAL \U3|Mux158~10_combout\ : std_logic;
SIGNAL \U3|Mux158~12_combout\ : std_logic;
SIGNAL \U3|Mux158~13_combout\ : std_logic;
SIGNAL \U3|Mux158~14_combout\ : std_logic;
SIGNAL \U3|Mux158~19_combout\ : std_logic;
SIGNAL \IO_Input18~combout\ : std_logic;
SIGNAL \U3|Mux158~5_combout\ : std_logic;
SIGNAL \U3|Mux158~6_combout\ : std_logic;
SIGNAL \IO_Input10~combout\ : std_logic;
SIGNAL \U3|Mux158~7_combout\ : std_logic;
SIGNAL \U3|Mux158~8_combout\ : std_logic;
SIGNAL \U3|Mux158~3_combout\ : std_logic;
SIGNAL \U3|Mux158~4_combout\ : std_logic;
SIGNAL \U3|Mux158~9_combout\ : std_logic;
SIGNAL \U3|Mux158~20_combout\ : std_logic;
SIGNAL \U3|Mux158~21_combout\ : std_logic;
SIGNAL \U3|Mux157~12_combout\ : std_logic;
SIGNAL \IO_Input1~combout\ : std_logic;
SIGNAL \U3|Mux157~9_combout\ : std_logic;
SIGNAL \U3|Mux157~10_combout\ : std_logic;
SIGNAL \U3|Mux157~11_combout\ : std_logic;
SIGNAL \U3|Mux157~13_combout\ : std_logic;
SIGNAL \IO_Input9~combout\ : std_logic;
SIGNAL \IO_Input17~combout\ : std_logic;
SIGNAL \U3|Mux157~4_combout\ : std_logic;
SIGNAL \U3|Mux157~5_combout\ : std_logic;
SIGNAL \U3|Mux157~6_combout\ : std_logic;
SIGNAL \U3|Mux157~2_combout\ : std_logic;
SIGNAL \U3|Mux157~3_combout\ : std_logic;
SIGNAL \U3|Mux157~7_combout\ : std_logic;
SIGNAL \U3|Mux157~8_combout\ : std_logic;
SIGNAL \U3|Mux157~14_combout\ : std_logic;
SIGNAL \U3|Mux157~15_combout\ : std_logic;
SIGNAL \IO_Input0~combout\ : std_logic;
SIGNAL \U3|Mux156~14_combout\ : std_logic;
SIGNAL \U3|Mux156~12_combout\ : std_logic;
SIGNAL \U3|Mux156~13_combout\ : std_logic;
SIGNAL \U3|Mux156~15_combout\ : std_logic;
SIGNAL \U3|Mux156~11_combout\ : std_logic;
SIGNAL \U3|Mux156~6_combout\ : std_logic;
SIGNAL \U3|Mux156~5_combout\ : std_logic;
SIGNAL \U3|Mux156~7_combout\ : std_logic;
SIGNAL \U3|Mux156~3_combout\ : std_logic;
SIGNAL \U3|Mux156~4_combout\ : std_logic;
SIGNAL \U3|Mux156~8_combout\ : std_logic;
SIGNAL \U3|Mux156~9_combout\ : std_logic;
SIGNAL \U3|Mux156~10_combout\ : std_logic;
SIGNAL \U3|Mux156~17_combout\ : std_logic;
SIGNAL \U3|Mux156~16_combout\ : std_logic;
SIGNAL \U5|Ar\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U5|Br\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U5|EncVal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U6|PM2|DutyVal\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U6|PM2|FrqVal\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U6|PM2|T_Frq\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U3|sPWM_Frq\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U3|sPWM_Duty\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U3|soPin15_8\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|EncVal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|sSeg_LED\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|sWrVal_MT2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DIP_SWITCH~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|IO_DAT_RD\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|oPin7_0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|sWrVal_MT1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|sH_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|sEnc_MT1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|Seg_LED\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|H_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|WrVal_MT1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U6|PM2|T_Duty\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U3|WrVal_MT2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U3|oPin15_8\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|soPin7_0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U3|PWM_Frq\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U3|sEnc_MT2\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U4|Br\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U4|Ar\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U3|PWM_Duty\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U2|IO_DAT_WR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|IO_ADDR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|sR_timer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|CNTVal\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U6|PM1|T_Frq\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U6|PM1|T_Duty\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U6|PM1|FrqVal\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \U6|PM1|DutyVal\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \ALT_INV_CPLD_INT~combout\ : std_logic;

BEGIN

ENC_1_PS <= ww_ENC_1_PS;
ww_ENC_1_A <= ENC_1_A;
ww_ENC_1_B <= ENC_1_B;
ww_ENC_1_N <= ENC_1_N;
ww_Clk <= Clk;
ww_CPLD_INT <= CPLD_INT;
ww_nRD <= nRD;
ww_nWR <= nWR;
ww_nCS <= nCS;
ww_nADV <= nADV;
ww_nWAIT <= nWAIT;
ww_PWM_LED <= PWM_LED;
ww_DIP_SWITCH <= DIP_SWITCH;
ww_ENC_2_A <= ENC_2_A;
ww_ENC_2_B <= ENC_2_B;
ww_ENC_2_N <= ENC_2_N;
ww_IO_Input13 <= IO_Input13;
ww_IO_Input12 <= IO_Input12;
ww_IO_Input11 <= IO_Input11;
ww_IO_Input10 <= IO_Input10;
ww_IO_Input9 <= IO_Input9;
ww_IO_Input8 <= IO_Input8;
ww_IO_Input23 <= IO_Input23;
ww_IO_Input22 <= IO_Input22;
ww_IO_Input21 <= IO_Input21;
ww_IO_Input20 <= IO_Input20;
ww_IO_Input19 <= IO_Input19;
ww_IO_Input18 <= IO_Input18;
ww_IO_Input17 <= IO_Input17;
ww_IO_Input16 <= IO_Input16;
ww_IO_Input2 <= IO_Input2;
ww_IO_Input1 <= IO_Input1;
ww_IO_Input0 <= IO_Input0;
ENC_1_DIR <= ww_ENC_1_DIR;
ENC_1_INX <= ww_ENC_1_INX;
ENC_2_PS <= ww_ENC_2_PS;
ENC_2_DIR <= ww_ENC_2_DIR;
ENC_2_INX <= ww_ENC_2_INX;
CAN1_TXD <= ww_CAN1_TXD;
ww_CC_CAN1_TXD <= CC_CAN1_TXD;
CAN2_TXD <= ww_CAN2_TXD;
ww_CC_CAN2_TXD <= CC_CAN2_TXD;
CC_CAN1_RXD <= ww_CC_CAN1_RXD;
ww_CAN1_RXD <= CAN1_RXD;
ww_EN_EDIF_CAN <= EN_EDIF_CAN;
CC_CAN2_RXD <= ww_CC_CAN2_RXD;
ww_CAN2_RXD <= CAN2_RXD;
FPGA_OK <= ww_FPGA_OK;
FAN_PWM <= ww_FAN_PWM;
LED_PWM <= ww_LED_PWM;
PIZZA_CALIBRATION <= ww_PIZZA_CALIBRATION;
ENC_ERR <= ww_ENC_ERR;
RST <= ww_RST;
IO_Output <= ww_IO_Output;
Seg_LED <= ww_Seg_LED;
ww_FAN_PULSE <= FAN_PULSE;
ww_SDCLKO <= SDCLKO;
ww_A <= A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_CPLD_INT~combout\ <= NOT \CPLD_INT~combout\;

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(7),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(7),
	combout => \AD~0\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(6),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(6),
	combout => \AD~1\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(5),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(5),
	combout => \AD~2\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(4),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(4),
	combout => \AD~3\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(3),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(3),
	combout => \AD~4\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(2),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(2),
	combout => \AD~5\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(1),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(1),
	combout => \AD~6\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\AD[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U3|IO_DAT_RD\(0),
	oe => \U2|IO_RDY_RD~0_combout\,
	padio => AD(0),
	combout => \AD~7\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_1_B~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_1_B,
	combout => \ENC_1_B~combout\);

-- Location: LC_X4_Y4_N5
\U4|Br[0]\ : maxv_lcell
-- Equation(s):
-- \U4|Br\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , , \ENC_1_B~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \ENC_1_B~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|Br\(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_1_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_1_A,
	combout => \ENC_1_A~combout\);

-- Location: LC_X4_Y4_N2
\U4|Ar[0]\ : maxv_lcell
-- Equation(s):
-- \U4|Ar\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , , \ENC_1_A~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \ENC_1_A~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|Ar\(0));

-- Location: LC_X4_Y4_N0
\U4|Ar[1]\ : maxv_lcell
-- Equation(s):
-- \U4|Ar\(1) = DFFEAS((((\U4|Ar\(0)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \U4|Ar\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|Ar\(1));

-- Location: LC_X4_Y4_N8
\U4|Br[1]\ : maxv_lcell
-- Equation(s):
-- \U4|sDir~0\ = (\U4|Br\(0) & ((E1_Br[1] & ((\U4|sDir~regout\))) # (!E1_Br[1] & (!\ENC_1_A~combout\)))) # (!\U4|Br\(0) & ((E1_Br[1] & (\ENC_1_A~combout\)) # (!E1_Br[1] & ((\U4|sDir~regout\)))))
-- \U4|Br\(1) = DFFEAS(\U4|sDir~0\, GLOBAL(\Clk~combout\), VCC, , , \U4|Br\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e742",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|Br\(0),
	datab => \ENC_1_A~combout\,
	datac => \U4|Br\(0),
	datad => \U4|sDir~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|sDir~0\,
	regout => \U4|Br\(1));

-- Location: LC_X3_Y7_N0
\U4|sDir\ : maxv_lcell
-- Equation(s):
-- \U4|sDir~regout\ = DFFEAS((\U4|Ar\(1) & ((\U4|Ar\(0) & ((\U4|sDir~0\))) # (!\U4|Ar\(0) & (!\ENC_1_B~combout\)))) # (!\U4|Ar\(1) & ((\U4|Ar\(0) & (\ENC_1_B~combout\)) # (!\U4|Ar\(0) & ((\U4|sDir~0\))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e742",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|Ar\(1),
	datab => \ENC_1_B~combout\,
	datac => \U4|Ar\(0),
	datad => \U4|sDir~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|sDir~regout\);

-- Location: LC_X4_Y4_N6
\U4|P\ : maxv_lcell
-- Equation(s):
-- \U4|P~regout\ = DFFEAS((\U4|Br\(1) & ((\U4|Ar\(1) $ (\U4|Ar\(0))) # (!\U4|Br\(0)))) # (!\U4|Br\(1) & ((\U4|Br\(0)) # (\U4|Ar\(1) $ (\U4|Ar\(0))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bde",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|Br\(1),
	datab => \U4|Ar\(1),
	datac => \U4|Br\(0),
	datad => \U4|Ar\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|P~regout\);

-- Location: LC_X4_Y4_N7
\U4|PS\ : maxv_lcell
-- Equation(s):
-- \U4|PS~regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , , \U4|P~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U4|P~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|PS~regout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_1_N~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_1_N,
	combout => \ENC_1_N~combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_2_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_2_A,
	combout => \ENC_2_A~combout\);

-- Location: LC_X4_Y6_N9
\U5|Ar[0]\ : maxv_lcell
-- Equation(s):
-- \U5|Ar\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , , \ENC_2_A~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \ENC_2_A~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|Ar\(0));

-- Location: LC_X4_Y6_N7
\U5|Ar[1]\ : maxv_lcell
-- Equation(s):
-- \U5|Ar\(1) = DFFEAS((((\U5|Ar\(0)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \U5|Ar\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|Ar\(1));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_2_B~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_2_B,
	combout => \ENC_2_B~combout\);

-- Location: LC_X5_Y6_N2
\U5|Br[0]\ : maxv_lcell
-- Equation(s):
-- \U5|Br\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , , \ENC_2_B~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \ENC_2_B~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|Br\(0));

-- Location: LC_X4_Y6_N0
\U5|Br[1]\ : maxv_lcell
-- Equation(s):
-- \U5|sDir~0\ = (E2_Br[1] & ((\U5|Br\(0) & ((\U5|sDir~regout\))) # (!\U5|Br\(0) & (\ENC_2_A~combout\)))) # (!E2_Br[1] & ((\U5|Br\(0) & (!\ENC_2_A~combout\)) # (!\U5|Br\(0) & ((\U5|sDir~regout\)))))
-- \U5|Br\(1) = DFFEAS(\U5|sDir~0\, GLOBAL(\Clk~combout\), VCC, , , \U5|Br\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c5ac",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \ENC_2_A~combout\,
	datab => \U5|sDir~regout\,
	datac => \U5|Br\(0),
	datad => \U5|Br\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U5|sDir~0\,
	regout => \U5|Br\(1));

-- Location: LC_X5_Y6_N1
\U5|sDir\ : maxv_lcell
-- Equation(s):
-- \U5|sDir~regout\ = DFFEAS((\U5|Ar\(0) & ((\U5|Ar\(1) & (\U5|sDir~0\)) # (!\U5|Ar\(1) & ((\ENC_2_B~combout\))))) # (!\U5|Ar\(0) & ((\U5|Ar\(1) & ((!\ENC_2_B~combout\))) # (!\U5|Ar\(1) & (\U5|sDir~0\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2d4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|Ar\(0),
	datab => \U5|Ar\(1),
	datac => \U5|sDir~0\,
	datad => \ENC_2_B~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|sDir~regout\);

-- Location: LC_X5_Y6_N3
\U5|P\ : maxv_lcell
-- Equation(s):
-- \U5|P~regout\ = DFFEAS((\U5|Br\(1) & ((\U5|Ar\(0) $ (\U5|Ar\(1))) # (!\U5|Br\(0)))) # (!\U5|Br\(1) & ((\U5|Br\(0)) # (\U5|Ar\(0) $ (\U5|Ar\(1))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|Br\(1),
	datab => \U5|Br\(0),
	datac => \U5|Ar\(0),
	datad => \U5|Ar\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|P~regout\);

-- Location: LC_X8_Y6_N6
\U5|PS\ : maxv_lcell
-- Equation(s):
-- \U5|PS~regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), VCC, , , \U5|P~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U5|P~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|PS~regout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENC_2_N~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ENC_2_N,
	combout => \ENC_2_N~combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CC_CAN1_TXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CC_CAN1_TXD,
	combout => \CC_CAN1_TXD~combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CC_CAN2_TXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CC_CAN2_TXD,
	combout => \CC_CAN2_TXD~combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CAN1_RXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CAN1_RXD,
	combout => \CAN1_RXD~combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN_EDIF_CAN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EN_EDIF_CAN,
	combout => \EN_EDIF_CAN~combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CAN2_RXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CAN2_RXD,
	combout => \CAN2_RXD~combout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CPLD_INT~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CPLD_INT,
	combout => \CPLD_INT~combout\);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nCS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nCS,
	combout => \nCS~combout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nADV~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nADV,
	combout => \nADV~combout\);

-- Location: LC_X9_Y7_N2
\U2|SRAM_ADDR_PROC~0\ : maxv_lcell
-- Equation(s):
-- \U2|SRAM_ADDR_PROC~0_combout\ = ((!\nCS~combout\ & (!\nADV~combout\ & \CPLD_INT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nCS~combout\,
	datac => \nADV~combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|SRAM_ADDR_PROC~0_combout\);

-- Location: LC_X10_Y7_N2
\U2|IO_ADDR[0]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(0) = ((\U2|SRAM_ADDR_PROC~0_combout\ & ((\AD~7\))) # (!\U2|SRAM_ADDR_PROC~0_combout\ & (\U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(0),
	datac => \AD~7\,
	datad => \U2|SRAM_ADDR_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(0));

-- Location: LC_X8_Y7_N2
\U2|IO_ADDR[3]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(3) = ((\U2|SRAM_ADDR_PROC~0_combout\ & (\AD~4\)) # (!\U2|SRAM_ADDR_PROC~0_combout\ & ((\U2|IO_ADDR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \AD~4\,
	datac => \U2|SRAM_ADDR_PROC~0_combout\,
	datad => \U2|IO_ADDR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(3));

-- Location: LC_X9_Y7_N5
\U2|IO_ADDR[1]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(1) = ((\U2|SRAM_ADDR_PROC~0_combout\ & (\AD~6\)) # (!\U2|SRAM_ADDR_PROC~0_combout\ & ((\U2|IO_ADDR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \AD~6\,
	datac => \U2|IO_ADDR\(1),
	datad => \U2|SRAM_ADDR_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(1));

-- Location: LC_X9_Y7_N0
\U2|IO_ADDR[2]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(2) = ((\U2|SRAM_ADDR_PROC~0_combout\ & (\AD~5\)) # (!\U2|SRAM_ADDR_PROC~0_combout\ & ((\U2|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \AD~5\,
	datac => \U2|IO_ADDR\(2),
	datad => \U2|SRAM_ADDR_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(2));

-- Location: LC_X9_Y7_N1
\U3|Mux162~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~4_combout\ = (((\U2|IO_ADDR\(1) & !\U2|IO_ADDR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|IO_ADDR\(1),
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~4_combout\);

-- Location: LC_X8_Y7_N4
\U2|IO_ADDR[6]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(6) = (\U2|SRAM_ADDR_PROC~0_combout\ & (((\AD~1\)))) # (!\U2|SRAM_ADDR_PROC~0_combout\ & (\U2|IO_ADDR\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(6),
	datab => \AD~1\,
	datac => \U2|SRAM_ADDR_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(6));

-- Location: LC_X8_Y7_N9
\U2|IO_ADDR[4]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(4) = ((\U2|SRAM_ADDR_PROC~0_combout\ & (\AD~3\)) # (!\U2|SRAM_ADDR_PROC~0_combout\ & ((\U2|IO_ADDR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \AD~3\,
	datac => \U2|SRAM_ADDR_PROC~0_combout\,
	datad => \U2|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(4));

-- Location: LC_X8_Y7_N0
\U2|IO_ADDR[5]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(5) = ((\U2|SRAM_ADDR_PROC~0_combout\ & (\AD~2\)) # (!\U2|SRAM_ADDR_PROC~0_combout\ & ((\U2|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \AD~2\,
	datac => \U2|SRAM_ADDR_PROC~0_combout\,
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(5));

-- Location: LC_X8_Y7_N8
\U2|IO_ADDR[7]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_ADDR\(7) = ((\U2|SRAM_ADDR_PROC~0_combout\ & (\AD~0\)) # (!\U2|SRAM_ADDR_PROC~0_combout\ & ((\U2|IO_ADDR\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AD~0\,
	datac => \U2|SRAM_ADDR_PROC~0_combout\,
	datad => \U2|IO_ADDR\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_ADDR\(7));

-- Location: LC_X8_Y7_N6
\U3|sWr_LED~0\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_LED~0_combout\ = (\U2|IO_ADDR\(6) & (!\U2|IO_ADDR\(4) & (!\U2|IO_ADDR\(5) & !\U2|IO_ADDR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(6),
	datab => \U2|IO_ADDR\(4),
	datac => \U2|IO_ADDR\(5),
	datad => \U2|IO_ADDR\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_LED~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nWR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nWR,
	combout => \nWR~combout\);

-- Location: LC_X13_Y7_N6
\U3|sWr_FAN~0\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_FAN~0_combout\ = (!\nCS~combout\ & (\CPLD_INT~combout\ & (\U3|sWr_LED~0_combout\ & !\nWR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nCS~combout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~0_combout\,
	datad => \nWR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_FAN~0_combout\);

-- Location: LC_X13_Y7_N7
\U3|sWr_FAN~1\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_FAN~1_combout\ = (!\U2|IO_ADDR\(0) & (\U2|IO_ADDR\(3) & (\U3|Mux162~4_combout\ & \U3|sWr_FAN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U2|IO_ADDR\(3),
	datac => \U3|Mux162~4_combout\,
	datad => \U3|sWr_FAN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_FAN~1_combout\);

-- Location: LC_X8_Y9_N0
\U2|IO_RDY_WR~1\ : maxv_lcell
-- Equation(s):
-- \U2|IO_RDY_WR~1_combout\ = (\CPLD_INT~combout\ & (((!\nCS~combout\ & !\nWR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datac => \nCS~combout\,
	datad => \nWR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_RDY_WR~1_combout\);

-- Location: LC_X13_Y6_N1
\U2|IO_DAT_WR[0]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(0) = (\U2|IO_RDY_WR~1_combout\ & (\AD~7\)) # (!\U2|IO_RDY_WR~1_combout\ & (((\U2|IO_DAT_WR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AD~7\,
	datab => \U2|IO_DAT_WR\(0),
	datac => \U2|IO_RDY_WR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(0));

-- Location: LC_X13_Y6_N2
\U3|sFAN_ONOFF\ : maxv_lcell
-- Equation(s):
-- \U3|sFAN_ONOFF~combout\ = ((\U3|sWr_FAN~1_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sWr_FAN~1_combout\ & (\U3|sFAN_ONOFF~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sFAN_ONOFF~combout\,
	datac => \U3|sWr_FAN~1_combout\,
	datad => \U2|IO_DAT_WR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sFAN_ONOFF~combout\);

-- Location: LC_X13_Y6_N7
\U3|FAN_ONOFF\ : maxv_lcell
-- Equation(s):
-- \U3|FAN_ONOFF~regout\ = DFFEAS((((\CPLD_INT~combout\ & \U3|sFAN_ONOFF~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sFAN_ONOFF~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|FAN_ONOFF~regout\);

-- Location: LC_X10_Y6_N0
\U2|IO_DAT_WR[5]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(5) = ((\U2|IO_RDY_WR~1_combout\ & (\AD~2\)) # (!\U2|IO_RDY_WR~1_combout\ & ((\U2|IO_DAT_WR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \AD~2\,
	datac => \U2|IO_DAT_WR\(5),
	datad => \U2|IO_RDY_WR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(5));

-- Location: LC_X9_Y7_N8
\U3|sPWM_Duty[8]~0\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty[8]~0_combout\ = (!\U2|IO_ADDR\(1) & (!\U2|IO_ADDR\(0) & (!\U2|IO_ADDR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U2|IO_ADDR\(0),
	datac => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty[8]~0_combout\);

-- Location: LC_X12_Y7_N5
\U3|sPWM_Duty[8]~1\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty[8]~1_combout\ = (\U3|sPWM_Duty[8]~0_combout\ & (\U3|sWr_LED~0_combout\ & (\U2|IO_RDY_WR~1_combout\ & \U2|IO_ADDR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Duty[8]~0_combout\,
	datab => \U3|sWr_LED~0_combout\,
	datac => \U2|IO_RDY_WR~1_combout\,
	datad => \U2|IO_ADDR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty[8]~1_combout\);

-- Location: LC_X15_Y6_N7
\U3|sPWM_Duty[13]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(13) = ((\U3|sPWM_Duty[8]~1_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sPWM_Duty[8]~1_combout\ & (\U3|sPWM_Duty\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Duty\(13),
	datac => \U2|IO_DAT_WR\(5),
	datad => \U3|sPWM_Duty[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(13));

-- Location: LC_X15_Y6_N8
\U3|PWM_Duty[13]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(13) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sPWM_Duty\(13))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(13),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(13));

-- Location: LC_X8_Y8_N0
\U2|IO_DAT_WR[3]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(3) = (\U2|IO_RDY_WR~1_combout\ & (\AD~4\)) # (!\U2|IO_RDY_WR~1_combout\ & (((\U2|IO_DAT_WR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AD~4\,
	datab => \U2|IO_DAT_WR\(3),
	datac => \U2|IO_RDY_WR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(3));

-- Location: LC_X13_Y4_N8
\U3|sPWM_Duty[11]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(11) = ((\U3|sPWM_Duty[8]~1_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sPWM_Duty[8]~1_combout\ & (\U3|sPWM_Duty\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Duty\(11),
	datac => \U2|IO_DAT_WR\(3),
	datad => \U3|sPWM_Duty[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(11));

-- Location: LC_X13_Y4_N9
\U3|PWM_Duty[11]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(11) = DFFEAS((((\U3|sPWM_Duty\(11))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(11),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(11));

-- Location: LC_X13_Y7_N8
\U6|PM2|WrPrev\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_FAN~2\ = \U3|sWr_FAN~2\ $ ((((\U3|sWr_FAN~1_combout\))))
-- \U6|PM2|WrPrev~regout\ = DFFEAS(\U3|sWr_FAN~2\, GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U3|sWr_FAN~2\,
	datad => \U3|sWr_FAN~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_FAN~2\,
	regout => \U6|PM2|WrPrev~regout\);

-- Location: LC_X15_Y7_N2
\U6|PM2|PWM_G~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|PWM_G~0_combout\ = ((\U3|sWr_FAN~2\ $ (\U6|PM2|WrPrev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|sWr_FAN~2\,
	datad => \U6|PM2|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|PWM_G~0_combout\);

-- Location: LC_X15_Y7_N5
\U6|PM2|DutyVal[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(11) = ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(11)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(11)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|DutyVal\(11),
	datab => \CPLD_INT~combout\,
	datac => \U3|PWM_Duty\(11),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(11));

-- Location: LC_X12_Y10_N3
\U6|PM2|Add0~66\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~66_combout\ = (!\U6|PM2|T_Frq\(0))
-- \U6|PM2|Add0~68\ = CARRY((\U6|PM2|T_Frq\(0)))
-- \U6|PM2|Add0~68COUT1_96\ = CARRY((\U6|PM2|T_Frq\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~66_combout\,
	cout0 => \U6|PM2|Add0~68\,
	cout1 => \U6|PM2|Add0~68COUT1_96\);

-- Location: LC_X8_Y9_N5
\U3|sWr_timer~1\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_timer~1_combout\ = (\U3|sWr_LED~0_combout\ & (((\U2|IO_RDY_WR~1_combout\ & !\U2|IO_ADDR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWr_LED~0_combout\,
	datac => \U2|IO_RDY_WR~1_combout\,
	datad => \U2|IO_ADDR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_timer~1_combout\);

-- Location: LC_X11_Y8_N5
\U3|sPWM_Frq[0]~3\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq[0]~3_combout\ = (\U2|IO_ADDR\(0) & (\U2|IO_ADDR\(2) & (\U3|sWr_timer~1_combout\ & !\U2|IO_ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U2|IO_ADDR\(2),
	datac => \U3|sWr_timer~1_combout\,
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq[0]~3_combout\);

-- Location: LC_X14_Y7_N5
\U3|sPWM_Frq[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(0) = ((\U3|sPWM_Frq[0]~3_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sPWM_Frq[0]~3_combout\ & (\U3|sPWM_Frq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Frq\(0),
	datac => \U2|IO_DAT_WR\(0),
	datad => \U3|sPWM_Frq[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(0));

-- Location: LC_X14_Y7_N8
\U3|PWM_Frq[0]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(0) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sPWM_Frq\(0))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sPWM_Frq\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(0));

-- Location: LC_X12_Y9_N1
\U6|PM2|FrqVal[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(0) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Frq\(0)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|FrqVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|FrqVal\(0),
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(0));

-- Location: LC_X12_Y9_N0
\U6|PM2|T_Frq[13]~10\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[13]~10_combout\ = (\CPLD_INT~combout\ & ((\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0aa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[13]~10_combout\);

-- Location: LC_X12_Y9_N7
\U6|PM2|T_Frq[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(0) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(0))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~66_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(0), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~66_combout\,
	datac => \U3|PWM_Frq\(0),
	datad => \U6|PM2|FrqVal\(0),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(0));

-- Location: LC_X12_Y10_N4
\U6|PM2|Add0~78\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~78_combout\ = (\U6|PM2|T_Frq\(1) $ ((!\U6|PM2|Add0~68\)))
-- \U6|PM2|Add0~80\ = CARRY(((!\U6|PM2|T_Frq\(1) & !\U6|PM2|Add0~68COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(1),
	cin0 => \U6|PM2|Add0~68\,
	cin1 => \U6|PM2|Add0~68COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~78_combout\,
	cout => \U6|PM2|Add0~80\);

-- Location: LC_X11_Y6_N4
\U2|IO_DAT_WR[1]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(1) = ((\U2|IO_RDY_WR~1_combout\ & (\AD~6\)) # (!\U2|IO_RDY_WR~1_combout\ & ((\U2|IO_DAT_WR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AD~6\,
	datac => \U2|IO_DAT_WR\(1),
	datad => \U2|IO_RDY_WR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(1));

-- Location: LC_X11_Y8_N8
\U3|sPWM_Frq[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(1) = (\U3|sPWM_Frq[0]~3_combout\ & (((\U2|IO_DAT_WR\(1))))) # (!\U3|sPWM_Frq[0]~3_combout\ & (((\U3|sPWM_Frq\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Frq[0]~3_combout\,
	datac => \U2|IO_DAT_WR\(1),
	datad => \U3|sPWM_Frq\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(1));

-- Location: LC_X11_Y8_N0
\U3|PWM_Frq[1]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(1) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sPWM_Frq\(1))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(1));

-- Location: LC_X12_Y8_N0
\U6|PM2|FrqVal[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(1) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Frq\(1))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|FrqVal\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(1),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|FrqVal\(1),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(1));

-- Location: LC_X12_Y8_N1
\U6|PM2|T_Frq[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(1) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(1))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~78_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(1), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~78_combout\,
	datac => \U3|PWM_Frq\(1),
	datad => \U6|PM2|FrqVal\(1),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(1));

-- Location: LC_X12_Y10_N5
\U6|PM2|Add0~72\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~72_combout\ = (\U6|PM2|T_Frq\(2) $ ((\U6|PM2|Add0~80\)))
-- \U6|PM2|Add0~74\ = CARRY(((\U6|PM2|T_Frq\(2)) # (!\U6|PM2|Add0~80\)))
-- \U6|PM2|Add0~74COUT1_98\ = CARRY(((\U6|PM2|T_Frq\(2)) # (!\U6|PM2|Add0~80\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(2),
	cin => \U6|PM2|Add0~80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~72_combout\,
	cout0 => \U6|PM2|Add0~74\,
	cout1 => \U6|PM2|Add0~74COUT1_98\);

-- Location: LC_X10_Y8_N8
\U2|IO_DAT_WR[2]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(2) = ((\U2|IO_RDY_WR~1_combout\ & (\AD~5\)) # (!\U2|IO_RDY_WR~1_combout\ & ((\U2|IO_DAT_WR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \AD~5\,
	datac => \U2|IO_RDY_WR~1_combout\,
	datad => \U2|IO_DAT_WR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(2));

-- Location: LC_X11_Y8_N1
\U3|sPWM_Frq[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(2) = ((\U3|sPWM_Frq[0]~3_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|sPWM_Frq[0]~3_combout\ & ((\U3|sPWM_Frq\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(2),
	datac => \U3|sPWM_Frq[0]~3_combout\,
	datad => \U3|sPWM_Frq\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(2));

-- Location: LC_X11_Y8_N2
\U3|PWM_Frq[2]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(2) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sPWM_Frq\(2))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(2));

-- Location: LC_X12_Y10_N0
\U6|PM2|FrqVal[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(2) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Frq\(2))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|FrqVal\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(2),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|FrqVal\(2),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(2));

-- Location: LC_X12_Y10_N1
\U6|PM2|T_Frq[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(2) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(2))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~72_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(2), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|Add0~72_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U3|PWM_Frq\(2),
	datad => \U6|PM2|FrqVal\(2),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(2));

-- Location: LC_X12_Y10_N6
\U6|PM2|Add0~60\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~60_combout\ = (\U6|PM2|T_Frq\(3) $ ((!(!\U6|PM2|Add0~80\ & \U6|PM2|Add0~74\) # (\U6|PM2|Add0~80\ & \U6|PM2|Add0~74COUT1_98\))))
-- \U6|PM2|Add0~62\ = CARRY(((!\U6|PM2|T_Frq\(3) & !\U6|PM2|Add0~74\)))
-- \U6|PM2|Add0~62COUT1_100\ = CARRY(((!\U6|PM2|T_Frq\(3) & !\U6|PM2|Add0~74COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(3),
	cin => \U6|PM2|Add0~80\,
	cin0 => \U6|PM2|Add0~74\,
	cin1 => \U6|PM2|Add0~74COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~60_combout\,
	cout0 => \U6|PM2|Add0~62\,
	cout1 => \U6|PM2|Add0~62COUT1_100\);

-- Location: LC_X11_Y8_N3
\U3|sPWM_Frq[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(3) = ((\U3|sPWM_Frq[0]~3_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sPWM_Frq[0]~3_combout\ & (\U3|sPWM_Frq\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Frq\(3),
	datac => \U3|sPWM_Frq[0]~3_combout\,
	datad => \U2|IO_DAT_WR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(3));

-- Location: LC_X11_Y8_N4
\U3|PWM_Frq[3]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(3) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sPWM_Frq\(3))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(3));

-- Location: LC_X12_Y8_N7
\U6|PM2|FrqVal[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(3) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Frq\(3))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|FrqVal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(3),
	datac => \U6|PM2|FrqVal\(3),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(3));

-- Location: LC_X12_Y8_N8
\U6|PM2|T_Frq[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(3) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(3))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~60_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(3), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~60_combout\,
	datac => \U3|PWM_Frq\(3),
	datad => \U6|PM2|FrqVal\(3),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(3));

-- Location: LC_X12_Y10_N7
\U6|PM2|Add0~54\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~54_combout\ = \U6|PM2|T_Frq\(4) $ (((((!\U6|PM2|Add0~80\ & \U6|PM2|Add0~62\) # (\U6|PM2|Add0~80\ & \U6|PM2|Add0~62COUT1_100\)))))
-- \U6|PM2|Add0~56\ = CARRY((\U6|PM2|T_Frq\(4)) # ((!\U6|PM2|Add0~62\)))
-- \U6|PM2|Add0~56COUT1_102\ = CARRY((\U6|PM2|T_Frq\(4)) # ((!\U6|PM2|Add0~62COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(4),
	cin => \U6|PM2|Add0~80\,
	cin0 => \U6|PM2|Add0~62\,
	cin1 => \U6|PM2|Add0~62COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~54_combout\,
	cout0 => \U6|PM2|Add0~56\,
	cout1 => \U6|PM2|Add0~56COUT1_102\);

-- Location: LC_X10_Y6_N5
\U2|IO_DAT_WR[4]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(4) = ((\U2|IO_RDY_WR~1_combout\ & ((\AD~3\))) # (!\U2|IO_RDY_WR~1_combout\ & (\U2|IO_DAT_WR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(4),
	datac => \AD~3\,
	datad => \U2|IO_RDY_WR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(4));

-- Location: LC_X12_Y9_N8
\U3|sPWM_Frq[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(4) = ((\U3|sPWM_Frq[0]~3_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sPWM_Frq[0]~3_combout\ & (\U3|sPWM_Frq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Frq\(4),
	datab => \U2|IO_DAT_WR\(4),
	datad => \U3|sPWM_Frq[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(4));

-- Location: LC_X12_Y9_N9
\U3|PWM_Frq[4]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(4) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sPWM_Frq\(4))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(4));

-- Location: LC_X12_Y9_N2
\U6|PM2|FrqVal[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(4) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Frq\(4))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|FrqVal\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(4),
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U6|PM2|FrqVal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(4));

-- Location: LC_X12_Y9_N6
\U6|PM2|T_Frq[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(4) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(4))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~54_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(4), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~54_combout\,
	datac => \U3|PWM_Frq\(4),
	datad => \U6|PM2|FrqVal\(4),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(4));

-- Location: LC_X12_Y10_N8
\U6|PM2|Add0~48\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~48_combout\ = (\U6|PM2|T_Frq\(5) $ ((!(!\U6|PM2|Add0~80\ & \U6|PM2|Add0~56\) # (\U6|PM2|Add0~80\ & \U6|PM2|Add0~56COUT1_102\))))
-- \U6|PM2|Add0~50\ = CARRY(((!\U6|PM2|T_Frq\(5) & !\U6|PM2|Add0~56\)))
-- \U6|PM2|Add0~50COUT1_104\ = CARRY(((!\U6|PM2|T_Frq\(5) & !\U6|PM2|Add0~56COUT1_102\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(5),
	cin => \U6|PM2|Add0~80\,
	cin0 => \U6|PM2|Add0~56\,
	cin1 => \U6|PM2|Add0~56COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~48_combout\,
	cout0 => \U6|PM2|Add0~50\,
	cout1 => \U6|PM2|Add0~50COUT1_104\);

-- Location: LC_X12_Y4_N4
\U3|sPWM_Frq[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(5) = ((\U3|sPWM_Frq[0]~3_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sPWM_Frq[0]~3_combout\ & (\U3|sPWM_Frq\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Frq\(5),
	datac => \U2|IO_DAT_WR\(5),
	datad => \U3|sPWM_Frq[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(5));

-- Location: LC_X12_Y4_N1
\U3|PWM_Frq[5]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(5) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sPWM_Frq\(5))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sPWM_Frq\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(5));

-- Location: LC_X12_Y9_N4
\U6|PM2|FrqVal[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(5) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Frq\(5)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|FrqVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|FrqVal\(5),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(5));

-- Location: LC_X12_Y9_N5
\U6|PM2|T_Frq[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(5) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(5))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~48_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(5), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~48_combout\,
	datac => \U3|PWM_Frq\(5),
	datad => \U6|PM2|FrqVal\(5),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(5));

-- Location: LC_X12_Y10_N9
\U6|PM2|Add0~42\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~42_combout\ = (\U6|PM2|T_Frq\(6) $ (((!\U6|PM2|Add0~80\ & \U6|PM2|Add0~50\) # (\U6|PM2|Add0~80\ & \U6|PM2|Add0~50COUT1_104\))))
-- \U6|PM2|Add0~44\ = CARRY(((\U6|PM2|T_Frq\(6)) # (!\U6|PM2|Add0~50COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(6),
	cin => \U6|PM2|Add0~80\,
	cin0 => \U6|PM2|Add0~50\,
	cin1 => \U6|PM2|Add0~50COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~42_combout\,
	cout => \U6|PM2|Add0~44\);

-- Location: LC_X10_Y5_N7
\U2|IO_DAT_WR[6]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(6) = ((\U2|IO_RDY_WR~1_combout\ & ((\AD~1\))) # (!\U2|IO_RDY_WR~1_combout\ & (\U2|IO_DAT_WR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_DAT_WR\(6),
	datac => \U2|IO_RDY_WR~1_combout\,
	datad => \AD~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(6));

-- Location: LC_X11_Y8_N6
\U3|sPWM_Frq[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(6) = (\U3|sPWM_Frq[0]~3_combout\ & (((\U2|IO_DAT_WR\(6))))) # (!\U3|sPWM_Frq[0]~3_combout\ & (((\U3|sPWM_Frq\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Frq[0]~3_combout\,
	datac => \U3|sPWM_Frq\(6),
	datad => \U2|IO_DAT_WR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(6));

-- Location: LC_X11_Y8_N7
\U3|PWM_Frq[6]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(6) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sPWM_Frq\(6))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(6));

-- Location: LC_X12_Y8_N9
\U6|PM2|FrqVal[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(6) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Frq\(6)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|FrqVal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|FrqVal\(6),
	datac => \U3|PWM_Frq\(6),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(6));

-- Location: LC_X12_Y8_N2
\U6|PM2|T_Frq[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(6) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(6))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~42_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(6), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~42_combout\,
	datac => \U3|PWM_Frq\(6),
	datad => \U6|PM2|FrqVal\(6),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(6));

-- Location: LC_X13_Y10_N0
\U6|PM2|Add0~36\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~36_combout\ = \U6|PM2|T_Frq\(7) $ ((((!\U6|PM2|Add0~44\))))
-- \U6|PM2|Add0~38\ = CARRY((!\U6|PM2|T_Frq\(7) & ((!\U6|PM2|Add0~44\))))
-- \U6|PM2|Add0~38COUT1_106\ = CARRY((!\U6|PM2|T_Frq\(7) & ((!\U6|PM2|Add0~44\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(7),
	cin => \U6|PM2|Add0~44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~36_combout\,
	cout0 => \U6|PM2|Add0~38\,
	cout1 => \U6|PM2|Add0~38COUT1_106\);

-- Location: LC_X8_Y8_N2
\U2|IO_DAT_WR[7]\ : maxv_lcell
-- Equation(s):
-- \U2|IO_DAT_WR\(7) = ((\U2|IO_RDY_WR~1_combout\ & (\AD~0\)) # (!\U2|IO_RDY_WR~1_combout\ & ((\U2|IO_DAT_WR\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AD~0\,
	datac => \U2|IO_RDY_WR~1_combout\,
	datad => \U2|IO_DAT_WR\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_DAT_WR\(7));

-- Location: LC_X11_Y4_N6
\U3|sPWM_Frq[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(7) = ((\U3|sPWM_Frq[0]~3_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sPWM_Frq[0]~3_combout\ & (\U3|sPWM_Frq\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Frq\(7),
	datac => \U2|IO_DAT_WR\(7),
	datad => \U3|sPWM_Frq[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(7));

-- Location: LC_X11_Y4_N7
\U3|PWM_Frq[7]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(7) = DFFEAS((((\U3|sPWM_Frq\(7))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(7));

-- Location: LC_X12_Y6_N0
\U6|PM2|FrqVal[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(7) = ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Frq\(7))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|FrqVal\(7))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddf5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(7),
	datac => \U6|PM2|FrqVal\(7),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(7));

-- Location: LC_X12_Y6_N9
\U6|PM2|T_Frq[7]~11\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[7]~11_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Frq\(7) & (\U3|sWr_FAN~2\ $ (\U6|PM2|WrPrev~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(7),
	datac => \U3|sWr_FAN~2\,
	datad => \U6|PM2|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[7]~11_combout\);

-- Location: LC_X12_Y6_N4
\U6|PM2|T_Frq[7]~12\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[7]~12_combout\ = ((\U3|PWM_Frq\(7) & (\U3|sWr_FAN~2\ $ (\U6|PM2|WrPrev~regout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(7),
	datac => \U3|sWr_FAN~2\,
	datad => \U6|PM2|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[7]~12_combout\);

-- Location: LC_X12_Y6_N1
\U6|PM2|T_Frq[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(7) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(7))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~36_combout\)), GLOBAL(\Clk~combout\), !\U6|PM2|T_Frq[7]~11_combout\, , , VCC, \U6|PM2|T_Frq[7]~12_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~36_combout\,
	datac => VCC,
	datad => \U6|PM2|FrqVal\(7),
	aclr => \U6|PM2|T_Frq[7]~11_combout\,
	aload => \U6|PM2|T_Frq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(7));

-- Location: LC_X13_Y10_N1
\U6|PM2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~30_combout\ = \U6|PM2|T_Frq\(8) $ (((((!\U6|PM2|Add0~44\ & \U6|PM2|Add0~38\) # (\U6|PM2|Add0~44\ & \U6|PM2|Add0~38COUT1_106\)))))
-- \U6|PM2|Add0~32\ = CARRY((\U6|PM2|T_Frq\(8)) # ((!\U6|PM2|Add0~38\)))
-- \U6|PM2|Add0~32COUT1_108\ = CARRY((\U6|PM2|T_Frq\(8)) # ((!\U6|PM2|Add0~38COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(8),
	cin => \U6|PM2|Add0~44\,
	cin0 => \U6|PM2|Add0~38\,
	cin1 => \U6|PM2|Add0~38COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~30_combout\,
	cout0 => \U6|PM2|Add0~32\,
	cout1 => \U6|PM2|Add0~32COUT1_108\);

-- Location: LC_X11_Y6_N5
\U3|sPWM_Frq[8]~4\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq[8]~4_combout\ = (!\U2|IO_ADDR\(0) & (\U3|sWr_timer~1_combout\ & (\U2|IO_ADDR\(2) & \U2|IO_ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U3|sWr_timer~1_combout\,
	datac => \U2|IO_ADDR\(2),
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq[8]~4_combout\);

-- Location: LC_X12_Y6_N6
\U3|sPWM_Frq[8]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(8) = ((\U3|sPWM_Frq[8]~4_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|sPWM_Frq[8]~4_combout\ & ((\U3|sPWM_Frq\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(0),
	datac => \U3|sPWM_Frq\(8),
	datad => \U3|sPWM_Frq[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(8));

-- Location: LC_X12_Y6_N7
\U3|PWM_Frq[8]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(8) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sPWM_Frq\(8))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(8));

-- Location: LC_X12_Y8_N5
\U6|PM2|FrqVal[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(8) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Frq\(8))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|FrqVal\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(8),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|FrqVal\(8),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(8));

-- Location: LC_X12_Y8_N6
\U6|PM2|T_Frq[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(8) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(8))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~30_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(8), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|Add0~30_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U3|PWM_Frq\(8),
	datad => \U6|PM2|FrqVal\(8),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(8));

-- Location: LC_X13_Y10_N2
\U6|PM2|Add0~24\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~24_combout\ = (\U6|PM2|T_Frq\(9) $ ((!(!\U6|PM2|Add0~44\ & \U6|PM2|Add0~32\) # (\U6|PM2|Add0~44\ & \U6|PM2|Add0~32COUT1_108\))))
-- \U6|PM2|Add0~26\ = CARRY(((!\U6|PM2|T_Frq\(9) & !\U6|PM2|Add0~32\)))
-- \U6|PM2|Add0~26COUT1_110\ = CARRY(((!\U6|PM2|T_Frq\(9) & !\U6|PM2|Add0~32COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(9),
	cin => \U6|PM2|Add0~44\,
	cin0 => \U6|PM2|Add0~32\,
	cin1 => \U6|PM2|Add0~32COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~24_combout\,
	cout0 => \U6|PM2|Add0~26\,
	cout1 => \U6|PM2|Add0~26COUT1_110\);

-- Location: LC_X11_Y6_N3
\U3|sPWM_Frq[9]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(9) = ((\U3|sPWM_Frq[8]~4_combout\ & (\U2|IO_DAT_WR\(1))) # (!\U3|sPWM_Frq[8]~4_combout\ & ((\U3|sPWM_Frq\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(1),
	datac => \U3|sPWM_Frq[8]~4_combout\,
	datad => \U3|sPWM_Frq\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(9));

-- Location: LC_X11_Y6_N0
\U3|PWM_Frq[9]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(9) = DFFEAS((((\U3|sPWM_Frq\(9)))) # (!\CPLD_INT~combout\), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(9));

-- Location: LC_X15_Y8_N6
\U6|PM2|FrqVal[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(9) = ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Frq\(9)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|FrqVal\(9)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|FrqVal\(9),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(9));

-- Location: LC_X15_Y8_N1
\U6|PM2|T_Frq[9]~8\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[9]~8_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Frq\(9) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0408",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|WrPrev~regout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|PWM_Frq\(9),
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[9]~8_combout\);

-- Location: LC_X15_Y8_N4
\U6|PM2|T_Frq[9]~9\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[9]~9_combout\ = ((\U3|PWM_Frq\(9) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "73b3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|WrPrev~regout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|PWM_Frq\(9),
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[9]~9_combout\);

-- Location: LC_X15_Y8_N7
\U6|PM2|T_Frq[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(9) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(9))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~24_combout\)), GLOBAL(\Clk~combout\), !\U6|PM2|T_Frq[9]~8_combout\, , , VCC, \U6|PM2|T_Frq[9]~9_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~24_combout\,
	datac => VCC,
	datad => \U6|PM2|FrqVal\(9),
	aclr => \U6|PM2|T_Frq[9]~8_combout\,
	aload => \U6|PM2|T_Frq[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(9));

-- Location: LC_X13_Y10_N3
\U6|PM2|Add0~18\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~18_combout\ = (\U6|PM2|T_Frq\(10) $ (((!\U6|PM2|Add0~44\ & \U6|PM2|Add0~26\) # (\U6|PM2|Add0~44\ & \U6|PM2|Add0~26COUT1_110\))))
-- \U6|PM2|Add0~20\ = CARRY(((\U6|PM2|T_Frq\(10)) # (!\U6|PM2|Add0~26\)))
-- \U6|PM2|Add0~20COUT1_112\ = CARRY(((\U6|PM2|T_Frq\(10)) # (!\U6|PM2|Add0~26COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(10),
	cin => \U6|PM2|Add0~44\,
	cin0 => \U6|PM2|Add0~26\,
	cin1 => \U6|PM2|Add0~26COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~18_combout\,
	cout0 => \U6|PM2|Add0~20\,
	cout1 => \U6|PM2|Add0~20COUT1_112\);

-- Location: LC_X14_Y6_N2
\U3|sPWM_Frq[10]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(10) = ((\U3|sPWM_Frq[8]~4_combout\ & ((\U2|IO_DAT_WR\(2)))) # (!\U3|sPWM_Frq[8]~4_combout\ & (\U3|sPWM_Frq\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Frq\(10),
	datac => \U2|IO_DAT_WR\(2),
	datad => \U3|sPWM_Frq[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(10));

-- Location: LC_X14_Y6_N3
\U3|PWM_Frq[10]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(10) = DFFEAS((((\U3|sPWM_Frq\(10)))) # (!\CPLD_INT~combout\), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(10));

-- Location: LC_X13_Y8_N1
\U6|PM2|FrqVal[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(10) = ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Frq\(10)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|FrqVal\(10)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|FrqVal\(10),
	datac => \U3|PWM_Frq\(10),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(10));

-- Location: LC_X13_Y8_N3
\U6|PM2|T_Frq[10]~6\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[10]~6_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Frq\(10) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(10),
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[10]~6_combout\);

-- Location: LC_X13_Y8_N9
\U6|PM2|T_Frq[10]~7\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[10]~7_combout\ = ((\U3|PWM_Frq\(10) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(10),
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[10]~7_combout\);

-- Location: LC_X13_Y8_N2
\U6|PM2|T_Frq[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(10) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(10))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~18_combout\)), GLOBAL(\Clk~combout\), !\U6|PM2|T_Frq[10]~6_combout\, , , VCC, \U6|PM2|T_Frq[10]~7_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~18_combout\,
	datac => VCC,
	datad => \U6|PM2|FrqVal\(10),
	aclr => \U6|PM2|T_Frq[10]~6_combout\,
	aload => \U6|PM2|T_Frq[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(10));

-- Location: LC_X13_Y10_N4
\U6|PM2|Add0~12\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~12_combout\ = \U6|PM2|T_Frq\(11) $ ((((!(!\U6|PM2|Add0~44\ & \U6|PM2|Add0~20\) # (\U6|PM2|Add0~44\ & \U6|PM2|Add0~20COUT1_112\)))))
-- \U6|PM2|Add0~14\ = CARRY((!\U6|PM2|T_Frq\(11) & ((!\U6|PM2|Add0~20COUT1_112\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(11),
	cin => \U6|PM2|Add0~44\,
	cin0 => \U6|PM2|Add0~20\,
	cin1 => \U6|PM2|Add0~20COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~12_combout\,
	cout => \U6|PM2|Add0~14\);

-- Location: LC_X16_Y3_N1
\U3|sPWM_Frq[11]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(11) = ((\U3|sPWM_Frq[8]~4_combout\ & (\U2|IO_DAT_WR\(3))) # (!\U3|sPWM_Frq[8]~4_combout\ & ((\U3|sPWM_Frq\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(3),
	datac => \U3|sPWM_Frq[8]~4_combout\,
	datad => \U3|sPWM_Frq\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(11));

-- Location: LC_X16_Y3_N2
\U3|PWM_Frq[11]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(11) = DFFEAS((((\U3|sPWM_Frq\(11))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(11),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(11));

-- Location: LC_X12_Y7_N1
\U6|PM2|FrqVal[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(11) = ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Frq\(11))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|FrqVal\(11))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(11),
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U6|PM2|FrqVal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(11));

-- Location: LC_X12_Y7_N3
\U6|PM2|T_Frq[11]~4\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[11]~4_combout\ = (!\U3|PWM_Frq\(11) & (\CPLD_INT~combout\ & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|WrPrev~regout\,
	datab => \U3|PWM_Frq\(11),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[11]~4_combout\);

-- Location: LC_X12_Y7_N6
\U6|PM2|T_Frq[11]~5\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[11]~5_combout\ = ((\U3|PWM_Frq\(11) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|WrPrev~regout\,
	datab => \U3|PWM_Frq\(11),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[11]~5_combout\);

-- Location: LC_X12_Y7_N2
\U6|PM2|T_Frq[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(11) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(11))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~12_combout\)), GLOBAL(\Clk~combout\), !\U6|PM2|T_Frq[11]~4_combout\, , , VCC, \U6|PM2|T_Frq[11]~5_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add0~12_combout\,
	datac => VCC,
	datad => \U6|PM2|FrqVal\(11),
	aclr => \U6|PM2|T_Frq[11]~4_combout\,
	aload => \U6|PM2|T_Frq[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(11));

-- Location: LC_X13_Y10_N5
\U6|PM2|Add0~6\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~6_combout\ = (\U6|PM2|T_Frq\(12) $ ((\U6|PM2|Add0~14\)))
-- \U6|PM2|Add0~8\ = CARRY(((\U6|PM2|T_Frq\(12)) # (!\U6|PM2|Add0~14\)))
-- \U6|PM2|Add0~8COUT1_114\ = CARRY(((\U6|PM2|T_Frq\(12)) # (!\U6|PM2|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(12),
	cin => \U6|PM2|Add0~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~6_combout\,
	cout0 => \U6|PM2|Add0~8\,
	cout1 => \U6|PM2|Add0~8COUT1_114\);

-- Location: LC_X11_Y4_N2
\U3|sPWM_Frq[12]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(12) = ((\U3|sPWM_Frq[8]~4_combout\ & (\U2|IO_DAT_WR\(4))) # (!\U3|sPWM_Frq[8]~4_combout\ & ((\U3|sPWM_Frq\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(4),
	datac => \U3|sPWM_Frq[8]~4_combout\,
	datad => \U3|sPWM_Frq\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(12));

-- Location: LC_X11_Y4_N5
\U3|PWM_Frq[12]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(12) = DFFEAS((((\U3|sPWM_Frq\(12))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Frq\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(12));

-- Location: LC_X13_Y10_N8
\U6|PM2|FrqVal[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(12) = ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Frq\(12)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|FrqVal\(12)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|FrqVal\(12),
	datab => \U6|PM2|PWM_G~0_combout\,
	datac => \U3|PWM_Frq\(12),
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(12));

-- Location: LC_X13_Y10_N9
\U6|PM2|T_Frq[12]~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[12]~2_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Frq\(12) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0408",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|WrPrev~regout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|PWM_Frq\(12),
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[12]~2_combout\);

-- Location: LC_X12_Y10_N2
\U6|PM2|T_Frq[12]~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[12]~3_combout\ = ((\U3|PWM_Frq\(12) & (\U3|sWr_FAN~2\ $ (\U6|PM2|WrPrev~regout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWr_FAN~2\,
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|PWM_Frq\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[12]~3_combout\);

-- Location: LC_X13_Y10_N7
\U6|PM2|T_Frq[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(12) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(12))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~6_combout\)), GLOBAL(\Clk~combout\), !\U6|PM2|T_Frq[12]~2_combout\, , , VCC, \U6|PM2|T_Frq[12]~3_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|Add0~6_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => VCC,
	datad => \U6|PM2|FrqVal\(12),
	aclr => \U6|PM2|T_Frq[12]~2_combout\,
	aload => \U6|PM2|T_Frq[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(12));

-- Location: LC_X13_Y10_N6
\U6|PM2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add0~0_combout\ = (\U6|PM2|T_Frq\(13) $ ((!(!\U6|PM2|Add0~14\ & \U6|PM2|Add0~8\) # (\U6|PM2|Add0~14\ & \U6|PM2|Add0~8COUT1_114\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Frq\(13),
	cin => \U6|PM2|Add0~14\,
	cin0 => \U6|PM2|Add0~8\,
	cin1 => \U6|PM2|Add0~8COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add0~0_combout\);

-- Location: LC_X14_Y6_N4
\U3|sPWM_Frq[13]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq\(13) = ((\U3|sPWM_Frq[8]~4_combout\ & (\U2|IO_DAT_WR\(5))) # (!\U3|sPWM_Frq[8]~4_combout\ & ((\U3|sPWM_Frq\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(5),
	datac => \U3|sPWM_Frq\(13),
	datad => \U3|sPWM_Frq[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq\(13));

-- Location: LC_X14_Y6_N8
\U3|PWM_Frq[13]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Frq\(13) = DFFEAS((((\U3|sPWM_Frq\(13)))) # (!\CPLD_INT~combout\), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sPWM_Frq\(13),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Frq\(13));

-- Location: LC_X13_Y7_N1
\U6|PM2|FrqVal[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|FrqVal\(13) = ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Frq\(13)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|FrqVal\(13)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|FrqVal\(13),
	datab => \CPLD_INT~combout\,
	datac => \U3|PWM_Frq\(13),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|FrqVal\(13));

-- Location: LC_X13_Y7_N9
\U6|PM2|T_Frq[13]~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[13]~0_combout\ = (!\U3|PWM_Frq\(13) & (\CPLD_INT~combout\ & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(13),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[13]~0_combout\);

-- Location: LC_X13_Y7_N4
\U6|PM2|T_Frq[13]~1\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq[13]~1_combout\ = ((\U3|PWM_Frq\(13) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(13),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Frq[13]~1_combout\);

-- Location: LC_X13_Y7_N2
\U6|PM2|T_Frq[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Frq\(13) = DFFEAS((\U6|PM2|LessThan0~4_combout\ & (((\U6|PM2|FrqVal\(13))))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add0~0_combout\)), GLOBAL(\Clk~combout\), !\U6|PM2|T_Frq[13]~0_combout\, , , VCC, \U6|PM2|T_Frq[13]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|Add0~0_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => VCC,
	datad => \U6|PM2|FrqVal\(13),
	aclr => \U6|PM2|T_Frq[13]~0_combout\,
	aload => \U6|PM2|T_Frq[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Frq\(13));

-- Location: LC_X13_Y8_N7
\U6|PM2|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan0~1_combout\ = (!\U6|PM2|T_Frq\(6) & (!\U6|PM2|T_Frq\(8) & (!\U6|PM2|T_Frq\(7) & !\U6|PM2|T_Frq\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(6),
	datab => \U6|PM2|T_Frq\(8),
	datac => \U6|PM2|T_Frq\(7),
	datad => \U6|PM2|T_Frq\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan0~1_combout\);

-- Location: LC_X13_Y8_N0
\U6|PM2|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan0~0_combout\ = (!\U6|PM2|T_Frq\(11) & (!\U6|PM2|T_Frq\(10) & (!\U6|PM2|T_Frq\(9) & !\U6|PM2|T_Frq\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(11),
	datab => \U6|PM2|T_Frq\(10),
	datac => \U6|PM2|T_Frq\(9),
	datad => \U6|PM2|T_Frq\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan0~0_combout\);

-- Location: LC_X13_Y8_N4
\U6|PM2|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan0~2_combout\ = (((!\U6|PM2|T_Frq\(3) & !\U6|PM2|T_Frq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U6|PM2|T_Frq\(3),
	datad => \U6|PM2|T_Frq\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan0~2_combout\);

-- Location: LC_X13_Y8_N5
\U6|PM2|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan0~3_combout\ = (!\U6|PM2|T_Frq\(1) & (!\U6|PM2|T_Frq\(0) & (!\U6|PM2|T_Frq\(2) & \U6|PM2|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(1),
	datab => \U6|PM2|T_Frq\(0),
	datac => \U6|PM2|T_Frq\(2),
	datad => \U6|PM2|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan0~3_combout\);

-- Location: LC_X13_Y8_N6
\U6|PM2|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan0~4_combout\ = (\U6|PM2|T_Frq\(13)) # ((\U6|PM2|LessThan0~1_combout\ & (\U6|PM2|LessThan0~0_combout\ & \U6|PM2|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Frq\(13),
	datab => \U6|PM2|LessThan0~1_combout\,
	datac => \U6|PM2|LessThan0~0_combout\,
	datad => \U6|PM2|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan0~4_combout\);

-- Location: LC_X14_Y9_N1
\U3|sPWM_Duty[0]~2\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty[0]~2_combout\ = (\U2|IO_ADDR\(1) & (\U2|IO_ADDR\(2) & (\U3|sWr_timer~1_combout\ & \U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U2|IO_ADDR\(2),
	datac => \U3|sWr_timer~1_combout\,
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty[0]~2_combout\);

-- Location: LC_X13_Y6_N8
\U3|sPWM_Duty[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(0) = ((\U3|sPWM_Duty[0]~2_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|sPWM_Duty[0]~2_combout\ & ((\U3|sPWM_Duty\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_DAT_WR\(0),
	datac => \U3|sPWM_Duty[0]~2_combout\,
	datad => \U3|sPWM_Duty\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(0));

-- Location: LC_X13_Y6_N9
\U3|PWM_Duty[0]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(0) = DFFEAS((((\CPLD_INT~combout\ & \U3|sPWM_Duty\(0)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(0));

-- Location: LC_X15_Y10_N3
\U6|PM2|Add1~65\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~65_combout\ = ((!\U6|PM2|T_Duty\(0)))
-- \U6|PM2|Add1~67\ = CARRY(((\U6|PM2|T_Duty\(0))))
-- \U6|PM2|Add1~67COUT1_82\ = CARRY(((\U6|PM2|T_Duty\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Duty\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~65_combout\,
	cout0 => \U6|PM2|Add1~67\,
	cout1 => \U6|PM2|Add1~67COUT1_82\);

-- Location: LC_X16_Y9_N2
\U6|PM2|DutyVal[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(0) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Duty\(0))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|DutyVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(0),
	datab => \U6|PM2|DutyVal\(0),
	datac => \CPLD_INT~combout\,
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(0));

-- Location: LC_X16_Y9_N3
\U6|PM2|T_Duty~26\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~26_combout\ = (\U6|PM2|Add1~65_combout\ & ((\U6|PM2|T_Duty~0\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(0))))) # (!\U6|PM2|Add1~65_combout\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|Add1~65_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~26_combout\);

-- Location: LC_X16_Y9_N4
\U6|PM2|T_Duty[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(0) = DFFEAS((((\U6|PM2|T_Duty~26_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(0), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(0),
	datad => \U6|PM2|T_Duty~26_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(0));

-- Location: LC_X14_Y9_N8
\U3|sPWM_Duty[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(1) = ((\U3|sPWM_Duty[0]~2_combout\ & (\U2|IO_DAT_WR\(1))) # (!\U3|sPWM_Duty[0]~2_combout\ & ((\U3|sPWM_Duty\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Duty[0]~2_combout\,
	datac => \U2|IO_DAT_WR\(1),
	datad => \U3|sPWM_Duty\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(1));

-- Location: LC_X14_Y9_N9
\U3|PWM_Duty[1]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(1) = DFFEAS((((\CPLD_INT~combout\ & \U3|sPWM_Duty\(1)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(1));

-- Location: LC_X15_Y10_N4
\U6|PM2|Add1~60\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~60_combout\ = (\U6|PM2|T_Duty\(1) $ ((!\U6|PM2|Add1~67\)))
-- \U6|PM2|Add1~62\ = CARRY(((!\U6|PM2|T_Duty\(1) & !\U6|PM2|Add1~67COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Duty\(1),
	cin0 => \U6|PM2|Add1~67\,
	cin1 => \U6|PM2|Add1~67COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~60_combout\,
	cout => \U6|PM2|Add1~62\);

-- Location: LC_X13_Y9_N5
\U6|PM2|DutyVal[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(1) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Duty\(1))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|DutyVal\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(1),
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U6|PM2|DutyVal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(1));

-- Location: LC_X13_Y9_N6
\U6|PM2|T_Duty~25\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~25_combout\ = (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(1)) # ((\U6|PM2|Add1~60_combout\ & \U6|PM2|T_Duty~0\)))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add1~60_combout\ & (\U6|PM2|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add1~60_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~25_combout\);

-- Location: LC_X13_Y9_N7
\U6|PM2|T_Duty[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(1) = DFFEAS((((\U6|PM2|T_Duty~25_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(1), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(1),
	datad => \U6|PM2|T_Duty~25_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(1));

-- Location: LC_X14_Y9_N2
\U3|sPWM_Duty[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(4) = ((\U3|sPWM_Duty[0]~2_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sPWM_Duty[0]~2_combout\ & (\U3|sPWM_Duty\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Duty[0]~2_combout\,
	datac => \U3|sPWM_Duty\(4),
	datad => \U2|IO_DAT_WR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(4));

-- Location: LC_X14_Y9_N3
\U3|PWM_Duty[4]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(4) = DFFEAS((((\CPLD_INT~combout\ & \U3|sPWM_Duty\(4)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(4));

-- Location: LC_X15_Y9_N0
\U3|sPWM_Duty[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(3) = ((\U3|sPWM_Duty[0]~2_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sPWM_Duty[0]~2_combout\ & (\U3|sPWM_Duty\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Duty\(3),
	datac => \U3|sPWM_Duty[0]~2_combout\,
	datad => \U2|IO_DAT_WR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(3));

-- Location: LC_X15_Y9_N1
\U3|PWM_Duty[3]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(3) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sPWM_Duty\(3))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(3));

-- Location: LC_X13_Y9_N8
\U3|sPWM_Duty[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(2) = ((\U3|sPWM_Duty[0]~2_combout\ & ((\U2|IO_DAT_WR\(2)))) # (!\U3|sPWM_Duty[0]~2_combout\ & (\U3|sPWM_Duty\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Duty\(2),
	datab => \U2|IO_DAT_WR\(2),
	datad => \U3|sPWM_Duty[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(2));

-- Location: LC_X13_Y9_N9
\U3|PWM_Duty[2]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(2) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sPWM_Duty\(2))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(2));

-- Location: LC_X15_Y10_N5
\U6|PM2|Add1~55\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~55_combout\ = (\U6|PM2|T_Duty\(2) $ ((\U6|PM2|Add1~62\)))
-- \U6|PM2|Add1~57\ = CARRY(((\U6|PM2|T_Duty\(2)) # (!\U6|PM2|Add1~62\)))
-- \U6|PM2|Add1~57COUT1_84\ = CARRY(((\U6|PM2|T_Duty\(2)) # (!\U6|PM2|Add1~62\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Duty\(2),
	cin => \U6|PM2|Add1~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~55_combout\,
	cout0 => \U6|PM2|Add1~57\,
	cout1 => \U6|PM2|Add1~57COUT1_84\);

-- Location: LC_X13_Y9_N1
\U6|PM2|DutyVal[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(2) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(2)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|DutyVal\(2),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(2));

-- Location: LC_X13_Y9_N2
\U6|PM2|T_Duty~24\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~24_combout\ = (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(2)) # ((\U6|PM2|Add1~55_combout\ & \U6|PM2|T_Duty~0\)))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add1~55_combout\ & (\U6|PM2|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add1~55_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~24_combout\);

-- Location: LC_X13_Y9_N0
\U6|PM2|T_Duty[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(2) = DFFEAS((((\U6|PM2|T_Duty~24_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(2), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(2),
	datad => \U6|PM2|T_Duty~24_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(2));

-- Location: LC_X15_Y10_N6
\U6|PM2|Add1~50\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~50_combout\ = \U6|PM2|T_Duty\(3) $ ((((!(!\U6|PM2|Add1~62\ & \U6|PM2|Add1~57\) # (\U6|PM2|Add1~62\ & \U6|PM2|Add1~57COUT1_84\)))))
-- \U6|PM2|Add1~52\ = CARRY((!\U6|PM2|T_Duty\(3) & ((!\U6|PM2|Add1~57\))))
-- \U6|PM2|Add1~52COUT1_86\ = CARRY((!\U6|PM2|T_Duty\(3) & ((!\U6|PM2|Add1~57COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(3),
	cin => \U6|PM2|Add1~62\,
	cin0 => \U6|PM2|Add1~57\,
	cin1 => \U6|PM2|Add1~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~50_combout\,
	cout0 => \U6|PM2|Add1~52\,
	cout1 => \U6|PM2|Add1~52COUT1_86\);

-- Location: LC_X15_Y9_N3
\U6|PM2|DutyVal[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(3) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(3)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|DutyVal\(3),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(3));

-- Location: LC_X15_Y9_N4
\U6|PM2|T_Duty~23\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~23_combout\ = (\U6|PM2|Add1~50_combout\ & ((\U6|PM2|T_Duty~0\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(3))))) # (!\U6|PM2|Add1~50_combout\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|Add1~50_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~23_combout\);

-- Location: LC_X15_Y9_N5
\U6|PM2|T_Duty[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(3) = DFFEAS((((\U6|PM2|T_Duty~23_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(3), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(3),
	datad => \U6|PM2|T_Duty~23_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(3));

-- Location: LC_X15_Y10_N7
\U6|PM2|Add1~45\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~45_combout\ = \U6|PM2|T_Duty\(4) $ (((((!\U6|PM2|Add1~62\ & \U6|PM2|Add1~52\) # (\U6|PM2|Add1~62\ & \U6|PM2|Add1~52COUT1_86\)))))
-- \U6|PM2|Add1~47\ = CARRY((\U6|PM2|T_Duty\(4)) # ((!\U6|PM2|Add1~52\)))
-- \U6|PM2|Add1~47COUT1_88\ = CARRY((\U6|PM2|T_Duty\(4)) # ((!\U6|PM2|Add1~52COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(4),
	cin => \U6|PM2|Add1~62\,
	cin0 => \U6|PM2|Add1~52\,
	cin1 => \U6|PM2|Add1~52COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~45_combout\,
	cout0 => \U6|PM2|Add1~47\,
	cout1 => \U6|PM2|Add1~47COUT1_88\);

-- Location: LC_X15_Y9_N6
\U6|PM2|DutyVal[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(4) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(4)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|DutyVal\(4),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(4));

-- Location: LC_X15_Y9_N7
\U6|PM2|T_Duty~22\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~22_combout\ = (\U6|PM2|Add1~45_combout\ & ((\U6|PM2|T_Duty~0\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(4))))) # (!\U6|PM2|Add1~45_combout\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|Add1~45_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~22_combout\);

-- Location: LC_X15_Y9_N8
\U6|PM2|T_Duty[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(4) = DFFEAS((((\U6|PM2|T_Duty~22_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(4), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(4),
	datad => \U6|PM2|T_Duty~22_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(4));

-- Location: LC_X14_Y8_N7
\U6|PM2|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan1~2_combout\ = (!\U6|PM2|T_Duty\(1) & (!\U6|PM2|T_Duty\(4) & (!\U6|PM2|T_Duty\(3) & !\U6|PM2|T_Duty\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(1),
	datab => \U6|PM2|T_Duty\(4),
	datac => \U6|PM2|T_Duty\(3),
	datad => \U6|PM2|T_Duty\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan1~2_combout\);

-- Location: LC_X15_Y9_N9
\U3|sPWM_Duty[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(5) = ((\U3|sPWM_Duty[0]~2_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sPWM_Duty[0]~2_combout\ & (\U3|sPWM_Duty\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Duty\(5),
	datac => \U3|sPWM_Duty[0]~2_combout\,
	datad => \U2|IO_DAT_WR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(5));

-- Location: LC_X15_Y9_N2
\U3|PWM_Duty[5]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(5) = DFFEAS(((\U3|sPWM_Duty\(5) & ((\CPLD_INT~combout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \U3|sPWM_Duty\(5),
	datad => \CPLD_INT~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(5));

-- Location: LC_X15_Y10_N8
\U6|PM2|Add1~40\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~40_combout\ = (\U6|PM2|T_Duty\(5) $ ((!(!\U6|PM2|Add1~62\ & \U6|PM2|Add1~47\) # (\U6|PM2|Add1~62\ & \U6|PM2|Add1~47COUT1_88\))))
-- \U6|PM2|Add1~42\ = CARRY(((!\U6|PM2|T_Duty\(5) & !\U6|PM2|Add1~47\)))
-- \U6|PM2|Add1~42COUT1_90\ = CARRY(((!\U6|PM2|T_Duty\(5) & !\U6|PM2|Add1~47COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Duty\(5),
	cin => \U6|PM2|Add1~62\,
	cin0 => \U6|PM2|Add1~47\,
	cin1 => \U6|PM2|Add1~47COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~40_combout\,
	cout0 => \U6|PM2|Add1~42\,
	cout1 => \U6|PM2|Add1~42COUT1_90\);

-- Location: LC_X15_Y10_N0
\U6|PM2|DutyVal[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(5) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(5)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|DutyVal\(5),
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(5));

-- Location: LC_X15_Y10_N1
\U6|PM2|T_Duty~21\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~21_combout\ = (\U6|PM2|Add1~40_combout\ & ((\U6|PM2|T_Duty~0\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(5))))) # (!\U6|PM2|Add1~40_combout\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|Add1~40_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~21_combout\);

-- Location: LC_X15_Y10_N2
\U6|PM2|T_Duty[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(5) = DFFEAS((((\U6|PM2|T_Duty~21_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(5), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(5),
	datad => \U6|PM2|T_Duty~21_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(5));

-- Location: LC_X15_Y10_N9
\U6|PM2|Add1~35\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~35_combout\ = \U6|PM2|T_Duty\(6) $ (((((!\U6|PM2|Add1~62\ & \U6|PM2|Add1~42\) # (\U6|PM2|Add1~62\ & \U6|PM2|Add1~42COUT1_90\)))))
-- \U6|PM2|Add1~37\ = CARRY((\U6|PM2|T_Duty\(6)) # ((!\U6|PM2|Add1~42COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(6),
	cin => \U6|PM2|Add1~62\,
	cin0 => \U6|PM2|Add1~42\,
	cin1 => \U6|PM2|Add1~42COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~35_combout\,
	cout => \U6|PM2|Add1~37\);

-- Location: LC_X15_Y5_N1
\U3|sPWM_Duty[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(6) = ((\U3|sPWM_Duty[0]~2_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|sPWM_Duty[0]~2_combout\ & (\U3|sPWM_Duty\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Duty\(6),
	datac => \U3|sPWM_Duty[0]~2_combout\,
	datad => \U2|IO_DAT_WR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(6));

-- Location: LC_X15_Y5_N2
\U3|PWM_Duty[6]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(6) = DFFEAS((((\U3|sPWM_Duty\(6)))) # (!\CPLD_INT~combout\), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(6));

-- Location: LC_X14_Y9_N4
\U6|PM2|DutyVal[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(6) = ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Duty\(6))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|DutyVal\(6))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(6),
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U6|PM2|DutyVal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(6));

-- Location: LC_X14_Y9_N5
\U6|PM2|T_Duty~18\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~18_combout\ = (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(6)) # ((\U6|PM2|Add1~35_combout\ & \U6|PM2|T_Duty~0\)))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|Add1~35_combout\ & (\U6|PM2|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|Add1~35_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~18_combout\);

-- Location: LC_X14_Y9_N0
\U6|PM2|T_Duty[6]~19\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[6]~19_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Duty\(6) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(6),
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[6]~19_combout\);

-- Location: LC_X14_Y9_N7
\U6|PM2|T_Duty[6]~20\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[6]~20_combout\ = ((\U3|PWM_Duty\(6) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(6),
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[6]~20_combout\);

-- Location: LC_X14_Y9_N6
\U6|PM2|T_Duty[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(6) = DFFEAS((((\U6|PM2|T_Duty~18_combout\))), GLOBAL(\Clk~combout\), !\U6|PM2|T_Duty[6]~19_combout\, , , VCC, \U6|PM2|T_Duty[6]~20_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM2|T_Duty~18_combout\,
	aclr => \U6|PM2|T_Duty[6]~19_combout\,
	aload => \U6|PM2|T_Duty[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(6));

-- Location: LC_X15_Y6_N5
\U3|sPWM_Duty[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(7) = ((\U3|sPWM_Duty[0]~2_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sPWM_Duty[0]~2_combout\ & (\U3|sPWM_Duty\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Duty\(7),
	datac => \U2|IO_DAT_WR\(7),
	datad => \U3|sPWM_Duty[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(7));

-- Location: LC_X15_Y6_N6
\U3|PWM_Duty[7]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(7) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sPWM_Duty\(7))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(7));

-- Location: LC_X16_Y10_N0
\U6|PM2|Add1~30\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~30_combout\ = \U6|PM2|T_Duty\(7) $ ((((!\U6|PM2|Add1~37\))))
-- \U6|PM2|Add1~32\ = CARRY((!\U6|PM2|T_Duty\(7) & ((!\U6|PM2|Add1~37\))))
-- \U6|PM2|Add1~32COUT1_92\ = CARRY((!\U6|PM2|T_Duty\(7) & ((!\U6|PM2|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(7),
	cin => \U6|PM2|Add1~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~30_combout\,
	cout0 => \U6|PM2|Add1~32\,
	cout1 => \U6|PM2|Add1~32COUT1_92\);

-- Location: LC_X16_Y9_N6
\U6|PM2|DutyVal[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(7) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(7)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|DutyVal\(7),
	datac => \U3|PWM_Duty\(7),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(7));

-- Location: LC_X16_Y9_N7
\U6|PM2|T_Duty~17\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~17_combout\ = (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(7)) # ((\U6|PM2|T_Duty~0\ & \U6|PM2|Add1~30_combout\)))) # (!\U6|PM2|LessThan0~4_combout\ & (\U6|PM2|T_Duty~0\ & (\U6|PM2|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|LessThan0~4_combout\,
	datab => \U6|PM2|T_Duty~0\,
	datac => \U6|PM2|Add1~30_combout\,
	datad => \U6|PM2|DutyVal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~17_combout\);

-- Location: LC_X16_Y9_N8
\U6|PM2|T_Duty[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(7) = DFFEAS((((\U6|PM2|T_Duty~17_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(7), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(7),
	datad => \U6|PM2|T_Duty~17_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(7));

-- Location: LC_X16_Y10_N1
\U6|PM2|Add1~25\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~25_combout\ = \U6|PM2|T_Duty\(8) $ (((((!\U6|PM2|Add1~37\ & \U6|PM2|Add1~32\) # (\U6|PM2|Add1~37\ & \U6|PM2|Add1~32COUT1_92\)))))
-- \U6|PM2|Add1~27\ = CARRY((\U6|PM2|T_Duty\(8)) # ((!\U6|PM2|Add1~32\)))
-- \U6|PM2|Add1~27COUT1_94\ = CARRY((\U6|PM2|T_Duty\(8)) # ((!\U6|PM2|Add1~32COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(8),
	cin => \U6|PM2|Add1~37\,
	cin0 => \U6|PM2|Add1~32\,
	cin1 => \U6|PM2|Add1~32COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~25_combout\,
	cout0 => \U6|PM2|Add1~27\,
	cout1 => \U6|PM2|Add1~27COUT1_94\);

-- Location: LC_X12_Y3_N3
\U3|sPWM_Duty[8]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(8) = ((\U3|sPWM_Duty[8]~1_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sPWM_Duty[8]~1_combout\ & (\U3|sPWM_Duty\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Duty\(8),
	datac => \U2|IO_DAT_WR\(0),
	datad => \U3|sPWM_Duty[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(8));

-- Location: LC_X12_Y3_N4
\U3|PWM_Duty[8]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(8) = DFFEAS((((\U3|sPWM_Duty\(8))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(8));

-- Location: LC_X11_Y10_N0
\U6|PM2|DutyVal[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(8) = ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Duty\(8))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|DutyVal\(8))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddf5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(8),
	datac => \U6|PM2|DutyVal\(8),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(8));

-- Location: LC_X11_Y10_N1
\U6|PM2|T_Duty~14\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~14_combout\ = (\U6|PM2|Add1~25_combout\ & ((\U6|PM2|T_Duty~0\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(8))))) # (!\U6|PM2|Add1~25_combout\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|Add1~25_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~14_combout\);

-- Location: LC_X11_Y10_N9
\U6|PM2|T_Duty[8]~15\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[8]~15_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Duty\(8) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|WrPrev~regout\,
	datac => \U3|PWM_Duty\(8),
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[8]~15_combout\);

-- Location: LC_X11_Y10_N4
\U6|PM2|T_Duty[8]~16\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[8]~16_combout\ = ((\U3|PWM_Duty\(8) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "75d5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|WrPrev~regout\,
	datac => \U3|PWM_Duty\(8),
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[8]~16_combout\);

-- Location: LC_X11_Y10_N2
\U6|PM2|T_Duty[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(8) = DFFEAS((((\U6|PM2|T_Duty~14_combout\))), GLOBAL(\Clk~combout\), !\U6|PM2|T_Duty[8]~15_combout\, , , VCC, \U6|PM2|T_Duty[8]~16_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM2|T_Duty~14_combout\,
	aclr => \U6|PM2|T_Duty[8]~15_combout\,
	aload => \U6|PM2|T_Duty[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(8));

-- Location: LC_X16_Y10_N2
\U6|PM2|Add1~20\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~20_combout\ = (\U6|PM2|T_Duty\(9) $ ((!(!\U6|PM2|Add1~37\ & \U6|PM2|Add1~27\) # (\U6|PM2|Add1~37\ & \U6|PM2|Add1~27COUT1_94\))))
-- \U6|PM2|Add1~22\ = CARRY(((!\U6|PM2|T_Duty\(9) & !\U6|PM2|Add1~27\)))
-- \U6|PM2|Add1~22COUT1_96\ = CARRY(((!\U6|PM2|T_Duty\(9) & !\U6|PM2|Add1~27COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Duty\(9),
	cin => \U6|PM2|Add1~37\,
	cin0 => \U6|PM2|Add1~27\,
	cin1 => \U6|PM2|Add1~27COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~20_combout\,
	cout0 => \U6|PM2|Add1~22\,
	cout1 => \U6|PM2|Add1~22COUT1_96\);

-- Location: LC_X15_Y8_N8
\U3|sPWM_Duty[9]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(9) = ((\U3|sPWM_Duty[8]~1_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sPWM_Duty[8]~1_combout\ & (\U3|sPWM_Duty\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sPWM_Duty\(9),
	datac => \U2|IO_DAT_WR\(1),
	datad => \U3|sPWM_Duty[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(9));

-- Location: LC_X15_Y8_N9
\U3|PWM_Duty[9]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(9) = DFFEAS((((\U3|sPWM_Duty\(9))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(9));

-- Location: LC_X16_Y8_N0
\U6|PM2|DutyVal[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(9) = ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(9)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(9)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5dd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|DutyVal\(9),
	datac => \U3|PWM_Duty\(9),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(9));

-- Location: LC_X16_Y8_N1
\U6|PM2|T_Duty~11\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~11_combout\ = (\U6|PM2|T_Duty~0\ & ((\U6|PM2|Add1~20_combout\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(9))))) # (!\U6|PM2|T_Duty~0\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty~0\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|Add1~20_combout\,
	datad => \U6|PM2|DutyVal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~11_combout\);

-- Location: LC_X16_Y8_N3
\U6|PM2|T_Duty[9]~12\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[9]~12_combout\ = (!\U3|PWM_Duty\(9) & (\CPLD_INT~combout\ & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(9),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[9]~12_combout\);

-- Location: LC_X16_Y8_N7
\U6|PM2|T_Duty[9]~13\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[9]~13_combout\ = ((\U3|PWM_Duty\(9) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(9),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[9]~13_combout\);

-- Location: LC_X16_Y8_N2
\U6|PM2|T_Duty[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(9) = DFFEAS((((\U6|PM2|T_Duty~11_combout\))), GLOBAL(\Clk~combout\), !\U6|PM2|T_Duty[9]~12_combout\, , , VCC, \U6|PM2|T_Duty[9]~13_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM2|T_Duty~11_combout\,
	aclr => \U6|PM2|T_Duty[9]~12_combout\,
	aload => \U6|PM2|T_Duty[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(9));

-- Location: LC_X13_Y4_N2
\U3|sPWM_Duty[12]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(12) = ((\U3|sPWM_Duty[8]~1_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sPWM_Duty[8]~1_combout\ & (\U3|sPWM_Duty\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sPWM_Duty\(12),
	datac => \U2|IO_DAT_WR\(4),
	datad => \U3|sPWM_Duty[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(12));

-- Location: LC_X13_Y4_N1
\U3|PWM_Duty[12]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(12) = DFFEAS((((\U3|sPWM_Duty\(12))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(12));

-- Location: LC_X14_Y8_N8
\U6|PM2|DutyVal[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(12) = ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(12)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(12)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|DutyVal\(12),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(12));

-- Location: LC_X16_Y10_N5
\U6|PM2|Add1~5\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~5_combout\ = (\U6|PM2|T_Duty\(12) $ ((\U6|PM2|Add1~12\)))
-- \U6|PM2|Add1~7\ = CARRY(((\U6|PM2|T_Duty\(12)) # (!\U6|PM2|Add1~12\)))
-- \U6|PM2|Add1~7COUT1_100\ = CARRY(((\U6|PM2|T_Duty\(12)) # (!\U6|PM2|Add1~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Duty\(12),
	cin => \U6|PM2|Add1~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~5_combout\,
	cout0 => \U6|PM2|Add1~7\,
	cout1 => \U6|PM2|Add1~7COUT1_100\);

-- Location: LC_X14_Y8_N9
\U6|PM2|T_Duty~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~2_combout\ = (\U6|PM2|DutyVal\(12) & ((\U6|PM2|LessThan0~4_combout\) # ((\U6|PM2|T_Duty~0\ & \U6|PM2|Add1~5_combout\)))) # (!\U6|PM2|DutyVal\(12) & (((\U6|PM2|T_Duty~0\ & \U6|PM2|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|DutyVal\(12),
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~2_combout\);

-- Location: LC_X14_Y8_N4
\U6|PM2|T_Duty[12]~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[12]~3_combout\ = (!\U3|PWM_Duty\(12) & (\CPLD_INT~combout\ & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(12),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[12]~3_combout\);

-- Location: LC_X14_Y8_N3
\U6|PM2|T_Duty[12]~4\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[12]~4_combout\ = ((\U3|PWM_Duty\(12) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(12),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[12]~4_combout\);

-- Location: LC_X14_Y8_N2
\U6|PM2|T_Duty[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(12) = DFFEAS((((\U6|PM2|T_Duty~2_combout\))), GLOBAL(\Clk~combout\), !\U6|PM2|T_Duty[12]~3_combout\, , , VCC, \U6|PM2|T_Duty[12]~4_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM2|T_Duty~2_combout\,
	aclr => \U6|PM2|T_Duty[12]~3_combout\,
	aload => \U6|PM2|T_Duty[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(12));

-- Location: LC_X16_Y10_N3
\U6|PM2|Add1~15\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~15_combout\ = \U6|PM2|T_Duty\(10) $ (((((!\U6|PM2|Add1~37\ & \U6|PM2|Add1~22\) # (\U6|PM2|Add1~37\ & \U6|PM2|Add1~22COUT1_96\)))))
-- \U6|PM2|Add1~17\ = CARRY((\U6|PM2|T_Duty\(10)) # ((!\U6|PM2|Add1~22\)))
-- \U6|PM2|Add1~17COUT1_98\ = CARRY((\U6|PM2|T_Duty\(10)) # ((!\U6|PM2|Add1~22COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(10),
	cin => \U6|PM2|Add1~37\,
	cin0 => \U6|PM2|Add1~22\,
	cin1 => \U6|PM2|Add1~22COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~15_combout\,
	cout0 => \U6|PM2|Add1~17\,
	cout1 => \U6|PM2|Add1~17COUT1_98\);

-- Location: LC_X16_Y8_N5
\U3|sPWM_Duty[10]\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Duty\(10) = ((\U3|sPWM_Duty[8]~1_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|sPWM_Duty[8]~1_combout\ & ((\U3|sPWM_Duty\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_DAT_WR\(2),
	datac => \U3|sPWM_Duty\(10),
	datad => \U3|sPWM_Duty[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Duty\(10));

-- Location: LC_X16_Y8_N6
\U3|PWM_Duty[10]\ : maxv_lcell
-- Equation(s):
-- \U3|PWM_Duty\(10) = DFFEAS((((\U3|sPWM_Duty\(10))) # (!\CPLD_INT~combout\)), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sPWM_Duty\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|PWM_Duty\(10));

-- Location: LC_X14_Y10_N8
\U6|PM2|DutyVal[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(10) = ((\U6|PM2|PWM_G~0_combout\ & (\U3|PWM_Duty\(10))) # (!\U6|PM2|PWM_G~0_combout\ & ((\U6|PM2|DutyVal\(10))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(10),
	datac => \U6|PM2|PWM_G~0_combout\,
	datad => \U6|PM2|DutyVal\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(10));

-- Location: LC_X14_Y10_N9
\U6|PM2|T_Duty~8\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~8_combout\ = (\U6|PM2|Add1~15_combout\ & ((\U6|PM2|T_Duty~0\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(10))))) # (!\U6|PM2|Add1~15_combout\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|Add1~15_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~8_combout\);

-- Location: LC_X14_Y10_N1
\U6|PM2|T_Duty[10]~9\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[10]~9_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Duty\(10) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(10),
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[10]~9_combout\);

-- Location: LC_X14_Y10_N2
\U6|PM2|T_Duty[10]~10\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[10]~10_combout\ = ((\U3|PWM_Duty\(10) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(10),
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[10]~10_combout\);

-- Location: LC_X14_Y10_N0
\U6|PM2|T_Duty[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(10) = DFFEAS((((\U6|PM2|T_Duty~8_combout\))), GLOBAL(\Clk~combout\), !\U6|PM2|T_Duty[10]~9_combout\, , , VCC, \U6|PM2|T_Duty[10]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM2|T_Duty~8_combout\,
	aclr => \U6|PM2|T_Duty[10]~9_combout\,
	aload => \U6|PM2|T_Duty[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(10));

-- Location: LC_X15_Y8_N3
\U6|PM2|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan1~0_combout\ = (!\U6|PM2|T_Duty\(9) & (!\U6|PM2|T_Duty\(12) & (!\U6|PM2|T_Duty\(11) & !\U6|PM2|T_Duty\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(9),
	datab => \U6|PM2|T_Duty\(12),
	datac => \U6|PM2|T_Duty\(11),
	datad => \U6|PM2|T_Duty\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan1~0_combout\);

-- Location: LC_X14_Y8_N5
\U6|PM2|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan1~1_combout\ = (!\U6|PM2|T_Duty\(6) & (!\U6|PM2|T_Duty\(8) & (!\U6|PM2|T_Duty\(5) & !\U6|PM2|T_Duty\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(6),
	datab => \U6|PM2|T_Duty\(8),
	datac => \U6|PM2|T_Duty\(5),
	datad => \U6|PM2|T_Duty\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan1~1_combout\);

-- Location: LC_X14_Y8_N6
\U6|PM2|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|LessThan1~3_combout\ = (!\U6|PM2|T_Duty\(0) & (\U6|PM2|LessThan1~2_combout\ & (\U6|PM2|LessThan1~0_combout\ & \U6|PM2|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|T_Duty\(0),
	datab => \U6|PM2|LessThan1~2_combout\,
	datac => \U6|PM2|LessThan1~0_combout\,
	datad => \U6|PM2|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|LessThan1~3_combout\);

-- Location: LC_X14_Y8_N1
\U6|PM2|P~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|P~0_combout\ = ((\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)) # (!\CPLD_INT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPLD_INT~combout\,
	datac => \U6|PM2|WrPrev~regout\,
	datad => \U3|sWr_FAN~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|P~0_combout\);

-- Location: LC_X14_Y8_N0
\U6|PM2|P\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~0\ = (!\U6|PM2|T_Duty\(13) & (!\U6|PM2|LessThan0~4_combout\ & (!\U6|PM2|LessThan1~3_combout\)))
-- \U6|PM2|P~regout\ = DFFEAS(\U6|PM2|T_Duty~0\, GLOBAL(\Clk~combout\), !\U6|PM2|P~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM2|T_Duty\(13),
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|LessThan1~3_combout\,
	aclr => \U6|PM2|P~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~0\,
	regout => \U6|PM2|P~regout\);

-- Location: LC_X16_Y10_N4
\U6|PM2|Add1~10\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~10_combout\ = (\U6|PM2|T_Duty\(11) $ ((!(!\U6|PM2|Add1~37\ & \U6|PM2|Add1~17\) # (\U6|PM2|Add1~37\ & \U6|PM2|Add1~17COUT1_98\))))
-- \U6|PM2|Add1~12\ = CARRY(((!\U6|PM2|T_Duty\(11) & !\U6|PM2|Add1~17COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM2|T_Duty\(11),
	cin => \U6|PM2|Add1~37\,
	cin0 => \U6|PM2|Add1~17\,
	cin1 => \U6|PM2|Add1~17COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~10_combout\,
	cout => \U6|PM2|Add1~12\);

-- Location: LC_X15_Y7_N6
\U6|PM2|T_Duty~5\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~5_combout\ = (\U6|PM2|DutyVal\(11) & ((\U6|PM2|LessThan0~4_combout\) # ((\U6|PM2|T_Duty~0\ & \U6|PM2|Add1~10_combout\)))) # (!\U6|PM2|DutyVal\(11) & (((\U6|PM2|T_Duty~0\ & \U6|PM2|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|DutyVal\(11),
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~5_combout\);

-- Location: LC_X15_Y7_N4
\U6|PM2|T_Duty[11]~6\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[11]~6_combout\ = (!\U3|PWM_Duty\(11) & (\CPLD_INT~combout\ & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(11),
	datab => \U6|PM2|WrPrev~regout\,
	datac => \U3|sWr_FAN~2\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[11]~6_combout\);

-- Location: LC_X15_Y7_N3
\U6|PM2|T_Duty[11]~7\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty[11]~7_combout\ = ((\U3|PWM_Duty\(11) & (\U6|PM2|WrPrev~regout\ $ (\U3|sWr_FAN~2\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|WrPrev~regout\,
	datab => \U3|sWr_FAN~2\,
	datac => \U3|PWM_Duty\(11),
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty[11]~7_combout\);

-- Location: LC_X15_Y7_N7
\U6|PM2|T_Duty[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(11) = DFFEAS((((\U6|PM2|T_Duty~5_combout\))), GLOBAL(\Clk~combout\), !\U6|PM2|T_Duty[11]~6_combout\, , , VCC, \U6|PM2|T_Duty[11]~7_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM2|T_Duty~5_combout\,
	aclr => \U6|PM2|T_Duty[11]~6_combout\,
	aload => \U6|PM2|T_Duty[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(11));

-- Location: LC_X16_Y10_N6
\U6|PM2|Add1~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|Add1~0_combout\ = (((!\U6|PM2|Add1~12\ & \U6|PM2|Add1~7\) # (\U6|PM2|Add1~12\ & \U6|PM2|Add1~7COUT1_100\) $ (!\U6|PM2|T_Duty\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U6|PM2|T_Duty\(13),
	cin => \U6|PM2|Add1~12\,
	cin0 => \U6|PM2|Add1~7\,
	cin1 => \U6|PM2|Add1~7COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|Add1~0_combout\);

-- Location: LC_X16_Y10_N7
\U6|PM2|DutyVal[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|DutyVal\(13) = (\CPLD_INT~combout\ & ((\U6|PM2|PWM_G~0_combout\ & ((\U3|PWM_Duty\(13)))) # (!\U6|PM2|PWM_G~0_combout\ & (\U6|PM2|DutyVal\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM2|DutyVal\(13),
	datac => \U3|PWM_Duty\(13),
	datad => \U6|PM2|PWM_G~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|DutyVal\(13));

-- Location: LC_X16_Y10_N8
\U6|PM2|T_Duty~1\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty~1_combout\ = (\U6|PM2|Add1~0_combout\ & ((\U6|PM2|T_Duty~0\) # ((\U6|PM2|LessThan0~4_combout\ & \U6|PM2|DutyVal\(13))))) # (!\U6|PM2|Add1~0_combout\ & (\U6|PM2|LessThan0~4_combout\ & ((\U6|PM2|DutyVal\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM2|Add1~0_combout\,
	datab => \U6|PM2|LessThan0~4_combout\,
	datac => \U6|PM2|T_Duty~0\,
	datad => \U6|PM2|DutyVal\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|T_Duty~1_combout\);

-- Location: LC_X16_Y10_N9
\U6|PM2|T_Duty[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|T_Duty\(13) = DFFEAS((((\U6|PM2|T_Duty~1_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(13), \U6|PM2|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(13),
	datad => \U6|PM2|T_Duty~1_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM2|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM2|T_Duty\(13));

-- Location: LC_X13_Y6_N0
\U6|PM2|PWM\ : maxv_lcell
-- Equation(s):
-- \U6|PM2|PWM~combout\ = (((\U3|FAN_ONOFF~regout\ & \U6|PM2|P~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|FAN_ONOFF~regout\,
	datad => \U6|PM2|P~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM2|PWM~combout\);

-- Location: LC_X9_Y6_N5
\U3|sWr_timer~0\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_timer~0_combout\ = (!\U2|IO_ADDR\(1) & (((!\U2|IO_ADDR\(2) & \U2|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(2),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_timer~0_combout\);

-- Location: LC_X7_Y5_N0
\U2|IO_RDY_WR~0\ : maxv_lcell
-- Equation(s):
-- \U2|IO_RDY_WR~0_combout\ = (!\nWR~combout\ & (((!\nCS~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nWR~combout\,
	datac => \nCS~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_RDY_WR~0_combout\);

-- Location: LC_X8_Y5_N7
\U3|sWr_LED~1\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_LED~1_combout\ = (\U2|IO_ADDR\(3) & (\U3|sWr_LED~0_combout\ & (\U3|sWr_timer~0_combout\ & \U2|IO_RDY_WR~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(3),
	datab => \U3|sWr_LED~0_combout\,
	datac => \U3|sWr_timer~0_combout\,
	datad => \U2|IO_RDY_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_LED~1_combout\);

-- Location: LC_X9_Y5_N4
\U3|sLED_ONOFF\ : maxv_lcell
-- Equation(s):
-- \U3|sLED_ONOFF~combout\ = (\CPLD_INT~combout\ & ((\U3|sWr_LED~1_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sWr_LED~1_combout\ & (\U3|sLED_ONOFF~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sLED_ONOFF~combout\,
	datab => \U2|IO_DAT_WR\(0),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWr_LED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sLED_ONOFF~combout\);

-- Location: LC_X9_Y5_N5
\U3|LED_ONOFF\ : maxv_lcell
-- Equation(s):
-- \U3|LED_ONOFF~regout\ = DFFEAS((((\CPLD_INT~combout\ & \U3|sLED_ONOFF~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sLED_ONOFF~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|LED_ONOFF~regout\);

-- Location: LC_X15_Y4_N3
\U6|PM1|Add0~66\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~66_combout\ = ((!\U6|PM1|T_Frq\(0)))
-- \U6|PM1|Add0~68\ = CARRY(((\U6|PM1|T_Frq\(0))))
-- \U6|PM1|Add0~68COUT1_96\ = CARRY(((\U6|PM1|T_Frq\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~66_combout\,
	cout0 => \U6|PM1|Add0~68\,
	cout1 => \U6|PM1|Add0~68COUT1_96\);

-- Location: LC_X13_Y7_N5
\U3|sWr_LED~2\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_LED~2_combout\ = \U3|sWr_LED~2_combout\ $ (((\U2|IO_ADDR\(3) & (\U3|sWr_FAN~0_combout\ & \U3|sWr_timer~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWr_LED~2_combout\,
	datab => \U2|IO_ADDR\(3),
	datac => \U3|sWr_FAN~0_combout\,
	datad => \U3|sWr_timer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_LED~2_combout\);

-- Location: LC_X13_Y7_N3
\U6|PM1|WrPrev\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[13]~1\ = ((\U3|PWM_Frq\(13) & (\U3|sWr_LED~2_combout\ $ (G1_WrPrev)))) # (!\CPLD_INT~combout\)
-- \U6|PM1|WrPrev~regout\ = DFFEAS(\U6|PM1|T_Frq[13]~1\, GLOBAL(\Clk~combout\), VCC, , , \U3|sWr_LED~2_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b33",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U3|sWr_LED~2_combout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~2_combout\,
	datad => \U3|PWM_Frq\(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[13]~1\,
	regout => \U6|PM1|WrPrev~regout\);

-- Location: LC_X12_Y3_N1
\U6|PM1|PWM_G~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|PWM_G~0_combout\ = (\U3|sWr_LED~2_combout\ $ ((\U6|PM1|WrPrev~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sWr_LED~2_combout\,
	datac => \U6|PM1|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|PWM_G~0_combout\);

-- Location: LC_X13_Y3_N2
\U6|PM1|FrqVal[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(0) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Frq\(0))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|FrqVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(0),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|FrqVal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(0));

-- Location: LC_X13_Y7_N0
\U6|PM1|T_Frq[13]~10\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[13]~10_combout\ = ((\CPLD_INT~combout\ & (\U3|sWr_LED~2_combout\ $ (\U6|PM1|WrPrev~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~2_combout\,
	datad => \U6|PM1|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[13]~10_combout\);

-- Location: LC_X13_Y3_N3
\U6|PM1|T_Frq[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(0) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(0))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~66_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(0), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~66_combout\,
	datac => \U3|PWM_Frq\(0),
	datad => \U6|PM1|FrqVal\(0),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(0));

-- Location: LC_X15_Y4_N4
\U6|PM1|Add0~78\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~78_combout\ = (\U6|PM1|T_Frq\(1) $ ((!\U6|PM1|Add0~68\)))
-- \U6|PM1|Add0~80\ = CARRY(((!\U6|PM1|T_Frq\(1) & !\U6|PM1|Add0~68COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(1),
	cin0 => \U6|PM1|Add0~68\,
	cin1 => \U6|PM1|Add0~68COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~78_combout\,
	cout => \U6|PM1|Add0~80\);

-- Location: LC_X11_Y5_N2
\U6|PM1|FrqVal[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(1) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Frq\(1))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|FrqVal\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(1),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|FrqVal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(1));

-- Location: LC_X11_Y5_N3
\U6|PM1|T_Frq[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(1) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(1))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~78_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(1), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|Add0~78_combout\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => \U3|PWM_Frq\(1),
	datad => \U6|PM1|FrqVal\(1),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(1));

-- Location: LC_X15_Y4_N5
\U6|PM1|Add0~72\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~72_combout\ = (\U6|PM1|T_Frq\(2) $ ((\U6|PM1|Add0~80\)))
-- \U6|PM1|Add0~74\ = CARRY(((\U6|PM1|T_Frq\(2)) # (!\U6|PM1|Add0~80\)))
-- \U6|PM1|Add0~74COUT1_98\ = CARRY(((\U6|PM1|T_Frq\(2)) # (!\U6|PM1|Add0~80\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(2),
	cin => \U6|PM1|Add0~80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~72_combout\,
	cout0 => \U6|PM1|Add0~74\,
	cout1 => \U6|PM1|Add0~74COUT1_98\);

-- Location: LC_X11_Y5_N7
\U6|PM1|FrqVal[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(2) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Frq\(2)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|FrqVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM1|FrqVal\(2),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(2));

-- Location: LC_X11_Y5_N8
\U6|PM1|T_Frq[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(2) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(2))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~72_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(2), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~72_combout\,
	datac => \U3|PWM_Frq\(2),
	datad => \U6|PM1|FrqVal\(2),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(2));

-- Location: LC_X15_Y4_N6
\U6|PM1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~60_combout\ = (\U6|PM1|T_Frq\(3) $ ((!(!\U6|PM1|Add0~80\ & \U6|PM1|Add0~74\) # (\U6|PM1|Add0~80\ & \U6|PM1|Add0~74COUT1_98\))))
-- \U6|PM1|Add0~62\ = CARRY(((!\U6|PM1|T_Frq\(3) & !\U6|PM1|Add0~74\)))
-- \U6|PM1|Add0~62COUT1_100\ = CARRY(((!\U6|PM1|T_Frq\(3) & !\U6|PM1|Add0~74COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(3),
	cin => \U6|PM1|Add0~80\,
	cin0 => \U6|PM1|Add0~74\,
	cin1 => \U6|PM1|Add0~74COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~60_combout\,
	cout0 => \U6|PM1|Add0~62\,
	cout1 => \U6|PM1|Add0~62COUT1_100\);

-- Location: LC_X13_Y3_N1
\U6|PM1|FrqVal[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(3) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Frq\(3))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|FrqVal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(3),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|FrqVal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(3));

-- Location: LC_X13_Y3_N0
\U6|PM1|T_Frq[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(3) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(3))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~60_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(3), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~60_combout\,
	datac => \U3|PWM_Frq\(3),
	datad => \U6|PM1|FrqVal\(3),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(3));

-- Location: LC_X15_Y4_N7
\U6|PM1|Add0~54\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~54_combout\ = (\U6|PM1|T_Frq\(4) $ (((!\U6|PM1|Add0~80\ & \U6|PM1|Add0~62\) # (\U6|PM1|Add0~80\ & \U6|PM1|Add0~62COUT1_100\))))
-- \U6|PM1|Add0~56\ = CARRY(((\U6|PM1|T_Frq\(4)) # (!\U6|PM1|Add0~62\)))
-- \U6|PM1|Add0~56COUT1_102\ = CARRY(((\U6|PM1|T_Frq\(4)) # (!\U6|PM1|Add0~62COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(4),
	cin => \U6|PM1|Add0~80\,
	cin0 => \U6|PM1|Add0~62\,
	cin1 => \U6|PM1|Add0~62COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~54_combout\,
	cout0 => \U6|PM1|Add0~56\,
	cout1 => \U6|PM1|Add0~56COUT1_102\);

-- Location: LC_X13_Y3_N8
\U6|PM1|FrqVal[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(4) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Frq\(4))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|FrqVal\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(4),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|FrqVal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(4));

-- Location: LC_X13_Y3_N9
\U6|PM1|T_Frq[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(4) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(4))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~54_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(4), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~54_combout\,
	datac => \U3|PWM_Frq\(4),
	datad => \U6|PM1|FrqVal\(4),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(4));

-- Location: LC_X15_Y4_N8
\U6|PM1|Add0~48\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~48_combout\ = (\U6|PM1|T_Frq\(5) $ ((!(!\U6|PM1|Add0~80\ & \U6|PM1|Add0~56\) # (\U6|PM1|Add0~80\ & \U6|PM1|Add0~56COUT1_102\))))
-- \U6|PM1|Add0~50\ = CARRY(((!\U6|PM1|T_Frq\(5) & !\U6|PM1|Add0~56\)))
-- \U6|PM1|Add0~50COUT1_104\ = CARRY(((!\U6|PM1|T_Frq\(5) & !\U6|PM1|Add0~56COUT1_102\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(5),
	cin => \U6|PM1|Add0~80\,
	cin0 => \U6|PM1|Add0~56\,
	cin1 => \U6|PM1|Add0~56COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~48_combout\,
	cout0 => \U6|PM1|Add0~50\,
	cout1 => \U6|PM1|Add0~50COUT1_104\);

-- Location: LC_X12_Y4_N6
\U6|PM1|FrqVal[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(5) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Frq\(5)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|FrqVal\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|FrqVal\(5),
	datab => \U3|PWM_Frq\(5),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(5));

-- Location: LC_X12_Y4_N7
\U6|PM1|T_Frq[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(5) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(5))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~48_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(5), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~48_combout\,
	datac => \U3|PWM_Frq\(5),
	datad => \U6|PM1|FrqVal\(5),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(5));

-- Location: LC_X15_Y4_N9
\U6|PM1|Add0~42\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~42_combout\ = (\U6|PM1|T_Frq\(6) $ (((!\U6|PM1|Add0~80\ & \U6|PM1|Add0~50\) # (\U6|PM1|Add0~80\ & \U6|PM1|Add0~50COUT1_104\))))
-- \U6|PM1|Add0~44\ = CARRY(((\U6|PM1|T_Frq\(6)) # (!\U6|PM1|Add0~50COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(6),
	cin => \U6|PM1|Add0~80\,
	cin0 => \U6|PM1|Add0~50\,
	cin1 => \U6|PM1|Add0~50COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~42_combout\,
	cout => \U6|PM1|Add0~44\);

-- Location: LC_X11_Y5_N4
\U6|PM1|FrqVal[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(6) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Frq\(6)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|FrqVal\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|FrqVal\(6),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(6));

-- Location: LC_X11_Y5_N5
\U6|PM1|T_Frq[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(6) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(6))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~42_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(6), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~42_combout\,
	datac => \U3|PWM_Frq\(6),
	datad => \U6|PM1|FrqVal\(6),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(6));

-- Location: LC_X16_Y4_N0
\U6|PM1|Add0~36\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~36_combout\ = (\U6|PM1|T_Frq\(7) $ ((!\U6|PM1|Add0~44\)))
-- \U6|PM1|Add0~38\ = CARRY(((!\U6|PM1|T_Frq\(7) & !\U6|PM1|Add0~44\)))
-- \U6|PM1|Add0~38COUT1_106\ = CARRY(((!\U6|PM1|T_Frq\(7) & !\U6|PM1|Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(7),
	cin => \U6|PM1|Add0~44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~36_combout\,
	cout0 => \U6|PM1|Add0~38\,
	cout1 => \U6|PM1|Add0~38COUT1_106\);

-- Location: LC_X10_Y4_N8
\U6|PM1|FrqVal[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(7) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Frq\(7))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|FrqVal\(7))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(7),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|FrqVal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(7));

-- Location: LC_X10_Y4_N7
\U6|PM1|T_Frq[7]~11\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[7]~11_combout\ = (!\U3|PWM_Frq\(7) & (\CPLD_INT~combout\ & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(7),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[7]~11_combout\);

-- Location: LC_X10_Y4_N9
\U6|PM1|T_Frq[7]~12\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[7]~12_combout\ = ((\U3|PWM_Frq\(7) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(7),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[7]~12_combout\);

-- Location: LC_X10_Y4_N0
\U6|PM1|T_Frq[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(7) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(7))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~36_combout\)), GLOBAL(\Clk~combout\), !\U6|PM1|T_Frq[7]~11_combout\, , , VCC, \U6|PM1|T_Frq[7]~12_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~36_combout\,
	datac => VCC,
	datad => \U6|PM1|FrqVal\(7),
	aclr => \U6|PM1|T_Frq[7]~11_combout\,
	aload => \U6|PM1|T_Frq[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(7));

-- Location: LC_X16_Y4_N1
\U6|PM1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~30_combout\ = \U6|PM1|T_Frq\(8) $ (((((!\U6|PM1|Add0~44\ & \U6|PM1|Add0~38\) # (\U6|PM1|Add0~44\ & \U6|PM1|Add0~38COUT1_106\)))))
-- \U6|PM1|Add0~32\ = CARRY((\U6|PM1|T_Frq\(8)) # ((!\U6|PM1|Add0~38\)))
-- \U6|PM1|Add0~32COUT1_108\ = CARRY((\U6|PM1|T_Frq\(8)) # ((!\U6|PM1|Add0~38COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Frq\(8),
	cin => \U6|PM1|Add0~44\,
	cin0 => \U6|PM1|Add0~38\,
	cin1 => \U6|PM1|Add0~38COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~30_combout\,
	cout0 => \U6|PM1|Add0~32\,
	cout1 => \U6|PM1|Add0~32COUT1_108\);

-- Location: LC_X13_Y3_N4
\U6|PM1|FrqVal[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(8) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Frq\(8)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|FrqVal\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|FrqVal\(8),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(8));

-- Location: LC_X13_Y3_N5
\U6|PM1|T_Frq[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(8) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(8))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~30_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Frq\(8), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~30_combout\,
	datac => \U3|PWM_Frq\(8),
	datad => \U6|PM1|FrqVal\(8),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(8));

-- Location: LC_X16_Y4_N2
\U6|PM1|Add0~24\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~24_combout\ = (\U6|PM1|T_Frq\(9) $ ((!(!\U6|PM1|Add0~44\ & \U6|PM1|Add0~32\) # (\U6|PM1|Add0~44\ & \U6|PM1|Add0~32COUT1_108\))))
-- \U6|PM1|Add0~26\ = CARRY(((!\U6|PM1|T_Frq\(9) & !\U6|PM1|Add0~32\)))
-- \U6|PM1|Add0~26COUT1_110\ = CARRY(((!\U6|PM1|T_Frq\(9) & !\U6|PM1|Add0~32COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(9),
	cin => \U6|PM1|Add0~44\,
	cin0 => \U6|PM1|Add0~32\,
	cin1 => \U6|PM1|Add0~32COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~24_combout\,
	cout0 => \U6|PM1|Add0~26\,
	cout1 => \U6|PM1|Add0~26COUT1_110\);

-- Location: LC_X12_Y5_N7
\U6|PM1|FrqVal[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(9) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Frq\(9)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|FrqVal\(9)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd5d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM1|FrqVal\(9),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(9));

-- Location: LC_X12_Y5_N9
\U6|PM1|T_Frq[9]~8\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[9]~8_combout\ = (!\U3|PWM_Frq\(9) & (\CPLD_INT~combout\ & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \U3|PWM_Frq\(9),
	datac => \U3|sWr_LED~2_combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[9]~8_combout\);

-- Location: LC_X12_Y5_N0
\U6|PM1|T_Frq[9]~9\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[9]~9_combout\ = ((\U3|PWM_Frq\(9) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "48ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \U3|PWM_Frq\(9),
	datac => \U3|sWr_LED~2_combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[9]~9_combout\);

-- Location: LC_X12_Y5_N8
\U6|PM1|T_Frq[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(9) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(9))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~24_combout\)), GLOBAL(\Clk~combout\), !\U6|PM1|T_Frq[9]~8_combout\, , , VCC, \U6|PM1|T_Frq[9]~9_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~24_combout\,
	datac => VCC,
	datad => \U6|PM1|FrqVal\(9),
	aclr => \U6|PM1|T_Frq[9]~8_combout\,
	aload => \U6|PM1|T_Frq[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(9));

-- Location: LC_X16_Y4_N3
\U6|PM1|Add0~18\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~18_combout\ = (\U6|PM1|T_Frq\(10) $ (((!\U6|PM1|Add0~44\ & \U6|PM1|Add0~26\) # (\U6|PM1|Add0~44\ & \U6|PM1|Add0~26COUT1_110\))))
-- \U6|PM1|Add0~20\ = CARRY(((\U6|PM1|T_Frq\(10)) # (!\U6|PM1|Add0~26\)))
-- \U6|PM1|Add0~20COUT1_112\ = CARRY(((\U6|PM1|T_Frq\(10)) # (!\U6|PM1|Add0~26COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(10),
	cin => \U6|PM1|Add0~44\,
	cin0 => \U6|PM1|Add0~26\,
	cin1 => \U6|PM1|Add0~26COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~18_combout\,
	cout0 => \U6|PM1|Add0~20\,
	cout1 => \U6|PM1|Add0~20COUT1_112\);

-- Location: LC_X13_Y6_N5
\U6|PM1|FrqVal[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(10) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Frq\(10)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|FrqVal\(10)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|FrqVal\(10),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(10));

-- Location: LC_X14_Y6_N1
\U6|PM1|T_Frq[10]~6\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[10]~6_combout\ = (!\U3|PWM_Frq\(10) & (\CPLD_INT~combout\ & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(10),
	datab => \U6|PM1|WrPrev~regout\,
	datac => \U3|sWr_LED~2_combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[10]~6_combout\);

-- Location: LC_X12_Y6_N5
\U6|PM1|T_Frq[10]~7\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[10]~7_combout\ = ((\U3|PWM_Frq\(10) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(10),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[10]~7_combout\);

-- Location: LC_X13_Y6_N6
\U6|PM1|T_Frq[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(10) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(10))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~18_combout\)), GLOBAL(\Clk~combout\), !\U6|PM1|T_Frq[10]~6_combout\, , , VCC, \U6|PM1|T_Frq[10]~7_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~18_combout\,
	datac => VCC,
	datad => \U6|PM1|FrqVal\(10),
	aclr => \U6|PM1|T_Frq[10]~6_combout\,
	aload => \U6|PM1|T_Frq[10]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(10));

-- Location: LC_X16_Y4_N4
\U6|PM1|Add0~12\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~12_combout\ = (\U6|PM1|T_Frq\(11) $ ((!(!\U6|PM1|Add0~44\ & \U6|PM1|Add0~20\) # (\U6|PM1|Add0~44\ & \U6|PM1|Add0~20COUT1_112\))))
-- \U6|PM1|Add0~14\ = CARRY(((!\U6|PM1|T_Frq\(11) & !\U6|PM1|Add0~20COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(11),
	cin => \U6|PM1|Add0~44\,
	cin0 => \U6|PM1|Add0~20\,
	cin1 => \U6|PM1|Add0~20COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~12_combout\,
	cout => \U6|PM1|Add0~14\);

-- Location: LC_X16_Y3_N4
\U6|PM1|FrqVal[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(11) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Frq\(11)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|FrqVal\(11)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fb3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|FrqVal\(11),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Frq\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(11));

-- Location: LC_X16_Y3_N0
\U6|PM1|T_Frq[11]~4\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[11]~4_combout\ = (!\U3|PWM_Frq\(11) & (\CPLD_INT~combout\ & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \U3|PWM_Frq\(11),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[11]~4_combout\);

-- Location: LC_X16_Y3_N3
\U6|PM1|T_Frq[11]~5\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[11]~5_combout\ = ((\U3|PWM_Frq\(11) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \U3|PWM_Frq\(11),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[11]~5_combout\);

-- Location: LC_X16_Y3_N5
\U6|PM1|T_Frq[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(11) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(11))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~12_combout\)), GLOBAL(\Clk~combout\), !\U6|PM1|T_Frq[11]~4_combout\, , , VCC, \U6|PM1|T_Frq[11]~5_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|Add0~12_combout\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => VCC,
	datad => \U6|PM1|FrqVal\(11),
	aclr => \U6|PM1|T_Frq[11]~4_combout\,
	aload => \U6|PM1|T_Frq[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(11));

-- Location: LC_X16_Y4_N5
\U6|PM1|Add0~6\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~6_combout\ = (\U6|PM1|T_Frq\(12) $ ((\U6|PM1|Add0~14\)))
-- \U6|PM1|Add0~8\ = CARRY(((\U6|PM1|T_Frq\(12)) # (!\U6|PM1|Add0~14\)))
-- \U6|PM1|Add0~8COUT1_114\ = CARRY(((\U6|PM1|T_Frq\(12)) # (!\U6|PM1|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Frq\(12),
	cin => \U6|PM1|Add0~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~6_combout\,
	cout0 => \U6|PM1|Add0~8\,
	cout1 => \U6|PM1|Add0~8COUT1_114\);

-- Location: LC_X11_Y4_N0
\U6|PM1|FrqVal[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(12) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Frq\(12))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|FrqVal\(12))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(12),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|FrqVal\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(12));

-- Location: LC_X11_Y4_N9
\U6|PM1|T_Frq[12]~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[12]~2_combout\ = (!\U3|PWM_Frq\(12) & (\CPLD_INT~combout\ & (\U3|sWr_LED~2_combout\ $ (\U6|PM1|WrPrev~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(12),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~2_combout\,
	datad => \U6|PM1|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[12]~2_combout\);

-- Location: LC_X11_Y4_N4
\U6|PM1|T_Frq[12]~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[12]~3_combout\ = ((\U3|PWM_Frq\(12) & (\U3|sWr_LED~2_combout\ $ (\U6|PM1|WrPrev~regout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Frq\(12),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~2_combout\,
	datad => \U6|PM1|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[12]~3_combout\);

-- Location: LC_X11_Y4_N1
\U6|PM1|T_Frq[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(12) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(12))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~6_combout\)), GLOBAL(\Clk~combout\), !\U6|PM1|T_Frq[12]~2_combout\, , , VCC, \U6|PM1|T_Frq[12]~3_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|Add0~6_combout\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => VCC,
	datad => \U6|PM1|FrqVal\(12),
	aclr => \U6|PM1|T_Frq[12]~2_combout\,
	aload => \U6|PM1|T_Frq[12]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(12));

-- Location: LC_X16_Y4_N6
\U6|PM1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add0~0_combout\ = (((!\U6|PM1|Add0~14\ & \U6|PM1|Add0~8\) # (\U6|PM1|Add0~14\ & \U6|PM1|Add0~8COUT1_114\) $ (!\U6|PM1|T_Frq\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \U6|PM1|T_Frq\(13),
	cin => \U6|PM1|Add0~14\,
	cin0 => \U6|PM1|Add0~8\,
	cin1 => \U6|PM1|Add0~8COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add0~0_combout\);

-- Location: LC_X16_Y6_N4
\U6|PM1|FrqVal[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|FrqVal\(13) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Frq\(13))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|FrqVal\(13))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(13),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|FrqVal\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|FrqVal\(13));

-- Location: LC_X16_Y6_N6
\U6|PM1|T_Frq[13]~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq[13]~0_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Frq\(13) & (\U3|sWr_LED~2_combout\ $ (\U6|PM1|WrPrev~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Frq\(13),
	datac => \U3|sWr_LED~2_combout\,
	datad => \U6|PM1|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Frq[13]~0_combout\);

-- Location: LC_X16_Y6_N5
\U6|PM1|T_Frq[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Frq\(13) = DFFEAS((\U6|PM1|LessThan0~4_combout\ & (((\U6|PM1|FrqVal\(13))))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add0~0_combout\)), GLOBAL(\Clk~combout\), !\U6|PM1|T_Frq[13]~0_combout\, , , VCC, \U6|PM1|T_Frq[13]~1\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add0~0_combout\,
	datac => VCC,
	datad => \U6|PM1|FrqVal\(13),
	aclr => \U6|PM1|T_Frq[13]~0_combout\,
	aload => \U6|PM1|T_Frq[13]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Frq\(13));

-- Location: LC_X12_Y5_N1
\U6|PM1|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan0~1_combout\ = (!\U6|PM1|T_Frq\(6) & (!\U6|PM1|T_Frq\(7) & (!\U6|PM1|T_Frq\(8) & !\U6|PM1|T_Frq\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Frq\(6),
	datab => \U6|PM1|T_Frq\(7),
	datac => \U6|PM1|T_Frq\(8),
	datad => \U6|PM1|T_Frq\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan0~1_combout\);

-- Location: LC_X12_Y5_N4
\U6|PM1|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan0~0_combout\ = (!\U6|PM1|T_Frq\(9) & (!\U6|PM1|T_Frq\(12) & (!\U6|PM1|T_Frq\(10) & !\U6|PM1|T_Frq\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Frq\(9),
	datab => \U6|PM1|T_Frq\(12),
	datac => \U6|PM1|T_Frq\(10),
	datad => \U6|PM1|T_Frq\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan0~0_combout\);

-- Location: LC_X13_Y3_N7
\U6|PM1|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan0~2_combout\ = (((!\U6|PM1|T_Frq\(3) & !\U6|PM1|T_Frq\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U6|PM1|T_Frq\(3),
	datad => \U6|PM1|T_Frq\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan0~2_combout\);

-- Location: LC_X12_Y5_N5
\U6|PM1|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan0~3_combout\ = (!\U6|PM1|T_Frq\(2) & (!\U6|PM1|T_Frq\(1) & (!\U6|PM1|T_Frq\(0) & \U6|PM1|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Frq\(2),
	datab => \U6|PM1|T_Frq\(1),
	datac => \U6|PM1|T_Frq\(0),
	datad => \U6|PM1|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan0~3_combout\);

-- Location: LC_X12_Y5_N6
\U6|PM1|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan0~4_combout\ = (\U6|PM1|T_Frq\(13)) # ((\U6|PM1|LessThan0~1_combout\ & (\U6|PM1|LessThan0~0_combout\ & \U6|PM1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Frq\(13),
	datab => \U6|PM1|LessThan0~1_combout\,
	datac => \U6|PM1|LessThan0~0_combout\,
	datad => \U6|PM1|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan0~4_combout\);

-- Location: LC_X14_Y3_N3
\U6|PM1|Add1~65\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~65_combout\ = (!\U6|PM1|T_Duty\(0))
-- \U6|PM1|Add1~67\ = CARRY((\U6|PM1|T_Duty\(0)))
-- \U6|PM1|Add1~67COUT1_82\ = CARRY((\U6|PM1|T_Duty\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~65_combout\,
	cout0 => \U6|PM1|Add1~67\,
	cout1 => \U6|PM1|Add1~67COUT1_82\);

-- Location: LC_X14_Y5_N3
\U6|PM1|DutyVal[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(0) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(0))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(0),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(0));

-- Location: LC_X14_Y5_N4
\U6|PM1|T_Duty~26\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~26_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(0)) # ((\U6|PM1|T_Duty~0\ & \U6|PM1|Add1~65_combout\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|T_Duty~0\ & (\U6|PM1|Add1~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|T_Duty~0\,
	datac => \U6|PM1|Add1~65_combout\,
	datad => \U6|PM1|DutyVal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~26_combout\);

-- Location: LC_X14_Y5_N5
\U6|PM1|T_Duty[0]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(0) = DFFEAS((((\U6|PM1|T_Duty~26_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(0), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(0),
	datad => \U6|PM1|T_Duty~26_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(0));

-- Location: LC_X14_Y3_N4
\U6|PM1|Add1~60\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~60_combout\ = \U6|PM1|T_Duty\(1) $ ((((!\U6|PM1|Add1~67\))))
-- \U6|PM1|Add1~62\ = CARRY((!\U6|PM1|T_Duty\(1) & ((!\U6|PM1|Add1~67COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(1),
	cin0 => \U6|PM1|Add1~67\,
	cin1 => \U6|PM1|Add1~67COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~60_combout\,
	cout => \U6|PM1|Add1~62\);

-- Location: LC_X14_Y5_N0
\U6|PM1|DutyVal[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(1) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Duty\(1)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|DutyVal\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM1|DutyVal\(1),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(1));

-- Location: LC_X14_Y5_N1
\U6|PM1|T_Duty~25\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~25_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(1)) # ((\U6|PM1|T_Duty~0\ & \U6|PM1|Add1~60_combout\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|T_Duty~0\ & (\U6|PM1|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|T_Duty~0\,
	datac => \U6|PM1|Add1~60_combout\,
	datad => \U6|PM1|DutyVal\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~25_combout\);

-- Location: LC_X14_Y5_N2
\U6|PM1|T_Duty[1]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(1) = DFFEAS((((\U6|PM1|T_Duty~25_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(1), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(1),
	datad => \U6|PM1|T_Duty~25_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(1));

-- Location: LC_X14_Y3_N5
\U6|PM1|Add1~55\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~55_combout\ = (\U6|PM1|T_Duty\(2) $ ((\U6|PM1|Add1~62\)))
-- \U6|PM1|Add1~57\ = CARRY(((\U6|PM1|T_Duty\(2)) # (!\U6|PM1|Add1~62\)))
-- \U6|PM1|Add1~57COUT1_84\ = CARRY(((\U6|PM1|T_Duty\(2)) # (!\U6|PM1|Add1~62\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(2),
	cin => \U6|PM1|Add1~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~55_combout\,
	cout0 => \U6|PM1|Add1~57\,
	cout1 => \U6|PM1|Add1~57COUT1_84\);

-- Location: LC_X13_Y5_N0
\U6|PM1|DutyVal[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(2) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Duty\(2)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|DutyVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM1|DutyVal\(2),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(2));

-- Location: LC_X13_Y5_N1
\U6|PM1|T_Duty~24\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~24_combout\ = (\U6|PM1|T_Duty~0\ & ((\U6|PM1|Add1~55_combout\) # ((\U6|PM1|LessThan0~4_combout\ & \U6|PM1|DutyVal\(2))))) # (!\U6|PM1|T_Duty~0\ & (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty~0\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => \U6|PM1|Add1~55_combout\,
	datad => \U6|PM1|DutyVal\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~24_combout\);

-- Location: LC_X13_Y5_N2
\U6|PM1|T_Duty[2]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(2) = DFFEAS((((\U6|PM1|T_Duty~24_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(2), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(2),
	datad => \U6|PM1|T_Duty~24_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(2));

-- Location: LC_X14_Y3_N6
\U6|PM1|Add1~50\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~50_combout\ = (\U6|PM1|T_Duty\(3) $ ((!(!\U6|PM1|Add1~62\ & \U6|PM1|Add1~57\) # (\U6|PM1|Add1~62\ & \U6|PM1|Add1~57COUT1_84\))))
-- \U6|PM1|Add1~52\ = CARRY(((!\U6|PM1|T_Duty\(3) & !\U6|PM1|Add1~57\)))
-- \U6|PM1|Add1~52COUT1_86\ = CARRY(((!\U6|PM1|T_Duty\(3) & !\U6|PM1|Add1~57COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(3),
	cin => \U6|PM1|Add1~62\,
	cin0 => \U6|PM1|Add1~57\,
	cin1 => \U6|PM1|Add1~57COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~50_combout\,
	cout0 => \U6|PM1|Add1~52\,
	cout1 => \U6|PM1|Add1~52COUT1_86\);

-- Location: LC_X14_Y3_N1
\U6|PM1|DutyVal[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(3) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(3))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(3),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(3));

-- Location: LC_X14_Y3_N2
\U6|PM1|T_Duty~23\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~23_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(3)) # ((\U6|PM1|Add1~50_combout\ & \U6|PM1|T_Duty~0\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add1~50_combout\ & (\U6|PM1|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add1~50_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~23_combout\);

-- Location: LC_X14_Y3_N0
\U6|PM1|T_Duty[3]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(3) = DFFEAS((((\U6|PM1|T_Duty~23_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(3), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(3),
	datad => \U6|PM1|T_Duty~23_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(3));

-- Location: LC_X14_Y3_N7
\U6|PM1|Add1~45\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~45_combout\ = (\U6|PM1|T_Duty\(4) $ (((!\U6|PM1|Add1~62\ & \U6|PM1|Add1~52\) # (\U6|PM1|Add1~62\ & \U6|PM1|Add1~52COUT1_86\))))
-- \U6|PM1|Add1~47\ = CARRY(((\U6|PM1|T_Duty\(4)) # (!\U6|PM1|Add1~52\)))
-- \U6|PM1|Add1~47COUT1_88\ = CARRY(((\U6|PM1|T_Duty\(4)) # (!\U6|PM1|Add1~52COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(4),
	cin => \U6|PM1|Add1~62\,
	cin0 => \U6|PM1|Add1~52\,
	cin1 => \U6|PM1|Add1~52COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~45_combout\,
	cout0 => \U6|PM1|Add1~47\,
	cout1 => \U6|PM1|Add1~47COUT1_88\);

-- Location: LC_X13_Y5_N5
\U6|PM1|DutyVal[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(4) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(4))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(4),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(4));

-- Location: LC_X13_Y5_N6
\U6|PM1|T_Duty~22\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~22_combout\ = (\U6|PM1|T_Duty~0\ & ((\U6|PM1|Add1~45_combout\) # ((\U6|PM1|LessThan0~4_combout\ & \U6|PM1|DutyVal\(4))))) # (!\U6|PM1|T_Duty~0\ & (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty~0\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => \U6|PM1|Add1~45_combout\,
	datad => \U6|PM1|DutyVal\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~22_combout\);

-- Location: LC_X13_Y5_N7
\U6|PM1|T_Duty[4]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(4) = DFFEAS((((\U6|PM1|T_Duty~22_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(4), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(4),
	datad => \U6|PM1|T_Duty~22_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(4));

-- Location: LC_X14_Y3_N8
\U6|PM1|Add1~40\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~40_combout\ = (\U6|PM1|T_Duty\(5) $ ((!(!\U6|PM1|Add1~62\ & \U6|PM1|Add1~47\) # (\U6|PM1|Add1~62\ & \U6|PM1|Add1~47COUT1_88\))))
-- \U6|PM1|Add1~42\ = CARRY(((!\U6|PM1|T_Duty\(5) & !\U6|PM1|Add1~47\)))
-- \U6|PM1|Add1~42COUT1_90\ = CARRY(((!\U6|PM1|T_Duty\(5) & !\U6|PM1|Add1~47COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(5),
	cin => \U6|PM1|Add1~62\,
	cin0 => \U6|PM1|Add1~47\,
	cin1 => \U6|PM1|Add1~47COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~40_combout\,
	cout0 => \U6|PM1|Add1~42\,
	cout1 => \U6|PM1|Add1~42COUT1_90\);

-- Location: LC_X14_Y5_N6
\U6|PM1|DutyVal[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(5) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(5))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(5),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(5));

-- Location: LC_X14_Y5_N7
\U6|PM1|T_Duty~21\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~21_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(5)) # ((\U6|PM1|Add1~40_combout\ & \U6|PM1|T_Duty~0\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add1~40_combout\ & (\U6|PM1|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add1~40_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~21_combout\);

-- Location: LC_X14_Y5_N8
\U6|PM1|T_Duty[5]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(5) = DFFEAS((((\U6|PM1|T_Duty~21_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(5), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(5),
	datad => \U6|PM1|T_Duty~21_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(5));

-- Location: LC_X14_Y3_N9
\U6|PM1|Add1~35\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~35_combout\ = (\U6|PM1|T_Duty\(6) $ (((!\U6|PM1|Add1~62\ & \U6|PM1|Add1~42\) # (\U6|PM1|Add1~62\ & \U6|PM1|Add1~42COUT1_90\))))
-- \U6|PM1|Add1~37\ = CARRY(((\U6|PM1|T_Duty\(6)) # (!\U6|PM1|Add1~42COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(6),
	cin => \U6|PM1|Add1~62\,
	cin0 => \U6|PM1|Add1~42\,
	cin1 => \U6|PM1|Add1~42COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~35_combout\,
	cout => \U6|PM1|Add1~37\);

-- Location: LC_X15_Y5_N4
\U6|PM1|DutyVal[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(6) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(6))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(6))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(6),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(6));

-- Location: LC_X15_Y5_N5
\U6|PM1|T_Duty~18\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~18_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(6)) # ((\U6|PM1|Add1~35_combout\ & \U6|PM1|T_Duty~0\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add1~35_combout\ & (\U6|PM1|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add1~35_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~18_combout\);

-- Location: LC_X15_Y5_N8
\U6|PM1|T_Duty[6]~19\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[6]~19_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Duty\(6) & (\U3|sWr_LED~2_combout\ $ (\U6|PM1|WrPrev~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(6),
	datac => \U3|sWr_LED~2_combout\,
	datad => \U6|PM1|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[6]~19_combout\);

-- Location: LC_X15_Y5_N7
\U6|PM1|T_Duty[6]~20\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[6]~20_combout\ = ((\U3|PWM_Duty\(6) & (\U3|sWr_LED~2_combout\ $ (\U6|PM1|WrPrev~regout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(6),
	datac => \U3|sWr_LED~2_combout\,
	datad => \U6|PM1|WrPrev~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[6]~20_combout\);

-- Location: LC_X15_Y5_N6
\U6|PM1|T_Duty[6]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(6) = DFFEAS((((\U6|PM1|T_Duty~18_combout\))), GLOBAL(\Clk~combout\), !\U6|PM1|T_Duty[6]~19_combout\, , , VCC, \U6|PM1|T_Duty[6]~20_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM1|T_Duty~18_combout\,
	aclr => \U6|PM1|T_Duty[6]~19_combout\,
	aload => \U6|PM1|T_Duty[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(6));

-- Location: LC_X15_Y3_N0
\U6|PM1|Add1~30\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~30_combout\ = (\U6|PM1|T_Duty\(7) $ ((!\U6|PM1|Add1~37\)))
-- \U6|PM1|Add1~32\ = CARRY(((!\U6|PM1|T_Duty\(7) & !\U6|PM1|Add1~37\)))
-- \U6|PM1|Add1~32COUT1_92\ = CARRY(((!\U6|PM1|T_Duty\(7) & !\U6|PM1|Add1~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(7),
	cin => \U6|PM1|Add1~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~30_combout\,
	cout0 => \U6|PM1|Add1~32\,
	cout1 => \U6|PM1|Add1~32COUT1_92\);

-- Location: LC_X14_Y6_N5
\U6|PM1|DutyVal[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(7) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Duty\(7)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|DutyVal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|DutyVal\(7),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(7));

-- Location: LC_X14_Y6_N6
\U6|PM1|T_Duty~17\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~17_combout\ = (\U6|PM1|Add1~30_combout\ & ((\U6|PM1|T_Duty~0\) # ((\U6|PM1|LessThan0~4_combout\ & \U6|PM1|DutyVal\(7))))) # (!\U6|PM1|Add1~30_combout\ & (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|Add1~30_combout\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~17_combout\);

-- Location: LC_X14_Y6_N7
\U6|PM1|T_Duty[7]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(7) = DFFEAS((((\U6|PM1|T_Duty~17_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(7), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(7),
	datad => \U6|PM1|T_Duty~17_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(7));

-- Location: LC_X15_Y3_N1
\U6|PM1|Add1~25\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~25_combout\ = (\U6|PM1|T_Duty\(8) $ (((!\U6|PM1|Add1~37\ & \U6|PM1|Add1~32\) # (\U6|PM1|Add1~37\ & \U6|PM1|Add1~32COUT1_92\))))
-- \U6|PM1|Add1~27\ = CARRY(((\U6|PM1|T_Duty\(8)) # (!\U6|PM1|Add1~32\)))
-- \U6|PM1|Add1~27COUT1_94\ = CARRY(((\U6|PM1|T_Duty\(8)) # (!\U6|PM1|Add1~32COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(8),
	cin => \U6|PM1|Add1~37\,
	cin0 => \U6|PM1|Add1~32\,
	cin1 => \U6|PM1|Add1~32COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~25_combout\,
	cout0 => \U6|PM1|Add1~27\,
	cout1 => \U6|PM1|Add1~27COUT1_94\);

-- Location: LC_X12_Y3_N8
\U6|PM1|DutyVal[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(8) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(8))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(8))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(8),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(8));

-- Location: LC_X12_Y3_N9
\U6|PM1|T_Duty~14\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~14_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(8)) # ((\U6|PM1|Add1~25_combout\ & \U6|PM1|T_Duty~0\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add1~25_combout\ & (\U6|PM1|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add1~25_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~14_combout\);

-- Location: LC_X12_Y3_N5
\U6|PM1|T_Duty[8]~15\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[8]~15_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Duty\(8) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0048",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~2_combout\,
	datad => \U3|PWM_Duty\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[8]~15_combout\);

-- Location: LC_X12_Y3_N6
\U6|PM1|T_Duty[8]~16\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[8]~16_combout\ = ((\U3|PWM_Duty\(8) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~2_combout\,
	datad => \U3|PWM_Duty\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[8]~16_combout\);

-- Location: LC_X12_Y3_N0
\U6|PM1|T_Duty[8]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(8) = DFFEAS((((\U6|PM1|T_Duty~14_combout\))), GLOBAL(\Clk~combout\), !\U6|PM1|T_Duty[8]~15_combout\, , , VCC, \U6|PM1|T_Duty[8]~16_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM1|T_Duty~14_combout\,
	aclr => \U6|PM1|T_Duty[8]~15_combout\,
	aload => \U6|PM1|T_Duty[8]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(8));

-- Location: LC_X13_Y5_N9
\U6|PM1|LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan1~1_combout\ = (!\U6|PM1|T_Duty\(7) & (!\U6|PM1|T_Duty\(6) & (!\U6|PM1|T_Duty\(8) & !\U6|PM1|T_Duty\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(7),
	datab => \U6|PM1|T_Duty\(6),
	datac => \U6|PM1|T_Duty\(8),
	datad => \U6|PM1|T_Duty\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan1~1_combout\);

-- Location: LC_X15_Y3_N2
\U6|PM1|Add1~20\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~20_combout\ = \U6|PM1|T_Duty\(9) $ ((((!(!\U6|PM1|Add1~37\ & \U6|PM1|Add1~27\) # (\U6|PM1|Add1~37\ & \U6|PM1|Add1~27COUT1_94\)))))
-- \U6|PM1|Add1~22\ = CARRY((!\U6|PM1|T_Duty\(9) & ((!\U6|PM1|Add1~27\))))
-- \U6|PM1|Add1~22COUT1_96\ = CARRY((!\U6|PM1|T_Duty\(9) & ((!\U6|PM1|Add1~27COUT1_94\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(9),
	cin => \U6|PM1|Add1~37\,
	cin0 => \U6|PM1|Add1~27\,
	cin1 => \U6|PM1|Add1~27COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~20_combout\,
	cout0 => \U6|PM1|Add1~22\,
	cout1 => \U6|PM1|Add1~22COUT1_96\);

-- Location: LC_X14_Y7_N1
\U6|PM1|DutyVal[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(9) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(9))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(9))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(9),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(9));

-- Location: LC_X14_Y7_N2
\U6|PM1|T_Duty~11\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~11_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(9)) # ((\U6|PM1|Add1~20_combout\ & \U6|PM1|T_Duty~0\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|Add1~20_combout\ & (\U6|PM1|T_Duty~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|Add1~20_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~11_combout\);

-- Location: LC_X14_Y7_N7
\U6|PM1|T_Duty[9]~12\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[9]~12_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Duty\(9) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(9),
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[9]~12_combout\);

-- Location: LC_X14_Y7_N3
\U6|PM1|T_Duty[9]~13\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[9]~13_combout\ = ((\U3|PWM_Duty\(9) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(9),
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[9]~13_combout\);

-- Location: LC_X14_Y7_N0
\U6|PM1|T_Duty[9]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(9) = DFFEAS((((\U6|PM1|T_Duty~11_combout\))), GLOBAL(\Clk~combout\), !\U6|PM1|T_Duty[9]~12_combout\, , , VCC, \U6|PM1|T_Duty[9]~13_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM1|T_Duty~11_combout\,
	aclr => \U6|PM1|T_Duty[9]~12_combout\,
	aload => \U6|PM1|T_Duty[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(9));

-- Location: LC_X15_Y3_N3
\U6|PM1|Add1~15\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~15_combout\ = (\U6|PM1|T_Duty\(10) $ (((!\U6|PM1|Add1~37\ & \U6|PM1|Add1~22\) # (\U6|PM1|Add1~37\ & \U6|PM1|Add1~22COUT1_96\))))
-- \U6|PM1|Add1~17\ = CARRY(((\U6|PM1|T_Duty\(10)) # (!\U6|PM1|Add1~22\)))
-- \U6|PM1|Add1~17COUT1_98\ = CARRY(((\U6|PM1|T_Duty\(10)) # (!\U6|PM1|Add1~22COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(10),
	cin => \U6|PM1|Add1~37\,
	cin0 => \U6|PM1|Add1~22\,
	cin1 => \U6|PM1|Add1~22COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~15_combout\,
	cout0 => \U6|PM1|Add1~17\,
	cout1 => \U6|PM1|Add1~17COUT1_98\);

-- Location: LC_X16_Y5_N1
\U6|PM1|DutyVal[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(10) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(10))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(10))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(10),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(10));

-- Location: LC_X16_Y5_N2
\U6|PM1|T_Duty~8\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~8_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(10)) # ((\U6|PM1|T_Duty~0\ & \U6|PM1|Add1~15_combout\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|T_Duty~0\ & (\U6|PM1|Add1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|T_Duty~0\,
	datac => \U6|PM1|Add1~15_combout\,
	datad => \U6|PM1|DutyVal\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~8_combout\);

-- Location: LC_X16_Y5_N9
\U6|PM1|T_Duty[10]~9\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[10]~9_combout\ = (\CPLD_INT~combout\ & (!\U3|PWM_Duty\(10) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(10),
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[10]~9_combout\);

-- Location: LC_X16_Y5_N7
\U6|PM1|T_Duty[10]~10\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[10]~10_combout\ = ((\U3|PWM_Duty\(10) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(10),
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[10]~10_combout\);

-- Location: LC_X16_Y5_N3
\U6|PM1|T_Duty[10]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(10) = DFFEAS((((\U6|PM1|T_Duty~8_combout\))), GLOBAL(\Clk~combout\), !\U6|PM1|T_Duty[10]~9_combout\, , , VCC, \U6|PM1|T_Duty[10]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM1|T_Duty~8_combout\,
	aclr => \U6|PM1|T_Duty[10]~9_combout\,
	aload => \U6|PM1|T_Duty[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(10));

-- Location: LC_X15_Y3_N5
\U6|PM1|Add1~5\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~5_combout\ = (\U6|PM1|T_Duty\(12) $ ((\U6|PM1|Add1~12\)))
-- \U6|PM1|Add1~7\ = CARRY(((\U6|PM1|T_Duty\(12)) # (!\U6|PM1|Add1~12\)))
-- \U6|PM1|Add1~7COUT1_100\ = CARRY(((\U6|PM1|T_Duty\(12)) # (!\U6|PM1|Add1~12\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(12),
	cin => \U6|PM1|Add1~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~5_combout\,
	cout0 => \U6|PM1|Add1~7\,
	cout1 => \U6|PM1|Add1~7COUT1_100\);

-- Location: LC_X14_Y4_N5
\U6|PM1|DutyVal[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(12) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(12))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(12))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(12),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(12));

-- Location: LC_X14_Y4_N6
\U6|PM1|T_Duty~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~2_combout\ = (\U6|PM1|Add1~5_combout\ & ((\U6|PM1|T_Duty~0\) # ((\U6|PM1|LessThan0~4_combout\ & \U6|PM1|DutyVal\(12))))) # (!\U6|PM1|Add1~5_combout\ & (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|Add1~5_combout\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~2_combout\);

-- Location: LC_X14_Y4_N8
\U6|PM1|T_Duty[12]~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[12]~3_combout\ = (!\U3|PWM_Duty\(12) & (\CPLD_INT~combout\ & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(12),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[12]~3_combout\);

-- Location: LC_X14_Y4_N3
\U6|PM1|T_Duty[12]~4\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[12]~4_combout\ = ((\U3|PWM_Duty\(12) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3bb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|PWM_Duty\(12),
	datab => \CPLD_INT~combout\,
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[12]~4_combout\);

-- Location: LC_X14_Y4_N7
\U6|PM1|T_Duty[12]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(12) = DFFEAS((((\U6|PM1|T_Duty~2_combout\))), GLOBAL(\Clk~combout\), !\U6|PM1|T_Duty[12]~3_combout\, , , VCC, \U6|PM1|T_Duty[12]~4_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM1|T_Duty~2_combout\,
	aclr => \U6|PM1|T_Duty[12]~3_combout\,
	aload => \U6|PM1|T_Duty[12]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(12));

-- Location: LC_X14_Y5_N9
\U6|PM1|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan1~0_combout\ = (!\U6|PM1|T_Duty\(9) & (!\U6|PM1|T_Duty\(10) & (!\U6|PM1|T_Duty\(11) & !\U6|PM1|T_Duty\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(9),
	datab => \U6|PM1|T_Duty\(10),
	datac => \U6|PM1|T_Duty\(11),
	datad => \U6|PM1|T_Duty\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan1~0_combout\);

-- Location: LC_X13_Y5_N8
\U6|PM1|LessThan1~2\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan1~2_combout\ = (!\U6|PM1|T_Duty\(2) & (!\U6|PM1|T_Duty\(1) & (!\U6|PM1|T_Duty\(4) & !\U6|PM1|T_Duty\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(2),
	datab => \U6|PM1|T_Duty\(1),
	datac => \U6|PM1|T_Duty\(4),
	datad => \U6|PM1|T_Duty\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan1~2_combout\);

-- Location: LC_X13_Y5_N3
\U6|PM1|LessThan1~3\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|LessThan1~3_combout\ = (!\U6|PM1|T_Duty\(0) & (\U6|PM1|LessThan1~1_combout\ & (\U6|PM1|LessThan1~0_combout\ & \U6|PM1|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(0),
	datab => \U6|PM1|LessThan1~1_combout\,
	datac => \U6|PM1|LessThan1~0_combout\,
	datad => \U6|PM1|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|LessThan1~3_combout\);

-- Location: LC_X12_Y5_N2
\U6|PM1|P~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|P~0_combout\ = (\U6|PM1|WrPrev~regout\ $ ((\U3|sWr_LED~2_combout\))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7b7b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|P~0_combout\);

-- Location: LC_X13_Y5_N4
\U6|PM1|P\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~0\ = (!\U6|PM1|T_Duty\(13) & (((!\U6|PM1|LessThan0~4_combout\ & !\U6|PM1|LessThan1~3_combout\))))
-- \U6|PM1|P~regout\ = DFFEAS(\U6|PM1|T_Duty~0\, GLOBAL(\Clk~combout\), !\U6|PM1|P~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U6|PM1|T_Duty\(13),
	datac => \U6|PM1|LessThan0~4_combout\,
	datad => \U6|PM1|LessThan1~3_combout\,
	aclr => \U6|PM1|P~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~0\,
	regout => \U6|PM1|P~regout\);

-- Location: LC_X15_Y3_N4
\U6|PM1|Add1~10\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~10_combout\ = (\U6|PM1|T_Duty\(11) $ ((!(!\U6|PM1|Add1~37\ & \U6|PM1|Add1~17\) # (\U6|PM1|Add1~37\ & \U6|PM1|Add1~17COUT1_98\))))
-- \U6|PM1|Add1~12\ = CARRY(((!\U6|PM1|T_Duty\(11) & !\U6|PM1|Add1~17COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U6|PM1|T_Duty\(11),
	cin => \U6|PM1|Add1~37\,
	cin0 => \U6|PM1|Add1~17\,
	cin1 => \U6|PM1|Add1~17COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~10_combout\,
	cout => \U6|PM1|Add1~12\);

-- Location: LC_X13_Y4_N4
\U6|PM1|DutyVal[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(11) = ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U3|PWM_Duty\(11))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U6|PM1|DutyVal\(11))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(11),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U6|PM1|DutyVal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(11));

-- Location: LC_X13_Y4_N5
\U6|PM1|T_Duty~5\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~5_combout\ = (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(11)) # ((\U6|PM1|T_Duty~0\ & \U6|PM1|Add1~10_combout\)))) # (!\U6|PM1|LessThan0~4_combout\ & (\U6|PM1|T_Duty~0\ & (\U6|PM1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|LessThan0~4_combout\,
	datab => \U6|PM1|T_Duty~0\,
	datac => \U6|PM1|Add1~10_combout\,
	datad => \U6|PM1|DutyVal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~5_combout\);

-- Location: LC_X13_Y4_N0
\U6|PM1|T_Duty[11]~6\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[11]~6_combout\ = (!\U3|PWM_Duty\(11) & (\CPLD_INT~combout\ & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|WrPrev~regout\,
	datab => \U3|PWM_Duty\(11),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[11]~6_combout\);

-- Location: LC_X13_Y4_N3
\U6|PM1|T_Duty[11]~7\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty[11]~7_combout\ = ((\U3|PWM_Duty\(11) & (\U6|PM1|WrPrev~regout\ $ (\U3|sWr_LED~2_combout\)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|PWM_Duty\(11),
	datac => \U6|PM1|WrPrev~regout\,
	datad => \U3|sWr_LED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty[11]~7_combout\);

-- Location: LC_X13_Y4_N6
\U6|PM1|T_Duty[11]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(11) = DFFEAS((((\U6|PM1|T_Duty~5_combout\))), GLOBAL(\Clk~combout\), !\U6|PM1|T_Duty[11]~6_combout\, , , VCC, \U6|PM1|T_Duty[11]~7_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U6|PM1|T_Duty~5_combout\,
	aclr => \U6|PM1|T_Duty[11]~6_combout\,
	aload => \U6|PM1|T_Duty[11]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(11));

-- Location: LC_X15_Y3_N6
\U6|PM1|Add1~0\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|Add1~0_combout\ = \U6|PM1|T_Duty\(13) $ ((((!(!\U6|PM1|Add1~12\ & \U6|PM1|Add1~7\) # (\U6|PM1|Add1~12\ & \U6|PM1|Add1~7COUT1_100\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|T_Duty\(13),
	cin => \U6|PM1|Add1~12\,
	cin0 => \U6|PM1|Add1~7\,
	cin1 => \U6|PM1|Add1~7COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|Add1~0_combout\);

-- Location: LC_X15_Y6_N0
\U6|PM1|DutyVal[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|DutyVal\(13) = (\CPLD_INT~combout\ & ((GLOBAL(\U6|PM1|PWM_G~0_combout\) & ((\U3|PWM_Duty\(13)))) # (!GLOBAL(\U6|PM1|PWM_G~0_combout\) & (\U6|PM1|DutyVal\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U6|PM1|DutyVal\(13),
	datac => \U6|PM1|PWM_G~0_combout\,
	datad => \U3|PWM_Duty\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|DutyVal\(13));

-- Location: LC_X15_Y6_N1
\U6|PM1|T_Duty~1\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty~1_combout\ = (\U6|PM1|Add1~0_combout\ & ((\U6|PM1|T_Duty~0\) # ((\U6|PM1|LessThan0~4_combout\ & \U6|PM1|DutyVal\(13))))) # (!\U6|PM1|Add1~0_combout\ & (\U6|PM1|LessThan0~4_combout\ & ((\U6|PM1|DutyVal\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|PM1|Add1~0_combout\,
	datab => \U6|PM1|LessThan0~4_combout\,
	datac => \U6|PM1|T_Duty~0\,
	datad => \U6|PM1|DutyVal\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|T_Duty~1_combout\);

-- Location: LC_X15_Y6_N2
\U6|PM1|T_Duty[13]\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|T_Duty\(13) = DFFEAS((((\U6|PM1|T_Duty~1_combout\))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U3|PWM_Duty\(13), \U6|PM1|T_Frq[13]~10_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|PWM_Duty\(13),
	datad => \U6|PM1|T_Duty~1_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U6|PM1|T_Frq[13]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U6|PM1|T_Duty\(13));

-- Location: LC_X9_Y5_N9
\U6|PM1|PWM\ : maxv_lcell
-- Equation(s):
-- \U6|PM1|PWM~combout\ = (((\U3|LED_ONOFF~regout\ & \U6|PM1|P~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|LED_ONOFF~regout\,
	datad => \U6|PM1|P~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U6|PM1|PWM~combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input8~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input8,
	combout => \IO_Input8~combout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input16~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input16,
	combout => \IO_Input16~combout\);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIP_SWITCH[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DIP_SWITCH(1),
	combout => \DIP_SWITCH~combout\(1));

-- Location: LC_X10_Y10_N7
\U3|Pizza_Cali\ : maxv_lcell
-- Equation(s):
-- \U3|Pizza_Cali~regout\ = DFFEAS(((\DIP_SWITCH~combout\(1) & ((!\IO_Input16~combout\) # (!\IO_Input8~combout\)))), GLOBAL(\Clk~combout\), VCC, , , , , !\CPLD_INT~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \IO_Input8~combout\,
	datac => \IO_Input16~combout\,
	datad => \DIP_SWITCH~combout\(1),
	aclr => GND,
	sclr => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Pizza_Cali~regout\);

-- Location: LC_X8_Y9_N6
\U1|WrPrev\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_timer~2\ = (\U3|sWr_timer~2\ $ (((\U3|sWr_timer~1_combout\ & \U3|sWr_timer~0_combout\))))
-- \U1|WrPrev~regout\ = DFFEAS(\U3|sWr_timer~2\, GLOBAL(\Clk~combout\), VCC, , \CPLD_INT~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \U3|sWr_timer~2\,
	datac => \U3|sWr_timer~1_combout\,
	datad => \U3|sWr_timer~0_combout\,
	aclr => GND,
	ena => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_timer~2\,
	regout => \U1|WrPrev~regout\);

-- Location: LC_X8_Y9_N7
\U1|reset~0\ : maxv_lcell
-- Equation(s):
-- \U1|reset~0_combout\ = ((\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|WrPrev~regout\,
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|reset~0_combout\);

-- Location: LC_X9_Y6_N3
\U3|sH_timer[0]~0\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer[0]~0_combout\ = (!\U2|IO_ADDR\(3) & (\U2|IO_RDY_WR~1_combout\ & (\U3|sWr_LED~0_combout\ & \U3|sPWM_Duty[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(3),
	datab => \U2|IO_RDY_WR~1_combout\,
	datac => \U3|sWr_LED~0_combout\,
	datad => \U3|sPWM_Duty[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer[0]~0_combout\);

-- Location: LC_X7_Y10_N7
\U3|sH_timer[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(7) = ((\U3|sH_timer[0]~0_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sH_timer[0]~0_combout\ & (\U3|sH_timer\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sH_timer\(7),
	datac => \U3|sH_timer[0]~0_combout\,
	datad => \U2|IO_DAT_WR\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(7));

-- Location: LC_X7_Y10_N8
\U3|H_timer[7]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(7) = DFFEAS((((\CPLD_INT~combout\ & \U3|sH_timer\(7)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sH_timer\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(7));

-- Location: LC_X7_Y10_N5
\U1|sR_timer[7]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(7) = (\CPLD_INT~combout\ & ((\U1|reset~0_combout\ & ((\U3|H_timer\(7)))) # (!\U1|reset~0_combout\ & (\U1|sR_timer\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(7),
	datab => \CPLD_INT~combout\,
	datac => \U1|reset~0_combout\,
	datad => \U3|H_timer\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(7));

-- Location: LC_X7_Y10_N4
\U1|CNTVal[21]~0\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[21]~0_combout\ = (\U1|sR_timer\(7) & ((\U3|H_timer\(7)) # (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\)))) # (!\U1|sR_timer\(7) & (\U3|H_timer\(7) & (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(7),
	datab => \U3|H_timer\(7),
	datac => \U1|WrPrev~regout\,
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[21]~0_combout\);

-- Location: LC_X3_Y9_N3
\U1|Add0~138\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~138_combout\ = ((!\U1|CNTVal\(0)))
-- \U1|Add0~140\ = CARRY(((\U1|CNTVal\(0))))
-- \U1|Add0~140COUT1_164\ = CARRY(((\U1|CNTVal\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~138_combout\,
	cout0 => \U1|Add0~140\,
	cout1 => \U1|Add0~140COUT1_164\);

-- Location: LC_X8_Y9_N1
\U1|triggerPrev\ : maxv_lcell
-- Equation(s):
-- \U3|sTrigger_Reset~0\ = \U3|sTrigger_Reset~0\ $ (((\U3|Mux162~4_combout\ & (\U3|sWr_timer~1_combout\ & !\U2|IO_ADDR\(0)))))
-- \U1|triggerPrev~regout\ = DFFEAS(\U3|sTrigger_Reset~0\, GLOBAL(\Clk~combout\), VCC, , \CPLD_INT~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc6c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U3|Mux162~4_combout\,
	datab => \U3|sTrigger_Reset~0\,
	datac => \U3|sWr_timer~1_combout\,
	datad => \U2|IO_ADDR\(0),
	aclr => GND,
	ena => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sTrigger_Reset~0\,
	regout => \U1|triggerPrev~regout\);

-- Location: LC_X8_Y9_N2
\U1|HW_Reset~1\ : maxv_lcell
-- Equation(s):
-- \U1|HW_Reset~1_combout\ = ((\U1|reset~0_combout\) # (\U1|triggerPrev~regout\ $ (\U3|sTrigger_Reset~0\))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7fd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U1|triggerPrev~regout\,
	datac => \U1|reset~0_combout\,
	datad => \U3|sTrigger_Reset~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|HW_Reset~1_combout\);

-- Location: LC_X7_Y9_N4
\U1|CNTVal[0]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(0) = DFFEAS((\U1|Add0~138_combout\ & (((!\U1|HW_Reset~0_combout\)))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|Add0~138_combout\,
	datac => \U1|HW_Reset~0_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(0));

-- Location: LC_X3_Y9_N4
\U1|Add0~132\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~132_combout\ = (\U1|CNTVal\(1) $ ((!\U1|Add0~140\)))
-- \U1|Add0~134\ = CARRY(((!\U1|CNTVal\(1) & !\U1|Add0~140COUT1_164\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(1),
	cin0 => \U1|Add0~140\,
	cin1 => \U1|Add0~140COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~132_combout\,
	cout => \U1|Add0~134\);

-- Location: LC_X7_Y9_N7
\U1|CNTVal[1]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(1) = DFFEAS((((!\U1|HW_Reset~0_combout\ & \U1|Add0~132_combout\))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U1|HW_Reset~0_combout\,
	datad => \U1|Add0~132_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(1));

-- Location: LC_X3_Y9_N5
\U1|Add0~126\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~126_combout\ = (\U1|CNTVal\(2) $ ((\U1|Add0~134\)))
-- \U1|Add0~128\ = CARRY(((\U1|CNTVal\(2)) # (!\U1|Add0~134\)))
-- \U1|Add0~128COUT1_166\ = CARRY(((\U1|CNTVal\(2)) # (!\U1|Add0~134\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(2),
	cin => \U1|Add0~134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~126_combout\,
	cout0 => \U1|Add0~128\,
	cout1 => \U1|Add0~128COUT1_166\);

-- Location: LC_X3_Y9_N2
\U1|CNTVal[2]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(2) = DFFEAS((((\U1|Add0~126_combout\ & !\U1|HW_Reset~0_combout\))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U1|Add0~126_combout\,
	datad => \U1|HW_Reset~0_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(2));

-- Location: LC_X3_Y9_N6
\U1|Add0~120\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~120_combout\ = (\U1|CNTVal\(3) $ ((!(!\U1|Add0~134\ & \U1|Add0~128\) # (\U1|Add0~134\ & \U1|Add0~128COUT1_166\))))
-- \U1|Add0~122\ = CARRY(((!\U1|CNTVal\(3) & !\U1|Add0~128\)))
-- \U1|Add0~122COUT1_168\ = CARRY(((!\U1|CNTVal\(3) & !\U1|Add0~128COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(3),
	cin => \U1|Add0~134\,
	cin0 => \U1|Add0~128\,
	cin1 => \U1|Add0~128COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~120_combout\,
	cout0 => \U1|Add0~122\,
	cout1 => \U1|Add0~122COUT1_168\);

-- Location: LC_X6_Y9_N7
\U1|CNTVal[3]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(3) = DFFEAS((!\U1|HW_Reset~0_combout\ & (((\U1|Add0~120_combout\)))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datac => \U1|Add0~120_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(3));

-- Location: LC_X3_Y9_N7
\U1|Add0~114\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~114_combout\ = (\U1|CNTVal\(4) $ (((!\U1|Add0~134\ & \U1|Add0~122\) # (\U1|Add0~134\ & \U1|Add0~122COUT1_168\))))
-- \U1|Add0~116\ = CARRY(((\U1|CNTVal\(4)) # (!\U1|Add0~122\)))
-- \U1|Add0~116COUT1_170\ = CARRY(((\U1|CNTVal\(4)) # (!\U1|Add0~122COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(4),
	cin => \U1|Add0~134\,
	cin0 => \U1|Add0~122\,
	cin1 => \U1|Add0~122COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~114_combout\,
	cout0 => \U1|Add0~116\,
	cout1 => \U1|Add0~116COUT1_170\);

-- Location: LC_X6_Y9_N1
\U1|CNTVal[4]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(4) = DFFEAS((!\U1|HW_Reset~0_combout\ & (((\U1|Add0~114_combout\)))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datac => \U1|Add0~114_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(4));

-- Location: LC_X3_Y9_N8
\U1|Add0~108\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~108_combout\ = (\U1|CNTVal\(5) $ ((!(!\U1|Add0~134\ & \U1|Add0~116\) # (\U1|Add0~134\ & \U1|Add0~116COUT1_170\))))
-- \U1|Add0~110\ = CARRY(((!\U1|CNTVal\(5) & !\U1|Add0~116\)))
-- \U1|Add0~110COUT1_172\ = CARRY(((!\U1|CNTVal\(5) & !\U1|Add0~116COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(5),
	cin => \U1|Add0~134\,
	cin0 => \U1|Add0~116\,
	cin1 => \U1|Add0~116COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~108_combout\,
	cout0 => \U1|Add0~110\,
	cout1 => \U1|Add0~110COUT1_172\);

-- Location: LC_X3_Y9_N1
\U1|CNTVal[5]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(5) = DFFEAS((\U1|Add0~108_combout\ & (((!\U1|HW_Reset~0_combout\)))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|Add0~108_combout\,
	datad => \U1|HW_Reset~0_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(5));

-- Location: LC_X3_Y9_N9
\U1|Add0~102\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~102_combout\ = (\U1|CNTVal\(6) $ (((!\U1|Add0~134\ & \U1|Add0~110\) # (\U1|Add0~134\ & \U1|Add0~110COUT1_172\))))
-- \U1|Add0~104\ = CARRY(((\U1|CNTVal\(6)) # (!\U1|Add0~110COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(6),
	cin => \U1|Add0~134\,
	cin0 => \U1|Add0~110\,
	cin1 => \U1|Add0~110COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~102_combout\,
	cout => \U1|Add0~104\);

-- Location: LC_X6_Y9_N8
\U1|CNTVal[6]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(6) = DFFEAS((((!\U1|HW_Reset~0_combout\ & \U1|Add0~102_combout\))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U1|HW_Reset~0_combout\,
	datad => \U1|Add0~102_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(6));

-- Location: LC_X4_Y9_N0
\U1|Add0~96\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~96_combout\ = (\U1|CNTVal\(7) $ ((!\U1|Add0~104\)))
-- \U1|Add0~98\ = CARRY(((!\U1|CNTVal\(7) & !\U1|Add0~104\)))
-- \U1|Add0~98COUT1_174\ = CARRY(((!\U1|CNTVal\(7) & !\U1|Add0~104\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(7),
	cin => \U1|Add0~104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~96_combout\,
	cout0 => \U1|Add0~98\,
	cout1 => \U1|Add0~98COUT1_174\);

-- Location: LC_X7_Y9_N9
\U1|CNTVal[7]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(7) = DFFEAS((\U1|HW_Reset~0_combout\) # (((\U1|Add0~96_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, \U1|HW_Reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datac => VCC,
	datad => \U1|Add0~96_combout\,
	aclr => GND,
	aload => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(7));

-- Location: LC_X4_Y9_N1
\U1|Add0~90\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~90_combout\ = (\U1|CNTVal\(8) $ (((!\U1|Add0~104\ & \U1|Add0~98\) # (\U1|Add0~104\ & \U1|Add0~98COUT1_174\))))
-- \U1|Add0~92\ = CARRY(((\U1|CNTVal\(8)) # (!\U1|Add0~98\)))
-- \U1|Add0~92COUT1_176\ = CARRY(((\U1|CNTVal\(8)) # (!\U1|Add0~98COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(8),
	cin => \U1|Add0~104\,
	cin0 => \U1|Add0~98\,
	cin1 => \U1|Add0~98COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~90_combout\,
	cout0 => \U1|Add0~92\,
	cout1 => \U1|Add0~92COUT1_176\);

-- Location: LC_X7_Y9_N1
\U1|CNTVal[8]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(8) = DFFEAS((((!\U1|HW_Reset~0_combout\ & \U1|Add0~90_combout\))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U1|HW_Reset~0_combout\,
	datad => \U1|Add0~90_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(8));

-- Location: LC_X4_Y9_N2
\U1|Add0~84\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~84_combout\ = (\U1|CNTVal\(9) $ ((!(!\U1|Add0~104\ & \U1|Add0~92\) # (\U1|Add0~104\ & \U1|Add0~92COUT1_176\))))
-- \U1|Add0~86\ = CARRY(((!\U1|CNTVal\(9) & !\U1|Add0~92\)))
-- \U1|Add0~86COUT1_178\ = CARRY(((!\U1|CNTVal\(9) & !\U1|Add0~92COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(9),
	cin => \U1|Add0~104\,
	cin0 => \U1|Add0~92\,
	cin1 => \U1|Add0~92COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~84_combout\,
	cout0 => \U1|Add0~86\,
	cout1 => \U1|Add0~86COUT1_178\);

-- Location: LC_X7_Y9_N3
\U1|CNTVal[9]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(9) = DFFEAS((\U1|HW_Reset~0_combout\) # (((\U1|Add0~84_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, \U1|HW_Reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datac => VCC,
	datad => \U1|Add0~84_combout\,
	aclr => GND,
	aload => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(9));

-- Location: LC_X4_Y9_N3
\U1|Add0~78\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~78_combout\ = (\U1|CNTVal\(10) $ (((!\U1|Add0~104\ & \U1|Add0~86\) # (\U1|Add0~104\ & \U1|Add0~86COUT1_178\))))
-- \U1|Add0~80\ = CARRY(((\U1|CNTVal\(10)) # (!\U1|Add0~86\)))
-- \U1|Add0~80COUT1_180\ = CARRY(((\U1|CNTVal\(10)) # (!\U1|Add0~86COUT1_178\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(10),
	cin => \U1|Add0~104\,
	cin0 => \U1|Add0~86\,
	cin1 => \U1|Add0~86COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~78_combout\,
	cout0 => \U1|Add0~80\,
	cout1 => \U1|Add0~80COUT1_180\);

-- Location: LC_X7_Y9_N0
\U1|CNTVal[10]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(10) = DFFEAS((\U1|HW_Reset~0_combout\) # (((\U1|Add0~78_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, \U1|HW_Reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datac => VCC,
	datad => \U1|Add0~78_combout\,
	aclr => GND,
	aload => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(10));

-- Location: LC_X4_Y9_N4
\U1|Add0~72\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~72_combout\ = \U1|CNTVal\(11) $ ((((!(!\U1|Add0~104\ & \U1|Add0~80\) # (\U1|Add0~104\ & \U1|Add0~80COUT1_180\)))))
-- \U1|Add0~74\ = CARRY((!\U1|CNTVal\(11) & ((!\U1|Add0~80COUT1_180\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(11),
	cin => \U1|Add0~104\,
	cin0 => \U1|Add0~80\,
	cin1 => \U1|Add0~80COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~72_combout\,
	cout => \U1|Add0~74\);

-- Location: LC_X7_Y9_N8
\U1|CNTVal[11]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(11) = DFFEAS((\U1|HW_Reset~0_combout\) # (((\U1|Add0~72_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, \U1|HW_Reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datac => VCC,
	datad => \U1|Add0~72_combout\,
	aclr => GND,
	aload => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(11));

-- Location: LC_X4_Y9_N5
\U1|Add0~66\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~66_combout\ = (\U1|CNTVal\(12) $ ((\U1|Add0~74\)))
-- \U1|Add0~68\ = CARRY(((\U1|CNTVal\(12)) # (!\U1|Add0~74\)))
-- \U1|Add0~68COUT1_182\ = CARRY(((\U1|CNTVal\(12)) # (!\U1|Add0~74\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(12),
	cin => \U1|Add0~74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~66_combout\,
	cout0 => \U1|Add0~68\,
	cout1 => \U1|Add0~68COUT1_182\);

-- Location: LC_X7_Y9_N5
\U1|CNTVal[12]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(12) = DFFEAS(((\U1|HW_Reset~0_combout\) # ((\U1|Add0~66_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, \U1|HW_Reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \U1|HW_Reset~0_combout\,
	datac => VCC,
	datad => \U1|Add0~66_combout\,
	aclr => GND,
	aload => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(12));

-- Location: LC_X4_Y9_N6
\U1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~60_combout\ = \U1|CNTVal\(13) $ ((((!(!\U1|Add0~74\ & \U1|Add0~68\) # (\U1|Add0~74\ & \U1|Add0~68COUT1_182\)))))
-- \U1|Add0~62\ = CARRY((!\U1|CNTVal\(13) & ((!\U1|Add0~68\))))
-- \U1|Add0~62COUT1_184\ = CARRY((!\U1|CNTVal\(13) & ((!\U1|Add0~68COUT1_182\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(13),
	cin => \U1|Add0~74\,
	cin0 => \U1|Add0~68\,
	cin1 => \U1|Add0~68COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~60_combout\,
	cout0 => \U1|Add0~62\,
	cout1 => \U1|Add0~62COUT1_184\);

-- Location: LC_X3_Y9_N0
\U1|CNTVal[13]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(13) = DFFEAS((\U1|Add0~60_combout\) # (((\U1|HW_Reset~0_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, \U1|HW_Reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|Add0~60_combout\,
	datac => VCC,
	datad => \U1|HW_Reset~0_combout\,
	aclr => GND,
	aload => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(13));

-- Location: LC_X4_Y9_N7
\U1|Add0~54\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~54_combout\ = (\U1|CNTVal\(14) $ (((!\U1|Add0~74\ & \U1|Add0~62\) # (\U1|Add0~74\ & \U1|Add0~62COUT1_184\))))
-- \U1|Add0~56\ = CARRY(((\U1|CNTVal\(14)) # (!\U1|Add0~62\)))
-- \U1|Add0~56COUT1_186\ = CARRY(((\U1|CNTVal\(14)) # (!\U1|Add0~62COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(14),
	cin => \U1|Add0~74\,
	cin0 => \U1|Add0~62\,
	cin1 => \U1|Add0~62COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~54_combout\,
	cout0 => \U1|Add0~56\,
	cout1 => \U1|Add0~56COUT1_186\);

-- Location: LC_X13_Y6_N3
\U3|sH_timer[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(0) = ((\U3|sH_timer[0]~0_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|sH_timer[0]~0_combout\ & ((\U3|sH_timer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_DAT_WR\(0),
	datac => \U3|sH_timer[0]~0_combout\,
	datad => \U3|sH_timer\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(0));

-- Location: LC_X13_Y6_N4
\U3|H_timer[0]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(0) = DFFEAS((((\U3|sH_timer\(0)) # (!\CPLD_INT~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sH_timer\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(0));

-- Location: LC_X8_Y9_N8
\U1|sR_timer[0]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(0) = (\CPLD_INT~combout\ & ((\U1|reset~0_combout\ & ((\U3|H_timer\(0)))) # (!\U1|reset~0_combout\ & (\U1|sR_timer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U1|sR_timer\(0),
	datac => \U3|H_timer\(0),
	datad => \U1|reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(0));

-- Location: LC_X9_Y9_N3
\U1|CNTVal[14]~8\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[14]~8_combout\ = (\U1|sR_timer\(0) & ((\U3|H_timer\(0)) # (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\)))) # (!\U1|sR_timer\(0) & (\U3|H_timer\(0) & (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(0),
	datab => \U1|WrPrev~regout\,
	datac => \U3|H_timer\(0),
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[14]~8_combout\);

-- Location: LC_X8_Y9_N3
\U1|CNTVal[21]~1\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[21]~1_combout\ = (\CPLD_INT~combout\ & ((\U1|reset~0_combout\) # (\U1|triggerPrev~regout\ $ (\U3|sTrigger_Reset~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U1|triggerPrev~regout\,
	datac => \U1|reset~0_combout\,
	datad => \U3|sTrigger_Reset~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[21]~1_combout\);

-- Location: LC_X8_Y9_N9
\U1|CNTVal[14]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(14) = DFFEAS((\U1|HW_Reset~0_combout\ & (((\U1|sR_timer\(0))))) # (!\U1|HW_Reset~0_combout\ & (\U1|Add0~54_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[14]~8_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datab => \U1|Add0~54_combout\,
	datac => \U1|CNTVal[14]~8_combout\,
	datad => \U1|sR_timer\(0),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(14));

-- Location: LC_X4_Y9_N8
\U1|Add0~48\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~48_combout\ = \U1|CNTVal\(15) $ ((((!(!\U1|Add0~74\ & \U1|Add0~56\) # (\U1|Add0~74\ & \U1|Add0~56COUT1_186\)))))
-- \U1|Add0~50\ = CARRY((!\U1|CNTVal\(15) & ((!\U1|Add0~56\))))
-- \U1|Add0~50COUT1_188\ = CARRY((!\U1|CNTVal\(15) & ((!\U1|Add0~56COUT1_186\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(15),
	cin => \U1|Add0~74\,
	cin0 => \U1|Add0~56\,
	cin1 => \U1|Add0~56COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~48_combout\,
	cout0 => \U1|Add0~50\,
	cout1 => \U1|Add0~50COUT1_188\);

-- Location: LC_X10_Y9_N1
\U3|sH_timer[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(1) = ((\U3|sH_timer[0]~0_combout\ & (\U2|IO_DAT_WR\(1))) # (!\U3|sH_timer[0]~0_combout\ & ((\U3|sH_timer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(1),
	datac => \U3|sH_timer[0]~0_combout\,
	datad => \U3|sH_timer\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(1));

-- Location: LC_X10_Y9_N2
\U3|H_timer[1]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(1) = DFFEAS((((\U3|sH_timer\(1)))) # (!\CPLD_INT~combout\), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sH_timer\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(1));

-- Location: LC_X9_Y9_N6
\U1|sR_timer[1]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(1) = ((\U1|reset~0_combout\ & (\U3|H_timer\(1))) # (!\U1|reset~0_combout\ & ((\U1|sR_timer\(1))))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddf5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|H_timer\(1),
	datac => \U1|sR_timer\(1),
	datad => \U1|reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(1));

-- Location: LC_X9_Y9_N7
\U1|CNTVal[15]~7\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[15]~7_combout\ = (\U1|sR_timer\(1) & ((\U3|H_timer\(1)) # (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\)))) # (!\U1|sR_timer\(1) & (\U3|H_timer\(1) & (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(1),
	datab => \U1|WrPrev~regout\,
	datac => \U3|H_timer\(1),
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[15]~7_combout\);

-- Location: LC_X9_Y9_N0
\U1|CNTVal[15]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(15) = DFFEAS((\U1|HW_Reset~0_combout\ & (((\U1|sR_timer\(1))))) # (!\U1|HW_Reset~0_combout\ & (\U1|Add0~48_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[15]~7_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datab => \U1|Add0~48_combout\,
	datac => \U1|CNTVal[15]~7_combout\,
	datad => \U1|sR_timer\(1),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(15));

-- Location: LC_X4_Y9_N9
\U1|Add0~42\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~42_combout\ = \U1|CNTVal\(16) $ (((((!\U1|Add0~74\ & \U1|Add0~50\) # (\U1|Add0~74\ & \U1|Add0~50COUT1_188\)))))
-- \U1|Add0~44\ = CARRY((\U1|CNTVal\(16)) # ((!\U1|Add0~50COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(16),
	cin => \U1|Add0~74\,
	cin0 => \U1|Add0~50\,
	cin1 => \U1|Add0~50COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~42_combout\,
	cout => \U1|Add0~44\);

-- Location: LC_X9_Y6_N4
\U3|sH_timer[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(2) = (\U3|sH_timer[0]~0_combout\ & (((\U2|IO_DAT_WR\(2))))) # (!\U3|sH_timer[0]~0_combout\ & (((\U3|sH_timer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sH_timer[0]~0_combout\,
	datac => \U3|sH_timer\(2),
	datad => \U2|IO_DAT_WR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(2));

-- Location: LC_X9_Y6_N0
\U3|H_timer[2]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(2) = DFFEAS(((\CPLD_INT~combout\ & (\U3|sH_timer\(2)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sH_timer\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(2));

-- Location: LC_X9_Y9_N1
\U1|sR_timer[2]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(2) = (\CPLD_INT~combout\ & ((\U1|reset~0_combout\ & ((\U3|H_timer\(2)))) # (!\U1|reset~0_combout\ & (\U1|sR_timer\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U1|sR_timer\(2),
	datac => \U3|H_timer\(2),
	datad => \U1|reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(2));

-- Location: LC_X9_Y9_N4
\U1|CNTVal[16]~6\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[16]~6_combout\ = (\U3|H_timer\(2) & ((\U1|sR_timer\(2)) # (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\)))) # (!\U3|H_timer\(2) & (\U1|sR_timer\(2) & (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|H_timer\(2),
	datab => \U1|WrPrev~regout\,
	datac => \U1|sR_timer\(2),
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[16]~6_combout\);

-- Location: LC_X9_Y9_N2
\U1|CNTVal[16]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(16) = DFFEAS((\U1|HW_Reset~0_combout\ & (((\U1|sR_timer\(2))))) # (!\U1|HW_Reset~0_combout\ & (\U1|Add0~42_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[16]~6_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datab => \U1|Add0~42_combout\,
	datac => \U1|CNTVal[16]~6_combout\,
	datad => \U1|sR_timer\(2),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(16));

-- Location: LC_X10_Y9_N8
\U3|sH_timer[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(5) = (\U3|sH_timer[0]~0_combout\ & (((\U2|IO_DAT_WR\(5))))) # (!\U3|sH_timer[0]~0_combout\ & (((\U3|sH_timer\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sH_timer[0]~0_combout\,
	datac => \U2|IO_DAT_WR\(5),
	datad => \U3|sH_timer\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(5));

-- Location: LC_X10_Y9_N4
\U3|H_timer[5]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(5) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sH_timer\(5))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sH_timer\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(5));

-- Location: LC_X11_Y9_N5
\U1|sR_timer[5]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(5) = (\CPLD_INT~combout\ & ((\U1|reset~0_combout\ & (\U3|H_timer\(5))) # (!\U1|reset~0_combout\ & ((\U1|sR_timer\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|H_timer\(5),
	datac => \U1|reset~0_combout\,
	datad => \U1|sR_timer\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(5));

-- Location: LC_X11_Y9_N4
\U1|CNTVal[19]~3\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[19]~3_combout\ = (\U3|H_timer\(5) & ((\U1|sR_timer\(5)) # (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\)))) # (!\U3|H_timer\(5) & (\U1|sR_timer\(5) & (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|H_timer\(5),
	datab => \U1|sR_timer\(5),
	datac => \U1|WrPrev~regout\,
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[19]~3_combout\);

-- Location: LC_X5_Y9_N0
\U1|Add0~36\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~36_combout\ = (\U1|CNTVal\(17) $ ((!\U1|Add0~44\)))
-- \U1|Add0~38\ = CARRY(((!\U1|CNTVal\(17) & !\U1|Add0~44\)))
-- \U1|Add0~38COUT1_190\ = CARRY(((!\U1|CNTVal\(17) & !\U1|Add0~44\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(17),
	cin => \U1|Add0~44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~36_combout\,
	cout0 => \U1|Add0~38\,
	cout1 => \U1|Add0~38COUT1_190\);

-- Location: LC_X8_Y8_N1
\U3|sH_timer[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(3) = ((\U3|sH_timer[0]~0_combout\ & (\U2|IO_DAT_WR\(3))) # (!\U3|sH_timer[0]~0_combout\ & ((\U3|sH_timer\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_DAT_WR\(3),
	datac => \U3|sH_timer[0]~0_combout\,
	datad => \U3|sH_timer\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(3));

-- Location: LC_X8_Y8_N5
\U3|H_timer[3]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(3) = DFFEAS((((\U3|sH_timer\(3)) # (!\CPLD_INT~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sH_timer\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(3));

-- Location: LC_X9_Y9_N8
\U1|sR_timer[3]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(3) = ((\U1|reset~0_combout\ & ((\U3|H_timer\(3)))) # (!\U1|reset~0_combout\ & (\U1|sR_timer\(3)))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(3),
	datab => \CPLD_INT~combout\,
	datac => \U3|H_timer\(3),
	datad => \U1|reset~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(3));

-- Location: LC_X9_Y9_N5
\U1|CNTVal[17]~5\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[17]~5_combout\ = (\U1|sR_timer\(3) & ((\U3|H_timer\(3)) # (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\)))) # (!\U1|sR_timer\(3) & (\U3|H_timer\(3) & (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(3),
	datab => \U1|WrPrev~regout\,
	datac => \U3|H_timer\(3),
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[17]~5_combout\);

-- Location: LC_X9_Y9_N9
\U1|CNTVal[17]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(17) = DFFEAS((\U1|HW_Reset~0_combout\ & (((\U1|sR_timer\(3))))) # (!\U1|HW_Reset~0_combout\ & (\U1|Add0~36_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[17]~5_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datab => \U1|Add0~36_combout\,
	datac => \U1|CNTVal[17]~5_combout\,
	datad => \U1|sR_timer\(3),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(17));

-- Location: LC_X5_Y9_N1
\U1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~30_combout\ = (\U1|CNTVal\(18) $ (((!\U1|Add0~44\ & \U1|Add0~38\) # (\U1|Add0~44\ & \U1|Add0~38COUT1_190\))))
-- \U1|Add0~32\ = CARRY(((\U1|CNTVal\(18)) # (!\U1|Add0~38\)))
-- \U1|Add0~32COUT1_192\ = CARRY(((\U1|CNTVal\(18)) # (!\U1|Add0~38COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(18),
	cin => \U1|Add0~44\,
	cin0 => \U1|Add0~38\,
	cin1 => \U1|Add0~38COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~30_combout\,
	cout0 => \U1|Add0~32\,
	cout1 => \U1|Add0~32COUT1_192\);

-- Location: LC_X7_Y10_N2
\U3|sH_timer[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(4) = ((\U3|sH_timer[0]~0_combout\ & (\U2|IO_DAT_WR\(4))) # (!\U3|sH_timer[0]~0_combout\ & ((\U3|sH_timer\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(4),
	datac => \U3|sH_timer[0]~0_combout\,
	datad => \U3|sH_timer\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(4));

-- Location: LC_X7_Y10_N3
\U3|H_timer[4]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(4) = DFFEAS((((\CPLD_INT~combout\ & \U3|sH_timer\(4)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sH_timer\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(4));

-- Location: LC_X7_Y10_N0
\U1|sR_timer[4]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(4) = (\CPLD_INT~combout\ & ((\U1|reset~0_combout\ & ((\U3|H_timer\(4)))) # (!\U1|reset~0_combout\ & (\U1|sR_timer\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U1|sR_timer\(4),
	datac => \U1|reset~0_combout\,
	datad => \U3|H_timer\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(4));

-- Location: LC_X7_Y10_N9
\U1|CNTVal[18]~4\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[18]~4_combout\ = (\U3|H_timer\(4) & ((\U1|sR_timer\(4)) # (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\)))) # (!\U3|H_timer\(4) & (\U1|sR_timer\(4) & (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|H_timer\(4),
	datab => \U1|sR_timer\(4),
	datac => \U1|WrPrev~regout\,
	datad => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[18]~4_combout\);

-- Location: LC_X7_Y10_N1
\U1|CNTVal[18]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(18) = DFFEAS((\U1|HW_Reset~0_combout\ & (((\U1|sR_timer\(4))))) # (!\U1|HW_Reset~0_combout\ & (\U1|Add0~30_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[18]~4_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datab => \U1|Add0~30_combout\,
	datac => \U1|CNTVal[18]~4_combout\,
	datad => \U1|sR_timer\(4),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(18));

-- Location: LC_X5_Y9_N2
\U1|Add0~24\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~24_combout\ = (\U1|CNTVal\(19) $ ((!(!\U1|Add0~44\ & \U1|Add0~32\) # (\U1|Add0~44\ & \U1|Add0~32COUT1_192\))))
-- \U1|Add0~26\ = CARRY(((!\U1|CNTVal\(19) & !\U1|Add0~32\)))
-- \U1|Add0~26COUT1_194\ = CARRY(((!\U1|CNTVal\(19) & !\U1|Add0~32COUT1_192\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(19),
	cin => \U1|Add0~44\,
	cin0 => \U1|Add0~32\,
	cin1 => \U1|Add0~32COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~24_combout\,
	cout0 => \U1|Add0~26\,
	cout1 => \U1|Add0~26COUT1_194\);

-- Location: LC_X11_Y9_N8
\U1|CNTVal[19]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(19) = DFFEAS((\U1|HW_Reset~0_combout\ & (\U1|sR_timer\(5))) # (!\U1|HW_Reset~0_combout\ & (((\U1|Add0~24_combout\)))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[19]~3_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|sR_timer\(5),
	datab => \U1|HW_Reset~0_combout\,
	datac => \U1|CNTVal[19]~3_combout\,
	datad => \U1|Add0~24_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(19));

-- Location: LC_X5_Y9_N3
\U1|Add0~18\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~18_combout\ = (\U1|CNTVal\(20) $ (((!\U1|Add0~44\ & \U1|Add0~26\) # (\U1|Add0~44\ & \U1|Add0~26COUT1_194\))))
-- \U1|Add0~20\ = CARRY(((\U1|CNTVal\(20)) # (!\U1|Add0~26\)))
-- \U1|Add0~20COUT1_196\ = CARRY(((\U1|CNTVal\(20)) # (!\U1|Add0~26COUT1_194\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(20),
	cin => \U1|Add0~44\,
	cin0 => \U1|Add0~26\,
	cin1 => \U1|Add0~26COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~18_combout\,
	cout0 => \U1|Add0~20\,
	cout1 => \U1|Add0~20COUT1_196\);

-- Location: LC_X10_Y9_N0
\U3|sH_timer[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sH_timer\(6) = ((\U3|sH_timer[0]~0_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|sH_timer[0]~0_combout\ & (\U3|sH_timer\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sH_timer\(6),
	datac => \U3|sH_timer[0]~0_combout\,
	datad => \U2|IO_DAT_WR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sH_timer\(6));

-- Location: LC_X10_Y9_N5
\U3|H_timer[6]\ : maxv_lcell
-- Equation(s):
-- \U3|H_timer\(6) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sH_timer\(6))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sH_timer\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|H_timer\(6));

-- Location: LC_X5_Y9_N8
\U1|sR_timer[6]\ : maxv_lcell
-- Equation(s):
-- \U1|sR_timer\(6) = (\CPLD_INT~combout\ & ((\U1|reset~0_combout\ & ((\U3|H_timer\(6)))) # (!\U1|reset~0_combout\ & (\U1|sR_timer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(6),
	datab => \CPLD_INT~combout\,
	datac => \U1|reset~0_combout\,
	datad => \U3|H_timer\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sR_timer\(6));

-- Location: LC_X10_Y9_N3
\U1|CNTVal[20]~2\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal[20]~2_combout\ = (\U3|H_timer\(6) & ((\U1|sR_timer\(6)) # (\U1|WrPrev~regout\ $ (\U3|sWr_timer~2\)))) # (!\U3|H_timer\(6) & (\U1|sR_timer\(6) & (\U1|WrPrev~regout\ $ (!\U3|sWr_timer~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eb28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|H_timer\(6),
	datab => \U1|WrPrev~regout\,
	datac => \U3|sWr_timer~2\,
	datad => \U1|sR_timer\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|CNTVal[20]~2_combout\);

-- Location: LC_X5_Y9_N9
\U1|CNTVal[20]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(20) = DFFEAS((\U1|HW_Reset~0_combout\ & (((\U1|sR_timer\(6))))) # (!\U1|HW_Reset~0_combout\ & (\U1|Add0~18_combout\)), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[20]~2_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|Add0~18_combout\,
	datab => \U1|HW_Reset~0_combout\,
	datac => \U1|CNTVal[20]~2_combout\,
	datad => \U1|sR_timer\(6),
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(20));

-- Location: LC_X5_Y9_N4
\U1|Add0~12\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~12_combout\ = \U1|CNTVal\(21) $ ((((!(!\U1|Add0~44\ & \U1|Add0~20\) # (\U1|Add0~44\ & \U1|Add0~20COUT1_196\)))))
-- \U1|Add0~14\ = CARRY((!\U1|CNTVal\(21) & ((!\U1|Add0~20COUT1_196\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(21),
	cin => \U1|Add0~44\,
	cin0 => \U1|Add0~20\,
	cin1 => \U1|Add0~20COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~12_combout\,
	cout => \U1|Add0~14\);

-- Location: LC_X7_Y10_N6
\U1|CNTVal[21]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(21) = DFFEAS((\U1|HW_Reset~0_combout\ & (\U1|sR_timer\(7))) # (!\U1|HW_Reset~0_combout\ & (((\U1|Add0~12_combout\)))), GLOBAL(\Clk~combout\), \CPLD_INT~combout\, , , \U1|CNTVal[21]~0_combout\, \U1|CNTVal[21]~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|sR_timer\(7),
	datab => \U1|HW_Reset~0_combout\,
	datac => \U1|CNTVal[21]~0_combout\,
	datad => \U1|Add0~12_combout\,
	aclr => \ALT_INV_CPLD_INT~combout\,
	aload => \U1|CNTVal[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(21));

-- Location: LC_X5_Y9_N5
\U1|Add0~6\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~6_combout\ = (\U1|CNTVal\(22) $ ((\U1|Add0~14\)))
-- \U1|Add0~8\ = CARRY(((\U1|CNTVal\(22)) # (!\U1|Add0~14\)))
-- \U1|Add0~8COUT1_198\ = CARRY(((\U1|CNTVal\(22)) # (!\U1|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(22),
	cin => \U1|Add0~14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~6_combout\,
	cout0 => \U1|Add0~8\,
	cout1 => \U1|Add0~8COUT1_198\);

-- Location: LC_X6_Y9_N2
\U1|CNTVal[22]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(22) = DFFEAS((((!\U1|HW_Reset~0_combout\ & \U1|Add0~6_combout\))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U1|HW_Reset~0_combout\,
	datad => \U1|Add0~6_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(22));

-- Location: LC_X5_Y9_N6
\U1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \U1|Add0~0_combout\ = (\U1|CNTVal\(23) $ ((!(!\U1|Add0~14\ & \U1|Add0~8\) # (\U1|Add0~14\ & \U1|Add0~8COUT1_198\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|CNTVal\(23),
	cin => \U1|Add0~14\,
	cin0 => \U1|Add0~8\,
	cin1 => \U1|Add0~8COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|Add0~0_combout\);

-- Location: LC_X5_Y9_N7
\U1|CNTVal[23]\ : maxv_lcell
-- Equation(s):
-- \U1|CNTVal\(23) = DFFEAS(((!\U1|HW_Reset~0_combout\ & ((\U1|Add0~0_combout\)))), GLOBAL(\Clk~combout\), !\U1|HW_Reset~1_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \U1|HW_Reset~0_combout\,
	datad => \U1|Add0~0_combout\,
	aclr => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|CNTVal\(23));

-- Location: LC_X10_Y9_N9
\U1|TR~0\ : maxv_lcell
-- Equation(s):
-- \U1|TR~0_combout\ = (\U1|WrPrev~regout\ $ ((\U3|sWr_timer~2\))) # (!\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7d7d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U1|WrPrev~regout\,
	datac => \U3|sWr_timer~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|TR~0_combout\);

-- Location: LC_X10_Y9_N7
\U1|reset~1\ : maxv_lcell
-- Equation(s):
-- \U1|reset~1_combout\ = ((\U1|triggerPrev~regout\ $ (\U3|sTrigger_Reset~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|triggerPrev~regout\,
	datad => \U3|sTrigger_Reset~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|reset~1_combout\);

-- Location: LC_X10_Y9_N6
\U1|TR\ : maxv_lcell
-- Equation(s):
-- \U1|TR~regout\ = DFFEAS((((!\U1|HW_Reset~0_combout\))), GLOBAL(\Clk~combout\), !\U1|TR~0_combout\, , , VCC, \U1|reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \U1|HW_Reset~0_combout\,
	aclr => \U1|TR~0_combout\,
	aload => \U1|reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|TR~regout\);

-- Location: LC_X6_Y9_N5
\U1|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~5_combout\ = (!\U1|CNTVal\(6) & (!\U1|CNTVal\(4) & (!\U1|CNTVal\(5) & !\U1|CNTVal\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(6),
	datab => \U1|CNTVal\(4),
	datac => \U1|CNTVal\(5),
	datad => \U1|CNTVal\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~5_combout\);

-- Location: LC_X6_Y9_N6
\U1|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~6_combout\ = (!\U1|CNTVal\(2) & (!\U1|CNTVal\(0) & (!\U1|CNTVal\(1) & \U1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(2),
	datab => \U1|CNTVal\(0),
	datac => \U1|CNTVal\(1),
	datad => \U1|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~6_combout\);

-- Location: LC_X8_Y9_N4
\U1|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~3_combout\ = (!\U1|CNTVal\(7) & (!\U1|CNTVal\(9) & (!\U1|CNTVal\(8) & !\U1|CNTVal\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(7),
	datab => \U1|CNTVal\(9),
	datac => \U1|CNTVal\(8),
	datad => \U1|CNTVal\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~3_combout\);

-- Location: LC_X7_Y9_N2
\U1|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~2_combout\ = (!\U1|CNTVal\(12) & (!\U1|CNTVal\(14) & (!\U1|CNTVal\(13) & !\U1|CNTVal\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(12),
	datab => \U1|CNTVal\(14),
	datac => \U1|CNTVal\(13),
	datad => \U1|CNTVal\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~2_combout\);

-- Location: LC_X6_Y9_N0
\U1|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~1_combout\ = (!\U1|CNTVal\(15) & (!\U1|CNTVal\(16) & (!\U1|CNTVal\(18) & !\U1|CNTVal\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(15),
	datab => \U1|CNTVal\(16),
	datac => \U1|CNTVal\(18),
	datad => \U1|CNTVal\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~1_combout\);

-- Location: LC_X6_Y9_N9
\U1|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~0_combout\ = (!\U1|CNTVal\(20) & (!\U1|CNTVal\(22) & (!\U1|CNTVal\(21) & !\U1|CNTVal\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(20),
	datab => \U1|CNTVal\(22),
	datac => \U1|CNTVal\(21),
	datad => \U1|CNTVal\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~0_combout\);

-- Location: LC_X6_Y9_N3
\U1|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \U1|LessThan0~4_combout\ = (\U1|LessThan0~3_combout\ & (\U1|LessThan0~2_combout\ & (\U1|LessThan0~1_combout\ & \U1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|LessThan0~3_combout\,
	datab => \U1|LessThan0~2_combout\,
	datac => \U1|LessThan0~1_combout\,
	datad => \U1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|LessThan0~4_combout\);

-- Location: LC_X6_Y9_N4
\U1|HW_Reset~0\ : maxv_lcell
-- Equation(s):
-- \U1|HW_Reset~0_combout\ = (\U1|CNTVal\(23)) # (((\U1|LessThan0~6_combout\ & \U1|LessThan0~4_combout\)) # (!\U1|TR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbbb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|CNTVal\(23),
	datab => \U1|TR~regout\,
	datac => \U1|LessThan0~6_combout\,
	datad => \U1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|HW_Reset~0_combout\);

-- Location: LC_X7_Y9_N6
\U1|HW_Reset\ : maxv_lcell
-- Equation(s):
-- \U1|HW_Reset~regout\ = DFFEAS((\U1|HW_Reset~0_combout\), GLOBAL(\Clk~combout\), VCC, , , VCC, \U1|HW_Reset~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U1|HW_Reset~0_combout\,
	datac => VCC,
	aclr => GND,
	aload => \U1|HW_Reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|HW_Reset~regout\);

-- Location: LC_X8_Y7_N7
\U3|sWr_LED~3\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_LED~3_combout\ = (!\U2|IO_ADDR\(7) & (((!\U2|IO_ADDR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(7),
	datad => \U2|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_LED~3_combout\);

-- Location: LC_X8_Y7_N5
\U3|Mux156~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~2_combout\ = (((!\U2|IO_ADDR\(6) & !\U2|IO_ADDR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|IO_ADDR\(6),
	datad => \U2|IO_ADDR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~2_combout\);

-- Location: LC_X9_Y8_N2
\U3|soPin7_0[0]~0\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0[0]~0_combout\ = (!\nCS~combout\ & (!\nWR~combout\ & (\U3|sWr_LED~3_combout\ & \U3|Mux156~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nCS~combout\,
	datab => \nWR~combout\,
	datac => \U3|sWr_LED~3_combout\,
	datad => \U3|Mux156~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0[0]~0_combout\);

-- Location: LC_X11_Y7_N7
\U3|soPin23_16~0\ : maxv_lcell
-- Equation(s):
-- \U3|soPin23_16~0_combout\ = (!\U2|IO_ADDR\(5) & (!\U2|IO_ADDR\(0) & (\U3|Mux162~4_combout\ & \U3|soPin7_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U2|IO_ADDR\(0),
	datac => \U3|Mux162~4_combout\,
	datad => \U3|soPin7_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin23_16~0_combout\);

-- Location: LC_X12_Y7_N9
\U3|soPin23_16\ : maxv_lcell
-- Equation(s):
-- \U3|soPin23_16~combout\ = (\CPLD_INT~combout\ & ((\U3|soPin23_16~0_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|soPin23_16~0_combout\ & (\U3|soPin23_16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|soPin23_16~combout\,
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(0),
	datad => \U3|soPin23_16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin23_16~combout\);

-- Location: LC_X12_Y7_N7
\U3|oPin23_16\ : maxv_lcell
-- Equation(s):
-- \U3|oPin23_16~regout\ = DFFEAS((((\CPLD_INT~combout\ & \U3|soPin23_16~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|soPin23_16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin23_16~regout\);

-- Location: LC_X8_Y4_N3
\U3|soPin15_8[0]~0\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8[0]~0_combout\ = (!\U2|IO_ADDR\(5) & (\U3|soPin7_0[0]~0_combout\ & (\U3|Mux162~4_combout\ & \U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U3|soPin7_0[0]~0_combout\,
	datac => \U3|Mux162~4_combout\,
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8[0]~0_combout\);

-- Location: LC_X8_Y4_N0
\U3|soPin15_8[7]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(7) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|soPin15_8[0]~0_combout\ & (\U3|soPin15_8\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|soPin15_8\(7),
	datac => \U2|IO_DAT_WR\(7),
	datad => \U3|soPin15_8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(7));

-- Location: LC_X8_Y4_N9
\U3|oPin15_8[7]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(7) = DFFEAS(((\CPLD_INT~combout\ & (\U3|soPin15_8\(7)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|soPin15_8\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(7));

-- Location: LC_X2_Y8_N4
\U3|oPin15_8[6]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(6) = DFFEAS((((\CPLD_INT~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \CPLD_INT~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(6));

-- Location: LC_X5_Y4_N7
\U3|soPin15_8[5]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(5) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & (\U2|IO_DAT_WR\(5))) # (!\U3|soPin15_8[0]~0_combout\ & ((\U3|soPin15_8\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(5),
	datac => \U3|soPin15_8\(5),
	datad => \U3|soPin15_8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(5));

-- Location: LC_X5_Y4_N8
\U3|oPin15_8[5]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(5) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|soPin15_8\(5))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|soPin15_8\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(5));

-- Location: LC_X5_Y4_N1
\U3|soPin15_8[4]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(4) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|soPin15_8[0]~0_combout\ & (\U3|soPin15_8\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|soPin15_8\(4),
	datac => \U2|IO_DAT_WR\(4),
	datad => \U3|soPin15_8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(4));

-- Location: LC_X5_Y4_N0
\U3|oPin15_8[4]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(4) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|soPin15_8\(4))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|soPin15_8\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(4));

-- Location: LC_X7_Y8_N6
\U3|soPin15_8[3]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(3) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|soPin15_8[0]~0_combout\ & (\U3|soPin15_8\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|soPin15_8\(3),
	datac => \U3|soPin15_8[0]~0_combout\,
	datad => \U2|IO_DAT_WR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(3));

-- Location: LC_X7_Y8_N7
\U3|oPin15_8[3]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(3) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|soPin15_8\(3))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|soPin15_8\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(3));

-- Location: LC_X6_Y4_N0
\U3|soPin15_8[2]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(2) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|soPin15_8[0]~0_combout\ & ((\U3|soPin15_8\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(2),
	datac => \U3|soPin15_8\(2),
	datad => \U3|soPin15_8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(2));

-- Location: LC_X6_Y4_N1
\U3|oPin15_8[2]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(2) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|soPin15_8\(2))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|soPin15_8\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(2));

-- Location: LC_X3_Y8_N8
\U3|soPin15_8[1]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(1) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|soPin15_8[0]~0_combout\ & (\U3|soPin15_8\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|soPin15_8\(1),
	datac => \U2|IO_DAT_WR\(1),
	datad => \U3|soPin15_8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(1));

-- Location: LC_X3_Y8_N9
\U3|oPin15_8[1]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(1) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|soPin15_8\(1))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|soPin15_8\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(1));

-- Location: LC_X8_Y4_N1
\U3|soPin15_8[0]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(0) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|soPin15_8[0]~0_combout\ & ((\U3|soPin15_8\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(0),
	datab => \CPLD_INT~combout\,
	datac => \U3|soPin15_8\(0),
	datad => \U3|soPin15_8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(0));

-- Location: LC_X8_Y4_N2
\U3|oPin15_8[0]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin15_8\(0) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|soPin15_8\(0))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|soPin15_8\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin15_8\(0));

-- Location: LC_X10_Y6_N3
\U3|sPWM_Frq[8]~2\ : maxv_lcell
-- Equation(s):
-- \U3|sPWM_Frq[8]~2_combout\ = (((!\U2|IO_ADDR\(0) & \U2|IO_ADDR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sPWM_Frq[8]~2_combout\);

-- Location: LC_X10_Y5_N0
\U3|soPin7_0[0]~1\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0[0]~1_combout\ = (!\U2|IO_ADDR\(5) & (\U3|soPin7_0[0]~0_combout\ & (\U3|sPWM_Frq[8]~2_combout\ & !\U2|IO_ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U3|soPin7_0[0]~0_combout\,
	datac => \U3|sPWM_Frq[8]~2_combout\,
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0[0]~1_combout\);

-- Location: LC_X7_Y4_N1
\U3|soPin7_0[7]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(7) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & (\U2|IO_DAT_WR\(7))) # (!\U3|soPin7_0[0]~1_combout\ & ((\U3|soPin7_0\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(7),
	datab => \CPLD_INT~combout\,
	datac => \U3|soPin7_0[0]~1_combout\,
	datad => \U3|soPin7_0\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(7));

-- Location: LC_X7_Y4_N2
\U3|oPin7_0[7]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(7) = DFFEAS((\CPLD_INT~combout\ & (((\U3|soPin7_0\(7))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|soPin7_0\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(7));

-- Location: LC_X10_Y5_N8
\U3|soPin7_0[6]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(6) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|soPin7_0[0]~1_combout\ & (\U3|soPin7_0\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|soPin7_0\(6),
	datab => \U2|IO_DAT_WR\(6),
	datac => \U3|soPin7_0[0]~1_combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(6));

-- Location: LC_X10_Y5_N9
\U3|oPin7_0[6]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(6) = DFFEAS((((\CPLD_INT~combout\ & \U3|soPin7_0\(6)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|soPin7_0\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(6));

-- Location: LC_X7_Y5_N8
\U3|soPin7_0[5]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(5) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & (\U2|IO_DAT_WR\(5))) # (!\U3|soPin7_0[0]~1_combout\ & ((\U3|soPin7_0\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(5),
	datab => \CPLD_INT~combout\,
	datac => \U3|soPin7_0[0]~1_combout\,
	datad => \U3|soPin7_0\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(5));

-- Location: LC_X7_Y5_N9
\U3|oPin7_0[5]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(5) = DFFEAS((((\CPLD_INT~combout\ & \U3|soPin7_0\(5)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|soPin7_0\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(5));

-- Location: LC_X10_Y5_N1
\U3|soPin7_0[4]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(4) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & (\U2|IO_DAT_WR\(4))) # (!\U3|soPin7_0[0]~1_combout\ & ((\U3|soPin7_0\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(4),
	datac => \U3|soPin7_0\(4),
	datad => \U3|soPin7_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(4));

-- Location: LC_X10_Y5_N2
\U3|oPin7_0[4]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(4) = DFFEAS((((\CPLD_INT~combout\ & \U3|soPin7_0\(4)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|soPin7_0\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(4));

-- Location: LC_X6_Y10_N1
\U3|soPin7_0[3]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(3) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & (\U2|IO_DAT_WR\(3))) # (!\U3|soPin7_0[0]~1_combout\ & ((\U3|soPin7_0\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(3),
	datac => \U3|soPin7_0\(3),
	datad => \U3|soPin7_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(3));

-- Location: LC_X6_Y10_N0
\U3|oPin7_0[3]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(3) = DFFEAS((\CPLD_INT~combout\ & (((\U3|soPin7_0\(3))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|soPin7_0\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(3));

-- Location: LC_X10_Y8_N7
\U3|soPin7_0[2]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(2) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & ((\U2|IO_DAT_WR\(2)))) # (!\U3|soPin7_0[0]~1_combout\ & (\U3|soPin7_0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|soPin7_0\(2),
	datac => \U2|IO_DAT_WR\(2),
	datad => \U3|soPin7_0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(2));

-- Location: LC_X10_Y8_N6
\U3|oPin7_0[2]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(2) = DFFEAS((((\U3|soPin7_0\(2) & \CPLD_INT~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|soPin7_0\(2),
	datad => \CPLD_INT~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(2));

-- Location: LC_X11_Y6_N1
\U3|soPin7_0[1]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(1) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & (\U2|IO_DAT_WR\(1))) # (!\U3|soPin7_0[0]~1_combout\ & ((\U3|soPin7_0\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(1),
	datab => \CPLD_INT~combout\,
	datac => \U3|soPin7_0[0]~1_combout\,
	datad => \U3|soPin7_0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(1));

-- Location: LC_X11_Y6_N2
\U3|oPin7_0[1]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(1) = DFFEAS((((\CPLD_INT~combout\ & \U3|soPin7_0\(1)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|soPin7_0\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(1));

-- Location: LC_X8_Y5_N1
\U3|soPin7_0[0]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin7_0\(0) = (\CPLD_INT~combout\ & ((\U3|soPin7_0[0]~1_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|soPin7_0[0]~1_combout\ & (\U3|soPin7_0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|soPin7_0\(0),
	datac => \U3|soPin7_0[0]~1_combout\,
	datad => \U2|IO_DAT_WR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin7_0\(0));

-- Location: LC_X8_Y5_N8
\U3|oPin7_0[0]\ : maxv_lcell
-- Equation(s):
-- \U3|oPin7_0\(0) = DFFEAS((\CPLD_INT~combout\ & (((\U3|soPin7_0\(0))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|soPin7_0\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|oPin7_0\(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PWM_LED~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_PWM_LED,
	combout => \PWM_LED~combout\);

-- Location: LC_X9_Y7_N6
\U3|sSeg_LED[0]~0\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED[0]~0_combout\ = (!\U2|IO_ADDR\(1) & (!\U2|IO_ADDR\(0) & (!\U2|IO_ADDR\(2) & !\U2|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U2|IO_ADDR\(0),
	datac => \U2|IO_ADDR\(2),
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED[0]~0_combout\);

-- Location: LC_X6_Y4_N2
\U3|sSeg_LED[0]~1\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED[0]~1_combout\ = (\U3|Mux156~2_combout\ & (\U3|sWr_LED~3_combout\ & (\U2|IO_RDY_WR~0_combout\ & \U3|sSeg_LED[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux156~2_combout\,
	datab => \U3|sWr_LED~3_combout\,
	datac => \U2|IO_RDY_WR~0_combout\,
	datad => \U3|sSeg_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED[0]~1_combout\);

-- Location: LC_X7_Y4_N7
\U3|sSeg_LED[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(7) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sSeg_LED[0]~1_combout\ & (\U3|sSeg_LED\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(7),
	datab => \U3|sSeg_LED[0]~1_combout\,
	datac => \U2|IO_DAT_WR\(7),
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(7));

-- Location: LC_X7_Y4_N8
\U3|Seg_LED[7]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(7) = DFFEAS(((\PWM_LED~combout\) # ((\U3|sSeg_LED\(7)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(7),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(7));

-- Location: LC_X6_Y4_N7
\U3|sSeg_LED[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(6) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|sSeg_LED[0]~1_combout\ & (\U3|sSeg_LED\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(6),
	datab => \U2|IO_DAT_WR\(6),
	datac => \CPLD_INT~combout\,
	datad => \U3|sSeg_LED[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(6));

-- Location: LC_X6_Y4_N8
\U3|Seg_LED[6]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(6) = DFFEAS((\PWM_LED~combout\) # (((\U3|sSeg_LED\(6)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(6),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(6));

-- Location: LC_X5_Y4_N3
\U3|sSeg_LED[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(5) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sSeg_LED[0]~1_combout\ & (\U3|sSeg_LED\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(5),
	datab => \CPLD_INT~combout\,
	datac => \U3|sSeg_LED[0]~1_combout\,
	datad => \U2|IO_DAT_WR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(5));

-- Location: LC_X5_Y4_N4
\U3|Seg_LED[5]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(5) = DFFEAS((\PWM_LED~combout\) # (((\U3|sSeg_LED\(5)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(5),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(5));

-- Location: LC_X5_Y4_N5
\U3|sSeg_LED[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(4) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sSeg_LED[0]~1_combout\ & (\U3|sSeg_LED\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(4),
	datab => \CPLD_INT~combout\,
	datac => \U3|sSeg_LED[0]~1_combout\,
	datad => \U2|IO_DAT_WR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(4));

-- Location: LC_X5_Y4_N6
\U3|Seg_LED[4]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(4) = DFFEAS((\PWM_LED~combout\) # (((\U3|sSeg_LED\(4)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(4),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(4));

-- Location: LC_X6_Y10_N8
\U3|sSeg_LED[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(3) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & (\U2|IO_DAT_WR\(3))) # (!\U3|sSeg_LED[0]~1_combout\ & ((\U3|sSeg_LED\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(3),
	datac => \U3|sSeg_LED\(3),
	datad => \U3|sSeg_LED[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(3));

-- Location: LC_X6_Y10_N9
\U3|Seg_LED[3]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(3) = DFFEAS(((\PWM_LED~combout\) # ((\U3|sSeg_LED\(3)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(3),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(3));

-- Location: LC_X6_Y4_N3
\U3|sSeg_LED[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(2) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & ((\U2|IO_DAT_WR\(2)))) # (!\U3|sSeg_LED[0]~1_combout\ & (\U3|sSeg_LED\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(2),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(2),
	datad => \U3|sSeg_LED[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(2));

-- Location: LC_X6_Y4_N5
\U3|Seg_LED[2]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(2) = DFFEAS((\PWM_LED~combout\) # (((\U3|sSeg_LED\(2)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(2),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(2));

-- Location: LC_X6_Y10_N4
\U3|sSeg_LED[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(1) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & (\U2|IO_DAT_WR\(1))) # (!\U3|sSeg_LED[0]~1_combout\ & ((\U3|sSeg_LED\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(1),
	datac => \U3|sSeg_LED\(1),
	datad => \U3|sSeg_LED[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(1));

-- Location: LC_X6_Y10_N5
\U3|Seg_LED[1]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(1) = DFFEAS(((\PWM_LED~combout\) # ((\U3|sSeg_LED\(1)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(1),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(1));

-- Location: LC_X7_Y4_N5
\U3|sSeg_LED[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sSeg_LED\(0) = (\CPLD_INT~combout\ & ((\U3|sSeg_LED[0]~1_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sSeg_LED[0]~1_combout\ & (\U3|sSeg_LED\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(0),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(0),
	datad => \U3|sSeg_LED[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sSeg_LED\(0));

-- Location: LC_X7_Y4_N6
\U3|Seg_LED[0]\ : maxv_lcell
-- Equation(s):
-- \U3|Seg_LED\(0) = DFFEAS(((\PWM_LED~combout\) # ((\U3|sSeg_LED\(0)))), GLOBAL(\Clk~combout\), VCC, , , VCC, , , !\CPLD_INT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \PWM_LED~combout\,
	datac => VCC,
	datad => \U3|sSeg_LED\(0),
	aclr => GND,
	sload => \ALT_INV_CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|Seg_LED\(0));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nRD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nRD,
	combout => \nRD~combout\);

-- Location: LC_X11_Y5_N1
\U2|IO_RDY_RD~0\ : maxv_lcell
-- Equation(s):
-- \U2|IO_RDY_RD~0_combout\ = ((!\nRD~combout\ & (!\nCS~combout\ & \CPLD_INT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \nRD~combout\,
	datac => \nCS~combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U2|IO_RDY_RD~0_combout\);

-- Location: LC_X7_Y7_N5
\U3|Mux164~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux164~1_combout\ = (\U2|IO_ADDR\(5) & (!\U2|IO_ADDR\(7) & (!\U2|IO_ADDR\(4) & !\U2|IO_ADDR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U2|IO_ADDR\(7),
	datac => \U2|IO_ADDR\(4),
	datad => \U2|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux164~1_combout\);

-- Location: LC_X7_Y7_N4
\U3|Mux164~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux164~0_combout\ = (\U2|IO_ADDR\(3)) # ((\U2|IO_ADDR\(1)) # (\U2|IO_ADDR\(2) $ (\U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffde",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(3),
	datac => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux164~0_combout\);

-- Location: LC_X6_Y5_N6
\U3|IO_DAT_RD[7]~0\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD[7]~0_combout\ = (\U2|IO_RDY_RD~0_combout\ & (!\U2|IO_RDY_WR~1_combout\ & ((\U3|Mux164~0_combout\) # (!\U3|Mux164~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_RDY_RD~0_combout\,
	datab => \U3|Mux164~1_combout\,
	datac => \U3|Mux164~0_combout\,
	datad => \U2|IO_RDY_WR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD[7]~0_combout\);

-- Location: LC_X3_Y6_N8
\U3|Mux161~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~0_combout\ = (!\U2|IO_ADDR\(5) & (!\U2|IO_ADDR\(2) & ((\U2|IO_ADDR\(1)) # (!\U2|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0031",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U2|IO_ADDR\(5),
	datac => \U2|IO_ADDR\(1),
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~0_combout\);

-- Location: LC_X3_Y5_N8
\U3|Mux162~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~5_combout\ = (((\U2|IO_ADDR\(3) & !\U2|IO_ADDR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|IO_ADDR\(3),
	datad => \U2|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~5_combout\);

-- Location: LC_X3_Y5_N2
\U3|Mux163~14\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~14_combout\ = (\U2|IO_ADDR\(7)) # (((\U2|IO_ADDR\(4)) # (!\U3|Mux162~5_combout\)) # (!\U3|Mux161~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(7),
	datab => \U3|Mux161~0_combout\,
	datac => \U2|IO_ADDR\(4),
	datad => \U3|Mux162~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~14_combout\);

-- Location: LC_X3_Y5_N0
\U3|Mux162~14\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~14_combout\ = ((!\U2|IO_ADDR\(2) & (!\U2|IO_ADDR\(1) & \U2|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(2),
	datac => \U2|IO_ADDR\(1),
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~14_combout\);

-- Location: LC_X2_Y5_N0
\U3|Mux162~25\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~25_combout\ = (!\U2|IO_ADDR\(4) & (!\U2|IO_ADDR\(7) & ((\U3|Mux162~14_combout\) # (!\U3|Mux162~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(4),
	datab => \U2|IO_ADDR\(7),
	datac => \U3|Mux162~14_combout\,
	datad => \U3|Mux162~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~25_combout\);

-- Location: LC_X9_Y7_N7
\U3|sEnc_MT2[1]~0\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2[1]~0_combout\ = (\U3|Mux156~2_combout\ & (\U3|sWr_LED~3_combout\ & (!\U2|IO_ADDR\(1) & \U2|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux156~2_combout\,
	datab => \U3|sWr_LED~3_combout\,
	datac => \U2|IO_ADDR\(1),
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2[1]~0_combout\);

-- Location: LC_X9_Y7_N9
\U3|sEnc_MT2[1]~1\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2[1]~1_combout\ = ((\U2|IO_ADDR\(2) & (\U3|sEnc_MT2[1]~0_combout\ & \U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(2),
	datac => \U3|sEnc_MT2[1]~0_combout\,
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2[1]~1_combout\);

-- Location: LC_X12_Y3_N7
\U3|sEnc_MT2[1]~2\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2[1]~2_combout\ = ((\U3|sEnc_MT2[1]~1_combout\ & (!\U2|IO_RDY_WR~1_combout\ & \U2|IO_RDY_RD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT2[1]~1_combout\,
	datac => \U2|IO_RDY_WR~1_combout\,
	datad => \U2|IO_RDY_RD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2[1]~2_combout\);

-- Location: LC_X8_Y5_N3
\U3|sWrVal_MT2[0]~0\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2[0]~0_combout\ = (\U2|IO_RDY_WR~0_combout\ & (\U3|Mux164~1_combout\ & (\U3|sWr_timer~0_combout\ & \U2|IO_ADDR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_RDY_WR~0_combout\,
	datab => \U3|Mux164~1_combout\,
	datac => \U3|sWr_timer~0_combout\,
	datad => \U2|IO_ADDR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2[0]~0_combout\);

-- Location: LC_X8_Y8_N6
\U3|sWrVal_MT2[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(7) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & (\U2|IO_DAT_WR\(7))) # (!\U3|sWrVal_MT2[0]~0_combout\ & ((\U3|sWrVal_MT2\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(7),
	datac => \U3|sWrVal_MT2\(7),
	datad => \U3|sWrVal_MT2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(7));

-- Location: LC_X8_Y8_N7
\U3|WrVal_MT2[7]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(7) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(7)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(7));

-- Location: LC_X8_Y6_N7
\U3|sWr_MT2~0\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_MT2~0_combout\ = (\CPLD_INT~combout\ & (\U3|sWr_MT2~0_combout\ $ (((\U2|IO_RDY_WR~1_combout\ & \U3|sEnc_MT2[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWr_MT2~0_combout\,
	datab => \U2|IO_RDY_WR~1_combout\,
	datac => \U3|sEnc_MT2[1]~1_combout\,
	datad => \CPLD_INT~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_MT2~0_combout\);

-- Location: LC_X8_Y6_N8
\U5|WrPrev\ : maxv_lcell
-- Equation(s):
-- \U5|enc_count~0\ = ((E2_WrPrev $ (\U3|sWr_MT2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \U3|sWr_MT2~0_combout\,
	datad => \U3|sWr_MT2~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U5|enc_count~0\,
	regout => \U5|WrPrev~regout\);

-- Location: LC_X8_Y5_N4
\U3|sWrVal_MT2[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(5) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sWrVal_MT2[0]~0_combout\ & (\U3|sWrVal_MT2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(5),
	datac => \U2|IO_DAT_WR\(5),
	datad => \U3|sWrVal_MT2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(5));

-- Location: LC_X8_Y5_N2
\U3|WrVal_MT2[5]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(5) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(5))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(5));

-- Location: LC_X10_Y7_N6
\U3|sWrVal_MT2[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(0) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|sWrVal_MT2[0]~0_combout\ & ((\U3|sWrVal_MT2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(0),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2[0]~0_combout\,
	datad => \U3|sWrVal_MT2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(0));

-- Location: LC_X10_Y7_N7
\U3|WrVal_MT2[0]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(0) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(0)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(0));

-- Location: LC_X5_Y6_N4
\U5|EncVal[0]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(0) = DFFEAS((!\U5|EncVal\(0)), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(0), \U5|enc_count~0\, , )
-- \U5|EncVal[0]~63\ = CARRY((\U5|EncVal\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(0),
	datac => \U3|WrVal_MT2\(0),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(0),
	cout => \U5|EncVal[0]~63\);

-- Location: LC_X11_Y7_N2
\U3|sWrVal_MT2[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(4) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sWrVal_MT2[0]~0_combout\ & (\U3|sWrVal_MT2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(4),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(4),
	datad => \U3|sWrVal_MT2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(4));

-- Location: LC_X11_Y7_N0
\U3|WrVal_MT2[4]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(4) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(4)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(4));

-- Location: LC_X9_Y6_N8
\U3|sWrVal_MT2[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(3) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sWrVal_MT2[0]~0_combout\ & (\U3|sWrVal_MT2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(3),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(3),
	datad => \U3|sWrVal_MT2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(3));

-- Location: LC_X9_Y6_N9
\U3|WrVal_MT2[3]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(3) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(3))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(3));

-- Location: LC_X10_Y8_N3
\U3|sWrVal_MT2[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(2) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|sWrVal_MT2[0]~0_combout\ & ((\U3|sWrVal_MT2\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(2),
	datab => \U3|sWrVal_MT2\(2),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(2));

-- Location: LC_X10_Y8_N4
\U3|WrVal_MT2[2]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(2) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(2))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(2));

-- Location: LC_X3_Y8_N0
\U3|sWrVal_MT2[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(1) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sWrVal_MT2[0]~0_combout\ & (\U3|sWrVal_MT2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(1),
	datac => \U3|sWrVal_MT2[0]~0_combout\,
	datad => \U2|IO_DAT_WR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(1));

-- Location: LC_X3_Y8_N1
\U3|WrVal_MT2[1]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(1) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(1))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(1));

-- Location: LC_X5_Y6_N5
\U5|EncVal[1]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(1) = DFFEAS(\U5|EncVal\(1) $ (\U5|sDir~regout\ $ ((!\U5|EncVal[0]~63\))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(1), \U5|enc_count~0\, , )
-- \U5|EncVal[1]~55\ = CARRY((\U5|EncVal\(1) & (\U5|sDir~regout\ & !\U5|EncVal[0]~63\)) # (!\U5|EncVal\(1) & ((\U5|sDir~regout\) # (!\U5|EncVal[0]~63\))))
-- \U5|EncVal[1]~55COUT1_90\ = CARRY((\U5|EncVal\(1) & (\U5|sDir~regout\ & !\U5|EncVal[0]~63\)) # (!\U5|EncVal\(1) & ((\U5|sDir~regout\) # (!\U5|EncVal[0]~63\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(1),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(1),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[0]~63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(1),
	cout0 => \U5|EncVal[1]~55\,
	cout1 => \U5|EncVal[1]~55COUT1_90\);

-- Location: LC_X5_Y6_N6
\U5|EncVal[2]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(2) = DFFEAS(\U5|EncVal\(2) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[0]~63\ & \U5|EncVal[1]~55\) # (\U5|EncVal[0]~63\ & \U5|EncVal[1]~55COUT1_90\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(2), \U5|enc_count~0\, , )
-- \U5|EncVal[2]~47\ = CARRY((\U5|EncVal\(2) & ((!\U5|EncVal[1]~55\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(2) & (!\U5|sDir~regout\ & !\U5|EncVal[1]~55\)))
-- \U5|EncVal[2]~47COUT1_92\ = CARRY((\U5|EncVal\(2) & ((!\U5|EncVal[1]~55COUT1_90\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(2) & (!\U5|sDir~regout\ & !\U5|EncVal[1]~55COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(2),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(2),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[0]~63\,
	cin0 => \U5|EncVal[1]~55\,
	cin1 => \U5|EncVal[1]~55COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(2),
	cout0 => \U5|EncVal[2]~47\,
	cout1 => \U5|EncVal[2]~47COUT1_92\);

-- Location: LC_X5_Y6_N7
\U5|EncVal[3]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(3) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(3) $ ((!(!\U5|EncVal[0]~63\ & \U5|EncVal[2]~47\) # (\U5|EncVal[0]~63\ & \U5|EncVal[2]~47COUT1_92\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(3), \U5|enc_count~0\, , )
-- \U5|EncVal[3]~37\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[2]~47\) # (!\U5|EncVal\(3)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(3) & !\U5|EncVal[2]~47\)))
-- \U5|EncVal[3]~37COUT1_94\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[2]~47COUT1_92\) # (!\U5|EncVal\(3)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(3) & !\U5|EncVal[2]~47COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(3),
	datac => \U3|WrVal_MT2\(3),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[0]~63\,
	cin0 => \U5|EncVal[2]~47\,
	cin1 => \U5|EncVal[2]~47COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(3),
	cout0 => \U5|EncVal[3]~37\,
	cout1 => \U5|EncVal[3]~37COUT1_94\);

-- Location: LC_X5_Y6_N8
\U5|EncVal[4]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(4) = DFFEAS(\U5|EncVal\(4) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[0]~63\ & \U5|EncVal[3]~37\) # (\U5|EncVal[0]~63\ & \U5|EncVal[3]~37COUT1_94\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(4), \U5|enc_count~0\, , )
-- \U5|EncVal[4]~31\ = CARRY((\U5|EncVal\(4) & ((!\U5|EncVal[3]~37\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(4) & (!\U5|sDir~regout\ & !\U5|EncVal[3]~37\)))
-- \U5|EncVal[4]~31COUT1_96\ = CARRY((\U5|EncVal\(4) & ((!\U5|EncVal[3]~37COUT1_94\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(4) & (!\U5|sDir~regout\ & !\U5|EncVal[3]~37COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(4),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(4),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[0]~63\,
	cin0 => \U5|EncVal[3]~37\,
	cin1 => \U5|EncVal[3]~37COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(4),
	cout0 => \U5|EncVal[4]~31\,
	cout1 => \U5|EncVal[4]~31COUT1_96\);

-- Location: LC_X5_Y6_N9
\U5|EncVal[5]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(5) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(5) $ ((!(!\U5|EncVal[0]~63\ & \U5|EncVal[4]~31\) # (\U5|EncVal[0]~63\ & \U5|EncVal[4]~31COUT1_96\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(5), \U5|enc_count~0\, , )
-- \U5|EncVal[5]~23\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[4]~31COUT1_96\) # (!\U5|EncVal\(5)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(5) & !\U5|EncVal[4]~31COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(5),
	datac => \U3|WrVal_MT2\(5),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[0]~63\,
	cin0 => \U5|EncVal[4]~31\,
	cin1 => \U5|EncVal[4]~31COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(5),
	cout => \U5|EncVal[5]~23\);

-- Location: LC_X8_Y5_N6
\U3|sWrVal_MT2[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(6) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[0]~0_combout\ & (\U2|IO_DAT_WR\(6))) # (!\U3|sWrVal_MT2[0]~0_combout\ & ((\U3|sWrVal_MT2\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(6),
	datac => \U3|sWrVal_MT2\(6),
	datad => \U3|sWrVal_MT2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(6));

-- Location: LC_X8_Y5_N0
\U3|WrVal_MT2[6]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(6) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(6))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(6));

-- Location: LC_X6_Y6_N0
\U5|EncVal[6]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(6) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(6) $ ((\U5|EncVal[5]~23\))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(6), \U5|enc_count~0\, , )
-- \U5|EncVal[6]~9\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(6) & !\U5|EncVal[5]~23\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(6)) # (!\U5|EncVal[5]~23\))))
-- \U5|EncVal[6]~9COUT1_98\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(6) & !\U5|EncVal[5]~23\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(6)) # (!\U5|EncVal[5]~23\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(6),
	datac => \U3|WrVal_MT2\(6),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[5]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(6),
	cout0 => \U5|EncVal[6]~9\,
	cout1 => \U5|EncVal[6]~9COUT1_98\);

-- Location: LC_X6_Y6_N1
\U5|EncVal[7]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(7) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(7) $ ((!(!\U5|EncVal[5]~23\ & \U5|EncVal[6]~9\) # (\U5|EncVal[5]~23\ & \U5|EncVal[6]~9COUT1_98\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(7), \U5|enc_count~0\, , )
-- \U5|EncVal[7]~1\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[6]~9\) # (!\U5|EncVal\(7)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(7) & !\U5|EncVal[6]~9\)))
-- \U5|EncVal[7]~1COUT1_100\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[6]~9COUT1_98\) # (!\U5|EncVal\(7)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(7) & !\U5|EncVal[6]~9COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(7),
	datac => \U3|WrVal_MT2\(7),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[5]~23\,
	cin0 => \U5|EncVal[6]~9\,
	cin1 => \U5|EncVal[6]~9COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(7),
	cout0 => \U5|EncVal[7]~1\,
	cout1 => \U5|EncVal[7]~1COUT1_100\);

-- Location: LC_X9_Y4_N9
\U3|sEnc_MT2[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(7) = (GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U5|EncVal\(7))))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U3|sEnc_MT2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2[1]~2_combout\,
	datac => \U5|EncVal\(7),
	datad => \U3|sEnc_MT2\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(7));

-- Location: LC_X7_Y5_N5
\U3|sWrVal_MT2[8]~1\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2[8]~1_combout\ = (\U2|IO_ADDR\(3) & (\U3|sPWM_Duty[8]~0_combout\ & (\U2|IO_RDY_WR~0_combout\ & \U3|Mux164~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(3),
	datab => \U3|sPWM_Duty[8]~0_combout\,
	datac => \U2|IO_RDY_WR~0_combout\,
	datad => \U3|Mux164~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2[8]~1_combout\);

-- Location: LC_X10_Y5_N3
\U3|sWrVal_MT2[15]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(15) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sWrVal_MT2[8]~1_combout\ & (\U3|sWrVal_MT2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(15),
	datab => \U2|IO_DAT_WR\(7),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(15));

-- Location: LC_X10_Y5_N4
\U3|WrVal_MT2[15]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(15) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(15)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(15));

-- Location: LC_X10_Y8_N1
\U3|sWrVal_MT2[10]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(10) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|sWrVal_MT2[8]~1_combout\ & ((\U3|sWrVal_MT2\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(2),
	datab => \U3|sWrVal_MT2\(10),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(10));

-- Location: LC_X10_Y8_N2
\U3|WrVal_MT2[10]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(10) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(10))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(10));

-- Location: LC_X8_Y5_N5
\U3|sWrVal_MT2[9]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(9) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sWrVal_MT2[8]~1_combout\ & (\U3|sWrVal_MT2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(9),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(1),
	datad => \U3|sWrVal_MT2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(9));

-- Location: LC_X8_Y5_N9
\U3|WrVal_MT2[9]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(9) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(9))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(9));

-- Location: LC_X6_Y5_N0
\U3|sWrVal_MT2[8]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(8) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sWrVal_MT2[8]~1_combout\ & (\U3|sWrVal_MT2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(8),
	datac => \U2|IO_DAT_WR\(0),
	datad => \U3|sWrVal_MT2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(8));

-- Location: LC_X6_Y5_N1
\U3|WrVal_MT2[8]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(8) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(8)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(8));

-- Location: LC_X6_Y6_N2
\U5|EncVal[8]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(8) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(8) $ (((!\U5|EncVal[5]~23\ & \U5|EncVal[7]~1\) # (\U5|EncVal[5]~23\ & \U5|EncVal[7]~1COUT1_100\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(8), \U5|enc_count~0\, , )
-- \U5|EncVal[8]~61\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(8) & !\U5|EncVal[7]~1\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(8)) # (!\U5|EncVal[7]~1\))))
-- \U5|EncVal[8]~61COUT1_102\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(8) & !\U5|EncVal[7]~1COUT1_100\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(8)) # (!\U5|EncVal[7]~1COUT1_100\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(8),
	datac => \U3|WrVal_MT2\(8),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[5]~23\,
	cin0 => \U5|EncVal[7]~1\,
	cin1 => \U5|EncVal[7]~1COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(8),
	cout0 => \U5|EncVal[8]~61\,
	cout1 => \U5|EncVal[8]~61COUT1_102\);

-- Location: LC_X6_Y6_N3
\U5|EncVal[9]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(9) = DFFEAS(\U5|EncVal\(9) $ (\U5|sDir~regout\ $ ((!(!\U5|EncVal[5]~23\ & \U5|EncVal[8]~61\) # (\U5|EncVal[5]~23\ & \U5|EncVal[8]~61COUT1_102\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(9), \U5|enc_count~0\, , )
-- \U5|EncVal[9]~53\ = CARRY((\U5|EncVal\(9) & (\U5|sDir~regout\ & !\U5|EncVal[8]~61\)) # (!\U5|EncVal\(9) & ((\U5|sDir~regout\) # (!\U5|EncVal[8]~61\))))
-- \U5|EncVal[9]~53COUT1_104\ = CARRY((\U5|EncVal\(9) & (\U5|sDir~regout\ & !\U5|EncVal[8]~61COUT1_102\)) # (!\U5|EncVal\(9) & ((\U5|sDir~regout\) # (!\U5|EncVal[8]~61COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(9),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(9),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[5]~23\,
	cin0 => \U5|EncVal[8]~61\,
	cin1 => \U5|EncVal[8]~61COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(9),
	cout0 => \U5|EncVal[9]~53\,
	cout1 => \U5|EncVal[9]~53COUT1_104\);

-- Location: LC_X6_Y6_N4
\U5|EncVal[10]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(10) = DFFEAS(\U5|EncVal\(10) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[5]~23\ & \U5|EncVal[9]~53\) # (\U5|EncVal[5]~23\ & \U5|EncVal[9]~53COUT1_104\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(10), \U5|enc_count~0\, , )
-- \U5|EncVal[10]~45\ = CARRY((\U5|EncVal\(10) & ((!\U5|EncVal[9]~53COUT1_104\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(10) & (!\U5|sDir~regout\ & !\U5|EncVal[9]~53COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(10),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(10),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[5]~23\,
	cin0 => \U5|EncVal[9]~53\,
	cin1 => \U5|EncVal[9]~53COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(10),
	cout => \U5|EncVal[10]~45\);

-- Location: LC_X7_Y5_N6
\U3|sWrVal_MT2[14]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(14) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|sWrVal_MT2[8]~1_combout\ & (\U3|sWrVal_MT2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(14),
	datab => \U2|IO_DAT_WR\(6),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(14));

-- Location: LC_X7_Y5_N7
\U3|WrVal_MT2[14]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(14) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(14)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(14),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(14));

-- Location: LC_X7_Y5_N1
\U3|sWrVal_MT2[13]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(13) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sWrVal_MT2[8]~1_combout\ & (\U3|sWrVal_MT2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2[8]~1_combout\,
	datab => \U3|sWrVal_MT2\(13),
	datac => \CPLD_INT~combout\,
	datad => \U2|IO_DAT_WR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(13));

-- Location: LC_X7_Y5_N2
\U3|WrVal_MT2[13]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(13) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(13)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(13),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(13));

-- Location: LC_X6_Y7_N7
\U3|sWrVal_MT2[12]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(12) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sWrVal_MT2[8]~1_combout\ & (\U3|sWrVal_MT2\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(12),
	datac => \U3|sWrVal_MT2[8]~1_combout\,
	datad => \U2|IO_DAT_WR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(12));

-- Location: LC_X6_Y7_N8
\U3|WrVal_MT2[12]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(12) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(12)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(12));

-- Location: LC_X8_Y10_N4
\U3|sWrVal_MT2[11]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(11) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[8]~1_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sWrVal_MT2[8]~1_combout\ & (\U3|sWrVal_MT2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(11),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2[8]~1_combout\,
	datad => \U2|IO_DAT_WR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(11));

-- Location: LC_X8_Y10_N5
\U3|WrVal_MT2[11]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(11) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(11))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(11),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(11));

-- Location: LC_X6_Y6_N5
\U5|EncVal[11]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(11) = DFFEAS(\U5|EncVal\(11) $ (\U5|sDir~regout\ $ ((!\U5|EncVal[10]~45\))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(11), \U5|enc_count~0\, , )
-- \U5|EncVal[11]~39\ = CARRY((\U5|EncVal\(11) & (\U5|sDir~regout\ & !\U5|EncVal[10]~45\)) # (!\U5|EncVal\(11) & ((\U5|sDir~regout\) # (!\U5|EncVal[10]~45\))))
-- \U5|EncVal[11]~39COUT1_106\ = CARRY((\U5|EncVal\(11) & (\U5|sDir~regout\ & !\U5|EncVal[10]~45\)) # (!\U5|EncVal\(11) & ((\U5|sDir~regout\) # (!\U5|EncVal[10]~45\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(11),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(11),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[10]~45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(11),
	cout0 => \U5|EncVal[11]~39\,
	cout1 => \U5|EncVal[11]~39COUT1_106\);

-- Location: LC_X6_Y6_N6
\U5|EncVal[12]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(12) = DFFEAS(\U5|EncVal\(12) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[10]~45\ & \U5|EncVal[11]~39\) # (\U5|EncVal[10]~45\ & \U5|EncVal[11]~39COUT1_106\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(12), \U5|enc_count~0\, , )
-- \U5|EncVal[12]~25\ = CARRY((\U5|EncVal\(12) & ((!\U5|EncVal[11]~39\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(12) & (!\U5|sDir~regout\ & !\U5|EncVal[11]~39\)))
-- \U5|EncVal[12]~25COUT1_108\ = CARRY((\U5|EncVal\(12) & ((!\U5|EncVal[11]~39COUT1_106\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(12) & (!\U5|sDir~regout\ & !\U5|EncVal[11]~39COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(12),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(12),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[10]~45\,
	cin0 => \U5|EncVal[11]~39\,
	cin1 => \U5|EncVal[11]~39COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(12),
	cout0 => \U5|EncVal[12]~25\,
	cout1 => \U5|EncVal[12]~25COUT1_108\);

-- Location: LC_X6_Y6_N7
\U5|EncVal[13]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(13) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(13) $ ((!(!\U5|EncVal[10]~45\ & \U5|EncVal[12]~25\) # (\U5|EncVal[10]~45\ & \U5|EncVal[12]~25COUT1_108\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(13), \U5|enc_count~0\, , )
-- \U5|EncVal[13]~17\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[12]~25\) # (!\U5|EncVal\(13)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(13) & !\U5|EncVal[12]~25\)))
-- \U5|EncVal[13]~17COUT1_110\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[12]~25COUT1_108\) # (!\U5|EncVal\(13)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(13) & !\U5|EncVal[12]~25COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(13),
	datac => \U3|WrVal_MT2\(13),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[10]~45\,
	cin0 => \U5|EncVal[12]~25\,
	cin1 => \U5|EncVal[12]~25COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(13),
	cout0 => \U5|EncVal[13]~17\,
	cout1 => \U5|EncVal[13]~17COUT1_110\);

-- Location: LC_X6_Y6_N8
\U5|EncVal[14]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(14) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(14) $ (((!\U5|EncVal[10]~45\ & \U5|EncVal[13]~17\) # (\U5|EncVal[10]~45\ & \U5|EncVal[13]~17COUT1_110\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(14), \U5|enc_count~0\, , )
-- \U5|EncVal[14]~11\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(14) & !\U5|EncVal[13]~17\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(14)) # (!\U5|EncVal[13]~17\))))
-- \U5|EncVal[14]~11COUT1_112\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(14) & !\U5|EncVal[13]~17COUT1_110\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(14)) # (!\U5|EncVal[13]~17COUT1_110\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(14),
	datac => \U3|WrVal_MT2\(14),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[10]~45\,
	cin0 => \U5|EncVal[13]~17\,
	cin1 => \U5|EncVal[13]~17COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(14),
	cout0 => \U5|EncVal[14]~11\,
	cout1 => \U5|EncVal[14]~11COUT1_112\);

-- Location: LC_X6_Y6_N9
\U5|EncVal[15]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(15) = DFFEAS(\U5|EncVal\(15) $ (\U5|sDir~regout\ $ ((!(!\U5|EncVal[10]~45\ & \U5|EncVal[14]~11\) # (\U5|EncVal[10]~45\ & \U5|EncVal[14]~11COUT1_112\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(15), \U5|enc_count~0\, , )
-- \U5|EncVal[15]~3\ = CARRY((\U5|EncVal\(15) & (\U5|sDir~regout\ & !\U5|EncVal[14]~11COUT1_112\)) # (!\U5|EncVal\(15) & ((\U5|sDir~regout\) # (!\U5|EncVal[14]~11COUT1_112\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(15),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(15),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[10]~45\,
	cin0 => \U5|EncVal[14]~11\,
	cin1 => \U5|EncVal[14]~11COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(15),
	cout => \U5|EncVal[15]~3\);

-- Location: LC_X6_Y8_N3
\U3|sEnc_MT2[15]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(15) = (GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(15))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U3|sEnc_MT2\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(15),
	datab => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(15));

-- Location: LC_X9_Y4_N1
\U3|Mux162~13\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~13_combout\ = ((\U2|IO_ADDR\(6)) # ((\U2|IO_ADDR\(3) & \U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(3),
	datac => \U2|IO_ADDR\(6),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~13_combout\);

-- Location: LC_X5_Y5_N5
\U3|Mux162~12\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~12_combout\ = ((!\U2|IO_ADDR\(3) & ((\U3|sSeg_LED[0]~0_combout\) # (!\U2|IO_ADDR\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(6),
	datac => \U2|IO_ADDR\(3),
	datad => \U3|sSeg_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~12_combout\);

-- Location: LC_X8_Y4_N4
\U3|Mux162~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~6_combout\ = ((!\U2|IO_ADDR\(2) & (\U2|IO_ADDR\(5) & \U2|IO_ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(2),
	datac => \U2|IO_ADDR\(5),
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~6_combout\);

-- Location: LC_X8_Y7_N3
\U3|sEnc_MT1[0]~0\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1[0]~0_combout\ = (\U3|Mux156~2_combout\ & (\U3|sWr_LED~3_combout\ & (\U2|IO_ADDR\(5) & \U3|sPWM_Duty[8]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux156~2_combout\,
	datab => \U3|sWr_LED~3_combout\,
	datac => \U2|IO_ADDR\(5),
	datad => \U3|sPWM_Duty[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1[0]~0_combout\);

-- Location: LC_X12_Y3_N2
\U3|sEnc_MT1[0]~1\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1[0]~1_combout\ = (\U3|sEnc_MT1[0]~0_combout\ & (((!\U2|IO_RDY_WR~1_combout\ & \U2|IO_RDY_RD~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1[0]~0_combout\,
	datac => \U2|IO_RDY_WR~1_combout\,
	datad => \U2|IO_RDY_RD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1[0]~1_combout\);

-- Location: LC_X10_Y8_N5
\U3|sWrVal_MT1[8]~8\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1[8]~8_combout\ = (\U2|IO_ADDR\(5) & (\U3|Mux162~4_combout\ & (\U2|IO_ADDR\(0) & \U3|soPin7_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U3|Mux162~4_combout\,
	datac => \U2|IO_ADDR\(0),
	datad => \U3|soPin7_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1[8]~8_combout\);

-- Location: LC_X9_Y8_N9
\U3|sWrVal_MT1[15]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(15) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & (\U2|IO_DAT_WR\(7))) # (!\U3|sWrVal_MT1[8]~8_combout\ & ((\U3|sWrVal_MT1\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(7),
	datab => \U3|sWrVal_MT1\(15),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(15));

-- Location: LC_X9_Y8_N8
\U3|WrVal_MT1[15]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(15) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(15))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(15),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(15));

-- Location: LC_X8_Y7_N1
\U3|sWr_MT1~0\ : maxv_lcell
-- Equation(s):
-- \U3|sWr_MT1~0_combout\ = (\CPLD_INT~combout\ & (\U3|sWr_MT1~0_combout\ $ (((\U3|sEnc_MT1[0]~0_combout\ & \U2|IO_RDY_WR~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWr_MT1~0_combout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sEnc_MT1[0]~0_combout\,
	datad => \U2|IO_RDY_WR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWr_MT1~0_combout\);

-- Location: LC_X3_Y7_N3
\U4|WrPrev\ : maxv_lcell
-- Equation(s):
-- \U4|enc_count~0\ = \U3|sWr_MT1~0_combout\ $ ((((E1_WrPrev))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U3|sWr_MT1~0_combout\,
	datac => \U3|sWr_MT1~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U4|enc_count~0\,
	regout => \U4|WrPrev~regout\);

-- Location: LC_X8_Y8_N3
\U3|sWrVal_MT1[10]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(10) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & ((\U2|IO_DAT_WR\(2)))) # (!\U3|sWrVal_MT1[8]~8_combout\ & (\U3|sWrVal_MT1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(10),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(2),
	datad => \U3|sWrVal_MT1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(10));

-- Location: LC_X8_Y8_N4
\U3|WrVal_MT1[10]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(10) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(10)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(10));

-- Location: LC_X10_Y6_N9
\U3|sWrVal_MT1[0]~11\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1[0]~11_combout\ = (!\nWR~combout\ & (\U3|sEnc_MT2[1]~0_combout\ & (!\nCS~combout\ & \U3|sPWM_Frq[8]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nWR~combout\,
	datab => \U3|sEnc_MT2[1]~0_combout\,
	datac => \nCS~combout\,
	datad => \U3|sPWM_Frq[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1[0]~11_combout\);

-- Location: LC_X10_Y6_N1
\U3|sWrVal_MT1[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(5) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sWrVal_MT1[0]~11_combout\ & (\U3|sWrVal_MT1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(5),
	datab => \U2|IO_DAT_WR\(5),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(5));

-- Location: LC_X10_Y6_N2
\U3|WrVal_MT1[5]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(5) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(5))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(5));

-- Location: LC_X12_Y6_N2
\U3|sWrVal_MT1[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(0) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|sWrVal_MT1[0]~11_combout\ & ((\U3|sWrVal_MT1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(0),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1[0]~11_combout\,
	datad => \U3|sWrVal_MT1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(0));

-- Location: LC_X12_Y6_N3
\U3|WrVal_MT1[0]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(0) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT1\(0))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(0));

-- Location: LC_X3_Y7_N4
\U4|EncVal[0]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(0) = DFFEAS((!\U4|EncVal\(0)), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(0), \U4|enc_count~0\, , )
-- \U4|EncVal[0]~57\ = CARRY((\U4|EncVal\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(0),
	datac => \U3|WrVal_MT1\(0),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(0),
	cout => \U4|EncVal[0]~57\);

-- Location: LC_X10_Y6_N8
\U3|sWrVal_MT1[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(4) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & (\U2|IO_DAT_WR\(4))) # (!\U3|sWrVal_MT1[0]~11_combout\ & ((\U3|sWrVal_MT1\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(4),
	datab => \U3|sWrVal_MT1\(4),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(4));

-- Location: LC_X10_Y6_N4
\U3|WrVal_MT1[4]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(4) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(4))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(4));

-- Location: LC_X8_Y8_N8
\U3|sWrVal_MT1[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(3) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sWrVal_MT1[0]~11_combout\ & (\U3|sWrVal_MT1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(3),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(3),
	datad => \U3|sWrVal_MT1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(3));

-- Location: LC_X8_Y8_N9
\U3|WrVal_MT1[3]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(3) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(3)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(3));

-- Location: LC_X10_Y8_N9
\U3|sWrVal_MT1[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(2) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|sWrVal_MT1[0]~11_combout\ & ((\U3|sWrVal_MT1\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(2),
	datab => \U3|sWrVal_MT1\(2),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(2));

-- Location: LC_X10_Y8_N0
\U3|WrVal_MT1[2]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(2) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(2))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(2));

-- Location: LC_X11_Y7_N3
\U3|sWrVal_MT1[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(1) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sWrVal_MT1[0]~11_combout\ & (\U3|sWrVal_MT1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(1),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(1),
	datad => \U3|sWrVal_MT1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(1));

-- Location: LC_X11_Y7_N4
\U3|WrVal_MT1[1]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(1) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(1)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(1));

-- Location: LC_X3_Y7_N5
\U4|EncVal[1]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(1) = DFFEAS(\U4|EncVal\(1) $ (\U4|sDir~regout\ $ ((!\U4|EncVal[0]~57\))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(1), \U4|enc_count~0\, , )
-- \U4|EncVal[1]~51\ = CARRY((\U4|EncVal\(1) & (\U4|sDir~regout\ & !\U4|EncVal[0]~57\)) # (!\U4|EncVal\(1) & ((\U4|sDir~regout\) # (!\U4|EncVal[0]~57\))))
-- \U4|EncVal[1]~51COUT1_90\ = CARRY((\U4|EncVal\(1) & (\U4|sDir~regout\ & !\U4|EncVal[0]~57\)) # (!\U4|EncVal\(1) & ((\U4|sDir~regout\) # (!\U4|EncVal[0]~57\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(1),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(1),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[0]~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(1),
	cout0 => \U4|EncVal[1]~51\,
	cout1 => \U4|EncVal[1]~51COUT1_90\);

-- Location: LC_X3_Y7_N6
\U4|EncVal[2]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(2) = DFFEAS(\U4|EncVal\(2) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[0]~57\ & \U4|EncVal[1]~51\) # (\U4|EncVal[0]~57\ & \U4|EncVal[1]~51COUT1_90\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(2), \U4|enc_count~0\, , )
-- \U4|EncVal[2]~41\ = CARRY((\U4|EncVal\(2) & ((!\U4|EncVal[1]~51\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(2) & (!\U4|sDir~regout\ & !\U4|EncVal[1]~51\)))
-- \U4|EncVal[2]~41COUT1_92\ = CARRY((\U4|EncVal\(2) & ((!\U4|EncVal[1]~51COUT1_90\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(2) & (!\U4|sDir~regout\ & !\U4|EncVal[1]~51COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(2),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(2),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[0]~57\,
	cin0 => \U4|EncVal[1]~51\,
	cin1 => \U4|EncVal[1]~51COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(2),
	cout0 => \U4|EncVal[2]~41\,
	cout1 => \U4|EncVal[2]~41COUT1_92\);

-- Location: LC_X3_Y7_N7
\U4|EncVal[3]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(3) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(3) $ ((!(!\U4|EncVal[0]~57\ & \U4|EncVal[2]~41\) # (\U4|EncVal[0]~57\ & \U4|EncVal[2]~41COUT1_92\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(3), \U4|enc_count~0\, , )
-- \U4|EncVal[3]~37\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[2]~41\) # (!\U4|EncVal\(3)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(3) & !\U4|EncVal[2]~41\)))
-- \U4|EncVal[3]~37COUT1_94\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[2]~41COUT1_92\) # (!\U4|EncVal\(3)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(3) & !\U4|EncVal[2]~41COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(3),
	datac => \U3|WrVal_MT1\(3),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[0]~57\,
	cin0 => \U4|EncVal[2]~41\,
	cin1 => \U4|EncVal[2]~41COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(3),
	cout0 => \U4|EncVal[3]~37\,
	cout1 => \U4|EncVal[3]~37COUT1_94\);

-- Location: LC_X3_Y7_N8
\U4|EncVal[4]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(4) = DFFEAS(\U4|EncVal\(4) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[0]~57\ & \U4|EncVal[3]~37\) # (\U4|EncVal[0]~57\ & \U4|EncVal[3]~37COUT1_94\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(4), \U4|enc_count~0\, , )
-- \U4|EncVal[4]~27\ = CARRY((\U4|EncVal\(4) & ((!\U4|EncVal[3]~37\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(4) & (!\U4|sDir~regout\ & !\U4|EncVal[3]~37\)))
-- \U4|EncVal[4]~27COUT1_96\ = CARRY((\U4|EncVal\(4) & ((!\U4|EncVal[3]~37COUT1_94\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(4) & (!\U4|sDir~regout\ & !\U4|EncVal[3]~37COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(4),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(4),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[0]~57\,
	cin0 => \U4|EncVal[3]~37\,
	cin1 => \U4|EncVal[3]~37COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(4),
	cout0 => \U4|EncVal[4]~27\,
	cout1 => \U4|EncVal[4]~27COUT1_96\);

-- Location: LC_X3_Y7_N9
\U4|EncVal[5]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(5) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(5) $ ((!(!\U4|EncVal[0]~57\ & \U4|EncVal[4]~27\) # (\U4|EncVal[0]~57\ & \U4|EncVal[4]~27COUT1_96\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(5), \U4|enc_count~0\, , )
-- \U4|EncVal[5]~17\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[4]~27COUT1_96\) # (!\U4|EncVal\(5)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(5) & !\U4|EncVal[4]~27COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(5),
	datac => \U3|WrVal_MT1\(5),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[0]~57\,
	cin0 => \U4|EncVal[4]~27\,
	cin1 => \U4|EncVal[4]~27COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(5),
	cout => \U4|EncVal[5]~17\);

-- Location: LC_X11_Y7_N5
\U3|sWrVal_MT1[9]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(9) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & (\U2|IO_DAT_WR\(1))) # (!\U3|sWrVal_MT1[8]~8_combout\ & ((\U3|sWrVal_MT1\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(1),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1\(9),
	datad => \U3|sWrVal_MT1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(9));

-- Location: LC_X11_Y7_N6
\U3|WrVal_MT1[9]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(9) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(9)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(9));

-- Location: LC_X11_Y6_N6
\U3|sWrVal_MT1[8]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(8) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|sWrVal_MT1[8]~8_combout\ & ((\U3|sWrVal_MT1\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(0),
	datac => \U3|sWrVal_MT1\(8),
	datad => \U3|sWrVal_MT1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(8));

-- Location: LC_X11_Y6_N7
\U3|WrVal_MT1[8]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(8) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(8)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(8));

-- Location: LC_X9_Y6_N2
\U3|sWrVal_MT1[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(7) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sWrVal_MT1[0]~11_combout\ & (\U3|sWrVal_MT1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT1\(7),
	datac => \U3|sWrVal_MT1[0]~11_combout\,
	datad => \U2|IO_DAT_WR\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(7));

-- Location: LC_X9_Y6_N7
\U3|WrVal_MT1[7]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(7) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT1\(7))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(7));

-- Location: LC_X9_Y5_N8
\U3|sWrVal_MT1[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(6) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[0]~11_combout\ & (\U2|IO_DAT_WR\(6))) # (!\U3|sWrVal_MT1[0]~11_combout\ & ((\U3|sWrVal_MT1\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(6),
	datab => \U3|sWrVal_MT1\(6),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(6));

-- Location: LC_X9_Y5_N0
\U3|WrVal_MT1[6]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(6) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(6)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(6));

-- Location: LC_X4_Y7_N0
\U4|EncVal[6]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(6) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(6) $ ((\U4|EncVal[5]~17\))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(6), \U4|enc_count~0\, , )
-- \U4|EncVal[6]~13\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(6) & !\U4|EncVal[5]~17\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(6)) # (!\U4|EncVal[5]~17\))))
-- \U4|EncVal[6]~13COUT1_98\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(6) & !\U4|EncVal[5]~17\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(6)) # (!\U4|EncVal[5]~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(6),
	datac => \U3|WrVal_MT1\(6),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[5]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(6),
	cout0 => \U4|EncVal[6]~13\,
	cout1 => \U4|EncVal[6]~13COUT1_98\);

-- Location: LC_X4_Y7_N1
\U4|EncVal[7]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(7) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(7) $ ((!(!\U4|EncVal[5]~17\ & \U4|EncVal[6]~13\) # (\U4|EncVal[5]~17\ & \U4|EncVal[6]~13COUT1_98\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(7), \U4|enc_count~0\, , )
-- \U4|EncVal[7]~5\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[6]~13\) # (!\U4|EncVal\(7)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(7) & !\U4|EncVal[6]~13\)))
-- \U4|EncVal[7]~5COUT1_100\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[6]~13COUT1_98\) # (!\U4|EncVal\(7)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(7) & !\U4|EncVal[6]~13COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(7),
	datac => \U3|WrVal_MT1\(7),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[5]~17\,
	cin0 => \U4|EncVal[6]~13\,
	cin1 => \U4|EncVal[6]~13COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(7),
	cout0 => \U4|EncVal[7]~5\,
	cout1 => \U4|EncVal[7]~5COUT1_100\);

-- Location: LC_X4_Y7_N2
\U4|EncVal[8]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(8) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(8) $ (((!\U4|EncVal[5]~17\ & \U4|EncVal[7]~5\) # (\U4|EncVal[5]~17\ & \U4|EncVal[7]~5COUT1_100\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(8), \U4|enc_count~0\, , )
-- \U4|EncVal[8]~61\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(8) & !\U4|EncVal[7]~5\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(8)) # (!\U4|EncVal[7]~5\))))
-- \U4|EncVal[8]~61COUT1_102\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(8) & !\U4|EncVal[7]~5COUT1_100\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(8)) # (!\U4|EncVal[7]~5COUT1_100\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(8),
	datac => \U3|WrVal_MT1\(8),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[5]~17\,
	cin0 => \U4|EncVal[7]~5\,
	cin1 => \U4|EncVal[7]~5COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(8),
	cout0 => \U4|EncVal[8]~61\,
	cout1 => \U4|EncVal[8]~61COUT1_102\);

-- Location: LC_X4_Y7_N3
\U4|EncVal[9]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(9) = DFFEAS(\U4|EncVal\(9) $ (\U4|sDir~regout\ $ ((!(!\U4|EncVal[5]~17\ & \U4|EncVal[8]~61\) # (\U4|EncVal[5]~17\ & \U4|EncVal[8]~61COUT1_102\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(9), \U4|enc_count~0\, , )
-- \U4|EncVal[9]~55\ = CARRY((\U4|EncVal\(9) & (\U4|sDir~regout\ & !\U4|EncVal[8]~61\)) # (!\U4|EncVal\(9) & ((\U4|sDir~regout\) # (!\U4|EncVal[8]~61\))))
-- \U4|EncVal[9]~55COUT1_104\ = CARRY((\U4|EncVal\(9) & (\U4|sDir~regout\ & !\U4|EncVal[8]~61COUT1_102\)) # (!\U4|EncVal\(9) & ((\U4|sDir~regout\) # (!\U4|EncVal[8]~61COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(9),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(9),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[5]~17\,
	cin0 => \U4|EncVal[8]~61\,
	cin1 => \U4|EncVal[8]~61COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(9),
	cout0 => \U4|EncVal[9]~55\,
	cout1 => \U4|EncVal[9]~55COUT1_104\);

-- Location: LC_X4_Y7_N4
\U4|EncVal[10]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(10) = DFFEAS(\U4|EncVal\(10) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[5]~17\ & \U4|EncVal[9]~55\) # (\U4|EncVal[5]~17\ & \U4|EncVal[9]~55COUT1_104\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(10), \U4|enc_count~0\, , )
-- \U4|EncVal[10]~47\ = CARRY((\U4|EncVal\(10) & ((!\U4|EncVal[9]~55COUT1_104\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(10) & (!\U4|sDir~regout\ & !\U4|EncVal[9]~55COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(10),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(10),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[5]~17\,
	cin0 => \U4|EncVal[9]~55\,
	cin1 => \U4|EncVal[9]~55COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(10),
	cout => \U4|EncVal[10]~47\);

-- Location: LC_X9_Y8_N3
\U3|sWrVal_MT1[14]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(14) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|sWrVal_MT1[8]~8_combout\ & (\U3|sWrVal_MT1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(14),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(6),
	datad => \U3|sWrVal_MT1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(14));

-- Location: LC_X9_Y8_N4
\U3|WrVal_MT1[14]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(14) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(14)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(14),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(14));

-- Location: LC_X6_Y5_N3
\U3|sWrVal_MT1[13]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(13) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & (\U2|IO_DAT_WR\(5))) # (!\U3|sWrVal_MT1[8]~8_combout\ & ((\U3|sWrVal_MT1\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(5),
	datac => \U3|sWrVal_MT1[8]~8_combout\,
	datad => \U3|sWrVal_MT1\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(13));

-- Location: LC_X6_Y5_N4
\U3|WrVal_MT1[13]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(13) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(13)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(13),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(13));

-- Location: LC_X9_Y5_N1
\U3|sWrVal_MT1[12]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(12) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sWrVal_MT1[8]~8_combout\ & (\U3|sWrVal_MT1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT1\(12),
	datac => \U2|IO_DAT_WR\(4),
	datad => \U3|sWrVal_MT1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(12));

-- Location: LC_X9_Y5_N2
\U3|WrVal_MT1[12]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(12) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(12)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(12));

-- Location: LC_X12_Y8_N3
\U3|sWrVal_MT1[11]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(11) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[8]~8_combout\ & (\U2|IO_DAT_WR\(3))) # (!\U3|sWrVal_MT1[8]~8_combout\ & ((\U3|sWrVal_MT1\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(3),
	datac => \U3|sWrVal_MT1\(11),
	datad => \U3|sWrVal_MT1[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(11));

-- Location: LC_X12_Y8_N4
\U3|WrVal_MT1[11]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(11) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(11))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(11),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(11));

-- Location: LC_X4_Y7_N5
\U4|EncVal[11]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(11) = DFFEAS(\U4|EncVal\(11) $ (\U4|sDir~regout\ $ ((!\U4|EncVal[10]~47\))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(11), \U4|enc_count~0\, , )
-- \U4|EncVal[11]~33\ = CARRY((\U4|EncVal\(11) & (\U4|sDir~regout\ & !\U4|EncVal[10]~47\)) # (!\U4|EncVal\(11) & ((\U4|sDir~regout\) # (!\U4|EncVal[10]~47\))))
-- \U4|EncVal[11]~33COUT1_106\ = CARRY((\U4|EncVal\(11) & (\U4|sDir~regout\ & !\U4|EncVal[10]~47\)) # (!\U4|EncVal\(11) & ((\U4|sDir~regout\) # (!\U4|EncVal[10]~47\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(11),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(11),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[10]~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(11),
	cout0 => \U4|EncVal[11]~33\,
	cout1 => \U4|EncVal[11]~33COUT1_106\);

-- Location: LC_X4_Y7_N6
\U4|EncVal[12]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(12) = DFFEAS(\U4|EncVal\(12) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[10]~47\ & \U4|EncVal[11]~33\) # (\U4|EncVal[10]~47\ & \U4|EncVal[11]~33COUT1_106\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(12), \U4|enc_count~0\, , )
-- \U4|EncVal[12]~31\ = CARRY((\U4|EncVal\(12) & ((!\U4|EncVal[11]~33\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(12) & (!\U4|sDir~regout\ & !\U4|EncVal[11]~33\)))
-- \U4|EncVal[12]~31COUT1_108\ = CARRY((\U4|EncVal\(12) & ((!\U4|EncVal[11]~33COUT1_106\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(12) & (!\U4|sDir~regout\ & !\U4|EncVal[11]~33COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(12),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(12),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[10]~47\,
	cin0 => \U4|EncVal[11]~33\,
	cin1 => \U4|EncVal[11]~33COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(12),
	cout0 => \U4|EncVal[12]~31\,
	cout1 => \U4|EncVal[12]~31COUT1_108\);

-- Location: LC_X4_Y7_N7
\U4|EncVal[13]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(13) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(13) $ ((!(!\U4|EncVal[10]~47\ & \U4|EncVal[12]~31\) # (\U4|EncVal[10]~47\ & \U4|EncVal[12]~31COUT1_108\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(13), \U4|enc_count~0\, , )
-- \U4|EncVal[13]~23\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[12]~31\) # (!\U4|EncVal\(13)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(13) & !\U4|EncVal[12]~31\)))
-- \U4|EncVal[13]~23COUT1_110\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[12]~31COUT1_108\) # (!\U4|EncVal\(13)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(13) & !\U4|EncVal[12]~31COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(13),
	datac => \U3|WrVal_MT1\(13),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[10]~47\,
	cin0 => \U4|EncVal[12]~31\,
	cin1 => \U4|EncVal[12]~31COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(13),
	cout0 => \U4|EncVal[13]~23\,
	cout1 => \U4|EncVal[13]~23COUT1_110\);

-- Location: LC_X4_Y7_N8
\U4|EncVal[14]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(14) = DFFEAS(\U4|EncVal\(14) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[10]~47\ & \U4|EncVal[13]~23\) # (\U4|EncVal[10]~47\ & \U4|EncVal[13]~23COUT1_110\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(14), \U4|enc_count~0\, , )
-- \U4|EncVal[14]~11\ = CARRY((\U4|EncVal\(14) & ((!\U4|EncVal[13]~23\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(14) & (!\U4|sDir~regout\ & !\U4|EncVal[13]~23\)))
-- \U4|EncVal[14]~11COUT1_112\ = CARRY((\U4|EncVal\(14) & ((!\U4|EncVal[13]~23COUT1_110\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(14) & (!\U4|sDir~regout\ & !\U4|EncVal[13]~23COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(14),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(14),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[10]~47\,
	cin0 => \U4|EncVal[13]~23\,
	cin1 => \U4|EncVal[13]~23COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(14),
	cout0 => \U4|EncVal[14]~11\,
	cout1 => \U4|EncVal[14]~11COUT1_112\);

-- Location: LC_X4_Y7_N9
\U4|EncVal[15]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(15) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(15) $ ((!(!\U4|EncVal[10]~47\ & \U4|EncVal[14]~11\) # (\U4|EncVal[10]~47\ & \U4|EncVal[14]~11COUT1_112\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(15), \U4|enc_count~0\, , )
-- \U4|EncVal[15]~3\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[14]~11COUT1_112\) # (!\U4|EncVal\(15)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(15) & !\U4|EncVal[14]~11COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(15),
	datac => \U3|WrVal_MT1\(15),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[10]~47\,
	cin0 => \U4|EncVal[14]~11\,
	cin1 => \U4|EncVal[14]~11COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(15),
	cout => \U4|EncVal[15]~3\);

-- Location: LC_X9_Y4_N8
\U3|sEnc_MT1[15]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(15) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(15))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(15),
	datad => \U3|sEnc_MT1\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(15));

-- Location: LC_X5_Y8_N1
\U3|Mux159~15\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~15_combout\ = ((!\U2|IO_ADDR\(0) & ((\U2|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~15_combout\);

-- Location: LC_X5_Y8_N5
\U3|sWrVal_MT1[16]~10\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1[16]~10_combout\ = (\U2|IO_ADDR\(1) & (\U3|soPin7_0[0]~0_combout\ & (!\U2|IO_ADDR\(2) & \U3|Mux159~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U3|soPin7_0[0]~0_combout\,
	datac => \U2|IO_ADDR\(2),
	datad => \U3|Mux159~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1[16]~10_combout\);

-- Location: LC_X5_Y8_N6
\U3|sWrVal_MT1[23]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(23) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sWrVal_MT1[16]~10_combout\ & (\U3|sWrVal_MT1\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(23),
	datab => \CPLD_INT~combout\,
	datac => \U2|IO_DAT_WR\(7),
	datad => \U3|sWrVal_MT1[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(23));

-- Location: LC_X5_Y8_N7
\U3|WrVal_MT1[23]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(23) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT1\(23))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(23),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(23));

-- Location: LC_X5_Y8_N3
\U3|sWrVal_MT1[20]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(20) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sWrVal_MT1[16]~10_combout\ & (\U3|sWrVal_MT1\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(20),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1[16]~10_combout\,
	datad => \U2|IO_DAT_WR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(20));

-- Location: LC_X5_Y8_N4
\U3|WrVal_MT1[20]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(20) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT1\(20))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(20),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(20));

-- Location: LC_X4_Y8_N4
\U3|sWrVal_MT1[19]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(19) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & (\U2|IO_DAT_WR\(3))) # (!\U3|sWrVal_MT1[16]~10_combout\ & ((\U3|sWrVal_MT1\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(3),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1\(19),
	datad => \U3|sWrVal_MT1[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(19));

-- Location: LC_X4_Y8_N5
\U3|WrVal_MT1[19]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(19) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(19)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(19),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(19));

-- Location: LC_X5_Y8_N2
\U3|sWrVal_MT1[18]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(18) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|sWrVal_MT1[16]~10_combout\ & ((\U3|sWrVal_MT1\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(2),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1[16]~10_combout\,
	datad => \U3|sWrVal_MT1\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(18));

-- Location: LC_X5_Y8_N9
\U3|WrVal_MT1[18]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(18) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT1\(18))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(18),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(18));

-- Location: LC_X11_Y6_N8
\U3|sWrVal_MT1[17]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(17) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sWrVal_MT1[16]~10_combout\ & (\U3|sWrVal_MT1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT1\(17),
	datac => \U2|IO_DAT_WR\(1),
	datad => \U3|sWrVal_MT1[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(17));

-- Location: LC_X11_Y6_N9
\U3|WrVal_MT1[17]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(17) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(17)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(17),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(17));

-- Location: LC_X11_Y7_N8
\U3|sWrVal_MT1[16]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(16) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sWrVal_MT1[16]~10_combout\ & (\U3|sWrVal_MT1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(16),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1[16]~10_combout\,
	datad => \U2|IO_DAT_WR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(16));

-- Location: LC_X11_Y7_N9
\U3|WrVal_MT1[16]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(16) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(16)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(16),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(16));

-- Location: LC_X5_Y7_N0
\U4|EncVal[16]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(16) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(16) $ ((\U4|EncVal[15]~3\))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(16), \U4|enc_count~0\, , )
-- \U4|EncVal[16]~63\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(16) & !\U4|EncVal[15]~3\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(16)) # (!\U4|EncVal[15]~3\))))
-- \U4|EncVal[16]~63COUT1_114\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(16) & !\U4|EncVal[15]~3\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(16)) # (!\U4|EncVal[15]~3\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(16),
	datac => \U3|WrVal_MT1\(16),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[15]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(16),
	cout0 => \U4|EncVal[16]~63\,
	cout1 => \U4|EncVal[16]~63COUT1_114\);

-- Location: LC_X5_Y7_N1
\U4|EncVal[17]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(17) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(17) $ ((!(!\U4|EncVal[15]~3\ & \U4|EncVal[16]~63\) # (\U4|EncVal[15]~3\ & \U4|EncVal[16]~63COUT1_114\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(17), \U4|enc_count~0\, , )
-- \U4|EncVal[17]~49\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[16]~63\) # (!\U4|EncVal\(17)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(17) & !\U4|EncVal[16]~63\)))
-- \U4|EncVal[17]~49COUT1_116\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[16]~63COUT1_114\) # (!\U4|EncVal\(17)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(17) & !\U4|EncVal[16]~63COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(17),
	datac => \U3|WrVal_MT1\(17),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[15]~3\,
	cin0 => \U4|EncVal[16]~63\,
	cin1 => \U4|EncVal[16]~63COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(17),
	cout0 => \U4|EncVal[17]~49\,
	cout1 => \U4|EncVal[17]~49COUT1_116\);

-- Location: LC_X5_Y7_N2
\U4|EncVal[18]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(18) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(18) $ (((!\U4|EncVal[15]~3\ & \U4|EncVal[17]~49\) # (\U4|EncVal[15]~3\ & \U4|EncVal[17]~49COUT1_116\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(18), \U4|enc_count~0\, , )
-- \U4|EncVal[18]~45\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(18) & !\U4|EncVal[17]~49\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(18)) # (!\U4|EncVal[17]~49\))))
-- \U4|EncVal[18]~45COUT1_118\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(18) & !\U4|EncVal[17]~49COUT1_116\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(18)) # (!\U4|EncVal[17]~49COUT1_116\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(18),
	datac => \U3|WrVal_MT1\(18),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[15]~3\,
	cin0 => \U4|EncVal[17]~49\,
	cin1 => \U4|EncVal[17]~49COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(18),
	cout0 => \U4|EncVal[18]~45\,
	cout1 => \U4|EncVal[18]~45COUT1_118\);

-- Location: LC_X5_Y7_N3
\U4|EncVal[19]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(19) = DFFEAS(\U4|EncVal\(19) $ (\U4|sDir~regout\ $ ((!(!\U4|EncVal[15]~3\ & \U4|EncVal[18]~45\) # (\U4|EncVal[15]~3\ & \U4|EncVal[18]~45COUT1_118\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(19), \U4|enc_count~0\, , )
-- \U4|EncVal[19]~35\ = CARRY((\U4|EncVal\(19) & (\U4|sDir~regout\ & !\U4|EncVal[18]~45\)) # (!\U4|EncVal\(19) & ((\U4|sDir~regout\) # (!\U4|EncVal[18]~45\))))
-- \U4|EncVal[19]~35COUT1_120\ = CARRY((\U4|EncVal\(19) & (\U4|sDir~regout\ & !\U4|EncVal[18]~45COUT1_118\)) # (!\U4|EncVal\(19) & ((\U4|sDir~regout\) # (!\U4|EncVal[18]~45COUT1_118\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(19),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(19),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[15]~3\,
	cin0 => \U4|EncVal[18]~45\,
	cin1 => \U4|EncVal[18]~45COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(19),
	cout0 => \U4|EncVal[19]~35\,
	cout1 => \U4|EncVal[19]~35COUT1_120\);

-- Location: LC_X5_Y7_N4
\U4|EncVal[20]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(20) = DFFEAS(\U4|EncVal\(20) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[15]~3\ & \U4|EncVal[19]~35\) # (\U4|EncVal[15]~3\ & \U4|EncVal[19]~35COUT1_120\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(20), \U4|enc_count~0\, , )
-- \U4|EncVal[20]~25\ = CARRY((\U4|EncVal\(20) & ((!\U4|EncVal[19]~35COUT1_120\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(20) & (!\U4|sDir~regout\ & !\U4|EncVal[19]~35COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(20),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(20),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[15]~3\,
	cin0 => \U4|EncVal[19]~35\,
	cin1 => \U4|EncVal[19]~35COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(20),
	cout => \U4|EncVal[20]~25\);

-- Location: LC_X2_Y8_N1
\U3|sWrVal_MT1[22]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(22) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & (\U2|IO_DAT_WR\(6))) # (!\U3|sWrVal_MT1[16]~10_combout\ & ((\U3|sWrVal_MT1\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(6),
	datac => \U3|sWrVal_MT1\(22),
	datad => \U3|sWrVal_MT1[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(22));

-- Location: LC_X2_Y8_N2
\U3|WrVal_MT1[22]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(22) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT1\(22))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(22),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(22));

-- Location: LC_X4_Y8_N0
\U3|sWrVal_MT1[21]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(21) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[16]~10_combout\ & (\U2|IO_DAT_WR\(5))) # (!\U3|sWrVal_MT1[16]~10_combout\ & ((\U3|sWrVal_MT1\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(5),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1\(21),
	datad => \U3|sWrVal_MT1[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(21));

-- Location: LC_X4_Y8_N1
\U3|WrVal_MT1[21]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(21) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(21)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(21),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(21));

-- Location: LC_X5_Y7_N5
\U4|EncVal[21]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(21) = DFFEAS(\U4|EncVal\(21) $ (\U4|sDir~regout\ $ ((!\U4|EncVal[20]~25\))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(21), \U4|enc_count~0\, , )
-- \U4|EncVal[21]~21\ = CARRY((\U4|EncVal\(21) & (\U4|sDir~regout\ & !\U4|EncVal[20]~25\)) # (!\U4|EncVal\(21) & ((\U4|sDir~regout\) # (!\U4|EncVal[20]~25\))))
-- \U4|EncVal[21]~21COUT1_122\ = CARRY((\U4|EncVal\(21) & (\U4|sDir~regout\ & !\U4|EncVal[20]~25\)) # (!\U4|EncVal\(21) & ((\U4|sDir~regout\) # (!\U4|EncVal[20]~25\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(21),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(21),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[20]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(21),
	cout0 => \U4|EncVal[21]~21\,
	cout1 => \U4|EncVal[21]~21COUT1_122\);

-- Location: LC_X5_Y7_N6
\U4|EncVal[22]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(22) = DFFEAS(\U4|EncVal\(22) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[20]~25\ & \U4|EncVal[21]~21\) # (\U4|EncVal[20]~25\ & \U4|EncVal[21]~21COUT1_122\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(22), \U4|enc_count~0\, , )
-- \U4|EncVal[22]~9\ = CARRY((\U4|EncVal\(22) & ((!\U4|EncVal[21]~21\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(22) & (!\U4|sDir~regout\ & !\U4|EncVal[21]~21\)))
-- \U4|EncVal[22]~9COUT1_124\ = CARRY((\U4|EncVal\(22) & ((!\U4|EncVal[21]~21COUT1_122\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(22) & (!\U4|sDir~regout\ & !\U4|EncVal[21]~21COUT1_122\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(22),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(22),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[20]~25\,
	cin0 => \U4|EncVal[21]~21\,
	cin1 => \U4|EncVal[21]~21COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(22),
	cout0 => \U4|EncVal[22]~9\,
	cout1 => \U4|EncVal[22]~9COUT1_124\);

-- Location: LC_X5_Y7_N7
\U4|EncVal[23]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(23) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(23) $ ((!(!\U4|EncVal[20]~25\ & \U4|EncVal[22]~9\) # (\U4|EncVal[20]~25\ & \U4|EncVal[22]~9COUT1_124\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(23), \U4|enc_count~0\, , )
-- \U4|EncVal[23]~1\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[22]~9\) # (!\U4|EncVal\(23)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(23) & !\U4|EncVal[22]~9\)))
-- \U4|EncVal[23]~1COUT1_126\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[22]~9COUT1_124\) # (!\U4|EncVal\(23)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(23) & !\U4|EncVal[22]~9COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(23),
	datac => \U3|WrVal_MT1\(23),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[20]~25\,
	cin0 => \U4|EncVal[22]~9\,
	cin1 => \U4|EncVal[22]~9COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(23),
	cout0 => \U4|EncVal[23]~1\,
	cout1 => \U4|EncVal[23]~1COUT1_126\);

-- Location: LC_X9_Y4_N0
\U3|sEnc_MT1[23]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(23) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U4|EncVal\(23)))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U3|sEnc_MT1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U3|sEnc_MT1\(23),
	datad => \U4|EncVal\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(23));

-- Location: LC_X6_Y5_N5
\U3|Mux162~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~7_combout\ = ((\U2|IO_ADDR\(1) & ((!\U2|IO_ADDR\(2)) # (!\U2|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datac => \U2|IO_ADDR\(2),
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~7_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input23~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input23,
	combout => \IO_Input23~combout\);

-- Location: LC_X8_Y4_N7
\U3|Mux163~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~4_combout\ = (((\U3|soPin15_8\(7) & \U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|soPin15_8\(7),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~4_combout\);

-- Location: LC_X7_Y4_N4
\U3|Mux163~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~5_combout\ = (\U2|IO_ADDR\(2) & (((!\U2|IO_ADDR\(1) & \U3|soPin7_0\(7))))) # (!\U2|IO_ADDR\(2) & ((\U3|sSeg_LED\(7)) # ((\U2|IO_ADDR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3e32",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(7),
	datab => \U2|IO_ADDR\(2),
	datac => \U2|IO_ADDR\(1),
	datad => \U3|soPin7_0\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~5_combout\);

-- Location: LC_X8_Y4_N8
\U3|Mux163~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~6_combout\ = (\U3|Mux162~7_combout\ & ((\U3|Mux163~5_combout\ & ((\U3|Mux163~4_combout\))) # (!\U3|Mux163~5_combout\ & (\IO_Input23~combout\)))) # (!\U3|Mux162~7_combout\ & (((\U3|Mux163~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~7_combout\,
	datab => \IO_Input23~combout\,
	datac => \U3|Mux163~4_combout\,
	datad => \U3|Mux163~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~6_combout\);

-- Location: LC_X9_Y7_N4
\U3|Mux162~11\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~11_combout\ = (\U2|IO_ADDR\(5) & (((\U2|IO_ADDR\(0)) # (\U2|IO_ADDR\(2))) # (!\U2|IO_ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~11_combout\);

-- Location: LC_X6_Y5_N9
\U3|Mux162~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~10_combout\ = (\U2|IO_ADDR\(1) & ((\U2|IO_ADDR\(2)) # ((!\U2|IO_ADDR\(5))))) # (!\U2|IO_ADDR\(1) & (((\U2|IO_ADDR\(5)) # (!\U2|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(5),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~10_combout\);

-- Location: LC_X10_Y7_N9
\U3|Mux162~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~8_combout\ = (\U2|IO_ADDR\(2) & ((\U2|IO_ADDR\(0)) # ((!\U2|IO_ADDR\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~8_combout\);

-- Location: LC_X10_Y7_N0
\U3|sEnc_MT1[7]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(7) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(7))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(7),
	datad => \U3|sEnc_MT1\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(7));

-- Location: LC_X8_Y10_N0
\U3|Mux158~16\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~16_combout\ = ((\U2|IO_ADDR\(1) & ((\U2|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(1),
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~16_combout\);

-- Location: LC_X8_Y10_N1
\U3|sWrVal_MT2[16]~3\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2[16]~3_combout\ = (\U2|IO_ADDR\(2) & (\U2|IO_ADDR\(0) & (\U3|soPin7_0[0]~0_combout\ & \U3|Mux158~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(0),
	datac => \U3|soPin7_0[0]~0_combout\,
	datad => \U3|Mux158~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2[16]~3_combout\);

-- Location: LC_X8_Y10_N2
\U3|sWrVal_MT2[23]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(23) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sWrVal_MT2[16]~3_combout\ & (\U3|sWrVal_MT2\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(23),
	datac => \U2|IO_DAT_WR\(7),
	datad => \U3|sWrVal_MT2[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(23));

-- Location: LC_X8_Y10_N9
\U3|WrVal_MT2[23]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(23) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(23)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(23),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(23));

-- Location: LC_X8_Y10_N7
\U3|sWrVal_MT2[20]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(20) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & (\U2|IO_DAT_WR\(4))) # (!\U3|sWrVal_MT2[16]~3_combout\ & ((\U3|sWrVal_MT2\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(4),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2\(20),
	datad => \U3|sWrVal_MT2[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(20));

-- Location: LC_X8_Y10_N6
\U3|WrVal_MT2[20]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(20) = DFFEAS(((\U3|sWrVal_MT2\(20) & (\CPLD_INT~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \U3|sWrVal_MT2\(20),
	datac => \CPLD_INT~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(20));

-- Location: LC_X8_Y10_N8
\U3|sWrVal_MT2[19]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(19) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sWrVal_MT2[16]~3_combout\ & (\U3|sWrVal_MT2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(19),
	datab => \U2|IO_DAT_WR\(3),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(19));

-- Location: LC_X8_Y10_N3
\U3|WrVal_MT2[19]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(19) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(19)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(19),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(19));

-- Location: LC_X7_Y8_N4
\U3|sWrVal_MT2[18]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(18) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & (\U2|IO_DAT_WR\(2))) # (!\U3|sWrVal_MT2[16]~3_combout\ & ((\U3|sWrVal_MT2\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(2),
	datac => \U3|sWrVal_MT2[16]~3_combout\,
	datad => \U3|sWrVal_MT2\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(18));

-- Location: LC_X7_Y8_N5
\U3|WrVal_MT2[18]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(18) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(18))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(18),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(18));

-- Location: LC_X9_Y10_N8
\U3|sWrVal_MT2[17]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(17) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sWrVal_MT2[16]~3_combout\ & (\U3|sWrVal_MT2\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(17),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2[16]~3_combout\,
	datad => \U2|IO_DAT_WR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(17));

-- Location: LC_X9_Y10_N9
\U3|WrVal_MT2[17]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(17) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(17)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(17),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(17));

-- Location: LC_X10_Y10_N9
\U3|sWrVal_MT2[16]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(16) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & (\U2|IO_DAT_WR\(0))) # (!\U3|sWrVal_MT2[16]~3_combout\ & ((\U3|sWrVal_MT2\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(0),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2\(16),
	datad => \U3|sWrVal_MT2[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(16));

-- Location: LC_X10_Y10_N0
\U3|WrVal_MT2[16]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(16) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(16))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(16),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(16));

-- Location: LC_X7_Y6_N0
\U5|EncVal[16]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(16) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(16) $ ((\U5|EncVal[15]~3\))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(16), \U5|enc_count~0\, , )
-- \U5|EncVal[16]~59\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(16) & !\U5|EncVal[15]~3\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(16)) # (!\U5|EncVal[15]~3\))))
-- \U5|EncVal[16]~59COUT1_114\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(16) & !\U5|EncVal[15]~3\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(16)) # (!\U5|EncVal[15]~3\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(16),
	datac => \U3|WrVal_MT2\(16),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[15]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(16),
	cout0 => \U5|EncVal[16]~59\,
	cout1 => \U5|EncVal[16]~59COUT1_114\);

-- Location: LC_X7_Y6_N1
\U5|EncVal[17]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(17) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(17) $ ((!(!\U5|EncVal[15]~3\ & \U5|EncVal[16]~59\) # (\U5|EncVal[15]~3\ & \U5|EncVal[16]~59COUT1_114\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(17), \U5|enc_count~0\, , )
-- \U5|EncVal[17]~51\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[16]~59\) # (!\U5|EncVal\(17)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(17) & !\U5|EncVal[16]~59\)))
-- \U5|EncVal[17]~51COUT1_116\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[16]~59COUT1_114\) # (!\U5|EncVal\(17)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(17) & !\U5|EncVal[16]~59COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(17),
	datac => \U3|WrVal_MT2\(17),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[15]~3\,
	cin0 => \U5|EncVal[16]~59\,
	cin1 => \U5|EncVal[16]~59COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(17),
	cout0 => \U5|EncVal[17]~51\,
	cout1 => \U5|EncVal[17]~51COUT1_116\);

-- Location: LC_X7_Y6_N2
\U5|EncVal[18]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(18) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(18) $ (((!\U5|EncVal[15]~3\ & \U5|EncVal[17]~51\) # (\U5|EncVal[15]~3\ & \U5|EncVal[17]~51COUT1_116\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(18), \U5|enc_count~0\, , )
-- \U5|EncVal[18]~43\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(18) & !\U5|EncVal[17]~51\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(18)) # (!\U5|EncVal[17]~51\))))
-- \U5|EncVal[18]~43COUT1_118\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(18) & !\U5|EncVal[17]~51COUT1_116\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(18)) # (!\U5|EncVal[17]~51COUT1_116\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(18),
	datac => \U3|WrVal_MT2\(18),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[15]~3\,
	cin0 => \U5|EncVal[17]~51\,
	cin1 => \U5|EncVal[17]~51COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(18),
	cout0 => \U5|EncVal[18]~43\,
	cout1 => \U5|EncVal[18]~43COUT1_118\);

-- Location: LC_X7_Y6_N3
\U5|EncVal[19]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(19) = DFFEAS(\U5|EncVal\(19) $ (\U5|sDir~regout\ $ ((!(!\U5|EncVal[15]~3\ & \U5|EncVal[18]~43\) # (\U5|EncVal[15]~3\ & \U5|EncVal[18]~43COUT1_118\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(19), \U5|enc_count~0\, , )
-- \U5|EncVal[19]~35\ = CARRY((\U5|EncVal\(19) & (\U5|sDir~regout\ & !\U5|EncVal[18]~43\)) # (!\U5|EncVal\(19) & ((\U5|sDir~regout\) # (!\U5|EncVal[18]~43\))))
-- \U5|EncVal[19]~35COUT1_120\ = CARRY((\U5|EncVal\(19) & (\U5|sDir~regout\ & !\U5|EncVal[18]~43COUT1_118\)) # (!\U5|EncVal\(19) & ((\U5|sDir~regout\) # (!\U5|EncVal[18]~43COUT1_118\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(19),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(19),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[15]~3\,
	cin0 => \U5|EncVal[18]~43\,
	cin1 => \U5|EncVal[18]~43COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(19),
	cout0 => \U5|EncVal[19]~35\,
	cout1 => \U5|EncVal[19]~35COUT1_120\);

-- Location: LC_X7_Y6_N4
\U5|EncVal[20]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(20) = DFFEAS(\U5|EncVal\(20) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[15]~3\ & \U5|EncVal[19]~35\) # (\U5|EncVal[15]~3\ & \U5|EncVal[19]~35COUT1_120\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(20), \U5|enc_count~0\, , )
-- \U5|EncVal[20]~29\ = CARRY((\U5|EncVal\(20) & ((!\U5|EncVal[19]~35COUT1_120\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(20) & (!\U5|sDir~regout\ & !\U5|EncVal[19]~35COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(20),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(20),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[15]~3\,
	cin0 => \U5|EncVal[19]~35\,
	cin1 => \U5|EncVal[19]~35COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(20),
	cout => \U5|EncVal[20]~29\);

-- Location: LC_X9_Y5_N6
\U3|sWrVal_MT2[22]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(22) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|sWrVal_MT2[16]~3_combout\ & (\U3|sWrVal_MT2\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(22),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2[16]~3_combout\,
	datad => \U2|IO_DAT_WR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(22));

-- Location: LC_X9_Y5_N7
\U3|WrVal_MT2[22]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(22) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(22)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(22),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(22));

-- Location: LC_X7_Y8_N2
\U3|sWrVal_MT2[21]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(21) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[16]~3_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sWrVal_MT2[16]~3_combout\ & (\U3|sWrVal_MT2\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(21),
	datac => \U3|sWrVal_MT2[16]~3_combout\,
	datad => \U2|IO_DAT_WR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(21));

-- Location: LC_X7_Y8_N3
\U3|WrVal_MT2[21]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(21) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(21))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(21),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(21));

-- Location: LC_X7_Y6_N5
\U5|EncVal[21]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(21) = DFFEAS(\U5|EncVal\(21) $ (\U5|sDir~regout\ $ ((!\U5|EncVal[20]~29\))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(21), \U5|enc_count~0\, , )
-- \U5|EncVal[21]~21\ = CARRY((\U5|EncVal\(21) & (\U5|sDir~regout\ & !\U5|EncVal[20]~29\)) # (!\U5|EncVal\(21) & ((\U5|sDir~regout\) # (!\U5|EncVal[20]~29\))))
-- \U5|EncVal[21]~21COUT1_122\ = CARRY((\U5|EncVal\(21) & (\U5|sDir~regout\ & !\U5|EncVal[20]~29\)) # (!\U5|EncVal\(21) & ((\U5|sDir~regout\) # (!\U5|EncVal[20]~29\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(21),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(21),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[20]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(21),
	cout0 => \U5|EncVal[21]~21\,
	cout1 => \U5|EncVal[21]~21COUT1_122\);

-- Location: LC_X7_Y6_N6
\U5|EncVal[22]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(22) = DFFEAS(\U5|EncVal\(22) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[20]~29\ & \U5|EncVal[21]~21\) # (\U5|EncVal[20]~29\ & \U5|EncVal[21]~21COUT1_122\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(22), \U5|enc_count~0\, , )
-- \U5|EncVal[22]~15\ = CARRY((\U5|EncVal\(22) & ((!\U5|EncVal[21]~21\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(22) & (!\U5|sDir~regout\ & !\U5|EncVal[21]~21\)))
-- \U5|EncVal[22]~15COUT1_124\ = CARRY((\U5|EncVal\(22) & ((!\U5|EncVal[21]~21COUT1_122\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(22) & (!\U5|sDir~regout\ & !\U5|EncVal[21]~21COUT1_122\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(22),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(22),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[20]~29\,
	cin0 => \U5|EncVal[21]~21\,
	cin1 => \U5|EncVal[21]~21COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(22),
	cout0 => \U5|EncVal[22]~15\,
	cout1 => \U5|EncVal[22]~15COUT1_124\);

-- Location: LC_X7_Y6_N7
\U5|EncVal[23]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(23) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(23) $ ((!(!\U5|EncVal[20]~29\ & \U5|EncVal[22]~15\) # (\U5|EncVal[20]~29\ & \U5|EncVal[22]~15COUT1_124\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(23), \U5|enc_count~0\, , )
-- \U5|EncVal[23]~7\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[22]~15\) # (!\U5|EncVal\(23)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(23) & !\U5|EncVal[22]~15\)))
-- \U5|EncVal[23]~7COUT1_126\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[22]~15COUT1_124\) # (!\U5|EncVal\(23)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(23) & !\U5|EncVal[22]~15COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(23),
	datac => \U3|WrVal_MT2\(23),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[20]~29\,
	cin0 => \U5|EncVal[22]~15\,
	cin1 => \U5|EncVal[22]~15COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(23),
	cout0 => \U5|EncVal[23]~7\,
	cout1 => \U5|EncVal[23]~7COUT1_126\);

-- Location: LC_X10_Y7_N1
\U3|sEnc_MT2[23]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(23) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(23))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(23),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(23));

-- Location: LC_X9_Y7_N3
\U3|Mux162~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~9_combout\ = (\U2|IO_ADDR\(1) & (((\U2|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~9_combout\);

-- Location: LC_X9_Y8_N5
\U3|sWrVal_MT2[24]~2\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2[24]~2_combout\ = (\U2|IO_ADDR\(2) & (\U3|Mux158~16_combout\ & (!\U2|IO_ADDR\(0) & \U3|soPin7_0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U3|Mux158~16_combout\,
	datac => \U2|IO_ADDR\(0),
	datad => \U3|soPin7_0[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2[24]~2_combout\);

-- Location: LC_X9_Y8_N6
\U3|sWrVal_MT2[31]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(31) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & ((\U2|IO_DAT_WR\(7)))) # (!\U3|sWrVal_MT2[24]~2_combout\ & (\U3|sWrVal_MT2\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(31),
	datab => \U2|IO_DAT_WR\(7),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(31));

-- Location: LC_X9_Y8_N7
\U3|WrVal_MT2[31]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(31) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(31))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(31),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(31));

-- Location: LC_X9_Y8_N0
\U3|sWrVal_MT2[30]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(30) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & ((\U2|IO_DAT_WR\(6)))) # (!\U3|sWrVal_MT2[24]~2_combout\ & (\U3|sWrVal_MT2\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2[24]~2_combout\,
	datab => \U3|sWrVal_MT2\(30),
	datac => \CPLD_INT~combout\,
	datad => \U2|IO_DAT_WR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(30));

-- Location: LC_X9_Y8_N1
\U3|WrVal_MT2[30]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(30) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(30)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(30),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(30));

-- Location: LC_X7_Y8_N0
\U3|sWrVal_MT2[25]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(25) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sWrVal_MT2[24]~2_combout\ & (\U3|sWrVal_MT2\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(25),
	datac => \U3|sWrVal_MT2[24]~2_combout\,
	datad => \U2|IO_DAT_WR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(25));

-- Location: LC_X7_Y8_N1
\U3|WrVal_MT2[25]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(25) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(25))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(25),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(25));

-- Location: LC_X7_Y5_N3
\U3|sWrVal_MT2[24]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(24) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sWrVal_MT2[24]~2_combout\ & (\U3|sWrVal_MT2\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(24),
	datab => \U2|IO_DAT_WR\(0),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(24));

-- Location: LC_X7_Y5_N4
\U3|WrVal_MT2[24]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(24) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT2\(24)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(24),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(24));

-- Location: LC_X7_Y6_N8
\U5|EncVal[24]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(24) = DFFEAS(\U5|EncVal\(24) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[20]~29\ & \U5|EncVal[23]~7\) # (\U5|EncVal[20]~29\ & \U5|EncVal[23]~7COUT1_126\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(24), \U5|enc_count~0\, , )
-- \U5|EncVal[24]~57\ = CARRY((\U5|EncVal\(24) & ((!\U5|EncVal[23]~7\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(24) & (!\U5|sDir~regout\ & !\U5|EncVal[23]~7\)))
-- \U5|EncVal[24]~57COUT1_128\ = CARRY((\U5|EncVal\(24) & ((!\U5|EncVal[23]~7COUT1_126\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(24) & (!\U5|sDir~regout\ & !\U5|EncVal[23]~7COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(24),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(24),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[20]~29\,
	cin0 => \U5|EncVal[23]~7\,
	cin1 => \U5|EncVal[23]~7COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(24),
	cout0 => \U5|EncVal[24]~57\,
	cout1 => \U5|EncVal[24]~57COUT1_128\);

-- Location: LC_X7_Y6_N9
\U5|EncVal[25]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(25) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(25) $ ((!(!\U5|EncVal[20]~29\ & \U5|EncVal[24]~57\) # (\U5|EncVal[20]~29\ & \U5|EncVal[24]~57COUT1_128\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(25), \U5|enc_count~0\, , )
-- \U5|EncVal[25]~49\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[24]~57COUT1_128\) # (!\U5|EncVal\(25)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(25) & !\U5|EncVal[24]~57COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(25),
	datac => \U3|WrVal_MT2\(25),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[20]~29\,
	cin0 => \U5|EncVal[24]~57\,
	cin1 => \U5|EncVal[24]~57COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(25),
	cout => \U5|EncVal[25]~49\);

-- Location: LC_X9_Y6_N1
\U3|sWrVal_MT2[29]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(29) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sWrVal_MT2[24]~2_combout\ & (\U3|sWrVal_MT2\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(29),
	datac => \U2|IO_DAT_WR\(5),
	datad => \U3|sWrVal_MT2[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(29));

-- Location: LC_X9_Y6_N6
\U3|WrVal_MT2[29]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(29) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(29))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(29),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(29));

-- Location: LC_X10_Y6_N6
\U3|sWrVal_MT2[28]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(28) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & (\U2|IO_DAT_WR\(4))) # (!\U3|sWrVal_MT2[24]~2_combout\ & ((\U3|sWrVal_MT2\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(4),
	datab => \U3|sWrVal_MT2\(28),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2[24]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(28));

-- Location: LC_X10_Y6_N7
\U3|WrVal_MT2[28]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(28) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT2\(28))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(28),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(28));

-- Location: LC_X12_Y7_N0
\U3|sWrVal_MT2[27]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(27) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & ((\U2|IO_DAT_WR\(3)))) # (!\U3|sWrVal_MT2[24]~2_combout\ & (\U3|sWrVal_MT2\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT2\(27),
	datac => \U3|sWrVal_MT2[24]~2_combout\,
	datad => \U2|IO_DAT_WR\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(27));

-- Location: LC_X12_Y7_N4
\U3|WrVal_MT2[27]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(27) = DFFEAS(((\CPLD_INT~combout\ & (\U3|sWrVal_MT2\(27)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2\(27),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(27));

-- Location: LC_X7_Y8_N8
\U3|sWrVal_MT2[26]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT2\(26) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT2[24]~2_combout\ & ((\U2|IO_DAT_WR\(2)))) # (!\U3|sWrVal_MT2[24]~2_combout\ & (\U3|sWrVal_MT2\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT2\(26),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT2[24]~2_combout\,
	datad => \U2|IO_DAT_WR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT2\(26));

-- Location: LC_X7_Y8_N9
\U3|WrVal_MT2[26]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT2\(26) = DFFEAS(((\CPLD_INT~combout\ & ((\U3|sWrVal_MT2\(26))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT2\(26),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT2\(26));

-- Location: LC_X8_Y6_N0
\U5|EncVal[26]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(26) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(26) $ ((\U5|EncVal[25]~49\))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(26), \U5|enc_count~0\, , )
-- \U5|EncVal[26]~41\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(26) & !\U5|EncVal[25]~49\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(26)) # (!\U5|EncVal[25]~49\))))
-- \U5|EncVal[26]~41COUT1_130\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(26) & !\U5|EncVal[25]~49\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(26)) # (!\U5|EncVal[25]~49\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(26),
	datac => \U3|WrVal_MT2\(26),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[25]~49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(26),
	cout0 => \U5|EncVal[26]~41\,
	cout1 => \U5|EncVal[26]~41COUT1_130\);

-- Location: LC_X8_Y6_N1
\U5|EncVal[27]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(27) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(27) $ ((!(!\U5|EncVal[25]~49\ & \U5|EncVal[26]~41\) # (\U5|EncVal[25]~49\ & \U5|EncVal[26]~41COUT1_130\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(27), \U5|enc_count~0\, , )
-- \U5|EncVal[27]~33\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[26]~41\) # (!\U5|EncVal\(27)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(27) & !\U5|EncVal[26]~41\)))
-- \U5|EncVal[27]~33COUT1_132\ = CARRY((\U5|sDir~regout\ & ((!\U5|EncVal[26]~41COUT1_130\) # (!\U5|EncVal\(27)))) # (!\U5|sDir~regout\ & (!\U5|EncVal\(27) & !\U5|EncVal[26]~41COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(27),
	datac => \U3|WrVal_MT2\(27),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[25]~49\,
	cin0 => \U5|EncVal[26]~41\,
	cin1 => \U5|EncVal[26]~41COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(27),
	cout0 => \U5|EncVal[27]~33\,
	cout1 => \U5|EncVal[27]~33COUT1_132\);

-- Location: LC_X8_Y6_N2
\U5|EncVal[28]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(28) = DFFEAS(\U5|sDir~regout\ $ (\U5|EncVal\(28) $ (((!\U5|EncVal[25]~49\ & \U5|EncVal[27]~33\) # (\U5|EncVal[25]~49\ & \U5|EncVal[27]~33COUT1_132\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(28), \U5|enc_count~0\, , )
-- \U5|EncVal[28]~27\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(28) & !\U5|EncVal[27]~33\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(28)) # (!\U5|EncVal[27]~33\))))
-- \U5|EncVal[28]~27COUT1_134\ = CARRY((\U5|sDir~regout\ & (\U5|EncVal\(28) & !\U5|EncVal[27]~33COUT1_132\)) # (!\U5|sDir~regout\ & ((\U5|EncVal\(28)) # (!\U5|EncVal[27]~33COUT1_132\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|sDir~regout\,
	datab => \U5|EncVal\(28),
	datac => \U3|WrVal_MT2\(28),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[25]~49\,
	cin0 => \U5|EncVal[27]~33\,
	cin1 => \U5|EncVal[27]~33COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(28),
	cout0 => \U5|EncVal[28]~27\,
	cout1 => \U5|EncVal[28]~27COUT1_134\);

-- Location: LC_X8_Y6_N3
\U5|EncVal[29]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(29) = DFFEAS(\U5|EncVal\(29) $ (\U5|sDir~regout\ $ ((!(!\U5|EncVal[25]~49\ & \U5|EncVal[28]~27\) # (\U5|EncVal[25]~49\ & \U5|EncVal[28]~27COUT1_134\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(29), \U5|enc_count~0\, , )
-- \U5|EncVal[29]~19\ = CARRY((\U5|EncVal\(29) & (\U5|sDir~regout\ & !\U5|EncVal[28]~27\)) # (!\U5|EncVal\(29) & ((\U5|sDir~regout\) # (!\U5|EncVal[28]~27\))))
-- \U5|EncVal[29]~19COUT1_136\ = CARRY((\U5|EncVal\(29) & (\U5|sDir~regout\ & !\U5|EncVal[28]~27COUT1_134\)) # (!\U5|EncVal\(29) & ((\U5|sDir~regout\) # (!\U5|EncVal[28]~27COUT1_134\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(29),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(29),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[25]~49\,
	cin0 => \U5|EncVal[28]~27\,
	cin1 => \U5|EncVal[28]~27COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(29),
	cout0 => \U5|EncVal[29]~19\,
	cout1 => \U5|EncVal[29]~19COUT1_136\);

-- Location: LC_X8_Y6_N4
\U5|EncVal[30]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(30) = DFFEAS(\U5|EncVal\(30) $ (\U5|sDir~regout\ $ (((!\U5|EncVal[25]~49\ & \U5|EncVal[29]~19\) # (\U5|EncVal[25]~49\ & \U5|EncVal[29]~19COUT1_136\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(30), \U5|enc_count~0\, , )
-- \U5|EncVal[30]~13\ = CARRY((\U5|EncVal\(30) & ((!\U5|EncVal[29]~19COUT1_136\) # (!\U5|sDir~regout\))) # (!\U5|EncVal\(30) & (!\U5|sDir~regout\ & !\U5|EncVal[29]~19COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(30),
	datab => \U5|sDir~regout\,
	datac => \U3|WrVal_MT2\(30),
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[25]~49\,
	cin0 => \U5|EncVal[29]~19\,
	cin1 => \U5|EncVal[29]~19COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(30),
	cout => \U5|EncVal[30]~13\);

-- Location: LC_X8_Y6_N5
\U5|EncVal[31]\ : maxv_lcell
-- Equation(s):
-- \U5|EncVal\(31) = DFFEAS(\U5|EncVal\(31) $ (((\U5|EncVal[30]~13\ $ (!\U5|sDir~regout\)))), GLOBAL(\Clk~combout\), VCC, , \U5|P~regout\, \U3|WrVal_MT2\(31), \U5|enc_count~0\, , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U5|EncVal\(31),
	datac => \U3|WrVal_MT2\(31),
	datad => \U5|sDir~regout\,
	aclr => GND,
	aload => \U5|enc_count~0\,
	ena => \U5|P~regout\,
	cin => \U5|EncVal[30]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U5|EncVal\(31));

-- Location: LC_X10_Y7_N4
\U3|sEnc_MT2[31]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(31) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U5|EncVal\(31)))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U3|sEnc_MT2\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(31),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U5|EncVal\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(31));

-- Location: LC_X6_Y8_N6
\U3|sWrVal_MT1[24]~9\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1[24]~9_combout\ = (\U2|IO_RDY_WR~0_combout\ & (\U3|sEnc_MT2[1]~0_combout\ & (\U2|IO_ADDR\(0) & !\U2|IO_ADDR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_RDY_WR~0_combout\,
	datab => \U3|sEnc_MT2[1]~0_combout\,
	datac => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1[24]~9_combout\);

-- Location: LC_X7_Y7_N2
\U3|sWrVal_MT1[31]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(31) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & (\U2|IO_DAT_WR\(7))) # (!\U3|sWrVal_MT1[24]~9_combout\ & ((\U3|sWrVal_MT1\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(7),
	datab => \U3|sWrVal_MT1\(31),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(31));

-- Location: LC_X7_Y7_N3
\U3|WrVal_MT1[31]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(31) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(31))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(31),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(31));

-- Location: LC_X7_Y7_N7
\U3|sWrVal_MT1[30]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(30) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & (\U2|IO_DAT_WR\(6))) # (!\U3|sWrVal_MT1[24]~9_combout\ & ((\U3|sWrVal_MT1\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U2|IO_DAT_WR\(6),
	datac => \U3|sWrVal_MT1\(30),
	datad => \U3|sWrVal_MT1[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(30));

-- Location: LC_X7_Y7_N9
\U3|WrVal_MT1[30]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(30) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(30))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1\(30),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(30));

-- Location: LC_X6_Y8_N1
\U3|sWrVal_MT1[25]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(25) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & ((\U2|IO_DAT_WR\(1)))) # (!\U3|sWrVal_MT1[24]~9_combout\ & (\U3|sWrVal_MT1\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT1\(25),
	datac => \U3|sWrVal_MT1[24]~9_combout\,
	datad => \U2|IO_DAT_WR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(25));

-- Location: LC_X6_Y8_N2
\U3|WrVal_MT1[25]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(25) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(25)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(25),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(25));

-- Location: LC_X7_Y7_N0
\U3|sWrVal_MT1[24]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(24) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & ((\U2|IO_DAT_WR\(0)))) # (!\U3|sWrVal_MT1[24]~9_combout\ & (\U3|sWrVal_MT1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT1\(24),
	datac => \U2|IO_DAT_WR\(0),
	datad => \U3|sWrVal_MT1[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(24));

-- Location: LC_X7_Y7_N1
\U3|WrVal_MT1[24]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(24) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(24))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(24),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(24));

-- Location: LC_X5_Y7_N8
\U4|EncVal[24]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(24) = DFFEAS(\U4|EncVal\(24) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[20]~25\ & \U4|EncVal[23]~1\) # (\U4|EncVal[20]~25\ & \U4|EncVal[23]~1COUT1_126\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(24), \U4|enc_count~0\, , )
-- \U4|EncVal[24]~59\ = CARRY((\U4|EncVal\(24) & ((!\U4|EncVal[23]~1\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(24) & (!\U4|sDir~regout\ & !\U4|EncVal[23]~1\)))
-- \U4|EncVal[24]~59COUT1_128\ = CARRY((\U4|EncVal\(24) & ((!\U4|EncVal[23]~1COUT1_126\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(24) & (!\U4|sDir~regout\ & !\U4|EncVal[23]~1COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(24),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(24),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[20]~25\,
	cin0 => \U4|EncVal[23]~1\,
	cin1 => \U4|EncVal[23]~1COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(24),
	cout0 => \U4|EncVal[24]~59\,
	cout1 => \U4|EncVal[24]~59COUT1_128\);

-- Location: LC_X5_Y7_N9
\U4|EncVal[25]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(25) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(25) $ ((!(!\U4|EncVal[20]~25\ & \U4|EncVal[24]~59\) # (\U4|EncVal[20]~25\ & \U4|EncVal[24]~59COUT1_128\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(25), \U4|enc_count~0\, , )
-- \U4|EncVal[25]~53\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[24]~59COUT1_128\) # (!\U4|EncVal\(25)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(25) & !\U4|EncVal[24]~59COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(25),
	datac => \U3|WrVal_MT1\(25),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[20]~25\,
	cin0 => \U4|EncVal[24]~59\,
	cin1 => \U4|EncVal[24]~59COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(25),
	cout => \U4|EncVal[25]~53\);

-- Location: LC_X7_Y7_N8
\U3|sWrVal_MT1[29]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(29) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & ((\U2|IO_DAT_WR\(5)))) # (!\U3|sWrVal_MT1[24]~9_combout\ & (\U3|sWrVal_MT1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(29),
	datab => \U2|IO_DAT_WR\(5),
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(29));

-- Location: LC_X7_Y7_N6
\U3|WrVal_MT1[29]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(29) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(29))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(29),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(29));

-- Location: LC_X6_Y8_N9
\U3|sWrVal_MT1[28]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(28) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & ((\U2|IO_DAT_WR\(4)))) # (!\U3|sWrVal_MT1[24]~9_combout\ & (\U3|sWrVal_MT1\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPLD_INT~combout\,
	datab => \U3|sWrVal_MT1\(28),
	datac => \U3|sWrVal_MT1[24]~9_combout\,
	datad => \U2|IO_DAT_WR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(28));

-- Location: LC_X6_Y8_N0
\U3|WrVal_MT1[28]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(28) = DFFEAS((\CPLD_INT~combout\ & (((\U3|sWrVal_MT1\(28))))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(28),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(28));

-- Location: LC_X6_Y8_N7
\U3|sWrVal_MT1[27]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(27) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & (\U2|IO_DAT_WR\(3))) # (!\U3|sWrVal_MT1[24]~9_combout\ & ((\U3|sWrVal_MT1\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(3),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1\(27),
	datad => \U3|sWrVal_MT1[24]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(27));

-- Location: LC_X6_Y8_N8
\U3|WrVal_MT1[27]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(27) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(27)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(27),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(27));

-- Location: LC_X6_Y8_N4
\U3|sWrVal_MT1[26]\ : maxv_lcell
-- Equation(s):
-- \U3|sWrVal_MT1\(26) = (\CPLD_INT~combout\ & ((\U3|sWrVal_MT1[24]~9_combout\ & ((\U2|IO_DAT_WR\(2)))) # (!\U3|sWrVal_MT1[24]~9_combout\ & (\U3|sWrVal_MT1\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWrVal_MT1\(26),
	datab => \CPLD_INT~combout\,
	datac => \U3|sWrVal_MT1[24]~9_combout\,
	datad => \U2|IO_DAT_WR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sWrVal_MT1\(26));

-- Location: LC_X6_Y8_N5
\U3|WrVal_MT1[26]\ : maxv_lcell
-- Equation(s):
-- \U3|WrVal_MT1\(26) = DFFEAS((((\CPLD_INT~combout\ & \U3|sWrVal_MT1\(26)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \CPLD_INT~combout\,
	datad => \U3|sWrVal_MT1\(26),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U3|WrVal_MT1\(26));

-- Location: LC_X6_Y7_N0
\U4|EncVal[26]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(26) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(26) $ ((\U4|EncVal[25]~53\))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(26), \U4|enc_count~0\, , )
-- \U4|EncVal[26]~43\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(26) & !\U4|EncVal[25]~53\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(26)) # (!\U4|EncVal[25]~53\))))
-- \U4|EncVal[26]~43COUT1_130\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(26) & !\U4|EncVal[25]~53\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(26)) # (!\U4|EncVal[25]~53\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(26),
	datac => \U3|WrVal_MT1\(26),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[25]~53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(26),
	cout0 => \U4|EncVal[26]~43\,
	cout1 => \U4|EncVal[26]~43COUT1_130\);

-- Location: LC_X6_Y7_N1
\U4|EncVal[27]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(27) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(27) $ ((!(!\U4|EncVal[25]~53\ & \U4|EncVal[26]~43\) # (\U4|EncVal[25]~53\ & \U4|EncVal[26]~43COUT1_130\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(27), \U4|enc_count~0\, , )
-- \U4|EncVal[27]~39\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[26]~43\) # (!\U4|EncVal\(27)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(27) & !\U4|EncVal[26]~43\)))
-- \U4|EncVal[27]~39COUT1_132\ = CARRY((\U4|sDir~regout\ & ((!\U4|EncVal[26]~43COUT1_130\) # (!\U4|EncVal\(27)))) # (!\U4|sDir~regout\ & (!\U4|EncVal\(27) & !\U4|EncVal[26]~43COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(27),
	datac => \U3|WrVal_MT1\(27),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[25]~53\,
	cin0 => \U4|EncVal[26]~43\,
	cin1 => \U4|EncVal[26]~43COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(27),
	cout0 => \U4|EncVal[27]~39\,
	cout1 => \U4|EncVal[27]~39COUT1_132\);

-- Location: LC_X6_Y7_N2
\U4|EncVal[28]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(28) = DFFEAS(\U4|sDir~regout\ $ (\U4|EncVal\(28) $ (((!\U4|EncVal[25]~53\ & \U4|EncVal[27]~39\) # (\U4|EncVal[25]~53\ & \U4|EncVal[27]~39COUT1_132\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(28), \U4|enc_count~0\, , )
-- \U4|EncVal[28]~29\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(28) & !\U4|EncVal[27]~39\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(28)) # (!\U4|EncVal[27]~39\))))
-- \U4|EncVal[28]~29COUT1_134\ = CARRY((\U4|sDir~regout\ & (\U4|EncVal\(28) & !\U4|EncVal[27]~39COUT1_132\)) # (!\U4|sDir~regout\ & ((\U4|EncVal\(28)) # (!\U4|EncVal[27]~39COUT1_132\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|sDir~regout\,
	datab => \U4|EncVal\(28),
	datac => \U3|WrVal_MT1\(28),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[25]~53\,
	cin0 => \U4|EncVal[27]~39\,
	cin1 => \U4|EncVal[27]~39COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(28),
	cout0 => \U4|EncVal[28]~29\,
	cout1 => \U4|EncVal[28]~29COUT1_134\);

-- Location: LC_X6_Y7_N3
\U4|EncVal[29]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(29) = DFFEAS(\U4|EncVal\(29) $ (\U4|sDir~regout\ $ ((!(!\U4|EncVal[25]~53\ & \U4|EncVal[28]~29\) # (\U4|EncVal[25]~53\ & \U4|EncVal[28]~29COUT1_134\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(29), \U4|enc_count~0\, , )
-- \U4|EncVal[29]~19\ = CARRY((\U4|EncVal\(29) & (\U4|sDir~regout\ & !\U4|EncVal[28]~29\)) # (!\U4|EncVal\(29) & ((\U4|sDir~regout\) # (!\U4|EncVal[28]~29\))))
-- \U4|EncVal[29]~19COUT1_136\ = CARRY((\U4|EncVal\(29) & (\U4|sDir~regout\ & !\U4|EncVal[28]~29COUT1_134\)) # (!\U4|EncVal\(29) & ((\U4|sDir~regout\) # (!\U4|EncVal[28]~29COUT1_134\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(29),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(29),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[25]~53\,
	cin0 => \U4|EncVal[28]~29\,
	cin1 => \U4|EncVal[28]~29COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(29),
	cout0 => \U4|EncVal[29]~19\,
	cout1 => \U4|EncVal[29]~19COUT1_136\);

-- Location: LC_X6_Y7_N4
\U4|EncVal[30]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(30) = DFFEAS(\U4|EncVal\(30) $ (\U4|sDir~regout\ $ (((!\U4|EncVal[25]~53\ & \U4|EncVal[29]~19\) # (\U4|EncVal[25]~53\ & \U4|EncVal[29]~19COUT1_136\)))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(30), \U4|enc_count~0\, , )
-- \U4|EncVal[30]~15\ = CARRY((\U4|EncVal\(30) & ((!\U4|EncVal[29]~19COUT1_136\) # (!\U4|sDir~regout\))) # (!\U4|EncVal\(30) & (!\U4|sDir~regout\ & !\U4|EncVal[29]~19COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \U4|EncVal\(30),
	datab => \U4|sDir~regout\,
	datac => \U3|WrVal_MT1\(30),
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[25]~53\,
	cin0 => \U4|EncVal[29]~19\,
	cin1 => \U4|EncVal[29]~19COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(30),
	cout => \U4|EncVal[30]~15\);

-- Location: LC_X6_Y7_N5
\U4|EncVal[31]\ : maxv_lcell
-- Equation(s):
-- \U4|EncVal\(31) = DFFEAS((\U4|EncVal\(31) $ (\U4|EncVal[30]~15\ $ (!\U4|sDir~regout\))), GLOBAL(\Clk~combout\), VCC, , \U4|P~regout\, \U3|WrVal_MT1\(31), \U4|enc_count~0\, , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \U4|EncVal\(31),
	datac => \U3|WrVal_MT1\(31),
	datad => \U4|sDir~regout\,
	aclr => GND,
	aload => \U4|enc_count~0\,
	ena => \U4|P~regout\,
	cin => \U4|EncVal[30]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U4|EncVal\(31));

-- Location: LC_X11_Y7_N1
\U3|sEnc_MT1[31]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(31) = (GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(31))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (((\U3|sEnc_MT1\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|EncVal\(31),
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datad => \U3|sEnc_MT1\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(31));

-- Location: LC_X10_Y7_N8
\U3|Mux163~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~7_combout\ = (\U3|Mux162~9_combout\ & ((\U3|Mux162~8_combout\) # ((\U3|sEnc_MT2\(31))))) # (!\U3|Mux162~9_combout\ & (!\U3|Mux162~8_combout\ & ((\U3|sEnc_MT1\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~9_combout\,
	datab => \U3|Mux162~8_combout\,
	datac => \U3|sEnc_MT2\(31),
	datad => \U3|sEnc_MT1\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~7_combout\);

-- Location: LC_X10_Y7_N5
\U3|Mux163~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~8_combout\ = (\U3|Mux162~8_combout\ & ((\U3|Mux163~7_combout\ & ((\U3|sEnc_MT2\(23)))) # (!\U3|Mux163~7_combout\ & (\U3|sEnc_MT1\(7))))) # (!\U3|Mux162~8_combout\ & (((\U3|Mux163~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~8_combout\,
	datab => \U3|sEnc_MT1\(7),
	datac => \U3|sEnc_MT2\(23),
	datad => \U3|Mux163~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~8_combout\);

-- Location: LC_X9_Y4_N2
\U3|Mux163~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~9_combout\ = (\U3|Mux162~11_combout\ & (((\U3|Mux162~10_combout\ & \U3|Mux163~8_combout\)))) # (!\U3|Mux162~11_combout\ & ((\U3|Mux163~6_combout\) # ((!\U3|Mux162~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux163~6_combout\,
	datab => \U3|Mux162~11_combout\,
	datac => \U3|Mux162~10_combout\,
	datad => \U3|Mux163~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~9_combout\);

-- Location: LC_X9_Y4_N3
\U3|Mux163~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~10_combout\ = (\U3|Mux162~6_combout\ & ((\U3|Mux163~9_combout\ & ((\U3|sEnc_MT1\(23)))) # (!\U3|Mux163~9_combout\ & (\U3|sEnc_MT1\(15))))) # (!\U3|Mux162~6_combout\ & (((\U3|Mux163~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~6_combout\,
	datab => \U3|sEnc_MT1\(15),
	datac => \U3|sEnc_MT1\(23),
	datad => \U3|Mux163~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~10_combout\);

-- Location: LC_X9_Y4_N4
\U3|Mux163~11\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~11_combout\ = (\U3|Mux162~13_combout\ & ((\U1|sR_timer\(7)) # ((!\U3|Mux162~12_combout\)))) # (!\U3|Mux162~13_combout\ & (((\U3|Mux162~12_combout\ & \U3|Mux163~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(7),
	datab => \U3|Mux162~13_combout\,
	datac => \U3|Mux162~12_combout\,
	datad => \U3|Mux163~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~11_combout\);

-- Location: LC_X9_Y4_N5
\U3|Mux163~12\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~12_combout\ = (\U3|Mux162~5_combout\ & ((\U3|Mux163~11_combout\ & (\U3|sEnc_MT2\(7))) # (!\U3|Mux163~11_combout\ & ((\U3|sEnc_MT2\(15)))))) # (!\U3|Mux162~5_combout\ & (((\U3|Mux163~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~5_combout\,
	datab => \U3|sEnc_MT2\(7),
	datac => \U3|sEnc_MT2\(15),
	datad => \U3|Mux163~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~12_combout\);

-- Location: LC_X9_Y4_N6
\U3|Mux163~13\ : maxv_lcell
-- Equation(s):
-- \U3|Mux163~13_combout\ = (\U3|Mux163~14_combout\ & (((\U3|Mux163~12_combout\) # (!\U3|Mux162~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux163~14_combout\,
	datac => \U3|Mux162~25_combout\,
	datad => \U3|Mux163~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux163~13_combout\);

-- Location: LC_X9_Y4_N7
\U3|IO_DAT_RD[7]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(7) = (\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|Mux163~13_combout\)))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|IO_DAT_RD\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|IO_DAT_RD[7]~0_combout\,
	datac => \U3|IO_DAT_RD\(7),
	datad => \U3|Mux163~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(7));

-- Location: LC_X2_Y5_N8
\U3|sEnc_MT2[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(6) = (GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U5|EncVal\(6))))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U3|sEnc_MT2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2[1]~2_combout\,
	datac => \U5|EncVal\(6),
	datad => \U3|sEnc_MT2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(6));

-- Location: LC_X2_Y5_N9
\U3|sEnc_MT2[14]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(14) = (GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(14))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U3|sEnc_MT2\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2[1]~2_combout\,
	datab => \U5|EncVal\(14),
	datad => \U3|sEnc_MT2\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(14));

-- Location: LC_X3_Y5_N1
\U3|sEnc_MT1[14]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(14) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(14))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(14),
	datad => \U3|sEnc_MT1\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(14));

-- Location: LC_X2_Y5_N7
\U3|sEnc_MT1[22]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(22) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U4|EncVal\(22)))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U3|sEnc_MT1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U3|sEnc_MT1\(22),
	datad => \U4|EncVal\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(22));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input22~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input22,
	combout => \IO_Input22~combout\);

-- Location: LC_X8_Y4_N5
\U3|soPin15_8[6]\ : maxv_lcell
-- Equation(s):
-- \U3|soPin15_8\(6) = (\CPLD_INT~combout\ & ((\U3|soPin15_8[0]~0_combout\ & (\U2|IO_DAT_WR\(6))) # (!\U3|soPin15_8[0]~0_combout\ & ((\U3|soPin15_8\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_DAT_WR\(6),
	datab => \CPLD_INT~combout\,
	datac => \U3|soPin15_8\(6),
	datad => \U3|soPin15_8[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|soPin15_8\(6));

-- Location: LC_X6_Y5_N7
\U3|Mux162~15\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~15_combout\ = (((\U3|soPin15_8\(6) & \U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|soPin15_8\(6),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~15_combout\);

-- Location: LC_X6_Y5_N8
\U3|Mux162~16\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~16_combout\ = (\U2|IO_ADDR\(2) & (!\U2|IO_ADDR\(1) & ((\U3|soPin7_0\(6))))) # (!\U2|IO_ADDR\(2) & ((\U2|IO_ADDR\(1)) # ((\U3|sSeg_LED\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7654",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(1),
	datac => \U3|sSeg_LED\(6),
	datad => \U3|soPin7_0\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~16_combout\);

-- Location: LC_X6_Y5_N2
\U3|Mux162~17\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~17_combout\ = (\U3|Mux162~7_combout\ & ((\U3|Mux162~16_combout\ & ((\U3|Mux162~15_combout\))) # (!\U3|Mux162~16_combout\ & (\IO_Input22~combout\)))) # (!\U3|Mux162~7_combout\ & (((\U3|Mux162~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IO_Input22~combout\,
	datab => \U3|Mux162~15_combout\,
	datac => \U3|Mux162~7_combout\,
	datad => \U3|Mux162~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~17_combout\);

-- Location: LC_X1_Y7_N2
\U3|sEnc_MT2[22]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(22) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(22))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(22),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(22));

-- Location: LC_X1_Y7_N5
\U3|sEnc_MT1[6]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(6) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(6))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(6),
	datac => \U3|sEnc_MT1\(6),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(6));

-- Location: LC_X1_Y7_N4
\U3|sEnc_MT1[30]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(30) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(30))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(30),
	datac => \U3|sEnc_MT1\(30),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(30));

-- Location: LC_X1_Y7_N8
\U3|sEnc_MT2[30]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(30) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(30))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(30),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(30));

-- Location: LC_X1_Y7_N9
\U3|Mux162~18\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~18_combout\ = (\U3|Mux162~9_combout\ & ((\U3|Mux162~8_combout\) # ((\U3|sEnc_MT2\(30))))) # (!\U3|Mux162~9_combout\ & (!\U3|Mux162~8_combout\ & (\U3|sEnc_MT1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~9_combout\,
	datab => \U3|Mux162~8_combout\,
	datac => \U3|sEnc_MT1\(30),
	datad => \U3|sEnc_MT2\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~18_combout\);

-- Location: LC_X1_Y7_N0
\U3|Mux162~19\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~19_combout\ = (\U3|Mux162~8_combout\ & ((\U3|Mux162~18_combout\ & (\U3|sEnc_MT2\(22))) # (!\U3|Mux162~18_combout\ & ((\U3|sEnc_MT1\(6)))))) # (!\U3|Mux162~8_combout\ & (((\U3|Mux162~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~8_combout\,
	datab => \U3|sEnc_MT2\(22),
	datac => \U3|sEnc_MT1\(6),
	datad => \U3|Mux162~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~19_combout\);

-- Location: LC_X2_Y5_N1
\U3|Mux162~20\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~20_combout\ = (\U3|Mux162~10_combout\ & ((\U3|Mux162~11_combout\ & ((\U3|Mux162~19_combout\))) # (!\U3|Mux162~11_combout\ & (\U3|Mux162~17_combout\)))) # (!\U3|Mux162~10_combout\ & (!\U3|Mux162~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b931",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~10_combout\,
	datab => \U3|Mux162~11_combout\,
	datac => \U3|Mux162~17_combout\,
	datad => \U3|Mux162~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~20_combout\);

-- Location: LC_X2_Y5_N2
\U3|Mux162~21\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~21_combout\ = (\U3|Mux162~6_combout\ & ((\U3|Mux162~20_combout\ & ((\U3|sEnc_MT1\(22)))) # (!\U3|Mux162~20_combout\ & (\U3|sEnc_MT1\(14))))) # (!\U3|Mux162~6_combout\ & (((\U3|Mux162~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(14),
	datab => \U3|sEnc_MT1\(22),
	datac => \U3|Mux162~6_combout\,
	datad => \U3|Mux162~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~21_combout\);

-- Location: LC_X2_Y5_N3
\U3|Mux162~22\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~22_combout\ = (\U3|Mux162~12_combout\ & ((\U3|Mux162~13_combout\ & (\U1|sR_timer\(6))) # (!\U3|Mux162~13_combout\ & ((\U3|Mux162~21_combout\))))) # (!\U3|Mux162~12_combout\ & (((\U3|Mux162~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(6),
	datab => \U3|Mux162~12_combout\,
	datac => \U3|Mux162~13_combout\,
	datad => \U3|Mux162~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~22_combout\);

-- Location: LC_X2_Y5_N4
\U3|Mux162~23\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~23_combout\ = (\U3|Mux162~5_combout\ & ((\U3|Mux162~22_combout\ & (\U3|sEnc_MT2\(6))) # (!\U3|Mux162~22_combout\ & ((\U3|sEnc_MT2\(14)))))) # (!\U3|Mux162~5_combout\ & (((\U3|Mux162~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(6),
	datab => \U3|sEnc_MT2\(14),
	datac => \U3|Mux162~5_combout\,
	datad => \U3|Mux162~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~23_combout\);

-- Location: LC_X2_Y5_N5
\U3|Mux162~24\ : maxv_lcell
-- Equation(s):
-- \U3|Mux162~24_combout\ = ((\U3|Mux163~14_combout\ & ((\U3|Mux162~23_combout\) # (!\U3|Mux162~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mux163~14_combout\,
	datac => \U3|Mux162~25_combout\,
	datad => \U3|Mux162~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux162~24_combout\);

-- Location: LC_X2_Y5_N6
\U3|IO_DAT_RD[6]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(6) = (\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|Mux162~24_combout\)))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|IO_DAT_RD\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|IO_DAT_RD[7]~0_combout\,
	datac => \U3|IO_DAT_RD\(6),
	datad => \U3|Mux162~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(6));

-- Location: LC_X5_Y5_N4
\U3|Mux161~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~1_combout\ = (\U2|IO_ADDR\(6) & ((\U2|IO_ADDR\(3)) # ((\U1|sR_timer\(5)) # (!\U3|sSeg_LED[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(6),
	datab => \U2|IO_ADDR\(3),
	datac => \U3|sSeg_LED[0]~0_combout\,
	datad => \U1|sR_timer\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~1_combout\);

-- Location: LC_X3_Y5_N9
\U3|Mux161~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~2_combout\ = (!\U2|IO_ADDR\(6) & (((!\U3|Mux161~0_combout\) # (!\U2|IO_ADDR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(6),
	datac => \U2|IO_ADDR\(3),
	datad => \U3|Mux161~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~2_combout\);

-- Location: LC_X3_Y5_N7
\U3|Mux161~15\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~15_combout\ = (\U3|sWr_LED~3_combout\ & ((\U3|Mux162~14_combout\) # ((!\U3|Mux161~2_combout\) # (!\U2|IO_ADDR\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWr_LED~3_combout\,
	datab => \U3|Mux162~14_combout\,
	datac => \U2|IO_ADDR\(3),
	datad => \U3|Mux161~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~15_combout\);

-- Location: LC_X4_Y6_N2
\U3|sEnc_MT2[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(5) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(5))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(5),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(5));

-- Location: LC_X5_Y5_N0
\U3|Mux158~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~2_combout\ = (!\U2|IO_ADDR\(5) & (!\U2|IO_ADDR\(1) & (!\U2|IO_ADDR\(3) & !\U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(3),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~2_combout\);

-- Location: LC_X5_Y5_N1
\U3|Mux161~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~3_combout\ = (\U2|IO_ADDR\(2) & ((\U3|Mux158~2_combout\) # ((\U2|IO_ADDR\(3) & \U2|IO_ADDR\(0))))) # (!\U2|IO_ADDR\(2) & (\U2|IO_ADDR\(3) & ((\U2|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(3),
	datac => \U3|Mux158~2_combout\,
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~3_combout\);

-- Location: LC_X5_Y5_N7
\U3|sEnc_MT2[13]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(13) = (GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(13))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U3|sEnc_MT2\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(13),
	datab => \U3|sEnc_MT2\(13),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(13));

-- Location: LC_X2_Y8_N7
\U3|sEnc_MT1[13]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(13) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(13))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|EncVal\(13),
	datac => \U3|sEnc_MT1\(13),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(13));

-- Location: LC_X2_Y7_N9
\U3|sEnc_MT1[21]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(21) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U4|EncVal\(21)))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U3|sEnc_MT1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U3|sEnc_MT1\(21),
	datad => \U4|EncVal\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(21));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input13~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input13,
	combout => \IO_Input13~combout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input21~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input21,
	combout => \IO_Input21~combout\);

-- Location: LC_X10_Y7_N3
\U3|Mux161~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~7_combout\ = ((\U2|IO_ADDR\(1) & (!\U2|IO_ADDR\(2))) # (!\U2|IO_ADDR\(1) & ((!\U2|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5533",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~7_combout\);

-- Location: LC_X6_Y7_N9
\U3|Mux161~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~8_combout\ = (\U2|IO_ADDR\(1) & (((\U2|IO_ADDR\(0)) # (!\U2|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(0),
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~8_combout\);

-- Location: LC_X2_Y7_N6
\U3|Mux161~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~6_combout\ = (((\U2|IO_ADDR\(0) & \U3|soPin15_8\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|IO_ADDR\(0),
	datad => \U3|soPin15_8\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~6_combout\);

-- Location: LC_X2_Y7_N7
\U3|Mux161~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~9_combout\ = (\U3|Mux161~7_combout\ & ((\U3|Mux161~8_combout\ & ((\U3|Mux161~6_combout\))) # (!\U3|Mux161~8_combout\ & (\U3|sSeg_LED\(5))))) # (!\U3|Mux161~7_combout\ & (!\U3|Mux161~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b931",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux161~7_combout\,
	datab => \U3|Mux161~8_combout\,
	datac => \U3|sSeg_LED\(5),
	datad => \U3|Mux161~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~9_combout\);

-- Location: LC_X2_Y7_N8
\U3|Mux161~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~10_combout\ = (\U3|Mux162~9_combout\ & ((\U3|Mux161~9_combout\ & ((\IO_Input21~combout\))) # (!\U3|Mux161~9_combout\ & (\IO_Input13~combout\)))) # (!\U3|Mux162~9_combout\ & (((\U3|Mux161~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IO_Input13~combout\,
	datab => \IO_Input21~combout\,
	datac => \U3|Mux162~9_combout\,
	datad => \U3|Mux161~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~10_combout\);

-- Location: LC_X2_Y7_N0
\U3|Mux161~11\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~11_combout\ = (\U3|Mux162~6_combout\ & ((\U3|Mux162~11_combout\) # ((\U3|sEnc_MT1\(21))))) # (!\U3|Mux162~6_combout\ & (!\U3|Mux162~11_combout\ & ((\U3|Mux161~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~6_combout\,
	datab => \U3|Mux162~11_combout\,
	datac => \U3|sEnc_MT1\(21),
	datad => \U3|Mux161~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~11_combout\);

-- Location: LC_X3_Y7_N2
\U3|sEnc_MT2[21]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(21) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(21))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(21),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(21));

-- Location: LC_X1_Y7_N6
\U3|sEnc_MT1[5]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(5) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U4|EncVal\(5)))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U3|sEnc_MT1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U3|sEnc_MT1\(5),
	datad => \U4|EncVal\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(5));

-- Location: LC_X2_Y7_N4
\U3|sEnc_MT2[29]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(29) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U5|EncVal\(29)))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U3|sEnc_MT2\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(29),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U5|EncVal\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(29));

-- Location: LC_X2_Y7_N1
\U3|sEnc_MT1[29]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(29) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(29))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(29),
	datad => \U3|sEnc_MT1\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(29));

-- Location: LC_X2_Y7_N2
\U3|Mux161~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~4_combout\ = (\U3|Mux162~9_combout\ & ((\U3|Mux162~8_combout\) # ((\U3|sEnc_MT2\(29))))) # (!\U3|Mux162~9_combout\ & (!\U3|Mux162~8_combout\ & ((\U3|sEnc_MT1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~9_combout\,
	datab => \U3|Mux162~8_combout\,
	datac => \U3|sEnc_MT2\(29),
	datad => \U3|sEnc_MT1\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~4_combout\);

-- Location: LC_X2_Y7_N3
\U3|Mux161~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~5_combout\ = (\U3|Mux162~8_combout\ & ((\U3|Mux161~4_combout\ & (\U3|sEnc_MT2\(21))) # (!\U3|Mux161~4_combout\ & ((\U3|sEnc_MT1\(5)))))) # (!\U3|Mux162~8_combout\ & (((\U3|Mux161~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~8_combout\,
	datab => \U3|sEnc_MT2\(21),
	datac => \U3|sEnc_MT1\(5),
	datad => \U3|Mux161~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~5_combout\);

-- Location: LC_X2_Y7_N5
\U3|Mux161~12\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~12_combout\ = (\U3|Mux162~11_combout\ & ((\U3|Mux161~11_combout\ & (\U3|sEnc_MT1\(13))) # (!\U3|Mux161~11_combout\ & ((\U3|Mux161~5_combout\))))) # (!\U3|Mux162~11_combout\ & (((\U3|Mux161~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(13),
	datab => \U3|Mux162~11_combout\,
	datac => \U3|Mux161~11_combout\,
	datad => \U3|Mux161~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~12_combout\);

-- Location: LC_X3_Y5_N3
\U3|Mux161~13\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~13_combout\ = (\U2|IO_ADDR\(3) & ((\U3|Mux161~3_combout\) # ((\U3|sEnc_MT2\(13))))) # (!\U2|IO_ADDR\(3) & (!\U3|Mux161~3_combout\ & ((\U3|Mux161~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(3),
	datab => \U3|Mux161~3_combout\,
	datac => \U3|sEnc_MT2\(13),
	datad => \U3|Mux161~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~13_combout\);

-- Location: LC_X3_Y5_N4
\U3|Mux161~14\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~14_combout\ = (\U3|Mux161~3_combout\ & ((\U3|Mux161~13_combout\ & (\U3|sEnc_MT2\(5))) # (!\U3|Mux161~13_combout\ & ((\U3|soPin7_0\(5)))))) # (!\U3|Mux161~3_combout\ & (((\U3|Mux161~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(5),
	datab => \U3|soPin7_0\(5),
	datac => \U3|Mux161~3_combout\,
	datad => \U3|Mux161~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~14_combout\);

-- Location: LC_X3_Y5_N5
\U3|Mux161~16\ : maxv_lcell
-- Equation(s):
-- \U3|Mux161~16_combout\ = (\U3|Mux161~1_combout\) # (((\U3|Mux161~2_combout\ & \U3|Mux161~14_combout\)) # (!\U3|Mux161~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux161~1_combout\,
	datab => \U3|Mux161~2_combout\,
	datac => \U3|Mux161~15_combout\,
	datad => \U3|Mux161~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux161~16_combout\);

-- Location: LC_X3_Y5_N6
\U3|IO_DAT_RD[5]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(5) = ((\U3|IO_DAT_RD[7]~0_combout\ & ((\U3|Mux161~16_combout\))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (\U3|IO_DAT_RD\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|IO_DAT_RD[7]~0_combout\,
	datac => \U3|IO_DAT_RD\(5),
	datad => \U3|Mux161~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(5));

-- Location: LC_X5_Y5_N9
\U3|Mux160~0\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~0_combout\ = (\U2|IO_ADDR\(6) & (((\U2|IO_ADDR\(3)) # (\U1|sR_timer\(4))) # (!\U3|sSeg_LED[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED[0]~0_combout\,
	datab => \U2|IO_ADDR\(3),
	datac => \U1|sR_timer\(4),
	datad => \U2|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~0_combout\);

-- Location: LC_X5_Y8_N0
\U3|sEnc_MT2[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(4) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(4))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(4),
	datac => \U3|sEnc_MT2\(4),
	datad => \U3|sEnc_MT2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(4));

-- Location: LC_X7_Y4_N0
\U3|sEnc_MT2[12]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(12) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U5|EncVal\(12)))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U3|sEnc_MT2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT2[1]~2_combout\,
	datac => \U3|sEnc_MT2\(12),
	datad => \U5|EncVal\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(12));

-- Location: LC_X4_Y5_N7
\U3|sEnc_MT1[12]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(12) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U4|EncVal\(12)))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U3|sEnc_MT1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U3|sEnc_MT1\(12),
	datad => \U4|EncVal\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(12));

-- Location: LC_X4_Y5_N9
\U3|sEnc_MT1[20]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(20) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(20))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(20),
	datac => \U3|sEnc_MT1\(20),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(20));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input12~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input12,
	combout => \IO_Input12~combout\);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input20~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input20,
	combout => \IO_Input20~combout\);

-- Location: LC_X5_Y4_N2
\U3|Mux160~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~3_combout\ = (((\U2|IO_ADDR\(0) & \U3|soPin15_8\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|IO_ADDR\(0),
	datad => \U3|soPin15_8\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~3_combout\);

-- Location: LC_X5_Y4_N9
\U3|Mux160~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~4_combout\ = (\U3|Mux161~7_combout\ & ((\U3|Mux161~8_combout\ & ((\U3|Mux160~3_combout\))) # (!\U3|Mux161~8_combout\ & (\U3|sSeg_LED\(4))))) # (!\U3|Mux161~7_combout\ & (((!\U3|Mux161~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cb0b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(4),
	datab => \U3|Mux161~7_combout\,
	datac => \U3|Mux161~8_combout\,
	datad => \U3|Mux160~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~4_combout\);

-- Location: LC_X4_Y4_N3
\U3|Mux160~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~5_combout\ = (\U3|Mux160~4_combout\ & (((\IO_Input20~combout\) # (!\U3|Mux162~9_combout\)))) # (!\U3|Mux160~4_combout\ & (\IO_Input12~combout\ & ((\U3|Mux162~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IO_Input12~combout\,
	datab => \IO_Input20~combout\,
	datac => \U3|Mux160~4_combout\,
	datad => \U3|Mux162~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~5_combout\);

-- Location: LC_X4_Y5_N8
\U3|sEnc_MT2[20]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(20) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(20))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(20),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(20));

-- Location: LC_X3_Y7_N1
\U3|sEnc_MT1[4]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(4) = (GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(4))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (((\U3|sEnc_MT1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|EncVal\(4),
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datad => \U3|sEnc_MT1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(4));

-- Location: LC_X5_Y5_N6
\U3|sEnc_MT1[28]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(28) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(28))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(28),
	datad => \U3|sEnc_MT1\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(28));

-- Location: LC_X5_Y5_N3
\U3|sEnc_MT2[28]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(28) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(28))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(28),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(28));

-- Location: LC_X5_Y5_N8
\U3|Mux160~1\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~1_combout\ = (\U3|Mux162~9_combout\ & ((\U3|Mux162~8_combout\) # ((\U3|sEnc_MT2\(28))))) # (!\U3|Mux162~9_combout\ & (!\U3|Mux162~8_combout\ & (\U3|sEnc_MT1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~9_combout\,
	datab => \U3|Mux162~8_combout\,
	datac => \U3|sEnc_MT1\(28),
	datad => \U3|sEnc_MT2\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~1_combout\);

-- Location: LC_X4_Y5_N0
\U3|Mux160~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~2_combout\ = (\U3|Mux162~8_combout\ & ((\U3|Mux160~1_combout\ & (\U3|sEnc_MT2\(20))) # (!\U3|Mux160~1_combout\ & ((\U3|sEnc_MT1\(4)))))) # (!\U3|Mux162~8_combout\ & (((\U3|Mux160~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(20),
	datab => \U3|Mux162~8_combout\,
	datac => \U3|sEnc_MT1\(4),
	datad => \U3|Mux160~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~2_combout\);

-- Location: LC_X4_Y5_N1
\U3|Mux160~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~6_combout\ = (\U3|Mux162~11_combout\ & ((\U3|Mux162~6_combout\) # ((\U3|Mux160~2_combout\)))) # (!\U3|Mux162~11_combout\ & (!\U3|Mux162~6_combout\ & (\U3|Mux160~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~11_combout\,
	datab => \U3|Mux162~6_combout\,
	datac => \U3|Mux160~5_combout\,
	datad => \U3|Mux160~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~6_combout\);

-- Location: LC_X4_Y5_N2
\U3|Mux160~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~7_combout\ = (\U3|Mux162~6_combout\ & ((\U3|Mux160~6_combout\ & (\U3|sEnc_MT1\(12))) # (!\U3|Mux160~6_combout\ & ((\U3|sEnc_MT1\(20)))))) # (!\U3|Mux162~6_combout\ & (((\U3|Mux160~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(12),
	datab => \U3|sEnc_MT1\(20),
	datac => \U3|Mux162~6_combout\,
	datad => \U3|Mux160~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~7_combout\);

-- Location: LC_X4_Y5_N3
\U3|Mux160~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~8_combout\ = (\U3|Mux161~3_combout\ & (\U2|IO_ADDR\(3))) # (!\U3|Mux161~3_combout\ & ((\U2|IO_ADDR\(3) & (\U3|sEnc_MT2\(12))) # (!\U2|IO_ADDR\(3) & ((\U3|Mux160~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux161~3_combout\,
	datab => \U2|IO_ADDR\(3),
	datac => \U3|sEnc_MT2\(12),
	datad => \U3|Mux160~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~8_combout\);

-- Location: LC_X4_Y5_N4
\U3|Mux160~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~9_combout\ = (\U3|Mux161~3_combout\ & ((\U3|Mux160~8_combout\ & (\U3|sEnc_MT2\(4))) # (!\U3|Mux160~8_combout\ & ((\U3|soPin7_0\(4)))))) # (!\U3|Mux161~3_combout\ & (((\U3|Mux160~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux161~3_combout\,
	datab => \U3|sEnc_MT2\(4),
	datac => \U3|soPin7_0\(4),
	datad => \U3|Mux160~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~9_combout\);

-- Location: LC_X4_Y5_N5
\U3|Mux160~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux160~10_combout\ = ((\U3|Mux160~0_combout\) # ((\U3|Mux161~2_combout\ & \U3|Mux160~9_combout\))) # (!\U3|Mux161~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbf3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux161~2_combout\,
	datab => \U3|Mux161~15_combout\,
	datac => \U3|Mux160~0_combout\,
	datad => \U3|Mux160~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux160~10_combout\);

-- Location: LC_X4_Y5_N6
\U3|IO_DAT_RD[4]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(4) = (\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|Mux160~10_combout\)))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|IO_DAT_RD\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|IO_DAT_RD[7]~0_combout\,
	datac => \U3|IO_DAT_RD\(4),
	datad => \U3|Mux160~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(4));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIP_SWITCH[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DIP_SWITCH(3),
	combout => \DIP_SWITCH~combout\(3));

-- Location: LC_X9_Y10_N4
\U3|Mux159~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~10_combout\ = (!\U2|IO_ADDR\(6) & (\U2|IO_ADDR\(3) & (\U2|IO_ADDR\(1) $ (\U2|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U2|IO_ADDR\(6),
	datac => \U2|IO_ADDR\(3),
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~10_combout\);

-- Location: LC_X10_Y10_N8
\U3|sEnc_MT2[11]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(11) = (GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(11))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U3|sEnc_MT2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(11),
	datab => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(11));

-- Location: LC_X5_Y6_N0
\U3|sEnc_MT2[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(3) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(3))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(3),
	datac => \U3|sEnc_MT2\(3),
	datad => \U3|sEnc_MT2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(3));

-- Location: LC_X10_Y10_N4
\U3|Mux159~11\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~11_combout\ = (\U2|IO_ADDR\(0) & (((\U2|IO_ADDR\(5) & \U3|sEnc_MT2\(3))))) # (!\U2|IO_ADDR\(0) & ((\U3|sEnc_MT2\(11)) # ((!\U2|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(11),
	datab => \U2|IO_ADDR\(0),
	datac => \U2|IO_ADDR\(5),
	datad => \U3|sEnc_MT2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~11_combout\);

-- Location: LC_X9_Y10_N5
\U3|Mux159~12\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~12_combout\ = (\U3|Mux159~10_combout\ & ((\U3|Mux159~11_combout\) # ((!\U2|IO_ADDR\(5) & \DIP_SWITCH~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \DIP_SWITCH~combout\(3),
	datac => \U3|Mux159~10_combout\,
	datad => \U3|Mux159~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~12_combout\);

-- Location: LC_X9_Y10_N6
\U3|Mux159~13\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~13_combout\ = (\U3|Mux159~12_combout\) # ((\U1|sR_timer\(3) & (\U2|IO_ADDR\(6) & \U3|Mux158~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sR_timer\(3),
	datab => \U2|IO_ADDR\(6),
	datac => \U3|Mux158~2_combout\,
	datad => \U3|Mux159~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~13_combout\);

-- Location: LC_X4_Y10_N8
\U3|sEnc_MT1[19]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(19) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(19))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(19),
	datad => \U3|sEnc_MT1\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(19));

-- Location: LC_X4_Y10_N4
\U3|sEnc_MT1[11]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(11) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(11))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(11),
	datac => \U3|sEnc_MT1\(11),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(11));

-- Location: LC_X4_Y10_N5
\U3|Mux159~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~2_combout\ = ((\U2|IO_ADDR\(5) & ((\U3|sEnc_MT1\(11)))) # (!\U2|IO_ADDR\(5) & (\U3|soPin15_8\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|soPin15_8\(3),
	datac => \U2|IO_ADDR\(5),
	datad => \U3|sEnc_MT1\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~2_combout\);

-- Location: LC_X4_Y10_N6
\U3|Mux159~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~3_combout\ = (\U2|IO_ADDR\(0) & (((\U3|Mux159~2_combout\)))) # (!\U2|IO_ADDR\(0) & (\U3|sEnc_MT1\(19) & (\U2|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(19),
	datab => \U2|IO_ADDR\(0),
	datac => \U2|IO_ADDR\(5),
	datad => \U3|Mux159~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~3_combout\);

-- Location: LC_X6_Y10_N2
\U3|sEnc_MT1[3]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(3) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(3))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(3),
	datad => \U3|sEnc_MT1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(3));

-- Location: LC_X6_Y10_N6
\U3|Mux159~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~4_combout\ = (!\U2|IO_ADDR\(0) & ((\U2|IO_ADDR\(5) & ((\U3|sEnc_MT1\(3)))) # (!\U2|IO_ADDR\(5) & (\U3|soPin7_0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U3|soPin7_0\(3),
	datac => \U2|IO_ADDR\(5),
	datad => \U3|sEnc_MT1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~4_combout\);

-- Location: LC_X6_Y7_N6
\U3|sEnc_MT1[27]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(27) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(27))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(27),
	datac => \U3|sEnc_MT1\(27),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(27));

-- Location: LC_X6_Y10_N3
\U3|Mux159~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~5_combout\ = (\U2|IO_ADDR\(0) & (((\U2|IO_ADDR\(5) & \U3|sEnc_MT1\(27))))) # (!\U2|IO_ADDR\(0) & (\U3|sSeg_LED\(3) & (!\U2|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U3|sSeg_LED\(3),
	datac => \U2|IO_ADDR\(5),
	datad => \U3|sEnc_MT1\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~5_combout\);

-- Location: LC_X6_Y10_N7
\U3|Mux159~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~6_combout\ = (\U2|IO_ADDR\(2) & ((\U2|IO_ADDR\(1)) # ((\U3|Mux159~4_combout\)))) # (!\U2|IO_ADDR\(2) & (!\U2|IO_ADDR\(1) & ((\U3|Mux159~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(1),
	datac => \U3|Mux159~4_combout\,
	datad => \U3|Mux159~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~6_combout\);

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input19~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input19,
	combout => \IO_Input19~combout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input11~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input11,
	combout => \IO_Input11~combout\);

-- Location: LC_X5_Y10_N4
\U3|Mux159~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~7_combout\ = (\U2|IO_ADDR\(5) & (((\U2|IO_ADDR\(0))))) # (!\U2|IO_ADDR\(5) & ((\U2|IO_ADDR\(0) & ((\IO_Input11~combout\))) # (!\U2|IO_ADDR\(0) & (\IO_Input19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IO_Input19~combout\,
	datab => \IO_Input11~combout\,
	datac => \U2|IO_ADDR\(5),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~7_combout\);

-- Location: LC_X10_Y10_N2
\U3|sEnc_MT2[19]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(19) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(19))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(19),
	datab => \U3|sEnc_MT2\(19),
	datad => \U3|sEnc_MT2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(19));

-- Location: LC_X9_Y5_N3
\U3|sEnc_MT2[27]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(27) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(27))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(27),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(27));

-- Location: LC_X9_Y10_N3
\U3|Mux159~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~8_combout\ = (\U3|Mux159~7_combout\ & ((\U3|sEnc_MT2\(19)) # ((!\U2|IO_ADDR\(5))))) # (!\U3|Mux159~7_combout\ & (((\U2|IO_ADDR\(5) & \U3|sEnc_MT2\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux159~7_combout\,
	datab => \U3|sEnc_MT2\(19),
	datac => \U2|IO_ADDR\(5),
	datad => \U3|sEnc_MT2\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~8_combout\);

-- Location: LC_X9_Y10_N0
\U3|Mux159~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~9_combout\ = (\U2|IO_ADDR\(1) & ((\U3|Mux159~6_combout\ & ((\U3|Mux159~8_combout\))) # (!\U3|Mux159~6_combout\ & (\U3|Mux159~3_combout\)))) # (!\U2|IO_ADDR\(1) & (((\U3|Mux159~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U3|Mux159~3_combout\,
	datac => \U3|Mux159~6_combout\,
	datad => \U3|Mux159~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~9_combout\);

-- Location: LC_X9_Y10_N1
\U3|Mux159~16\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~16_combout\ = ((!\U2|IO_ADDR\(6) & (!\U2|IO_ADDR\(3) & \U3|Mux159~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(6),
	datac => \U2|IO_ADDR\(3),
	datad => \U3|Mux159~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~16_combout\);

-- Location: LC_X9_Y10_N2
\U3|Mux159~14\ : maxv_lcell
-- Equation(s):
-- \U3|Mux159~14_combout\ = (\U3|sWr_LED~3_combout\ & ((\U3|Mux159~16_combout\) # ((!\U2|IO_ADDR\(2) & \U3|Mux159~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U3|sWr_LED~3_combout\,
	datac => \U3|Mux159~13_combout\,
	datad => \U3|Mux159~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux159~14_combout\);

-- Location: LC_X9_Y10_N7
\U3|IO_DAT_RD[3]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(3) = ((\U3|IO_DAT_RD[7]~0_combout\ & ((\U3|Mux159~14_combout\))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (\U3|IO_DAT_RD\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|IO_DAT_RD[7]~0_combout\,
	datac => \U3|IO_DAT_RD\(3),
	datad => \U3|Mux159~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(3));

-- Location: LC_X5_Y5_N2
\U3|Mux158~18\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~18_combout\ = ((\U2|IO_ADDR\(6)) # ((\U3|Mux158~2_combout\ & \U2|IO_ADDR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(6),
	datac => \U3|Mux158~2_combout\,
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~18_combout\);

-- Location: LC_X4_Y8_N6
\U3|Mux158~17\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~17_combout\ = (\U2|IO_ADDR\(6)) # ((!\U2|IO_ADDR\(2) & (\U2|IO_ADDR\(3) & !\U3|Mux158~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U2|IO_ADDR\(3),
	datac => \U2|IO_ADDR\(6),
	datad => \U3|Mux158~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~17_combout\);

-- Location: LC_X3_Y8_N4
\U3|Mux158~15\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~15_combout\ = ((!\U2|IO_ADDR\(3) & (\U1|sR_timer\(2) & \U3|sSeg_LED[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(3),
	datac => \U1|sR_timer\(2),
	datad => \U3|sSeg_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~15_combout\);

-- Location: LC_X1_Y6_N2
\U3|sEnc_MT2[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(2) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(2))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(2),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(2));

-- Location: LC_X1_Y6_N0
\U3|sEnc_MT2[10]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(10) = (GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(10))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (((\U3|sEnc_MT2\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(10),
	datab => \U3|sEnc_MT2\(10),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(10));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input2,
	combout => \IO_Input2~combout\);

-- Location: LC_X5_Y10_N0
\U3|Mux158~11\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~11_combout\ = ((!\U2|IO_ADDR\(5) & ((\U2|IO_ADDR\(1)) # (!\U2|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(5),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~11_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIP_SWITCH[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DIP_SWITCH(2),
	combout => \DIP_SWITCH~combout\(2));

-- Location: LC_X5_Y10_N6
\U3|Mux158~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~10_combout\ = ((\DIP_SWITCH~combout\(2)) # ((!\U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DIP_SWITCH~combout\(2),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~10_combout\);

-- Location: LC_X5_Y10_N8
\U3|Mux158~12\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~12_combout\ = ((\U2|IO_ADDR\(5) & ((\U2|IO_ADDR\(0)))) # (!\U2|IO_ADDR\(5) & (\U2|IO_ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datac => \U2|IO_ADDR\(5),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~12_combout\);

-- Location: LC_X5_Y10_N7
\U3|Mux158~13\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~13_combout\ = (\U3|Mux158~11_combout\ & ((\U3|Mux158~12_combout\ & ((\U3|Mux158~10_combout\))) # (!\U3|Mux158~12_combout\ & (\IO_Input2~combout\)))) # (!\U3|Mux158~11_combout\ & (((\U3|Mux158~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IO_Input2~combout\,
	datab => \U3|Mux158~11_combout\,
	datac => \U3|Mux158~10_combout\,
	datad => \U3|Mux158~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~13_combout\);

-- Location: LC_X1_Y6_N3
\U3|Mux158~14\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~14_combout\ = (\U2|IO_ADDR\(5) & ((\U3|Mux158~13_combout\ & (\U3|sEnc_MT2\(2))) # (!\U3|Mux158~13_combout\ & ((\U3|sEnc_MT2\(10)))))) # (!\U2|IO_ADDR\(5) & (((\U3|Mux158~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U3|sEnc_MT2\(2),
	datac => \U3|sEnc_MT2\(10),
	datad => \U3|Mux158~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~14_combout\);

-- Location: LC_X1_Y6_N4
\U3|Mux158~19\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~19_combout\ = (\U3|Mux158~18_combout\ & (((\U3|Mux158~15_combout\)) # (!\U3|Mux158~17_combout\))) # (!\U3|Mux158~18_combout\ & (\U3|Mux158~17_combout\ & ((\U3|Mux158~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux158~18_combout\,
	datab => \U3|Mux158~17_combout\,
	datac => \U3|Mux158~15_combout\,
	datad => \U3|Mux158~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~19_combout\);

-- Location: LC_X1_Y6_N1
\U3|sEnc_MT1[10]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(10) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(10))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(10),
	datad => \U3|sEnc_MT1\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(10));

-- Location: LC_X4_Y6_N4
\U3|sEnc_MT1[18]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(18) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(18))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U4|EncVal\(18),
	datac => \U3|sEnc_MT1\(18),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(18));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input18~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input18,
	combout => \IO_Input18~combout\);

-- Location: LC_X6_Y4_N6
\U3|Mux158~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~5_combout\ = (((\U3|soPin15_8\(2) & \U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|soPin15_8\(2),
	datad => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~5_combout\);

-- Location: LC_X6_Y4_N4
\U3|Mux158~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~6_combout\ = (\U3|Mux161~7_combout\ & ((\U3|Mux161~8_combout\ & ((\U3|Mux158~5_combout\))) # (!\U3|Mux161~8_combout\ & (\U3|sSeg_LED\(2))))) # (!\U3|Mux161~7_combout\ & (((\U3|Mux161~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sSeg_LED\(2),
	datab => \U3|Mux161~7_combout\,
	datac => \U3|Mux158~5_combout\,
	datad => \U3|Mux161~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~6_combout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input10~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input10,
	combout => \IO_Input10~combout\);

-- Location: LC_X6_Y4_N9
\U3|Mux158~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~7_combout\ = (\U3|Mux162~9_combout\ & ((\U3|Mux158~6_combout\ & ((\IO_Input10~combout\))) # (!\U3|Mux158~6_combout\ & (\IO_Input18~combout\)))) # (!\U3|Mux162~9_combout\ & (((\U3|Mux158~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IO_Input18~combout\,
	datab => \U3|Mux162~9_combout\,
	datac => \U3|Mux158~6_combout\,
	datad => \IO_Input10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~7_combout\);

-- Location: LC_X1_Y6_N5
\U3|Mux158~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~8_combout\ = (\U3|Mux162~6_combout\ & ((\U3|sEnc_MT1\(18)) # ((\U3|Mux162~11_combout\)))) # (!\U3|Mux162~6_combout\ & (((!\U3|Mux162~11_combout\ & \U3|Mux158~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(18),
	datab => \U3|Mux162~6_combout\,
	datac => \U3|Mux162~11_combout\,
	datad => \U3|Mux158~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~8_combout\);

-- Location: LC_X2_Y8_N3
\U3|sEnc_MT1[2]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(2) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(2))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(2),
	datad => \U3|sEnc_MT1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(2));

-- Location: LC_X2_Y8_N6
\U3|sEnc_MT2[18]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(18) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U5|EncVal\(18)))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U3|sEnc_MT2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(18),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U5|EncVal\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(18));

-- Location: LC_X2_Y8_N5
\U3|sEnc_MT1[26]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(26) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(26))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(26),
	datac => \U3|sEnc_MT1\(26),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(26));

-- Location: LC_X8_Y6_N9
\U3|sEnc_MT2[26]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(26) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(26))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT2[1]~2_combout\,
	datac => \U5|EncVal\(26),
	datad => \U3|sEnc_MT2\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(26));

-- Location: LC_X2_Y8_N8
\U3|Mux158~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~3_combout\ = (\U3|Mux162~8_combout\ & (((\U3|Mux162~9_combout\)))) # (!\U3|Mux162~8_combout\ & ((\U3|Mux162~9_combout\ & ((\U3|sEnc_MT2\(26)))) # (!\U3|Mux162~9_combout\ & (\U3|sEnc_MT1\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(26),
	datab => \U3|Mux162~8_combout\,
	datac => \U3|Mux162~9_combout\,
	datad => \U3|sEnc_MT2\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~3_combout\);

-- Location: LC_X2_Y8_N9
\U3|Mux158~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~4_combout\ = (\U3|Mux162~8_combout\ & ((\U3|Mux158~3_combout\ & ((\U3|sEnc_MT2\(18)))) # (!\U3|Mux158~3_combout\ & (\U3|sEnc_MT1\(2))))) # (!\U3|Mux162~8_combout\ & (((\U3|Mux158~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(2),
	datab => \U3|Mux162~8_combout\,
	datac => \U3|sEnc_MT2\(18),
	datad => \U3|Mux158~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~4_combout\);

-- Location: LC_X1_Y6_N6
\U3|Mux158~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~9_combout\ = (\U3|Mux162~11_combout\ & ((\U3|Mux158~8_combout\ & (\U3|sEnc_MT1\(10))) # (!\U3|Mux158~8_combout\ & ((\U3|Mux158~4_combout\))))) # (!\U3|Mux162~11_combout\ & (((\U3|Mux158~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dad0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~11_combout\,
	datab => \U3|sEnc_MT1\(10),
	datac => \U3|Mux158~8_combout\,
	datad => \U3|Mux158~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~9_combout\);

-- Location: LC_X1_Y6_N7
\U3|Mux158~20\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~20_combout\ = (\U3|Mux156~2_combout\ & ((\U3|Mux158~19_combout\ & (\U3|soPin7_0\(2))) # (!\U3|Mux158~19_combout\ & ((\U3|Mux158~9_combout\))))) # (!\U3|Mux156~2_combout\ & (((\U3|Mux158~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|soPin7_0\(2),
	datab => \U3|Mux156~2_combout\,
	datac => \U3|Mux158~19_combout\,
	datad => \U3|Mux158~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~20_combout\);

-- Location: LC_X1_Y6_N8
\U3|Mux158~21\ : maxv_lcell
-- Equation(s):
-- \U3|Mux158~21_combout\ = ((!\U2|IO_ADDR\(4) & (!\U2|IO_ADDR\(7) & \U3|Mux158~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(4),
	datac => \U2|IO_ADDR\(7),
	datad => \U3|Mux158~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux158~21_combout\);

-- Location: LC_X1_Y6_N9
\U3|IO_DAT_RD[2]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(2) = (\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|Mux158~21_combout\)))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (\U3|IO_DAT_RD\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|IO_DAT_RD[7]~0_combout\,
	datab => \U3|IO_DAT_RD\(2),
	datad => \U3|Mux158~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(2));

-- Location: LC_X3_Y8_N7
\U3|Mux157~12\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~12_combout\ = ((\U2|IO_ADDR\(3)) # ((\U1|sR_timer\(1)) # (!\U3|sSeg_LED[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|IO_ADDR\(3),
	datac => \U1|sR_timer\(1),
	datad => \U3|sSeg_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~12_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input1,
	combout => \IO_Input1~combout\);

-- Location: LC_X10_Y10_N5
\U3|Mux157~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~9_combout\ = ((\DIP_SWITCH~combout\(1) & (\U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \DIP_SWITCH~combout\(1),
	datac => \U2|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~9_combout\);

-- Location: LC_X5_Y10_N2
\U3|Mux157~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~10_combout\ = (\U3|Mux158~11_combout\ & ((\U3|Mux158~12_combout\ & ((\U3|Mux157~9_combout\))) # (!\U3|Mux158~12_combout\ & (\IO_Input1~combout\)))) # (!\U3|Mux158~11_combout\ & (((!\U3|Mux158~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0bb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IO_Input1~combout\,
	datab => \U3|Mux158~11_combout\,
	datac => \U3|Mux157~9_combout\,
	datad => \U3|Mux158~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~10_combout\);

-- Location: LC_X5_Y10_N5
\U3|sEnc_MT2[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(1) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(1))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(1),
	datac => \U3|sEnc_MT2\(1),
	datad => \U3|sEnc_MT2[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(1));

-- Location: LC_X5_Y10_N9
\U3|sEnc_MT2[9]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(9) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(9))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT2[1]~2_combout\,
	datac => \U5|EncVal\(9),
	datad => \U3|sEnc_MT2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(9));

-- Location: LC_X5_Y10_N1
\U3|Mux157~11\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~11_combout\ = (\U2|IO_ADDR\(5) & ((\U3|Mux157~10_combout\ & ((\U3|sEnc_MT2\(9)))) # (!\U3|Mux157~10_combout\ & (\U3|sEnc_MT2\(1))))) # (!\U2|IO_ADDR\(5) & (\U3|Mux157~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(5),
	datab => \U3|Mux157~10_combout\,
	datac => \U3|sEnc_MT2\(1),
	datad => \U3|sEnc_MT2\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~11_combout\);

-- Location: LC_X2_Y6_N4
\U3|Mux157~13\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~13_combout\ = (\U3|Mux158~17_combout\ & ((\U3|Mux158~18_combout\ & (\U3|Mux157~12_combout\)) # (!\U3|Mux158~18_combout\ & ((\U3|Mux157~11_combout\))))) # (!\U3|Mux158~17_combout\ & (((!\U3|Mux158~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f85",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux158~17_combout\,
	datab => \U3|Mux157~12_combout\,
	datac => \U3|Mux158~18_combout\,
	datad => \U3|Mux157~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~13_combout\);

-- Location: LC_X3_Y6_N6
\U3|sEnc_MT1[9]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(9) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(9))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(9),
	datac => \U3|sEnc_MT1\(9),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(9));

-- Location: LC_X2_Y6_N8
\U3|sEnc_MT1[17]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(17) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(17))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(17),
	datad => \U3|sEnc_MT1\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(17));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input9~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input9,
	combout => \IO_Input9~combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input17~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input17,
	combout => \IO_Input17~combout\);

-- Location: LC_X3_Y8_N6
\U3|Mux157~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~4_combout\ = (((\U2|IO_ADDR\(0) & \U3|soPin15_8\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U2|IO_ADDR\(0),
	datad => \U3|soPin15_8\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~4_combout\);

-- Location: LC_X3_Y8_N2
\U3|Mux157~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~5_combout\ = (\U3|Mux161~7_combout\ & ((\U3|Mux161~8_combout\ & (\U3|Mux157~4_combout\)) # (!\U3|Mux161~8_combout\ & ((\U3|sSeg_LED\(1)))))) # (!\U3|Mux161~7_combout\ & (((!\U3|Mux161~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f83",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux157~4_combout\,
	datab => \U3|Mux161~7_combout\,
	datac => \U3|Mux161~8_combout\,
	datad => \U3|sSeg_LED\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~5_combout\);

-- Location: LC_X3_Y8_N3
\U3|Mux157~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~6_combout\ = (\U3|Mux162~9_combout\ & ((\U3|Mux157~5_combout\ & ((\IO_Input17~combout\))) # (!\U3|Mux157~5_combout\ & (\IO_Input9~combout\)))) # (!\U3|Mux162~9_combout\ & (((\U3|Mux157~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~9_combout\,
	datab => \IO_Input9~combout\,
	datac => \IO_Input17~combout\,
	datad => \U3|Mux157~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~6_combout\);

-- Location: LC_X2_Y6_N9
\U3|sEnc_MT2[17]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(17) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(17))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(17),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(17));

-- Location: LC_X2_Y6_N7
\U3|sEnc_MT1[1]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(1) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(1))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(1),
	datac => \U3|sEnc_MT1\(1),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(1));

-- Location: LC_X4_Y6_N5
\U3|sEnc_MT1[25]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(25) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U4|EncVal\(25)))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U3|sEnc_MT1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U3|sEnc_MT1\(25),
	datad => \U4|EncVal\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(25));

-- Location: LC_X4_Y6_N8
\U3|sEnc_MT2[25]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(25) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(25))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U5|EncVal\(25),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(25));

-- Location: LC_X4_Y6_N6
\U3|Mux157~2\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~2_combout\ = (\U3|Mux162~8_combout\ & (\U3|Mux162~9_combout\)) # (!\U3|Mux162~8_combout\ & ((\U3|Mux162~9_combout\ & ((\U3|sEnc_MT2\(25)))) # (!\U3|Mux162~9_combout\ & (\U3|sEnc_MT1\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~8_combout\,
	datab => \U3|Mux162~9_combout\,
	datac => \U3|sEnc_MT1\(25),
	datad => \U3|sEnc_MT2\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~2_combout\);

-- Location: LC_X2_Y6_N2
\U3|Mux157~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~3_combout\ = (\U3|Mux162~8_combout\ & ((\U3|Mux157~2_combout\ & (\U3|sEnc_MT2\(17))) # (!\U3|Mux157~2_combout\ & ((\U3|sEnc_MT1\(1)))))) # (!\U3|Mux162~8_combout\ & (((\U3|Mux157~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~8_combout\,
	datab => \U3|sEnc_MT2\(17),
	datac => \U3|sEnc_MT1\(1),
	datad => \U3|Mux157~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~3_combout\);

-- Location: LC_X2_Y6_N3
\U3|Mux157~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~7_combout\ = (\U3|Mux162~11_combout\ & ((\U3|Mux162~6_combout\) # ((\U3|Mux157~3_combout\)))) # (!\U3|Mux162~11_combout\ & (!\U3|Mux162~6_combout\ & (\U3|Mux157~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mux162~11_combout\,
	datab => \U3|Mux162~6_combout\,
	datac => \U3|Mux157~6_combout\,
	datad => \U3|Mux157~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~7_combout\);

-- Location: LC_X2_Y6_N0
\U3|Mux157~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~8_combout\ = (\U3|Mux162~6_combout\ & ((\U3|Mux157~7_combout\ & (\U3|sEnc_MT1\(9))) # (!\U3|Mux157~7_combout\ & ((\U3|sEnc_MT1\(17)))))) # (!\U3|Mux162~6_combout\ & (((\U3|Mux157~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT1\(9),
	datab => \U3|sEnc_MT1\(17),
	datac => \U3|Mux162~6_combout\,
	datad => \U3|Mux157~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~8_combout\);

-- Location: LC_X2_Y6_N1
\U3|Mux157~14\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~14_combout\ = (\U3|Mux156~2_combout\ & ((\U3|Mux157~13_combout\ & ((\U3|Mux157~8_combout\))) # (!\U3|Mux157~13_combout\ & (\U3|soPin7_0\(1))))) # (!\U3|Mux156~2_combout\ & (((\U3|Mux157~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|soPin7_0\(1),
	datab => \U3|Mux156~2_combout\,
	datac => \U3|Mux157~13_combout\,
	datad => \U3|Mux157~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~14_combout\);

-- Location: LC_X2_Y6_N5
\U3|Mux157~15\ : maxv_lcell
-- Equation(s):
-- \U3|Mux157~15_combout\ = (\U2|IO_ADDR\(7)) # ((\U2|IO_ADDR\(4)) # ((\U3|Mux157~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(7),
	datab => \U2|IO_ADDR\(4),
	datad => \U3|Mux157~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux157~15_combout\);

-- Location: LC_X2_Y6_N6
\U3|IO_DAT_RD[1]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(1) = ((\U3|IO_DAT_RD[7]~0_combout\ & ((\U3|Mux157~15_combout\))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (\U3|IO_DAT_RD\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|IO_DAT_RD[7]~0_combout\,
	datac => \U3|IO_DAT_RD\(1),
	datad => \U3|Mux157~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(1));

-- Location: LC_X4_Y8_N2
\U3|sEnc_MT2[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(0) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(0))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT2[1]~2_combout\,
	datac => \U5|EncVal\(0),
	datad => \U3|sEnc_MT2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(0));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IO_Input0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IO_Input0,
	combout => \IO_Input0~combout\);

-- Location: LC_X4_Y8_N7
\U3|Mux156~14\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~14_combout\ = (\U2|IO_ADDR\(0) & ((\U3|sEnc_MT2\(0)) # ((!\U2|IO_ADDR\(5))))) # (!\U2|IO_ADDR\(0) & (((\IO_Input0~combout\ & !\U2|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U3|sEnc_MT2\(0),
	datac => \IO_Input0~combout\,
	datad => \U2|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~14_combout\);

-- Location: LC_X5_Y8_N8
\U3|sEnc_MT2[8]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(8) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(8))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT2[1]~2_combout\,
	datac => \U5|EncVal\(8),
	datad => \U3|sEnc_MT2\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(8));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DIP_SWITCH[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_DIP_SWITCH(0),
	combout => \DIP_SWITCH~combout\(0));

-- Location: LC_X4_Y8_N3
\U3|Mux156~12\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~12_combout\ = (\U2|IO_ADDR\(1) & (((\U2|IO_ADDR\(5)) # (\DIP_SWITCH~combout\(0))) # (!\U2|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U2|IO_ADDR\(5),
	datac => \U2|IO_ADDR\(1),
	datad => \DIP_SWITCH~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~12_combout\);

-- Location: LC_X4_Y8_N8
\U3|Mux156~13\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~13_combout\ = (\U2|IO_ADDR\(2)) # ((\U3|Mux156~12_combout\) # ((\U3|sEnc_MT2\(8) & \U3|Mux159~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U3|sEnc_MT2\(8),
	datac => \U3|Mux159~15_combout\,
	datad => \U3|Mux156~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~13_combout\);

-- Location: LC_X4_Y8_N9
\U3|Mux156~15\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~15_combout\ = (\U2|IO_ADDR\(6)) # ((\U3|Mux156~13_combout\) # ((!\U2|IO_ADDR\(1) & \U3|Mux156~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U3|Mux156~14_combout\,
	datac => \U2|IO_ADDR\(6),
	datad => \U3|Mux156~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~15_combout\);

-- Location: LC_X3_Y8_N5
\U3|Mux156~11\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~11_combout\ = ((\U1|sR_timer\(0)) # ((!\U3|sSeg_LED[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sR_timer\(0),
	datad => \U3|sSeg_LED[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~11_combout\);

-- Location: LC_X7_Y4_N9
\U3|Mux156~6\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~6_combout\ = (\U2|IO_ADDR\(0)) # ((\U2|IO_ADDR\(2) & ((\U3|soPin7_0\(0)))) # (!\U2|IO_ADDR\(2) & (\U3|sSeg_LED\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U3|sSeg_LED\(0),
	datac => \U3|soPin7_0\(0),
	datad => \U2|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~6_combout\);

-- Location: LC_X3_Y6_N0
\U3|sEnc_MT1[0]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(0) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(0))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(0),
	datac => \U3|sEnc_MT1\(0),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(0));

-- Location: LC_X3_Y6_N9
\U3|sEnc_MT1[24]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(24) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(24))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U4|EncVal\(24),
	datad => \U3|sEnc_MT1\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(24));

-- Location: LC_X3_Y6_N1
\U3|Mux156~5\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~5_combout\ = (\U2|IO_ADDR\(0) & (!\U2|IO_ADDR\(2) & ((\U3|sEnc_MT1\(24))))) # (!\U2|IO_ADDR\(0) & (\U2|IO_ADDR\(2) & (\U3|sEnc_MT1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U2|IO_ADDR\(2),
	datac => \U3|sEnc_MT1\(0),
	datad => \U3|sEnc_MT1\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~5_combout\);

-- Location: LC_X3_Y6_N7
\U3|Mux156~7\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~7_combout\ = (\U2|IO_ADDR\(1) & (\U2|IO_ADDR\(5))) # (!\U2|IO_ADDR\(1) & ((\U2|IO_ADDR\(5) & ((\U3|Mux156~5_combout\))) # (!\U2|IO_ADDR\(5) & (\U3|Mux156~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U2|IO_ADDR\(5),
	datac => \U3|Mux156~6_combout\,
	datad => \U3|Mux156~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~7_combout\);

-- Location: LC_X12_Y7_N8
\U3|Mux156~3\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~3_combout\ = (\U2|IO_ADDR\(2) & (((\U2|IO_ADDR\(0))))) # (!\U2|IO_ADDR\(2) & ((\U2|IO_ADDR\(0) & ((\U3|soPin15_8\(0)))) # (!\U2|IO_ADDR\(0) & (\U3|soPin23_16~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U3|soPin23_16~combout\,
	datac => \U2|IO_ADDR\(0),
	datad => \U3|soPin15_8\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~3_combout\);

-- Location: LC_X4_Y6_N3
\U3|Mux156~4\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~4_combout\ = (\U2|IO_ADDR\(2) & ((\U3|Mux156~3_combout\ & ((\IO_Input8~combout\))) # (!\U3|Mux156~3_combout\ & (\IO_Input16~combout\)))) # (!\U2|IO_ADDR\(2) & (((\U3|Mux156~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \IO_Input16~combout\,
	datac => \IO_Input8~combout\,
	datad => \U3|Mux156~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~4_combout\);

-- Location: LC_X2_Y9_N9
\U3|sEnc_MT2[16]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(16) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U5|EncVal\(16))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U3|sEnc_MT2\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U5|EncVal\(16),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U3|sEnc_MT2\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(16));

-- Location: LC_X2_Y9_N6
\U3|sEnc_MT2[24]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT2\(24) = ((GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & ((\U5|EncVal\(24)))) # (!GLOBAL(\U3|sEnc_MT2[1]~2_combout\) & (\U3|sEnc_MT2\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sEnc_MT2\(24),
	datac => \U3|sEnc_MT2[1]~2_combout\,
	datad => \U5|EncVal\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT2\(24));

-- Location: LC_X2_Y9_N5
\U3|sEnc_MT1[8]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(8) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U4|EncVal\(8)))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U3|sEnc_MT1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|sEnc_MT1[0]~1_combout\,
	datac => \U3|sEnc_MT1\(8),
	datad => \U4|EncVal\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(8));

-- Location: LC_X2_Y9_N7
\U3|sEnc_MT1[16]\ : maxv_lcell
-- Equation(s):
-- \U3|sEnc_MT1\(16) = ((GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & (\U4|EncVal\(16))) # (!GLOBAL(\U3|sEnc_MT1[0]~1_combout\) & ((\U3|sEnc_MT1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U4|EncVal\(16),
	datac => \U3|sEnc_MT1\(16),
	datad => \U3|sEnc_MT1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|sEnc_MT1\(16));

-- Location: LC_X2_Y9_N8
\U3|Mux156~8\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~8_combout\ = (\U2|IO_ADDR\(0) & ((\U2|IO_ADDR\(2)) # ((\U3|sEnc_MT1\(8))))) # (!\U2|IO_ADDR\(0) & (!\U2|IO_ADDR\(2) & ((\U3|sEnc_MT1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(0),
	datab => \U2|IO_ADDR\(2),
	datac => \U3|sEnc_MT1\(8),
	datad => \U3|sEnc_MT1\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~8_combout\);

-- Location: LC_X2_Y9_N0
\U3|Mux156~9\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~9_combout\ = (\U2|IO_ADDR\(2) & ((\U3|Mux156~8_combout\ & (\U3|sEnc_MT2\(16))) # (!\U3|Mux156~8_combout\ & ((\U3|sEnc_MT2\(24)))))) # (!\U2|IO_ADDR\(2) & (((\U3|Mux156~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(2),
	datab => \U3|sEnc_MT2\(16),
	datac => \U3|sEnc_MT2\(24),
	datad => \U3|Mux156~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~9_combout\);

-- Location: LC_X3_Y6_N2
\U3|Mux156~10\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~10_combout\ = (\U2|IO_ADDR\(1) & ((\U3|Mux156~7_combout\ & ((\U3|Mux156~9_combout\))) # (!\U3|Mux156~7_combout\ & (\U3|Mux156~4_combout\)))) # (!\U2|IO_ADDR\(1) & (\U3|Mux156~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(1),
	datab => \U3|Mux156~7_combout\,
	datac => \U3|Mux156~4_combout\,
	datad => \U3|Mux156~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~10_combout\);

-- Location: LC_X3_Y6_N3
\U3|Mux156~17\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~17_combout\ = (\U2|IO_ADDR\(6) & (\U3|Mux156~11_combout\)) # (!\U2|IO_ADDR\(6) & (((!\U2|IO_ADDR\(3) & \U3|Mux156~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8d88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|IO_ADDR\(6),
	datab => \U3|Mux156~11_combout\,
	datac => \U2|IO_ADDR\(3),
	datad => \U3|Mux156~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~17_combout\);

-- Location: LC_X3_Y6_N4
\U3|Mux156~16\ : maxv_lcell
-- Equation(s):
-- \U3|Mux156~16_combout\ = ((\U3|Mux156~17_combout\) # ((\U3|Mux156~15_combout\ & \U2|IO_ADDR\(3)))) # (!\U3|sWr_LED~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|sWr_LED~3_combout\,
	datab => \U3|Mux156~15_combout\,
	datac => \U2|IO_ADDR\(3),
	datad => \U3|Mux156~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|Mux156~16_combout\);

-- Location: LC_X3_Y6_N5
\U3|IO_DAT_RD[0]\ : maxv_lcell
-- Equation(s):
-- \U3|IO_DAT_RD\(0) = (\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|Mux156~16_combout\)))) # (!\U3|IO_DAT_RD[7]~0_combout\ & (((\U3|IO_DAT_RD\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|IO_DAT_RD[7]~0_combout\,
	datac => \U3|IO_DAT_RD\(0),
	datad => \U3|Mux156~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U3|IO_DAT_RD\(0));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENC_1_PS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U4|PS~regout\,
	oe => VCC,
	padio => ww_ENC_1_PS);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nWAIT~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nWAIT);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENC_1_DIR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U4|sDir~regout\,
	oe => VCC,
	padio => ww_ENC_1_DIR);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENC_1_INX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ENC_1_N~combout\,
	oe => VCC,
	padio => ww_ENC_1_INX);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENC_2_PS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U5|PS~regout\,
	oe => VCC,
	padio => ww_ENC_2_PS);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENC_2_DIR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U5|sDir~regout\,
	oe => VCC,
	padio => ww_ENC_2_DIR);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENC_2_INX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ENC_2_N~combout\,
	oe => VCC,
	padio => ww_ENC_2_INX);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\CAN1_TXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CC_CAN1_TXD~combout\,
	oe => VCC,
	padio => ww_CAN1_TXD);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\CAN2_TXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CC_CAN2_TXD~combout\,
	oe => VCC,
	padio => ww_CAN2_TXD);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\CC_CAN1_RXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CAN1_RXD~combout\,
	oe => \EN_EDIF_CAN~combout\,
	padio => ww_CC_CAN1_RXD);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\CC_CAN2_RXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CAN2_RXD~combout\,
	oe => VCC,
	padio => ww_CC_CAN2_RXD);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\FPGA_OK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|PM2|PWM~combout\,
	oe => VCC,
	padio => ww_FPGA_OK);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\FAN_PWM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|PM2|PWM~combout\,
	oe => VCC,
	padio => ww_FAN_PWM);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LED_PWM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|PM1|PWM~combout\,
	oe => VCC,
	padio => ww_LED_PWM);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\PIZZA_CALIBRATION~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Pizza_Cali~regout\,
	oe => VCC,
	padio => ww_PIZZA_CALIBRATION);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENC_ERR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U6|PM1|PWM~combout\,
	oe => VCC,
	padio => ww_ENC_ERR);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\RST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|HW_Reset~regout\,
	oe => VCC,
	padio => ww_RST);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin23_16~regout\,
	oe => VCC,
	padio => ww_IO_Output(16));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(7),
	oe => VCC,
	padio => ww_IO_Output(15));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(6),
	oe => VCC,
	padio => ww_IO_Output(14));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(5),
	oe => VCC,
	padio => ww_IO_Output(13));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(4),
	oe => VCC,
	padio => ww_IO_Output(12));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(3),
	oe => VCC,
	padio => ww_IO_Output(11));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(2),
	oe => VCC,
	padio => ww_IO_Output(10));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(1),
	oe => VCC,
	padio => ww_IO_Output(9));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin15_8\(0),
	oe => VCC,
	padio => ww_IO_Output(8));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(7),
	oe => VCC,
	padio => ww_IO_Output(7));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(6),
	oe => VCC,
	padio => ww_IO_Output(6));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(5),
	oe => VCC,
	padio => ww_IO_Output(5));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(4),
	oe => VCC,
	padio => ww_IO_Output(4));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(3),
	oe => VCC,
	padio => ww_IO_Output(3));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(2),
	oe => VCC,
	padio => ww_IO_Output(2));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(1),
	oe => VCC,
	padio => ww_IO_Output(1));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IO_Output[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|oPin7_0\(0),
	oe => VCC,
	padio => ww_IO_Output(0));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(7),
	oe => VCC,
	padio => ww_Seg_LED(7));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(6),
	oe => VCC,
	padio => ww_Seg_LED(6));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(5),
	oe => VCC,
	padio => ww_Seg_LED(5));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(4),
	oe => VCC,
	padio => ww_Seg_LED(4));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(3),
	oe => VCC,
	padio => ww_Seg_LED(3));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(2),
	oe => VCC,
	padio => ww_Seg_LED(2));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(1),
	oe => VCC,
	padio => ww_Seg_LED(1));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Seg_LED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U3|Seg_LED\(0),
	oe => VCC,
	padio => ww_Seg_LED(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\FAN_PULSE~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_FAN_PULSE);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SDCLKO~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_SDCLKO);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(6));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(5));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(4));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0));
END structure;


