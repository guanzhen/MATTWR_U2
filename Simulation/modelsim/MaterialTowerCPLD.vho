-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Full Version"

-- DATE "08/13/2018 18:14:56"

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

ENTITY 	MTCPLD_Top IS
    PORT (
	iSW_RESET_CPLD : IN std_logic;
	iCLK : IN std_logic;
	iRD : IN std_logic;
	iWR : IN std_logic;
	iCS_FPGA : IN std_logic;
	iADV : IN std_logic;
	oWAIT : OUT std_logic;
	ioData : INOUT std_logic_vector(15 DOWNTO 0);
	iENC_A3 : IN std_logic;
	iENC_B3 : IN std_logic;
	iENC_N3 : IN std_logic;
	iENC_A4 : IN std_logic;
	iENC_B4 : IN std_logic;
	iENC_N4 : IN std_logic;
	oENC_T3_IN : OUT std_logic;
	oENC_T3_DIR : OUT std_logic;
	oENC_N3_INX : OUT std_logic;
	oENC_T4_IN : OUT std_logic;
	oENC_T4_DIR : OUT std_logic;
	oENC_N4_INX : OUT std_logic;
	iPWM_LED : IN std_logic;
	o7SEGLED : OUT std_logic_vector(7 DOWNTO 0);
	iDIP_SWITCH : IN std_logic_vector(3 DOWNTO 0);
	iInput : IN std_logic_vector(13 DOWNTO 0);
	iDiffInput : IN std_logic_vector(7 DOWNTO 0);
	oOutput : OUT std_logic_vector(14 DOWNTO 0);
	iSYNC_SEL1 : IN std_logic;
	iSYNC_SEL2 : IN std_logic;
	ioSYNC : INOUT std_logic_vector(6 DOWNTO 0);
	oCPLD_DEBUG : OUT std_logic_vector(3 DOWNTO 0);
	iRFID_MUX_SEL : IN std_logic;
	iRFID_TXD : IN std_logic;
	oRFID_RXD : OUT std_logic;
	oRFID1_TXD : OUT std_logic;
	iRFID1_RXD : IN std_logic;
	oRFID2_TXD : OUT std_logic;
	iRFID2_RXD : IN std_logic;
	oLED_FPGA_OK : OUT std_logic;
	oLED_PWM : OUT std_logic;
	oPWM2 : OUT std_logic;
	iLED_OVERCURRENT : IN std_logic;
	oLED_ENABLE : OUT std_logic;
	oLED_ENC_ERR : OUT std_logic;
	oRSTIN : OUT std_logic;
	oRST : OUT std_logic
	);
END MTCPLD_Top;

-- Design Ports Information
-- oWAIT	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oENC_T3_IN	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oENC_T3_DIR	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oENC_N3_INX	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oENC_T4_IN	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oENC_T4_DIR	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oENC_N4_INX	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[0]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[1]	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[2]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[3]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[4]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[6]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- o7SEGLED[7]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iInput[10]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[11]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[12]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[13]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[6]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[7]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oOutput[0]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[1]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[2]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[3]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[4]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[5]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[6]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[7]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[8]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[9]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[10]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[11]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[12]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[13]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oOutput[14]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oCPLD_DEBUG[0]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oCPLD_DEBUG[1]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oCPLD_DEBUG[2]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oCPLD_DEBUG[3]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- oRFID_RXD	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oRFID1_TXD	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oRFID2_TXD	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLED_FPGA_OK	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLED_PWM	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWM2	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iLED_OVERCURRENT	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oLED_ENABLE	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oLED_ENC_ERR	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oRSTIN	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oRST	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[0]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[3]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[4]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[5]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[6]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[7]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[8]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[9]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[10]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[11]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[12]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[13]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[14]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioData[15]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioSYNC[0]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioSYNC[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioSYNC[2]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioSYNC[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioSYNC[4]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioSYNC[5]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ioSYNC[6]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iENC_N3	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iENC_N4	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iPWM_LED	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iCLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iCS_FPGA	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSW_RESET_CPLD	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iRD	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iENC_B3	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iENC_A3	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iENC_B4	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iENC_A4	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDIP_SWITCH[2]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDIP_SWITCH[0]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDIP_SWITCH[1]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iRFID_MUX_SEL	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDIP_SWITCH[3]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSYNC_SEL2	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iADV	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSYNC_SEL1	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iWR	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iRFID2_RXD	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iRFID1_RXD	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[0]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[4]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[1]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[5]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[2]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[6]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[3]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[7]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iRFID_TXD	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[9]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInput[8]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[0]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[1]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[2]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[3]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[4]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInput[5]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MTCPLD_Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iSW_RESET_CPLD : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRD : std_logic;
SIGNAL ww_iWR : std_logic;
SIGNAL ww_iCS_FPGA : std_logic;
SIGNAL ww_iADV : std_logic;
SIGNAL ww_oWAIT : std_logic;
SIGNAL ww_iENC_A3 : std_logic;
SIGNAL ww_iENC_B3 : std_logic;
SIGNAL ww_iENC_N3 : std_logic;
SIGNAL ww_iENC_A4 : std_logic;
SIGNAL ww_iENC_B4 : std_logic;
SIGNAL ww_iENC_N4 : std_logic;
SIGNAL ww_oENC_T3_IN : std_logic;
SIGNAL ww_oENC_T3_DIR : std_logic;
SIGNAL ww_oENC_N3_INX : std_logic;
SIGNAL ww_oENC_T4_IN : std_logic;
SIGNAL ww_oENC_T4_DIR : std_logic;
SIGNAL ww_oENC_N4_INX : std_logic;
SIGNAL ww_iPWM_LED : std_logic;
SIGNAL ww_o7SEGLED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_iDIP_SWITCH : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_iInput : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_iDiffInput : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_oOutput : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_iSYNC_SEL1 : std_logic;
SIGNAL ww_iSYNC_SEL2 : std_logic;
SIGNAL ww_oCPLD_DEBUG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_iRFID_MUX_SEL : std_logic;
SIGNAL ww_iRFID_TXD : std_logic;
SIGNAL ww_oRFID_RXD : std_logic;
SIGNAL ww_oRFID1_TXD : std_logic;
SIGNAL ww_iRFID1_RXD : std_logic;
SIGNAL ww_oRFID2_TXD : std_logic;
SIGNAL ww_iRFID2_RXD : std_logic;
SIGNAL ww_oLED_FPGA_OK : std_logic;
SIGNAL ww_oLED_PWM : std_logic;
SIGNAL ww_oPWM2 : std_logic;
SIGNAL ww_iLED_OVERCURRENT : std_logic;
SIGNAL ww_oLED_ENABLE : std_logic;
SIGNAL ww_oLED_ENC_ERR : std_logic;
SIGNAL ww_oRSTIN : std_logic;
SIGNAL ww_oRST : std_logic;
SIGNAL \IPMOD|sDiffFilter[4][0]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[4][1]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[4][2]~regout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~5\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~5\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~10\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~10\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~15\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~15\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~20\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~20\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~25\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~25\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~30\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~30\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~35\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~35\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~40\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~40\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~45\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~45\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~50\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~50\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~55\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~55\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~60\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~60\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~65\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~65\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~70\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~70\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~75\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~75\ : std_logic;
SIGNAL \ioData[0]~0\ : std_logic;
SIGNAL \ioData[1]~1\ : std_logic;
SIGNAL \ioData[2]~2\ : std_logic;
SIGNAL \ioData[3]~3\ : std_logic;
SIGNAL \ioData[4]~4\ : std_logic;
SIGNAL \ioData[5]~5\ : std_logic;
SIGNAL \ioData[6]~6\ : std_logic;
SIGNAL \ioData[7]~7\ : std_logic;
SIGNAL \ioData[8]~8\ : std_logic;
SIGNAL \ioData[9]~9\ : std_logic;
SIGNAL \ioData[10]~10\ : std_logic;
SIGNAL \ioData[11]~11\ : std_logic;
SIGNAL \ioData[12]~12\ : std_logic;
SIGNAL \ioData[13]~13\ : std_logic;
SIGNAL \ioData[14]~14\ : std_logic;
SIGNAL \ioData[15]~15\ : std_logic;
SIGNAL \ioSYNC[0]~0\ : std_logic;
SIGNAL \ioSYNC[1]~1\ : std_logic;
SIGNAL \ioSYNC[2]~2\ : std_logic;
SIGNAL \ioSYNC[3]~3\ : std_logic;
SIGNAL \ioSYNC[4]~4\ : std_logic;
SIGNAL \ioSYNC[5]~5\ : std_logic;
SIGNAL \ioSYNC[6]~6\ : std_logic;
SIGNAL \iCLK~combout\ : std_logic;
SIGNAL \iSW_RESET_CPLD~combout\ : std_logic;
SIGNAL \iCS_FPGA~combout\ : std_logic;
SIGNAL \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\ : std_logic;
SIGNAL \MOD_SRAMIO|sRdState.idle~regout\ : std_logic;
SIGNAL \iRD~combout\ : std_logic;
SIGNAL \MOD_SRAMIO|sRdState.idle~0_combout\ : std_logic;
SIGNAL \MOD_SRAMIO|sRdState.read_start~regout\ : std_logic;
SIGNAL \iWR~combout\ : std_logic;
SIGNAL \MOD_SRAMIO|sWrState.write_end~0_combout\ : std_logic;
SIGNAL \MOD_SRAMIO|sWrState.idle~0\ : std_logic;
SIGNAL \MOD_SRAMIO|sWrState.idle~regout\ : std_logic;
SIGNAL \MOD_SRAMIO|sWrState.idle~1_combout\ : std_logic;
SIGNAL \MOD_SRAMIO|sWrState.write_start1~regout\ : std_logic;
SIGNAL \MOD_SRAMIO|sWrState.write_start2~regout\ : std_logic;
SIGNAL \iADV~combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux1~0_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux5~0\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrQEMCONFIG1~regout\ : std_logic;
SIGNAL \iENC_B3~combout\ : std_logic;
SIGNAL \iENC_A3~combout\ : std_logic;
SIGNAL \QENC1|A_p~regout\ : std_logic;
SIGNAL \QENC1|B_p~regout\ : std_logic;
SIGNAL \QENC1|EDGE_GEN:Brise~regout\ : std_logic;
SIGNAL \QENC1|EDGE_GEN:Afall~regout\ : std_logic;
SIGNAL \QENC1|EDGE_GEN:Arise~regout\ : std_logic;
SIGNAL \QENC1|EDGE_GEN:Bfall~regout\ : std_logic;
SIGNAL \QENC1|EDGE_GEN~0_combout\ : std_logic;
SIGNAL \QENC1|sPulse~0_combout\ : std_logic;
SIGNAL \QENC1|sPulse~regout\ : std_logic;
SIGNAL \QENC1|oPulse~0\ : std_logic;
SIGNAL \QENC1|sQEMDir~1\ : std_logic;
SIGNAL \QENC1|sQEMDir~0\ : std_logic;
SIGNAL \QENC1|sQEMDir~regout\ : std_logic;
SIGNAL \QENC1|sQEMCONFIG~regout\ : std_logic;
SIGNAL \QENC1|oDir~0_combout\ : std_logic;
SIGNAL \iENC_N3~combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux13~0\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrQEMCONFIG2~regout\ : std_logic;
SIGNAL \iENC_A4~combout\ : std_logic;
SIGNAL \iENC_B4~combout\ : std_logic;
SIGNAL \QENC2|B_p~regout\ : std_logic;
SIGNAL \QENC2|A_p~regout\ : std_logic;
SIGNAL \QENC2|EDGE_GEN:Arise~regout\ : std_logic;
SIGNAL \QENC2|EDGE_GEN:Bfall~regout\ : std_logic;
SIGNAL \QENC2|EDGE_GEN:Afall~regout\ : std_logic;
SIGNAL \QENC2|EDGE_GEN:Brise~regout\ : std_logic;
SIGNAL \QENC2|EDGE_GEN~0_combout\ : std_logic;
SIGNAL \QENC2|sPulse~0_combout\ : std_logic;
SIGNAL \QENC2|sPulse~regout\ : std_logic;
SIGNAL \QENC2|oPulse~0\ : std_logic;
SIGNAL \QENC2|sQEMCONFIG~regout\ : std_logic;
SIGNAL \QENC2|sQEMDir~0\ : std_logic;
SIGNAL \QENC2|sQEMDir~1\ : std_logic;
SIGNAL \QENC2|sQEMDir~regout\ : std_logic;
SIGNAL \QENC2|oDir~0_combout\ : std_logic;
SIGNAL \iENC_N4~combout\ : std_logic;
SIGNAL \iPWM_LED~combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux6~5_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux6~4\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrSEG7OUTPUT~regout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[0]~0_combout\ : std_logic;
SIGNAL \oCPLD_DEBUG[3]~1_combout\ : std_logic;
SIGNAL \oCPLD_DEBUG[3]~0_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux6~6_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~2\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrPWMDUTY2~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\ : std_logic;
SIGNAL \QENC2|sWrCounter~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\ : std_logic;
SIGNAL \Mux2~0\ : std_logic;
SIGNAL \iSYNC_SEL2~combout\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[0]~1\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~8_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~4_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~9_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~10_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~12_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~3_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux10~4\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\ : std_logic;
SIGNAL \QENC1|sWrCounter~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[0]~1\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[1]~5\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[1]~5COUT1_90\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[2]~9\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[2]~9COUT1_92\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[3]~13\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[3]~13COUT1_94\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[4]~3\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[4]~3COUT1_96\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[5]~7\ : std_logic;
SIGNAL \Mux0~0\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[6]~11\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[6]~11COUT1_98\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[7]~15\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[7]~15COUT1_100\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[8]~35\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[8]~35COUT1_102\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[9]~37\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[9]~37COUT1_104\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[10]~39\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[11]~41\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[11]~41COUT1_106\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[12]~43\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[12]~43COUT1_108\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[13]~45\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[13]~45COUT1_110\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[14]~47\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[14]~47COUT1_112\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[15]~33\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[16]~17\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[16]~17COUT1_114\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[17]~21\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[17]~21COUT1_116\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[18]~25\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[18]~25COUT1_118\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux4~4_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrPWMDUTY1~regout\ : std_logic;
SIGNAL \iSYNC_SEL1~combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~6_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~2\ : std_logic;
SIGNAL \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~3\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[16]~17\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[16]~17COUT1_114\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[17]~21\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[17]~21COUT1_116\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[18]~25\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[18]~25COUT1_118\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrPWMPERIOD2~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~9\ : std_logic;
SIGNAL \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~10\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrRESETPERIOD~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~0_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrPWMPERIOD1~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~4\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrSYNCONFIG2~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~7_combout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[3]~3_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrOUTPUTS~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~6_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrSYNCONFIG1~regout\ : std_logic;
SIGNAL \SYNCMOD|Mux2~0\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~8_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux31~11_combout\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[1]~5\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[1]~5COUT1_90\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[2]~9\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[2]~9COUT1_92\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[3]~13\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[3]~13COUT1_94\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[4]~3\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[4]~3COUT1_96\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[5]~7\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[6]~11\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[6]~11COUT1_98\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[7]~15\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[7]~15COUT1_100\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[8]~35\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[8]~35COUT1_102\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[9]~37\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[9]~37COUT1_104\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[10]~39\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[11]~41\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[11]~41COUT1_106\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[12]~43\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[12]~43COUT1_108\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[13]~45\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[13]~45COUT1_110\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[14]~47\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[14]~47COUT1_112\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[15]~33\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~5_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~16_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~17_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[4]~13_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~15_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~14_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux2~0\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrPWMCONFIG2~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~8\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~9\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~18_combout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[0][1]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[1][1]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[2][1]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[3][1]~regout\ : std_logic;
SIGNAL \IPMOD|oInputStatus[1]~1\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~12_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~21_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~13\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~14\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~20_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[2]~19_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrPWMCONFIG1~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~19_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~10\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~15_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~16_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux33~17_combout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[1]~1_combout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[2]~2_combout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[4]~4_combout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[5]~5_combout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[6]~6_combout\ : std_logic;
SIGNAL \MOD_SEG|oLEDOutput[7]~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~9\ : std_logic;
SIGNAL \SYNCMOD|Mux2~2_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux2~3_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux2~1\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~12_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~13\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~10\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~24_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[14]~27_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux4~2\ : std_logic;
SIGNAL \SYNCMOD|Mux4~3_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux4~0\ : std_logic;
SIGNAL \SYNCMOD|Mux4~1_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[13]~33_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[14]~32_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[14]~31_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~28_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[14]~30_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[14]~29_combout\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[19]~29\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[19]~29COUT1_120\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[20]~19\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[21]~23\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[21]~23COUT1_122\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[22]~27\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[22]~27COUT1_124\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[23]~31\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[23]~31COUT1_126\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[24]~49\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[24]~49COUT1_128\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[25]~51\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~7\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~8\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~12_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~23_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~5\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~22\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~2_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~3_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~2_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~3_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~4\ : std_logic;
SIGNAL \SYNCMOD|Mux8~0_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux8~1_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux8~2_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux8~3_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~9\ : std_logic;
SIGNAL \SYNCMOD|Mux5~2\ : std_logic;
SIGNAL \SYNCMOD|Mux5~3_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux5~0\ : std_logic;
SIGNAL \SYNCMOD|Mux5~1_combout\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[26]~53\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[26]~53COUT1_130\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[27]~55\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[27]~55COUT1_132\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[28]~57\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[28]~57COUT1_134\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[29]~59\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[29]~59COUT1_136\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~10_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~7\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~7\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[19]~29\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[19]~29COUT1_120\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~8\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~14\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~15\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~11\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~9\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~12_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~13_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~16_combout\ : std_logic;
SIGNAL \oCPLD_DEBUG[3]~2_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~17_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~12_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux8~0_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oWrRESETCONFIG~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[0][0]~regout\ : std_logic;
SIGNAL \IPMOD|oInputStatus[0]~0\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[1][0]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[2][0]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[3][0]~regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~7_combout\ : std_logic;
SIGNAL \MOD_RESET|sResetConfig~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US~0_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[0]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[1]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[1]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[2]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[2]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[2]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[3]~regout\ : std_logic;
SIGNAL \MOD_RESET|Equal1~0_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[3]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[3]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[4]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[4]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[4]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[5]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[5]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[5]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[6]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[6]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[7]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[7]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[7]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[8]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[8]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[8]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[9]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[9]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[9]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[10]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[10]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[10]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[11]~regout\ : std_logic;
SIGNAL \MOD_RESET|Equal1~2_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[11]~3\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[12]~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[12]~1\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[12]~1COUT1_5\ : std_logic;
SIGNAL \MOD_RESET|COUNTER1US:vCounter1US[13]~regout\ : std_logic;
SIGNAL \MOD_RESET|Equal1~3_combout\ : std_logic;
SIGNAL \MOD_RESET|Equal1~1_combout\ : std_logic;
SIGNAL \MOD_RESET|Equal1~4_combout\ : std_logic;
SIGNAL \MOD_RESET|sCounter1USOF~2_combout\ : std_logic;
SIGNAL \MOD_RESET|sCounter1USOF~regout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[15]~0_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[0]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~0_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[1]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~2\ : std_logic;
SIGNAL \MOD_RESET|Add0~2COUT1_94\ : std_logic;
SIGNAL \MOD_RESET|Add0~5_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~13\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~8\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~10\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~14_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~4_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux30~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~5_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux34~15_combout\ : std_logic;
SIGNAL \iRFID_MUX_SEL~combout\ : std_logic;
SIGNAL \Mux3~0\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \oCPLD_DEBUG[3]~3_combout\ : std_logic;
SIGNAL \oCPLD_DEBUG[0]~reg0_regout\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[20]~19\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~2_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~10\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~11\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~7\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~8_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~9_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux29~12_combout\ : std_logic;
SIGNAL \Mux2~1\ : std_logic;
SIGNAL \oCPLD_DEBUG[1]~reg0_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~9\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~10\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[21]~23\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[21]~23COUT1_122\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~4\ : std_logic;
SIGNAL \SYNCMOD|Mux3~0\ : std_logic;
SIGNAL \SYNCMOD|Mux3~1_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux3~2_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux3~3_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~5\ : std_logic;
SIGNAL \SYNCMOD|Mux7~2_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux7~3_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux7~0\ : std_logic;
SIGNAL \SYNCMOD|Mux7~1_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~8_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux28~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~5_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~8\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~9\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~14\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[0][2]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[1][2]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[2][2]~regout\ : std_logic;
SIGNAL \IPMOD|sDiffFilter[3][2]~regout\ : std_logic;
SIGNAL \IPMOD|oInputStatus[2]~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~19_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~10\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~15_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~16_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux32~17_combout\ : std_logic;
SIGNAL \Mux1~0\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \oCPLD_DEBUG[2]~reg0_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~4\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[22]~27\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[22]~27COUT1_124\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~1\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~2_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~5_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~10\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~8\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~9_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux27~12_combout\ : std_logic;
SIGNAL \Mux0~1\ : std_logic;
SIGNAL \oCPLD_DEBUG[3]~reg0_regout\ : std_logic;
SIGNAL \iRFID2_RXD~combout\ : std_logic;
SIGNAL \iRFID1_RXD~combout\ : std_logic;
SIGNAL \MOD_SERIALMUX|oRX_OUT~regout\ : std_logic;
SIGNAL \iRFID_TXD~combout\ : std_logic;
SIGNAL \MOD_SERIALMUX|oTX1_OUT~reg0_regout\ : std_logic;
SIGNAL \MOD_SERIALMUX|oTX1_OUT~en_regout\ : std_logic;
SIGNAL \MOD_SERIALMUX|oTX2_OUT~reg0_regout\ : std_logic;
SIGNAL \MOD_SERIALMUX|oTX2_OUT~en_regout\ : std_logic;
SIGNAL \MOD_PWM1|Selector21~5_combout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~15_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~11_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[7]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~2COUT1_94\ : std_logic;
SIGNAL \MOD_PWM1|Add0~7\ : std_logic;
SIGNAL \MOD_PWM1|Add0~7COUT1_96\ : std_logic;
SIGNAL \MOD_PWM1|Add0~10_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~13_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[2]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~12\ : std_logic;
SIGNAL \MOD_PWM1|Add0~15_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~14_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[3]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~17\ : std_logic;
SIGNAL \MOD_PWM1|Add0~17COUT1_98\ : std_logic;
SIGNAL \MOD_PWM1|Add0~20_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~8_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[4]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~22\ : std_logic;
SIGNAL \MOD_PWM1|Add0~22COUT1_100\ : std_logic;
SIGNAL \MOD_PWM1|Add0~25_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~9_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[5]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~27\ : std_logic;
SIGNAL \MOD_PWM1|Add0~27COUT1_102\ : std_logic;
SIGNAL \MOD_PWM1|Add0~30_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~10_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[6]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~32\ : std_logic;
SIGNAL \MOD_PWM1|Add0~32COUT1_104\ : std_logic;
SIGNAL \MOD_PWM1|Add0~35_combout\ : std_logic;
SIGNAL \MOD_PWM1|Equal0~1_combout\ : std_logic;
SIGNAL \MOD_PWM1|Equal0~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~2_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~6\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[13]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~37\ : std_logic;
SIGNAL \MOD_PWM1|Add0~40_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~4_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[8]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~42\ : std_logic;
SIGNAL \MOD_PWM1|Add0~42COUT1_106\ : std_logic;
SIGNAL \MOD_PWM1|Add0~45_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~5_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[9]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~47\ : std_logic;
SIGNAL \MOD_PWM1|Add0~47COUT1_108\ : std_logic;
SIGNAL \MOD_PWM1|Add0~50_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~6_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[10]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~52\ : std_logic;
SIGNAL \MOD_PWM1|Add0~52COUT1_110\ : std_logic;
SIGNAL \MOD_PWM1|Add0~55_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~6\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[11]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~57\ : std_logic;
SIGNAL \MOD_PWM1|Add0~57COUT1_112\ : std_logic;
SIGNAL \MOD_PWM1|Add0~60_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~1_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~5\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~6\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[12]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~62\ : std_logic;
SIGNAL \MOD_PWM1|Add0~65_combout\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER[30]~61\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~5\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[15]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~67\ : std_logic;
SIGNAL \MOD_PWM1|Add0~67COUT1_114\ : std_logic;
SIGNAL \MOD_PWM1|Add0~70_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~3_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[14]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~72\ : std_logic;
SIGNAL \MOD_PWM1|Add0~72COUT1_116\ : std_logic;
SIGNAL \MOD_PWM1|Add0~75_combout\ : std_logic;
SIGNAL \MOD_PWM1|Equal0~3_combout\ : std_logic;
SIGNAL \MOD_PWM1|Equal0~2_combout\ : std_logic;
SIGNAL \MOD_PWM1|Equal0~4_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[7]~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[0]~regout\ : std_logic;
SIGNAL \MOD_PWM1|Add0~2\ : std_logic;
SIGNAL \MOD_PWM1|Add0~5_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~12_combout\ : std_logic;
SIGNAL \MOD_PWM1|PWM_G:vCounter[1]~regout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan0~3_combout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan0~2_combout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan0~1_combout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan0~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan0~4_combout\ : std_logic;
SIGNAL \MOD_PWM1|vCounter~0_combout\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[23]~31\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[23]~31COUT1_126\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[24]~49\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[24]~49COUT1_128\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[25]~51\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[26]~53\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[26]~53COUT1_130\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[27]~55\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[27]~55COUT1_132\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[28]~57\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[28]~57COUT1_134\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[29]~59\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[29]~59COUT1_136\ : std_logic;
SIGNAL \QENC1|sQEMCOUNTER[30]~61\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[13]~35_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[13]~34_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[13]~36_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~7\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~8_combout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~77_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~77COUT1_94\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~72_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~72COUT1_96\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~67_cout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~62_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~62COUT1_98\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~57_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~57COUT1_100\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~52_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~52COUT1_102\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~47_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~47COUT1_104\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~42_cout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~7\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~8_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~37_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~25_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~0\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~1\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~8_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~0\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~1\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~7_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~8_combout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~37_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~37COUT1_106\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~32_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~32COUT1_108\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~27_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~27COUT1_110\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~22_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~22COUT1_112\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~17_cout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~3\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~7\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~11_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~8_combout\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~12_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~12COUT1_114\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~7_cout0\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~7COUT1_116\ : std_logic;
SIGNAL \MOD_PWM1|LessThan1~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|Selector21~4_combout\ : std_logic;
SIGNAL \MOD_PWM1|Selector19~1_combout\ : std_logic;
SIGNAL \MOD_PWM1|sPWMState.IDLE~regout\ : std_logic;
SIGNAL \MOD_PWM1|Selector21~1_combout\ : std_logic;
SIGNAL \MOD_PWM1|Selector21~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|Selector21~2_combout\ : std_logic;
SIGNAL \MOD_PWM1|Selector21~3_combout\ : std_logic;
SIGNAL \MOD_PWM1|sPWMState.LO~regout\ : std_logic;
SIGNAL \MOD_PWM1|Selector19~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|sPWMState.HI~regout\ : std_logic;
SIGNAL \MOD_PWM1|Selector22~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|sPWMState.RESET~regout\ : std_logic;
SIGNAL \MOD_PWM1|sOPState.HI~regout\ : std_logic;
SIGNAL \MOD_PWM1|sOPState.IDLE~regout\ : std_logic;
SIGNAL \MOD_PWM1|Selector24~0_combout\ : std_logic;
SIGNAL \MOD_PWM1|Selector23~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~15_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[7]~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[0]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~2\ : std_logic;
SIGNAL \MOD_PWM2|Add0~2COUT1_94\ : std_logic;
SIGNAL \MOD_PWM2|Add0~7\ : std_logic;
SIGNAL \MOD_PWM2|Add0~7COUT1_96\ : std_logic;
SIGNAL \MOD_PWM2|Add0~10_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~13_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[2]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~12\ : std_logic;
SIGNAL \MOD_PWM2|Add0~15_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~14_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[3]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~17\ : std_logic;
SIGNAL \MOD_PWM2|Add0~17COUT1_98\ : std_logic;
SIGNAL \MOD_PWM2|Add0~20_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~8_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[4]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~22\ : std_logic;
SIGNAL \MOD_PWM2|Add0~22COUT1_100\ : std_logic;
SIGNAL \MOD_PWM2|Add0~25_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~9_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[5]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~27\ : std_logic;
SIGNAL \MOD_PWM2|Add0~27COUT1_102\ : std_logic;
SIGNAL \MOD_PWM2|Add0~30_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~10_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[6]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~32\ : std_logic;
SIGNAL \MOD_PWM2|Add0~32COUT1_104\ : std_logic;
SIGNAL \MOD_PWM2|Add0~35_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~11_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[7]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~37\ : std_logic;
SIGNAL \MOD_PWM2|Add0~40_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~4_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[8]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~42\ : std_logic;
SIGNAL \MOD_PWM2|Add0~42COUT1_106\ : std_logic;
SIGNAL \MOD_PWM2|Add0~45_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~5_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[9]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~47\ : std_logic;
SIGNAL \MOD_PWM2|Add0~47COUT1_108\ : std_logic;
SIGNAL \MOD_PWM2|Add0~50_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~6_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[10]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~52\ : std_logic;
SIGNAL \MOD_PWM2|Add0~52COUT1_110\ : std_logic;
SIGNAL \MOD_PWM2|Add0~55_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~7_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[11]~regout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan0~1_combout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan0~3_combout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan0~2_combout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~57\ : std_logic;
SIGNAL \MOD_PWM2|Add0~57COUT1_112\ : std_logic;
SIGNAL \MOD_PWM2|Add0~60_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~1_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[12]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~62\ : std_logic;
SIGNAL \MOD_PWM2|Add0~65_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~2_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[13]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~67\ : std_logic;
SIGNAL \MOD_PWM2|Add0~67COUT1_114\ : std_logic;
SIGNAL \MOD_PWM2|Add0~70_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~3_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[14]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~72\ : std_logic;
SIGNAL \MOD_PWM2|Add0~72COUT1_116\ : std_logic;
SIGNAL \MOD_PWM2|Add0~75_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[15]~regout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan0~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan0~4_combout\ : std_logic;
SIGNAL \MOD_PWM2|vCounter~12_combout\ : std_logic;
SIGNAL \MOD_PWM2|PWM_G:vCounter[1]~regout\ : std_logic;
SIGNAL \MOD_PWM2|Add0~5_combout\ : std_logic;
SIGNAL \MOD_PWM2|Equal0~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|Equal0~1_combout\ : std_logic;
SIGNAL \MOD_PWM2|Equal0~3_combout\ : std_logic;
SIGNAL \MOD_PWM2|Equal0~2_combout\ : std_logic;
SIGNAL \MOD_PWM2|Equal0~4_combout\ : std_logic;
SIGNAL \MOD_PWM2|Selector21~4_combout\ : std_logic;
SIGNAL \MOD_PWM2|Selector19~1_combout\ : std_logic;
SIGNAL \MOD_PWM2|sPWMState.IDLE~regout\ : std_logic;
SIGNAL \MOD_PWM2|Selector21~1_combout\ : std_logic;
SIGNAL \MOD_PWM2|Selector21~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|Selector21~2_combout\ : std_logic;
SIGNAL \MOD_PWM2|Selector21~3_combout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~77_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~77COUT1_94\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~72_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~72COUT1_96\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~67_cout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~62_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~62COUT1_98\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~57_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~57COUT1_100\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~52_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~52COUT1_102\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~47_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~47COUT1_104\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~42_cout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~37_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~37COUT1_106\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~32_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~32COUT1_108\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~27_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~27COUT1_110\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~22_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~22COUT1_112\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~17_cout\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~12_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~12COUT1_114\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~7_cout0\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~7COUT1_116\ : std_logic;
SIGNAL \MOD_PWM2|LessThan1~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|Selector21~5_combout\ : std_logic;
SIGNAL \MOD_PWM2|sPWMState.LO~regout\ : std_logic;
SIGNAL \MOD_PWM2|Selector19~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|sPWMState.HI~regout\ : std_logic;
SIGNAL \MOD_PWM2|Selector22~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|sPWMState.RESET~regout\ : std_logic;
SIGNAL \MOD_PWM2|sOPState.HI~regout\ : std_logic;
SIGNAL \MOD_PWM2|sOPState.IDLE~regout\ : std_logic;
SIGNAL \MOD_PWM2|Selector24~0_combout\ : std_logic;
SIGNAL \MOD_PWM2|Selector23~0_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~6\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~10_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~7\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[9]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~7\ : std_logic;
SIGNAL \MOD_RESET|Add0~7COUT1_96\ : std_logic;
SIGNAL \MOD_RESET|Add0~15_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[2]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~17\ : std_logic;
SIGNAL \MOD_RESET|Add0~10_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[3]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~12\ : std_logic;
SIGNAL \MOD_RESET|Add0~12COUT1_98\ : std_logic;
SIGNAL \MOD_RESET|Add0~25_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[4]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~27\ : std_logic;
SIGNAL \MOD_RESET|Add0~27COUT1_100\ : std_logic;
SIGNAL \MOD_RESET|Add0~20_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[5]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~22\ : std_logic;
SIGNAL \MOD_RESET|Add0~22COUT1_102\ : std_logic;
SIGNAL \MOD_RESET|Add0~35_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[6]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~37\ : std_logic;
SIGNAL \MOD_RESET|Add0~37COUT1_104\ : std_logic;
SIGNAL \MOD_RESET|Add0~30_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[7]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~32\ : std_logic;
SIGNAL \MOD_RESET|Add0~45_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[8]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~47\ : std_logic;
SIGNAL \MOD_RESET|Add0~47COUT1_106\ : std_logic;
SIGNAL \MOD_RESET|Add0~40_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~5_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[12]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~42\ : std_logic;
SIGNAL \MOD_RESET|Add0~42COUT1_108\ : std_logic;
SIGNAL \MOD_RESET|Add0~50_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[10]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~52\ : std_logic;
SIGNAL \MOD_RESET|Add0~52COUT1_110\ : std_logic;
SIGNAL \MOD_RESET|Add0~55_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[11]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~57\ : std_logic;
SIGNAL \MOD_RESET|Add0~57COUT1_112\ : std_logic;
SIGNAL \MOD_RESET|Add0~60_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[13]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~62\ : std_logic;
SIGNAL \MOD_RESET|Add0~65_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~7_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~6_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[14]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~67\ : std_logic;
SIGNAL \MOD_RESET|Add0~67COUT1_114\ : std_logic;
SIGNAL \MOD_RESET|Add0~70_combout\ : std_logic;
SIGNAL \MOD_RESET|COUNTER:vCounter[15]~regout\ : std_logic;
SIGNAL \MOD_RESET|Add0~72\ : std_logic;
SIGNAL \MOD_RESET|Add0~72COUT1_116\ : std_logic;
SIGNAL \MOD_RESET|Add0~75_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~8_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~9_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~3_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~0\ : std_logic;
SIGNAL \MOD_RESET|sReset~2_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~1_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~4_combout\ : std_logic;
SIGNAL \MOD_RESET|sReset~regout\ : std_logic;
SIGNAL \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[0]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[0]~en_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[1]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[1]~en_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[2]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[2]~en_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[3]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[3]~en_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[4]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[4]~en_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[5]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[5]~en_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[6]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[6]~en_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[7]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[7]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|oData[8]~26_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux26~9\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[8]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[8]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux25~9\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[9]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[9]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~2_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~3_combout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~4\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux24~10\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[10]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[10]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux23~9\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[11]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[11]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux22~9\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[12]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[12]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux21~9\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[13]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[13]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux20~8\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[14]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[14]~en_regout\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~2\ : std_logic;
SIGNAL \MOD_IOSPACE|Mux19~8\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[15]~reg0_regout\ : std_logic;
SIGNAL \MOD_SRAMIO|DATA[15]~en_regout\ : std_logic;
SIGNAL \SYNCMOD|Mux2~4\ : std_logic;
SIGNAL \SYNCMOD|Mux2~5\ : std_logic;
SIGNAL \SYNCMOD|Mux2~6_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux3~4\ : std_logic;
SIGNAL \SYNCMOD|Mux3~5_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux3~6_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux4~4\ : std_logic;
SIGNAL \SYNCMOD|Mux4~5_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux4~6_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux5~5\ : std_logic;
SIGNAL \SYNCMOD|Mux5~4\ : std_logic;
SIGNAL \SYNCMOD|Mux5~6_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux6~5_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux6~2_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux6~3_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux6~0_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux6~1_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux6~4_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux6~6_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux7~4\ : std_logic;
SIGNAL \SYNCMOD|Mux7~5_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux7~6_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux8~5_combout\ : std_logic;
SIGNAL \SYNCMOD|Mux8~4\ : std_logic;
SIGNAL \SYNCMOD|Mux8~6_combout\ : std_logic;
SIGNAL \QENC2|sQEMCOUNTER\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MOD_SRAMIO|IO_ADDR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SYNCMOD|sSYNCONFIG\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \MOD_SEG|s7SEGOUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MOD_SRAMIO|IO_DAT_WR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MOD_IOSPACE|oData\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \iDIP_SWITCH~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MOD_RESET|sResetPeriod\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MOD_SERIALMUX|sSERIALMUXCONFIG\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MOD_PWM2|sPWMPERIOD\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IPMOD|oInputStatus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MOD_IOSPACE|sQEMBUFFER2\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MOD_PWM2|sDUTY\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SYNCMOD|sSYNDIR\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \MOD_PWM1|sDUTY\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MOD_IOSPACE|sQEMBUFFER1\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MOD_PWM2|sPWMCONFIG\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MOD_PWM1|sPWMPERIOD\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MOD_PWM1|sPWMCONFIG\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \OPMOD|sOutput\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \iInput~combout\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \QENC1|sQEMCOUNTER\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \QENC2|sBUFFER\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \iDiffInput~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \QENC1|sBUFFER\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_iRD~combout\ : std_logic;
SIGNAL \ALT_INV_iSW_RESET_CPLD~combout\ : std_logic;
SIGNAL \ALT_INV_iCS_FPGA~combout\ : std_logic;
SIGNAL \MOD_RESET|ALT_INV_sReset~regout\ : std_logic;
SIGNAL \MOD_SRAMIO|ALT_INV_sRdState.read_start~regout\ : std_logic;
SIGNAL \SYNCMOD|ALT_INV_sSYNDIR\ : std_logic_vector(6 DOWNTO 4);
SIGNAL \ALT_INV_iWR~combout\ : std_logic;
SIGNAL \ALT_INV_iADV~combout\ : std_logic;

BEGIN

ww_iSW_RESET_CPLD <= iSW_RESET_CPLD;
ww_iCLK <= iCLK;
ww_iRD <= iRD;
ww_iWR <= iWR;
ww_iCS_FPGA <= iCS_FPGA;
ww_iADV <= iADV;
oWAIT <= ww_oWAIT;
ww_iENC_A3 <= iENC_A3;
ww_iENC_B3 <= iENC_B3;
ww_iENC_N3 <= iENC_N3;
ww_iENC_A4 <= iENC_A4;
ww_iENC_B4 <= iENC_B4;
ww_iENC_N4 <= iENC_N4;
oENC_T3_IN <= ww_oENC_T3_IN;
oENC_T3_DIR <= ww_oENC_T3_DIR;
oENC_N3_INX <= ww_oENC_N3_INX;
oENC_T4_IN <= ww_oENC_T4_IN;
oENC_T4_DIR <= ww_oENC_T4_DIR;
oENC_N4_INX <= ww_oENC_N4_INX;
ww_iPWM_LED <= iPWM_LED;
o7SEGLED <= ww_o7SEGLED;
ww_iDIP_SWITCH <= iDIP_SWITCH;
ww_iInput <= iInput;
ww_iDiffInput <= iDiffInput;
oOutput <= ww_oOutput;
ww_iSYNC_SEL1 <= iSYNC_SEL1;
ww_iSYNC_SEL2 <= iSYNC_SEL2;
oCPLD_DEBUG <= ww_oCPLD_DEBUG;
ww_iRFID_MUX_SEL <= iRFID_MUX_SEL;
ww_iRFID_TXD <= iRFID_TXD;
oRFID_RXD <= ww_oRFID_RXD;
oRFID1_TXD <= ww_oRFID1_TXD;
ww_iRFID1_RXD <= iRFID1_RXD;
oRFID2_TXD <= ww_oRFID2_TXD;
ww_iRFID2_RXD <= iRFID2_RXD;
oLED_FPGA_OK <= ww_oLED_FPGA_OK;
oLED_PWM <= ww_oLED_PWM;
oPWM2 <= ww_oPWM2;
ww_iLED_OVERCURRENT <= iLED_OVERCURRENT;
oLED_ENABLE <= ww_oLED_ENABLE;
oLED_ENC_ERR <= ww_oLED_ENC_ERR;
oRSTIN <= ww_oRSTIN;
oRST <= ww_oRST;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_iRD~combout\ <= NOT \iRD~combout\;
\ALT_INV_iSW_RESET_CPLD~combout\ <= NOT \iSW_RESET_CPLD~combout\;
\ALT_INV_iCS_FPGA~combout\ <= NOT \iCS_FPGA~combout\;
\MOD_RESET|ALT_INV_sReset~regout\ <= NOT \MOD_RESET|sReset~regout\;
\MOD_SRAMIO|ALT_INV_sRdState.read_start~regout\ <= NOT \MOD_SRAMIO|sRdState.read_start~regout\;
\SYNCMOD|ALT_INV_sSYNDIR\(6) <= NOT \SYNCMOD|sSYNDIR\(6);
\SYNCMOD|ALT_INV_sSYNDIR\(4) <= NOT \SYNCMOD|sSYNDIR\(4);
\ALT_INV_iWR~combout\ <= NOT \iWR~combout\;
\ALT_INV_iADV~combout\ <= NOT \iADV~combout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[0]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[0]~en_regout\,
	padio => ioData(0),
	combout => \ioData[0]~0\);

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[1]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[1]~en_regout\,
	padio => ioData(1),
	combout => \ioData[1]~1\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[2]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[2]~en_regout\,
	padio => ioData(2),
	combout => \ioData[2]~2\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[3]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[3]~en_regout\,
	padio => ioData(3),
	combout => \ioData[3]~3\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[4]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[4]~en_regout\,
	padio => ioData(4),
	combout => \ioData[4]~4\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[5]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[5]~en_regout\,
	padio => ioData(5),
	combout => \ioData[5]~5\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[6]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[6]~en_regout\,
	padio => ioData(6),
	combout => \ioData[6]~6\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[7]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[7]~en_regout\,
	padio => ioData(7),
	combout => \ioData[7]~7\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[8]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[8]~en_regout\,
	padio => ioData(8),
	combout => \ioData[8]~8\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[9]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[9]~en_regout\,
	padio => ioData(9),
	combout => \ioData[9]~9\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[10]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[10]~en_regout\,
	padio => ioData(10),
	combout => \ioData[10]~10\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[11]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[11]~en_regout\,
	padio => ioData(11),
	combout => \ioData[11]~11\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[12]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[12]~en_regout\,
	padio => ioData(12),
	combout => \ioData[12]~12\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[13]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[13]~en_regout\,
	padio => ioData(13),
	combout => \ioData[13]~13\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[14]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[14]~en_regout\,
	padio => ioData(14),
	combout => \ioData[14]~14\);

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioData[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|DATA[15]~reg0_regout\,
	oe => \MOD_SRAMIO|DATA[15]~en_regout\,
	padio => ioData(15),
	combout => \ioData[15]~15\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioSYNC[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \SYNCMOD|Mux2~6_combout\,
	oe => \SYNCMOD|ALT_INV_sSYNDIR\(4),
	padio => ioSYNC(0),
	combout => \ioSYNC[0]~0\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioSYNC[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \SYNCMOD|Mux3~6_combout\,
	oe => \SYNCMOD|ALT_INV_sSYNDIR\(4),
	padio => ioSYNC(1),
	combout => \ioSYNC[1]~1\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioSYNC[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \SYNCMOD|Mux4~6_combout\,
	oe => \SYNCMOD|ALT_INV_sSYNDIR\(4),
	padio => ioSYNC(2),
	combout => \ioSYNC[2]~2\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioSYNC[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \SYNCMOD|Mux5~6_combout\,
	oe => \SYNCMOD|ALT_INV_sSYNDIR\(4),
	padio => ioSYNC(3),
	combout => \ioSYNC[3]~3\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioSYNC[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \SYNCMOD|Mux6~6_combout\,
	oe => \SYNCMOD|ALT_INV_sSYNDIR\(4),
	padio => ioSYNC(4),
	combout => \ioSYNC[4]~4\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioSYNC[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \SYNCMOD|Mux7~6_combout\,
	oe => \SYNCMOD|ALT_INV_sSYNDIR\(6),
	padio => ioSYNC(5),
	combout => \ioSYNC[5]~5\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ioSYNC[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \SYNCMOD|Mux8~6_combout\,
	oe => \SYNCMOD|ALT_INV_sSYNDIR\(6),
	padio => ioSYNC(6),
	combout => \ioSYNC[6]~6\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iCLK,
	combout => \iCLK~combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iSW_RESET_CPLD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iSW_RESET_CPLD,
	combout => \iSW_RESET_CPLD~combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iCS_FPGA~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iCS_FPGA,
	combout => \iCS_FPGA~combout\);

-- Location: LC_X3_Y8_N7
\MOD_IOSPACE|IO_SPACE_PROC_WR~0\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\ = (((\iCS_FPGA~combout\)) # (!\iSW_RESET_CPLD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \iSW_RESET_CPLD~combout\,
	datac => \iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\);

-- Location: LC_X1_Y9_N0
\MOD_SRAMIO|sRdState.idle\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sRdState.idle~regout\ = DFFEAS(((\MOD_SRAMIO|sRdState.read_start~regout\) # ((\MOD_SRAMIO|sRdState.idle~regout\))), GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , VCC, \MOD_SRAMIO|sRdState.idle~0_combout\, , )

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
	clk => \iCLK~combout\,
	datab => \MOD_SRAMIO|sRdState.read_start~regout\,
	datac => VCC,
	datad => \MOD_SRAMIO|sRdState.idle~regout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	aload => \MOD_SRAMIO|sRdState.idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|sRdState.idle~regout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iRD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iRD,
	combout => \iRD~combout\);

-- Location: LC_X1_Y9_N3
\MOD_SRAMIO|sRdState.idle~0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sRdState.idle~0_combout\ = (\iSW_RESET_CPLD~combout\ & (!\iCS_FPGA~combout\ & (!\MOD_SRAMIO|sRdState.idle~regout\ & !\iRD~combout\)))

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
	dataa => \iSW_RESET_CPLD~combout\,
	datab => \iCS_FPGA~combout\,
	datac => \MOD_SRAMIO|sRdState.idle~regout\,
	datad => \iRD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SRAMIO|sRdState.idle~0_combout\);

-- Location: LC_X1_Y9_N9
\MOD_SRAMIO|sRdState.read_start\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sRdState.read_start~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , VCC, \MOD_SRAMIO|sRdState.idle~0_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => VCC,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	aload => \MOD_SRAMIO|sRdState.idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|sRdState.read_start~regout\);

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iWR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iWR,
	combout => \iWR~combout\);

-- Location: LC_X3_Y8_N6
\MOD_SRAMIO|sWrState.write_end~0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sWrState.write_end~0_combout\ = (\iCS_FPGA~combout\) # (((!\MOD_SRAMIO|sWrState.idle~regout\ & !\iWR~combout\)) # (!\iSW_RESET_CPLD~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iCS_FPGA~combout\,
	datab => \iSW_RESET_CPLD~combout\,
	datac => \MOD_SRAMIO|sWrState.idle~regout\,
	datad => \iWR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SRAMIO|sWrState.write_end~0_combout\);

-- Location: LC_X3_Y8_N8
\MOD_SRAMIO|sWrState.write_start2\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sWrState.idle~0\ = (((H1_sWrState.write_start2) # (\MOD_SRAMIO|sWrState.write_start1~regout\)))
-- \MOD_SRAMIO|sWrState.write_start2~regout\ = DFFEAS(\MOD_SRAMIO|sWrState.idle~0\, GLOBAL(\iCLK~combout\), !\MOD_SRAMIO|sWrState.write_end~0_combout\, , , \MOD_SRAMIO|sWrState.write_start1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|sWrState.write_start1~regout\,
	datad => \MOD_SRAMIO|sWrState.write_start1~regout\,
	aclr => \MOD_SRAMIO|sWrState.write_end~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SRAMIO|sWrState.idle~0\,
	regout => \MOD_SRAMIO|sWrState.write_start2~regout\);

-- Location: LC_X3_Y8_N5
\MOD_SRAMIO|sWrState.idle\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sWrState.idle~regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|sWrState.idle~0\, VCC, \MOD_SRAMIO|sWrState.idle~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => VCC,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	aload => \MOD_SRAMIO|sWrState.idle~1_combout\,
	ena => \MOD_SRAMIO|sWrState.idle~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|sWrState.idle~regout\);

-- Location: LC_X3_Y8_N9
\MOD_SRAMIO|sWrState.idle~1\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sWrState.idle~1_combout\ = (!\iCS_FPGA~combout\ & (\iSW_RESET_CPLD~combout\ & (!\MOD_SRAMIO|sWrState.idle~regout\ & !\iWR~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iCS_FPGA~combout\,
	datab => \iSW_RESET_CPLD~combout\,
	datac => \MOD_SRAMIO|sWrState.idle~regout\,
	datad => \iWR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SRAMIO|sWrState.idle~1_combout\);

-- Location: LC_X3_Y8_N4
\MOD_SRAMIO|sWrState.write_start1\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|sWrState.write_start1~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|sWrState.idle~0\, VCC, \MOD_SRAMIO|sWrState.idle~1_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => VCC,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	aload => \MOD_SRAMIO|sWrState.idle~1_combout\,
	ena => \MOD_SRAMIO|sWrState.idle~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|sWrState.write_start1~regout\);

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iADV~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iADV,
	combout => \iADV~combout\);

-- Location: LC_X9_Y9_N0
\MOD_SRAMIO|IO_ADDR[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux13~0\ = (((H1_IO_ADDR[0] & \MOD_SRAMIO|IO_ADDR\(4))))
-- \MOD_SRAMIO|IO_ADDR\(0) = DFFEAS(\MOD_IOSPACE|Mux13~0\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[0]~0\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	datac => \ioData[0]~0\,
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux13~0\,
	regout => \MOD_SRAMIO|IO_ADDR\(0));

-- Location: LC_X9_Y9_N8
\MOD_SRAMIO|IO_ADDR[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux10~4\ = ((!\MOD_SRAMIO|IO_ADDR\(0) & (H1_IO_ADDR[4])))
-- \MOD_SRAMIO|IO_ADDR\(4) = DFFEAS(\MOD_IOSPACE|Mux10~4\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[4]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \ioData[4]~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux10~4\,
	regout => \MOD_SRAMIO|IO_ADDR\(4));

-- Location: LC_X6_Y9_N3
\MOD_SRAMIO|IO_ADDR[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~2\ = (((H1_IO_ADDR[2] & !\MOD_SRAMIO|IO_ADDR\(1))))
-- \MOD_SRAMIO|IO_ADDR\(2) = DFFEAS(\MOD_IOSPACE|oData[8]~2\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[2]~2\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	datac => \ioData[2]~2\,
	datad => \MOD_SRAMIO|IO_ADDR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~2\,
	regout => \MOD_SRAMIO|IO_ADDR\(2));

-- Location: LC_X6_Y9_N8
\MOD_SRAMIO|IO_ADDR[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux2~0\ = (((H1_IO_ADDR[1] & !\MOD_SRAMIO|IO_ADDR\(2))))
-- \MOD_SRAMIO|IO_ADDR\(1) = DFFEAS(\MOD_IOSPACE|Mux2~0\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	datac => \ioData[1]~1\,
	datad => \MOD_SRAMIO|IO_ADDR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux2~0\,
	regout => \MOD_SRAMIO|IO_ADDR\(1));

-- Location: LC_X13_Y8_N4
\MOD_IOSPACE|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux1~0_combout\ = ((!\MOD_SRAMIO|IO_ADDR\(1) & ((!\MOD_SRAMIO|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datad => \MOD_SRAMIO|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux1~0_combout\);

-- Location: LC_X9_Y9_N5
\MOD_SRAMIO|IO_ADDR[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~22\ = (\MOD_SRAMIO|IO_ADDR\(6) & (((\MOD_SRAMIO|IO_ADDR\(4))))) # (!\MOD_SRAMIO|IO_ADDR\(6) & (((H1_IO_ADDR[5]))))
-- \MOD_SRAMIO|IO_ADDR\(5) = DFFEAS(\MOD_IOSPACE|oData[8]~22\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \ioData[5]~5\,
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~22\,
	regout => \MOD_SRAMIO|IO_ADDR\(5));

-- Location: LC_X9_Y9_N4
\MOD_SRAMIO|IO_ADDR[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~5\ = ((H1_IO_ADDR[6]) # ((!\MOD_SRAMIO|IO_ADDR\(5) & \MOD_SRAMIO|IO_ADDR\(4))))
-- \MOD_SRAMIO|IO_ADDR\(6) = DFFEAS(\MOD_IOSPACE|oData[4]~5\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[6]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \ioData[6]~6\,
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~5\,
	regout => \MOD_SRAMIO|IO_ADDR\(6));

-- Location: LC_X9_Y9_N6
\MOD_SRAMIO|IO_ADDR[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux5~0\ = (!\MOD_SRAMIO|IO_ADDR\(6) & (!\MOD_SRAMIO|IO_ADDR\(5) & (!H1_IO_ADDR[7] & !\MOD_SRAMIO|IO_ADDR\(3))))
-- \MOD_SRAMIO|IO_ADDR\(7) = DFFEAS(\MOD_IOSPACE|Mux5~0\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \ioData[7]~7\,
	datad => \MOD_SRAMIO|IO_ADDR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux5~0\,
	regout => \MOD_SRAMIO|IO_ADDR\(7));

-- Location: LC_X9_Y9_N2
\MOD_SRAMIO|IO_ADDR[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux6~4\ = (!\MOD_SRAMIO|IO_ADDR\(7) & (!\MOD_SRAMIO|IO_ADDR\(1) & (!H1_IO_ADDR[3] & !\MOD_SRAMIO|IO_ADDR\(2))))
-- \MOD_SRAMIO|IO_ADDR\(3) = DFFEAS(\MOD_IOSPACE|Mux6~4\, !\iADV~combout\, \iSW_RESET_CPLD~combout\, , , \ioData[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iADV~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(7),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \ioData[3]~3\,
	datad => \MOD_SRAMIO|IO_ADDR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux6~4\,
	regout => \MOD_SRAMIO|IO_ADDR\(3));

-- Location: LC_X13_Y8_N5
\MOD_IOSPACE|oWrQEMCONFIG1\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrQEMCONFIG1~regout\ = DFFEAS((\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|Mux1~0_combout\ & \MOD_IOSPACE|Mux5~0\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_IOSPACE|Mux1~0_combout\,
	datad => \MOD_IOSPACE|Mux5~0\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrQEMCONFIG1~regout\);

-- Location: LC_X12_Y7_N1
\MOD_SRAMIO|IO_DAT_WR[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(0) = DFFEAS(GND, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[0]~0\, , , VCC)

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
	clk => \ALT_INV_iWR~combout\,
	datac => \ioData[0]~0\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(0));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iENC_B3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iENC_B3,
	combout => \iENC_B3~combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iENC_A3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iENC_A3,
	combout => \iENC_A3~combout\);

-- Location: LC_X4_Y8_N6
\QENC1|A_p\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMDir~0\ = ((\iENC_B3~combout\ & (K1_A_p)) # (!\iENC_B3~combout\ & ((!\QENC1|B_p~regout\)))) # (!\iENC_A3~combout\)
-- \QENC1|A_p~regout\ = DFFEAS(\QENC1|sQEMDir~0\, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iENC_A3~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5f7",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iENC_A3~combout\,
	datab => \iENC_B3~combout\,
	datac => \iENC_A3~combout\,
	datad => \QENC1|B_p~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC1|sQEMDir~0\,
	regout => \QENC1|A_p~regout\);

-- Location: LC_X4_Y8_N8
\QENC1|B_p\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMDir~1\ = (\iENC_A3~combout\ & (((!K1_B_p)))) # (!\iENC_A3~combout\ & (\QENC1|A_p~regout\))
-- \QENC1|B_p~regout\ = DFFEAS(\QENC1|sQEMDir~1\, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iENC_B3~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e2e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|A_p~regout\,
	datab => \iENC_A3~combout\,
	datac => \iENC_B3~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC1|sQEMDir~1\,
	regout => \QENC1|B_p~regout\);

-- Location: LC_X4_Y8_N5
\QENC1|EDGE_GEN:Brise\ : maxv_lcell
-- Equation(s):
-- \QENC1|EDGE_GEN:Brise~regout\ = DFFEAS((((\iENC_B3~combout\ & !\QENC1|B_p~regout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	datac => \iENC_B3~combout\,
	datad => \QENC1|B_p~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|EDGE_GEN:Brise~regout\);

-- Location: LC_X4_Y8_N2
\QENC1|EDGE_GEN:Afall\ : maxv_lcell
-- Equation(s):
-- \QENC1|EDGE_GEN:Afall~regout\ = DFFEAS((\QENC1|A_p~regout\ & (((!\iENC_A3~combout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	dataa => \QENC1|A_p~regout\,
	datac => \iENC_A3~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|EDGE_GEN:Afall~regout\);

-- Location: LC_X4_Y8_N7
\QENC1|EDGE_GEN:Arise\ : maxv_lcell
-- Equation(s):
-- \QENC1|EDGE_GEN:Arise~regout\ = DFFEAS((!\QENC1|A_p~regout\ & (((\iENC_A3~combout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	dataa => \QENC1|A_p~regout\,
	datac => \iENC_A3~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|EDGE_GEN:Arise~regout\);

-- Location: LC_X4_Y8_N9
\QENC1|EDGE_GEN:Bfall\ : maxv_lcell
-- Equation(s):
-- \QENC1|EDGE_GEN:Bfall~regout\ = DFFEAS((((!\iENC_B3~combout\ & \QENC1|B_p~regout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	datac => \iENC_B3~combout\,
	datad => \QENC1|B_p~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|EDGE_GEN:Bfall~regout\);

-- Location: LC_X4_Y8_N3
\QENC1|EDGE_GEN~0\ : maxv_lcell
-- Equation(s):
-- \QENC1|EDGE_GEN~0_combout\ = (\QENC1|EDGE_GEN:Brise~regout\) # ((\QENC1|EDGE_GEN:Afall~regout\) # ((\QENC1|EDGE_GEN:Arise~regout\) # (\QENC1|EDGE_GEN:Bfall~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QENC1|EDGE_GEN:Brise~regout\,
	datab => \QENC1|EDGE_GEN:Afall~regout\,
	datac => \QENC1|EDGE_GEN:Arise~regout\,
	datad => \QENC1|EDGE_GEN:Bfall~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC1|EDGE_GEN~0_combout\);

-- Location: LC_X4_Y8_N4
\QENC1|sPulse~0\ : maxv_lcell
-- Equation(s):
-- \QENC1|sPulse~0_combout\ = (!\iSW_RESET_CPLD~combout\ & (((!\QENC1|EDGE_GEN~0_combout\))))

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
	dataa => \iSW_RESET_CPLD~combout\,
	datad => \QENC1|EDGE_GEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC1|sPulse~0_combout\);

-- Location: LC_X4_Y8_N1
\QENC1|sPulse\ : maxv_lcell
-- Equation(s):
-- \QENC1|sPulse~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\QENC1|sPulse~0_combout\, , , VCC, \QENC1|EDGE_GEN~0_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => VCC,
	aclr => \QENC1|sPulse~0_combout\,
	aload => \QENC1|EDGE_GEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sPulse~regout\);

-- Location: LC_X4_Y4_N3
\QENC1|sQEMCONFIG\ : maxv_lcell
-- Equation(s):
-- \QENC1|oPulse~0\ = (((K1_sQEMCONFIG & \QENC1|sPulse~regout\)))
-- \QENC1|sQEMCONFIG~regout\ = DFFEAS(\QENC1|oPulse~0\, \MOD_IOSPACE|oWrQEMCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrQEMCONFIG1~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \QENC1|sPulse~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC1|oPulse~0\,
	regout => \QENC1|sQEMCONFIG~regout\);

-- Location: LC_X3_Y4_N4
\QENC1|sQEMDir\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMDir~regout\ = DFFEAS((\QENC1|sQEMDir~regout\ & (((\QENC1|sQEMDir~0\)))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMDir~1\ & (\iENC_B3~combout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~1\,
	datab => \QENC1|sQEMDir~regout\,
	datac => \iENC_B3~combout\,
	datad => \QENC1|sQEMDir~0\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMDir~regout\);

-- Location: LC_X4_Y4_N0
\QENC1|oDir~0\ : maxv_lcell
-- Equation(s):
-- \QENC1|oDir~0_combout\ = ((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCONFIG~regout\))))

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
	datab => \QENC1|sQEMDir~regout\,
	datad => \QENC1|sQEMCONFIG~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC1|oDir~0_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iENC_N3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iENC_N3,
	combout => \iENC_N3~combout\);

-- Location: LC_X13_Y8_N2
\MOD_IOSPACE|oWrQEMCONFIG2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrQEMCONFIG2~regout\ = DFFEAS((\MOD_SRAMIO|IO_ADDR\(1) & (!\MOD_SRAMIO|IO_ADDR\(2) & (\MOD_IOSPACE|Mux13~0\ & \MOD_IOSPACE|Mux5~0\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_SRAMIO|IO_ADDR\(2),
	datac => \MOD_IOSPACE|Mux13~0\,
	datad => \MOD_IOSPACE|Mux5~0\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrQEMCONFIG2~regout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iENC_A4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iENC_A4,
	combout => \iENC_A4~combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iENC_B4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iENC_B4,
	combout => \iENC_B4~combout\);

-- Location: LC_X11_Y10_N1
\QENC2|B_p\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMDir~1\ = (\iENC_A4~combout\ & (((!K2_B_p)))) # (!\iENC_A4~combout\ & (((\QENC2|A_p~regout\))))
-- \QENC2|B_p~regout\ = DFFEAS(\QENC2|sQEMDir~1\, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iENC_B4~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iENC_A4~combout\,
	datac => \iENC_B4~combout\,
	datad => \QENC2|A_p~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC2|sQEMDir~1\,
	regout => \QENC2|B_p~regout\);

-- Location: LC_X11_Y10_N3
\QENC2|A_p\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMDir~0\ = ((\iENC_B4~combout\ & ((K2_A_p))) # (!\iENC_B4~combout\ & (!\QENC2|B_p~regout\))) # (!\iENC_A4~combout\)
-- \QENC2|A_p~regout\ = DFFEAS(\QENC2|sQEMDir~0\, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iENC_A4~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f577",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iENC_A4~combout\,
	datab => \QENC2|B_p~regout\,
	datac => \iENC_A4~combout\,
	datad => \iENC_B4~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC2|sQEMDir~0\,
	regout => \QENC2|A_p~regout\);

-- Location: LC_X15_Y10_N8
\QENC2|EDGE_GEN:Arise\ : maxv_lcell
-- Equation(s):
-- \QENC2|EDGE_GEN:Arise~regout\ = DFFEAS((((\iENC_A4~combout\ & !\QENC2|A_p~regout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	datac => \iENC_A4~combout\,
	datad => \QENC2|A_p~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|EDGE_GEN:Arise~regout\);

-- Location: LC_X15_Y10_N0
\QENC2|EDGE_GEN:Bfall\ : maxv_lcell
-- Equation(s):
-- \QENC2|EDGE_GEN:Bfall~regout\ = DFFEAS((((\QENC2|B_p~regout\ & !\iENC_B4~combout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	datac => \QENC2|B_p~regout\,
	datad => \iENC_B4~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|EDGE_GEN:Bfall~regout\);

-- Location: LC_X15_Y10_N5
\QENC2|EDGE_GEN:Afall\ : maxv_lcell
-- Equation(s):
-- \QENC2|EDGE_GEN:Afall~regout\ = DFFEAS((((!\iENC_A4~combout\ & \QENC2|A_p~regout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	datac => \iENC_A4~combout\,
	datad => \QENC2|A_p~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|EDGE_GEN:Afall~regout\);

-- Location: LC_X15_Y10_N3
\QENC2|EDGE_GEN:Brise\ : maxv_lcell
-- Equation(s):
-- \QENC2|EDGE_GEN:Brise~regout\ = DFFEAS((((!\QENC2|B_p~regout\ & \iENC_B4~combout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	datac => \QENC2|B_p~regout\,
	datad => \iENC_B4~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|EDGE_GEN:Brise~regout\);

-- Location: LC_X15_Y10_N1
\QENC2|EDGE_GEN~0\ : maxv_lcell
-- Equation(s):
-- \QENC2|EDGE_GEN~0_combout\ = (\QENC2|EDGE_GEN:Arise~regout\) # ((\QENC2|EDGE_GEN:Bfall~regout\) # ((\QENC2|EDGE_GEN:Afall~regout\) # (\QENC2|EDGE_GEN:Brise~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \QENC2|EDGE_GEN:Arise~regout\,
	datab => \QENC2|EDGE_GEN:Bfall~regout\,
	datac => \QENC2|EDGE_GEN:Afall~regout\,
	datad => \QENC2|EDGE_GEN:Brise~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC2|EDGE_GEN~0_combout\);

-- Location: LC_X15_Y10_N2
\QENC2|sPulse~0\ : maxv_lcell
-- Equation(s):
-- \QENC2|sPulse~0_combout\ = (((!\iSW_RESET_CPLD~combout\ & !\QENC2|EDGE_GEN~0_combout\)))

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
	datac => \iSW_RESET_CPLD~combout\,
	datad => \QENC2|EDGE_GEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC2|sPulse~0_combout\);

-- Location: LC_X15_Y10_N7
\QENC2|sPulse\ : maxv_lcell
-- Equation(s):
-- \QENC2|sPulse~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\QENC2|sPulse~0_combout\, , , VCC, \QENC2|EDGE_GEN~0_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => VCC,
	aclr => \QENC2|sPulse~0_combout\,
	aload => \QENC2|EDGE_GEN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sPulse~regout\);

-- Location: LC_X14_Y10_N7
\QENC2|sQEMCONFIG\ : maxv_lcell
-- Equation(s):
-- \QENC2|oPulse~0\ = (((K2_sQEMCONFIG & \QENC2|sPulse~regout\)))
-- \QENC2|sQEMCONFIG~regout\ = DFFEAS(\QENC2|oPulse~0\, \MOD_IOSPACE|oWrQEMCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrQEMCONFIG2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \QENC2|sPulse~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC2|oPulse~0\,
	regout => \QENC2|sQEMCONFIG~regout\);

-- Location: LC_X11_Y10_N2
\QENC2|sQEMDir\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMDir~regout\ = DFFEAS((\QENC2|sQEMDir~regout\ & (((\QENC2|sQEMDir~0\)))) # (!\QENC2|sQEMDir~regout\ & (\iENC_B4~combout\ & ((\QENC2|sQEMDir~1\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \iENC_B4~combout\,
	datac => \QENC2|sQEMDir~0\,
	datad => \QENC2|sQEMDir~1\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMDir~regout\);

-- Location: LC_X14_Y10_N9
\QENC2|oDir~0\ : maxv_lcell
-- Equation(s):
-- \QENC2|oDir~0_combout\ = (((\QENC2|sQEMCONFIG~regout\ & \QENC2|sQEMDir~regout\)))

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
	datac => \QENC2|sQEMCONFIG~regout\,
	datad => \QENC2|sQEMDir~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \QENC2|oDir~0_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iENC_N4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iENC_N4,
	combout => \iENC_N4~combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iPWM_LED~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iPWM_LED,
	combout => \iPWM_LED~combout\);

-- Location: LC_X9_Y9_N7
\MOD_IOSPACE|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux6~5_combout\ = (!\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_SRAMIO|IO_ADDR\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux6~5_combout\);

-- Location: LC_X9_Y9_N3
\MOD_IOSPACE|oWrSEG7OUTPUT\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrSEG7OUTPUT~regout\ = DFFEAS((\MOD_IOSPACE|Mux6~5_combout\ & (!\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|Mux6~4\ & !\MOD_SRAMIO|IO_ADDR\(4)))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_IOSPACE|Mux6~5_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_IOSPACE|Mux6~4\,
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\);

-- Location: LC_X7_Y10_N1
\MOD_SEG|s7SEGOUTPUT[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(0) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(0)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(0));

-- Location: LC_X7_Y10_N0
\MOD_SEG|oLEDOutput[0]~0\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[0]~0_combout\ = (((\iPWM_LED~combout\) # (!\MOD_SEG|s7SEGOUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \iPWM_LED~combout\,
	datad => \MOD_SEG|s7SEGOUTPUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[0]~0_combout\);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDIP_SWITCH[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDIP_SWITCH(1),
	combout => \iDIP_SWITCH~combout\(1));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDIP_SWITCH[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDIP_SWITCH(2),
	combout => \iDIP_SWITCH~combout\(2));

-- Location: LC_X10_Y5_N4
\oCPLD_DEBUG[3]~1\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[3]~1_combout\ = ((\iDIP_SWITCH~combout\(1) & ((!\iDIP_SWITCH~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \iDIP_SWITCH~combout\(1),
	datad => \iDIP_SWITCH~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oCPLD_DEBUG[3]~1_combout\);

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDIP_SWITCH[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDIP_SWITCH(0),
	combout => \iDIP_SWITCH~combout\(0));

-- Location: LC_X10_Y5_N5
\oCPLD_DEBUG[3]~0\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[3]~0_combout\ = ((\iDIP_SWITCH~combout\(2)) # ((\iDIP_SWITCH~combout\(0) & \iDIP_SWITCH~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iDIP_SWITCH~combout\(0),
	datab => \iDIP_SWITCH~combout\(1),
	datad => \iDIP_SWITCH~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oCPLD_DEBUG[3]~0_combout\);

-- Location: LC_X6_Y6_N1
\MOD_IOSPACE|Mux6~6\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux6~6_combout\ = (!\MOD_SRAMIO|IO_ADDR\(3) & (((!\MOD_SRAMIO|IO_ADDR\(7)))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(3),
	datad => \MOD_SRAMIO|IO_ADDR\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux6~6_combout\);

-- Location: LC_X8_Y6_N6
\MOD_IOSPACE|oData[4]~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~11_combout\ = (\MOD_SRAMIO|IO_ADDR\(6)) # (((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~11_combout\);

-- Location: LC_X14_Y7_N6
\MOD_IOSPACE|oWrPWMDUTY2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrPWMDUTY2~regout\ = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|oData[8]~2\ & \MOD_IOSPACE|Mux5~0\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_IOSPACE|oData[8]~2\,
	datad => \MOD_IOSPACE|Mux5~0\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrPWMDUTY2~regout\);

-- Location: LC_X14_Y6_N8
\MOD_PWM2|sDUTY[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(1) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(1)))), \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(1));

-- Location: LC_X14_Y9_N5
\MOD_IOSPACE|oWrQEMCOUNTERH2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\ = DFFEAS((\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_IOSPACE|Mux5~0\ & \MOD_IOSPACE|oData[8]~2\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_IOSPACE|Mux5~0\,
	datad => \MOD_IOSPACE|oData[8]~2\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\);

-- Location: LC_X13_Y9_N3
\QENC2|sBUFFER[17]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(17) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(1)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(17));

-- Location: LC_X11_Y10_N0
\QENC2|sWrCounter\ : maxv_lcell
-- Equation(s):
-- \QENC2|sWrCounter~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sWrCounter~regout\);

-- Location: LC_X9_Y6_N3
\MOD_SRAMIO|IO_DAT_WR[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(15) = DFFEAS(GND, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[15]~15\, , , VCC)

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
	clk => \ALT_INV_iWR~combout\,
	datac => \ioData[15]~15\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(15));

-- Location: LC_X10_Y10_N7
\MOD_IOSPACE|oWrQEMCOUNTERL2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\ = DFFEAS((\MOD_IOSPACE|oData[8]~2\ & (\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & \MOD_IOSPACE|Mux5~0\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_IOSPACE|oData[8]~2\,
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_IOSPACE|Mux5~0\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\);

-- Location: LC_X10_Y10_N3
\QENC2|sBUFFER[15]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(15) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(15)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(15));

-- Location: LC_X10_Y8_N7
\MOD_SRAMIO|IO_DAT_WR[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(10) = DFFEAS(GND, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[10]~10\, , , VCC)

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
	clk => \ALT_INV_iWR~combout\,
	datac => \ioData[10]~10\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(10));

-- Location: LC_X10_Y10_N4
\QENC2|sBUFFER[10]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(10) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(10));

-- Location: LC_X9_Y8_N0
\MOD_SRAMIO|IO_DAT_WR[1]\ : maxv_lcell
-- Equation(s):
-- \Mux2~0\ = (\oCPLD_DEBUG[3]~1_combout\ & (\oCPLD_DEBUG[3]~0_combout\)) # (!\oCPLD_DEBUG[3]~1_combout\ & ((\oCPLD_DEBUG[3]~0_combout\ & ((\MOD_IOSPACE|oData\(1)))) # (!\oCPLD_DEBUG[3]~0_combout\ & (H1_IO_DAT_WR[1]))))
-- \MOD_SRAMIO|IO_DAT_WR\(1) = DFFEAS(\Mux2~0\, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[1]~1\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iWR~combout\,
	dataa => \oCPLD_DEBUG[3]~1_combout\,
	datab => \oCPLD_DEBUG[3]~0_combout\,
	datac => \ioData[1]~1\,
	datad => \MOD_IOSPACE|oData\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0\,
	regout => \MOD_SRAMIO|IO_DAT_WR\(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iSYNC_SEL2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iSYNC_SEL2,
	combout => \iSYNC_SEL2~combout\);

-- Location: LC_X9_Y8_N9
\MOD_SRAMIO|IO_DAT_WR[5]\ : maxv_lcell
-- Equation(s):
-- \Mux2~1\ = (\oCPLD_DEBUG[3]~1_combout\ & ((\Mux2~0\ & ((\iSYNC_SEL2~combout\))) # (!\Mux2~0\ & (H1_IO_DAT_WR[5])))) # (!\oCPLD_DEBUG[3]~1_combout\ & (\Mux2~0\))
-- \MOD_SRAMIO|IO_DAT_WR\(5) = DFFEAS(\Mux2~1\, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[5]~5\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iWR~combout\,
	dataa => \oCPLD_DEBUG[3]~1_combout\,
	datab => \Mux2~0\,
	datac => \ioData[5]~5\,
	datad => \iSYNC_SEL2~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1\,
	regout => \MOD_SRAMIO|IO_DAT_WR\(5));

-- Location: LC_X10_Y10_N5
\QENC2|sBUFFER[5]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(5) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(5)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(5));

-- Location: LC_X10_Y10_N2
\QENC2|sBUFFER[0]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(0) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(0));

-- Location: LC_X11_Y10_N4
\QENC2|sQEMCOUNTER[0]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(0) = DFFEAS(((!\QENC2|sQEMCOUNTER\(0))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(0), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[0]~1\ = CARRY(((\QENC2|sQEMCOUNTER\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \QENC2|sQEMCOUNTER\(0),
	datac => \QENC2|sBUFFER\(0),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(0),
	cout => \QENC2|sQEMCOUNTER[0]~1\);

-- Location: LC_X9_Y8_N1
\MOD_SRAMIO|IO_DAT_WR[4]\ : maxv_lcell
-- Equation(s):
-- \Mux3~0\ = (\oCPLD_DEBUG[3]~1_combout\ & ((\oCPLD_DEBUG[3]~0_combout\) # ((H1_IO_DAT_WR[4])))) # (!\oCPLD_DEBUG[3]~1_combout\ & (!\oCPLD_DEBUG[3]~0_combout\ & ((\MOD_SRAMIO|IO_DAT_WR\(0)))))
-- \MOD_SRAMIO|IO_DAT_WR\(4) = DFFEAS(\Mux3~0\, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[4]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iWR~combout\,
	dataa => \oCPLD_DEBUG[3]~1_combout\,
	datab => \oCPLD_DEBUG[3]~0_combout\,
	datac => \ioData[4]~4\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0\,
	regout => \MOD_SRAMIO|IO_DAT_WR\(4));

-- Location: LC_X10_Y10_N6
\QENC2|sBUFFER[4]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(4) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(4));

-- Location: LC_X8_Y5_N4
\MOD_IOSPACE|oData[4]~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~8_combout\ = (\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_SRAMIO|IO_ADDR\(0) & !\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(6)))) # (!\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_SRAMIO|IO_ADDR\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5dee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~8_combout\);

-- Location: LC_X6_Y7_N5
\MOD_IOSPACE|oData[4]~4\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~4_combout\ = (\MOD_SRAMIO|IO_ADDR\(2)) # ((\MOD_SRAMIO|IO_ADDR\(0) & (!\MOD_SRAMIO|IO_ADDR\(1) & \MOD_IOSPACE|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|Mux6~5_combout\,
	datad => \MOD_SRAMIO|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~4_combout\);

-- Location: LC_X8_Y5_N6
\MOD_IOSPACE|oData[4]~9\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~9_combout\ = (\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(0) & ((!\MOD_SRAMIO|IO_ADDR\(4)))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (!\MOD_SRAMIO|IO_ADDR\(6))))) # (!\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(6) & 
-- (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(6) & ((!\MOD_SRAMIO|IO_ADDR\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4a73",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~9_combout\);

-- Location: LC_X7_Y6_N5
\MOD_IOSPACE|oData[4]~10\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~10_combout\ = (\MOD_IOSPACE|Mux1~0_combout\ & (((!\MOD_IOSPACE|oData[4]~4_combout\ & \MOD_IOSPACE|oData[4]~9_combout\)))) # (!\MOD_IOSPACE|Mux1~0_combout\ & ((\MOD_IOSPACE|oData[4]~8_combout\) # ((\MOD_IOSPACE|oData[4]~4_combout\))))

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
	dataa => \MOD_IOSPACE|oData[4]~8_combout\,
	datab => \MOD_IOSPACE|Mux1~0_combout\,
	datac => \MOD_IOSPACE|oData[4]~4_combout\,
	datad => \MOD_IOSPACE|oData[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~10_combout\);

-- Location: LC_X7_Y6_N8
\MOD_IOSPACE|oData[4]~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~12_combout\ = (\MOD_IOSPACE|oData[4]~10_combout\ & ((\MOD_IOSPACE|oData[4]~11_combout\) # ((!\MOD_IOSPACE|oData[4]~4_combout\)))) # (!\MOD_IOSPACE|oData[4]~10_combout\ & (((!\MOD_SRAMIO|IO_ADDR\(4) & 
-- \MOD_IOSPACE|oData[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[4]~11_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_IOSPACE|oData[4]~10_combout\,
	datad => \MOD_IOSPACE|oData[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~12_combout\);

-- Location: LC_X4_Y5_N3
\MOD_IOSPACE|oData[4]~3\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~3_combout\ = ((\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_SRAMIO|IO_ADDR\(0))) # (!\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_SRAMIO|IO_ADDR\(4)))))

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
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~3_combout\);

-- Location: LC_X9_Y4_N6
\MOD_IOSPACE|oWrQEMCOUNTERH1\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\ = DFFEAS((\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux5~0\ & (!\MOD_SRAMIO|IO_ADDR\(2) & \MOD_IOSPACE|Mux10~4\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|Mux5~0\,
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_IOSPACE|Mux10~4\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\);

-- Location: LC_X8_Y4_N4
\QENC1|sBUFFER[19]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(19) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(19));

-- Location: LC_X7_Y4_N9
\QENC1|sWrCounter\ : maxv_lcell
-- Equation(s):
-- \QENC1|sWrCounter~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sWrCounter~regout\);

-- Location: LC_X5_Y9_N5
\MOD_IOSPACE|oWrQEMCOUNTERL1\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\ = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(2) & (\MOD_IOSPACE|Mux5~0\ & (\MOD_IOSPACE|Mux13~0\ & !\MOD_SRAMIO|IO_ADDR\(1)))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_IOSPACE|Mux5~0\,
	datac => \MOD_IOSPACE|Mux13~0\,
	datad => \MOD_SRAMIO|IO_ADDR\(1),
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\);

-- Location: LC_X5_Y5_N3
\QENC1|sBUFFER[15]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(15) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(15));

-- Location: LC_X5_Y8_N3
\QENC1|sBUFFER[10]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(10) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(10)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(10));

-- Location: LC_X5_Y9_N3
\QENC1|sBUFFER[5]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(5) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(5));

-- Location: LC_X5_Y9_N1
\QENC1|sBUFFER[0]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(0) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(0));

-- Location: LC_X4_Y4_N4
\QENC1|sQEMCOUNTER[0]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(0) = DFFEAS((!\QENC1|sQEMCOUNTER\(0)), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(0), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[0]~1\ = CARRY((\QENC1|sQEMCOUNTER\(0)))

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
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(0),
	datac => \QENC1|sBUFFER\(0),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(0),
	cout => \QENC1|sQEMCOUNTER[0]~1\);

-- Location: LC_X5_Y9_N9
\QENC1|sBUFFER[4]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(4) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(4));

-- Location: LC_X5_Y9_N8
\QENC1|sBUFFER[3]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(3) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(3));

-- Location: LC_X9_Y8_N5
\MOD_SRAMIO|IO_DAT_WR[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(2) = DFFEAS(GND, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[2]~2\, , , VCC)

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
	clk => \ALT_INV_iWR~combout\,
	datac => \ioData[2]~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(2));

-- Location: LC_X5_Y9_N6
\QENC1|sBUFFER[2]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(2) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(2)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(2));

-- Location: LC_X5_Y9_N2
\QENC1|sBUFFER[1]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(1) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(1)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(1));

-- Location: LC_X4_Y4_N5
\QENC1|sQEMCOUNTER[1]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(1) = DFFEAS(\QENC1|sQEMCOUNTER\(1) $ (\QENC1|sQEMDir~regout\ $ ((\QENC1|sQEMCOUNTER[0]~1\))), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(1), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[1]~5\ = CARRY((\QENC1|sQEMCOUNTER\(1) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[0]~1\)) # (!\QENC1|sQEMCOUNTER\(1) & ((!\QENC1|sQEMCOUNTER[0]~1\) # (!\QENC1|sQEMDir~regout\))))
-- \QENC1|sQEMCOUNTER[1]~5COUT1_90\ = CARRY((\QENC1|sQEMCOUNTER\(1) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[0]~1\)) # (!\QENC1|sQEMCOUNTER\(1) & ((!\QENC1|sQEMCOUNTER[0]~1\) # (!\QENC1|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(1),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(1),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(1),
	cout0 => \QENC1|sQEMCOUNTER[1]~5\,
	cout1 => \QENC1|sQEMCOUNTER[1]~5COUT1_90\);

-- Location: LC_X4_Y4_N6
\QENC1|sQEMCOUNTER[2]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(2) = DFFEAS(\QENC1|sQEMCOUNTER\(2) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[1]~5\) # (\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[1]~5COUT1_90\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(2), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[2]~9\ = CARRY((\QENC1|sQEMCOUNTER\(2) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[1]~5\))) # (!\QENC1|sQEMCOUNTER\(2) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[1]~5\)))
-- \QENC1|sQEMCOUNTER[2]~9COUT1_92\ = CARRY((\QENC1|sQEMCOUNTER\(2) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[1]~5COUT1_90\))) # (!\QENC1|sQEMCOUNTER\(2) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[1]~5COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(2),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(2),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[0]~1\,
	cin0 => \QENC1|sQEMCOUNTER[1]~5\,
	cin1 => \QENC1|sQEMCOUNTER[1]~5COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(2),
	cout0 => \QENC1|sQEMCOUNTER[2]~9\,
	cout1 => \QENC1|sQEMCOUNTER[2]~9COUT1_92\);

-- Location: LC_X4_Y4_N7
\QENC1|sQEMCOUNTER[3]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(3) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(3) $ (((!\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[2]~9\) # (\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[2]~9COUT1_92\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(3), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[3]~13\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(3) & !\QENC1|sQEMCOUNTER[2]~9\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[2]~9\) # (!\QENC1|sQEMCOUNTER\(3)))))
-- \QENC1|sQEMCOUNTER[3]~13COUT1_94\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(3) & !\QENC1|sQEMCOUNTER[2]~9COUT1_92\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[2]~9COUT1_92\) # (!\QENC1|sQEMCOUNTER\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(3),
	datac => \QENC1|sBUFFER\(3),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[0]~1\,
	cin0 => \QENC1|sQEMCOUNTER[2]~9\,
	cin1 => \QENC1|sQEMCOUNTER[2]~9COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(3),
	cout0 => \QENC1|sQEMCOUNTER[3]~13\,
	cout1 => \QENC1|sQEMCOUNTER[3]~13COUT1_94\);

-- Location: LC_X4_Y4_N8
\QENC1|sQEMCOUNTER[4]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(4) = DFFEAS(\QENC1|sQEMCOUNTER\(4) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[3]~13\) # (\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[3]~13COUT1_94\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(4), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[4]~3\ = CARRY((\QENC1|sQEMCOUNTER\(4) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[3]~13\))) # (!\QENC1|sQEMCOUNTER\(4) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[3]~13\)))
-- \QENC1|sQEMCOUNTER[4]~3COUT1_96\ = CARRY((\QENC1|sQEMCOUNTER\(4) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[3]~13COUT1_94\))) # (!\QENC1|sQEMCOUNTER\(4) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[3]~13COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(4),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(4),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[0]~1\,
	cin0 => \QENC1|sQEMCOUNTER[3]~13\,
	cin1 => \QENC1|sQEMCOUNTER[3]~13COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(4),
	cout0 => \QENC1|sQEMCOUNTER[4]~3\,
	cout1 => \QENC1|sQEMCOUNTER[4]~3COUT1_96\);

-- Location: LC_X4_Y4_N9
\QENC1|sQEMCOUNTER[5]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(5) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(5) $ (((!\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[4]~3\) # (\QENC1|sQEMCOUNTER[0]~1\ & \QENC1|sQEMCOUNTER[4]~3COUT1_96\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(5), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[5]~7\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(5) & !\QENC1|sQEMCOUNTER[4]~3COUT1_96\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[4]~3COUT1_96\) # (!\QENC1|sQEMCOUNTER\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(5),
	datac => \QENC1|sBUFFER\(5),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[0]~1\,
	cin0 => \QENC1|sQEMCOUNTER[4]~3\,
	cin1 => \QENC1|sQEMCOUNTER[4]~3COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(5),
	cout => \QENC1|sQEMCOUNTER[5]~7\);

-- Location: LC_X10_Y8_N5
\MOD_SRAMIO|IO_DAT_WR[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(9) = DFFEAS(GND, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[9]~9\, , , VCC)

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
	clk => \ALT_INV_iWR~combout\,
	datac => \ioData[9]~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(9));

-- Location: LC_X5_Y8_N9
\QENC1|sBUFFER[9]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(9) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(9)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(9));

-- Location: LC_X9_Y8_N2
\MOD_SRAMIO|IO_DAT_WR[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(8) = DFFEAS((((\ioData[8]~8\))), !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

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
	clk => \ALT_INV_iWR~combout\,
	datad => \ioData[8]~8\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(8));

-- Location: LC_X5_Y8_N0
\QENC1|sBUFFER[8]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(8) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(8)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(8));

-- Location: LC_X9_Y6_N6
\MOD_SRAMIO|IO_DAT_WR[3]\ : maxv_lcell
-- Equation(s):
-- \Mux0~0\ = (\oCPLD_DEBUG[3]~1_combout\ & (\oCPLD_DEBUG[3]~0_combout\)) # (!\oCPLD_DEBUG[3]~1_combout\ & ((\oCPLD_DEBUG[3]~0_combout\ & ((\MOD_IOSPACE|oData\(3)))) # (!\oCPLD_DEBUG[3]~0_combout\ & (H1_IO_DAT_WR[3]))))
-- \MOD_SRAMIO|IO_DAT_WR\(3) = DFFEAS(\Mux0~0\, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[3]~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iWR~combout\,
	dataa => \oCPLD_DEBUG[3]~1_combout\,
	datab => \oCPLD_DEBUG[3]~0_combout\,
	datac => \ioData[3]~3\,
	datad => \MOD_IOSPACE|oData\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0\,
	regout => \MOD_SRAMIO|IO_DAT_WR\(3));

-- Location: LC_X9_Y6_N4
\MOD_SRAMIO|IO_DAT_WR[7]\ : maxv_lcell
-- Equation(s):
-- \Mux0~1\ = (\oCPLD_DEBUG[3]~1_combout\ & ((\Mux0~0\ & (\iPWM_LED~combout\)) # (!\Mux0~0\ & ((H1_IO_DAT_WR[7]))))) # (!\oCPLD_DEBUG[3]~1_combout\ & (((\Mux0~0\))))
-- \MOD_SRAMIO|IO_DAT_WR\(7) = DFFEAS(\Mux0~1\, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[7]~7\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iWR~combout\,
	dataa => \oCPLD_DEBUG[3]~1_combout\,
	datab => \iPWM_LED~combout\,
	datac => \ioData[7]~7\,
	datad => \Mux0~0\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1\,
	regout => \MOD_SRAMIO|IO_DAT_WR\(7));

-- Location: LC_X5_Y9_N0
\QENC1|sBUFFER[7]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(7) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(7));

-- Location: LC_X9_Y8_N7
\MOD_SRAMIO|IO_DAT_WR[6]\ : maxv_lcell
-- Equation(s):
-- \Mux1~0\ = (\oCPLD_DEBUG[3]~0_combout\ & (((\oCPLD_DEBUG[3]~1_combout\)))) # (!\oCPLD_DEBUG[3]~0_combout\ & ((\oCPLD_DEBUG[3]~1_combout\ & ((H1_IO_DAT_WR[6]))) # (!\oCPLD_DEBUG[3]~1_combout\ & (\MOD_SRAMIO|IO_DAT_WR\(2)))))
-- \MOD_SRAMIO|IO_DAT_WR\(6) = DFFEAS(\Mux1~0\, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[6]~6\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iWR~combout\,
	dataa => \MOD_SRAMIO|IO_DAT_WR\(2),
	datab => \oCPLD_DEBUG[3]~0_combout\,
	datac => \ioData[6]~6\,
	datad => \oCPLD_DEBUG[3]~1_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0\,
	regout => \MOD_SRAMIO|IO_DAT_WR\(6));

-- Location: LC_X5_Y5_N2
\QENC1|sBUFFER[6]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(6) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(6)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(6));

-- Location: LC_X5_Y4_N0
\QENC1|sQEMCOUNTER[6]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(6) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(6) $ ((!\QENC1|sQEMCOUNTER[5]~7\))), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(6), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[6]~11\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(6)) # (!\QENC1|sQEMCOUNTER[5]~7\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(6) & !\QENC1|sQEMCOUNTER[5]~7\)))
-- \QENC1|sQEMCOUNTER[6]~11COUT1_98\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(6)) # (!\QENC1|sQEMCOUNTER[5]~7\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(6) & !\QENC1|sQEMCOUNTER[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(6),
	datac => \QENC1|sBUFFER\(6),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[5]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(6),
	cout0 => \QENC1|sQEMCOUNTER[6]~11\,
	cout1 => \QENC1|sQEMCOUNTER[6]~11COUT1_98\);

-- Location: LC_X5_Y4_N1
\QENC1|sQEMCOUNTER[7]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(7) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(7) $ (((!\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[6]~11\) # (\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[6]~11COUT1_98\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(7), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[7]~15\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(7) & !\QENC1|sQEMCOUNTER[6]~11\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[6]~11\) # (!\QENC1|sQEMCOUNTER\(7)))))
-- \QENC1|sQEMCOUNTER[7]~15COUT1_100\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(7) & !\QENC1|sQEMCOUNTER[6]~11COUT1_98\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[6]~11COUT1_98\) # (!\QENC1|sQEMCOUNTER\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(7),
	datac => \QENC1|sBUFFER\(7),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[5]~7\,
	cin0 => \QENC1|sQEMCOUNTER[6]~11\,
	cin1 => \QENC1|sQEMCOUNTER[6]~11COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(7),
	cout0 => \QENC1|sQEMCOUNTER[7]~15\,
	cout1 => \QENC1|sQEMCOUNTER[7]~15COUT1_100\);

-- Location: LC_X5_Y4_N2
\QENC1|sQEMCOUNTER[8]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(8) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(8) $ ((!(!\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[7]~15\) # (\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[7]~15COUT1_100\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(8), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[8]~35\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(8)) # (!\QENC1|sQEMCOUNTER[7]~15\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(8) & !\QENC1|sQEMCOUNTER[7]~15\)))
-- \QENC1|sQEMCOUNTER[8]~35COUT1_102\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(8)) # (!\QENC1|sQEMCOUNTER[7]~15COUT1_100\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(8) & !\QENC1|sQEMCOUNTER[7]~15COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(8),
	datac => \QENC1|sBUFFER\(8),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[5]~7\,
	cin0 => \QENC1|sQEMCOUNTER[7]~15\,
	cin1 => \QENC1|sQEMCOUNTER[7]~15COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(8),
	cout0 => \QENC1|sQEMCOUNTER[8]~35\,
	cout1 => \QENC1|sQEMCOUNTER[8]~35COUT1_102\);

-- Location: LC_X5_Y4_N3
\QENC1|sQEMCOUNTER[9]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(9) = DFFEAS(\QENC1|sQEMCOUNTER\(9) $ (\QENC1|sQEMDir~regout\ $ (((!\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[8]~35\) # (\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[8]~35COUT1_102\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(9), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[9]~37\ = CARRY((\QENC1|sQEMCOUNTER\(9) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[8]~35\)) # (!\QENC1|sQEMCOUNTER\(9) & ((!\QENC1|sQEMCOUNTER[8]~35\) # (!\QENC1|sQEMDir~regout\))))
-- \QENC1|sQEMCOUNTER[9]~37COUT1_104\ = CARRY((\QENC1|sQEMCOUNTER\(9) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[8]~35COUT1_102\)) # (!\QENC1|sQEMCOUNTER\(9) & ((!\QENC1|sQEMCOUNTER[8]~35COUT1_102\) # (!\QENC1|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(9),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(9),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[5]~7\,
	cin0 => \QENC1|sQEMCOUNTER[8]~35\,
	cin1 => \QENC1|sQEMCOUNTER[8]~35COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(9),
	cout0 => \QENC1|sQEMCOUNTER[9]~37\,
	cout1 => \QENC1|sQEMCOUNTER[9]~37COUT1_104\);

-- Location: LC_X5_Y4_N4
\QENC1|sQEMCOUNTER[10]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(10) = DFFEAS(\QENC1|sQEMCOUNTER\(10) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[9]~37\) # (\QENC1|sQEMCOUNTER[5]~7\ & \QENC1|sQEMCOUNTER[9]~37COUT1_104\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(10), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[10]~39\ = CARRY((\QENC1|sQEMCOUNTER\(10) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[9]~37COUT1_104\))) # (!\QENC1|sQEMCOUNTER\(10) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[9]~37COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(10),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(10),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[5]~7\,
	cin0 => \QENC1|sQEMCOUNTER[9]~37\,
	cin1 => \QENC1|sQEMCOUNTER[9]~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(10),
	cout => \QENC1|sQEMCOUNTER[10]~39\);

-- Location: LC_X9_Y6_N7
\MOD_SRAMIO|IO_DAT_WR[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(14) = DFFEAS(GND, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[14]~14\, , , VCC)

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
	clk => \ALT_INV_iWR~combout\,
	datac => \ioData[14]~14\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(14));

-- Location: LC_X5_Y5_N7
\QENC1|sBUFFER[14]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(14) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(14));

-- Location: LC_X12_Y7_N8
\MOD_SRAMIO|IO_DAT_WR[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(13) = DFFEAS(GND, !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, \ioData[13]~13\, , , VCC)

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
	clk => \ALT_INV_iWR~combout\,
	datac => \ioData[13]~13\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(13));

-- Location: LC_X5_Y8_N8
\QENC1|sBUFFER[13]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(13) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(13)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(13),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(13));

-- Location: LC_X12_Y7_N0
\MOD_SRAMIO|IO_DAT_WR[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(12) = DFFEAS((((\ioData[12]~12\))), !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

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
	clk => \ALT_INV_iWR~combout\,
	datad => \ioData[12]~12\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(12));

-- Location: LC_X5_Y9_N7
\QENC1|sBUFFER[12]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(12) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(12));

-- Location: LC_X10_Y9_N1
\MOD_SRAMIO|IO_DAT_WR[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|IO_DAT_WR\(11) = DFFEAS((((\ioData[11]~11\))), !\iWR~combout\, \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

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
	clk => \ALT_INV_iWR~combout\,
	datad => \ioData[11]~11\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|IO_DAT_WR\(11));

-- Location: LC_X5_Y8_N6
\QENC1|sBUFFER[11]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(11) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(11)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(11),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(11));

-- Location: LC_X5_Y4_N5
\QENC1|sQEMCOUNTER[11]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(11) = DFFEAS(\QENC1|sQEMCOUNTER\(11) $ (\QENC1|sQEMDir~regout\ $ ((\QENC1|sQEMCOUNTER[10]~39\))), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(11), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[11]~41\ = CARRY((\QENC1|sQEMCOUNTER\(11) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[10]~39\)) # (!\QENC1|sQEMCOUNTER\(11) & ((!\QENC1|sQEMCOUNTER[10]~39\) # (!\QENC1|sQEMDir~regout\))))
-- \QENC1|sQEMCOUNTER[11]~41COUT1_106\ = CARRY((\QENC1|sQEMCOUNTER\(11) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[10]~39\)) # (!\QENC1|sQEMCOUNTER\(11) & ((!\QENC1|sQEMCOUNTER[10]~39\) # (!\QENC1|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(11),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(11),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[10]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(11),
	cout0 => \QENC1|sQEMCOUNTER[11]~41\,
	cout1 => \QENC1|sQEMCOUNTER[11]~41COUT1_106\);

-- Location: LC_X5_Y4_N6
\QENC1|sQEMCOUNTER[12]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(12) = DFFEAS(\QENC1|sQEMCOUNTER\(12) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[11]~41\) # (\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[11]~41COUT1_106\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(12), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[12]~43\ = CARRY((\QENC1|sQEMCOUNTER\(12) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[11]~41\))) # (!\QENC1|sQEMCOUNTER\(12) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[11]~41\)))
-- \QENC1|sQEMCOUNTER[12]~43COUT1_108\ = CARRY((\QENC1|sQEMCOUNTER\(12) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[11]~41COUT1_106\))) # (!\QENC1|sQEMCOUNTER\(12) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[11]~41COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(12),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(12),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[10]~39\,
	cin0 => \QENC1|sQEMCOUNTER[11]~41\,
	cin1 => \QENC1|sQEMCOUNTER[11]~41COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(12),
	cout0 => \QENC1|sQEMCOUNTER[12]~43\,
	cout1 => \QENC1|sQEMCOUNTER[12]~43COUT1_108\);

-- Location: LC_X5_Y4_N7
\QENC1|sQEMCOUNTER[13]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(13) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(13) $ (((!\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[12]~43\) # (\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[12]~43COUT1_108\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(13), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[13]~45\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(13) & !\QENC1|sQEMCOUNTER[12]~43\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[12]~43\) # (!\QENC1|sQEMCOUNTER\(13)))))
-- \QENC1|sQEMCOUNTER[13]~45COUT1_110\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(13) & !\QENC1|sQEMCOUNTER[12]~43COUT1_108\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[12]~43COUT1_108\) # (!\QENC1|sQEMCOUNTER\(13)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(13),
	datac => \QENC1|sBUFFER\(13),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[10]~39\,
	cin0 => \QENC1|sQEMCOUNTER[12]~43\,
	cin1 => \QENC1|sQEMCOUNTER[12]~43COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(13),
	cout0 => \QENC1|sQEMCOUNTER[13]~45\,
	cout1 => \QENC1|sQEMCOUNTER[13]~45COUT1_110\);

-- Location: LC_X5_Y4_N8
\QENC1|sQEMCOUNTER[14]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(14) = DFFEAS(\QENC1|sQEMCOUNTER\(14) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[13]~45\) # (\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[13]~45COUT1_110\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(14), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[14]~47\ = CARRY((\QENC1|sQEMCOUNTER\(14) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[13]~45\))) # (!\QENC1|sQEMCOUNTER\(14) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[13]~45\)))
-- \QENC1|sQEMCOUNTER[14]~47COUT1_112\ = CARRY((\QENC1|sQEMCOUNTER\(14) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[13]~45COUT1_110\))) # (!\QENC1|sQEMCOUNTER\(14) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[13]~45COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(14),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(14),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[10]~39\,
	cin0 => \QENC1|sQEMCOUNTER[13]~45\,
	cin1 => \QENC1|sQEMCOUNTER[13]~45COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(14),
	cout0 => \QENC1|sQEMCOUNTER[14]~47\,
	cout1 => \QENC1|sQEMCOUNTER[14]~47COUT1_112\);

-- Location: LC_X5_Y4_N9
\QENC1|sQEMCOUNTER[15]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(15) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(15) $ (((!\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[14]~47\) # (\QENC1|sQEMCOUNTER[10]~39\ & \QENC1|sQEMCOUNTER[14]~47COUT1_112\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(15), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[15]~33\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(15) & !\QENC1|sQEMCOUNTER[14]~47COUT1_112\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[14]~47COUT1_112\) # (!\QENC1|sQEMCOUNTER\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(15),
	datac => \QENC1|sBUFFER\(15),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[10]~39\,
	cin0 => \QENC1|sQEMCOUNTER[14]~47\,
	cin1 => \QENC1|sQEMCOUNTER[14]~47COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(15),
	cout => \QENC1|sQEMCOUNTER[15]~33\);

-- Location: LC_X8_Y4_N5
\QENC1|sBUFFER[18]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(18) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(18));

-- Location: LC_X9_Y4_N3
\QENC1|sBUFFER[17]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(17) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(1)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(17));

-- Location: LC_X8_Y4_N2
\QENC1|sBUFFER[16]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(16) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(16));

-- Location: LC_X6_Y4_N0
\QENC1|sQEMCOUNTER[16]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(16) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(16) $ ((!\QENC1|sQEMCOUNTER[15]~33\))), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(16), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[16]~17\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(16)) # (!\QENC1|sQEMCOUNTER[15]~33\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(16) & !\QENC1|sQEMCOUNTER[15]~33\)))
-- \QENC1|sQEMCOUNTER[16]~17COUT1_114\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(16)) # (!\QENC1|sQEMCOUNTER[15]~33\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(16) & !\QENC1|sQEMCOUNTER[15]~33\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(16),
	datac => \QENC1|sBUFFER\(16),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[15]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(16),
	cout0 => \QENC1|sQEMCOUNTER[16]~17\,
	cout1 => \QENC1|sQEMCOUNTER[16]~17COUT1_114\);

-- Location: LC_X6_Y4_N1
\QENC1|sQEMCOUNTER[17]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(17) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(17) $ (((!\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[16]~17\) # (\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[16]~17COUT1_114\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(17), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[17]~21\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(17) & !\QENC1|sQEMCOUNTER[16]~17\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[16]~17\) # (!\QENC1|sQEMCOUNTER\(17)))))
-- \QENC1|sQEMCOUNTER[17]~21COUT1_116\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(17) & !\QENC1|sQEMCOUNTER[16]~17COUT1_114\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[16]~17COUT1_114\) # (!\QENC1|sQEMCOUNTER\(17)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(17),
	datac => \QENC1|sBUFFER\(17),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[15]~33\,
	cin0 => \QENC1|sQEMCOUNTER[16]~17\,
	cin1 => \QENC1|sQEMCOUNTER[16]~17COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(17),
	cout0 => \QENC1|sQEMCOUNTER[17]~21\,
	cout1 => \QENC1|sQEMCOUNTER[17]~21COUT1_116\);

-- Location: LC_X6_Y4_N2
\QENC1|sQEMCOUNTER[18]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(18) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(18) $ ((!(!\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[17]~21\) # (\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[17]~21COUT1_116\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(18), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[18]~25\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(18)) # (!\QENC1|sQEMCOUNTER[17]~21\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(18) & !\QENC1|sQEMCOUNTER[17]~21\)))
-- \QENC1|sQEMCOUNTER[18]~25COUT1_118\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(18)) # (!\QENC1|sQEMCOUNTER[17]~21COUT1_116\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(18) & !\QENC1|sQEMCOUNTER[17]~21COUT1_116\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(18),
	datac => \QENC1|sBUFFER\(18),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[15]~33\,
	cin0 => \QENC1|sQEMCOUNTER[17]~21\,
	cin1 => \QENC1|sQEMCOUNTER[17]~21COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(18),
	cout0 => \QENC1|sQEMCOUNTER[18]~25\,
	cout1 => \QENC1|sQEMCOUNTER[18]~25COUT1_118\);

-- Location: LC_X6_Y4_N3
\QENC1|sQEMCOUNTER[19]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(19) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(19) $ (((!\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[18]~25\) # (\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[18]~25COUT1_118\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(19), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[19]~29\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(19) & !\QENC1|sQEMCOUNTER[18]~25\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[18]~25\) # (!\QENC1|sQEMCOUNTER\(19)))))
-- \QENC1|sQEMCOUNTER[19]~29COUT1_120\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(19) & !\QENC1|sQEMCOUNTER[18]~25COUT1_118\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[18]~25COUT1_118\) # (!\QENC1|sQEMCOUNTER\(19)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(19),
	datac => \QENC1|sBUFFER\(19),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[15]~33\,
	cin0 => \QENC1|sQEMCOUNTER[18]~25\,
	cin1 => \QENC1|sQEMCOUNTER[18]~25COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(19),
	cout0 => \QENC1|sQEMCOUNTER[19]~29\,
	cout1 => \QENC1|sQEMCOUNTER[19]~29COUT1_120\);

-- Location: LC_X7_Y9_N4
\MOD_IOSPACE|Mux4~4\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux4~4_combout\ = (((!\MOD_SRAMIO|IO_ADDR\(4) & !\MOD_SRAMIO|IO_ADDR\(0))))

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
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux4~4_combout\);

-- Location: LC_X6_Y9_N4
\MOD_IOSPACE|oWrPWMDUTY1\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrPWMDUTY1~regout\ = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(2) & (\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux5~0\ & \MOD_IOSPACE|Mux4~4_combout\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|Mux5~0\,
	datad => \MOD_IOSPACE|Mux4~4_combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrPWMDUTY1~regout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iSYNC_SEL1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iSYNC_SEL1,
	combout => \iSYNC_SEL1~combout\);

-- Location: LC_X4_Y6_N2
\SYNCMOD|sSYNDIR[4]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|sSYNDIR\(4) = DFFEAS((\iSYNC_SEL1~combout\ & (((!\iSYNC_SEL2~combout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \iCLK~combout\,
	dataa => \iSYNC_SEL1~combout\,
	datad => \iSYNC_SEL2~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SYNCMOD|sSYNDIR\(4));

-- Location: LC_X5_Y6_N5
\MOD_IOSPACE|Mux30~6\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~6_combout\ = (((\MOD_SRAMIO|IO_ADDR\(4) & \SYNCMOD|sSYNDIR\(4))))

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
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \SYNCMOD|sSYNDIR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~6_combout\);

-- Location: LC_X5_Y6_N1
\MOD_PWM1|sDUTY[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~2\ = (\MOD_IOSPACE|oData[4]~3_combout\ & (((\MOD_SRAMIO|IO_ADDR\(6))))) # (!\MOD_IOSPACE|oData[4]~3_combout\ & ((\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_IOSPACE|Mux30~6_combout\)) # (!\MOD_SRAMIO|IO_ADDR\(6) & ((D1_sDUTY[3])))))
-- \MOD_PWM1|sDUTY\(3) = DFFEAS(\MOD_IOSPACE|Mux31~2\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_IOSPACE|Mux30~6_combout\,
	datab => \MOD_IOSPACE|oData[4]~3_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~2\,
	regout => \MOD_PWM1|sDUTY\(3));

-- Location: LC_X13_Y8_N6
\MOD_IOSPACE|sQEMBUFFER1[0]~0\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\ = (\MOD_IOSPACE|Mux13~0\ & (!\iCS_FPGA~combout\ & (\MOD_IOSPACE|Mux1~0_combout\ & \MOD_IOSPACE|Mux5~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|Mux13~0\,
	datab => \iCS_FPGA~combout\,
	datac => \MOD_IOSPACE|Mux1~0_combout\,
	datad => \MOD_IOSPACE|Mux5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\);

-- Location: LC_X5_Y6_N2
\MOD_IOSPACE|sQEMBUFFER1[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~3\ = (\MOD_IOSPACE|oData[4]~3_combout\ & ((\MOD_IOSPACE|Mux31~2\ & (\ioSYNC[3]~3\)) # (!\MOD_IOSPACE|Mux31~2\ & ((C1_sQEMBUFFER1[3]))))) # (!\MOD_IOSPACE|oData[4]~3_combout\ & (((\MOD_IOSPACE|Mux31~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \ioSYNC[3]~3\,
	datab => \MOD_IOSPACE|oData[4]~3_combout\,
	datac => \QENC1|sQEMCOUNTER\(19),
	datad => \MOD_IOSPACE|Mux31~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~3\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(3));

-- Location: LC_X14_Y6_N6
\MOD_PWM2|sDUTY[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(3) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(3));

-- Location: LC_X14_Y9_N4
\QENC2|sBUFFER[19]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(19) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(3)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(19));

-- Location: LC_X14_Y9_N1
\QENC2|sBUFFER[18]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(18) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(18));

-- Location: LC_X13_Y9_N8
\QENC2|sBUFFER[16]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(16) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(16));

-- Location: LC_X13_Y10_N0
\QENC2|sQEMCOUNTER[16]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(16) = DFFEAS(\QENC2|sQEMCOUNTER\(16) $ (\QENC2|sQEMDir~regout\ $ ((!\QENC2|sQEMCOUNTER[15]~33\))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(16), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[16]~17\ = CARRY((\QENC2|sQEMCOUNTER\(16) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[15]~33\))) # (!\QENC2|sQEMCOUNTER\(16) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[15]~33\)))
-- \QENC2|sQEMCOUNTER[16]~17COUT1_114\ = CARRY((\QENC2|sQEMCOUNTER\(16) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[15]~33\))) # (!\QENC2|sQEMCOUNTER\(16) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[15]~33\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(16),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(16),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[15]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(16),
	cout0 => \QENC2|sQEMCOUNTER[16]~17\,
	cout1 => \QENC2|sQEMCOUNTER[16]~17COUT1_114\);

-- Location: LC_X13_Y10_N1
\QENC2|sQEMCOUNTER[17]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(17) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(17) $ (((!\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[16]~17\) # (\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[16]~17COUT1_114\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(17), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[17]~21\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(17) & !\QENC2|sQEMCOUNTER[16]~17\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[16]~17\) # (!\QENC2|sQEMCOUNTER\(17)))))
-- \QENC2|sQEMCOUNTER[17]~21COUT1_116\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(17) & !\QENC2|sQEMCOUNTER[16]~17COUT1_114\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[16]~17COUT1_114\) # (!\QENC2|sQEMCOUNTER\(17)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(17),
	datac => \QENC2|sBUFFER\(17),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[15]~33\,
	cin0 => \QENC2|sQEMCOUNTER[16]~17\,
	cin1 => \QENC2|sQEMCOUNTER[16]~17COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(17),
	cout0 => \QENC2|sQEMCOUNTER[17]~21\,
	cout1 => \QENC2|sQEMCOUNTER[17]~21COUT1_116\);

-- Location: LC_X13_Y10_N2
\QENC2|sQEMCOUNTER[18]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(18) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(18) $ ((!(!\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[17]~21\) # (\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[17]~21COUT1_116\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(18), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[18]~25\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(18)) # (!\QENC2|sQEMCOUNTER[17]~21\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(18) & !\QENC2|sQEMCOUNTER[17]~21\)))
-- \QENC2|sQEMCOUNTER[18]~25COUT1_118\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(18)) # (!\QENC2|sQEMCOUNTER[17]~21COUT1_116\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(18) & !\QENC2|sQEMCOUNTER[17]~21COUT1_116\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(18),
	datac => \QENC2|sBUFFER\(18),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[15]~33\,
	cin0 => \QENC2|sQEMCOUNTER[17]~21\,
	cin1 => \QENC2|sQEMCOUNTER[17]~21COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(18),
	cout0 => \QENC2|sQEMCOUNTER[18]~25\,
	cout1 => \QENC2|sQEMCOUNTER[18]~25COUT1_118\);

-- Location: LC_X13_Y10_N3
\QENC2|sQEMCOUNTER[19]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(19) = DFFEAS(\QENC2|sQEMCOUNTER\(19) $ (\QENC2|sQEMDir~regout\ $ (((!\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[18]~25\) # (\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[18]~25COUT1_118\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(19), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[19]~29\ = CARRY((\QENC2|sQEMCOUNTER\(19) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[18]~25\)) # (!\QENC2|sQEMCOUNTER\(19) & ((!\QENC2|sQEMCOUNTER[18]~25\) # (!\QENC2|sQEMDir~regout\))))
-- \QENC2|sQEMCOUNTER[19]~29COUT1_120\ = CARRY((\QENC2|sQEMCOUNTER\(19) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[18]~25COUT1_118\)) # (!\QENC2|sQEMCOUNTER\(19) & ((!\QENC2|sQEMCOUNTER[18]~25COUT1_118\) # (!\QENC2|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(19),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(19),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[15]~33\,
	cin0 => \QENC2|sQEMCOUNTER[18]~25\,
	cin1 => \QENC2|sQEMCOUNTER[18]~25COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(19),
	cout0 => \QENC2|sQEMCOUNTER[19]~29\,
	cout1 => \QENC2|sQEMCOUNTER[19]~29COUT1_120\);

-- Location: LC_X15_Y5_N9
\MOD_IOSPACE|oWrPWMPERIOD2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrPWMPERIOD2~regout\ = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|Mux5~0\ & \MOD_IOSPACE|oData[8]~2\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_IOSPACE|Mux5~0\,
	datad => \MOD_IOSPACE|oData[8]~2\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrPWMPERIOD2~regout\);

-- Location: LC_X13_Y6_N2
\MOD_PWM2|sPWMPERIOD[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~9\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\QENC2|sQEMCOUNTER\(3))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & (D2_sPWMPERIOD[3])))
-- \MOD_PWM2|sPWMPERIOD\(3) = DFFEAS(\MOD_IOSPACE|Mux31~9\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	datad => \QENC2|sQEMCOUNTER\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~9\,
	regout => \MOD_PWM2|sPWMPERIOD\(3));

-- Location: LC_X10_Y6_N4
\MOD_IOSPACE|sQEMBUFFER2[0]~0\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\ = (\MOD_IOSPACE|oData[8]~2\ & (!\iCS_FPGA~combout\ & (\MOD_IOSPACE|Mux5~0\ & \MOD_IOSPACE|Mux10~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[8]~2\,
	datab => \iCS_FPGA~combout\,
	datac => \MOD_IOSPACE|Mux5~0\,
	datad => \MOD_IOSPACE|Mux10~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\);

-- Location: LC_X13_Y6_N1
\MOD_IOSPACE|sQEMBUFFER2[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~10\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux31~9\ & ((C1_sQEMBUFFER2[3]))) # (!\MOD_IOSPACE|Mux31~9\ & (\MOD_PWM2|sDUTY\(3))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux31~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_PWM2|sDUTY\(3),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \QENC2|sQEMCOUNTER\(19),
	datad => \MOD_IOSPACE|Mux31~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~10\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(3));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(3),
	combout => \iInput~combout\(3));

-- Location: LC_X9_Y9_N9
\MOD_IOSPACE|oWrRESETPERIOD\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrRESETPERIOD~regout\ = DFFEAS((\MOD_IOSPACE|Mux6~4\ & (\MOD_SRAMIO|IO_ADDR\(5) & (!\MOD_SRAMIO|IO_ADDR\(6) & \MOD_IOSPACE|Mux13~0\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_IOSPACE|Mux6~4\,
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(6),
	datad => \MOD_IOSPACE|Mux13~0\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrRESETPERIOD~regout\);

-- Location: LC_X6_Y8_N7
\MOD_RESET|sResetPeriod[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sResetPeriod\(3) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(3)))), \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sResetPeriod\(3));

-- Location: LC_X10_Y9_N8
\MOD_IOSPACE|Mux27~0\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~0_combout\ = (!\MOD_SRAMIO|IO_ADDR\(5) & (((!\MOD_SRAMIO|IO_ADDR\(6)))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~0_combout\);

-- Location: LC_X13_Y8_N7
\MOD_IOSPACE|oWrPWMPERIOD1\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrPWMPERIOD1~regout\ = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|Mux1~0_combout\ & \MOD_IOSPACE|Mux5~0\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_IOSPACE|Mux1~0_combout\,
	datad => \MOD_IOSPACE|Mux5~0\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrPWMPERIOD1~regout\);

-- Location: LC_X6_Y8_N4
\MOD_PWM1|sPWMPERIOD[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~4\ = (\MOD_IOSPACE|oData[4]~5\ & (((\QENC1|sQEMCOUNTER\(3))) # (!\MOD_IOSPACE|Mux27~0_combout\))) # (!\MOD_IOSPACE|oData[4]~5\ & (\MOD_IOSPACE|Mux27~0_combout\ & (D1_sPWMPERIOD[3])))
-- \MOD_PWM1|sPWMPERIOD\(3) = DFFEAS(\MOD_IOSPACE|Mux31~4\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[4]~5\,
	datab => \MOD_IOSPACE|Mux27~0_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	datad => \QENC1|sQEMCOUNTER\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~4\,
	regout => \MOD_PWM1|sPWMPERIOD\(3));

-- Location: LC_X7_Y9_N0
\MOD_IOSPACE|oWrSYNCONFIG2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrSYNCONFIG2~regout\ = DFFEAS((\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_IOSPACE|Mux13~0\ & \MOD_IOSPACE|Mux6~4\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_IOSPACE|Mux13~0\,
	datad => \MOD_IOSPACE|Mux6~4\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrSYNCONFIG2~regout\);

-- Location: LC_X8_Y9_N7
\MOD_IOSPACE|oData[4]~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~7_combout\ = (((\MOD_SRAMIO|IO_ADDR\(0)) # (!\MOD_SRAMIO|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~7_combout\);

-- Location: LC_X8_Y8_N5
\MOD_SEG|s7SEGOUTPUT[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(3) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(3)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(3));

-- Location: LC_X8_Y8_N4
\MOD_SEG|oLEDOutput[3]~3\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[3]~3_combout\ = ((\iPWM_LED~combout\) # ((!\MOD_SEG|s7SEGOUTPUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \iPWM_LED~combout\,
	datac => \MOD_SEG|s7SEGOUTPUT\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[3]~3_combout\);

-- Location: LC_X7_Y9_N8
\MOD_IOSPACE|oWrOUTPUTS\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrOUTPUTS~regout\ = DFFEAS((\MOD_IOSPACE|Mux4~4_combout\ & (\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_SRAMIO|IO_ADDR\(5) & \MOD_IOSPACE|Mux6~4\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_IOSPACE|Mux4~4_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_IOSPACE|Mux6~4\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrOUTPUTS~regout\);

-- Location: LC_X8_Y9_N5
\MOD_IOSPACE|oData[4]~6\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~6_combout\ = ((\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(0)) # (\MOD_SRAMIO|IO_ADDR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~6_combout\);

-- Location: LC_X9_Y9_N1
\MOD_IOSPACE|oWrSYNCONFIG1\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrSYNCONFIG1~regout\ = DFFEAS((\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_IOSPACE|Mux6~4\ & \MOD_IOSPACE|Mux10~4\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_IOSPACE|Mux6~4\,
	datad => \MOD_IOSPACE|Mux10~4\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrSYNCONFIG1~regout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(9),
	combout => \iInput~combout\(9));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(5),
	combout => \iInput~combout\(5));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(4),
	combout => \iInput~combout\(4));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(6),
	combout => \iInput~combout\(6));

-- Location: LC_X11_Y4_N3
\SYNCMOD|sSYNCONFIG[0]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux2~0\ = (L1_sSYNCONFIG[0] & ((\iInput~combout\(5)) # ((\SYNCMOD|sSYNCONFIG\(1))))) # (!L1_sSYNCONFIG[0] & (((\iInput~combout\(4) & !\SYNCMOD|sSYNCONFIG\(1)))))
-- \SYNCMOD|sSYNCONFIG\(0) = DFFEAS(\SYNCMOD|Mux2~0\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \iInput~combout\(5),
	datab => \iInput~combout\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \SYNCMOD|sSYNCONFIG\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux2~0\,
	regout => \SYNCMOD|sSYNCONFIG\(0));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(7),
	combout => \iInput~combout\(7));

-- Location: LC_X8_Y10_N9
\SYNCMOD|sSYNCONFIG[1]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux2~1\ = (\SYNCMOD|Mux2~0\ & (((\iInput~combout\(7)) # (!L1_sSYNCONFIG[1])))) # (!\SYNCMOD|Mux2~0\ & (\iInput~combout\(6) & (L1_sSYNCONFIG[1])))
-- \SYNCMOD|sSYNCONFIG\(1) = DFFEAS(\SYNCMOD|Mux2~1\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \iInput~combout\(6),
	datab => \SYNCMOD|Mux2~0\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \iInput~combout\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux2~1\,
	regout => \SYNCMOD|sSYNCONFIG\(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(8),
	combout => \iInput~combout\(8));

-- Location: LC_X9_Y6_N8
\SYNCMOD|sSYNCONFIG[3]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux2~5\ = (L1_sSYNCONFIG[3] & ((\SYNCMOD|sSYNCONFIG\(0) & (\iInput~combout\(9))) # (!\SYNCMOD|sSYNCONFIG\(0) & ((\iInput~combout\(8))))))
-- \SYNCMOD|sSYNCONFIG\(3) = DFFEAS(\SYNCMOD|Mux2~5\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \iInput~combout\(9),
	datab => \SYNCMOD|sSYNCONFIG\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	datad => \iInput~combout\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux2~5\,
	regout => \SYNCMOD|sSYNCONFIG\(3));

-- Location: LC_X8_Y8_N1
\OPMOD|sOutput[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~5\ = (\MOD_IOSPACE|oData[4]~6_combout\ & ((\MOD_IOSPACE|oData[4]~7_combout\) # ((\SYNCMOD|sSYNCONFIG\(3))))) # (!\MOD_IOSPACE|oData[4]~6_combout\ & (!\MOD_IOSPACE|oData[4]~7_combout\ & (J1_sOutput[3])))
-- \OPMOD|sOutput\(3) = DFFEAS(\MOD_IOSPACE|Mux31~5\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[4]~6_combout\,
	datab => \MOD_IOSPACE|oData[4]~7_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	datad => \SYNCMOD|sSYNCONFIG\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~5\,
	regout => \OPMOD|sOutput\(3));

-- Location: LC_X7_Y8_N4
\SYNCMOD|sSYNCONFIG[19]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~6\ = (\MOD_IOSPACE|oData[4]~7_combout\ & ((\MOD_IOSPACE|Mux31~5\ & ((L1_sSYNCONFIG[19]))) # (!\MOD_IOSPACE|Mux31~5\ & (\MOD_SEG|oLEDOutput[3]~3_combout\)))) # (!\MOD_IOSPACE|oData[4]~7_combout\ & (((\MOD_IOSPACE|Mux31~5\))))
-- \SYNCMOD|sSYNCONFIG\(19) = DFFEAS(\MOD_IOSPACE|Mux31~6\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[4]~7_combout\,
	datab => \MOD_SEG|oLEDOutput[3]~3_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	datad => \MOD_IOSPACE|Mux31~5\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~6\,
	regout => \SYNCMOD|sSYNCONFIG\(19));

-- Location: LC_X6_Y8_N5
\MOD_IOSPACE|Mux31~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~7_combout\ = (\MOD_IOSPACE|Mux27~0_combout\ & (((\MOD_IOSPACE|Mux31~4\)))) # (!\MOD_IOSPACE|Mux27~0_combout\ & ((\MOD_IOSPACE|Mux31~4\ & ((\MOD_IOSPACE|Mux31~6\))) # (!\MOD_IOSPACE|Mux31~4\ & (!\MOD_RESET|sResetPeriod\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1c1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|sResetPeriod\(3),
	datab => \MOD_IOSPACE|Mux27~0_combout\,
	datac => \MOD_IOSPACE|Mux31~4\,
	datad => \MOD_IOSPACE|Mux31~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~7_combout\);

-- Location: LC_X6_Y8_N6
\MOD_IOSPACE|Mux31~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~8_combout\ = (\MOD_IOSPACE|oData[4]~4_combout\ & ((\iInput~combout\(3)) # ((!\MOD_IOSPACE|Mux1~0_combout\)))) # (!\MOD_IOSPACE|oData[4]~4_combout\ & (((\MOD_IOSPACE|Mux1~0_combout\ & \MOD_IOSPACE|Mux31~7_combout\))))

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
	dataa => \iInput~combout\(3),
	datab => \MOD_IOSPACE|oData[4]~4_combout\,
	datac => \MOD_IOSPACE|Mux1~0_combout\,
	datad => \MOD_IOSPACE|Mux31~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~8_combout\);

-- Location: LC_X6_Y6_N8
\MOD_IOSPACE|Mux31~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux31~11_combout\ = (\MOD_IOSPACE|Mux1~0_combout\ & (((\MOD_IOSPACE|Mux31~8_combout\)))) # (!\MOD_IOSPACE|Mux1~0_combout\ & ((\MOD_IOSPACE|Mux31~8_combout\ & ((\MOD_IOSPACE|Mux31~10\))) # (!\MOD_IOSPACE|Mux31~8_combout\ & 
-- (\MOD_IOSPACE|Mux31~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|Mux1~0_combout\,
	datab => \MOD_IOSPACE|Mux31~3\,
	datac => \MOD_IOSPACE|Mux31~10\,
	datad => \MOD_IOSPACE|Mux31~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux31~11_combout\);

-- Location: LC_X6_Y6_N9
\MOD_IOSPACE|oData[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(3) = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(7) & (!\MOD_IOSPACE|oData[4]~12_combout\ & (!\MOD_SRAMIO|IO_ADDR\(3) & \MOD_IOSPACE|Mux31~11_combout\))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(7),
	datab => \MOD_IOSPACE|oData[4]~12_combout\,
	datac => \MOD_SRAMIO|IO_ADDR\(3),
	datad => \MOD_IOSPACE|Mux31~11_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(3));

-- Location: LC_X10_Y10_N1
\QENC2|sBUFFER[3]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(3) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(3), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(3));

-- Location: LC_X10_Y10_N9
\QENC2|sBUFFER[2]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(2) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(2)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(2));

-- Location: LC_X9_Y10_N3
\QENC2|sBUFFER[1]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(1) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(1)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(1));

-- Location: LC_X11_Y10_N5
\QENC2|sQEMCOUNTER[1]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(1) = DFFEAS(\QENC2|sQEMCOUNTER\(1) $ (\QENC2|sQEMDir~regout\ $ ((\QENC2|sQEMCOUNTER[0]~1\))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(1), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[1]~5\ = CARRY((\QENC2|sQEMCOUNTER\(1) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[0]~1\)) # (!\QENC2|sQEMCOUNTER\(1) & ((!\QENC2|sQEMCOUNTER[0]~1\) # (!\QENC2|sQEMDir~regout\))))
-- \QENC2|sQEMCOUNTER[1]~5COUT1_90\ = CARRY((\QENC2|sQEMCOUNTER\(1) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[0]~1\)) # (!\QENC2|sQEMCOUNTER\(1) & ((!\QENC2|sQEMCOUNTER[0]~1\) # (!\QENC2|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(1),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(1),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(1),
	cout0 => \QENC2|sQEMCOUNTER[1]~5\,
	cout1 => \QENC2|sQEMCOUNTER[1]~5COUT1_90\);

-- Location: LC_X11_Y10_N6
\QENC2|sQEMCOUNTER[2]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(2) = DFFEAS(\QENC2|sQEMCOUNTER\(2) $ (\QENC2|sQEMDir~regout\ $ ((!(!\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[1]~5\) # (\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[1]~5COUT1_90\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(2), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[2]~9\ = CARRY((\QENC2|sQEMCOUNTER\(2) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[1]~5\))) # (!\QENC2|sQEMCOUNTER\(2) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[1]~5\)))
-- \QENC2|sQEMCOUNTER[2]~9COUT1_92\ = CARRY((\QENC2|sQEMCOUNTER\(2) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[1]~5COUT1_90\))) # (!\QENC2|sQEMCOUNTER\(2) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[1]~5COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(2),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(2),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[0]~1\,
	cin0 => \QENC2|sQEMCOUNTER[1]~5\,
	cin1 => \QENC2|sQEMCOUNTER[1]~5COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(2),
	cout0 => \QENC2|sQEMCOUNTER[2]~9\,
	cout1 => \QENC2|sQEMCOUNTER[2]~9COUT1_92\);

-- Location: LC_X11_Y10_N7
\QENC2|sQEMCOUNTER[3]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(3) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(3) $ (((!\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[2]~9\) # (\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[2]~9COUT1_92\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(3), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[3]~13\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(3) & !\QENC2|sQEMCOUNTER[2]~9\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[2]~9\) # (!\QENC2|sQEMCOUNTER\(3)))))
-- \QENC2|sQEMCOUNTER[3]~13COUT1_94\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(3) & !\QENC2|sQEMCOUNTER[2]~9COUT1_92\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[2]~9COUT1_92\) # (!\QENC2|sQEMCOUNTER\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(3),
	datac => \QENC2|sBUFFER\(3),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[0]~1\,
	cin0 => \QENC2|sQEMCOUNTER[2]~9\,
	cin1 => \QENC2|sQEMCOUNTER[2]~9COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(3),
	cout0 => \QENC2|sQEMCOUNTER[3]~13\,
	cout1 => \QENC2|sQEMCOUNTER[3]~13COUT1_94\);

-- Location: LC_X11_Y10_N8
\QENC2|sQEMCOUNTER[4]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(4) = DFFEAS(\QENC2|sQEMCOUNTER\(4) $ (\QENC2|sQEMDir~regout\ $ ((!(!\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[3]~13\) # (\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[3]~13COUT1_94\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(4), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[4]~3\ = CARRY((\QENC2|sQEMCOUNTER\(4) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[3]~13\))) # (!\QENC2|sQEMCOUNTER\(4) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[3]~13\)))
-- \QENC2|sQEMCOUNTER[4]~3COUT1_96\ = CARRY((\QENC2|sQEMCOUNTER\(4) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[3]~13COUT1_94\))) # (!\QENC2|sQEMCOUNTER\(4) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[3]~13COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(4),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(4),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[0]~1\,
	cin0 => \QENC2|sQEMCOUNTER[3]~13\,
	cin1 => \QENC2|sQEMCOUNTER[3]~13COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(4),
	cout0 => \QENC2|sQEMCOUNTER[4]~3\,
	cout1 => \QENC2|sQEMCOUNTER[4]~3COUT1_96\);

-- Location: LC_X11_Y10_N9
\QENC2|sQEMCOUNTER[5]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(5) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(5) $ (((!\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[4]~3\) # (\QENC2|sQEMCOUNTER[0]~1\ & \QENC2|sQEMCOUNTER[4]~3COUT1_96\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(5), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[5]~7\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(5) & !\QENC2|sQEMCOUNTER[4]~3COUT1_96\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[4]~3COUT1_96\) # (!\QENC2|sQEMCOUNTER\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(5),
	datac => \QENC2|sBUFFER\(5),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[0]~1\,
	cin0 => \QENC2|sQEMCOUNTER[4]~3\,
	cin1 => \QENC2|sQEMCOUNTER[4]~3COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(5),
	cout => \QENC2|sQEMCOUNTER[5]~7\);

-- Location: LC_X9_Y10_N9
\QENC2|sBUFFER[9]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(9) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(9));

-- Location: LC_X9_Y10_N4
\QENC2|sBUFFER[8]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(8) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(8));

-- Location: LC_X9_Y10_N5
\QENC2|sBUFFER[7]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(7) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(7));

-- Location: LC_X9_Y10_N1
\QENC2|sBUFFER[6]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(6) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(6)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(6));

-- Location: LC_X12_Y10_N0
\QENC2|sQEMCOUNTER[6]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(6) = DFFEAS(\QENC2|sQEMCOUNTER\(6) $ (\QENC2|sQEMDir~regout\ $ ((!\QENC2|sQEMCOUNTER[5]~7\))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(6), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[6]~11\ = CARRY((\QENC2|sQEMCOUNTER\(6) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[5]~7\))) # (!\QENC2|sQEMCOUNTER\(6) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[5]~7\)))
-- \QENC2|sQEMCOUNTER[6]~11COUT1_98\ = CARRY((\QENC2|sQEMCOUNTER\(6) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[5]~7\))) # (!\QENC2|sQEMCOUNTER\(6) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(6),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(6),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[5]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(6),
	cout0 => \QENC2|sQEMCOUNTER[6]~11\,
	cout1 => \QENC2|sQEMCOUNTER[6]~11COUT1_98\);

-- Location: LC_X12_Y10_N1
\QENC2|sQEMCOUNTER[7]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(7) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(7) $ (((!\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[6]~11\) # (\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[6]~11COUT1_98\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(7), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[7]~15\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(7) & !\QENC2|sQEMCOUNTER[6]~11\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[6]~11\) # (!\QENC2|sQEMCOUNTER\(7)))))
-- \QENC2|sQEMCOUNTER[7]~15COUT1_100\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(7) & !\QENC2|sQEMCOUNTER[6]~11COUT1_98\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[6]~11COUT1_98\) # (!\QENC2|sQEMCOUNTER\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(7),
	datac => \QENC2|sBUFFER\(7),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[5]~7\,
	cin0 => \QENC2|sQEMCOUNTER[6]~11\,
	cin1 => \QENC2|sQEMCOUNTER[6]~11COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(7),
	cout0 => \QENC2|sQEMCOUNTER[7]~15\,
	cout1 => \QENC2|sQEMCOUNTER[7]~15COUT1_100\);

-- Location: LC_X12_Y10_N2
\QENC2|sQEMCOUNTER[8]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(8) = DFFEAS(\QENC2|sQEMCOUNTER\(8) $ (\QENC2|sQEMDir~regout\ $ ((!(!\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[7]~15\) # (\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[7]~15COUT1_100\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(8), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[8]~35\ = CARRY((\QENC2|sQEMCOUNTER\(8) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[7]~15\))) # (!\QENC2|sQEMCOUNTER\(8) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[7]~15\)))
-- \QENC2|sQEMCOUNTER[8]~35COUT1_102\ = CARRY((\QENC2|sQEMCOUNTER\(8) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[7]~15COUT1_100\))) # (!\QENC2|sQEMCOUNTER\(8) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[7]~15COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(8),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(8),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[5]~7\,
	cin0 => \QENC2|sQEMCOUNTER[7]~15\,
	cin1 => \QENC2|sQEMCOUNTER[7]~15COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(8),
	cout0 => \QENC2|sQEMCOUNTER[8]~35\,
	cout1 => \QENC2|sQEMCOUNTER[8]~35COUT1_102\);

-- Location: LC_X12_Y10_N3
\QENC2|sQEMCOUNTER[9]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(9) = DFFEAS(\QENC2|sQEMCOUNTER\(9) $ (\QENC2|sQEMDir~regout\ $ (((!\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[8]~35\) # (\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[8]~35COUT1_102\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(9), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[9]~37\ = CARRY((\QENC2|sQEMCOUNTER\(9) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[8]~35\)) # (!\QENC2|sQEMCOUNTER\(9) & ((!\QENC2|sQEMCOUNTER[8]~35\) # (!\QENC2|sQEMDir~regout\))))
-- \QENC2|sQEMCOUNTER[9]~37COUT1_104\ = CARRY((\QENC2|sQEMCOUNTER\(9) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[8]~35COUT1_102\)) # (!\QENC2|sQEMCOUNTER\(9) & ((!\QENC2|sQEMCOUNTER[8]~35COUT1_102\) # (!\QENC2|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(9),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(9),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[5]~7\,
	cin0 => \QENC2|sQEMCOUNTER[8]~35\,
	cin1 => \QENC2|sQEMCOUNTER[8]~35COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(9),
	cout0 => \QENC2|sQEMCOUNTER[9]~37\,
	cout1 => \QENC2|sQEMCOUNTER[9]~37COUT1_104\);

-- Location: LC_X12_Y10_N4
\QENC2|sQEMCOUNTER[10]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(10) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(10) $ ((!(!\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[9]~37\) # (\QENC2|sQEMCOUNTER[5]~7\ & \QENC2|sQEMCOUNTER[9]~37COUT1_104\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(10), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[10]~39\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(10)) # (!\QENC2|sQEMCOUNTER[9]~37COUT1_104\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(10) & !\QENC2|sQEMCOUNTER[9]~37COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(10),
	datac => \QENC2|sBUFFER\(10),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[5]~7\,
	cin0 => \QENC2|sQEMCOUNTER[9]~37\,
	cin1 => \QENC2|sQEMCOUNTER[9]~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(10),
	cout => \QENC2|sQEMCOUNTER[10]~39\);

-- Location: LC_X10_Y10_N0
\QENC2|sBUFFER[14]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(14) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(14)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(14),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(14));

-- Location: LC_X9_Y10_N8
\QENC2|sBUFFER[13]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(13) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(13)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(13),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(13));

-- Location: LC_X9_Y10_N6
\QENC2|sBUFFER[12]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(12) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(12)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(12),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(12));

-- Location: LC_X10_Y10_N8
\QENC2|sBUFFER[11]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(11) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\, \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERL2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(11));

-- Location: LC_X12_Y10_N5
\QENC2|sQEMCOUNTER[11]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(11) = DFFEAS(\QENC2|sQEMCOUNTER\(11) $ (\QENC2|sQEMDir~regout\ $ ((\QENC2|sQEMCOUNTER[10]~39\))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(11), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[11]~41\ = CARRY((\QENC2|sQEMCOUNTER\(11) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[10]~39\)) # (!\QENC2|sQEMCOUNTER\(11) & ((!\QENC2|sQEMCOUNTER[10]~39\) # (!\QENC2|sQEMDir~regout\))))
-- \QENC2|sQEMCOUNTER[11]~41COUT1_106\ = CARRY((\QENC2|sQEMCOUNTER\(11) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[10]~39\)) # (!\QENC2|sQEMCOUNTER\(11) & ((!\QENC2|sQEMCOUNTER[10]~39\) # (!\QENC2|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(11),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(11),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[10]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(11),
	cout0 => \QENC2|sQEMCOUNTER[11]~41\,
	cout1 => \QENC2|sQEMCOUNTER[11]~41COUT1_106\);

-- Location: LC_X12_Y10_N6
\QENC2|sQEMCOUNTER[12]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(12) = DFFEAS(\QENC2|sQEMCOUNTER\(12) $ (\QENC2|sQEMDir~regout\ $ ((!(!\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[11]~41\) # (\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[11]~41COUT1_106\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(12), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[12]~43\ = CARRY((\QENC2|sQEMCOUNTER\(12) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[11]~41\))) # (!\QENC2|sQEMCOUNTER\(12) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[11]~41\)))
-- \QENC2|sQEMCOUNTER[12]~43COUT1_108\ = CARRY((\QENC2|sQEMCOUNTER\(12) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[11]~41COUT1_106\))) # (!\QENC2|sQEMCOUNTER\(12) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[11]~41COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(12),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(12),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[10]~39\,
	cin0 => \QENC2|sQEMCOUNTER[11]~41\,
	cin1 => \QENC2|sQEMCOUNTER[11]~41COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(12),
	cout0 => \QENC2|sQEMCOUNTER[12]~43\,
	cout1 => \QENC2|sQEMCOUNTER[12]~43COUT1_108\);

-- Location: LC_X12_Y10_N7
\QENC2|sQEMCOUNTER[13]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(13) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(13) $ (((!\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[12]~43\) # (\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[12]~43COUT1_108\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(13), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[13]~45\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(13) & !\QENC2|sQEMCOUNTER[12]~43\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[12]~43\) # (!\QENC2|sQEMCOUNTER\(13)))))
-- \QENC2|sQEMCOUNTER[13]~45COUT1_110\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(13) & !\QENC2|sQEMCOUNTER[12]~43COUT1_108\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[12]~43COUT1_108\) # (!\QENC2|sQEMCOUNTER\(13)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(13),
	datac => \QENC2|sBUFFER\(13),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[10]~39\,
	cin0 => \QENC2|sQEMCOUNTER[12]~43\,
	cin1 => \QENC2|sQEMCOUNTER[12]~43COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(13),
	cout0 => \QENC2|sQEMCOUNTER[13]~45\,
	cout1 => \QENC2|sQEMCOUNTER[13]~45COUT1_110\);

-- Location: LC_X12_Y10_N8
\QENC2|sQEMCOUNTER[14]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(14) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(14) $ ((!(!\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[13]~45\) # (\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[13]~45COUT1_110\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(14), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[14]~47\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(14)) # (!\QENC2|sQEMCOUNTER[13]~45\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(14) & !\QENC2|sQEMCOUNTER[13]~45\)))
-- \QENC2|sQEMCOUNTER[14]~47COUT1_112\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(14)) # (!\QENC2|sQEMCOUNTER[13]~45COUT1_110\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(14) & !\QENC2|sQEMCOUNTER[13]~45COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(14),
	datac => \QENC2|sBUFFER\(14),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[10]~39\,
	cin0 => \QENC2|sQEMCOUNTER[13]~45\,
	cin1 => \QENC2|sQEMCOUNTER[13]~45COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(14),
	cout0 => \QENC2|sQEMCOUNTER[14]~47\,
	cout1 => \QENC2|sQEMCOUNTER[14]~47COUT1_112\);

-- Location: LC_X12_Y10_N9
\QENC2|sQEMCOUNTER[15]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(15) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(15) $ (((!\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[14]~47\) # (\QENC2|sQEMCOUNTER[10]~39\ & \QENC2|sQEMCOUNTER[14]~47COUT1_112\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(15), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[15]~33\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(15) & !\QENC2|sQEMCOUNTER[14]~47COUT1_112\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[14]~47COUT1_112\) # (!\QENC2|sQEMCOUNTER\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(15),
	datac => \QENC2|sBUFFER\(15),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[10]~39\,
	cin0 => \QENC2|sQEMCOUNTER[14]~47\,
	cin1 => \QENC2|sQEMCOUNTER[14]~47COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(15),
	cout => \QENC2|sQEMCOUNTER[15]~33\);

-- Location: LC_X13_Y6_N3
\MOD_PWM2|sPWMPERIOD[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~3\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\QENC2|sQEMCOUNTER\(1))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & (D2_sPWMPERIOD[1])))
-- \MOD_PWM2|sPWMPERIOD\(1) = DFFEAS(\MOD_IOSPACE|Mux33~3\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \QENC2|sQEMCOUNTER\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~3\,
	regout => \MOD_PWM2|sPWMPERIOD\(1));

-- Location: LC_X13_Y6_N4
\MOD_IOSPACE|sQEMBUFFER2[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~4\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux33~3\ & ((C1_sQEMBUFFER2[1]))) # (!\MOD_IOSPACE|Mux33~3\ & (\MOD_PWM2|sDUTY\(1))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux33~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_PWM2|sDUTY\(1),
	datac => \QENC2|sQEMCOUNTER\(17),
	datad => \MOD_IOSPACE|Mux33~3\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~4\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(1));

-- Location: LC_X8_Y6_N7
\MOD_IOSPACE|Mux33~5\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~5_combout\ = (!\MOD_IOSPACE|oData[4]~11_combout\ & (\MOD_IOSPACE|Mux6~6_combout\ & (\MOD_SRAMIO|IO_ADDR\(2) & \MOD_IOSPACE|Mux33~4\)))

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
	dataa => \MOD_IOSPACE|oData[4]~11_combout\,
	datab => \MOD_IOSPACE|Mux6~6_combout\,
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_IOSPACE|Mux33~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~5_combout\);

-- Location: LC_X8_Y5_N0
\MOD_IOSPACE|oData[2]~16\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~16_combout\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_SRAMIO|IO_ADDR\(1) $ (!\MOD_SRAMIO|IO_ADDR\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~16_combout\);

-- Location: LC_X9_Y5_N7
\MOD_IOSPACE|oData[2]~17\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~17_combout\ = ((\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_SRAMIO|IO_ADDR\(4)) # (!\MOD_IOSPACE|oData[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_ADDR\(1),
	datad => \MOD_IOSPACE|oData[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~17_combout\);

-- Location: LC_X12_Y6_N0
\MOD_IOSPACE|oData[4]~13\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[4]~13_combout\ = (\MOD_SRAMIO|IO_ADDR\(6)) # (((\MOD_SRAMIO|IO_ADDR\(0)) # (\MOD_SRAMIO|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[4]~13_combout\);

-- Location: LC_X11_Y9_N5
\MOD_PWM1|sDUTY[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sDUTY\(1) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(1)))), \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sDUTY\(1));

-- Location: LC_X11_Y5_N8
\MOD_IOSPACE|oData[2]~15\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~15_combout\ = (\MOD_SRAMIO|IO_ADDR\(6)) # ((!\MOD_SRAMIO|IO_ADDR\(5) & (!\MOD_SRAMIO|IO_ADDR\(0) & \MOD_SRAMIO|IO_ADDR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~15_combout\);

-- Location: LC_X12_Y5_N5
\MOD_IOSPACE|oData[2]~14\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~14_combout\ = ((\MOD_SRAMIO|IO_ADDR\(5)) # ((!\MOD_SRAMIO|IO_ADDR\(6) & \MOD_SRAMIO|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(6),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~14_combout\);

-- Location: LC_X8_Y5_N9
\MOD_IOSPACE|oWrPWMCONFIG2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrPWMCONFIG2~regout\ = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|Mux5~0\ & \MOD_IOSPACE|Mux2~0\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_IOSPACE|Mux5~0\,
	datad => \MOD_IOSPACE|Mux2~0\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrPWMCONFIG2~regout\);

-- Location: LC_X12_Y5_N2
\MOD_PWM2|sPWMCONFIG[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~6\ = (!\MOD_SRAMIO|IO_ADDR\(4) & (((D2_sPWMCONFIG[1] & !\MOD_SRAMIO|IO_ADDR\(5)))))
-- \MOD_PWM2|sPWMCONFIG\(1) = DFFEAS(\MOD_IOSPACE|Mux33~6\, \MOD_IOSPACE|oWrPWMCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMCONFIG2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \MOD_SRAMIO|IO_ADDR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~6\,
	regout => \MOD_PWM2|sPWMCONFIG\(1));

-- Location: LC_X12_Y5_N3
\MOD_IOSPACE|Mux33~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~7_combout\ = (\MOD_IOSPACE|oData[2]~15_combout\ & (\MOD_IOSPACE|Mux30~6_combout\ & (\MOD_IOSPACE|oData[2]~14_combout\))) # (!\MOD_IOSPACE|oData[2]~15_combout\ & (((\MOD_IOSPACE|Mux33~6\) # (!\MOD_IOSPACE|oData[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d585",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[2]~15_combout\,
	datab => \MOD_IOSPACE|Mux30~6_combout\,
	datac => \MOD_IOSPACE|oData[2]~14_combout\,
	datad => \MOD_IOSPACE|Mux33~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~7_combout\);

-- Location: LC_X12_Y5_N4
\MOD_IOSPACE|sQEMBUFFER1[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~8\ = (\MOD_IOSPACE|oData[4]~13_combout\ & (((\MOD_IOSPACE|Mux33~7_combout\)))) # (!\MOD_IOSPACE|oData[4]~13_combout\ & ((\MOD_IOSPACE|Mux33~7_combout\ & (\MOD_PWM1|sDUTY\(1))) # (!\MOD_IOSPACE|Mux33~7_combout\ & ((C1_sQEMBUFFER1[1])))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|oData[4]~13_combout\,
	datab => \MOD_PWM1|sDUTY\(1),
	datac => \QENC1|sQEMCOUNTER\(17),
	datad => \MOD_IOSPACE|Mux33~7_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~8\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(1));

-- Location: LC_X8_Y4_N1
\MOD_RESET|sResetPeriod[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~9\ = (((E1_sResetPeriod[1] & \MOD_SRAMIO|IO_ADDR\(4))))
-- \MOD_RESET|sResetPeriod\(1) = DFFEAS(\MOD_IOSPACE|Mux33~9\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~9\,
	regout => \MOD_RESET|sResetPeriod\(1));

-- Location: LC_X8_Y5_N7
\MOD_IOSPACE|oData[2]~18\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~18_combout\ = (\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_SRAMIO|IO_ADDR\(5)) # ((\MOD_SRAMIO|IO_ADDR\(4)) # (\MOD_SRAMIO|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~18_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(2),
	combout => \iDiffInput~combout\(2));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(3),
	combout => \iDiffInput~combout\(3));

-- Location: LC_X4_Y6_N4
\IPMOD|sDiffFilter[0][1]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[0][1]~regout\ = DFFEAS(((\iDiffInput~combout\(2) $ (\iDiffInput~combout\(3)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => \iDiffInput~combout\(2),
	datad => \iDiffInput~combout\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[0][1]~regout\);

-- Location: LC_X4_Y6_N7
\IPMOD|sDiffFilter[1][1]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[1][1]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[0][1]~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[0][1]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[1][1]~regout\);

-- Location: LC_X4_Y6_N6
\IPMOD|sDiffFilter[2][1]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|oInputStatus\(1) = (\IPMOD|sDiffFilter[0][1]~regout\ & (\IPMOD|sDiffFilter[1][1]~regout\ & (B1_sDiffFilter[2][1] & \IPMOD|oInputStatus[1]~1\)))
-- \IPMOD|sDiffFilter[2][1]~regout\ = DFFEAS(\IPMOD|oInputStatus\(1), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[1][1]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \IPMOD|sDiffFilter[0][1]~regout\,
	datab => \IPMOD|sDiffFilter[1][1]~regout\,
	datac => \IPMOD|sDiffFilter[1][1]~regout\,
	datad => \IPMOD|oInputStatus[1]~1\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IPMOD|oInputStatus\(1),
	regout => \IPMOD|sDiffFilter[2][1]~regout\);

-- Location: LC_X4_Y6_N5
\IPMOD|sDiffFilter[3][1]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[3][1]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[2][1]~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[2][1]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[3][1]~regout\);

-- Location: LC_X4_Y6_N8
\IPMOD|sDiffFilter[4][1]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|oInputStatus[1]~1\ = (\IPMOD|sDiffFilter[3][1]~regout\ & (((B1_sDiffFilter[4][1]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \IPMOD|sDiffFilter[3][1]~regout\,
	datac => \IPMOD|sDiffFilter[3][1]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IPMOD|oInputStatus[1]~1\,
	regout => \IPMOD|sDiffFilter[4][1]~regout\);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(1),
	combout => \iInput~combout\(1));

-- Location: LC_X8_Y9_N4
\MOD_IOSPACE|Mux33~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~12_combout\ = (((\iInput~combout\(1) & \MOD_SRAMIO|IO_ADDR\(4))))

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
	datac => \iInput~combout\(1),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~12_combout\);

-- Location: LC_X8_Y9_N0
\MOD_IOSPACE|oData[2]~21\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~21_combout\ = (((\MOD_SRAMIO|IO_ADDR\(4) & \MOD_SRAMIO|IO_ADDR\(0))) # (!\MOD_SRAMIO|IO_ADDR\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~21_combout\);

-- Location: LC_X9_Y10_N7
\SYNCMOD|sSYNCONFIG[17]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~13\ = (\MOD_IOSPACE|oData[2]~21_combout\ & ((\MOD_IOSPACE|oData[4]~6_combout\ & ((L1_sSYNCONFIG[17]))) # (!\MOD_IOSPACE|oData[4]~6_combout\ & (\MOD_IOSPACE|Mux33~12_combout\)))) # (!\MOD_IOSPACE|oData[2]~21_combout\ & 
-- (((!\MOD_IOSPACE|oData[4]~6_combout\))))
-- \SYNCMOD|sSYNCONFIG\(17) = DFFEAS(\MOD_IOSPACE|Mux33~13\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0bb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|Mux33~12_combout\,
	datab => \MOD_IOSPACE|oData[2]~21_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \MOD_IOSPACE|oData[4]~6_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~13\,
	regout => \SYNCMOD|sSYNCONFIG\(17));

-- Location: LC_X8_Y10_N5
\OPMOD|sOutput[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~14\ = (\MOD_IOSPACE|oData[4]~7_combout\ & (((\MOD_IOSPACE|Mux33~13\)))) # (!\MOD_IOSPACE|oData[4]~7_combout\ & ((\MOD_IOSPACE|Mux33~13\ & ((J1_sOutput[1]))) # (!\MOD_IOSPACE|Mux33~13\ & (\SYNCMOD|sSYNCONFIG\(1)))))
-- \OPMOD|sOutput\(1) = DFFEAS(\MOD_IOSPACE|Mux33~14\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[4]~7_combout\,
	datab => \SYNCMOD|sSYNCONFIG\(1),
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \MOD_IOSPACE|Mux33~13\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~14\,
	regout => \OPMOD|sOutput\(1));

-- Location: LC_X8_Y5_N1
\MOD_IOSPACE|oData[2]~20\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~20_combout\ = (((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(0))) # (!\MOD_SRAMIO|IO_ADDR\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~20_combout\);

-- Location: LC_X8_Y5_N5
\MOD_IOSPACE|oData[2]~19\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[2]~19_combout\ = (((!\MOD_SRAMIO|IO_ADDR\(5) & \MOD_SRAMIO|IO_ADDR\(0))))

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
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[2]~19_combout\);

-- Location: LC_X7_Y9_N5
\MOD_IOSPACE|oWrPWMCONFIG1\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrPWMCONFIG1~regout\ = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(2) & (!\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux5~0\ & \MOD_IOSPACE|Mux4~4_combout\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|Mux5~0\,
	datad => \MOD_IOSPACE|Mux4~4_combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrPWMCONFIG1~regout\);

-- Location: LC_X7_Y9_N3
\MOD_IOSPACE|oWrSERIALMUXCONFIG\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\ = DFFEAS((\MOD_IOSPACE|Mux4~4_combout\ & (!\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_SRAMIO|IO_ADDR\(5) & \MOD_IOSPACE|Mux6~4\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_IOSPACE|Mux4~4_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_IOSPACE|Mux6~4\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\);

-- Location: LC_X14_Y8_N1
\MOD_SERIALMUX|sSERIALMUXCONFIG[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|sSERIALMUXCONFIG\(1) = DFFEAS(GND, \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

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
	clk => \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|sSERIALMUXCONFIG\(1));

-- Location: LC_X13_Y8_N8
\MOD_PWM1|sPWMCONFIG[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~2\ = (\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_SERIALMUX|sSERIALMUXCONFIG\(1))))) # (!\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((D1_sPWMCONFIG[1]))))
-- \MOD_PWM1|sPWMCONFIG\(1) = DFFEAS(\MOD_IOSPACE|Mux33~2\, \MOD_IOSPACE|oWrPWMCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe32",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMCONFIG1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \MOD_SERIALMUX|sSERIALMUXCONFIG\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~2\,
	regout => \MOD_PWM1|sPWMCONFIG\(1));

-- Location: LC_X8_Y6_N9
\MOD_IOSPACE|Mux33~19\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~19_combout\ = ((!\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_IOSPACE|Mux33~2\))))

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
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_IOSPACE|Mux33~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~19_combout\);

-- Location: LC_X8_Y6_N0
\MOD_PWM1|sPWMPERIOD[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~10\ = (\MOD_IOSPACE|oData[2]~19_combout\ & ((\MOD_IOSPACE|Mux33~19_combout\ & ((D1_sPWMPERIOD[1]))) # (!\MOD_IOSPACE|Mux33~19_combout\ & (\QENC1|sQEMCOUNTER\(1))))) # (!\MOD_IOSPACE|oData[2]~19_combout\ & 
-- (((\MOD_IOSPACE|Mux33~19_combout\))))
-- \MOD_PWM1|sPWMPERIOD\(1) = DFFEAS(\MOD_IOSPACE|Mux33~10\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \QENC1|sQEMCOUNTER\(1),
	datab => \MOD_IOSPACE|oData[2]~19_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(1),
	datad => \MOD_IOSPACE|Mux33~19_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~10\,
	regout => \MOD_PWM1|sPWMPERIOD\(1));

-- Location: LC_X8_Y6_N1
\MOD_IOSPACE|Mux33~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~11_combout\ = (\MOD_IOSPACE|oData[2]~18_combout\ & (((\MOD_IOSPACE|oData[2]~20_combout\)))) # (!\MOD_IOSPACE|oData[2]~18_combout\ & ((\MOD_IOSPACE|oData[2]~20_combout\ & ((\MOD_IOSPACE|Mux33~10\))) # (!\MOD_IOSPACE|oData[2]~20_combout\ 
-- & (\MOD_SEG|oLEDOutput[1]~1_combout\))))

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
	dataa => \MOD_IOSPACE|oData[2]~18_combout\,
	datab => \MOD_SEG|oLEDOutput[1]~1_combout\,
	datac => \MOD_IOSPACE|oData[2]~20_combout\,
	datad => \MOD_IOSPACE|Mux33~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~11_combout\);

-- Location: LC_X8_Y6_N2
\MOD_IOSPACE|Mux33~15\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~15_combout\ = (\MOD_IOSPACE|oData[2]~18_combout\ & ((\MOD_IOSPACE|Mux33~11_combout\ & ((\MOD_IOSPACE|Mux33~14\))) # (!\MOD_IOSPACE|Mux33~11_combout\ & (\IPMOD|oInputStatus\(1))))) # (!\MOD_IOSPACE|oData[2]~18_combout\ & 
-- (((\MOD_IOSPACE|Mux33~11_combout\))))

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
	dataa => \MOD_IOSPACE|oData[2]~18_combout\,
	datab => \IPMOD|oInputStatus\(1),
	datac => \MOD_IOSPACE|Mux33~14\,
	datad => \MOD_IOSPACE|Mux33~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~15_combout\);

-- Location: LC_X8_Y6_N3
\MOD_IOSPACE|Mux33~16\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~16_combout\ = (\MOD_SRAMIO|IO_ADDR\(1) & (!\MOD_IOSPACE|oData[2]~16_combout\)) # (!\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|oData[2]~16_combout\ & (\MOD_IOSPACE|Mux33~9\)) # (!\MOD_IOSPACE|oData[2]~16_combout\ & 
-- ((\MOD_IOSPACE|Mux33~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7362",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|oData[2]~16_combout\,
	datac => \MOD_IOSPACE|Mux33~9\,
	datad => \MOD_IOSPACE|Mux33~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~16_combout\);

-- Location: LC_X8_Y6_N4
\MOD_IOSPACE|Mux33~17\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux33~17_combout\ = (\MOD_IOSPACE|oData[2]~17_combout\ & ((\MOD_IOSPACE|Mux33~16_combout\ & ((\MOD_IOSPACE|Mux33~8\))) # (!\MOD_IOSPACE|Mux33~16_combout\ & (\ioSYNC[1]~1\)))) # (!\MOD_IOSPACE|oData[2]~17_combout\ & 
-- (((\MOD_IOSPACE|Mux33~16_combout\))))

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
	dataa => \MOD_IOSPACE|oData[2]~17_combout\,
	datab => \ioSYNC[1]~1\,
	datac => \MOD_IOSPACE|Mux33~8\,
	datad => \MOD_IOSPACE|Mux33~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux33~17_combout\);

-- Location: LC_X8_Y6_N5
\MOD_IOSPACE|oData[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(1) = DFFEAS((\MOD_IOSPACE|Mux33~5_combout\) # ((!\MOD_SRAMIO|IO_ADDR\(2) & (\MOD_IOSPACE|Mux6~6_combout\ & \MOD_IOSPACE|Mux33~17_combout\))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_IOSPACE|Mux6~6_combout\,
	datac => \MOD_IOSPACE|Mux33~5_combout\,
	datad => \MOD_IOSPACE|Mux33~17_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(1));

-- Location: LC_X7_Y10_N7
\MOD_SEG|s7SEGOUTPUT[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(1) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(1)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(1));

-- Location: LC_X7_Y10_N5
\MOD_SEG|oLEDOutput[1]~1\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[1]~1_combout\ = (\iPWM_LED~combout\) # (((!\MOD_SEG|s7SEGOUTPUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iPWM_LED~combout\,
	datac => \MOD_SEG|s7SEGOUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[1]~1_combout\);

-- Location: LC_X7_Y10_N4
\MOD_SEG|s7SEGOUTPUT[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(2) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(2)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(2));

-- Location: LC_X8_Y10_N2
\MOD_SEG|oLEDOutput[2]~2\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[2]~2_combout\ = ((\iPWM_LED~combout\) # ((!\MOD_SEG|s7SEGOUTPUT\(2))))

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
	datab => \iPWM_LED~combout\,
	datad => \MOD_SEG|s7SEGOUTPUT\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[2]~2_combout\);

-- Location: LC_X8_Y8_N0
\MOD_SEG|s7SEGOUTPUT[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(4) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(4)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(4));

-- Location: LC_X8_Y8_N6
\MOD_SEG|oLEDOutput[4]~4\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[4]~4_combout\ = ((\iPWM_LED~combout\) # ((!\MOD_SEG|s7SEGOUTPUT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \iPWM_LED~combout\,
	datac => \MOD_SEG|s7SEGOUTPUT\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[4]~4_combout\);

-- Location: LC_X7_Y10_N2
\MOD_SEG|s7SEGOUTPUT[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(5) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(5)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(5));

-- Location: LC_X7_Y10_N3
\MOD_SEG|oLEDOutput[5]~5\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[5]~5_combout\ = (((\iPWM_LED~combout\) # (!\MOD_SEG|s7SEGOUTPUT\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \iPWM_LED~combout\,
	datad => \MOD_SEG|s7SEGOUTPUT\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[5]~5_combout\);

-- Location: LC_X8_Y8_N9
\MOD_SEG|s7SEGOUTPUT[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(6) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(6)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(6));

-- Location: LC_X8_Y8_N8
\MOD_SEG|oLEDOutput[6]~6\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[6]~6_combout\ = ((\iPWM_LED~combout\) # ((!\MOD_SEG|s7SEGOUTPUT\(6))))

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
	datab => \iPWM_LED~combout\,
	datad => \MOD_SEG|s7SEGOUTPUT\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[6]~6_combout\);

-- Location: LC_X7_Y10_N6
\MOD_SEG|s7SEGOUTPUT[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|s7SEGOUTPUT\(7) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(7)))), \MOD_IOSPACE|oWrSEG7OUTPUT~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrSEG7OUTPUT~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SEG|s7SEGOUTPUT\(7));

-- Location: LC_X7_Y10_N8
\MOD_SEG|oLEDOutput[7]~7\ : maxv_lcell
-- Equation(s):
-- \MOD_SEG|oLEDOutput[7]~7_combout\ = (\iPWM_LED~combout\) # (((!\MOD_SEG|s7SEGOUTPUT\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iPWM_LED~combout\,
	datac => \MOD_SEG|s7SEGOUTPUT\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SEG|oLEDOutput[7]~7_combout\);

-- Location: LC_X15_Y8_N7
\MOD_SERIALMUX|sSERIALMUXCONFIG[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|sSERIALMUXCONFIG\(0) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(0)))), \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|sSERIALMUXCONFIG\(0));

-- Location: LC_X11_Y5_N9
\MOD_PWM1|sPWMCONFIG[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~9\ = (\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_SRAMIO|IO_ADDR\(6))) # (!\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_SEG|oLEDOutput[0]~0_combout\))) # (!\MOD_SRAMIO|IO_ADDR\(6) & (D1_sPWMCONFIG[0]))))
-- \MOD_PWM1|sPWMCONFIG\(0) = DFFEAS(\MOD_IOSPACE|Mux34~9\, \MOD_IOSPACE|oWrPWMCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMCONFIG1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \MOD_SEG|oLEDOutput[0]~0_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~9\,
	regout => \MOD_PWM1|sPWMCONFIG\(0));

-- Location: LC_X11_Y5_N5
\OPMOD|sOutput[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~10\ = (\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_IOSPACE|Mux34~9\ & ((J1_sOutput[0]))) # (!\MOD_IOSPACE|Mux34~9\ & (\MOD_SERIALMUX|sSERIALMUXCONFIG\(0))))) # (!\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_IOSPACE|Mux34~9\))))
-- \OPMOD|sOutput\(0) = DFFEAS(\MOD_IOSPACE|Mux34~10\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SERIALMUX|sSERIALMUXCONFIG\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \MOD_IOSPACE|Mux34~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~10\,
	regout => \OPMOD|sOutput\(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(0),
	combout => \iInput~combout\(0));

-- Location: LC_X11_Y4_N4
\SYNCMOD|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux2~2_combout\ = (\SYNCMOD|sSYNCONFIG\(0) & ((\SYNCMOD|sSYNCONFIG\(1)) # ((\iInput~combout\(1))))) # (!\SYNCMOD|sSYNCONFIG\(0) & (!\SYNCMOD|sSYNCONFIG\(1) & ((\iInput~combout\(0)))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(0),
	datab => \SYNCMOD|sSYNCONFIG\(1),
	datac => \iInput~combout\(1),
	datad => \iInput~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux2~2_combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(2),
	combout => \iInput~combout\(2));

-- Location: LC_X10_Y9_N4
\SYNCMOD|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux2~3_combout\ = (\SYNCMOD|Mux2~2_combout\ & ((\iInput~combout\(3)) # ((!\SYNCMOD|sSYNCONFIG\(1))))) # (!\SYNCMOD|Mux2~2_combout\ & (((\iInput~combout\(2) & \SYNCMOD|sSYNCONFIG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|Mux2~2_combout\,
	datab => \iInput~combout\(3),
	datac => \iInput~combout\(2),
	datad => \SYNCMOD|sSYNCONFIG\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux2~3_combout\);

-- Location: LC_X8_Y10_N7
\SYNCMOD|sSYNCONFIG[2]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux2~4\ = (!\SYNCMOD|sSYNCONFIG\(3) & ((L1_sSYNCONFIG[2] & ((\SYNCMOD|Mux2~1\))) # (!L1_sSYNCONFIG[2] & (\SYNCMOD|Mux2~3_combout\))))
-- \SYNCMOD|sSYNCONFIG\(2) = DFFEAS(\SYNCMOD|Mux2~4\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|Mux2~3_combout\,
	datab => \SYNCMOD|Mux2~1\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \SYNCMOD|sSYNCONFIG\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux2~4\,
	regout => \SYNCMOD|sSYNCONFIG\(2));

-- Location: LC_X8_Y9_N2
\MOD_IOSPACE|Mux32~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~12_combout\ = ((\iInput~combout\(2) & ((\MOD_SRAMIO|IO_ADDR\(4)))))

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
	datab => \iInput~combout\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~12_combout\);

-- Location: LC_X8_Y9_N1
\SYNCMOD|sSYNCONFIG[18]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~13\ = (\MOD_IOSPACE|oData[4]~6_combout\ & (\MOD_IOSPACE|oData[2]~21_combout\ & (L1_sSYNCONFIG[18]))) # (!\MOD_IOSPACE|oData[4]~6_combout\ & (((\MOD_IOSPACE|Mux32~12_combout\)) # (!\MOD_IOSPACE|oData[2]~21_combout\)))
-- \SYNCMOD|sSYNCONFIG\(18) = DFFEAS(\MOD_IOSPACE|Mux32~13\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[4]~6_combout\,
	datab => \MOD_IOSPACE|oData[2]~21_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \MOD_IOSPACE|Mux32~12_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~13\,
	regout => \SYNCMOD|sSYNCONFIG\(18));

-- Location: LC_X8_Y9_N9
\OPMOD|sOutput[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~14\ = (\MOD_IOSPACE|oData[4]~7_combout\ & (((\MOD_IOSPACE|Mux32~13\)))) # (!\MOD_IOSPACE|oData[4]~7_combout\ & ((\MOD_IOSPACE|Mux32~13\ & ((J1_sOutput[2]))) # (!\MOD_IOSPACE|Mux32~13\ & (\SYNCMOD|sSYNCONFIG\(2)))))
-- \OPMOD|sOutput\(2) = DFFEAS(\MOD_IOSPACE|Mux32~14\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[4]~7_combout\,
	datab => \SYNCMOD|sSYNCONFIG\(2),
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \MOD_IOSPACE|Mux32~13\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~14\,
	regout => \OPMOD|sOutput\(2));

-- Location: LC_X8_Y8_N7
\OPMOD|sOutput[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~10\ = (\MOD_IOSPACE|oData[4]~6_combout\ & (\MOD_IOSPACE|oData[4]~7_combout\)) # (!\MOD_IOSPACE|oData[4]~6_combout\ & ((\MOD_IOSPACE|oData[4]~7_combout\ & ((\MOD_SEG|oLEDOutput[4]~4_combout\))) # (!\MOD_IOSPACE|oData[4]~7_combout\ & 
-- (J1_sOutput[4]))))
-- \OPMOD|sOutput\(4) = DFFEAS(\MOD_IOSPACE|Mux30~10\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[4]~6_combout\,
	datab => \MOD_IOSPACE|oData[4]~7_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	datad => \MOD_SEG|oLEDOutput[4]~4_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~10\,
	regout => \OPMOD|sOutput\(4));

-- Location: LC_X7_Y6_N2
\OPMOD|sOutput[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~6\ = (\MOD_IOSPACE|oData[4]~7_combout\ & (\MOD_IOSPACE|oData[4]~6_combout\)) # (!\MOD_IOSPACE|oData[4]~7_combout\ & ((\MOD_IOSPACE|oData[4]~6_combout\ & ((\SYNCMOD|sSYNCONFIG\(5)))) # (!\MOD_IOSPACE|oData[4]~6_combout\ & 
-- (J1_sOutput[5]))))
-- \OPMOD|sOutput\(5) = DFFEAS(\MOD_IOSPACE|Mux29~6\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[4]~7_combout\,
	datab => \MOD_IOSPACE|oData[4]~6_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	datad => \SYNCMOD|sSYNCONFIG\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~6\,
	regout => \OPMOD|sOutput\(5));

-- Location: LC_X7_Y6_N3
\SYNCMOD|sSYNCONFIG[21]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~7\ = (\MOD_IOSPACE|oData[4]~7_combout\ & ((\MOD_IOSPACE|Mux29~6\ & ((L1_sSYNCONFIG[21]))) # (!\MOD_IOSPACE|Mux29~6\ & (\MOD_SEG|oLEDOutput[5]~5_combout\)))) # (!\MOD_IOSPACE|oData[4]~7_combout\ & (((\MOD_IOSPACE|Mux29~6\))))
-- \SYNCMOD|sSYNCONFIG\(21) = DFFEAS(\MOD_IOSPACE|Mux29~7\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[4]~7_combout\,
	datab => \MOD_SEG|oLEDOutput[5]~5_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	datad => \MOD_IOSPACE|Mux29~6\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~7\,
	regout => \SYNCMOD|sSYNCONFIG\(21));

-- Location: LC_X7_Y8_N2
\SYNCMOD|sSYNCONFIG[20]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux7~0\ = (\SYNCMOD|sSYNCONFIG\(21) & (((L1_sSYNCONFIG[20]) # (\iInput~combout\(6))))) # (!\SYNCMOD|sSYNCONFIG\(21) & (\iInput~combout\(4) & (!L1_sSYNCONFIG[20])))
-- \SYNCMOD|sSYNCONFIG\(20) = DFFEAS(\SYNCMOD|Mux7~0\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(21),
	datab => \iInput~combout\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	datad => \iInput~combout\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux7~0\,
	regout => \SYNCMOD|sSYNCONFIG\(20));

-- Location: LC_X7_Y8_N7
\SYNCMOD|sSYNCONFIG[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~11\ = (\MOD_IOSPACE|oData[4]~6_combout\ & ((\MOD_IOSPACE|Mux30~10\ & (\SYNCMOD|sSYNCONFIG\(20))) # (!\MOD_IOSPACE|Mux30~10\ & ((L1_sSYNCONFIG[4]))))) # (!\MOD_IOSPACE|oData[4]~6_combout\ & (((\MOD_IOSPACE|Mux30~10\))))
-- \SYNCMOD|sSYNCONFIG\(4) = DFFEAS(\MOD_IOSPACE|Mux30~11\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \MOD_IOSPACE|oData[4]~6_combout\,
	datab => \SYNCMOD|sSYNCONFIG\(20),
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	datad => \MOD_IOSPACE|Mux30~10\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~11\,
	regout => \SYNCMOD|sSYNCONFIG\(4));

-- Location: LC_X7_Y8_N6
\SYNCMOD|sSYNCONFIG[5]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux3~0\ = (\SYNCMOD|sSYNCONFIG\(4) & (((L1_sSYNCONFIG[5])))) # (!\SYNCMOD|sSYNCONFIG\(4) & ((L1_sSYNCONFIG[5] & ((\iInput~combout\(6)))) # (!L1_sSYNCONFIG[5] & (\iInput~combout\(4)))))
-- \SYNCMOD|sSYNCONFIG\(5) = DFFEAS(\SYNCMOD|Mux3~0\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \iInput~combout\(4),
	datab => \SYNCMOD|sSYNCONFIG\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	datad => \iInput~combout\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux3~0\,
	regout => \SYNCMOD|sSYNCONFIG\(5));

-- Location: LC_X8_Y8_N2
\OPMOD|sOutput[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~5\ = (\MOD_IOSPACE|oData[4]~6_combout\ & (\MOD_IOSPACE|oData[4]~7_combout\)) # (!\MOD_IOSPACE|oData[4]~6_combout\ & ((\MOD_IOSPACE|oData[4]~7_combout\ & ((\MOD_SEG|oLEDOutput[6]~6_combout\))) # (!\MOD_IOSPACE|oData[4]~7_combout\ & 
-- (J1_sOutput[6]))))
-- \OPMOD|sOutput\(6) = DFFEAS(\MOD_IOSPACE|Mux28~5\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[4]~6_combout\,
	datab => \MOD_IOSPACE|oData[4]~7_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	datad => \MOD_SEG|oLEDOutput[6]~6_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~5\,
	regout => \OPMOD|sOutput\(6));

-- Location: LC_X7_Y10_N9
\OPMOD|sOutput[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~6\ = (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(5) & (J1_sOutput[7])) # (!\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SEG|oLEDOutput[7]~7_combout\)))))
-- \OPMOD|sOutput\(7) = DFFEAS(\MOD_IOSPACE|Mux27~6\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	datad => \MOD_SEG|oLEDOutput[7]~7_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~6\,
	regout => \OPMOD|sOutput\(7));

-- Location: LC_X11_Y8_N4
\MOD_IOSPACE|oData[8]~24\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~24_combout\ = (\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_SRAMIO|IO_ADDR\(5) & \MOD_SRAMIO|IO_ADDR\(6))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~24_combout\);

-- Location: LC_X10_Y8_N2
\SYNCMOD|sSYNCONFIG[9]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux4~2\ = (\SYNCMOD|sSYNCONFIG\(8) & (((L1_sSYNCONFIG[9]) # (\iInput~combout\(1))))) # (!\SYNCMOD|sSYNCONFIG\(8) & (\iInput~combout\(0) & (!L1_sSYNCONFIG[9])))
-- \SYNCMOD|sSYNCONFIG\(9) = DFFEAS(\SYNCMOD|Mux4~2\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \iInput~combout\(0),
	datab => \SYNCMOD|sSYNCONFIG\(8),
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	datad => \iInput~combout\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux4~2\,
	regout => \SYNCMOD|sSYNCONFIG\(9));

-- Location: LC_X10_Y8_N0
\SYNCMOD|sSYNCONFIG[8]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux4~0\ = (\SYNCMOD|sSYNCONFIG\(9) & ((\iInput~combout\(6)) # ((L1_sSYNCONFIG[8])))) # (!\SYNCMOD|sSYNCONFIG\(9) & (((!L1_sSYNCONFIG[8] & \iInput~combout\(4)))))
-- \SYNCMOD|sSYNCONFIG\(8) = DFFEAS(\SYNCMOD|Mux4~0\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(9),
	datab => \iInput~combout\(6),
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	datad => \iInput~combout\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux4~0\,
	regout => \SYNCMOD|sSYNCONFIG\(8));

-- Location: LC_X11_Y8_N9
\OPMOD|sOutput[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~5\ = (\MOD_IOSPACE|oData[8]~24_combout\ & (!\MOD_SRAMIO|IO_ADDR\(0) & ((\SYNCMOD|sSYNCONFIG\(8))))) # (!\MOD_IOSPACE|oData[8]~24_combout\ & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((J1_sOutput[8]))))
-- \OPMOD|sOutput\(8) = DFFEAS(\MOD_IOSPACE|Mux26~5\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7654",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[8]~24_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	datad => \SYNCMOD|sSYNCONFIG\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~5\,
	regout => \OPMOD|sOutput\(8));

-- Location: LC_X11_Y8_N1
\OPMOD|sOutput[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~5\ = (\MOD_IOSPACE|oData[8]~24_combout\ & (!\MOD_SRAMIO|IO_ADDR\(0) & ((\SYNCMOD|sSYNCONFIG\(9))))) # (!\MOD_IOSPACE|oData[8]~24_combout\ & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((J1_sOutput[9]))))
-- \OPMOD|sOutput\(9) = DFFEAS(\MOD_IOSPACE|Mux25~5\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7654",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[8]~24_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	datad => \SYNCMOD|sSYNCONFIG\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~5\,
	regout => \OPMOD|sOutput\(9));

-- Location: LC_X11_Y7_N4
\MOD_IOSPACE|oData[14]~27\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[14]~27_combout\ = (\MOD_SRAMIO|IO_ADDR\(0)) # (((\MOD_SRAMIO|IO_ADDR\(2)) # (!\MOD_SRAMIO|IO_ADDR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(6),
	datad => \MOD_SRAMIO|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[14]~27_combout\);

-- Location: LC_X10_Y8_N4
\SYNCMOD|Mux4~3\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux4~3_combout\ = (\SYNCMOD|Mux4~2\ & ((\iInput~combout\(3)) # ((!\SYNCMOD|sSYNCONFIG\(9))))) # (!\SYNCMOD|Mux4~2\ & (((\SYNCMOD|sSYNCONFIG\(9) & \iInput~combout\(2)))))

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
	dataa => \iInput~combout\(3),
	datab => \SYNCMOD|Mux4~2\,
	datac => \SYNCMOD|sSYNCONFIG\(9),
	datad => \iInput~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux4~3_combout\);

-- Location: LC_X10_Y8_N1
\SYNCMOD|Mux4~1\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux4~1_combout\ = (\SYNCMOD|sSYNCONFIG\(8) & ((\SYNCMOD|Mux4~0\ & (\iInput~combout\(7))) # (!\SYNCMOD|Mux4~0\ & ((\iInput~combout\(5)))))) # (!\SYNCMOD|sSYNCONFIG\(8) & (((\SYNCMOD|Mux4~0\))))

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
	dataa => \iInput~combout\(7),
	datab => \SYNCMOD|sSYNCONFIG\(8),
	datac => \iInput~combout\(5),
	datad => \SYNCMOD|Mux4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux4~1_combout\);

-- Location: LC_X14_Y7_N7
\MOD_IOSPACE|oData[13]~33\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[13]~33_combout\ = ((\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(5))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4)))))

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
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[13]~33_combout\);

-- Location: LC_X9_Y7_N6
\MOD_IOSPACE|oData[14]~32\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[14]~32_combout\ = (\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_SRAMIO|IO_ADDR\(2)) # (\MOD_SRAMIO|IO_ADDR\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[14]~32_combout\);

-- Location: LC_X7_Y9_N7
\MOD_IOSPACE|oData[14]~31\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[14]~31_combout\ = ((\MOD_SRAMIO|IO_ADDR\(5) & (!\MOD_SRAMIO|IO_ADDR\(2) & \MOD_IOSPACE|Mux13~0\))) # (!\MOD_SRAMIO|IO_ADDR\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(2),
	datac => \MOD_IOSPACE|Mux13~0\,
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[14]~31_combout\);

-- Location: LC_X11_Y7_N0
\MOD_IOSPACE|oData[8]~28\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~28_combout\ = ((!\MOD_SRAMIO|IO_ADDR\(2) & ((!\MOD_SRAMIO|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~28_combout\);

-- Location: LC_X10_Y7_N6
\MOD_IOSPACE|oData[14]~30\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[14]~30_combout\ = ((\MOD_SRAMIO|IO_ADDR\(5)) # ((!\MOD_SRAMIO|IO_ADDR\(2) & \MOD_SRAMIO|IO_ADDR\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[14]~30_combout\);

-- Location: LC_X10_Y7_N0
\MOD_IOSPACE|oData[14]~29\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[14]~29_combout\ = (\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_SRAMIO|IO_ADDR\(0) & (!\MOD_SRAMIO|IO_ADDR\(2) & \MOD_SRAMIO|IO_ADDR\(4)))) # (!\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_SRAMIO|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[14]~29_combout\);

-- Location: LC_X11_Y6_N5
\MOD_PWM2|sDUTY[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(10) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(10));

-- Location: LC_X14_Y9_N7
\QENC2|sBUFFER[26]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(26) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(26));

-- Location: LC_X13_Y9_N7
\QENC2|sBUFFER[25]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(25) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(25));

-- Location: LC_X14_Y9_N3
\QENC2|sBUFFER[20]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(20) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(20));

-- Location: LC_X13_Y10_N4
\QENC2|sQEMCOUNTER[20]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(20) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(20) $ ((!(!\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[19]~29\) # (\QENC2|sQEMCOUNTER[15]~33\ & \QENC2|sQEMCOUNTER[19]~29COUT1_120\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(20), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[20]~19\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(20)) # (!\QENC2|sQEMCOUNTER[19]~29COUT1_120\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(20) & !\QENC2|sQEMCOUNTER[19]~29COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(20),
	datac => \QENC2|sBUFFER\(20),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[15]~33\,
	cin0 => \QENC2|sQEMCOUNTER[19]~29\,
	cin1 => \QENC2|sQEMCOUNTER[19]~29COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(20),
	cout => \QENC2|sQEMCOUNTER[20]~19\);

-- Location: LC_X13_Y9_N9
\QENC2|sBUFFER[24]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(24) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(8)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(24));

-- Location: LC_X13_Y9_N1
\QENC2|sBUFFER[23]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(23) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(23));

-- Location: LC_X13_Y9_N0
\QENC2|sBUFFER[22]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(22) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(22));

-- Location: LC_X14_Y9_N9
\QENC2|sBUFFER[21]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(21) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(21));

-- Location: LC_X13_Y10_N5
\QENC2|sQEMCOUNTER[21]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(21) = DFFEAS(\QENC2|sQEMCOUNTER\(21) $ (\QENC2|sQEMDir~regout\ $ ((\QENC2|sQEMCOUNTER[20]~19\))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(21), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[21]~23\ = CARRY((\QENC2|sQEMCOUNTER\(21) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[20]~19\)) # (!\QENC2|sQEMCOUNTER\(21) & ((!\QENC2|sQEMCOUNTER[20]~19\) # (!\QENC2|sQEMDir~regout\))))
-- \QENC2|sQEMCOUNTER[21]~23COUT1_122\ = CARRY((\QENC2|sQEMCOUNTER\(21) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[20]~19\)) # (!\QENC2|sQEMCOUNTER\(21) & ((!\QENC2|sQEMCOUNTER[20]~19\) # (!\QENC2|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(21),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(21),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[20]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(21),
	cout0 => \QENC2|sQEMCOUNTER[21]~23\,
	cout1 => \QENC2|sQEMCOUNTER[21]~23COUT1_122\);

-- Location: LC_X13_Y10_N6
\QENC2|sQEMCOUNTER[22]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(22) = DFFEAS(\QENC2|sQEMCOUNTER\(22) $ (\QENC2|sQEMDir~regout\ $ ((!(!\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[21]~23\) # (\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[21]~23COUT1_122\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(22), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[22]~27\ = CARRY((\QENC2|sQEMCOUNTER\(22) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[21]~23\))) # (!\QENC2|sQEMCOUNTER\(22) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[21]~23\)))
-- \QENC2|sQEMCOUNTER[22]~27COUT1_124\ = CARRY((\QENC2|sQEMCOUNTER\(22) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[21]~23COUT1_122\))) # (!\QENC2|sQEMCOUNTER\(22) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[21]~23COUT1_122\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(22),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(22),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[20]~19\,
	cin0 => \QENC2|sQEMCOUNTER[21]~23\,
	cin1 => \QENC2|sQEMCOUNTER[21]~23COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(22),
	cout0 => \QENC2|sQEMCOUNTER[22]~27\,
	cout1 => \QENC2|sQEMCOUNTER[22]~27COUT1_124\);

-- Location: LC_X13_Y10_N7
\QENC2|sQEMCOUNTER[23]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(23) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(23) $ (((!\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[22]~27\) # (\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[22]~27COUT1_124\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(23), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[23]~31\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(23) & !\QENC2|sQEMCOUNTER[22]~27\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[22]~27\) # (!\QENC2|sQEMCOUNTER\(23)))))
-- \QENC2|sQEMCOUNTER[23]~31COUT1_126\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(23) & !\QENC2|sQEMCOUNTER[22]~27COUT1_124\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[22]~27COUT1_124\) # (!\QENC2|sQEMCOUNTER\(23)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(23),
	datac => \QENC2|sBUFFER\(23),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[20]~19\,
	cin0 => \QENC2|sQEMCOUNTER[22]~27\,
	cin1 => \QENC2|sQEMCOUNTER[22]~27COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(23),
	cout0 => \QENC2|sQEMCOUNTER[23]~31\,
	cout1 => \QENC2|sQEMCOUNTER[23]~31COUT1_126\);

-- Location: LC_X13_Y10_N8
\QENC2|sQEMCOUNTER[24]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(24) = DFFEAS(\QENC2|sQEMCOUNTER\(24) $ (\QENC2|sQEMDir~regout\ $ ((!(!\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[23]~31\) # (\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[23]~31COUT1_126\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(24), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[24]~49\ = CARRY((\QENC2|sQEMCOUNTER\(24) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[23]~31\))) # (!\QENC2|sQEMCOUNTER\(24) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[23]~31\)))
-- \QENC2|sQEMCOUNTER[24]~49COUT1_128\ = CARRY((\QENC2|sQEMCOUNTER\(24) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[23]~31COUT1_126\))) # (!\QENC2|sQEMCOUNTER\(24) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[23]~31COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(24),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(24),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[20]~19\,
	cin0 => \QENC2|sQEMCOUNTER[23]~31\,
	cin1 => \QENC2|sQEMCOUNTER[23]~31COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(24),
	cout0 => \QENC2|sQEMCOUNTER[24]~49\,
	cout1 => \QENC2|sQEMCOUNTER[24]~49COUT1_128\);

-- Location: LC_X13_Y10_N9
\QENC2|sQEMCOUNTER[25]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(25) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(25) $ (((!\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[24]~49\) # (\QENC2|sQEMCOUNTER[20]~19\ & \QENC2|sQEMCOUNTER[24]~49COUT1_128\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(25), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[25]~51\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(25) & !\QENC2|sQEMCOUNTER[24]~49COUT1_128\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[24]~49COUT1_128\) # (!\QENC2|sQEMCOUNTER\(25)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(25),
	datac => \QENC2|sBUFFER\(25),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[20]~19\,
	cin0 => \QENC2|sQEMCOUNTER[24]~49\,
	cin1 => \QENC2|sQEMCOUNTER[24]~49COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(25),
	cout => \QENC2|sQEMCOUNTER[25]~51\);

-- Location: LC_X14_Y10_N0
\QENC2|sQEMCOUNTER[26]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(26) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(26) $ ((!\QENC2|sQEMCOUNTER[25]~51\))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(26), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[26]~53\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(26)) # (!\QENC2|sQEMCOUNTER[25]~51\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(26) & !\QENC2|sQEMCOUNTER[25]~51\)))
-- \QENC2|sQEMCOUNTER[26]~53COUT1_130\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(26)) # (!\QENC2|sQEMCOUNTER[25]~51\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(26) & !\QENC2|sQEMCOUNTER[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(26),
	datac => \QENC2|sBUFFER\(26),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[25]~51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(26),
	cout0 => \QENC2|sQEMCOUNTER[26]~53\,
	cout1 => \QENC2|sQEMCOUNTER[26]~53COUT1_130\);

-- Location: LC_X12_Y6_N7
\MOD_PWM2|sPWMPERIOD[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~5\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(10)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (D2_sPWMPERIOD[10]))))
-- \MOD_PWM2|sPWMPERIOD\(10) = DFFEAS(\MOD_IOSPACE|Mux24~5\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	datad => \QENC2|sQEMCOUNTER\(10),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~5\,
	regout => \MOD_PWM2|sPWMPERIOD\(10));

-- Location: LC_X11_Y6_N6
\MOD_IOSPACE|sQEMBUFFER2[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~6\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux24~5\ & ((C1_sQEMBUFFER2[10]))) # (!\MOD_IOSPACE|Mux24~5\ & (\MOD_PWM2|sDUTY\(10))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux24~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_PWM2|sDUTY\(10),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \QENC2|sQEMCOUNTER\(26),
	datad => \MOD_IOSPACE|Mux24~5\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~6\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(10));

-- Location: LC_X10_Y7_N7
\MOD_RESET|sResetPeriod[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~7\ = (\MOD_IOSPACE|oData[14]~30_combout\ & (\MOD_IOSPACE|oData[14]~29_combout\ & (E1_sResetPeriod[10]))) # (!\MOD_IOSPACE|oData[14]~30_combout\ & (((\MOD_IOSPACE|Mux24~6\)) # (!\MOD_IOSPACE|oData[14]~29_combout\)))
-- \MOD_RESET|sResetPeriod\(10) = DFFEAS(\MOD_IOSPACE|Mux24~7\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_IOSPACE|oData[14]~30_combout\,
	datab => \MOD_IOSPACE|oData[14]~29_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	datad => \MOD_IOSPACE|Mux24~6\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~7\,
	regout => \MOD_RESET|sResetPeriod\(10));

-- Location: LC_X10_Y7_N8
\MOD_PWM1|sPWMPERIOD[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~8\ = (\MOD_IOSPACE|oData[8]~28_combout\ & ((\MOD_IOSPACE|Mux24~7\ & ((D1_sPWMPERIOD[10]))) # (!\MOD_IOSPACE|Mux24~7\ & (\QENC1|sQEMCOUNTER\(10))))) # (!\MOD_IOSPACE|oData[8]~28_combout\ & (((\MOD_IOSPACE|Mux24~7\))))
-- \MOD_PWM1|sPWMPERIOD\(10) = DFFEAS(\MOD_IOSPACE|Mux24~8\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[8]~28_combout\,
	datab => \QENC1|sQEMCOUNTER\(10),
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	datad => \MOD_IOSPACE|Mux24~7\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~8\,
	regout => \MOD_PWM1|sPWMPERIOD\(10));

-- Location: LC_X9_Y7_N7
\MOD_IOSPACE|Mux24~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~12_combout\ = (\MOD_IOSPACE|Mux24~8\ & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_IOSPACE|Mux24~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~12_combout\);

-- Location: LC_X9_Y7_N8
\SYNCMOD|sSYNCONFIG[26]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~9\ = (\MOD_IOSPACE|oData[14]~32_combout\ & (\MOD_IOSPACE|oData[14]~31_combout\ & (L1_sSYNCONFIG[26]))) # (!\MOD_IOSPACE|oData[14]~32_combout\ & (((\MOD_IOSPACE|Mux24~12_combout\)) # (!\MOD_IOSPACE|oData[14]~31_combout\)))
-- \SYNCMOD|sSYNCONFIG\(26) = DFFEAS(\MOD_IOSPACE|Mux24~9\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[14]~32_combout\,
	datab => \MOD_IOSPACE|oData[14]~31_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	datad => \MOD_IOSPACE|Mux24~12_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~9\,
	regout => \SYNCMOD|sSYNCONFIG\(26));

-- Location: LC_X11_Y8_N6
\MOD_IOSPACE|oData[8]~23\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~23_combout\ = (\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_SRAMIO|IO_ADDR\(4)) # (!\MOD_SRAMIO|IO_ADDR\(6))) # (!\MOD_SRAMIO|IO_ADDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~23_combout\);

-- Location: LC_X12_Y8_N9
\MOD_RESET|sResetPeriod[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sResetPeriod\(9) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(9)))), \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sResetPeriod\(9));

-- Location: LC_X12_Y8_N2
\MOD_IOSPACE|Mux25~2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~2_combout\ = (\MOD_SRAMIO|IO_ADDR\(4) & (((!\MOD_RESET|sResetPeriod\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_RESET|sResetPeriod\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~2_combout\);

-- Location: LC_X12_Y8_N3
\MOD_IOSPACE|Mux25~3\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~3_combout\ = (\MOD_IOSPACE|oData[8]~22\ & ((\MOD_IOSPACE|oData[4]~5\ & (\iInput~combout\(9))) # (!\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux25~2_combout\))))) # (!\MOD_IOSPACE|oData[8]~22\ & (((!\MOD_IOSPACE|oData[4]~5\))))

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
	dataa => \MOD_IOSPACE|oData[8]~22\,
	datab => \iInput~combout\(9),
	datac => \MOD_IOSPACE|oData[4]~5\,
	datad => \MOD_IOSPACE|Mux25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~3_combout\);

-- Location: LC_X12_Y8_N4
\MOD_PWM1|sPWMPERIOD[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~4\ = (\MOD_IOSPACE|Mux27~0_combout\ & ((\MOD_IOSPACE|Mux25~3_combout\ & ((D1_sPWMPERIOD[9]))) # (!\MOD_IOSPACE|Mux25~3_combout\ & (\QENC1|sQEMCOUNTER\(9))))) # (!\MOD_IOSPACE|Mux27~0_combout\ & (((\MOD_IOSPACE|Mux25~3_combout\))))
-- \MOD_PWM1|sPWMPERIOD\(9) = DFFEAS(\MOD_IOSPACE|Mux25~4\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|Mux27~0_combout\,
	datab => \QENC1|sQEMCOUNTER\(9),
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	datad => \MOD_IOSPACE|Mux25~3_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~4\,
	regout => \MOD_PWM1|sPWMPERIOD\(9));

-- Location: LC_X11_Y8_N2
\SYNCMOD|sSYNCONFIG[25]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~6\ = (\MOD_IOSPACE|oData[8]~23_combout\ & ((\MOD_IOSPACE|Mux25~5\ & ((\MOD_IOSPACE|Mux25~4\))) # (!\MOD_IOSPACE|Mux25~5\ & (L1_sSYNCONFIG[25])))) # (!\MOD_IOSPACE|oData[8]~23_combout\ & (\MOD_IOSPACE|Mux25~5\))
-- \SYNCMOD|sSYNCONFIG\(25) = DFFEAS(\MOD_IOSPACE|Mux25~6\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[8]~23_combout\,
	datab => \MOD_IOSPACE|Mux25~5\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	datad => \MOD_IOSPACE|Mux25~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~6\,
	regout => \SYNCMOD|sSYNCONFIG\(25));

-- Location: LC_X12_Y8_N5
\MOD_RESET|sResetPeriod[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sResetPeriod\(8) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(8)))), \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sResetPeriod\(8));

-- Location: LC_X12_Y8_N6
\MOD_IOSPACE|Mux26~2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~2_combout\ = (((!\MOD_RESET|sResetPeriod\(8) & \MOD_SRAMIO|IO_ADDR\(4))))

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
	datac => \MOD_RESET|sResetPeriod\(8),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~2_combout\);

-- Location: LC_X12_Y8_N7
\MOD_IOSPACE|Mux26~3\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~3_combout\ = (\MOD_IOSPACE|oData[8]~22\ & ((\MOD_IOSPACE|oData[4]~5\ & (\iInput~combout\(8))) # (!\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux26~2_combout\))))) # (!\MOD_IOSPACE|oData[8]~22\ & (((!\MOD_IOSPACE|oData[4]~5\))))

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
	dataa => \MOD_IOSPACE|oData[8]~22\,
	datab => \iInput~combout\(8),
	datac => \MOD_IOSPACE|oData[4]~5\,
	datad => \MOD_IOSPACE|Mux26~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~3_combout\);

-- Location: LC_X12_Y8_N8
\MOD_PWM1|sPWMPERIOD[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~4\ = (\MOD_IOSPACE|Mux27~0_combout\ & ((\MOD_IOSPACE|Mux26~3_combout\ & ((D1_sPWMPERIOD[8]))) # (!\MOD_IOSPACE|Mux26~3_combout\ & (\QENC1|sQEMCOUNTER\(8))))) # (!\MOD_IOSPACE|Mux27~0_combout\ & (((\MOD_IOSPACE|Mux26~3_combout\))))
-- \MOD_PWM1|sPWMPERIOD\(8) = DFFEAS(\MOD_IOSPACE|Mux26~4\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|Mux27~0_combout\,
	datab => \QENC1|sQEMCOUNTER\(8),
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	datad => \MOD_IOSPACE|Mux26~3_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~4\,
	regout => \MOD_PWM1|sPWMPERIOD\(8));

-- Location: LC_X11_Y8_N7
\SYNCMOD|sSYNCONFIG[24]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~6\ = (\MOD_IOSPACE|oData[8]~23_combout\ & ((\MOD_IOSPACE|Mux26~5\ & ((\MOD_IOSPACE|Mux26~4\))) # (!\MOD_IOSPACE|Mux26~5\ & (L1_sSYNCONFIG[24])))) # (!\MOD_IOSPACE|oData[8]~23_combout\ & (\MOD_IOSPACE|Mux26~5\))
-- \SYNCMOD|sSYNCONFIG\(24) = DFFEAS(\MOD_IOSPACE|Mux26~6\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[8]~23_combout\,
	datab => \MOD_IOSPACE|Mux26~5\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	datad => \MOD_IOSPACE|Mux26~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~6\,
	regout => \SYNCMOD|sSYNCONFIG\(24));

-- Location: LC_X12_Y9_N0
\SYNCMOD|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux8~0_combout\ = (\SYNCMOD|sSYNCONFIG\(25) & ((\iInput~combout\(6)) # ((\SYNCMOD|sSYNCONFIG\(24))))) # (!\SYNCMOD|sSYNCONFIG\(25) & (((\iInput~combout\(4) & !\SYNCMOD|sSYNCONFIG\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iInput~combout\(6),
	datab => \SYNCMOD|sSYNCONFIG\(25),
	datac => \iInput~combout\(4),
	datad => \SYNCMOD|sSYNCONFIG\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux8~0_combout\);

-- Location: LC_X12_Y9_N1
\SYNCMOD|Mux8~1\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux8~1_combout\ = (\SYNCMOD|Mux8~0_combout\ & ((\iInput~combout\(7)) # ((!\SYNCMOD|sSYNCONFIG\(24))))) # (!\SYNCMOD|Mux8~0_combout\ & (((\iInput~combout\(5) & \SYNCMOD|sSYNCONFIG\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iInput~combout\(7),
	datab => \iInput~combout\(5),
	datac => \SYNCMOD|Mux8~0_combout\,
	datad => \SYNCMOD|sSYNCONFIG\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux8~1_combout\);

-- Location: LC_X12_Y9_N8
\SYNCMOD|Mux8~2\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux8~2_combout\ = (\SYNCMOD|sSYNCONFIG\(25) & (\SYNCMOD|sSYNCONFIG\(24))) # (!\SYNCMOD|sSYNCONFIG\(25) & ((\SYNCMOD|sSYNCONFIG\(24) & ((\iInput~combout\(1)))) # (!\SYNCMOD|sSYNCONFIG\(24) & (\iInput~combout\(0)))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(25),
	datab => \SYNCMOD|sSYNCONFIG\(24),
	datac => \iInput~combout\(0),
	datad => \iInput~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux8~2_combout\);

-- Location: LC_X12_Y9_N3
\SYNCMOD|Mux8~3\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux8~3_combout\ = (\SYNCMOD|Mux8~2_combout\ & (((\iInput~combout\(3))) # (!\SYNCMOD|sSYNCONFIG\(25)))) # (!\SYNCMOD|Mux8~2_combout\ & (\SYNCMOD|sSYNCONFIG\(25) & (\iInput~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|Mux8~2_combout\,
	datab => \SYNCMOD|sSYNCONFIG\(25),
	datac => \iInput~combout\(2),
	datad => \iInput~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux8~3_combout\);

-- Location: LC_X12_Y9_N2
\SYNCMOD|sSYNCONFIG[27]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux8~4\ = (!L1_sSYNCONFIG[27] & ((\SYNCMOD|sSYNCONFIG\(26) & (\SYNCMOD|Mux8~1_combout\)) # (!\SYNCMOD|sSYNCONFIG\(26) & ((\SYNCMOD|Mux8~3_combout\)))))
-- \SYNCMOD|sSYNCONFIG\(27) = DFFEAS(\SYNCMOD|Mux8~4\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d08",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(26),
	datab => \SYNCMOD|Mux8~1_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	datad => \SYNCMOD|Mux8~3_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux8~4\,
	regout => \SYNCMOD|sSYNCONFIG\(27));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(1),
	combout => \iDiffInput~combout\(1));

-- Location: LC_X13_Y9_N5
\OPMOD|sOutput[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~2\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\iDiffInput~combout\(1)) # ((\MOD_IOSPACE|oData[13]~33_combout\)))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((J1_sOutput[11] & !\MOD_IOSPACE|oData[13]~33_combout\))))
-- \OPMOD|sOutput\(11) = DFFEAS(\MOD_IOSPACE|Mux23~2\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \iDiffInput~combout\(1),
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	datad => \MOD_IOSPACE|oData[13]~33_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~2\,
	regout => \OPMOD|sOutput\(11));

-- Location: LC_X12_Y9_N9
\SYNCMOD|sSYNCONFIG[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~3\ = (\MOD_IOSPACE|oData[13]~33_combout\ & ((\MOD_IOSPACE|Mux23~2\ & (\SYNCMOD|sSYNCONFIG\(27))) # (!\MOD_IOSPACE|Mux23~2\ & ((L1_sSYNCONFIG[11]))))) # (!\MOD_IOSPACE|oData[13]~33_combout\ & (((\MOD_IOSPACE|Mux23~2\))))
-- \SYNCMOD|sSYNCONFIG\(11) = DFFEAS(\MOD_IOSPACE|Mux23~3\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \MOD_IOSPACE|oData[13]~33_combout\,
	datab => \SYNCMOD|sSYNCONFIG\(27),
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	datad => \MOD_IOSPACE|Mux23~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~3\,
	regout => \SYNCMOD|sSYNCONFIG\(11));

-- Location: LC_X10_Y8_N8
\SYNCMOD|sSYNCONFIG[10]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux4~4\ = (!\SYNCMOD|sSYNCONFIG\(11) & ((L1_sSYNCONFIG[10] & ((\SYNCMOD|Mux4~1_combout\))) # (!L1_sSYNCONFIG[10] & (\SYNCMOD|Mux4~3_combout\))))
-- \SYNCMOD|sSYNCONFIG\(10) = DFFEAS(\SYNCMOD|Mux4~4\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|Mux4~3_combout\,
	datab => \SYNCMOD|Mux4~1_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	datad => \SYNCMOD|sSYNCONFIG\(11),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux4~4\,
	regout => \SYNCMOD|sSYNCONFIG\(10));

-- Location: LC_X9_Y7_N5
\OPMOD|sOutput[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~10\ = (\MOD_IOSPACE|oData[14]~27_combout\ & (((\MOD_IOSPACE|Mux24~9\)))) # (!\MOD_IOSPACE|oData[14]~27_combout\ & ((\MOD_IOSPACE|Mux24~9\ & ((J1_sOutput[10]))) # (!\MOD_IOSPACE|Mux24~9\ & (\SYNCMOD|sSYNCONFIG\(10)))))
-- \OPMOD|sOutput\(10) = DFFEAS(\MOD_IOSPACE|Mux24~10\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_IOSPACE|oData[14]~27_combout\,
	datab => \SYNCMOD|sSYNCONFIG\(10),
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	datad => \MOD_IOSPACE|Mux24~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~10\,
	regout => \OPMOD|sOutput\(10));

-- Location: LC_X15_Y7_N9
\OPMOD|sOutput[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~2\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\iDiffInput~combout\(3)) # ((\MOD_IOSPACE|oData[13]~33_combout\)))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((J1_sOutput[12] & !\MOD_IOSPACE|oData[13]~33_combout\))))
-- \OPMOD|sOutput\(12) = DFFEAS(\MOD_IOSPACE|Mux22~2\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccb8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \iDiffInput~combout\(3),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	datad => \MOD_IOSPACE|oData[13]~33_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~2\,
	regout => \OPMOD|sOutput\(12));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(5),
	combout => \iDiffInput~combout\(5));

-- Location: LC_X15_Y7_N2
\OPMOD|sOutput[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~2\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\iDiffInput~combout\(5)) # ((\MOD_IOSPACE|oData[13]~33_combout\)))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((J1_sOutput[13] & !\MOD_IOSPACE|oData[13]~33_combout\))))
-- \OPMOD|sOutput\(13) = DFFEAS(\MOD_IOSPACE|Mux21~2\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \iDiffInput~combout\(5),
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	datad => \MOD_IOSPACE|oData[13]~33_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~2\,
	regout => \OPMOD|sOutput\(13));

-- Location: LC_X11_Y4_N5
\SYNCMOD|sSYNCONFIG[12]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux5~0\ = (\SYNCMOD|sSYNCONFIG\(13) & (((L1_sSYNCONFIG[12]) # (\iInput~combout\(6))))) # (!\SYNCMOD|sSYNCONFIG\(13) & (\iInput~combout\(4) & (!L1_sSYNCONFIG[12])))
-- \SYNCMOD|sSYNCONFIG\(12) = DFFEAS(\SYNCMOD|Mux5~0\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(13),
	datab => \iInput~combout\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	datad => \iInput~combout\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux5~0\,
	regout => \SYNCMOD|sSYNCONFIG\(12));

-- Location: LC_X11_Y4_N8
\SYNCMOD|sSYNCONFIG[13]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux5~2\ = (\SYNCMOD|sSYNCONFIG\(12) & ((\iInput~combout\(1)) # ((L1_sSYNCONFIG[13])))) # (!\SYNCMOD|sSYNCONFIG\(12) & (((!L1_sSYNCONFIG[13] & \iInput~combout\(0)))))
-- \SYNCMOD|sSYNCONFIG\(13) = DFFEAS(\SYNCMOD|Mux5~2\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(12),
	datab => \iInput~combout\(1),
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	datad => \iInput~combout\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux5~2\,
	regout => \SYNCMOD|sSYNCONFIG\(13));

-- Location: LC_X10_Y4_N1
\SYNCMOD|Mux5~3\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux5~3_combout\ = (\SYNCMOD|sSYNCONFIG\(13) & ((\SYNCMOD|Mux5~2\ & ((\iInput~combout\(3)))) # (!\SYNCMOD|Mux5~2\ & (\iInput~combout\(2))))) # (!\SYNCMOD|sSYNCONFIG\(13) & (((\SYNCMOD|Mux5~2\))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(13),
	datab => \iInput~combout\(2),
	datac => \iInput~combout\(3),
	datad => \SYNCMOD|Mux5~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux5~3_combout\);

-- Location: LC_X10_Y4_N8
\SYNCMOD|Mux5~1\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux5~1_combout\ = (\SYNCMOD|sSYNCONFIG\(12) & ((\SYNCMOD|Mux5~0\ & ((\iInput~combout\(7)))) # (!\SYNCMOD|Mux5~0\ & (\iInput~combout\(5))))) # (!\SYNCMOD|sSYNCONFIG\(12) & (((\SYNCMOD|Mux5~0\))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(12),
	datab => \iInput~combout\(5),
	datac => \iInput~combout\(7),
	datad => \SYNCMOD|Mux5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux5~1_combout\);

-- Location: LC_X9_Y6_N2
\SYNCMOD|sSYNCONFIG[15]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux5~5\ = (L1_sSYNCONFIG[15] & ((\SYNCMOD|sSYNCONFIG\(12) & ((\iInput~combout\(9)))) # (!\SYNCMOD|sSYNCONFIG\(12) & (\iInput~combout\(8)))))
-- \SYNCMOD|sSYNCONFIG\(15) = DFFEAS(\SYNCMOD|Mux5~5\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e040",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(12),
	datab => \iInput~combout\(8),
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	datad => \iInput~combout\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux5~5\,
	regout => \SYNCMOD|sSYNCONFIG\(15));

-- Location: LC_X9_Y6_N5
\SYNCMOD|sSYNCONFIG[14]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux5~4\ = (!\SYNCMOD|sSYNCONFIG\(15) & ((L1_sSYNCONFIG[14] & ((\SYNCMOD|Mux5~1_combout\))) # (!L1_sSYNCONFIG[14] & (\SYNCMOD|Mux5~3_combout\))))
-- \SYNCMOD|sSYNCONFIG\(14) = DFFEAS(\SYNCMOD|Mux5~4\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ca",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|Mux5~3_combout\,
	datab => \SYNCMOD|Mux5~1_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	datad => \SYNCMOD|sSYNCONFIG\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux5~4\,
	regout => \SYNCMOD|sSYNCONFIG\(14));

-- Location: LC_X10_Y6_N5
\MOD_PWM2|sDUTY[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(14) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(14)))), \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(14),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(14));

-- Location: LC_X14_Y9_N0
\QENC2|sBUFFER[30]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(30) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(30));

-- Location: LC_X14_Y9_N8
\QENC2|sBUFFER[29]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(29) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(13)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(13),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(29));

-- Location: LC_X13_Y9_N2
\QENC2|sBUFFER[28]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(28) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(12)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(12),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(28));

-- Location: LC_X14_Y9_N6
\QENC2|sBUFFER[27]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(27) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(27));

-- Location: LC_X14_Y10_N1
\QENC2|sQEMCOUNTER[27]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(27) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(27) $ (((!\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[26]~53\) # (\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[26]~53COUT1_130\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(27), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[27]~55\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(27) & !\QENC2|sQEMCOUNTER[26]~53\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[26]~53\) # (!\QENC2|sQEMCOUNTER\(27)))))
-- \QENC2|sQEMCOUNTER[27]~55COUT1_132\ = CARRY((\QENC2|sQEMDir~regout\ & (!\QENC2|sQEMCOUNTER\(27) & !\QENC2|sQEMCOUNTER[26]~53COUT1_130\)) # (!\QENC2|sQEMDir~regout\ & ((!\QENC2|sQEMCOUNTER[26]~53COUT1_130\) # (!\QENC2|sQEMCOUNTER\(27)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(27),
	datac => \QENC2|sBUFFER\(27),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[25]~51\,
	cin0 => \QENC2|sQEMCOUNTER[26]~53\,
	cin1 => \QENC2|sQEMCOUNTER[26]~53COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(27),
	cout0 => \QENC2|sQEMCOUNTER[27]~55\,
	cout1 => \QENC2|sQEMCOUNTER[27]~55COUT1_132\);

-- Location: LC_X14_Y10_N2
\QENC2|sQEMCOUNTER[28]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(28) = DFFEAS(\QENC2|sQEMDir~regout\ $ (\QENC2|sQEMCOUNTER\(28) $ ((!(!\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[27]~55\) # (\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[27]~55COUT1_132\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(28), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[28]~57\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(28)) # (!\QENC2|sQEMCOUNTER[27]~55\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(28) & !\QENC2|sQEMCOUNTER[27]~55\)))
-- \QENC2|sQEMCOUNTER[28]~57COUT1_134\ = CARRY((\QENC2|sQEMDir~regout\ & ((\QENC2|sQEMCOUNTER\(28)) # (!\QENC2|sQEMCOUNTER[27]~55COUT1_132\))) # (!\QENC2|sQEMDir~regout\ & (\QENC2|sQEMCOUNTER\(28) & !\QENC2|sQEMCOUNTER[27]~55COUT1_132\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMDir~regout\,
	datab => \QENC2|sQEMCOUNTER\(28),
	datac => \QENC2|sBUFFER\(28),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[25]~51\,
	cin0 => \QENC2|sQEMCOUNTER[27]~55\,
	cin1 => \QENC2|sQEMCOUNTER[27]~55COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(28),
	cout0 => \QENC2|sQEMCOUNTER[28]~57\,
	cout1 => \QENC2|sQEMCOUNTER[28]~57COUT1_134\);

-- Location: LC_X14_Y10_N3
\QENC2|sQEMCOUNTER[29]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(29) = DFFEAS(\QENC2|sQEMCOUNTER\(29) $ (\QENC2|sQEMDir~regout\ $ (((!\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[28]~57\) # (\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[28]~57COUT1_134\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(29), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[29]~59\ = CARRY((\QENC2|sQEMCOUNTER\(29) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[28]~57\)) # (!\QENC2|sQEMCOUNTER\(29) & ((!\QENC2|sQEMCOUNTER[28]~57\) # (!\QENC2|sQEMDir~regout\))))
-- \QENC2|sQEMCOUNTER[29]~59COUT1_136\ = CARRY((\QENC2|sQEMCOUNTER\(29) & (!\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[28]~57COUT1_134\)) # (!\QENC2|sQEMCOUNTER\(29) & ((!\QENC2|sQEMCOUNTER[28]~57COUT1_134\) # (!\QENC2|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(29),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(29),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[25]~51\,
	cin0 => \QENC2|sQEMCOUNTER[28]~57\,
	cin1 => \QENC2|sQEMCOUNTER[28]~57COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(29),
	cout0 => \QENC2|sQEMCOUNTER[29]~59\,
	cout1 => \QENC2|sQEMCOUNTER[29]~59COUT1_136\);

-- Location: LC_X14_Y10_N4
\QENC2|sQEMCOUNTER[30]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(30) = DFFEAS(\QENC2|sQEMCOUNTER\(30) $ (\QENC2|sQEMDir~regout\ $ ((!(!\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[29]~59\) # (\QENC2|sQEMCOUNTER[25]~51\ & \QENC2|sQEMCOUNTER[29]~59COUT1_136\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC2|oPulse~0\, \QENC2|sBUFFER\(30), \QENC2|sWrCounter~regout\, , )
-- \QENC2|sQEMCOUNTER[30]~61\ = CARRY((\QENC2|sQEMCOUNTER\(30) & ((\QENC2|sQEMDir~regout\) # (!\QENC2|sQEMCOUNTER[29]~59COUT1_136\))) # (!\QENC2|sQEMCOUNTER\(30) & (\QENC2|sQEMDir~regout\ & !\QENC2|sQEMCOUNTER[29]~59COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(30),
	datab => \QENC2|sQEMDir~regout\,
	datac => \QENC2|sBUFFER\(30),
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[25]~51\,
	cin0 => \QENC2|sQEMCOUNTER[29]~59\,
	cin1 => \QENC2|sQEMCOUNTER[29]~59COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(30),
	cout => \QENC2|sQEMCOUNTER[30]~61\);

-- Location: LC_X12_Y6_N1
\MOD_PWM2|sPWMPERIOD[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~3\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(14)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (D2_sPWMPERIOD[14]))))
-- \MOD_PWM2|sPWMPERIOD\(14) = DFFEAS(\MOD_IOSPACE|Mux20~3\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	datad => \QENC2|sQEMCOUNTER\(14),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~3\,
	regout => \MOD_PWM2|sPWMPERIOD\(14));

-- Location: LC_X11_Y6_N1
\MOD_IOSPACE|sQEMBUFFER2[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~4\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux20~3\ & ((C1_sQEMBUFFER2[14]))) # (!\MOD_IOSPACE|Mux20~3\ & (\MOD_PWM2|sDUTY\(14))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux20~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_PWM2|sDUTY\(14),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \QENC2|sQEMCOUNTER\(30),
	datad => \MOD_IOSPACE|Mux20~3\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~4\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(14));

-- Location: LC_X10_Y7_N3
\MOD_RESET|sResetPeriod[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~5\ = (\MOD_IOSPACE|oData[14]~30_combout\ & (\MOD_IOSPACE|oData[14]~29_combout\ & (E1_sResetPeriod[14]))) # (!\MOD_IOSPACE|oData[14]~30_combout\ & (((\MOD_IOSPACE|Mux20~4\)) # (!\MOD_IOSPACE|oData[14]~29_combout\)))
-- \MOD_RESET|sResetPeriod\(14) = DFFEAS(\MOD_IOSPACE|Mux20~5\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_IOSPACE|oData[14]~30_combout\,
	datab => \MOD_IOSPACE|oData[14]~29_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	datad => \MOD_IOSPACE|Mux20~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~5\,
	regout => \MOD_RESET|sResetPeriod\(14));

-- Location: LC_X10_Y7_N4
\MOD_PWM1|sPWMPERIOD[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~6\ = (\MOD_IOSPACE|oData[8]~28_combout\ & ((\MOD_IOSPACE|Mux20~5\ & ((D1_sPWMPERIOD[14]))) # (!\MOD_IOSPACE|Mux20~5\ & (\QENC1|sQEMCOUNTER\(14))))) # (!\MOD_IOSPACE|oData[8]~28_combout\ & (((\MOD_IOSPACE|Mux20~5\))))
-- \MOD_PWM1|sPWMPERIOD\(14) = DFFEAS(\MOD_IOSPACE|Mux20~6\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \QENC1|sQEMCOUNTER\(14),
	datab => \MOD_IOSPACE|oData[8]~28_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	datad => \MOD_IOSPACE|Mux20~5\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~6\,
	regout => \MOD_PWM1|sPWMPERIOD\(14));

-- Location: LC_X9_Y7_N9
\MOD_IOSPACE|Mux20~10\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~10_combout\ = (\MOD_IOSPACE|Mux20~6\ & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_IOSPACE|Mux20~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~10_combout\);

-- Location: LC_X9_Y7_N0
\SYNCMOD|sSYNCONFIG[30]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~7\ = (\MOD_IOSPACE|oData[14]~32_combout\ & (\MOD_IOSPACE|oData[14]~31_combout\ & (L1_sSYNCONFIG[30]))) # (!\MOD_IOSPACE|oData[14]~32_combout\ & (((\MOD_IOSPACE|Mux20~10_combout\)) # (!\MOD_IOSPACE|oData[14]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[14]~32_combout\,
	datab => \MOD_IOSPACE|oData[14]~31_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	datad => \MOD_IOSPACE|Mux20~10_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~7\,
	regout => \SYNCMOD|sSYNCONFIG\(30));

-- Location: LC_X9_Y7_N1
\OPMOD|sOutput[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~8\ = (\MOD_IOSPACE|oData[14]~27_combout\ & (((\MOD_IOSPACE|Mux20~7\)))) # (!\MOD_IOSPACE|oData[14]~27_combout\ & ((\MOD_IOSPACE|Mux20~7\ & ((J1_sOutput[14]))) # (!\MOD_IOSPACE|Mux20~7\ & (\SYNCMOD|sSYNCONFIG\(14)))))
-- \OPMOD|sOutput\(14) = DFFEAS(\MOD_IOSPACE|Mux20~8\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(14),
	datab => \MOD_IOSPACE|oData[14]~27_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	datad => \MOD_IOSPACE|Mux20~7\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~8\,
	regout => \OPMOD|sOutput\(14));

-- Location: LC_X5_Y6_N4
\MOD_PWM1|sDUTY[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~7\ = (\MOD_IOSPACE|oData[4]~3_combout\ & (((\MOD_SRAMIO|IO_ADDR\(6))))) # (!\MOD_IOSPACE|oData[4]~3_combout\ & ((\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_IOSPACE|Mux30~6_combout\)) # (!\MOD_SRAMIO|IO_ADDR\(6) & ((D1_sDUTY[4])))))
-- \MOD_PWM1|sDUTY\(4) = DFFEAS(\MOD_IOSPACE|Mux30~7\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_IOSPACE|Mux30~6_combout\,
	datab => \MOD_IOSPACE|oData[4]~3_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~7\,
	regout => \MOD_PWM1|sDUTY\(4));

-- Location: LC_X9_Y4_N2
\QENC1|sBUFFER[20]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(20) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(20));

-- Location: LC_X6_Y4_N4
\QENC1|sQEMCOUNTER[20]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(20) = DFFEAS(\QENC1|sQEMCOUNTER\(20) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[19]~29\) # (\QENC1|sQEMCOUNTER[15]~33\ & \QENC1|sQEMCOUNTER[19]~29COUT1_120\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(20), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[20]~19\ = CARRY((\QENC1|sQEMCOUNTER\(20) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[19]~29COUT1_120\))) # (!\QENC1|sQEMCOUNTER\(20) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[19]~29COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(20),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(20),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[15]~33\,
	cin0 => \QENC1|sQEMCOUNTER[19]~29\,
	cin1 => \QENC1|sQEMCOUNTER[19]~29COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(20),
	cout => \QENC1|sQEMCOUNTER[20]~19\);

-- Location: LC_X5_Y6_N3
\MOD_IOSPACE|sQEMBUFFER1[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~8\ = (\MOD_IOSPACE|Mux30~7\ & ((\ioSYNC[4]~4\) # ((!\MOD_IOSPACE|oData[4]~3_combout\)))) # (!\MOD_IOSPACE|Mux30~7\ & (((C1_sQEMBUFFER1[4] & \MOD_IOSPACE|oData[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|Mux30~7\,
	datab => \ioSYNC[4]~4\,
	datac => \QENC1|sQEMCOUNTER\(20),
	datad => \MOD_IOSPACE|oData[4]~3_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~8\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(4));

-- Location: LC_X14_Y6_N9
\MOD_PWM2|sDUTY[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(4) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(4));

-- Location: LC_X9_Y8_N3
\MOD_PWM2|sPWMPERIOD[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~14\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(4)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (D2_sPWMPERIOD[4]))))
-- \MOD_PWM2|sPWMPERIOD\(4) = DFFEAS(\MOD_IOSPACE|Mux30~14\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	datad => \QENC2|sQEMCOUNTER\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~14\,
	regout => \MOD_PWM2|sPWMPERIOD\(4));

-- Location: LC_X14_Y6_N2
\MOD_IOSPACE|sQEMBUFFER2[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~15\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux30~14\ & ((C1_sQEMBUFFER2[4]))) # (!\MOD_IOSPACE|Mux30~14\ & (\MOD_PWM2|sDUTY\(4))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux30~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_PWM2|sDUTY\(4),
	datac => \QENC2|sQEMCOUNTER\(20),
	datad => \MOD_IOSPACE|Mux30~14\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~15\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(4));

-- Location: LC_X6_Y8_N9
\MOD_PWM1|sPWMPERIOD[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sPWMPERIOD\(4) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sPWMPERIOD\(4));

-- Location: LC_X6_Y8_N0
\MOD_RESET|sResetPeriod[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~9\ = (\MOD_IOSPACE|oData[4]~5\ & (!\MOD_IOSPACE|Mux27~0_combout\)) # (!\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux27~0_combout\ & ((\MOD_PWM1|sPWMPERIOD\(4)))) # (!\MOD_IOSPACE|Mux27~0_combout\ & (E1_sResetPeriod[4]))))
-- \MOD_RESET|sResetPeriod\(4) = DFFEAS(\MOD_IOSPACE|Mux30~9\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7632",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_IOSPACE|oData[4]~5\,
	datab => \MOD_IOSPACE|Mux27~0_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(4),
	datad => \MOD_PWM1|sPWMPERIOD\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~9\,
	regout => \MOD_RESET|sResetPeriod\(4));

-- Location: LC_X5_Y6_N6
\MOD_IOSPACE|Mux30~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~12_combout\ = (\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux30~9\ & ((\MOD_IOSPACE|Mux30~11\))) # (!\MOD_IOSPACE|Mux30~9\ & (\QENC1|sQEMCOUNTER\(4))))) # (!\MOD_IOSPACE|oData[4]~5\ & (((\MOD_IOSPACE|Mux30~9\))))

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
	dataa => \MOD_IOSPACE|oData[4]~5\,
	datab => \QENC1|sQEMCOUNTER\(4),
	datac => \MOD_IOSPACE|Mux30~11\,
	datad => \MOD_IOSPACE|Mux30~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~12_combout\);

-- Location: LC_X5_Y6_N7
\MOD_IOSPACE|Mux30~13\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~13_combout\ = (\MOD_IOSPACE|oData[4]~4_combout\ & ((\iInput~combout\(4)) # ((!\MOD_IOSPACE|Mux1~0_combout\)))) # (!\MOD_IOSPACE|oData[4]~4_combout\ & (((\MOD_IOSPACE|Mux1~0_combout\ & \MOD_IOSPACE|Mux30~12_combout\))))

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
	dataa => \MOD_IOSPACE|oData[4]~4_combout\,
	datab => \iInput~combout\(4),
	datac => \MOD_IOSPACE|Mux1~0_combout\,
	datad => \MOD_IOSPACE|Mux30~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~13_combout\);

-- Location: LC_X6_Y6_N0
\MOD_IOSPACE|Mux30~16\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~16_combout\ = (\MOD_IOSPACE|Mux1~0_combout\ & (((\MOD_IOSPACE|Mux30~13_combout\)))) # (!\MOD_IOSPACE|Mux1~0_combout\ & ((\MOD_IOSPACE|Mux30~13_combout\ & ((\MOD_IOSPACE|Mux30~15\))) # (!\MOD_IOSPACE|Mux30~13_combout\ & 
-- (\MOD_IOSPACE|Mux30~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|Mux1~0_combout\,
	datab => \MOD_IOSPACE|Mux30~8\,
	datac => \MOD_IOSPACE|Mux30~15\,
	datad => \MOD_IOSPACE|Mux30~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~16_combout\);

-- Location: LC_X6_Y6_N6
\MOD_IOSPACE|oData[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(4) = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(7) & (!\MOD_IOSPACE|oData[4]~12_combout\ & (\MOD_IOSPACE|Mux30~16_combout\ & !\MOD_SRAMIO|IO_ADDR\(3)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(7),
	datab => \MOD_IOSPACE|oData[4]~12_combout\,
	datac => \MOD_IOSPACE|Mux30~16_combout\,
	datad => \MOD_SRAMIO|IO_ADDR\(3),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(4));

-- Location: LC_X10_Y5_N6
\oCPLD_DEBUG[3]~2\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[3]~2_combout\ = (((\iDIP_SWITCH~combout\(0) & \iDIP_SWITCH~combout\(2))))

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
	datac => \iDIP_SWITCH~combout\(0),
	datad => \iDIP_SWITCH~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oCPLD_DEBUG[3]~2_combout\);

-- Location: LC_X13_Y6_N8
\MOD_IOSPACE|sQEMBUFFER2[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER2\(0) = DFFEAS((((\QENC2|sQEMCOUNTER\(16)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\, , , , )

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
	clk => \ALT_INV_iRD~combout\,
	datad => \QENC2|sQEMCOUNTER\(16),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(0));

-- Location: LC_X12_Y6_N2
\MOD_PWM2|sPWMPERIOD[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~2\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(0)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (D2_sPWMPERIOD[0]))))
-- \MOD_PWM2|sPWMPERIOD\(0) = DFFEAS(\MOD_IOSPACE|Mux30~2\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \QENC2|sQEMCOUNTER\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~2\,
	regout => \MOD_PWM2|sPWMPERIOD\(0));

-- Location: LC_X12_Y6_N8
\MOD_PWM2|sDUTY[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~3\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux30~2\ & (\MOD_IOSPACE|sQEMBUFFER2\(0))) # (!\MOD_IOSPACE|Mux30~2\ & ((D2_sDUTY[0]))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux30~2\))))
-- \MOD_PWM2|sDUTY\(0) = DFFEAS(\MOD_IOSPACE|Mux30~3\, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_IOSPACE|sQEMBUFFER2\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \MOD_IOSPACE|Mux30~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~3\,
	regout => \MOD_PWM2|sDUTY\(0));

-- Location: LC_X11_Y5_N0
\MOD_IOSPACE|Mux34~17\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~17_combout\ = (!\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_IOSPACE|oData[8]~2\ & (!\MOD_SRAMIO|IO_ADDR\(6) & \MOD_IOSPACE|Mux30~3\)))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_IOSPACE|oData[8]~2\,
	datac => \MOD_SRAMIO|IO_ADDR\(6),
	datad => \MOD_IOSPACE|Mux30~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~17_combout\);

-- Location: LC_X12_Y7_N2
\MOD_PWM1|sPWMPERIOD[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~6\ = ((!\MOD_SRAMIO|IO_ADDR\(5) & (D1_sPWMPERIOD[0] & !\MOD_SRAMIO|IO_ADDR\(6))))
-- \MOD_PWM1|sPWMPERIOD\(0) = DFFEAS(\MOD_IOSPACE|Mux34~6\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~6\,
	regout => \MOD_PWM1|sPWMPERIOD\(0));

-- Location: LC_X10_Y4_N9
\MOD_IOSPACE|Mux34~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~12_combout\ = (\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_SRAMIO|IO_ADDR\(6))))) # (!\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(6) & (\iInput~combout\(0))) # (!\MOD_SRAMIO|IO_ADDR\(6) & ((\QENC1|sQEMCOUNTER\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iInput~combout\(0),
	datab => \QENC1|sQEMCOUNTER\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~12_combout\);

-- Location: LC_X7_Y9_N9
\MOD_IOSPACE|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux8~0_combout\ = ((!\MOD_SRAMIO|IO_ADDR\(6) & ((!\MOD_SRAMIO|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux8~0_combout\);

-- Location: LC_X7_Y9_N6
\MOD_IOSPACE|oWrRESETCONFIG\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oWrRESETCONFIG~regout\ = DFFEAS((\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_IOSPACE|Mux8~0_combout\ & (\MOD_SRAMIO|IO_ADDR\(4) & \MOD_IOSPACE|Mux6~4\))), GLOBAL(\MOD_SRAMIO|sWrState.write_start2~regout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_SRAMIO|sWrState.write_start2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_IOSPACE|Mux8~0_combout\,
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_IOSPACE|Mux6~4\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oWrRESETCONFIG~regout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(0),
	combout => \iDiffInput~combout\(0));

-- Location: LC_X16_Y5_N3
\IPMOD|sDiffFilter[0][0]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[0][0]~regout\ = DFFEAS(\iDiffInput~combout\(1) $ ((((\iDiffInput~combout\(0))))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iDiffInput~combout\(1),
	datac => \iDiffInput~combout\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[0][0]~regout\);

-- Location: LC_X16_Y5_N5
\IPMOD|sDiffFilter[4][0]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|oInputStatus[0]~0\ = (((B1_sDiffFilter[4][0] & \IPMOD|sDiffFilter[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[3][0]~regout\,
	datad => \IPMOD|sDiffFilter[0][0]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IPMOD|oInputStatus[0]~0\,
	regout => \IPMOD|sDiffFilter[4][0]~regout\);

-- Location: LC_X16_Y5_N6
\IPMOD|sDiffFilter[1][0]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|oInputStatus\(0) = (\IPMOD|sDiffFilter[3][0]~regout\ & (\IPMOD|sDiffFilter[2][0]~regout\ & (B1_sDiffFilter[1][0] & \IPMOD|oInputStatus[0]~0\)))
-- \IPMOD|sDiffFilter[1][0]~regout\ = DFFEAS(\IPMOD|oInputStatus\(0), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[0][0]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \IPMOD|sDiffFilter[3][0]~regout\,
	datab => \IPMOD|sDiffFilter[2][0]~regout\,
	datac => \IPMOD|sDiffFilter[0][0]~regout\,
	datad => \IPMOD|oInputStatus[0]~0\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IPMOD|oInputStatus\(0),
	regout => \IPMOD|sDiffFilter[1][0]~regout\);

-- Location: LC_X16_Y5_N7
\IPMOD|sDiffFilter[2][0]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[2][0]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[1][0]~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[1][0]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[2][0]~regout\);

-- Location: LC_X16_Y5_N4
\IPMOD|sDiffFilter[3][0]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[3][0]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[2][0]~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[2][0]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[3][0]~regout\);

-- Location: LC_X15_Y4_N9
\MOD_IOSPACE|Mux34~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~7_combout\ = (\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_SRAMIO|IO_ADDR\(5)) # ((\IPMOD|oInputStatus\(0))))) # (!\MOD_SRAMIO|IO_ADDR\(6) & (!\MOD_SRAMIO|IO_ADDR\(5) & ((\QENC1|sQEMCONFIG~regout\))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \IPMOD|oInputStatus\(0),
	datad => \QENC1|sQEMCONFIG~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~7_combout\);

-- Location: LC_X15_Y4_N4
\MOD_RESET|sResetConfig\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~8\ = (\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_IOSPACE|Mux34~7_combout\ & ((\SYNCMOD|sSYNCONFIG\(0)))) # (!\MOD_IOSPACE|Mux34~7_combout\ & (E1_sResetConfig)))) # (!\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_IOSPACE|Mux34~7_combout\))
-- \MOD_RESET|sResetConfig~regout\ = DFFEAS(\MOD_IOSPACE|Mux34~8\, \MOD_IOSPACE|oWrRESETCONFIG~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETCONFIG~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_IOSPACE|Mux34~7_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \SYNCMOD|sSYNCONFIG\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~8\,
	regout => \MOD_RESET|sResetConfig~regout\);

-- Location: LC_X15_Y4_N8
\MOD_RESET|COUNTER1US~0\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US~0_combout\ = (((!\MOD_RESET|sResetConfig~regout\))) # (!\iSW_RESET_CPLD~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iSW_RESET_CPLD~combout\,
	datac => \MOD_RESET|sResetConfig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|COUNTER1US~0_combout\);

-- Location: LC_X15_Y3_N0
\MOD_RESET|COUNTER1US:vCounter1US[11]~4\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\ = ((\MOD_RESET|Equal1~4_combout\) # ((!\MOD_RESET|sResetConfig~regout\) # (!\iSW_RESET_CPLD~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|Equal1~4_combout\,
	datac => \iSW_RESET_CPLD~combout\,
	datad => \MOD_RESET|sResetConfig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\);

-- Location: LC_X16_Y3_N7
\MOD_RESET|COUNTER1US:vCounter1US[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[0]~regout\ = DFFEAS((((!\MOD_RESET|COUNTER1US:vCounter1US[0]~regout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => \MOD_RESET|COUNTER1US:vCounter1US[0]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[0]~regout\);

-- Location: LC_X15_Y3_N4
\MOD_RESET|COUNTER1US:vCounter1US[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[1]~regout\ = DFFEAS(\MOD_RESET|COUNTER1US:vCounter1US[0]~regout\ $ ((\MOD_RESET|COUNTER1US:vCounter1US[1]~regout\)), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[1]~1\ = CARRY((\MOD_RESET|COUNTER1US:vCounter1US[0]~regout\ & (\MOD_RESET|COUNTER1US:vCounter1US[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[0]~regout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[1]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[1]~regout\,
	cout => \MOD_RESET|COUNTER1US:vCounter1US[1]~1\);

-- Location: LC_X15_Y3_N5
\MOD_RESET|COUNTER1US:vCounter1US[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[2]~regout\ = DFFEAS(\MOD_RESET|COUNTER1US:vCounter1US[2]~regout\ $ ((((\MOD_RESET|COUNTER1US:vCounter1US[1]~1\)))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[2]~1\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[1]~1\)) # (!\MOD_RESET|COUNTER1US:vCounter1US[2]~regout\))
-- \MOD_RESET|COUNTER1US:vCounter1US[2]~1COUT1_5\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[1]~1\)) # (!\MOD_RESET|COUNTER1US:vCounter1US[2]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[2]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[2]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[2]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[2]~1COUT1_5\);

-- Location: LC_X15_Y3_N6
\MOD_RESET|COUNTER1US:vCounter1US[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[3]~regout\ = DFFEAS(\MOD_RESET|COUNTER1US:vCounter1US[3]~regout\ $ ((((!(!\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[2]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[2]~1COUT1_5\))))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[3]~1\ = CARRY((\MOD_RESET|COUNTER1US:vCounter1US[3]~regout\ & ((!\MOD_RESET|COUNTER1US:vCounter1US[2]~1\))))
-- \MOD_RESET|COUNTER1US:vCounter1US[3]~1COUT1_5\ = CARRY((\MOD_RESET|COUNTER1US:vCounter1US[3]~regout\ & ((!\MOD_RESET|COUNTER1US:vCounter1US[2]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[3]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[1]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[2]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[2]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[3]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[3]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[3]~1COUT1_5\);

-- Location: LC_X15_Y3_N3
\MOD_RESET|Equal1~0\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Equal1~0_combout\ = (!\MOD_RESET|COUNTER1US:vCounter1US[2]~regout\ & (!\MOD_RESET|COUNTER1US:vCounter1US[3]~regout\ & (!\MOD_RESET|COUNTER1US:vCounter1US[1]~regout\ & !\MOD_RESET|COUNTER1US:vCounter1US[0]~regout\)))

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
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[2]~regout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[3]~regout\,
	datac => \MOD_RESET|COUNTER1US:vCounter1US[1]~regout\,
	datad => \MOD_RESET|COUNTER1US:vCounter1US[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Equal1~0_combout\);

-- Location: LC_X15_Y3_N7
\MOD_RESET|COUNTER1US:vCounter1US[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[4]~regout\ = DFFEAS((\MOD_RESET|COUNTER1US:vCounter1US[4]~regout\ $ (((!\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[3]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[3]~1COUT1_5\)))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[4]~1\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[3]~1\) # (!\MOD_RESET|COUNTER1US:vCounter1US[4]~regout\)))
-- \MOD_RESET|COUNTER1US:vCounter1US[4]~1COUT1_5\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[3]~1COUT1_5\) # (!\MOD_RESET|COUNTER1US:vCounter1US[4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[4]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[1]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[3]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[3]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[4]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[4]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[4]~1COUT1_5\);

-- Location: LC_X15_Y3_N8
\MOD_RESET|COUNTER1US:vCounter1US[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[5]~regout\ = DFFEAS(\MOD_RESET|COUNTER1US:vCounter1US[5]~regout\ $ ((((!(!\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[4]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[4]~1COUT1_5\))))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[5]~1\ = CARRY((\MOD_RESET|COUNTER1US:vCounter1US[5]~regout\ & ((!\MOD_RESET|COUNTER1US:vCounter1US[4]~1\))))
-- \MOD_RESET|COUNTER1US:vCounter1US[5]~1COUT1_5\ = CARRY((\MOD_RESET|COUNTER1US:vCounter1US[5]~regout\ & ((!\MOD_RESET|COUNTER1US:vCounter1US[4]~1COUT1_5\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[5]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[1]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[4]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[4]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[5]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[5]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[5]~1COUT1_5\);

-- Location: LC_X15_Y3_N9
\MOD_RESET|COUNTER1US:vCounter1US[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[6]~regout\ = DFFEAS((\MOD_RESET|COUNTER1US:vCounter1US[6]~regout\ $ (((!\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[5]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[1]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[5]~1COUT1_5\)))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[6]~1\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[5]~1COUT1_5\) # (!\MOD_RESET|COUNTER1US:vCounter1US[6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[6]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[1]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[5]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[5]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[6]~regout\,
	cout => \MOD_RESET|COUNTER1US:vCounter1US[6]~1\);

-- Location: LC_X16_Y3_N0
\MOD_RESET|COUNTER1US:vCounter1US[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[7]~regout\ = DFFEAS((\MOD_RESET|COUNTER1US:vCounter1US[7]~regout\ $ ((!\MOD_RESET|COUNTER1US:vCounter1US[6]~1\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[7]~1\ = CARRY(((\MOD_RESET|COUNTER1US:vCounter1US[7]~regout\ & !\MOD_RESET|COUNTER1US:vCounter1US[6]~1\)))
-- \MOD_RESET|COUNTER1US:vCounter1US[7]~1COUT1_5\ = CARRY(((\MOD_RESET|COUNTER1US:vCounter1US[7]~regout\ & !\MOD_RESET|COUNTER1US:vCounter1US[6]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[7]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[6]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[7]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[7]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[7]~1COUT1_5\);

-- Location: LC_X16_Y3_N1
\MOD_RESET|COUNTER1US:vCounter1US[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[8]~regout\ = DFFEAS((\MOD_RESET|COUNTER1US:vCounter1US[8]~regout\ $ (((!\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[7]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[7]~1COUT1_5\)))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[8]~1\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[7]~1\) # (!\MOD_RESET|COUNTER1US:vCounter1US[8]~regout\)))
-- \MOD_RESET|COUNTER1US:vCounter1US[8]~1COUT1_5\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[7]~1COUT1_5\) # (!\MOD_RESET|COUNTER1US:vCounter1US[8]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[8]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[6]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[7]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[7]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[8]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[8]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[8]~1COUT1_5\);

-- Location: LC_X16_Y3_N2
\MOD_RESET|COUNTER1US:vCounter1US[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[9]~regout\ = DFFEAS((\MOD_RESET|COUNTER1US:vCounter1US[9]~regout\ $ ((!(!\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[8]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[8]~1COUT1_5\)))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[9]~1\ = CARRY(((\MOD_RESET|COUNTER1US:vCounter1US[9]~regout\ & !\MOD_RESET|COUNTER1US:vCounter1US[8]~1\)))
-- \MOD_RESET|COUNTER1US:vCounter1US[9]~1COUT1_5\ = CARRY(((\MOD_RESET|COUNTER1US:vCounter1US[9]~regout\ & !\MOD_RESET|COUNTER1US:vCounter1US[8]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[9]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[6]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[8]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[8]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[9]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[9]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[9]~1COUT1_5\);

-- Location: LC_X16_Y3_N3
\MOD_RESET|COUNTER1US:vCounter1US[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[10]~regout\ = DFFEAS(\MOD_RESET|COUNTER1US:vCounter1US[10]~regout\ $ (((((!\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[9]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[9]~1COUT1_5\))))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[10]~1\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[9]~1\)) # (!\MOD_RESET|COUNTER1US:vCounter1US[10]~regout\))
-- \MOD_RESET|COUNTER1US:vCounter1US[10]~1COUT1_5\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[9]~1COUT1_5\)) # (!\MOD_RESET|COUNTER1US:vCounter1US[10]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[10]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[6]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[9]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[9]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[10]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[10]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[10]~1COUT1_5\);

-- Location: LC_X16_Y3_N4
\MOD_RESET|COUNTER1US:vCounter1US[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[11]~regout\ = DFFEAS((\MOD_RESET|COUNTER1US:vCounter1US[11]~regout\ $ ((!(!\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & \MOD_RESET|COUNTER1US:vCounter1US[10]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[6]~1\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[10]~1COUT1_5\)))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[11]~3\ = CARRY(((\MOD_RESET|COUNTER1US:vCounter1US[11]~regout\ & !\MOD_RESET|COUNTER1US:vCounter1US[10]~1COUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[11]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[6]~1\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[10]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[10]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[11]~regout\,
	cout => \MOD_RESET|COUNTER1US:vCounter1US[11]~3\);

-- Location: LC_X16_Y3_N8
\MOD_RESET|Equal1~2\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Equal1~2_combout\ = (\MOD_RESET|COUNTER1US:vCounter1US[11]~regout\ & (\MOD_RESET|COUNTER1US:vCounter1US[9]~regout\ & (!\MOD_RESET|COUNTER1US:vCounter1US[8]~regout\ & \MOD_RESET|COUNTER1US:vCounter1US[10]~regout\)))

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
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[11]~regout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[9]~regout\,
	datac => \MOD_RESET|COUNTER1US:vCounter1US[8]~regout\,
	datad => \MOD_RESET|COUNTER1US:vCounter1US[10]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Equal1~2_combout\);

-- Location: LC_X16_Y3_N5
\MOD_RESET|COUNTER1US:vCounter1US[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[12]~regout\ = DFFEAS(\MOD_RESET|COUNTER1US:vCounter1US[12]~regout\ $ ((((\MOD_RESET|COUNTER1US:vCounter1US[11]~3\)))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )
-- \MOD_RESET|COUNTER1US:vCounter1US[12]~1\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[11]~3\)) # (!\MOD_RESET|COUNTER1US:vCounter1US[12]~regout\))
-- \MOD_RESET|COUNTER1US:vCounter1US[12]~1COUT1_5\ = CARRY(((!\MOD_RESET|COUNTER1US:vCounter1US[11]~3\)) # (!\MOD_RESET|COUNTER1US:vCounter1US[12]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[12]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[11]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[12]~regout\,
	cout0 => \MOD_RESET|COUNTER1US:vCounter1US[12]~1\,
	cout1 => \MOD_RESET|COUNTER1US:vCounter1US[12]~1COUT1_5\);

-- Location: LC_X16_Y3_N6
\MOD_RESET|COUNTER1US:vCounter1US[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER1US:vCounter1US[13]~regout\ = DFFEAS(\MOD_RESET|COUNTER1US:vCounter1US[13]~regout\ $ ((((!(!\MOD_RESET|COUNTER1US:vCounter1US[11]~3\ & \MOD_RESET|COUNTER1US:vCounter1US[12]~1\) # (\MOD_RESET|COUNTER1US:vCounter1US[11]~3\ & 
-- \MOD_RESET|COUNTER1US:vCounter1US[12]~1COUT1_5\))))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[13]~regout\,
	aclr => \MOD_RESET|COUNTER1US:vCounter1US[11]~4_combout\,
	cin => \MOD_RESET|COUNTER1US:vCounter1US[11]~3\,
	cin0 => \MOD_RESET|COUNTER1US:vCounter1US[12]~1\,
	cin1 => \MOD_RESET|COUNTER1US:vCounter1US[12]~1COUT1_5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER1US:vCounter1US[13]~regout\);

-- Location: LC_X16_Y3_N9
\MOD_RESET|Equal1~3\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Equal1~3_combout\ = (((\MOD_RESET|COUNTER1US:vCounter1US[12]~regout\ & \MOD_RESET|COUNTER1US:vCounter1US[13]~regout\)))

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
	datac => \MOD_RESET|COUNTER1US:vCounter1US[12]~regout\,
	datad => \MOD_RESET|COUNTER1US:vCounter1US[13]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Equal1~3_combout\);

-- Location: LC_X15_Y3_N1
\MOD_RESET|Equal1~1\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Equal1~1_combout\ = (!\MOD_RESET|COUNTER1US:vCounter1US[5]~regout\ & (!\MOD_RESET|COUNTER1US:vCounter1US[4]~regout\ & (\MOD_RESET|COUNTER1US:vCounter1US[7]~regout\ & !\MOD_RESET|COUNTER1US:vCounter1US[6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|COUNTER1US:vCounter1US[5]~regout\,
	datab => \MOD_RESET|COUNTER1US:vCounter1US[4]~regout\,
	datac => \MOD_RESET|COUNTER1US:vCounter1US[7]~regout\,
	datad => \MOD_RESET|COUNTER1US:vCounter1US[6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Equal1~1_combout\);

-- Location: LC_X15_Y3_N2
\MOD_RESET|Equal1~4\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Equal1~4_combout\ = (\MOD_RESET|Equal1~0_combout\ & (\MOD_RESET|Equal1~2_combout\ & (\MOD_RESET|Equal1~3_combout\ & \MOD_RESET|Equal1~1_combout\)))

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
	dataa => \MOD_RESET|Equal1~0_combout\,
	datab => \MOD_RESET|Equal1~2_combout\,
	datac => \MOD_RESET|Equal1~3_combout\,
	datad => \MOD_RESET|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Equal1~4_combout\);

-- Location: LC_X16_Y4_N9
\MOD_RESET|sCounter1USOF~2\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sCounter1USOF~2_combout\ = ((!\MOD_RESET|Equal1~4_combout\ & ((!\MOD_RESET|sResetConfig~regout\) # (!\iSW_RESET_CPLD~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \iSW_RESET_CPLD~combout\,
	datac => \MOD_RESET|sResetConfig~regout\,
	datad => \MOD_RESET|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sCounter1USOF~2_combout\);

-- Location: LC_X16_Y4_N6
\MOD_RESET|sCounter1USOF\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sCounter1USOF~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|sCounter1USOF~2_combout\, , , VCC, \MOD_RESET|Equal1~4_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => VCC,
	aclr => \MOD_RESET|sCounter1USOF~2_combout\,
	aload => \MOD_RESET|Equal1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sCounter1USOF~regout\);

-- Location: LC_X15_Y4_N5
\MOD_RESET|COUNTER:vCounter[15]~0\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[15]~0_combout\ = (\MOD_RESET|sCounter1USOF~regout\ & (((\MOD_RESET|sResetConfig~regout\))))

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
	dataa => \MOD_RESET|sCounter1USOF~regout\,
	datac => \MOD_RESET|sResetConfig~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|COUNTER:vCounter[15]~0_combout\);

-- Location: LC_X13_Y4_N1
\MOD_RESET|COUNTER:vCounter[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[0]~regout\ = DFFEAS((((\MOD_RESET|Add0~0_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~0_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[0]~regout\);

-- Location: LC_X13_Y4_N2
\MOD_RESET|Add0~0\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~0_combout\ = ((!\MOD_RESET|COUNTER:vCounter[0]~regout\))
-- \MOD_RESET|Add0~2\ = CARRY(((\MOD_RESET|COUNTER:vCounter[0]~regout\)))
-- \MOD_RESET|Add0~2COUT1_94\ = CARRY(((\MOD_RESET|COUNTER:vCounter[0]~regout\)))

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
	datab => \MOD_RESET|COUNTER:vCounter[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~0_combout\,
	cout0 => \MOD_RESET|Add0~2\,
	cout1 => \MOD_RESET|Add0~2COUT1_94\);

-- Location: LC_X13_Y4_N0
\MOD_RESET|COUNTER:vCounter[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[1]~regout\ = DFFEAS((((\MOD_RESET|Add0~5_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~5_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[1]~regout\);

-- Location: LC_X13_Y4_N3
\MOD_RESET|Add0~5\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~5_combout\ = (\MOD_RESET|COUNTER:vCounter[1]~regout\ $ ((\MOD_RESET|Add0~2\)))
-- \MOD_RESET|Add0~7\ = CARRY(((!\MOD_RESET|Add0~2\) # (!\MOD_RESET|COUNTER:vCounter[1]~regout\)))
-- \MOD_RESET|Add0~7COUT1_96\ = CARRY(((!\MOD_RESET|Add0~2COUT1_94\) # (!\MOD_RESET|COUNTER:vCounter[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[1]~regout\,
	cin0 => \MOD_RESET|Add0~2\,
	cin1 => \MOD_RESET|Add0~2COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~5_combout\,
	cout0 => \MOD_RESET|Add0~7\,
	cout1 => \MOD_RESET|Add0~7COUT1_96\);

-- Location: LC_X10_Y4_N2
\MOD_RESET|sResetPeriod[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~0\ = (\MOD_RESET|Add0~0_combout\ & ((\MOD_RESET|Add0~5_combout\ $ (\MOD_RESET|sResetPeriod\(1))) # (!E1_sResetPeriod[0]))) # (!\MOD_RESET|Add0~0_combout\ & ((E1_sResetPeriod[0]) # (\MOD_RESET|Add0~5_combout\ $ 
-- (\MOD_RESET|sResetPeriod\(1)))))
-- \MOD_RESET|sResetPeriod\(0) = DFFEAS(\MOD_RESET|sReset~0\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bde",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_RESET|Add0~0_combout\,
	datab => \MOD_RESET|Add0~5_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \MOD_RESET|sResetPeriod\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~0\,
	regout => \MOD_RESET|sResetPeriod\(0));

-- Location: LC_X10_Y4_N5
\SYNCMOD|sSYNCONFIG[16]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~13\ = (\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_IOSPACE|Mux34~12_combout\ & (L1_sSYNCONFIG[16])) # (!\MOD_IOSPACE|Mux34~12_combout\ & ((\MOD_RESET|sResetPeriod\(0)))))) # (!\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_IOSPACE|Mux34~12_combout\))
-- \SYNCMOD|sSYNCONFIG\(16) = DFFEAS(\MOD_IOSPACE|Mux34~13\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_IOSPACE|Mux34~12_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \MOD_RESET|sResetPeriod\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~13\,
	regout => \SYNCMOD|sSYNCONFIG\(16));

-- Location: LC_X11_Y5_N6
\MOD_IOSPACE|Mux34~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~11_combout\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_IOSPACE|Mux34~8\)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux34~10\))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_IOSPACE|Mux34~8\,
	datad => \MOD_IOSPACE|Mux34~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~11_combout\);

-- Location: LC_X11_Y5_N7
\MOD_IOSPACE|Mux34~14\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~14_combout\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux34~11_combout\ & ((\MOD_IOSPACE|Mux34~13\))) # (!\MOD_IOSPACE|Mux34~11_combout\ & (\MOD_IOSPACE|Mux34~6\)))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux34~11_combout\))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_IOSPACE|Mux34~6\,
	datac => \MOD_IOSPACE|Mux34~13\,
	datad => \MOD_IOSPACE|Mux34~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~14_combout\);

-- Location: LC_X4_Y5_N7
\MOD_IOSPACE|Mux34~4\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~4_combout\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0) & (\ioSYNC[0]~0\)) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\SYNCMOD|sSYNDIR\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ioSYNC[0]~0\,
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \SYNCMOD|sSYNDIR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~4_combout\);

-- Location: LC_X11_Y9_N1
\MOD_PWM1|sDUTY[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sDUTY\(0) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sDUTY\(0));

-- Location: LC_X12_Y5_N0
\MOD_IOSPACE|sQEMBUFFER1[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~4\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((C1_sQEMBUFFER1[0])))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_PWM1|sDUTY\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \QENC1|sQEMCOUNTER\(16),
	datad => \MOD_PWM1|sDUTY\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~4\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(0));

-- Location: LC_X12_Y5_N1
\MOD_PWM2|sPWMCONFIG[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux30~5\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux30~4\ & (\QENC2|sQEMCONFIG~regout\)) # (!\MOD_IOSPACE|Mux30~4\ & ((D2_sPWMCONFIG[0]))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux30~4\))))
-- \MOD_PWM2|sPWMCONFIG\(0) = DFFEAS(\MOD_IOSPACE|Mux30~5\, \MOD_IOSPACE|oWrPWMCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMCONFIG2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \QENC2|sQEMCONFIG~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(0),
	datad => \MOD_IOSPACE|Mux30~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux30~5\,
	regout => \MOD_PWM2|sPWMCONFIG\(0));

-- Location: LC_X11_Y5_N3
\MOD_IOSPACE|Mux34~5\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~5_combout\ = (\MOD_SRAMIO|IO_ADDR\(5) & (\MOD_IOSPACE|Mux34~4_combout\ & (\MOD_SRAMIO|IO_ADDR\(6)))) # (!\MOD_SRAMIO|IO_ADDR\(5) & (((!\MOD_SRAMIO|IO_ADDR\(6) & \MOD_IOSPACE|Mux30~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8580",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_IOSPACE|Mux34~4_combout\,
	datac => \MOD_SRAMIO|IO_ADDR\(6),
	datad => \MOD_IOSPACE|Mux30~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~5_combout\);

-- Location: LC_X11_Y5_N4
\MOD_IOSPACE|Mux34~15\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux34~15_combout\ = ((\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux34~5_combout\))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux34~14_combout\)))

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
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|Mux34~14_combout\,
	datad => \MOD_IOSPACE|Mux34~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux34~15_combout\);

-- Location: LC_X10_Y5_N2
\MOD_IOSPACE|oData[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(0) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & ((\MOD_IOSPACE|Mux34~17_combout\) # ((!\MOD_SRAMIO|IO_ADDR\(2) & \MOD_IOSPACE|Mux34~15_combout\)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|Mux6~6_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(2),
	datac => \MOD_IOSPACE|Mux34~17_combout\,
	datad => \MOD_IOSPACE|Mux34~15_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(0));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iRFID_MUX_SEL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iRFID_MUX_SEL,
	combout => \iRFID_MUX_SEL~combout\);

-- Location: LC_X10_Y5_N8
\Mux3~1\ : maxv_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (\oCPLD_DEBUG[3]~0_combout\ & ((\Mux3~0\ & ((\iRFID_MUX_SEL~combout\))) # (!\Mux3~0\ & (\MOD_IOSPACE|oData\(0))))) # (!\oCPLD_DEBUG[3]~0_combout\ & (((\Mux3~0\))))

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
	dataa => \oCPLD_DEBUG[3]~0_combout\,
	datab => \MOD_IOSPACE|oData\(0),
	datac => \iRFID_MUX_SEL~combout\,
	datad => \Mux3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDIP_SWITCH[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDIP_SWITCH(3),
	combout => \iDIP_SWITCH~combout\(3));

-- Location: LC_X10_Y5_N3
\oCPLD_DEBUG[3]~3\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[3]~3_combout\ = (\iDIP_SWITCH~combout\(3)) # ((\iDIP_SWITCH~combout\(1) & ((\iDIP_SWITCH~combout\(2)))) # (!\iDIP_SWITCH~combout\(1) & (!\iDIP_SWITCH~combout\(0) & !\iDIP_SWITCH~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eecd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iDIP_SWITCH~combout\(1),
	datab => \iDIP_SWITCH~combout\(3),
	datac => \iDIP_SWITCH~combout\(0),
	datad => \iDIP_SWITCH~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oCPLD_DEBUG[3]~3_combout\);

-- Location: LC_X10_Y5_N9
\oCPLD_DEBUG[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[0]~reg0_regout\ = DFFEAS((\oCPLD_DEBUG[3]~2_combout\ & (\MOD_IOSPACE|oData\(4))) # (!\oCPLD_DEBUG[3]~2_combout\ & (((\Mux3~1_combout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iCS_FPGA~combout\, , , 
-- \oCPLD_DEBUG[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_IOSPACE|oData\(4),
	datab => \oCPLD_DEBUG[3]~2_combout\,
	datac => \iCS_FPGA~combout\,
	datad => \Mux3~1_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => \oCPLD_DEBUG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oCPLD_DEBUG[0]~reg0_regout\);

-- Location: LC_X9_Y4_N7
\QENC1|sBUFFER[21]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(21) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(5)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(21));

-- Location: LC_X6_Y4_N5
\QENC1|sQEMCOUNTER[21]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(21) = DFFEAS(\QENC1|sQEMCOUNTER\(21) $ (\QENC1|sQEMDir~regout\ $ ((\QENC1|sQEMCOUNTER[20]~19\))), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(21), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[21]~23\ = CARRY((\QENC1|sQEMCOUNTER\(21) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[20]~19\)) # (!\QENC1|sQEMCOUNTER\(21) & ((!\QENC1|sQEMCOUNTER[20]~19\) # (!\QENC1|sQEMDir~regout\))))
-- \QENC1|sQEMCOUNTER[21]~23COUT1_122\ = CARRY((\QENC1|sQEMCOUNTER\(21) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[20]~19\)) # (!\QENC1|sQEMCOUNTER\(21) & ((!\QENC1|sQEMCOUNTER[20]~19\) # (!\QENC1|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(21),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(21),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[20]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(21),
	cout0 => \QENC1|sQEMCOUNTER[21]~23\,
	cout1 => \QENC1|sQEMCOUNTER[21]~23COUT1_122\);

-- Location: LC_X4_Y5_N8
\SYNCMOD|sSYNDIR[6]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|sSYNDIR\(6) = DFFEAS((((!\iSYNC_SEL2~combout\ & !\iSYNC_SEL1~combout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => \iSYNC_SEL2~combout\,
	datad => \iSYNC_SEL1~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SYNCMOD|sSYNDIR\(6));

-- Location: LC_X4_Y5_N1
\MOD_IOSPACE|Mux29~2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~2_combout\ = (((\MOD_SRAMIO|IO_ADDR\(4) & \SYNCMOD|sSYNDIR\(6))))

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
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \SYNCMOD|sSYNDIR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~2_combout\);

-- Location: LC_X4_Y5_N5
\MOD_PWM1|sDUTY[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~3\ = (\MOD_IOSPACE|oData[4]~3_combout\ & (\MOD_SRAMIO|IO_ADDR\(6))) # (!\MOD_IOSPACE|oData[4]~3_combout\ & ((\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_IOSPACE|Mux29~2_combout\))) # (!\MOD_SRAMIO|IO_ADDR\(6) & (D1_sDUTY[5]))))
-- \MOD_PWM1|sDUTY\(5) = DFFEAS(\MOD_IOSPACE|Mux29~3\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_IOSPACE|oData[4]~3_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	datad => \MOD_IOSPACE|Mux29~2_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~3\,
	regout => \MOD_PWM1|sDUTY\(5));

-- Location: LC_X5_Y5_N1
\MOD_IOSPACE|sQEMBUFFER1[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~4\ = (\MOD_IOSPACE|oData[4]~3_combout\ & ((\MOD_IOSPACE|Mux29~3\ & (\ioSYNC[5]~5\)) # (!\MOD_IOSPACE|Mux29~3\ & ((C1_sQEMBUFFER1[5]))))) # (!\MOD_IOSPACE|oData[4]~3_combout\ & (((\MOD_IOSPACE|Mux29~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \ioSYNC[5]~5\,
	datab => \MOD_IOSPACE|oData[4]~3_combout\,
	datac => \QENC1|sQEMCOUNTER\(21),
	datad => \MOD_IOSPACE|Mux29~3\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~4\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(5));

-- Location: LC_X14_Y6_N0
\MOD_PWM2|sDUTY[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(5) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(5)))), \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(5));

-- Location: LC_X13_Y6_N5
\MOD_PWM2|sPWMPERIOD[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~10\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\QENC2|sQEMCOUNTER\(5))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & (D2_sPWMPERIOD[5])))
-- \MOD_PWM2|sPWMPERIOD\(5) = DFFEAS(\MOD_IOSPACE|Mux29~10\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	datad => \QENC2|sQEMCOUNTER\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~10\,
	regout => \MOD_PWM2|sPWMPERIOD\(5));

-- Location: LC_X14_Y6_N5
\MOD_IOSPACE|sQEMBUFFER2[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~11\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux29~10\ & ((C1_sQEMBUFFER2[5]))) # (!\MOD_IOSPACE|Mux29~10\ & (\MOD_PWM2|sDUTY\(5))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux29~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_PWM2|sDUTY\(5),
	datac => \QENC2|sQEMCOUNTER\(21),
	datad => \MOD_IOSPACE|Mux29~10\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~11\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(5));

-- Location: LC_X6_Y8_N3
\MOD_RESET|sResetPeriod[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sResetPeriod\(5) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(5)))), \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sResetPeriod\(5));

-- Location: LC_X6_Y8_N1
\MOD_PWM1|sPWMPERIOD[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~5\ = (\MOD_IOSPACE|oData[4]~5\ & (!\MOD_IOSPACE|Mux27~0_combout\)) # (!\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux27~0_combout\ & (D1_sPWMPERIOD[5])) # (!\MOD_IOSPACE|Mux27~0_combout\ & ((!\MOD_RESET|sResetPeriod\(5))))))
-- \MOD_PWM1|sPWMPERIOD\(5) = DFFEAS(\MOD_IOSPACE|Mux29~5\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6273",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[4]~5\,
	datab => \MOD_IOSPACE|Mux27~0_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(5),
	datad => \MOD_RESET|sResetPeriod\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~5\,
	regout => \MOD_PWM1|sPWMPERIOD\(5));

-- Location: LC_X7_Y6_N0
\MOD_IOSPACE|Mux29~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~8_combout\ = (\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux29~5\ & ((\MOD_IOSPACE|Mux29~7\))) # (!\MOD_IOSPACE|Mux29~5\ & (\QENC1|sQEMCOUNTER\(5))))) # (!\MOD_IOSPACE|oData[4]~5\ & (((\MOD_IOSPACE|Mux29~5\))))

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
	dataa => \MOD_IOSPACE|oData[4]~5\,
	datab => \QENC1|sQEMCOUNTER\(5),
	datac => \MOD_IOSPACE|Mux29~5\,
	datad => \MOD_IOSPACE|Mux29~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~8_combout\);

-- Location: LC_X7_Y6_N1
\MOD_IOSPACE|Mux29~9\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~9_combout\ = (\MOD_IOSPACE|oData[4]~4_combout\ & (((\iInput~combout\(5))) # (!\MOD_IOSPACE|Mux1~0_combout\))) # (!\MOD_IOSPACE|oData[4]~4_combout\ & (\MOD_IOSPACE|Mux1~0_combout\ & ((\MOD_IOSPACE|Mux29~8_combout\))))

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
	dataa => \MOD_IOSPACE|oData[4]~4_combout\,
	datab => \MOD_IOSPACE|Mux1~0_combout\,
	datac => \iInput~combout\(5),
	datad => \MOD_IOSPACE|Mux29~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~9_combout\);

-- Location: LC_X6_Y6_N3
\MOD_IOSPACE|Mux29~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux29~12_combout\ = (\MOD_IOSPACE|Mux1~0_combout\ & (((\MOD_IOSPACE|Mux29~9_combout\)))) # (!\MOD_IOSPACE|Mux1~0_combout\ & ((\MOD_IOSPACE|Mux29~9_combout\ & ((\MOD_IOSPACE|Mux29~11\))) # (!\MOD_IOSPACE|Mux29~9_combout\ & 
-- (\MOD_IOSPACE|Mux29~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|Mux1~0_combout\,
	datab => \MOD_IOSPACE|Mux29~4\,
	datac => \MOD_IOSPACE|Mux29~11\,
	datad => \MOD_IOSPACE|Mux29~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux29~12_combout\);

-- Location: LC_X6_Y6_N7
\MOD_IOSPACE|oData[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(5) = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(7) & (!\MOD_IOSPACE|oData[4]~12_combout\ & (!\MOD_SRAMIO|IO_ADDR\(3) & \MOD_IOSPACE|Mux29~12_combout\))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(7),
	datab => \MOD_IOSPACE|oData[4]~12_combout\,
	datac => \MOD_SRAMIO|IO_ADDR\(3),
	datad => \MOD_IOSPACE|Mux29~12_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(5));

-- Location: LC_X5_Y8_N4
\oCPLD_DEBUG[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[1]~reg0_regout\ = DFFEAS((\oCPLD_DEBUG[3]~2_combout\ & (\MOD_IOSPACE|oData\(5))) # (!\oCPLD_DEBUG[3]~2_combout\ & (((\Mux2~1\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iADV~combout\, , , \oCPLD_DEBUG[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_IOSPACE|oData\(5),
	datab => \oCPLD_DEBUG[3]~2_combout\,
	datac => \iADV~combout\,
	datad => \Mux2~1\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => \oCPLD_DEBUG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oCPLD_DEBUG[1]~reg0_regout\);

-- Location: LC_X9_Y8_N6
\MOD_PWM2|sPWMPERIOD[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~9\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(6)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (D2_sPWMPERIOD[6]))))
-- \MOD_PWM2|sPWMPERIOD\(6) = DFFEAS(\MOD_IOSPACE|Mux28~9\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	datad => \QENC2|sQEMCOUNTER\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~9\,
	regout => \MOD_PWM2|sPWMPERIOD\(6));

-- Location: LC_X13_Y6_N9
\MOD_IOSPACE|sQEMBUFFER2[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER2\(6) = DFFEAS((((\QENC2|sQEMCOUNTER\(22)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\, , , , )

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
	clk => \ALT_INV_iRD~combout\,
	datad => \QENC2|sQEMCOUNTER\(22),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(6));

-- Location: LC_X10_Y6_N3
\MOD_PWM2|sDUTY[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~10\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux28~9\ & ((\MOD_IOSPACE|sQEMBUFFER2\(6)))) # (!\MOD_IOSPACE|Mux28~9\ & (D2_sDUTY[6])))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|Mux28~9\))
-- \MOD_PWM2|sDUTY\(6) = DFFEAS(\MOD_IOSPACE|Mux28~10\, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_IOSPACE|Mux28~9\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	datad => \MOD_IOSPACE|sQEMBUFFER2\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~10\,
	regout => \MOD_PWM2|sDUTY\(6));

-- Location: LC_X8_Y4_N9
\QENC1|sBUFFER[22]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(22) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(6)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(22));

-- Location: LC_X6_Y4_N6
\QENC1|sQEMCOUNTER[22]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(22) = DFFEAS(\QENC1|sQEMCOUNTER\(22) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[21]~23\) # (\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[21]~23COUT1_122\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(22), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[22]~27\ = CARRY((\QENC1|sQEMCOUNTER\(22) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[21]~23\))) # (!\QENC1|sQEMCOUNTER\(22) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[21]~23\)))
-- \QENC1|sQEMCOUNTER[22]~27COUT1_124\ = CARRY((\QENC1|sQEMCOUNTER\(22) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[21]~23COUT1_122\))) # (!\QENC1|sQEMCOUNTER\(22) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[21]~23COUT1_122\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(22),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(22),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[20]~19\,
	cin0 => \QENC1|sQEMCOUNTER[21]~23\,
	cin1 => \QENC1|sQEMCOUNTER[21]~23COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(22),
	cout0 => \QENC1|sQEMCOUNTER[22]~27\,
	cout1 => \QENC1|sQEMCOUNTER[22]~27COUT1_124\);

-- Location: LC_X4_Y5_N2
\MOD_PWM1|sDUTY[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~2\ = (\MOD_IOSPACE|oData[4]~3_combout\ & (\MOD_SRAMIO|IO_ADDR\(6))) # (!\MOD_IOSPACE|oData[4]~3_combout\ & ((\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_IOSPACE|Mux29~2_combout\))) # (!\MOD_SRAMIO|IO_ADDR\(6) & (D1_sDUTY[6]))))
-- \MOD_PWM1|sDUTY\(6) = DFFEAS(\MOD_IOSPACE|Mux28~2\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_IOSPACE|oData[4]~3_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	datad => \MOD_IOSPACE|Mux29~2_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~2\,
	regout => \MOD_PWM1|sDUTY\(6));

-- Location: LC_X5_Y5_N9
\MOD_IOSPACE|sQEMBUFFER1[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~3\ = (\MOD_IOSPACE|oData[4]~3_combout\ & ((\MOD_IOSPACE|Mux28~2\ & (\ioSYNC[6]~6\)) # (!\MOD_IOSPACE|Mux28~2\ & ((C1_sQEMBUFFER1[6]))))) # (!\MOD_IOSPACE|oData[4]~3_combout\ & (((\MOD_IOSPACE|Mux28~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \ioSYNC[6]~6\,
	datab => \MOD_IOSPACE|oData[4]~3_combout\,
	datac => \QENC1|sQEMCOUNTER\(22),
	datad => \MOD_IOSPACE|Mux28~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~3\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(6));

-- Location: LC_X6_Y8_N8
\MOD_RESET|sResetPeriod[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sResetPeriod\(6) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(6)))), \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sResetPeriod\(6));

-- Location: LC_X6_Y8_N2
\MOD_PWM1|sPWMPERIOD[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~4\ = (\MOD_IOSPACE|oData[4]~5\ & (!\MOD_IOSPACE|Mux27~0_combout\)) # (!\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux27~0_combout\ & (D1_sPWMPERIOD[6])) # (!\MOD_IOSPACE|Mux27~0_combout\ & ((!\MOD_RESET|sResetPeriod\(6))))))
-- \MOD_PWM1|sPWMPERIOD\(6) = DFFEAS(\MOD_IOSPACE|Mux28~4\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6273",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[4]~5\,
	datab => \MOD_IOSPACE|Mux27~0_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	datad => \MOD_RESET|sResetPeriod\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~4\,
	regout => \MOD_PWM1|sPWMPERIOD\(6));

-- Location: LC_X7_Y8_N5
\SYNCMOD|Mux3~1\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux3~1_combout\ = (\SYNCMOD|Mux3~0\ & ((\iInput~combout\(7)) # ((!\SYNCMOD|sSYNCONFIG\(4))))) # (!\SYNCMOD|Mux3~0\ & (((\SYNCMOD|sSYNCONFIG\(4) & \iInput~combout\(5)))))

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
	dataa => \SYNCMOD|Mux3~0\,
	datab => \iInput~combout\(7),
	datac => \SYNCMOD|sSYNCONFIG\(4),
	datad => \iInput~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux3~1_combout\);

-- Location: LC_X10_Y8_N9
\SYNCMOD|Mux3~2\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux3~2_combout\ = (\SYNCMOD|sSYNCONFIG\(5) & (\SYNCMOD|sSYNCONFIG\(4))) # (!\SYNCMOD|sSYNCONFIG\(5) & ((\SYNCMOD|sSYNCONFIG\(4) & ((\iInput~combout\(1)))) # (!\SYNCMOD|sSYNCONFIG\(4) & (\iInput~combout\(0)))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(5),
	datab => \SYNCMOD|sSYNCONFIG\(4),
	datac => \iInput~combout\(0),
	datad => \iInput~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux3~2_combout\);

-- Location: LC_X10_Y8_N6
\SYNCMOD|Mux3~3\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux3~3_combout\ = (\SYNCMOD|sSYNCONFIG\(5) & ((\SYNCMOD|Mux3~2_combout\ & ((\iInput~combout\(3)))) # (!\SYNCMOD|Mux3~2_combout\ & (\iInput~combout\(2))))) # (!\SYNCMOD|sSYNCONFIG\(5) & (((\SYNCMOD|Mux3~2_combout\))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(5),
	datab => \iInput~combout\(2),
	datac => \iInput~combout\(3),
	datad => \SYNCMOD|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux3~3_combout\);

-- Location: LC_X6_Y5_N3
\SYNCMOD|sSYNCONFIG[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~6\ = (\MOD_IOSPACE|oData[4]~6_combout\ & ((\MOD_IOSPACE|Mux28~5\ & (\SYNCMOD|sSYNCONFIG\(22))) # (!\MOD_IOSPACE|Mux28~5\ & ((L1_sSYNCONFIG[6]))))) # (!\MOD_IOSPACE|oData[4]~6_combout\ & (((\MOD_IOSPACE|Mux28~5\))))
-- \SYNCMOD|sSYNCONFIG\(6) = DFFEAS(\MOD_IOSPACE|Mux28~6\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(22),
	datab => \MOD_IOSPACE|oData[4]~6_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	datad => \MOD_IOSPACE|Mux28~5\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~6\,
	regout => \SYNCMOD|sSYNCONFIG\(6));

-- Location: LC_X9_Y6_N9
\SYNCMOD|sSYNCONFIG[7]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux3~4\ = (!L1_sSYNCONFIG[7] & ((\SYNCMOD|sSYNCONFIG\(6) & (\SYNCMOD|Mux3~1_combout\)) # (!\SYNCMOD|sSYNCONFIG\(6) & ((\SYNCMOD|Mux3~3_combout\)))))
-- \SYNCMOD|sSYNCONFIG\(7) = DFFEAS(\SYNCMOD|Mux3~4\, \MOD_IOSPACE|oWrSYNCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG1~regout\,
	dataa => \SYNCMOD|Mux3~1_combout\,
	datab => \SYNCMOD|Mux3~3_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	datad => \SYNCMOD|sSYNCONFIG\(6),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux3~4\,
	regout => \SYNCMOD|sSYNCONFIG\(7));

-- Location: LC_X7_Y9_N1
\SYNCMOD|sSYNCONFIG[23]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~10\ = ((\MOD_SRAMIO|IO_ADDR\(0) & (L1_sSYNCONFIG[23])) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\SYNCMOD|sSYNCONFIG\(7)))))
-- \SYNCMOD|sSYNCONFIG\(23) = DFFEAS(\MOD_IOSPACE|Mux27~10\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	datad => \SYNCMOD|sSYNCONFIG\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~10\,
	regout => \SYNCMOD|sSYNCONFIG\(23));

-- Location: LC_X6_Y5_N6
\SYNCMOD|Mux7~2\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux7~2_combout\ = (\SYNCMOD|sSYNCONFIG\(20) & (((\SYNCMOD|sSYNCONFIG\(21)) # (\iInput~combout\(1))))) # (!\SYNCMOD|sSYNCONFIG\(20) & (\iInput~combout\(0) & (!\SYNCMOD|sSYNCONFIG\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iInput~combout\(0),
	datab => \SYNCMOD|sSYNCONFIG\(20),
	datac => \SYNCMOD|sSYNCONFIG\(21),
	datad => \iInput~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux7~2_combout\);

-- Location: LC_X6_Y5_N7
\SYNCMOD|Mux7~3\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux7~3_combout\ = (\SYNCMOD|sSYNCONFIG\(21) & ((\SYNCMOD|Mux7~2_combout\ & ((\iInput~combout\(3)))) # (!\SYNCMOD|Mux7~2_combout\ & (\iInput~combout\(2))))) # (!\SYNCMOD|sSYNCONFIG\(21) & (((\SYNCMOD|Mux7~2_combout\))))

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
	dataa => \iInput~combout\(2),
	datab => \SYNCMOD|sSYNCONFIG\(21),
	datac => \SYNCMOD|Mux7~2_combout\,
	datad => \iInput~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux7~3_combout\);

-- Location: LC_X7_Y8_N9
\SYNCMOD|Mux7~1\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux7~1_combout\ = (\SYNCMOD|sSYNCONFIG\(20) & ((\SYNCMOD|Mux7~0\ & ((\iInput~combout\(7)))) # (!\SYNCMOD|Mux7~0\ & (\iInput~combout\(5))))) # (!\SYNCMOD|sSYNCONFIG\(20) & (((\SYNCMOD|Mux7~0\))))

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
	dataa => \iInput~combout\(5),
	datab => \SYNCMOD|sSYNCONFIG\(20),
	datac => \SYNCMOD|Mux7~0\,
	datad => \iInput~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux7~1_combout\);

-- Location: LC_X6_Y5_N8
\SYNCMOD|sSYNCONFIG[22]\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux7~4\ = (!\SYNCMOD|sSYNCONFIG\(23) & ((L1_sSYNCONFIG[22] & ((\SYNCMOD|Mux7~1_combout\))) # (!L1_sSYNCONFIG[22] & (\SYNCMOD|Mux7~3_combout\))))
-- \SYNCMOD|sSYNCONFIG\(22) = DFFEAS(\SYNCMOD|Mux7~4\, \MOD_IOSPACE|oWrSYNCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(23),
	datab => \SYNCMOD|Mux7~3_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(6),
	datad => \SYNCMOD|Mux7~1_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux7~4\,
	regout => \SYNCMOD|sSYNCONFIG\(22));

-- Location: LC_X6_Y5_N4
\MOD_IOSPACE|Mux28~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~7_combout\ = (\MOD_IOSPACE|oData[4]~5\ & ((\MOD_IOSPACE|Mux28~4\ & ((\MOD_IOSPACE|Mux28~6\))) # (!\MOD_IOSPACE|Mux28~4\ & (\QENC1|sQEMCOUNTER\(6))))) # (!\MOD_IOSPACE|oData[4]~5\ & (((\MOD_IOSPACE|Mux28~4\))))

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
	dataa => \MOD_IOSPACE|oData[4]~5\,
	datab => \QENC1|sQEMCOUNTER\(6),
	datac => \MOD_IOSPACE|Mux28~4\,
	datad => \MOD_IOSPACE|Mux28~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~7_combout\);

-- Location: LC_X6_Y5_N5
\MOD_IOSPACE|Mux28~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~8_combout\ = (\MOD_IOSPACE|Mux1~0_combout\ & (!\MOD_IOSPACE|oData[4]~4_combout\ & ((\MOD_IOSPACE|Mux28~7_combout\)))) # (!\MOD_IOSPACE|Mux1~0_combout\ & ((\MOD_IOSPACE|oData[4]~4_combout\) # ((\MOD_IOSPACE|Mux28~3\))))

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
	dataa => \MOD_IOSPACE|Mux1~0_combout\,
	datab => \MOD_IOSPACE|oData[4]~4_combout\,
	datac => \MOD_IOSPACE|Mux28~3\,
	datad => \MOD_IOSPACE|Mux28~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~8_combout\);

-- Location: LC_X6_Y6_N4
\MOD_IOSPACE|Mux28~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux28~11_combout\ = (\MOD_IOSPACE|oData[4]~4_combout\ & ((\MOD_IOSPACE|Mux28~8_combout\ & ((\MOD_IOSPACE|Mux28~10\))) # (!\MOD_IOSPACE|Mux28~8_combout\ & (\iInput~combout\(6))))) # (!\MOD_IOSPACE|oData[4]~4_combout\ & 
-- (((\MOD_IOSPACE|Mux28~8_combout\))))

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
	dataa => \MOD_IOSPACE|oData[4]~4_combout\,
	datab => \iInput~combout\(6),
	datac => \MOD_IOSPACE|Mux28~10\,
	datad => \MOD_IOSPACE|Mux28~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux28~11_combout\);

-- Location: LC_X6_Y6_N5
\MOD_IOSPACE|oData[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(6) = DFFEAS((!\MOD_SRAMIO|IO_ADDR\(7) & (!\MOD_IOSPACE|oData[4]~12_combout\ & (!\MOD_SRAMIO|IO_ADDR\(3) & \MOD_IOSPACE|Mux28~11_combout\))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(7),
	datab => \MOD_IOSPACE|oData[4]~12_combout\,
	datac => \MOD_SRAMIO|IO_ADDR\(3),
	datad => \MOD_IOSPACE|Mux28~11_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(6));

-- Location: LC_X14_Y6_N3
\MOD_PWM2|sDUTY[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(2) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(2));

-- Location: LC_X13_Y6_N6
\MOD_PWM2|sPWMPERIOD[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~3\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(2)) # ((\MOD_SRAMIO|IO_ADDR\(0))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((D2_sPWMPERIOD[2] & !\MOD_SRAMIO|IO_ADDR\(0)))))
-- \MOD_PWM2|sPWMPERIOD\(2) = DFFEAS(\MOD_IOSPACE|Mux32~3\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \QENC2|sQEMCOUNTER\(2),
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~3\,
	regout => \MOD_PWM2|sPWMPERIOD\(2));

-- Location: LC_X13_Y6_N7
\MOD_IOSPACE|sQEMBUFFER2[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~4\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux32~3\ & ((C1_sQEMBUFFER2[2]))) # (!\MOD_IOSPACE|Mux32~3\ & (\MOD_PWM2|sDUTY\(2))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux32~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_PWM2|sDUTY\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \QENC2|sQEMCOUNTER\(18),
	datad => \MOD_IOSPACE|Mux32~3\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~4\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(2));

-- Location: LC_X9_Y5_N9
\MOD_IOSPACE|Mux32~5\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~5_combout\ = (\MOD_IOSPACE|Mux27~0_combout\ & (\MOD_SRAMIO|IO_ADDR\(2) & (!\MOD_SRAMIO|IO_ADDR\(1) & \MOD_IOSPACE|Mux32~4\)))

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
	dataa => \MOD_IOSPACE|Mux27~0_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(2),
	datac => \MOD_SRAMIO|IO_ADDR\(1),
	datad => \MOD_IOSPACE|Mux32~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~5_combout\);

-- Location: LC_X8_Y5_N3
\MOD_PWM1|sDUTY[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sDUTY\(2) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(2)))), \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sDUTY\(2));

-- Location: LC_X12_Y5_N6
\MOD_PWM2|sPWMCONFIG[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~6\ = (!\MOD_SRAMIO|IO_ADDR\(4) & (((D2_sPWMCONFIG[2] & !\MOD_SRAMIO|IO_ADDR\(5)))))
-- \MOD_PWM2|sPWMCONFIG\(2) = DFFEAS(\MOD_IOSPACE|Mux32~6\, \MOD_IOSPACE|oWrPWMCONFIG2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMCONFIG2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~6\,
	regout => \MOD_PWM2|sPWMCONFIG\(2));

-- Location: LC_X12_Y5_N7
\MOD_IOSPACE|Mux32~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~7_combout\ = (\MOD_IOSPACE|oData[2]~15_combout\ & (\MOD_IOSPACE|Mux30~6_combout\ & (\MOD_IOSPACE|oData[2]~14_combout\))) # (!\MOD_IOSPACE|oData[2]~15_combout\ & (((\MOD_IOSPACE|Mux32~6\) # (!\MOD_IOSPACE|oData[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d585",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[2]~15_combout\,
	datab => \MOD_IOSPACE|Mux30~6_combout\,
	datac => \MOD_IOSPACE|oData[2]~14_combout\,
	datad => \MOD_IOSPACE|Mux32~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~7_combout\);

-- Location: LC_X12_Y5_N8
\MOD_IOSPACE|sQEMBUFFER1[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~8\ = (\MOD_IOSPACE|oData[4]~13_combout\ & (((\MOD_IOSPACE|Mux32~7_combout\)))) # (!\MOD_IOSPACE|oData[4]~13_combout\ & ((\MOD_IOSPACE|Mux32~7_combout\ & (\MOD_PWM1|sDUTY\(2))) # (!\MOD_IOSPACE|Mux32~7_combout\ & ((C1_sQEMBUFFER1[2])))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|oData[4]~13_combout\,
	datab => \MOD_PWM1|sDUTY\(2),
	datac => \QENC1|sQEMCOUNTER\(18),
	datad => \MOD_IOSPACE|Mux32~7_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~8\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(2));

-- Location: LC_X10_Y4_N4
\MOD_RESET|sResetPeriod[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~9\ = (((E1_sResetPeriod[2] & \MOD_SRAMIO|IO_ADDR\(4))))
-- \MOD_RESET|sResetPeriod\(2) = DFFEAS(\MOD_IOSPACE|Mux32~9\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~9\,
	regout => \MOD_RESET|sResetPeriod\(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(4),
	combout => \iDiffInput~combout\(4));

-- Location: LC_X16_Y6_N4
\IPMOD|sDiffFilter[0][2]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[0][2]~regout\ = DFFEAS(\iDiffInput~combout\(5) $ ((((\iDiffInput~combout\(4))))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iDiffInput~combout\(5),
	datac => \iDiffInput~combout\(4),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[0][2]~regout\);

-- Location: LC_X16_Y6_N7
\IPMOD|sDiffFilter[1][2]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[1][2]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[0][2]~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[0][2]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[1][2]~regout\);

-- Location: LC_X16_Y6_N6
\IPMOD|sDiffFilter[2][2]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|oInputStatus\(2) = (\IPMOD|sDiffFilter[0][2]~regout\ & (\IPMOD|sDiffFilter[1][2]~regout\ & (B1_sDiffFilter[2][2] & \IPMOD|oInputStatus[2]~2\)))
-- \IPMOD|sDiffFilter[2][2]~regout\ = DFFEAS(\IPMOD|oInputStatus\(2), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[1][2]~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \IPMOD|sDiffFilter[0][2]~regout\,
	datab => \IPMOD|sDiffFilter[1][2]~regout\,
	datac => \IPMOD|sDiffFilter[1][2]~regout\,
	datad => \IPMOD|oInputStatus[2]~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IPMOD|oInputStatus\(2),
	regout => \IPMOD|sDiffFilter[2][2]~regout\);

-- Location: LC_X16_Y6_N9
\IPMOD|sDiffFilter[3][2]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|sDiffFilter[3][2]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \IPMOD|sDiffFilter[2][2]~regout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[2][2]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IPMOD|sDiffFilter[3][2]~regout\);

-- Location: LC_X16_Y6_N5
\IPMOD|sDiffFilter[4][2]\ : maxv_lcell
-- Equation(s):
-- \IPMOD|oInputStatus[2]~2\ = (((B1_sDiffFilter[4][2] & \IPMOD|sDiffFilter[3][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datac => \IPMOD|sDiffFilter[3][2]~regout\,
	datad => \IPMOD|sDiffFilter[3][2]~regout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IPMOD|oInputStatus[2]~2\,
	regout => \IPMOD|sDiffFilter[4][2]~regout\);

-- Location: LC_X9_Y5_N0
\MOD_IOSPACE|Mux32~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~11_combout\ = (\MOD_IOSPACE|oData[2]~18_combout\ & ((\IPMOD|oInputStatus\(2)) # ((\MOD_IOSPACE|oData[2]~20_combout\)))) # (!\MOD_IOSPACE|oData[2]~18_combout\ & (((!\MOD_IOSPACE|oData[2]~20_combout\ & 
-- \MOD_SEG|oLEDOutput[2]~2_combout\))))

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
	dataa => \IPMOD|oInputStatus\(2),
	datab => \MOD_IOSPACE|oData[2]~18_combout\,
	datac => \MOD_IOSPACE|oData[2]~20_combout\,
	datad => \MOD_SEG|oLEDOutput[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~11_combout\);

-- Location: LC_X14_Y8_N8
\MOD_SERIALMUX|sSERIALMUXCONFIG[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|sSERIALMUXCONFIG\(2) = DFFEAS(GND, \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

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
	clk => \MOD_IOSPACE|oWrSERIALMUXCONFIG~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|sSERIALMUXCONFIG\(2));

-- Location: LC_X14_Y8_N6
\MOD_PWM1|sPWMCONFIG[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~2\ = (\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_SERIALMUX|sSERIALMUXCONFIG\(2))))) # (!\MOD_SRAMIO|IO_ADDR\(5) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((D1_sPWMCONFIG[2]))))
-- \MOD_PWM1|sPWMCONFIG\(2) = DFFEAS(\MOD_IOSPACE|Mux32~2\, \MOD_IOSPACE|oWrPWMCONFIG1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe54",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMCONFIG1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(5),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \MOD_SERIALMUX|sSERIALMUXCONFIG\(2),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~2\,
	regout => \MOD_PWM1|sPWMCONFIG\(2));

-- Location: LC_X9_Y5_N8
\MOD_IOSPACE|Mux32~19\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~19_combout\ = (((!\MOD_SRAMIO|IO_ADDR\(4) & \MOD_IOSPACE|Mux32~2\)))

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
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_IOSPACE|Mux32~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~19_combout\);

-- Location: LC_X9_Y5_N2
\MOD_PWM1|sPWMPERIOD[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~10\ = (\MOD_IOSPACE|oData[2]~19_combout\ & ((\MOD_IOSPACE|Mux32~19_combout\ & ((D1_sPWMPERIOD[2]))) # (!\MOD_IOSPACE|Mux32~19_combout\ & (\QENC1|sQEMCOUNTER\(2))))) # (!\MOD_IOSPACE|oData[2]~19_combout\ & 
-- (((\MOD_IOSPACE|Mux32~19_combout\))))
-- \MOD_PWM1|sPWMPERIOD\(2) = DFFEAS(\MOD_IOSPACE|Mux32~10\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[2]~19_combout\,
	datab => \QENC1|sQEMCOUNTER\(2),
	datac => \MOD_SRAMIO|IO_DAT_WR\(2),
	datad => \MOD_IOSPACE|Mux32~19_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~10\,
	regout => \MOD_PWM1|sPWMPERIOD\(2));

-- Location: LC_X9_Y5_N3
\MOD_IOSPACE|Mux32~15\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~15_combout\ = (\MOD_IOSPACE|oData[2]~20_combout\ & ((\MOD_IOSPACE|Mux32~11_combout\ & (\MOD_IOSPACE|Mux32~14\)) # (!\MOD_IOSPACE|Mux32~11_combout\ & ((\MOD_IOSPACE|Mux32~10\))))) # (!\MOD_IOSPACE|oData[2]~20_combout\ & 
-- (((\MOD_IOSPACE|Mux32~11_combout\))))

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
	dataa => \MOD_IOSPACE|oData[2]~20_combout\,
	datab => \MOD_IOSPACE|Mux32~14\,
	datac => \MOD_IOSPACE|Mux32~11_combout\,
	datad => \MOD_IOSPACE|Mux32~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~15_combout\);

-- Location: LC_X9_Y5_N4
\MOD_IOSPACE|Mux32~16\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~16_combout\ = (\MOD_IOSPACE|oData[2]~16_combout\ & (\MOD_IOSPACE|Mux32~9\ & (!\MOD_SRAMIO|IO_ADDR\(1)))) # (!\MOD_IOSPACE|oData[2]~16_combout\ & (((\MOD_SRAMIO|IO_ADDR\(1)) # (\MOD_IOSPACE|Mux32~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5d58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[2]~16_combout\,
	datab => \MOD_IOSPACE|Mux32~9\,
	datac => \MOD_SRAMIO|IO_ADDR\(1),
	datad => \MOD_IOSPACE|Mux32~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~16_combout\);

-- Location: LC_X9_Y5_N5
\MOD_IOSPACE|Mux32~17\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux32~17_combout\ = (\MOD_IOSPACE|oData[2]~17_combout\ & ((\MOD_IOSPACE|Mux32~16_combout\ & ((\MOD_IOSPACE|Mux32~8\))) # (!\MOD_IOSPACE|Mux32~16_combout\ & (\ioSYNC[2]~2\)))) # (!\MOD_IOSPACE|oData[2]~17_combout\ & 
-- (((\MOD_IOSPACE|Mux32~16_combout\))))

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
	dataa => \ioSYNC[2]~2\,
	datab => \MOD_IOSPACE|oData[2]~17_combout\,
	datac => \MOD_IOSPACE|Mux32~8\,
	datad => \MOD_IOSPACE|Mux32~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux32~17_combout\);

-- Location: LC_X9_Y5_N6
\MOD_IOSPACE|oData[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(2) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & ((\MOD_IOSPACE|Mux32~5_combout\) # ((!\MOD_SRAMIO|IO_ADDR\(2) & \MOD_IOSPACE|Mux32~17_combout\)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|Mux6~6_combout\,
	datab => \MOD_IOSPACE|Mux32~5_combout\,
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_IOSPACE|Mux32~17_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(2));

-- Location: LC_X10_Y5_N0
\Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (\oCPLD_DEBUG[3]~0_combout\ & ((\Mux1~0\ & (\iSYNC_SEL1~combout\)) # (!\Mux1~0\ & ((\MOD_IOSPACE|oData\(2)))))) # (!\oCPLD_DEBUG[3]~0_combout\ & (((\Mux1~0\))))

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
	dataa => \oCPLD_DEBUG[3]~0_combout\,
	datab => \iSYNC_SEL1~combout\,
	datac => \MOD_IOSPACE|oData\(2),
	datad => \Mux1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X10_Y5_N1
\oCPLD_DEBUG[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[2]~reg0_regout\ = DFFEAS((\oCPLD_DEBUG[3]~2_combout\ & (\MOD_IOSPACE|oData\(6))) # (!\oCPLD_DEBUG[3]~2_combout\ & (((\Mux1~1_combout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iRD~combout\, , , \oCPLD_DEBUG[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \oCPLD_DEBUG[3]~2_combout\,
	datab => \MOD_IOSPACE|oData\(6),
	datac => \iRD~combout\,
	datad => \Mux1~1_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => \oCPLD_DEBUG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oCPLD_DEBUG[2]~reg0_regout\);

-- Location: LC_X11_Y6_N2
\MOD_IOSPACE|sQEMBUFFER2[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER2\(7) = DFFEAS((((\QENC2|sQEMCOUNTER\(23)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\, , , , )

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
	clk => \ALT_INV_iRD~combout\,
	datad => \QENC2|sQEMCOUNTER\(23),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(7));

-- Location: LC_X7_Y5_N3
\MOD_PWM2|sPWMPERIOD[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~3\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(7)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (D2_sPWMPERIOD[7]))))
-- \MOD_PWM2|sPWMPERIOD\(7) = DFFEAS(\MOD_IOSPACE|Mux27~3\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	datad => \QENC2|sQEMCOUNTER\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~3\,
	regout => \MOD_PWM2|sPWMPERIOD\(7));

-- Location: LC_X7_Y5_N1
\MOD_PWM2|sDUTY[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~4\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux27~3\ & (\MOD_IOSPACE|sQEMBUFFER2\(7))) # (!\MOD_IOSPACE|Mux27~3\ & ((D2_sDUTY[7]))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux27~3\))))
-- \MOD_PWM2|sDUTY\(7) = DFFEAS(\MOD_IOSPACE|Mux27~4\, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_IOSPACE|sQEMBUFFER2\(7),
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	datad => \MOD_IOSPACE|Mux27~3\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~4\,
	regout => \MOD_PWM2|sDUTY\(7));

-- Location: LC_X8_Y4_N7
\QENC1|sBUFFER[23]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(23) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(23));

-- Location: LC_X6_Y4_N7
\QENC1|sQEMCOUNTER[23]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(23) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(23) $ (((!\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[22]~27\) # (\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[22]~27COUT1_124\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(23), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[23]~31\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(23) & !\QENC1|sQEMCOUNTER[22]~27\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[22]~27\) # (!\QENC1|sQEMCOUNTER\(23)))))
-- \QENC1|sQEMCOUNTER[23]~31COUT1_126\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(23) & !\QENC1|sQEMCOUNTER[22]~27COUT1_124\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[22]~27COUT1_124\) # (!\QENC1|sQEMCOUNTER\(23)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(23),
	datac => \QENC1|sBUFFER\(23),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[20]~19\,
	cin0 => \QENC1|sQEMCOUNTER[22]~27\,
	cin1 => \QENC1|sQEMCOUNTER[22]~27COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(23),
	cout0 => \QENC1|sQEMCOUNTER[23]~31\,
	cout1 => \QENC1|sQEMCOUNTER[23]~31COUT1_126\);

-- Location: LC_X4_Y5_N0
\MOD_PWM1|sDUTY[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sDUTY\(7) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sDUTY\(7));

-- Location: LC_X5_Y5_N5
\MOD_IOSPACE|sQEMBUFFER1[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~1\ = ((\MOD_SRAMIO|IO_ADDR\(4) & (C1_sQEMBUFFER1[7])) # (!\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_PWM1|sDUTY\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \QENC1|sQEMCOUNTER\(23),
	datad => \MOD_PWM1|sDUTY\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~1\,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(7));

-- Location: LC_X6_Y7_N2
\MOD_IOSPACE|Mux27~2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~2_combout\ = (!\MOD_SRAMIO|IO_ADDR\(2) & (\MOD_SRAMIO|IO_ADDR\(1) & (!\MOD_SRAMIO|IO_ADDR\(0) & \MOD_IOSPACE|Mux27~1\)))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_IOSPACE|Mux27~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~2_combout\);

-- Location: LC_X6_Y7_N4
\MOD_IOSPACE|Mux27~5\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~5_combout\ = (\MOD_IOSPACE|Mux27~0_combout\ & ((\MOD_IOSPACE|Mux27~2_combout\) # ((\MOD_IOSPACE|oData[8]~2\ & \MOD_IOSPACE|Mux27~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[8]~2\,
	datab => \MOD_IOSPACE|Mux27~0_combout\,
	datac => \MOD_IOSPACE|Mux27~4\,
	datad => \MOD_IOSPACE|Mux27~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~5_combout\);

-- Location: LC_X7_Y9_N2
\MOD_IOSPACE|Mux27~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~11_combout\ = (\MOD_SRAMIO|IO_ADDR\(5) & (((\MOD_IOSPACE|Mux27~10\)))) # (!\MOD_SRAMIO|IO_ADDR\(5) & (\iInput~combout\(7) & (\MOD_SRAMIO|IO_ADDR\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iInput~combout\(7),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_IOSPACE|Mux27~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~11_combout\);

-- Location: LC_X3_Y6_N0
\MOD_PWM1|sPWMPERIOD[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~8\ = (\MOD_SRAMIO|IO_ADDR\(0) & (((D1_sPWMPERIOD[7] & !\MOD_SRAMIO|IO_ADDR\(5)))))
-- \MOD_PWM1|sPWMPERIOD\(7) = DFFEAS(\MOD_IOSPACE|Mux27~8\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(7),
	datad => \MOD_SRAMIO|IO_ADDR\(5),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~8\,
	regout => \MOD_PWM1|sPWMPERIOD\(7));

-- Location: LC_X10_Y4_N3
\MOD_RESET|sResetPeriod[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sResetPeriod\(7) = DFFEAS((((!\MOD_SRAMIO|IO_DAT_WR\(7)))), \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(7),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sResetPeriod\(7));

-- Location: LC_X6_Y7_N6
\MOD_IOSPACE|Mux27~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~7_combout\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(5) & ((!\MOD_RESET|sResetPeriod\(7)))) # (!\MOD_SRAMIO|IO_ADDR\(5) & (\QENC1|sQEMCOUNTER\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \QENC1|sQEMCOUNTER\(7),
	datad => \MOD_RESET|sResetPeriod\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~7_combout\);

-- Location: LC_X6_Y7_N7
\MOD_IOSPACE|Mux27~9\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~9_combout\ = (\MOD_SRAMIO|IO_ADDR\(6) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_IOSPACE|Mux27~7_combout\))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_IOSPACE|Mux27~8\))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_IOSPACE|Mux27~8\,
	datad => \MOD_IOSPACE|Mux27~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~9_combout\);

-- Location: LC_X6_Y7_N8
\MOD_IOSPACE|Mux27~12\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux27~12_combout\ = (\MOD_SRAMIO|IO_ADDR\(6) & ((\MOD_IOSPACE|Mux27~9_combout\ & (\MOD_IOSPACE|Mux27~11_combout\)) # (!\MOD_IOSPACE|Mux27~9_combout\ & ((\MOD_IOSPACE|Mux27~6\))))) # (!\MOD_SRAMIO|IO_ADDR\(6) & 
-- (((\MOD_IOSPACE|Mux27~9_combout\))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datab => \MOD_IOSPACE|Mux27~11_combout\,
	datac => \MOD_IOSPACE|Mux27~6\,
	datad => \MOD_IOSPACE|Mux27~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux27~12_combout\);

-- Location: LC_X6_Y7_N1
\MOD_IOSPACE|oData[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(7) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & ((\MOD_IOSPACE|Mux27~5_combout\) # ((\MOD_IOSPACE|Mux1~0_combout\ & \MOD_IOSPACE|Mux27~12_combout\)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|Mux1~0_combout\,
	datab => \MOD_IOSPACE|Mux6~6_combout\,
	datac => \MOD_IOSPACE|Mux27~5_combout\,
	datad => \MOD_IOSPACE|Mux27~12_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(7));

-- Location: LC_X5_Y8_N5
\oCPLD_DEBUG[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \oCPLD_DEBUG[3]~reg0_regout\ = DFFEAS((\oCPLD_DEBUG[3]~2_combout\ & (\MOD_IOSPACE|oData\(7))) # (!\oCPLD_DEBUG[3]~2_combout\ & (((\Mux0~1\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , \iWR~combout\, , , \oCPLD_DEBUG[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_IOSPACE|oData\(7),
	datab => \oCPLD_DEBUG[3]~2_combout\,
	datac => \iWR~combout\,
	datad => \Mux0~1\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => \oCPLD_DEBUG[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oCPLD_DEBUG[3]~reg0_regout\);

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iRFID2_RXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iRFID2_RXD,
	combout => \iRFID2_RXD~combout\);

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iRFID1_RXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iRFID1_RXD,
	combout => \iRFID1_RXD~combout\);

-- Location: LC_X15_Y8_N8
\MOD_SERIALMUX|oRX_OUT\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|oRX_OUT~regout\ = DFFEAS(((\iRFID_MUX_SEL~combout\ & (\iRFID2_RXD~combout\)) # (!\iRFID_MUX_SEL~combout\ & ((\iRFID1_RXD~combout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_SERIALMUX|sSERIALMUXCONFIG\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iRFID2_RXD~combout\,
	datac => \iRFID1_RXD~combout\,
	datad => \iRFID_MUX_SEL~combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_SERIALMUX|sSERIALMUXCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|oRX_OUT~regout\);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iRFID_TXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iRFID_TXD,
	combout => \iRFID_TXD~combout\);

-- Location: LC_X15_Y8_N9
\MOD_SERIALMUX|oTX1_OUT~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|oTX1_OUT~reg0_regout\ = DFFEAS((\iRFID_MUX_SEL~combout\ & (((\MOD_SERIALMUX|sSERIALMUXCONFIG\(1))))) # (!\iRFID_MUX_SEL~combout\ & (\iRFID_TXD~combout\)), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , 
-- \MOD_SERIALMUX|sSERIALMUXCONFIG\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iRFID_MUX_SEL~combout\,
	datab => \iRFID_TXD~combout\,
	datac => \MOD_SERIALMUX|sSERIALMUXCONFIG\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_SERIALMUX|sSERIALMUXCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|oTX1_OUT~reg0_regout\);

-- Location: LC_X15_Y8_N6
\MOD_SERIALMUX|oTX1_OUT~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|oTX1_OUT~en_regout\ = DFFEAS((((!\iRFID_MUX_SEL~combout\))) # (!\MOD_SERIALMUX|sSERIALMUXCONFIG\(2)), GLOBAL(\iCLK~combout\), VCC, , \MOD_SERIALMUX|sSERIALMUXCONFIG\(0), VCC, !\iSW_RESET_CPLD~combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_SERIALMUX|sSERIALMUXCONFIG\(2),
	datac => VCC,
	datad => \iRFID_MUX_SEL~combout\,
	aclr => GND,
	aload => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_SERIALMUX|sSERIALMUXCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|oTX1_OUT~en_regout\);

-- Location: LC_X15_Y8_N4
\MOD_SERIALMUX|oTX2_OUT~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|oTX2_OUT~reg0_regout\ = DFFEAS((\iRFID_MUX_SEL~combout\ & (\iRFID_TXD~combout\)) # (!\iRFID_MUX_SEL~combout\ & (((\MOD_SERIALMUX|sSERIALMUXCONFIG\(1))))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , 
-- \MOD_SERIALMUX|sSERIALMUXCONFIG\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \iRFID_MUX_SEL~combout\,
	datab => \iRFID_TXD~combout\,
	datac => \MOD_SERIALMUX|sSERIALMUXCONFIG\(1),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_SERIALMUX|sSERIALMUXCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|oTX2_OUT~reg0_regout\);

-- Location: LC_X15_Y8_N3
\MOD_SERIALMUX|oTX2_OUT~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SERIALMUX|oTX2_OUT~en_regout\ = DFFEAS((((\iRFID_MUX_SEL~combout\))) # (!\MOD_SERIALMUX|sSERIALMUXCONFIG\(2)), GLOBAL(\iCLK~combout\), VCC, , \MOD_SERIALMUX|sSERIALMUXCONFIG\(0), VCC, !\iSW_RESET_CPLD~combout\, , )

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
	clk => \iCLK~combout\,
	dataa => \MOD_SERIALMUX|sSERIALMUXCONFIG\(2),
	datac => VCC,
	datad => \iRFID_MUX_SEL~combout\,
	aclr => GND,
	aload => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_SERIALMUX|sSERIALMUXCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SERIALMUX|oTX2_OUT~en_regout\);

-- Location: LC_X4_Y9_N9
\MOD_PWM1|Selector21~5\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector21~5_combout\ = (!\MOD_IOSPACE|oWrPWMPERIOD1~regout\ & (!\MOD_IOSPACE|oWrPWMDUTY1~regout\ & (\MOD_PWM1|sPWMState.HI~regout\ & \MOD_PWM1|sPWMCONFIG\(0))))

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
	dataa => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	datab => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datac => \MOD_PWM1|sPWMState.HI~regout\,
	datad => \MOD_PWM1|sPWMCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector21~5_combout\);

-- Location: LC_X2_Y7_N2
\MOD_PWM1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~0_combout\ = ((!\MOD_PWM1|PWM_G:vCounter[0]~regout\))
-- \MOD_PWM1|Add0~2\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[0]~regout\)))
-- \MOD_PWM1|Add0~2COUT1_94\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[0]~regout\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~0_combout\,
	cout0 => \MOD_PWM1|Add0~2\,
	cout1 => \MOD_PWM1|Add0~2COUT1_94\);

-- Location: LC_X1_Y9_N4
\MOD_PWM1|vCounter~15\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~15_combout\ = ((\MOD_PWM1|LessThan0~4_combout\ & ((\MOD_PWM1|Add0~0_combout\))) # (!\MOD_PWM1|LessThan0~4_combout\ & (\MOD_PWM1|PWM_G:vCounter[0]~regout\)))

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
	dataa => \MOD_PWM1|PWM_G:vCounter[0]~regout\,
	datac => \MOD_PWM1|Add0~0_combout\,
	datad => \MOD_PWM1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~15_combout\);

-- Location: LC_X1_Y9_N2
\MOD_PWM1|vCounter~11\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~11_combout\ = (((\MOD_PWM1|LessThan0~4_combout\ & \MOD_PWM1|Add0~35_combout\)))

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
	datac => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~11_combout\);

-- Location: LC_X2_Y8_N2
\MOD_PWM1|PWM_G:vCounter[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[7]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~11_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(7))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~35_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|vCounter~11_combout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|Add0~35_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(7),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[7]~regout\);

-- Location: LC_X2_Y7_N3
\MOD_PWM1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~5_combout\ = \MOD_PWM1|PWM_G:vCounter[1]~regout\ $ ((((!\MOD_PWM1|Add0~2\))))
-- \MOD_PWM1|Add0~7\ = CARRY((!\MOD_PWM1|PWM_G:vCounter[1]~regout\ & ((!\MOD_PWM1|Add0~2\))))
-- \MOD_PWM1|Add0~7COUT1_96\ = CARRY((!\MOD_PWM1|PWM_G:vCounter[1]~regout\ & ((!\MOD_PWM1|Add0~2COUT1_94\))))

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
	dataa => \MOD_PWM1|PWM_G:vCounter[1]~regout\,
	cin0 => \MOD_PWM1|Add0~2\,
	cin1 => \MOD_PWM1|Add0~2COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~5_combout\,
	cout0 => \MOD_PWM1|Add0~7\,
	cout1 => \MOD_PWM1|Add0~7COUT1_96\);

-- Location: LC_X2_Y7_N4
\MOD_PWM1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~10_combout\ = (\MOD_PWM1|PWM_G:vCounter[2]~regout\ $ ((\MOD_PWM1|Add0~7\)))
-- \MOD_PWM1|Add0~12\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[2]~regout\) # (!\MOD_PWM1|Add0~7COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM1|PWM_G:vCounter[2]~regout\,
	cin0 => \MOD_PWM1|Add0~7\,
	cin1 => \MOD_PWM1|Add0~7COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~10_combout\,
	cout => \MOD_PWM1|Add0~12\);

-- Location: LC_X1_Y9_N8
\MOD_PWM1|vCounter~13\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~13_combout\ = (((\MOD_PWM1|Add0~10_combout\ & \MOD_PWM1|LessThan0~4_combout\)))

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
	datac => \MOD_PWM1|Add0~10_combout\,
	datad => \MOD_PWM1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~13_combout\);

-- Location: LC_X2_Y7_N1
\MOD_PWM1|PWM_G:vCounter[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[2]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~13_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(2))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~10_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|vCounter~13_combout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|Add0~10_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(2),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[2]~regout\);

-- Location: LC_X2_Y7_N5
\MOD_PWM1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~15_combout\ = (\MOD_PWM1|PWM_G:vCounter[3]~regout\ $ ((!\MOD_PWM1|Add0~12\)))
-- \MOD_PWM1|Add0~17\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[3]~regout\ & !\MOD_PWM1|Add0~12\)))
-- \MOD_PWM1|Add0~17COUT1_98\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[3]~regout\ & !\MOD_PWM1|Add0~12\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[3]~regout\,
	cin => \MOD_PWM1|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~15_combout\,
	cout0 => \MOD_PWM1|Add0~17\,
	cout1 => \MOD_PWM1|Add0~17COUT1_98\);

-- Location: LC_X1_Y7_N5
\MOD_PWM1|vCounter~14\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~14_combout\ = (\MOD_PWM1|LessThan0~4_combout\ & (((\MOD_PWM1|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~14_combout\);

-- Location: LC_X1_Y7_N6
\MOD_PWM1|PWM_G:vCounter[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[3]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~14_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(3))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~15_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~14_combout\,
	datac => \MOD_PWM1|Add0~15_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(3),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[3]~regout\);

-- Location: LC_X2_Y7_N6
\MOD_PWM1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~20_combout\ = \MOD_PWM1|PWM_G:vCounter[4]~regout\ $ (((((!\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~17\) # (\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~17COUT1_98\)))))
-- \MOD_PWM1|Add0~22\ = CARRY((\MOD_PWM1|PWM_G:vCounter[4]~regout\) # ((!\MOD_PWM1|Add0~17\)))
-- \MOD_PWM1|Add0~22COUT1_100\ = CARRY((\MOD_PWM1|PWM_G:vCounter[4]~regout\) # ((!\MOD_PWM1|Add0~17COUT1_98\)))

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
	dataa => \MOD_PWM1|PWM_G:vCounter[4]~regout\,
	cin => \MOD_PWM1|Add0~12\,
	cin0 => \MOD_PWM1|Add0~17\,
	cin1 => \MOD_PWM1|Add0~17COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~20_combout\,
	cout0 => \MOD_PWM1|Add0~22\,
	cout1 => \MOD_PWM1|Add0~22COUT1_100\);

-- Location: LC_X2_Y9_N0
\MOD_PWM1|vCounter~8\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~8_combout\ = (\MOD_PWM1|Add0~20_combout\ & (((\MOD_PWM1|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|Add0~20_combout\,
	datad => \MOD_PWM1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~8_combout\);

-- Location: LC_X2_Y8_N0
\MOD_PWM1|PWM_G:vCounter[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[4]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~8_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(4))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~20_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~8_combout\,
	datac => \MOD_PWM1|Add0~20_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(4),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[4]~regout\);

-- Location: LC_X2_Y7_N7
\MOD_PWM1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~25_combout\ = (\MOD_PWM1|PWM_G:vCounter[5]~regout\ $ ((!(!\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~22\) # (\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~22COUT1_100\))))
-- \MOD_PWM1|Add0~27\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[5]~regout\ & !\MOD_PWM1|Add0~22\)))
-- \MOD_PWM1|Add0~27COUT1_102\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[5]~regout\ & !\MOD_PWM1|Add0~22COUT1_100\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[5]~regout\,
	cin => \MOD_PWM1|Add0~12\,
	cin0 => \MOD_PWM1|Add0~22\,
	cin1 => \MOD_PWM1|Add0~22COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~25_combout\,
	cout0 => \MOD_PWM1|Add0~27\,
	cout1 => \MOD_PWM1|Add0~27COUT1_102\);

-- Location: LC_X2_Y9_N1
\MOD_PWM1|vCounter~9\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~9_combout\ = (((\MOD_PWM1|Add0~25_combout\ & \MOD_PWM1|LessThan0~4_combout\)))

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
	datac => \MOD_PWM1|Add0~25_combout\,
	datad => \MOD_PWM1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~9_combout\);

-- Location: LC_X2_Y8_N3
\MOD_PWM1|PWM_G:vCounter[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[5]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~9_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(5))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~25_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~9_combout\,
	datac => \MOD_PWM1|Add0~25_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(5),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[5]~regout\);

-- Location: LC_X2_Y7_N8
\MOD_PWM1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~30_combout\ = (\MOD_PWM1|PWM_G:vCounter[6]~regout\ $ (((!\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~27\) # (\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~27COUT1_102\))))
-- \MOD_PWM1|Add0~32\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[6]~regout\) # (!\MOD_PWM1|Add0~27\)))
-- \MOD_PWM1|Add0~32COUT1_104\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[6]~regout\) # (!\MOD_PWM1|Add0~27COUT1_102\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[6]~regout\,
	cin => \MOD_PWM1|Add0~12\,
	cin0 => \MOD_PWM1|Add0~27\,
	cin1 => \MOD_PWM1|Add0~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~30_combout\,
	cout0 => \MOD_PWM1|Add0~32\,
	cout1 => \MOD_PWM1|Add0~32COUT1_104\);

-- Location: LC_X1_Y7_N1
\MOD_PWM1|vCounter~10\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~10_combout\ = (\MOD_PWM1|LessThan0~4_combout\ & (((\MOD_PWM1|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~10_combout\);

-- Location: LC_X2_Y8_N6
\MOD_PWM1|PWM_G:vCounter[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[6]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|vCounter~10_combout\)))) # (!\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|sPWMPERIOD\(6))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~30_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|sPWMPERIOD\(6),
	datac => \MOD_PWM1|Add0~30_combout\,
	datad => \MOD_PWM1|vCounter~10_combout\,
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[6]~regout\);

-- Location: LC_X2_Y7_N9
\MOD_PWM1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~35_combout\ = (\MOD_PWM1|PWM_G:vCounter[7]~regout\ $ ((!(!\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~32\) # (\MOD_PWM1|Add0~12\ & \MOD_PWM1|Add0~32COUT1_104\))))
-- \MOD_PWM1|Add0~37\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[7]~regout\ & !\MOD_PWM1|Add0~32COUT1_104\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[7]~regout\,
	cin => \MOD_PWM1|Add0~12\,
	cin0 => \MOD_PWM1|Add0~32\,
	cin1 => \MOD_PWM1|Add0~32COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~35_combout\,
	cout => \MOD_PWM1|Add0~37\);

-- Location: LC_X5_Y7_N6
\MOD_PWM1|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Equal0~1_combout\ = (\MOD_PWM1|Add0~35_combout\) # ((\MOD_PWM1|Add0~20_combout\) # ((\MOD_PWM1|Add0~25_combout\) # (\MOD_PWM1|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|Add0~35_combout\,
	datab => \MOD_PWM1|Add0~20_combout\,
	datac => \MOD_PWM1|Add0~25_combout\,
	datad => \MOD_PWM1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Equal0~1_combout\);

-- Location: LC_X2_Y8_N5
\MOD_PWM1|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Equal0~0_combout\ = (\MOD_PWM1|Add0~5_combout\) # ((\MOD_PWM1|Add0~0_combout\) # ((\MOD_PWM1|Add0~10_combout\) # (\MOD_PWM1|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|Add0~5_combout\,
	datab => \MOD_PWM1|Add0~0_combout\,
	datac => \MOD_PWM1|Add0~10_combout\,
	datad => \MOD_PWM1|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Equal0~0_combout\);

-- Location: LC_X4_Y7_N5
\MOD_PWM1|vCounter~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~2_combout\ = (((\MOD_PWM1|LessThan0~4_combout\ & \MOD_PWM1|Add0~65_combout\)))

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
	datac => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~2_combout\);

-- Location: LC_X12_Y6_N9
\MOD_PWM2|sPWMPERIOD[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMPERIOD\(13) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(13), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMPERIOD\(13));

-- Location: LC_X12_Y6_N6
\MOD_PWM2|sDUTY[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~4\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4)) # ((D2_sDUTY[13])))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (!\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_PWM2|sPWMPERIOD\(13)))))
-- \MOD_PWM2|sDUTY\(13) = DFFEAS(\MOD_IOSPACE|Mux21~4\, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	datad => \MOD_PWM2|sPWMPERIOD\(13),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~4\,
	regout => \MOD_PWM2|sDUTY\(13));

-- Location: LC_X13_Y7_N3
\MOD_IOSPACE|sQEMBUFFER2[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~5\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_IOSPACE|Mux21~4\ & ((C1_sQEMBUFFER2[13]))) # (!\MOD_IOSPACE|Mux21~4\ & (\QENC2|sQEMCOUNTER\(13))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((\MOD_IOSPACE|Mux21~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \QENC2|sQEMCOUNTER\(13),
	datac => \QENC2|sQEMCOUNTER\(29),
	datad => \MOD_IOSPACE|Mux21~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~5\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(13));

-- Location: LC_X13_Y7_N4
\MOD_RESET|sResetPeriod[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~6\ = (\MOD_IOSPACE|oData[14]~29_combout\ & ((\MOD_IOSPACE|oData[14]~30_combout\ & (E1_sResetPeriod[13])) # (!\MOD_IOSPACE|oData[14]~30_combout\ & ((\MOD_IOSPACE|Mux21~5\))))) # (!\MOD_IOSPACE|oData[14]~29_combout\ & 
-- (!\MOD_IOSPACE|oData[14]~30_combout\))
-- \MOD_RESET|sResetPeriod\(13) = DFFEAS(\MOD_IOSPACE|Mux21~6\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b391",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_IOSPACE|oData[14]~29_combout\,
	datab => \MOD_IOSPACE|oData[14]~30_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	datad => \MOD_IOSPACE|Mux21~5\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~6\,
	regout => \MOD_RESET|sResetPeriod\(13));

-- Location: LC_X12_Y7_N6
\MOD_PWM1|sPWMPERIOD[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~7\ = (\MOD_IOSPACE|oData[8]~28_combout\ & ((\MOD_IOSPACE|Mux21~6\ & ((D1_sPWMPERIOD[13]))) # (!\MOD_IOSPACE|Mux21~6\ & (\QENC1|sQEMCOUNTER\(13))))) # (!\MOD_IOSPACE|oData[8]~28_combout\ & (((\MOD_IOSPACE|Mux21~6\))))
-- \MOD_PWM1|sPWMPERIOD\(13) = DFFEAS(\MOD_IOSPACE|Mux21~7\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[8]~28_combout\,
	datab => \QENC1|sQEMCOUNTER\(13),
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	datad => \MOD_IOSPACE|Mux21~6\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~7\,
	regout => \MOD_PWM1|sPWMPERIOD\(13));

-- Location: LC_X4_Y7_N2
\MOD_PWM1|PWM_G:vCounter[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[13]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~2_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(13))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~65_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|vCounter~2_combout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|Add0~65_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(13),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[13]~regout\);

-- Location: LC_X3_Y7_N0
\MOD_PWM1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~40_combout\ = (\MOD_PWM1|PWM_G:vCounter[8]~regout\ $ ((\MOD_PWM1|Add0~37\)))
-- \MOD_PWM1|Add0~42\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[8]~regout\) # (!\MOD_PWM1|Add0~37\)))
-- \MOD_PWM1|Add0~42COUT1_106\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[8]~regout\) # (!\MOD_PWM1|Add0~37\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[8]~regout\,
	cin => \MOD_PWM1|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~40_combout\,
	cout0 => \MOD_PWM1|Add0~42\,
	cout1 => \MOD_PWM1|Add0~42COUT1_106\);

-- Location: LC_X3_Y9_N9
\MOD_PWM1|vCounter~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~4_combout\ = (((\MOD_PWM1|LessThan0~4_combout\ & \MOD_PWM1|Add0~40_combout\)))

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
	datac => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~4_combout\);

-- Location: LC_X5_Y7_N7
\MOD_PWM1|PWM_G:vCounter[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[8]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~4_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(8))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~40_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|vCounter~4_combout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|Add0~40_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(8),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[8]~regout\);

-- Location: LC_X3_Y7_N1
\MOD_PWM1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~45_combout\ = (\MOD_PWM1|PWM_G:vCounter[9]~regout\ $ ((!(!\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~42\) # (\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~42COUT1_106\))))
-- \MOD_PWM1|Add0~47\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[9]~regout\ & !\MOD_PWM1|Add0~42\)))
-- \MOD_PWM1|Add0~47COUT1_108\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[9]~regout\ & !\MOD_PWM1|Add0~42COUT1_106\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[9]~regout\,
	cin => \MOD_PWM1|Add0~37\,
	cin0 => \MOD_PWM1|Add0~42\,
	cin1 => \MOD_PWM1|Add0~42COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~45_combout\,
	cout0 => \MOD_PWM1|Add0~47\,
	cout1 => \MOD_PWM1|Add0~47COUT1_108\);

-- Location: LC_X3_Y9_N8
\MOD_PWM1|vCounter~5\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~5_combout\ = (((\MOD_PWM1|LessThan0~4_combout\ & \MOD_PWM1|Add0~45_combout\)))

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
	datac => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~5_combout\);

-- Location: LC_X5_Y7_N5
\MOD_PWM1|PWM_G:vCounter[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[9]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~5_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(9))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~45_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~5_combout\,
	datac => \MOD_PWM1|Add0~45_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(9),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[9]~regout\);

-- Location: LC_X3_Y7_N2
\MOD_PWM1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~50_combout\ = (\MOD_PWM1|PWM_G:vCounter[10]~regout\ $ (((!\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~47\) # (\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~47COUT1_108\))))
-- \MOD_PWM1|Add0~52\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[10]~regout\) # (!\MOD_PWM1|Add0~47\)))
-- \MOD_PWM1|Add0~52COUT1_110\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[10]~regout\) # (!\MOD_PWM1|Add0~47COUT1_108\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[10]~regout\,
	cin => \MOD_PWM1|Add0~37\,
	cin0 => \MOD_PWM1|Add0~47\,
	cin1 => \MOD_PWM1|Add0~47COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~50_combout\,
	cout0 => \MOD_PWM1|Add0~52\,
	cout1 => \MOD_PWM1|Add0~52COUT1_110\);

-- Location: LC_X3_Y7_N8
\MOD_PWM1|vCounter~6\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~6_combout\ = (((\MOD_PWM1|LessThan0~4_combout\ & \MOD_PWM1|Add0~50_combout\)))

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
	datac => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~6_combout\);

-- Location: LC_X5_Y7_N1
\MOD_PWM1|PWM_G:vCounter[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[10]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~6_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(10))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~50_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~6_combout\,
	datac => \MOD_PWM1|Add0~50_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(10),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[10]~regout\);

-- Location: LC_X3_Y7_N3
\MOD_PWM1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~55_combout\ = (\MOD_PWM1|PWM_G:vCounter[11]~regout\ $ ((!(!\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~52\) # (\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~52COUT1_110\))))
-- \MOD_PWM1|Add0~57\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[11]~regout\ & !\MOD_PWM1|Add0~52\)))
-- \MOD_PWM1|Add0~57COUT1_112\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[11]~regout\ & !\MOD_PWM1|Add0~52COUT1_110\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[11]~regout\,
	cin => \MOD_PWM1|Add0~37\,
	cin0 => \MOD_PWM1|Add0~52\,
	cin1 => \MOD_PWM1|Add0~52COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~55_combout\,
	cout0 => \MOD_PWM1|Add0~57\,
	cout1 => \MOD_PWM1|Add0~57COUT1_112\);

-- Location: LC_X4_Y7_N7
\MOD_PWM1|vCounter~7\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~7_combout\ = (((\MOD_PWM1|LessThan0~4_combout\ & \MOD_PWM1|Add0~55_combout\)))

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
	datac => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~7_combout\);

-- Location: LC_X13_Y3_N8
\MOD_PWM2|sPWMPERIOD[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMPERIOD\(11) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(11)))), \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(11),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMPERIOD\(11));

-- Location: LC_X11_Y6_N7
\MOD_PWM2|sDUTY[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~4\ = (\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_SRAMIO|IO_ADDR\(0))) # (!\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0) & (D2_sDUTY[11])) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_PWM2|sPWMPERIOD\(11))))))
-- \MOD_PWM2|sDUTY\(11) = DFFEAS(\MOD_IOSPACE|Mux23~4\, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	datad => \MOD_PWM2|sPWMPERIOD\(11),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~4\,
	regout => \MOD_PWM2|sDUTY\(11));

-- Location: LC_X11_Y6_N8
\MOD_IOSPACE|sQEMBUFFER2[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~5\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_IOSPACE|Mux23~4\ & ((C1_sQEMBUFFER2[11]))) # (!\MOD_IOSPACE|Mux23~4\ & (\QENC2|sQEMCOUNTER\(11))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((\MOD_IOSPACE|Mux23~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \QENC2|sQEMCOUNTER\(11),
	datac => \QENC2|sQEMCOUNTER\(27),
	datad => \MOD_IOSPACE|Mux23~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~5\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(11));

-- Location: LC_X10_Y7_N1
\MOD_RESET|sResetPeriod[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~6\ = (\MOD_IOSPACE|oData[14]~30_combout\ & (\MOD_IOSPACE|oData[14]~29_combout\ & (E1_sResetPeriod[11]))) # (!\MOD_IOSPACE|oData[14]~30_combout\ & (((\MOD_IOSPACE|Mux23~5\)) # (!\MOD_IOSPACE|oData[14]~29_combout\)))
-- \MOD_RESET|sResetPeriod\(11) = DFFEAS(\MOD_IOSPACE|Mux23~6\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_IOSPACE|oData[14]~30_combout\,
	datab => \MOD_IOSPACE|oData[14]~29_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	datad => \MOD_IOSPACE|Mux23~5\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~6\,
	regout => \MOD_RESET|sResetPeriod\(11));

-- Location: LC_X10_Y7_N2
\MOD_PWM1|sPWMPERIOD[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~7\ = (\MOD_IOSPACE|oData[8]~28_combout\ & ((\MOD_IOSPACE|Mux23~6\ & ((D1_sPWMPERIOD[11]))) # (!\MOD_IOSPACE|Mux23~6\ & (\QENC1|sQEMCOUNTER\(11))))) # (!\MOD_IOSPACE|oData[8]~28_combout\ & (((\MOD_IOSPACE|Mux23~6\))))
-- \MOD_PWM1|sPWMPERIOD\(11) = DFFEAS(\MOD_IOSPACE|Mux23~7\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[8]~28_combout\,
	datab => \QENC1|sQEMCOUNTER\(11),
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	datad => \MOD_IOSPACE|Mux23~6\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~7\,
	regout => \MOD_PWM1|sPWMPERIOD\(11));

-- Location: LC_X5_Y7_N8
\MOD_PWM1|PWM_G:vCounter[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[11]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~7_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(11))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~55_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~7_combout\,
	datac => \MOD_PWM1|Add0~55_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(11),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[11]~regout\);

-- Location: LC_X3_Y7_N4
\MOD_PWM1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~60_combout\ = \MOD_PWM1|PWM_G:vCounter[12]~regout\ $ (((((!\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~57\) # (\MOD_PWM1|Add0~37\ & \MOD_PWM1|Add0~57COUT1_112\)))))
-- \MOD_PWM1|Add0~62\ = CARRY((\MOD_PWM1|PWM_G:vCounter[12]~regout\) # ((!\MOD_PWM1|Add0~57COUT1_112\)))

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
	dataa => \MOD_PWM1|PWM_G:vCounter[12]~regout\,
	cin => \MOD_PWM1|Add0~37\,
	cin0 => \MOD_PWM1|Add0~57\,
	cin1 => \MOD_PWM1|Add0~57COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~60_combout\,
	cout => \MOD_PWM1|Add0~62\);

-- Location: LC_X3_Y7_N9
\MOD_PWM1|vCounter~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~1_combout\ = (((\MOD_PWM1|Add0~60_combout\ & \MOD_PWM1|LessThan0~4_combout\)))

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
	datac => \MOD_PWM1|Add0~60_combout\,
	datad => \MOD_PWM1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~1_combout\);

-- Location: LC_X15_Y6_N8
\MOD_PWM2|sPWMPERIOD[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMPERIOD\(12) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(12)))), \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(12),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMPERIOD\(12));

-- Location: LC_X14_Y7_N5
\MOD_PWM2|sDUTY[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~4\ = (\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_SRAMIO|IO_ADDR\(0))) # (!\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0) & (D2_sDUTY[12])) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_PWM2|sPWMPERIOD\(12))))))
-- \MOD_PWM2|sDUTY\(12) = DFFEAS(\MOD_IOSPACE|Mux22~4\, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	datad => \MOD_PWM2|sPWMPERIOD\(12),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~4\,
	regout => \MOD_PWM2|sDUTY\(12));

-- Location: LC_X13_Y7_N0
\MOD_IOSPACE|sQEMBUFFER2[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~5\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_IOSPACE|Mux22~4\ & ((C1_sQEMBUFFER2[12]))) # (!\MOD_IOSPACE|Mux22~4\ & (\QENC2|sQEMCOUNTER\(12))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((\MOD_IOSPACE|Mux22~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \QENC2|sQEMCOUNTER\(12),
	datac => \QENC2|sQEMCOUNTER\(28),
	datad => \MOD_IOSPACE|Mux22~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~5\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(12));

-- Location: LC_X13_Y7_N1
\MOD_RESET|sResetPeriod[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~6\ = (\MOD_IOSPACE|oData[14]~29_combout\ & ((\MOD_IOSPACE|oData[14]~30_combout\ & (E1_sResetPeriod[12])) # (!\MOD_IOSPACE|oData[14]~30_combout\ & ((\MOD_IOSPACE|Mux22~5\))))) # (!\MOD_IOSPACE|oData[14]~29_combout\ & 
-- (!\MOD_IOSPACE|oData[14]~30_combout\))
-- \MOD_RESET|sResetPeriod\(12) = DFFEAS(\MOD_IOSPACE|Mux22~6\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b391",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_IOSPACE|oData[14]~29_combout\,
	datab => \MOD_IOSPACE|oData[14]~30_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	datad => \MOD_IOSPACE|Mux22~5\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~6\,
	regout => \MOD_RESET|sResetPeriod\(12));

-- Location: LC_X12_Y7_N3
\MOD_PWM1|sPWMPERIOD[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~7\ = (\MOD_IOSPACE|oData[8]~28_combout\ & ((\MOD_IOSPACE|Mux22~6\ & ((D1_sPWMPERIOD[12]))) # (!\MOD_IOSPACE|Mux22~6\ & (\QENC1|sQEMCOUNTER\(12))))) # (!\MOD_IOSPACE|oData[8]~28_combout\ & (((\MOD_IOSPACE|Mux22~6\))))
-- \MOD_PWM1|sPWMPERIOD\(12) = DFFEAS(\MOD_IOSPACE|Mux22~7\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|oData[8]~28_combout\,
	datab => \QENC1|sQEMCOUNTER\(12),
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	datad => \MOD_IOSPACE|Mux22~6\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~7\,
	regout => \MOD_PWM1|sPWMPERIOD\(12));

-- Location: LC_X1_Y7_N7
\MOD_PWM1|PWM_G:vCounter[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[12]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~1_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(12))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~60_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~1_combout\,
	datac => \MOD_PWM1|Add0~60_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(12),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[12]~regout\);

-- Location: LC_X3_Y7_N5
\MOD_PWM1|Add0~65\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~65_combout\ = (\MOD_PWM1|PWM_G:vCounter[13]~regout\ $ ((!\MOD_PWM1|Add0~62\)))
-- \MOD_PWM1|Add0~67\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[13]~regout\ & !\MOD_PWM1|Add0~62\)))
-- \MOD_PWM1|Add0~67COUT1_114\ = CARRY(((!\MOD_PWM1|PWM_G:vCounter[13]~regout\ & !\MOD_PWM1|Add0~62\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[13]~regout\,
	cin => \MOD_PWM1|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~65_combout\,
	cout0 => \MOD_PWM1|Add0~67\,
	cout1 => \MOD_PWM1|Add0~67COUT1_114\);

-- Location: LC_X14_Y9_N2
\QENC2|sBUFFER[31]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sBUFFER\(31) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\, \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sBUFFER\(31));

-- Location: LC_X14_Y10_N5
\QENC2|sQEMCOUNTER[31]\ : maxv_lcell
-- Equation(s):
-- \QENC2|sQEMCOUNTER\(31) = DFFEAS(\QENC2|sQEMCOUNTER\(31) $ (((\QENC2|sQEMCOUNTER[30]~61\ $ (\QENC2|sQEMDir~regout\)))), GLOBAL(\iCLK~combout\), VCC, , \QENC2|oPulse~0\, \QENC2|sBUFFER\(31), \QENC2|sWrCounter~regout\, , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC2|sQEMCOUNTER\(31),
	datac => \QENC2|sBUFFER\(31),
	datad => \QENC2|sQEMDir~regout\,
	aclr => GND,
	aload => \QENC2|sWrCounter~regout\,
	ena => \QENC2|oPulse~0\,
	cin => \QENC2|sQEMCOUNTER[30]~61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC2|sQEMCOUNTER\(31));

-- Location: LC_X15_Y6_N1
\MOD_PWM2|sPWMPERIOD[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMPERIOD\(15) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(15)))), \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMPERIOD\(15));

-- Location: LC_X11_Y6_N3
\MOD_PWM2|sDUTY[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~3\ = (\MOD_SRAMIO|IO_ADDR\(4) & (\MOD_SRAMIO|IO_ADDR\(0))) # (!\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0) & (D2_sDUTY[15])) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_PWM2|sPWMPERIOD\(15))))))
-- \MOD_PWM2|sDUTY\(15) = DFFEAS(\MOD_IOSPACE|Mux19~3\, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	datad => \MOD_PWM2|sPWMPERIOD\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~3\,
	regout => \MOD_PWM2|sDUTY\(15));

-- Location: LC_X11_Y6_N4
\MOD_IOSPACE|sQEMBUFFER2[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~4\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_IOSPACE|Mux19~3\ & ((C1_sQEMBUFFER2[15]))) # (!\MOD_IOSPACE|Mux19~3\ & (\QENC2|sQEMCOUNTER\(15))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((\MOD_IOSPACE|Mux19~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \QENC2|sQEMCOUNTER\(15),
	datac => \QENC2|sQEMCOUNTER\(31),
	datad => \MOD_IOSPACE|Mux19~3\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~4\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(15));

-- Location: LC_X10_Y7_N5
\MOD_RESET|sResetPeriod[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~5\ = (\MOD_IOSPACE|oData[14]~30_combout\ & (\MOD_IOSPACE|oData[14]~29_combout\ & (E1_sResetPeriod[15]))) # (!\MOD_IOSPACE|oData[14]~30_combout\ & (((\MOD_IOSPACE|Mux19~4\)) # (!\MOD_IOSPACE|oData[14]~29_combout\)))
-- \MOD_RESET|sResetPeriod\(15) = DFFEAS(\MOD_IOSPACE|Mux19~5\, \MOD_IOSPACE|oWrRESETPERIOD~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrRESETPERIOD~regout\,
	dataa => \MOD_IOSPACE|oData[14]~30_combout\,
	datab => \MOD_IOSPACE|oData[14]~29_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	datad => \MOD_IOSPACE|Mux19~4\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~5\,
	regout => \MOD_RESET|sResetPeriod\(15));

-- Location: LC_X10_Y7_N9
\MOD_PWM1|sPWMPERIOD[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~6\ = (\MOD_IOSPACE|Mux19~5\ & (((D1_sPWMPERIOD[15])) # (!\MOD_IOSPACE|oData[8]~28_combout\))) # (!\MOD_IOSPACE|Mux19~5\ & (\MOD_IOSPACE|oData[8]~28_combout\ & ((\QENC1|sQEMCOUNTER\(15)))))
-- \MOD_PWM1|sPWMPERIOD\(15) = DFFEAS(\MOD_IOSPACE|Mux19~6\, \MOD_IOSPACE|oWrPWMPERIOD1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6a2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	dataa => \MOD_IOSPACE|Mux19~5\,
	datab => \MOD_IOSPACE|oData[8]~28_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	datad => \QENC1|sQEMCOUNTER\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~6\,
	regout => \MOD_PWM1|sPWMPERIOD\(15));

-- Location: LC_X5_Y7_N9
\MOD_PWM1|PWM_G:vCounter[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[15]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~0_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(15))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~75_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~0_combout\,
	datac => \MOD_PWM1|Add0~75_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(15),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[15]~regout\);

-- Location: LC_X3_Y7_N6
\MOD_PWM1|Add0~70\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~70_combout\ = (\MOD_PWM1|PWM_G:vCounter[14]~regout\ $ (((!\MOD_PWM1|Add0~62\ & \MOD_PWM1|Add0~67\) # (\MOD_PWM1|Add0~62\ & \MOD_PWM1|Add0~67COUT1_114\))))
-- \MOD_PWM1|Add0~72\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[14]~regout\) # (!\MOD_PWM1|Add0~67\)))
-- \MOD_PWM1|Add0~72COUT1_116\ = CARRY(((\MOD_PWM1|PWM_G:vCounter[14]~regout\) # (!\MOD_PWM1|Add0~67COUT1_114\)))

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
	datab => \MOD_PWM1|PWM_G:vCounter[14]~regout\,
	cin => \MOD_PWM1|Add0~62\,
	cin0 => \MOD_PWM1|Add0~67\,
	cin1 => \MOD_PWM1|Add0~67COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~70_combout\,
	cout0 => \MOD_PWM1|Add0~72\,
	cout1 => \MOD_PWM1|Add0~72COUT1_116\);

-- Location: LC_X4_Y7_N3
\MOD_PWM1|vCounter~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~3_combout\ = (((\MOD_PWM1|Add0~70_combout\ & \MOD_PWM1|LessThan0~4_combout\)))

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
	datac => \MOD_PWM1|Add0~70_combout\,
	datad => \MOD_PWM1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~3_combout\);

-- Location: LC_X1_Y7_N4
\MOD_PWM1|PWM_G:vCounter[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[14]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~3_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(14))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~70_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~3_combout\,
	datac => \MOD_PWM1|Add0~70_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(14),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[14]~regout\);

-- Location: LC_X3_Y7_N7
\MOD_PWM1|Add0~75\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Add0~75_combout\ = \MOD_PWM1|PWM_G:vCounter[15]~regout\ $ ((((!(!\MOD_PWM1|Add0~62\ & \MOD_PWM1|Add0~72\) # (\MOD_PWM1|Add0~62\ & \MOD_PWM1|Add0~72COUT1_116\)))))

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
	dataa => \MOD_PWM1|PWM_G:vCounter[15]~regout\,
	cin => \MOD_PWM1|Add0~62\,
	cin0 => \MOD_PWM1|Add0~72\,
	cin1 => \MOD_PWM1|Add0~72COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Add0~75_combout\);

-- Location: LC_X4_Y7_N6
\MOD_PWM1|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Equal0~3_combout\ = (\MOD_PWM1|Add0~65_combout\) # ((\MOD_PWM1|Add0~75_combout\) # ((\MOD_PWM1|Add0~70_combout\) # (\MOD_PWM1|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|Add0~65_combout\,
	datab => \MOD_PWM1|Add0~75_combout\,
	datac => \MOD_PWM1|Add0~70_combout\,
	datad => \MOD_PWM1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Equal0~3_combout\);

-- Location: LC_X5_Y7_N2
\MOD_PWM1|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Equal0~2_combout\ = (\MOD_PWM1|Add0~40_combout\) # ((\MOD_PWM1|Add0~45_combout\) # ((\MOD_PWM1|Add0~55_combout\) # (\MOD_PWM1|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|Add0~40_combout\,
	datab => \MOD_PWM1|Add0~45_combout\,
	datac => \MOD_PWM1|Add0~55_combout\,
	datad => \MOD_PWM1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Equal0~2_combout\);

-- Location: LC_X5_Y7_N3
\MOD_PWM1|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Equal0~4_combout\ = (\MOD_PWM1|Equal0~1_combout\) # ((\MOD_PWM1|Equal0~0_combout\) # ((\MOD_PWM1|Equal0~3_combout\) # (\MOD_PWM1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|Equal0~1_combout\,
	datab => \MOD_PWM1|Equal0~0_combout\,
	datac => \MOD_PWM1|Equal0~3_combout\,
	datad => \MOD_PWM1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Equal0~4_combout\);

-- Location: LC_X5_Y7_N4
\MOD_PWM1|PWM_G:vCounter[7]~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[7]~0_combout\ = (((\MOD_PWM1|sPWMState.LO~regout\ & \MOD_PWM1|Equal0~4_combout\)))

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
	datac => \MOD_PWM1|sPWMState.LO~regout\,
	datad => \MOD_PWM1|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\);

-- Location: LC_X2_Y7_N0
\MOD_PWM1|PWM_G:vCounter[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[0]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~15_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(0))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~0_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|vCounter~15_combout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|Add0~0_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(0),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[0]~regout\);

-- Location: LC_X1_Y7_N0
\MOD_PWM1|vCounter~12\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~12_combout\ = (((\MOD_PWM1|Add0~5_combout\ & \MOD_PWM1|LessThan0~4_combout\)))

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
	datac => \MOD_PWM1|Add0~5_combout\,
	datad => \MOD_PWM1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~12_combout\);

-- Location: LC_X1_Y7_N9
\MOD_PWM1|PWM_G:vCounter[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|PWM_G:vCounter[1]~regout\ = DFFEAS((\MOD_PWM1|sPWMState.HI~regout\ & (\MOD_PWM1|vCounter~12_combout\)) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|sPWMPERIOD\(1))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM1|Add0~5_combout\, , , \MOD_PWM1|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.HI~regout\,
	datab => \MOD_PWM1|vCounter~12_combout\,
	datac => \MOD_PWM1|Add0~5_combout\,
	datad => \MOD_PWM1|sPWMPERIOD\(1),
	aclr => GND,
	sload => \MOD_PWM1|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|PWM_G:vCounter[1]~regout\);

-- Location: LC_X1_Y7_N8
\MOD_PWM1|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan0~3_combout\ = ((\MOD_PWM1|PWM_G:vCounter[1]~regout\) # ((\MOD_PWM1|PWM_G:vCounter[3]~regout\) # (\MOD_PWM1|PWM_G:vCounter[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM1|PWM_G:vCounter[1]~regout\,
	datac => \MOD_PWM1|PWM_G:vCounter[3]~regout\,
	datad => \MOD_PWM1|PWM_G:vCounter[2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan0~3_combout\);

-- Location: LC_X2_Y8_N9
\MOD_PWM1|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan0~2_combout\ = (\MOD_PWM1|PWM_G:vCounter[6]~regout\) # ((\MOD_PWM1|PWM_G:vCounter[7]~regout\) # ((\MOD_PWM1|PWM_G:vCounter[4]~regout\) # (\MOD_PWM1|PWM_G:vCounter[5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|PWM_G:vCounter[6]~regout\,
	datab => \MOD_PWM1|PWM_G:vCounter[7]~regout\,
	datac => \MOD_PWM1|PWM_G:vCounter[4]~regout\,
	datad => \MOD_PWM1|PWM_G:vCounter[5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan0~2_combout\);

-- Location: LC_X5_Y7_N0
\MOD_PWM1|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan0~1_combout\ = (\MOD_PWM1|PWM_G:vCounter[9]~regout\) # ((\MOD_PWM1|PWM_G:vCounter[10]~regout\) # ((\MOD_PWM1|PWM_G:vCounter[8]~regout\) # (\MOD_PWM1|PWM_G:vCounter[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|PWM_G:vCounter[9]~regout\,
	datab => \MOD_PWM1|PWM_G:vCounter[10]~regout\,
	datac => \MOD_PWM1|PWM_G:vCounter[8]~regout\,
	datad => \MOD_PWM1|PWM_G:vCounter[11]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan0~1_combout\);

-- Location: LC_X1_Y7_N2
\MOD_PWM1|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan0~0_combout\ = (\MOD_PWM1|PWM_G:vCounter[14]~regout\) # ((\MOD_PWM1|PWM_G:vCounter[15]~regout\) # ((\MOD_PWM1|PWM_G:vCounter[12]~regout\) # (\MOD_PWM1|PWM_G:vCounter[13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|PWM_G:vCounter[14]~regout\,
	datab => \MOD_PWM1|PWM_G:vCounter[15]~regout\,
	datac => \MOD_PWM1|PWM_G:vCounter[12]~regout\,
	datad => \MOD_PWM1|PWM_G:vCounter[13]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan0~0_combout\);

-- Location: LC_X1_Y7_N3
\MOD_PWM1|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan0~4_combout\ = (\MOD_PWM1|LessThan0~3_combout\) # ((\MOD_PWM1|LessThan0~2_combout\) # ((\MOD_PWM1|LessThan0~1_combout\) # (\MOD_PWM1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|LessThan0~3_combout\,
	datab => \MOD_PWM1|LessThan0~2_combout\,
	datac => \MOD_PWM1|LessThan0~1_combout\,
	datad => \MOD_PWM1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan0~4_combout\);

-- Location: LC_X4_Y7_N4
\MOD_PWM1|vCounter~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|vCounter~0_combout\ = ((\MOD_PWM1|LessThan0~4_combout\ & ((\MOD_PWM1|Add0~75_combout\))))

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
	datab => \MOD_PWM1|LessThan0~4_combout\,
	datad => \MOD_PWM1|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|vCounter~0_combout\);

-- Location: LC_X8_Y4_N0
\QENC1|sBUFFER[31]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(31) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(31));

-- Location: LC_X8_Y4_N3
\QENC1|sBUFFER[30]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(30) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(14)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(14),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(30));

-- Location: LC_X9_Y4_N4
\QENC1|sBUFFER[25]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(25) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(25));

-- Location: LC_X9_Y4_N1
\QENC1|sBUFFER[24]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(24) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(24));

-- Location: LC_X6_Y4_N8
\QENC1|sQEMCOUNTER[24]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(24) = DFFEAS(\QENC1|sQEMCOUNTER\(24) $ (\QENC1|sQEMDir~regout\ $ ((!(!\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[23]~31\) # (\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[23]~31COUT1_126\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(24), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[24]~49\ = CARRY((\QENC1|sQEMCOUNTER\(24) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[23]~31\))) # (!\QENC1|sQEMCOUNTER\(24) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[23]~31\)))
-- \QENC1|sQEMCOUNTER[24]~49COUT1_128\ = CARRY((\QENC1|sQEMCOUNTER\(24) & ((\QENC1|sQEMDir~regout\) # (!\QENC1|sQEMCOUNTER[23]~31COUT1_126\))) # (!\QENC1|sQEMCOUNTER\(24) & (\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[23]~31COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(24),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(24),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[20]~19\,
	cin0 => \QENC1|sQEMCOUNTER[23]~31\,
	cin1 => \QENC1|sQEMCOUNTER[23]~31COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(24),
	cout0 => \QENC1|sQEMCOUNTER[24]~49\,
	cout1 => \QENC1|sQEMCOUNTER[24]~49COUT1_128\);

-- Location: LC_X6_Y4_N9
\QENC1|sQEMCOUNTER[25]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(25) = DFFEAS(\QENC1|sQEMCOUNTER\(25) $ (\QENC1|sQEMDir~regout\ $ (((!\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[24]~49\) # (\QENC1|sQEMCOUNTER[20]~19\ & \QENC1|sQEMCOUNTER[24]~49COUT1_128\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(25), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[25]~51\ = CARRY((\QENC1|sQEMCOUNTER\(25) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[24]~49COUT1_128\)) # (!\QENC1|sQEMCOUNTER\(25) & ((!\QENC1|sQEMCOUNTER[24]~49COUT1_128\) # (!\QENC1|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(25),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(25),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[20]~19\,
	cin0 => \QENC1|sQEMCOUNTER[24]~49\,
	cin1 => \QENC1|sQEMCOUNTER[24]~49COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(25),
	cout => \QENC1|sQEMCOUNTER[25]~51\);

-- Location: LC_X9_Y4_N0
\QENC1|sBUFFER[29]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(29) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(13)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(13),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(29));

-- Location: LC_X9_Y4_N5
\QENC1|sBUFFER[28]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(28) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(28));

-- Location: LC_X9_Y4_N8
\QENC1|sBUFFER[27]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(27) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(11)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(11),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(27));

-- Location: LC_X9_Y4_N9
\QENC1|sBUFFER[26]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sBUFFER\(26) = DFFEAS(GND, GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\, \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|oWrQEMCOUNTERH1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sBUFFER\(26));

-- Location: LC_X7_Y4_N0
\QENC1|sQEMCOUNTER[26]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(26) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(26) $ ((!\QENC1|sQEMCOUNTER[25]~51\))), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(26), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[26]~53\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(26)) # (!\QENC1|sQEMCOUNTER[25]~51\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(26) & !\QENC1|sQEMCOUNTER[25]~51\)))
-- \QENC1|sQEMCOUNTER[26]~53COUT1_130\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(26)) # (!\QENC1|sQEMCOUNTER[25]~51\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(26) & !\QENC1|sQEMCOUNTER[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(26),
	datac => \QENC1|sBUFFER\(26),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[25]~51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(26),
	cout0 => \QENC1|sQEMCOUNTER[26]~53\,
	cout1 => \QENC1|sQEMCOUNTER[26]~53COUT1_130\);

-- Location: LC_X7_Y4_N1
\QENC1|sQEMCOUNTER[27]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(27) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(27) $ (((!\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[26]~53\) # (\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[26]~53COUT1_130\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(27), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[27]~55\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(27) & !\QENC1|sQEMCOUNTER[26]~53\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[26]~53\) # (!\QENC1|sQEMCOUNTER\(27)))))
-- \QENC1|sQEMCOUNTER[27]~55COUT1_132\ = CARRY((\QENC1|sQEMDir~regout\ & (!\QENC1|sQEMCOUNTER\(27) & !\QENC1|sQEMCOUNTER[26]~53COUT1_130\)) # (!\QENC1|sQEMDir~regout\ & ((!\QENC1|sQEMCOUNTER[26]~53COUT1_130\) # (!\QENC1|sQEMCOUNTER\(27)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(27),
	datac => \QENC1|sBUFFER\(27),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[25]~51\,
	cin0 => \QENC1|sQEMCOUNTER[26]~53\,
	cin1 => \QENC1|sQEMCOUNTER[26]~53COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(27),
	cout0 => \QENC1|sQEMCOUNTER[27]~55\,
	cout1 => \QENC1|sQEMCOUNTER[27]~55COUT1_132\);

-- Location: LC_X7_Y4_N2
\QENC1|sQEMCOUNTER[28]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(28) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(28) $ ((!(!\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[27]~55\) # (\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[27]~55COUT1_132\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(28), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[28]~57\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(28)) # (!\QENC1|sQEMCOUNTER[27]~55\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(28) & !\QENC1|sQEMCOUNTER[27]~55\)))
-- \QENC1|sQEMCOUNTER[28]~57COUT1_134\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(28)) # (!\QENC1|sQEMCOUNTER[27]~55COUT1_132\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(28) & !\QENC1|sQEMCOUNTER[27]~55COUT1_132\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(28),
	datac => \QENC1|sBUFFER\(28),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[25]~51\,
	cin0 => \QENC1|sQEMCOUNTER[27]~55\,
	cin1 => \QENC1|sQEMCOUNTER[27]~55COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(28),
	cout0 => \QENC1|sQEMCOUNTER[28]~57\,
	cout1 => \QENC1|sQEMCOUNTER[28]~57COUT1_134\);

-- Location: LC_X7_Y4_N3
\QENC1|sQEMCOUNTER[29]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(29) = DFFEAS(\QENC1|sQEMCOUNTER\(29) $ (\QENC1|sQEMDir~regout\ $ (((!\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[28]~57\) # (\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[28]~57COUT1_134\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(29), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[29]~59\ = CARRY((\QENC1|sQEMCOUNTER\(29) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[28]~57\)) # (!\QENC1|sQEMCOUNTER\(29) & ((!\QENC1|sQEMCOUNTER[28]~57\) # (!\QENC1|sQEMDir~regout\))))
-- \QENC1|sQEMCOUNTER[29]~59COUT1_136\ = CARRY((\QENC1|sQEMCOUNTER\(29) & (!\QENC1|sQEMDir~regout\ & !\QENC1|sQEMCOUNTER[28]~57COUT1_134\)) # (!\QENC1|sQEMCOUNTER\(29) & ((!\QENC1|sQEMCOUNTER[28]~57COUT1_134\) # (!\QENC1|sQEMDir~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(29),
	datab => \QENC1|sQEMDir~regout\,
	datac => \QENC1|sBUFFER\(29),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[25]~51\,
	cin0 => \QENC1|sQEMCOUNTER[28]~57\,
	cin1 => \QENC1|sQEMCOUNTER[28]~57COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(29),
	cout0 => \QENC1|sQEMCOUNTER[29]~59\,
	cout1 => \QENC1|sQEMCOUNTER[29]~59COUT1_136\);

-- Location: LC_X7_Y4_N4
\QENC1|sQEMCOUNTER[30]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(30) = DFFEAS(\QENC1|sQEMDir~regout\ $ (\QENC1|sQEMCOUNTER\(30) $ ((!(!\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[29]~59\) # (\QENC1|sQEMCOUNTER[25]~51\ & \QENC1|sQEMCOUNTER[29]~59COUT1_136\)))), GLOBAL(\iCLK~combout\), VCC, , 
-- \QENC1|oPulse~0\, \QENC1|sBUFFER\(30), \QENC1|sWrCounter~regout\, , )
-- \QENC1|sQEMCOUNTER[30]~61\ = CARRY((\QENC1|sQEMDir~regout\ & ((\QENC1|sQEMCOUNTER\(30)) # (!\QENC1|sQEMCOUNTER[29]~59COUT1_136\))) # (!\QENC1|sQEMDir~regout\ & (\QENC1|sQEMCOUNTER\(30) & !\QENC1|sQEMCOUNTER[29]~59COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMDir~regout\,
	datab => \QENC1|sQEMCOUNTER\(30),
	datac => \QENC1|sBUFFER\(30),
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[25]~51\,
	cin0 => \QENC1|sQEMCOUNTER[29]~59\,
	cin1 => \QENC1|sQEMCOUNTER[29]~59COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(30),
	cout => \QENC1|sQEMCOUNTER[30]~61\);

-- Location: LC_X7_Y4_N5
\QENC1|sQEMCOUNTER[31]\ : maxv_lcell
-- Equation(s):
-- \QENC1|sQEMCOUNTER\(31) = DFFEAS(\QENC1|sQEMCOUNTER\(31) $ (((\QENC1|sQEMCOUNTER[30]~61\ $ (\QENC1|sQEMDir~regout\)))), GLOBAL(\iCLK~combout\), VCC, , \QENC1|oPulse~0\, \QENC1|sBUFFER\(31), \QENC1|sWrCounter~regout\, , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \QENC1|sQEMCOUNTER\(31),
	datac => \QENC1|sBUFFER\(31),
	datad => \QENC1|sQEMDir~regout\,
	aclr => GND,
	aload => \QENC1|sWrCounter~regout\,
	ena => \QENC1|oPulse~0\,
	cin => \QENC1|sQEMCOUNTER[30]~61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \QENC1|sQEMCOUNTER\(31));

-- Location: LC_X7_Y7_N2
\MOD_IOSPACE|sQEMBUFFER1[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(15) = DFFEAS(GND, !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, \QENC1|sQEMCOUNTER\(31), , , VCC)

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
	clk => \ALT_INV_iRD~combout\,
	datac => \QENC1|sQEMCOUNTER\(31),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(15));

-- Location: LC_X7_Y7_N1
\MOD_PWM1|sDUTY[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~2\ = (\MOD_SRAMIO|IO_ADDR\(4) & (((\MOD_IOSPACE|sQEMBUFFER1\(15))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((D1_sDUTY[15]))))
-- \MOD_PWM1|sDUTY\(15) = DFFEAS(\MOD_IOSPACE|Mux19~2\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	datad => \MOD_IOSPACE|sQEMBUFFER1\(15),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~2\,
	regout => \MOD_PWM1|sDUTY\(15));

-- Location: LC_X7_Y7_N0
\MOD_IOSPACE|sQEMBUFFER1[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(12) = DFFEAS(GND, !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, \QENC1|sQEMCOUNTER\(28), , , VCC)

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
	clk => \ALT_INV_iRD~combout\,
	datac => \QENC1|sQEMCOUNTER\(28),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(12));

-- Location: LC_X10_Y9_N7
\MOD_IOSPACE|oData[13]~35\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[13]~35_combout\ = ((\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_SRAMIO|IO_ADDR\(6)))))

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
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_SRAMIO|IO_ADDR\(4),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[13]~35_combout\);

-- Location: LC_X11_Y9_N4
\MOD_IOSPACE|oData[13]~34\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[13]~34_combout\ = ((\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(5)))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[13]~34_combout\);

-- Location: LC_X11_Y7_N9
\MOD_IOSPACE|oData[13]~36\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[13]~36_combout\ = (!\MOD_SRAMIO|IO_ADDR\(1) & (((!\MOD_SRAMIO|IO_ADDR\(2) & \MOD_IOSPACE|oData[13]~34_combout\)) # (!\MOD_IOSPACE|oData[13]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_SRAMIO|IO_ADDR\(2),
	datac => \MOD_IOSPACE|oData[13]~35_combout\,
	datad => \MOD_IOSPACE|oData[13]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[13]~36_combout\);

-- Location: LC_X11_Y4_N7
\SYNCMOD|sSYNCONFIG[28]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~3\ = (\MOD_IOSPACE|oData[13]~33_combout\ & ((\MOD_IOSPACE|Mux22~2\ & ((L1_sSYNCONFIG[28]))) # (!\MOD_IOSPACE|Mux22~2\ & (\SYNCMOD|sSYNCONFIG\(12))))) # (!\MOD_IOSPACE|oData[13]~33_combout\ & (((\MOD_IOSPACE|Mux22~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(12),
	datab => \MOD_IOSPACE|oData[13]~33_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	datad => \MOD_IOSPACE|Mux22~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~3\,
	regout => \SYNCMOD|sSYNCONFIG\(28));

-- Location: LC_X12_Y7_N4
\MOD_IOSPACE|Mux22~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~11_combout\ = (\MOD_IOSPACE|Mux22~7\ & ((\MOD_SRAMIO|IO_ADDR\(2)) # ((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_IOSPACE|Mux22~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~11_combout\);

-- Location: LC_X11_Y7_N5
\MOD_IOSPACE|Mux22~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~8_combout\ = (\MOD_IOSPACE|oData[13]~35_combout\ & (\MOD_IOSPACE|oData[13]~36_combout\ & (\MOD_IOSPACE|Mux22~3\))) # (!\MOD_IOSPACE|oData[13]~35_combout\ & (((\MOD_IOSPACE|Mux22~11_combout\)) # (!\MOD_IOSPACE|oData[13]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[13]~35_combout\,
	datab => \MOD_IOSPACE|oData[13]~36_combout\,
	datac => \MOD_IOSPACE|Mux22~3\,
	datad => \MOD_IOSPACE|Mux22~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~8_combout\);

-- Location: LC_X11_Y7_N6
\MOD_PWM1|sDUTY[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux22~9\ = (\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux22~8_combout\ & ((D1_sDUTY[12]))) # (!\MOD_IOSPACE|Mux22~8_combout\ & (\MOD_IOSPACE|sQEMBUFFER1\(12))))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (((\MOD_IOSPACE|Mux22~8_combout\))))
-- \MOD_PWM1|sDUTY\(12) = DFFEAS(\MOD_IOSPACE|Mux22~9\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_IOSPACE|sQEMBUFFER1\(12),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_SRAMIO|IO_DAT_WR\(12),
	datad => \MOD_IOSPACE|Mux22~8_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux22~9\,
	regout => \MOD_PWM1|sDUTY\(12));

-- Location: LC_X2_Y9_N2
\MOD_PWM1|LessThan1~77\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~77_cout0\ = CARRY((!\MOD_PWM1|sDUTY\(0) & (\MOD_PWM1|vCounter~15_combout\)))
-- \MOD_PWM1|LessThan1~77COUT1_94\ = CARRY((!\MOD_PWM1|sDUTY\(0) & (\MOD_PWM1|vCounter~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(0),
	datab => \MOD_PWM1|vCounter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~75\,
	cout0 => \MOD_PWM1|LessThan1~77_cout0\,
	cout1 => \MOD_PWM1|LessThan1~77COUT1_94\);

-- Location: LC_X2_Y9_N3
\MOD_PWM1|LessThan1~72\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~72_cout0\ = CARRY((\MOD_PWM1|vCounter~12_combout\ & (\MOD_PWM1|sDUTY\(1) & !\MOD_PWM1|LessThan1~77_cout0\)) # (!\MOD_PWM1|vCounter~12_combout\ & ((\MOD_PWM1|sDUTY\(1)) # (!\MOD_PWM1|LessThan1~77_cout0\))))
-- \MOD_PWM1|LessThan1~72COUT1_96\ = CARRY((\MOD_PWM1|vCounter~12_combout\ & (\MOD_PWM1|sDUTY\(1) & !\MOD_PWM1|LessThan1~77COUT1_94\)) # (!\MOD_PWM1|vCounter~12_combout\ & ((\MOD_PWM1|sDUTY\(1)) # (!\MOD_PWM1|LessThan1~77COUT1_94\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|vCounter~12_combout\,
	datab => \MOD_PWM1|sDUTY\(1),
	cin0 => \MOD_PWM1|LessThan1~77_cout0\,
	cin1 => \MOD_PWM1|LessThan1~77COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~70\,
	cout0 => \MOD_PWM1|LessThan1~72_cout0\,
	cout1 => \MOD_PWM1|LessThan1~72COUT1_96\);

-- Location: LC_X2_Y9_N4
\MOD_PWM1|LessThan1~67\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~67_cout\ = CARRY((\MOD_PWM1|vCounter~13_combout\ & ((!\MOD_PWM1|LessThan1~72COUT1_96\) # (!\MOD_PWM1|sDUTY\(2)))) # (!\MOD_PWM1|vCounter~13_combout\ & (!\MOD_PWM1|sDUTY\(2) & !\MOD_PWM1|LessThan1~72COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|vCounter~13_combout\,
	datab => \MOD_PWM1|sDUTY\(2),
	cin0 => \MOD_PWM1|LessThan1~72_cout0\,
	cin1 => \MOD_PWM1|LessThan1~72COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~65\,
	cout => \MOD_PWM1|LessThan1~67_cout\);

-- Location: LC_X2_Y9_N5
\MOD_PWM1|LessThan1~62\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~62_cout0\ = CARRY((\MOD_PWM1|vCounter~14_combout\ & (\MOD_PWM1|sDUTY\(3) & !\MOD_PWM1|LessThan1~67_cout\)) # (!\MOD_PWM1|vCounter~14_combout\ & ((\MOD_PWM1|sDUTY\(3)) # (!\MOD_PWM1|LessThan1~67_cout\))))
-- \MOD_PWM1|LessThan1~62COUT1_98\ = CARRY((\MOD_PWM1|vCounter~14_combout\ & (\MOD_PWM1|sDUTY\(3) & !\MOD_PWM1|LessThan1~67_cout\)) # (!\MOD_PWM1|vCounter~14_combout\ & ((\MOD_PWM1|sDUTY\(3)) # (!\MOD_PWM1|LessThan1~67_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|vCounter~14_combout\,
	datab => \MOD_PWM1|sDUTY\(3),
	cin => \MOD_PWM1|LessThan1~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~60\,
	cout0 => \MOD_PWM1|LessThan1~62_cout0\,
	cout1 => \MOD_PWM1|LessThan1~62COUT1_98\);

-- Location: LC_X2_Y9_N6
\MOD_PWM1|LessThan1~57\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~57_cout0\ = CARRY((\MOD_PWM1|sDUTY\(4) & (\MOD_PWM1|vCounter~8_combout\ & !\MOD_PWM1|LessThan1~62_cout0\)) # (!\MOD_PWM1|sDUTY\(4) & ((\MOD_PWM1|vCounter~8_combout\) # (!\MOD_PWM1|LessThan1~62_cout0\))))
-- \MOD_PWM1|LessThan1~57COUT1_100\ = CARRY((\MOD_PWM1|sDUTY\(4) & (\MOD_PWM1|vCounter~8_combout\ & !\MOD_PWM1|LessThan1~62COUT1_98\)) # (!\MOD_PWM1|sDUTY\(4) & ((\MOD_PWM1|vCounter~8_combout\) # (!\MOD_PWM1|LessThan1~62COUT1_98\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(4),
	datab => \MOD_PWM1|vCounter~8_combout\,
	cin => \MOD_PWM1|LessThan1~67_cout\,
	cin0 => \MOD_PWM1|LessThan1~62_cout0\,
	cin1 => \MOD_PWM1|LessThan1~62COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~55\,
	cout0 => \MOD_PWM1|LessThan1~57_cout0\,
	cout1 => \MOD_PWM1|LessThan1~57COUT1_100\);

-- Location: LC_X2_Y9_N7
\MOD_PWM1|LessThan1~52\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~52_cout0\ = CARRY((\MOD_PWM1|sDUTY\(5) & ((!\MOD_PWM1|LessThan1~57_cout0\) # (!\MOD_PWM1|vCounter~9_combout\))) # (!\MOD_PWM1|sDUTY\(5) & (!\MOD_PWM1|vCounter~9_combout\ & !\MOD_PWM1|LessThan1~57_cout0\)))
-- \MOD_PWM1|LessThan1~52COUT1_102\ = CARRY((\MOD_PWM1|sDUTY\(5) & ((!\MOD_PWM1|LessThan1~57COUT1_100\) # (!\MOD_PWM1|vCounter~9_combout\))) # (!\MOD_PWM1|sDUTY\(5) & (!\MOD_PWM1|vCounter~9_combout\ & !\MOD_PWM1|LessThan1~57COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(5),
	datab => \MOD_PWM1|vCounter~9_combout\,
	cin => \MOD_PWM1|LessThan1~67_cout\,
	cin0 => \MOD_PWM1|LessThan1~57_cout0\,
	cin1 => \MOD_PWM1|LessThan1~57COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~50\,
	cout0 => \MOD_PWM1|LessThan1~52_cout0\,
	cout1 => \MOD_PWM1|LessThan1~52COUT1_102\);

-- Location: LC_X2_Y9_N8
\MOD_PWM1|LessThan1~47\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~47_cout0\ = CARRY((\MOD_PWM1|sDUTY\(6) & (\MOD_PWM1|vCounter~10_combout\ & !\MOD_PWM1|LessThan1~52_cout0\)) # (!\MOD_PWM1|sDUTY\(6) & ((\MOD_PWM1|vCounter~10_combout\) # (!\MOD_PWM1|LessThan1~52_cout0\))))
-- \MOD_PWM1|LessThan1~47COUT1_104\ = CARRY((\MOD_PWM1|sDUTY\(6) & (\MOD_PWM1|vCounter~10_combout\ & !\MOD_PWM1|LessThan1~52COUT1_102\)) # (!\MOD_PWM1|sDUTY\(6) & ((\MOD_PWM1|vCounter~10_combout\) # (!\MOD_PWM1|LessThan1~52COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(6),
	datab => \MOD_PWM1|vCounter~10_combout\,
	cin => \MOD_PWM1|LessThan1~67_cout\,
	cin0 => \MOD_PWM1|LessThan1~52_cout0\,
	cin1 => \MOD_PWM1|LessThan1~52COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~45\,
	cout0 => \MOD_PWM1|LessThan1~47_cout0\,
	cout1 => \MOD_PWM1|LessThan1~47COUT1_104\);

-- Location: LC_X2_Y9_N9
\MOD_PWM1|LessThan1~42\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~42_cout\ = CARRY((\MOD_PWM1|sDUTY\(7) & ((!\MOD_PWM1|LessThan1~47COUT1_104\) # (!\MOD_PWM1|vCounter~11_combout\))) # (!\MOD_PWM1|sDUTY\(7) & (!\MOD_PWM1|vCounter~11_combout\ & !\MOD_PWM1|LessThan1~47COUT1_104\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(7),
	datab => \MOD_PWM1|vCounter~11_combout\,
	cin => \MOD_PWM1|LessThan1~67_cout\,
	cin0 => \MOD_PWM1|LessThan1~47_cout0\,
	cin1 => \MOD_PWM1|LessThan1~47COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~40\,
	cout => \MOD_PWM1|LessThan1~42_cout\);

-- Location: LC_X7_Y7_N4
\MOD_IOSPACE|sQEMBUFFER1[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(11) = DFFEAS(GND, !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, \QENC1|sQEMCOUNTER\(27), , , VCC)

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
	clk => \ALT_INV_iRD~combout\,
	datac => \QENC1|sQEMCOUNTER\(27),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(11));

-- Location: LC_X11_Y9_N2
\MOD_IOSPACE|Mux23~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~11_combout\ = (\MOD_IOSPACE|Mux23~7\ & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_IOSPACE|Mux23~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~11_combout\);

-- Location: LC_X11_Y9_N3
\MOD_IOSPACE|Mux23~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~8_combout\ = (\MOD_IOSPACE|oData[13]~36_combout\ & ((\MOD_IOSPACE|oData[13]~35_combout\ & (\MOD_IOSPACE|Mux23~3\)) # (!\MOD_IOSPACE|oData[13]~35_combout\ & ((\MOD_IOSPACE|Mux23~11_combout\))))) # (!\MOD_IOSPACE|oData[13]~36_combout\ & 
-- (!\MOD_IOSPACE|oData[13]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b391",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[13]~36_combout\,
	datab => \MOD_IOSPACE|oData[13]~35_combout\,
	datac => \MOD_IOSPACE|Mux23~3\,
	datad => \MOD_IOSPACE|Mux23~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~8_combout\);

-- Location: LC_X11_Y9_N9
\MOD_PWM1|sDUTY[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux23~9\ = (\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux23~8_combout\ & ((D1_sDUTY[11]))) # (!\MOD_IOSPACE|Mux23~8_combout\ & (\MOD_IOSPACE|sQEMBUFFER1\(11))))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (((\MOD_IOSPACE|Mux23~8_combout\))))
-- \MOD_PWM1|sDUTY\(11) = DFFEAS(\MOD_IOSPACE|Mux23~9\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|sQEMBUFFER1\(11),
	datac => \MOD_SRAMIO|IO_DAT_WR\(11),
	datad => \MOD_IOSPACE|Mux23~8_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux23~9\,
	regout => \MOD_PWM1|sDUTY\(11));

-- Location: LC_X7_Y7_N9
\MOD_IOSPACE|sQEMBUFFER1[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(10) = DFFEAS((((\QENC1|sQEMCOUNTER\(26)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_iRD~combout\,
	datad => \QENC1|sQEMCOUNTER\(26),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(10));

-- Location: LC_X7_Y7_N8
\MOD_PWM1|sDUTY[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~4\ = (\MOD_SRAMIO|IO_ADDR\(4) & (((\MOD_IOSPACE|sQEMBUFFER1\(10))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((D1_sDUTY[10]))))
-- \MOD_PWM1|sDUTY\(10) = DFFEAS(\MOD_IOSPACE|Mux24~4\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(10),
	datad => \MOD_IOSPACE|sQEMBUFFER1\(10),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~4\,
	regout => \MOD_PWM1|sDUTY\(10));

-- Location: LC_X7_Y7_N3
\MOD_IOSPACE|sQEMBUFFER1[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(9) = DFFEAS((((\QENC1|sQEMCOUNTER\(25)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_iRD~combout\,
	datad => \QENC1|sQEMCOUNTER\(25),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(9));

-- Location: LC_X11_Y8_N5
\MOD_IOSPACE|oData[8]~37\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~37_combout\ = (!\MOD_SRAMIO|IO_ADDR\(1) & (((!\MOD_SRAMIO|IO_ADDR\(5) & !\MOD_SRAMIO|IO_ADDR\(6))) # (!\MOD_SRAMIO|IO_ADDR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0515",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~37_combout\);

-- Location: LC_X11_Y8_N0
\MOD_IOSPACE|oData[8]~25\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~25_combout\ = (\MOD_SRAMIO|IO_ADDR\(1) & (((\MOD_SRAMIO|IO_ADDR\(4))))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (((\MOD_SRAMIO|IO_ADDR\(2)))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_SRAMIO|IO_ADDR\(2),
	datad => \MOD_SRAMIO|IO_ADDR\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~25_combout\);

-- Location: LC_X10_Y6_N1
\MOD_PWM2|sDUTY[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(9) = DFFEAS((((\MOD_SRAMIO|IO_DAT_WR\(9)))), \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , , , , )

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datad => \MOD_SRAMIO|IO_DAT_WR\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(9));

-- Location: LC_X13_Y6_N0
\MOD_PWM2|sPWMPERIOD[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~0\ = (\MOD_SRAMIO|IO_ADDR\(4) & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\QENC2|sQEMCOUNTER\(9))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (!\MOD_SRAMIO|IO_ADDR\(0) & (D2_sPWMPERIOD[9])))
-- \MOD_PWM2|sPWMPERIOD\(9) = DFFEAS(\MOD_IOSPACE|Mux25~0\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datab => \MOD_SRAMIO|IO_ADDR\(0),
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	datad => \QENC2|sQEMCOUNTER\(9),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~0\,
	regout => \MOD_PWM2|sPWMPERIOD\(9));

-- Location: LC_X10_Y6_N6
\MOD_IOSPACE|sQEMBUFFER2[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~1\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux25~0\ & ((C1_sQEMBUFFER2[9]))) # (!\MOD_IOSPACE|Mux25~0\ & (\MOD_PWM2|sDUTY\(9))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (((\MOD_IOSPACE|Mux25~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_PWM2|sDUTY\(9),
	datac => \QENC2|sQEMCOUNTER\(25),
	datad => \MOD_IOSPACE|Mux25~0\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~1\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(9));

-- Location: LC_X11_Y8_N3
\MOD_IOSPACE|Mux25~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~7_combout\ = (\MOD_IOSPACE|Mux25~6\ & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_SRAMIO|IO_ADDR\(6) & \MOD_SRAMIO|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_IOSPACE|Mux25~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~7_combout\);

-- Location: LC_X11_Y7_N1
\MOD_IOSPACE|Mux25~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~8_combout\ = (\MOD_IOSPACE|oData[8]~37_combout\ & ((\MOD_IOSPACE|oData[8]~25_combout\ & (\MOD_IOSPACE|Mux25~1\)) # (!\MOD_IOSPACE|oData[8]~25_combout\ & ((\MOD_IOSPACE|Mux25~7_combout\))))) # (!\MOD_IOSPACE|oData[8]~37_combout\ & 
-- (!\MOD_IOSPACE|oData[8]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b391",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[8]~37_combout\,
	datab => \MOD_IOSPACE|oData[8]~25_combout\,
	datac => \MOD_IOSPACE|Mux25~1\,
	datad => \MOD_IOSPACE|Mux25~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~8_combout\);

-- Location: LC_X11_Y7_N2
\MOD_PWM1|sDUTY[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux25~9\ = (\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux25~8_combout\ & ((D1_sDUTY[9]))) # (!\MOD_IOSPACE|Mux25~8_combout\ & (\MOD_IOSPACE|sQEMBUFFER1\(9))))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (((\MOD_IOSPACE|Mux25~8_combout\))))
-- \MOD_PWM1|sDUTY\(9) = DFFEAS(\MOD_IOSPACE|Mux25~9\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_IOSPACE|sQEMBUFFER1\(9),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_SRAMIO|IO_DAT_WR\(9),
	datad => \MOD_IOSPACE|Mux25~8_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux25~9\,
	regout => \MOD_PWM1|sDUTY\(9));

-- Location: LC_X5_Y5_N6
\MOD_IOSPACE|sQEMBUFFER1[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(8) = DFFEAS((((\QENC1|sQEMCOUNTER\(24)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_iRD~combout\,
	datad => \QENC1|sQEMCOUNTER\(24),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(8));

-- Location: LC_X9_Y8_N8
\MOD_PWM2|sPWMPERIOD[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~0\ = (\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_SRAMIO|IO_ADDR\(4))) # (!\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_SRAMIO|IO_ADDR\(4) & ((\QENC2|sQEMCOUNTER\(8)))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (D2_sPWMPERIOD[8]))))
-- \MOD_PWM2|sPWMPERIOD\(8) = DFFEAS(\MOD_IOSPACE|Mux26~0\, \MOD_IOSPACE|oWrPWMPERIOD2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	datad => \QENC2|sQEMCOUNTER\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~0\,
	regout => \MOD_PWM2|sPWMPERIOD\(8));

-- Location: LC_X10_Y6_N8
\MOD_PWM2|sDUTY[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sDUTY\(8) = DFFEAS(GND, \MOD_IOSPACE|oWrPWMDUTY2~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

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
	clk => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sDUTY\(8));

-- Location: LC_X10_Y6_N2
\MOD_IOSPACE|sQEMBUFFER2[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~1\ = (\MOD_SRAMIO|IO_ADDR\(0) & ((\MOD_IOSPACE|Mux26~0\ & (C1_sQEMBUFFER2[8])) # (!\MOD_IOSPACE|Mux26~0\ & ((\MOD_PWM2|sDUTY\(8)))))) # (!\MOD_SRAMIO|IO_ADDR\(0) & (\MOD_IOSPACE|Mux26~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_IOSPACE|Mux26~0\,
	datac => \QENC2|sQEMCOUNTER\(24),
	datad => \MOD_PWM2|sDUTY\(8),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~1\,
	regout => \MOD_IOSPACE|sQEMBUFFER2\(8));

-- Location: LC_X11_Y8_N8
\MOD_IOSPACE|Mux26~7\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~7_combout\ = (\MOD_IOSPACE|Mux26~6\ & ((\MOD_SRAMIO|IO_ADDR\(0)) # ((\MOD_SRAMIO|IO_ADDR\(6) & \MOD_SRAMIO|IO_ADDR\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(0),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_IOSPACE|Mux26~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~7_combout\);

-- Location: LC_X11_Y9_N7
\MOD_IOSPACE|Mux26~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~8_combout\ = (\MOD_IOSPACE|oData[8]~25_combout\ & (\MOD_IOSPACE|oData[8]~37_combout\ & (\MOD_IOSPACE|Mux26~1\))) # (!\MOD_IOSPACE|oData[8]~25_combout\ & (((\MOD_IOSPACE|Mux26~7_combout\)) # (!\MOD_IOSPACE|oData[8]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[8]~25_combout\,
	datab => \MOD_IOSPACE|oData[8]~37_combout\,
	datac => \MOD_IOSPACE|Mux26~1\,
	datad => \MOD_IOSPACE|Mux26~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~8_combout\);

-- Location: LC_X11_Y9_N8
\MOD_PWM1|sDUTY[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux26~9\ = (\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux26~8_combout\ & ((D1_sDUTY[8]))) # (!\MOD_IOSPACE|Mux26~8_combout\ & (\MOD_IOSPACE|sQEMBUFFER1\(8))))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (((\MOD_IOSPACE|Mux26~8_combout\))))
-- \MOD_PWM1|sDUTY\(8) = DFFEAS(\MOD_IOSPACE|Mux26~9\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|sQEMBUFFER1\(8),
	datac => \MOD_SRAMIO|IO_DAT_WR\(8),
	datad => \MOD_IOSPACE|Mux26~8_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux26~9\,
	regout => \MOD_PWM1|sDUTY\(8));

-- Location: LC_X3_Y9_N0
\MOD_PWM1|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~37_cout0\ = CARRY((\MOD_PWM1|sDUTY\(8) & (\MOD_PWM1|vCounter~4_combout\ & !\MOD_PWM1|LessThan1~42_cout\)) # (!\MOD_PWM1|sDUTY\(8) & ((\MOD_PWM1|vCounter~4_combout\) # (!\MOD_PWM1|LessThan1~42_cout\))))
-- \MOD_PWM1|LessThan1~37COUT1_106\ = CARRY((\MOD_PWM1|sDUTY\(8) & (\MOD_PWM1|vCounter~4_combout\ & !\MOD_PWM1|LessThan1~42_cout\)) # (!\MOD_PWM1|sDUTY\(8) & ((\MOD_PWM1|vCounter~4_combout\) # (!\MOD_PWM1|LessThan1~42_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(8),
	datab => \MOD_PWM1|vCounter~4_combout\,
	cin => \MOD_PWM1|LessThan1~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~35\,
	cout0 => \MOD_PWM1|LessThan1~37_cout0\,
	cout1 => \MOD_PWM1|LessThan1~37COUT1_106\);

-- Location: LC_X3_Y9_N1
\MOD_PWM1|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~32_cout0\ = CARRY((\MOD_PWM1|vCounter~5_combout\ & (\MOD_PWM1|sDUTY\(9) & !\MOD_PWM1|LessThan1~37_cout0\)) # (!\MOD_PWM1|vCounter~5_combout\ & ((\MOD_PWM1|sDUTY\(9)) # (!\MOD_PWM1|LessThan1~37_cout0\))))
-- \MOD_PWM1|LessThan1~32COUT1_108\ = CARRY((\MOD_PWM1|vCounter~5_combout\ & (\MOD_PWM1|sDUTY\(9) & !\MOD_PWM1|LessThan1~37COUT1_106\)) # (!\MOD_PWM1|vCounter~5_combout\ & ((\MOD_PWM1|sDUTY\(9)) # (!\MOD_PWM1|LessThan1~37COUT1_106\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|vCounter~5_combout\,
	datab => \MOD_PWM1|sDUTY\(9),
	cin => \MOD_PWM1|LessThan1~42_cout\,
	cin0 => \MOD_PWM1|LessThan1~37_cout0\,
	cin1 => \MOD_PWM1|LessThan1~37COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~30\,
	cout0 => \MOD_PWM1|LessThan1~32_cout0\,
	cout1 => \MOD_PWM1|LessThan1~32COUT1_108\);

-- Location: LC_X3_Y9_N2
\MOD_PWM1|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~27_cout0\ = CARRY((\MOD_PWM1|vCounter~6_combout\ & ((!\MOD_PWM1|LessThan1~32_cout0\) # (!\MOD_PWM1|sDUTY\(10)))) # (!\MOD_PWM1|vCounter~6_combout\ & (!\MOD_PWM1|sDUTY\(10) & !\MOD_PWM1|LessThan1~32_cout0\)))
-- \MOD_PWM1|LessThan1~27COUT1_110\ = CARRY((\MOD_PWM1|vCounter~6_combout\ & ((!\MOD_PWM1|LessThan1~32COUT1_108\) # (!\MOD_PWM1|sDUTY\(10)))) # (!\MOD_PWM1|vCounter~6_combout\ & (!\MOD_PWM1|sDUTY\(10) & !\MOD_PWM1|LessThan1~32COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|vCounter~6_combout\,
	datab => \MOD_PWM1|sDUTY\(10),
	cin => \MOD_PWM1|LessThan1~42_cout\,
	cin0 => \MOD_PWM1|LessThan1~32_cout0\,
	cin1 => \MOD_PWM1|LessThan1~32COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~25\,
	cout0 => \MOD_PWM1|LessThan1~27_cout0\,
	cout1 => \MOD_PWM1|LessThan1~27COUT1_110\);

-- Location: LC_X3_Y9_N3
\MOD_PWM1|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~22_cout0\ = CARRY((\MOD_PWM1|vCounter~7_combout\ & (\MOD_PWM1|sDUTY\(11) & !\MOD_PWM1|LessThan1~27_cout0\)) # (!\MOD_PWM1|vCounter~7_combout\ & ((\MOD_PWM1|sDUTY\(11)) # (!\MOD_PWM1|LessThan1~27_cout0\))))
-- \MOD_PWM1|LessThan1~22COUT1_112\ = CARRY((\MOD_PWM1|vCounter~7_combout\ & (\MOD_PWM1|sDUTY\(11) & !\MOD_PWM1|LessThan1~27COUT1_110\)) # (!\MOD_PWM1|vCounter~7_combout\ & ((\MOD_PWM1|sDUTY\(11)) # (!\MOD_PWM1|LessThan1~27COUT1_110\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|vCounter~7_combout\,
	datab => \MOD_PWM1|sDUTY\(11),
	cin => \MOD_PWM1|LessThan1~42_cout\,
	cin0 => \MOD_PWM1|LessThan1~27_cout0\,
	cin1 => \MOD_PWM1|LessThan1~27COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~20\,
	cout0 => \MOD_PWM1|LessThan1~22_cout0\,
	cout1 => \MOD_PWM1|LessThan1~22COUT1_112\);

-- Location: LC_X3_Y9_N4
\MOD_PWM1|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~17_cout\ = CARRY((\MOD_PWM1|vCounter~1_combout\ & ((!\MOD_PWM1|LessThan1~22COUT1_112\) # (!\MOD_PWM1|sDUTY\(12)))) # (!\MOD_PWM1|vCounter~1_combout\ & (!\MOD_PWM1|sDUTY\(12) & !\MOD_PWM1|LessThan1~22COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|vCounter~1_combout\,
	datab => \MOD_PWM1|sDUTY\(12),
	cin => \MOD_PWM1|LessThan1~42_cout\,
	cin0 => \MOD_PWM1|LessThan1~22_cout0\,
	cin1 => \MOD_PWM1|LessThan1~22COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~15\,
	cout => \MOD_PWM1|LessThan1~17_cout\);

-- Location: LC_X5_Y5_N4
\MOD_IOSPACE|sQEMBUFFER1[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(14) = DFFEAS(GND, !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, \QENC1|sQEMCOUNTER\(30), , , VCC)

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
	clk => \ALT_INV_iRD~combout\,
	datac => \QENC1|sQEMCOUNTER\(30),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(14));

-- Location: LC_X8_Y5_N2
\MOD_PWM1|sDUTY[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux20~2\ = (\MOD_SRAMIO|IO_ADDR\(4) & (((\MOD_IOSPACE|sQEMBUFFER1\(14))))) # (!\MOD_SRAMIO|IO_ADDR\(4) & (((D1_sDUTY[14]))))
-- \MOD_PWM1|sDUTY\(14) = DFFEAS(\MOD_IOSPACE|Mux20~2\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(4),
	datac => \MOD_SRAMIO|IO_DAT_WR\(14),
	datad => \MOD_IOSPACE|sQEMBUFFER1\(14),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux20~2\,
	regout => \MOD_PWM1|sDUTY\(14));

-- Location: LC_X7_Y7_N5
\MOD_IOSPACE|sQEMBUFFER1[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|sQEMBUFFER1\(13) = DFFEAS((((\QENC1|sQEMCOUNTER\(29)))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_iRD~combout\,
	datad => \QENC1|sQEMCOUNTER\(29),
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \MOD_IOSPACE|sQEMBUFFER1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|sQEMBUFFER1\(13));

-- Location: LC_X11_Y4_N1
\SYNCMOD|sSYNCONFIG[29]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~3\ = (\MOD_IOSPACE|oData[13]~33_combout\ & ((\MOD_IOSPACE|Mux21~2\ & ((L1_sSYNCONFIG[29]))) # (!\MOD_IOSPACE|Mux21~2\ & (\SYNCMOD|sSYNCONFIG\(13))))) # (!\MOD_IOSPACE|oData[13]~33_combout\ & (((\MOD_IOSPACE|Mux21~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(13),
	datab => \MOD_IOSPACE|oData[13]~33_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	datad => \MOD_IOSPACE|Mux21~2\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~3\,
	regout => \SYNCMOD|sSYNCONFIG\(29));

-- Location: LC_X12_Y7_N7
\MOD_IOSPACE|Mux21~11\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~11_combout\ = (\MOD_IOSPACE|Mux21~7\ & ((\MOD_SRAMIO|IO_ADDR\(2)) # ((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_IOSPACE|Mux21~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~11_combout\);

-- Location: LC_X7_Y7_N6
\MOD_IOSPACE|Mux21~8\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~8_combout\ = (\MOD_IOSPACE|oData[13]~36_combout\ & ((\MOD_IOSPACE|oData[13]~35_combout\ & (\MOD_IOSPACE|Mux21~3\)) # (!\MOD_IOSPACE|oData[13]~35_combout\ & ((\MOD_IOSPACE|Mux21~11_combout\))))) # (!\MOD_IOSPACE|oData[13]~36_combout\ & 
-- (!\MOD_IOSPACE|oData[13]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b391",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|oData[13]~36_combout\,
	datab => \MOD_IOSPACE|oData[13]~35_combout\,
	datac => \MOD_IOSPACE|Mux21~3\,
	datad => \MOD_IOSPACE|Mux21~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~8_combout\);

-- Location: LC_X7_Y7_N7
\MOD_PWM1|sDUTY[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux21~9\ = (\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux21~8_combout\ & ((D1_sDUTY[13]))) # (!\MOD_IOSPACE|Mux21~8_combout\ & (\MOD_IOSPACE|sQEMBUFFER1\(13))))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (((\MOD_IOSPACE|Mux21~8_combout\))))
-- \MOD_PWM1|sDUTY\(13) = DFFEAS(\MOD_IOSPACE|Mux21~9\, \MOD_IOSPACE|oWrPWMDUTY1~regout\, \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	dataa => \MOD_IOSPACE|sQEMBUFFER1\(13),
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_SRAMIO|IO_DAT_WR\(13),
	datad => \MOD_IOSPACE|Mux21~8_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux21~9\,
	regout => \MOD_PWM1|sDUTY\(13));

-- Location: LC_X3_Y9_N5
\MOD_PWM1|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~12_cout0\ = CARRY((\MOD_PWM1|sDUTY\(13) & ((!\MOD_PWM1|LessThan1~17_cout\) # (!\MOD_PWM1|vCounter~2_combout\))) # (!\MOD_PWM1|sDUTY\(13) & (!\MOD_PWM1|vCounter~2_combout\ & !\MOD_PWM1|LessThan1~17_cout\)))
-- \MOD_PWM1|LessThan1~12COUT1_114\ = CARRY((\MOD_PWM1|sDUTY\(13) & ((!\MOD_PWM1|LessThan1~17_cout\) # (!\MOD_PWM1|vCounter~2_combout\))) # (!\MOD_PWM1|sDUTY\(13) & (!\MOD_PWM1|vCounter~2_combout\ & !\MOD_PWM1|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(13),
	datab => \MOD_PWM1|vCounter~2_combout\,
	cin => \MOD_PWM1|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~10\,
	cout0 => \MOD_PWM1|LessThan1~12_cout0\,
	cout1 => \MOD_PWM1|LessThan1~12COUT1_114\);

-- Location: LC_X3_Y9_N6
\MOD_PWM1|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~7_cout0\ = CARRY((\MOD_PWM1|sDUTY\(14) & (\MOD_PWM1|vCounter~3_combout\ & !\MOD_PWM1|LessThan1~12_cout0\)) # (!\MOD_PWM1|sDUTY\(14) & ((\MOD_PWM1|vCounter~3_combout\) # (!\MOD_PWM1|LessThan1~12_cout0\))))
-- \MOD_PWM1|LessThan1~7COUT1_116\ = CARRY((\MOD_PWM1|sDUTY\(14) & (\MOD_PWM1|vCounter~3_combout\ & !\MOD_PWM1|LessThan1~12COUT1_114\)) # (!\MOD_PWM1|sDUTY\(14) & ((\MOD_PWM1|vCounter~3_combout\) # (!\MOD_PWM1|LessThan1~12COUT1_114\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sDUTY\(14),
	datab => \MOD_PWM1|vCounter~3_combout\,
	cin => \MOD_PWM1|LessThan1~17_cout\,
	cin0 => \MOD_PWM1|LessThan1~12_cout0\,
	cin1 => \MOD_PWM1|LessThan1~12COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~5\,
	cout0 => \MOD_PWM1|LessThan1~7_cout0\,
	cout1 => \MOD_PWM1|LessThan1~7COUT1_116\);

-- Location: LC_X3_Y9_N7
\MOD_PWM1|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|LessThan1~0_combout\ = ((\MOD_PWM1|vCounter~0_combout\ & (((!\MOD_PWM1|LessThan1~17_cout\ & \MOD_PWM1|LessThan1~7_cout0\) # (\MOD_PWM1|LessThan1~17_cout\ & \MOD_PWM1|LessThan1~7COUT1_116\)) # (!\MOD_PWM1|sDUTY\(15)))) # 
-- (!\MOD_PWM1|vCounter~0_combout\ & ((!\MOD_PWM1|LessThan1~17_cout\ & \MOD_PWM1|LessThan1~7_cout0\) # (\MOD_PWM1|LessThan1~17_cout\ & \MOD_PWM1|LessThan1~7COUT1_116\) & !\MOD_PWM1|sDUTY\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM1|vCounter~0_combout\,
	datad => \MOD_PWM1|sDUTY\(15),
	cin => \MOD_PWM1|LessThan1~17_cout\,
	cin0 => \MOD_PWM1|LessThan1~7_cout0\,
	cin1 => \MOD_PWM1|LessThan1~7COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|LessThan1~0_combout\);

-- Location: LC_X4_Y7_N1
\MOD_PWM1|Selector21~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector21~4_combout\ = (\MOD_PWM1|sPWMState.LO~regout\ & ((\MOD_IOSPACE|oWrPWMDUTY1~regout\) # ((\MOD_IOSPACE|oWrPWMPERIOD1~regout\) # (!\MOD_PWM1|sPWMCONFIG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sPWMState.LO~regout\,
	datab => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datac => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	datad => \MOD_PWM1|sPWMCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector21~4_combout\);

-- Location: LC_X4_Y9_N7
\MOD_PWM1|Selector19~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector19~1_combout\ = ((\MOD_PWM1|Selector21~3_combout\ & ((!\MOD_PWM1|sPWMState.HI~regout\))) # (!\MOD_PWM1|Selector21~3_combout\ & (\MOD_PWM1|sPWMState.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sPWMState.IDLE~regout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datad => \MOD_PWM1|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector19~1_combout\);

-- Location: LC_X4_Y9_N8
\MOD_PWM1|sPWMState.IDLE\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sPWMState.IDLE~regout\ = DFFEAS((\MOD_PWM1|Selector21~4_combout\ & (((\MOD_PWM1|sPWMCONFIG\(0))))) # (!\MOD_PWM1|Selector21~4_combout\ & ((\MOD_PWM1|Selector19~1_combout\) # ((\MOD_PWM1|Selector21~3_combout\ & \MOD_PWM1|sPWMCONFIG\(0))))), 
-- GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|Selector21~3_combout\,
	datab => \MOD_PWM1|sPWMCONFIG\(0),
	datac => \MOD_PWM1|Selector21~4_combout\,
	datad => \MOD_PWM1|Selector19~1_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sPWMState.IDLE~regout\);

-- Location: LC_X4_Y9_N3
\MOD_PWM1|Selector21~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector21~1_combout\ = (\MOD_PWM1|sPWMState.RESET~regout\) # ((!\MOD_PWM1|sPWMState.IDLE~regout\ & (!\MOD_PWM1|sPWMState.LO~regout\ & \MOD_PWM1|sPWMCONFIG\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sPWMState.IDLE~regout\,
	datab => \MOD_PWM1|sPWMState.LO~regout\,
	datac => \MOD_PWM1|sPWMState.RESET~regout\,
	datad => \MOD_PWM1|sPWMCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector21~1_combout\);

-- Location: LC_X4_Y9_N4
\MOD_PWM1|Selector21~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector21~0_combout\ = ((!\MOD_IOSPACE|oWrPWMDUTY1~regout\ & (!\MOD_IOSPACE|oWrPWMPERIOD1~regout\ & \MOD_PWM1|sPWMCONFIG\(0))))

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
	datab => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datac => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	datad => \MOD_PWM1|sPWMCONFIG\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector21~0_combout\);

-- Location: LC_X4_Y9_N0
\MOD_PWM1|Selector21~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector21~2_combout\ = ((\MOD_PWM1|sPWMState.LO~regout\ & ((\MOD_PWM1|Selector21~0_combout\) # (!\MOD_PWM1|sPWMState.IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sPWMState.IDLE~regout\,
	datac => \MOD_PWM1|Selector21~0_combout\,
	datad => \MOD_PWM1|sPWMState.LO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector21~2_combout\);

-- Location: LC_X4_Y9_N6
\MOD_PWM1|Selector21~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector21~3_combout\ = (\MOD_PWM1|Selector21~1_combout\) # (((!\MOD_PWM1|Equal0~4_combout\ & \MOD_PWM1|Selector21~2_combout\)) # (!\MOD_PWM1|Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "baff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|Selector21~1_combout\,
	datab => \MOD_PWM1|Equal0~4_combout\,
	datac => \MOD_PWM1|Selector21~2_combout\,
	datad => \MOD_PWM1|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector21~3_combout\);

-- Location: LC_X4_Y9_N2
\MOD_PWM1|sPWMState.LO\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sPWMState.LO~regout\ = DFFEAS((\MOD_PWM1|sPWMState.LO~regout\ & (((\MOD_PWM1|Selector21~5_combout\ & !\MOD_PWM1|LessThan1~0_combout\)) # (!\MOD_PWM1|Selector21~3_combout\))) # (!\MOD_PWM1|sPWMState.LO~regout\ & (\MOD_PWM1|Selector21~5_combout\ & 
-- (!\MOD_PWM1|LessThan1~0_combout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.LO~regout\,
	datab => \MOD_PWM1|Selector21~5_combout\,
	datac => \MOD_PWM1|LessThan1~0_combout\,
	datad => \MOD_PWM1|Selector21~3_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sPWMState.LO~regout\);

-- Location: LC_X4_Y9_N5
\MOD_PWM1|Selector19~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector19~0_combout\ = (\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|Selector21~0_combout\ & \MOD_PWM1|LessThan1~0_combout\)))) # (!\MOD_PWM1|sPWMState.HI~regout\ & (((\MOD_PWM1|Selector21~0_combout\)) # (!\MOD_PWM1|sPWMState.LO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f131",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM1|sPWMState.LO~regout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|Selector21~0_combout\,
	datad => \MOD_PWM1|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector19~0_combout\);

-- Location: LC_X4_Y9_N1
\MOD_PWM1|sPWMState.HI\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sPWMState.HI~regout\ = DFFEAS(((\MOD_PWM1|Selector21~3_combout\ & ((\MOD_PWM1|Selector19~0_combout\))) # (!\MOD_PWM1|Selector21~3_combout\ & (\MOD_PWM1|sPWMState.HI~regout\))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|Selector19~0_combout\,
	datad => \MOD_PWM1|Selector21~3_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sPWMState.HI~regout\);

-- Location: LC_X5_Y6_N8
\MOD_PWM1|Selector22~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector22~0_combout\ = (((!\MOD_IOSPACE|oWrPWMDUTY1~regout\ & !\MOD_IOSPACE|oWrPWMPERIOD1~regout\)))

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
	datac => \MOD_IOSPACE|oWrPWMDUTY1~regout\,
	datad => \MOD_IOSPACE|oWrPWMPERIOD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector22~0_combout\);

-- Location: LC_X4_Y7_N8
\MOD_PWM1|sPWMState.RESET\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sPWMState.RESET~regout\ = DFFEAS((\MOD_PWM1|sPWMCONFIG\(0) & (!\MOD_PWM1|Selector22~0_combout\ & ((\MOD_PWM1|sPWMState.HI~regout\) # (\MOD_PWM1|sPWMState.LO~regout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMCONFIG\(0),
	datab => \MOD_PWM1|sPWMState.HI~regout\,
	datac => \MOD_PWM1|sPWMState.LO~regout\,
	datad => \MOD_PWM1|Selector22~0_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sPWMState.RESET~regout\);

-- Location: LC_X4_Y7_N9
\MOD_PWM1|sOPState.HI\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sOPState.HI~regout\ = DFFEAS(((\MOD_PWM1|sPWMState.HI~regout\) # ((\MOD_PWM1|sPWMState.RESET~regout\ & \MOD_PWM1|sOPState.HI~regout\))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM1|sPWMState.RESET~regout\,
	datac => \MOD_PWM1|sPWMState.HI~regout\,
	datad => \MOD_PWM1|sOPState.HI~regout\,
	aclr => GND,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sOPState.HI~regout\);

-- Location: LC_X4_Y7_N0
\MOD_PWM1|sOPState.IDLE\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|sOPState.IDLE~regout\ = DFFEAS(((\MOD_PWM1|sPWMState.IDLE~regout\ & ((\MOD_PWM1|sOPState.IDLE~regout\) # (!\MOD_PWM1|sPWMState.RESET~regout\)))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_PWM1|sOPState.IDLE~regout\,
	datac => \MOD_PWM1|sPWMState.IDLE~regout\,
	datad => \MOD_PWM1|sPWMState.RESET~regout\,
	aclr => GND,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM1|sOPState.IDLE~regout\);

-- Location: LC_X8_Y7_N8
\MOD_PWM1|Selector24~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector24~0_combout\ = ((\MOD_PWM1|sOPState.HI~regout\) # ((\MOD_PWM1|sPWMCONFIG\(1) & !\MOD_PWM1|sOPState.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM1|sPWMCONFIG\(1),
	datac => \MOD_PWM1|sOPState.HI~regout\,
	datad => \MOD_PWM1|sOPState.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector24~0_combout\);

-- Location: LC_X8_Y7_N5
\MOD_PWM1|Selector23~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM1|Selector23~0_combout\ = (((\MOD_PWM1|sOPState.IDLE~regout\) # (!\MOD_PWM1|sPWMCONFIG\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \MOD_PWM1|sPWMCONFIG\(2),
	datad => \MOD_PWM1|sOPState.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM1|Selector23~0_combout\);

-- Location: LC_X13_Y2_N2
\MOD_PWM2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~0_combout\ = ((!\MOD_PWM2|PWM_G:vCounter[0]~regout\))
-- \MOD_PWM2|Add0~2\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[0]~regout\)))
-- \MOD_PWM2|Add0~2COUT1_94\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[0]~regout\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~0_combout\,
	cout0 => \MOD_PWM2|Add0~2\,
	cout1 => \MOD_PWM2|Add0~2COUT1_94\);

-- Location: LC_X13_Y3_N5
\MOD_PWM2|vCounter~15\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~15_combout\ = ((\MOD_PWM2|LessThan0~4_combout\ & (\MOD_PWM2|Add0~0_combout\)) # (!\MOD_PWM2|LessThan0~4_combout\ & ((\MOD_PWM2|PWM_G:vCounter[0]~regout\))))

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
	datab => \MOD_PWM2|Add0~0_combout\,
	datac => \MOD_PWM2|PWM_G:vCounter[0]~regout\,
	datad => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~15_combout\);

-- Location: LC_X12_Y3_N8
\MOD_PWM2|PWM_G:vCounter[7]~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[7]~0_combout\ = (((\MOD_PWM2|sPWMState.LO~regout\ & \MOD_PWM2|Equal0~4_combout\)))

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
	datac => \MOD_PWM2|sPWMState.LO~regout\,
	datad => \MOD_PWM2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\);

-- Location: LC_X13_Y2_N0
\MOD_PWM2|PWM_G:vCounter[0]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[0]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~15_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(0))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~0_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|vCounter~15_combout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datac => \MOD_PWM2|Add0~0_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(0),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[0]~regout\);

-- Location: LC_X13_Y2_N3
\MOD_PWM2|Add0~5\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~5_combout\ = (\MOD_PWM2|PWM_G:vCounter[1]~regout\ $ ((!\MOD_PWM2|Add0~2\)))
-- \MOD_PWM2|Add0~7\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[1]~regout\ & !\MOD_PWM2|Add0~2\)))
-- \MOD_PWM2|Add0~7COUT1_96\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[1]~regout\ & !\MOD_PWM2|Add0~2COUT1_94\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[1]~regout\,
	cin0 => \MOD_PWM2|Add0~2\,
	cin1 => \MOD_PWM2|Add0~2COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~5_combout\,
	cout0 => \MOD_PWM2|Add0~7\,
	cout1 => \MOD_PWM2|Add0~7COUT1_96\);

-- Location: LC_X13_Y2_N4
\MOD_PWM2|Add0~10\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~10_combout\ = (\MOD_PWM2|PWM_G:vCounter[2]~regout\ $ ((\MOD_PWM2|Add0~7\)))
-- \MOD_PWM2|Add0~12\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[2]~regout\) # (!\MOD_PWM2|Add0~7COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM2|PWM_G:vCounter[2]~regout\,
	cin0 => \MOD_PWM2|Add0~7\,
	cin1 => \MOD_PWM2|Add0~7COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~10_combout\,
	cout => \MOD_PWM2|Add0~12\);

-- Location: LC_X12_Y2_N4
\MOD_PWM2|vCounter~13\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~13_combout\ = ((\MOD_PWM2|Add0~10_combout\ & (\MOD_PWM2|LessThan0~4_combout\)))

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
	datab => \MOD_PWM2|Add0~10_combout\,
	datac => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~13_combout\);

-- Location: LC_X13_Y2_N1
\MOD_PWM2|PWM_G:vCounter[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[2]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~13_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(2))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~10_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~13_combout\,
	datac => \MOD_PWM2|Add0~10_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(2),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[2]~regout\);

-- Location: LC_X13_Y2_N5
\MOD_PWM2|Add0~15\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~15_combout\ = \MOD_PWM2|PWM_G:vCounter[3]~regout\ $ ((((!\MOD_PWM2|Add0~12\))))
-- \MOD_PWM2|Add0~17\ = CARRY((!\MOD_PWM2|PWM_G:vCounter[3]~regout\ & ((!\MOD_PWM2|Add0~12\))))
-- \MOD_PWM2|Add0~17COUT1_98\ = CARRY((!\MOD_PWM2|PWM_G:vCounter[3]~regout\ & ((!\MOD_PWM2|Add0~12\))))

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
	dataa => \MOD_PWM2|PWM_G:vCounter[3]~regout\,
	cin => \MOD_PWM2|Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~15_combout\,
	cout0 => \MOD_PWM2|Add0~17\,
	cout1 => \MOD_PWM2|Add0~17COUT1_98\);

-- Location: LC_X13_Y5_N1
\MOD_PWM2|vCounter~14\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~14_combout\ = ((\MOD_PWM2|LessThan0~4_combout\ & ((\MOD_PWM2|Add0~15_combout\))))

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
	datab => \MOD_PWM2|LessThan0~4_combout\,
	datad => \MOD_PWM2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~14_combout\);

-- Location: LC_X12_Y2_N8
\MOD_PWM2|PWM_G:vCounter[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[3]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~14_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(3))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~15_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|vCounter~14_combout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datac => \MOD_PWM2|Add0~15_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(3),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[3]~regout\);

-- Location: LC_X13_Y2_N6
\MOD_PWM2|Add0~20\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~20_combout\ = (\MOD_PWM2|PWM_G:vCounter[4]~regout\ $ (((!\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~17\) # (\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~17COUT1_98\))))
-- \MOD_PWM2|Add0~22\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[4]~regout\) # (!\MOD_PWM2|Add0~17\)))
-- \MOD_PWM2|Add0~22COUT1_100\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[4]~regout\) # (!\MOD_PWM2|Add0~17COUT1_98\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[4]~regout\,
	cin => \MOD_PWM2|Add0~12\,
	cin0 => \MOD_PWM2|Add0~17\,
	cin1 => \MOD_PWM2|Add0~17COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~20_combout\,
	cout0 => \MOD_PWM2|Add0~22\,
	cout1 => \MOD_PWM2|Add0~22COUT1_100\);

-- Location: LC_X12_Y5_N9
\MOD_PWM2|vCounter~8\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~8_combout\ = (((\MOD_PWM2|LessThan0~4_combout\ & \MOD_PWM2|Add0~20_combout\)))

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
	datac => \MOD_PWM2|LessThan0~4_combout\,
	datad => \MOD_PWM2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~8_combout\);

-- Location: LC_X12_Y3_N0
\MOD_PWM2|PWM_G:vCounter[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[4]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~8_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(4))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~20_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~8_combout\,
	datac => \MOD_PWM2|Add0~20_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(4),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[4]~regout\);

-- Location: LC_X13_Y2_N7
\MOD_PWM2|Add0~25\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~25_combout\ = \MOD_PWM2|PWM_G:vCounter[5]~regout\ $ ((((!(!\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~22\) # (\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~22COUT1_100\)))))
-- \MOD_PWM2|Add0~27\ = CARRY((!\MOD_PWM2|PWM_G:vCounter[5]~regout\ & ((!\MOD_PWM2|Add0~22\))))
-- \MOD_PWM2|Add0~27COUT1_102\ = CARRY((!\MOD_PWM2|PWM_G:vCounter[5]~regout\ & ((!\MOD_PWM2|Add0~22COUT1_100\))))

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
	dataa => \MOD_PWM2|PWM_G:vCounter[5]~regout\,
	cin => \MOD_PWM2|Add0~12\,
	cin0 => \MOD_PWM2|Add0~22\,
	cin1 => \MOD_PWM2|Add0~22COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~25_combout\,
	cout0 => \MOD_PWM2|Add0~27\,
	cout1 => \MOD_PWM2|Add0~27COUT1_102\);

-- Location: LC_X13_Y5_N0
\MOD_PWM2|vCounter~9\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~9_combout\ = (((\MOD_PWM2|Add0~25_combout\ & \MOD_PWM2|LessThan0~4_combout\)))

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
	datac => \MOD_PWM2|Add0~25_combout\,
	datad => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~9_combout\);

-- Location: LC_X12_Y3_N2
\MOD_PWM2|PWM_G:vCounter[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[5]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~9_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(5))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~25_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~9_combout\,
	datac => \MOD_PWM2|Add0~25_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(5),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[5]~regout\);

-- Location: LC_X13_Y2_N8
\MOD_PWM2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~30_combout\ = (\MOD_PWM2|PWM_G:vCounter[6]~regout\ $ (((!\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~27\) # (\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~27COUT1_102\))))
-- \MOD_PWM2|Add0~32\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[6]~regout\) # (!\MOD_PWM2|Add0~27\)))
-- \MOD_PWM2|Add0~32COUT1_104\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[6]~regout\) # (!\MOD_PWM2|Add0~27COUT1_102\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[6]~regout\,
	cin => \MOD_PWM2|Add0~12\,
	cin0 => \MOD_PWM2|Add0~27\,
	cin1 => \MOD_PWM2|Add0~27COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~30_combout\,
	cout0 => \MOD_PWM2|Add0~32\,
	cout1 => \MOD_PWM2|Add0~32COUT1_104\);

-- Location: LC_X12_Y2_N1
\MOD_PWM2|vCounter~10\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~10_combout\ = (((\MOD_PWM2|LessThan0~4_combout\ & \MOD_PWM2|Add0~30_combout\)))

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
	datac => \MOD_PWM2|LessThan0~4_combout\,
	datad => \MOD_PWM2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~10_combout\);

-- Location: LC_X12_Y3_N5
\MOD_PWM2|PWM_G:vCounter[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[6]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~10_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(6))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~30_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~10_combout\,
	datac => \MOD_PWM2|Add0~30_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(6),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[6]~regout\);

-- Location: LC_X13_Y2_N9
\MOD_PWM2|Add0~35\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~35_combout\ = (\MOD_PWM2|PWM_G:vCounter[7]~regout\ $ ((!(!\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~32\) # (\MOD_PWM2|Add0~12\ & \MOD_PWM2|Add0~32COUT1_104\))))
-- \MOD_PWM2|Add0~37\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[7]~regout\ & !\MOD_PWM2|Add0~32COUT1_104\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[7]~regout\,
	cin => \MOD_PWM2|Add0~12\,
	cin0 => \MOD_PWM2|Add0~32\,
	cin1 => \MOD_PWM2|Add0~32COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~35_combout\,
	cout => \MOD_PWM2|Add0~37\);

-- Location: LC_X12_Y2_N5
\MOD_PWM2|vCounter~11\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~11_combout\ = (((\MOD_PWM2|LessThan0~4_combout\ & \MOD_PWM2|Add0~35_combout\)))

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
	datac => \MOD_PWM2|LessThan0~4_combout\,
	datad => \MOD_PWM2|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~11_combout\);

-- Location: LC_X12_Y2_N3
\MOD_PWM2|PWM_G:vCounter[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[7]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~11_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(7))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~35_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|vCounter~11_combout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datac => \MOD_PWM2|Add0~35_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(7),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[7]~regout\);

-- Location: LC_X14_Y2_N0
\MOD_PWM2|Add0~40\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~40_combout\ = (\MOD_PWM2|PWM_G:vCounter[8]~regout\ $ ((\MOD_PWM2|Add0~37\)))
-- \MOD_PWM2|Add0~42\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[8]~regout\) # (!\MOD_PWM2|Add0~37\)))
-- \MOD_PWM2|Add0~42COUT1_106\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[8]~regout\) # (!\MOD_PWM2|Add0~37\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[8]~regout\,
	cin => \MOD_PWM2|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~40_combout\,
	cout0 => \MOD_PWM2|Add0~42\,
	cout1 => \MOD_PWM2|Add0~42COUT1_106\);

-- Location: LC_X14_Y5_N8
\MOD_PWM2|vCounter~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~4_combout\ = (((\MOD_PWM2|Add0~40_combout\ & \MOD_PWM2|LessThan0~4_combout\)))

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
	datac => \MOD_PWM2|Add0~40_combout\,
	datad => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~4_combout\);

-- Location: LC_X13_Y3_N0
\MOD_PWM2|PWM_G:vCounter[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[8]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~4_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(8))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~40_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|vCounter~4_combout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datac => \MOD_PWM2|Add0~40_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(8),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[8]~regout\);

-- Location: LC_X14_Y2_N1
\MOD_PWM2|Add0~45\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~45_combout\ = (\MOD_PWM2|PWM_G:vCounter[9]~regout\ $ ((!(!\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~42\) # (\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~42COUT1_106\))))
-- \MOD_PWM2|Add0~47\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[9]~regout\ & !\MOD_PWM2|Add0~42\)))
-- \MOD_PWM2|Add0~47COUT1_108\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[9]~regout\ & !\MOD_PWM2|Add0~42COUT1_106\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[9]~regout\,
	cin => \MOD_PWM2|Add0~37\,
	cin0 => \MOD_PWM2|Add0~42\,
	cin1 => \MOD_PWM2|Add0~42COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~45_combout\,
	cout0 => \MOD_PWM2|Add0~47\,
	cout1 => \MOD_PWM2|Add0~47COUT1_108\);

-- Location: LC_X14_Y2_N8
\MOD_PWM2|vCounter~5\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~5_combout\ = (((\MOD_PWM2|LessThan0~4_combout\ & \MOD_PWM2|Add0~45_combout\)))

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
	datac => \MOD_PWM2|LessThan0~4_combout\,
	datad => \MOD_PWM2|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~5_combout\);

-- Location: LC_X13_Y3_N1
\MOD_PWM2|PWM_G:vCounter[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[9]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~5_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(9))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~45_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|vCounter~5_combout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datac => \MOD_PWM2|Add0~45_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(9),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[9]~regout\);

-- Location: LC_X14_Y2_N2
\MOD_PWM2|Add0~50\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~50_combout\ = \MOD_PWM2|PWM_G:vCounter[10]~regout\ $ (((((!\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~47\) # (\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~47COUT1_108\)))))
-- \MOD_PWM2|Add0~52\ = CARRY((\MOD_PWM2|PWM_G:vCounter[10]~regout\) # ((!\MOD_PWM2|Add0~47\)))
-- \MOD_PWM2|Add0~52COUT1_110\ = CARRY((\MOD_PWM2|PWM_G:vCounter[10]~regout\) # ((!\MOD_PWM2|Add0~47COUT1_108\)))

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
	dataa => \MOD_PWM2|PWM_G:vCounter[10]~regout\,
	cin => \MOD_PWM2|Add0~37\,
	cin0 => \MOD_PWM2|Add0~47\,
	cin1 => \MOD_PWM2|Add0~47COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~50_combout\,
	cout0 => \MOD_PWM2|Add0~52\,
	cout1 => \MOD_PWM2|Add0~52COUT1_110\);

-- Location: LC_X15_Y2_N0
\MOD_PWM2|vCounter~6\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~6_combout\ = (((\MOD_PWM2|LessThan0~4_combout\ & \MOD_PWM2|Add0~50_combout\)))

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
	datac => \MOD_PWM2|LessThan0~4_combout\,
	datad => \MOD_PWM2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~6_combout\);

-- Location: LC_X13_Y3_N3
\MOD_PWM2|PWM_G:vCounter[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[10]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~6_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(10))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~50_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|vCounter~6_combout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datac => \MOD_PWM2|Add0~50_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(10),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[10]~regout\);

-- Location: LC_X14_Y2_N3
\MOD_PWM2|Add0~55\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~55_combout\ = (\MOD_PWM2|PWM_G:vCounter[11]~regout\ $ ((!(!\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~52\) # (\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~52COUT1_110\))))
-- \MOD_PWM2|Add0~57\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[11]~regout\ & !\MOD_PWM2|Add0~52\)))
-- \MOD_PWM2|Add0~57COUT1_112\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[11]~regout\ & !\MOD_PWM2|Add0~52COUT1_110\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[11]~regout\,
	cin => \MOD_PWM2|Add0~37\,
	cin0 => \MOD_PWM2|Add0~52\,
	cin1 => \MOD_PWM2|Add0~52COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~55_combout\,
	cout0 => \MOD_PWM2|Add0~57\,
	cout1 => \MOD_PWM2|Add0~57COUT1_112\);

-- Location: LC_X14_Y5_N9
\MOD_PWM2|vCounter~7\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~7_combout\ = (((\MOD_PWM2|Add0~55_combout\ & \MOD_PWM2|LessThan0~4_combout\)))

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
	datac => \MOD_PWM2|Add0~55_combout\,
	datad => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~7_combout\);

-- Location: LC_X13_Y3_N7
\MOD_PWM2|PWM_G:vCounter[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[11]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~7_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(11))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~55_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|vCounter~7_combout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datac => \MOD_PWM2|Add0~55_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(11),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[11]~regout\);

-- Location: LC_X13_Y3_N6
\MOD_PWM2|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan0~1_combout\ = (\MOD_PWM2|PWM_G:vCounter[10]~regout\) # ((\MOD_PWM2|PWM_G:vCounter[8]~regout\) # ((\MOD_PWM2|PWM_G:vCounter[11]~regout\) # (\MOD_PWM2|PWM_G:vCounter[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|PWM_G:vCounter[10]~regout\,
	datab => \MOD_PWM2|PWM_G:vCounter[8]~regout\,
	datac => \MOD_PWM2|PWM_G:vCounter[11]~regout\,
	datad => \MOD_PWM2|PWM_G:vCounter[9]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan0~1_combout\);

-- Location: LC_X12_Y2_N2
\MOD_PWM2|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan0~3_combout\ = ((\MOD_PWM2|PWM_G:vCounter[1]~regout\) # ((\MOD_PWM2|PWM_G:vCounter[2]~regout\) # (\MOD_PWM2|PWM_G:vCounter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM2|PWM_G:vCounter[1]~regout\,
	datac => \MOD_PWM2|PWM_G:vCounter[2]~regout\,
	datad => \MOD_PWM2|PWM_G:vCounter[3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan0~3_combout\);

-- Location: LC_X12_Y2_N6
\MOD_PWM2|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan0~2_combout\ = (\MOD_PWM2|PWM_G:vCounter[7]~regout\) # ((\MOD_PWM2|PWM_G:vCounter[5]~regout\) # ((\MOD_PWM2|PWM_G:vCounter[4]~regout\) # (\MOD_PWM2|PWM_G:vCounter[6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|PWM_G:vCounter[7]~regout\,
	datab => \MOD_PWM2|PWM_G:vCounter[5]~regout\,
	datac => \MOD_PWM2|PWM_G:vCounter[4]~regout\,
	datad => \MOD_PWM2|PWM_G:vCounter[6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan0~2_combout\);

-- Location: LC_X14_Y2_N4
\MOD_PWM2|Add0~60\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~60_combout\ = (\MOD_PWM2|PWM_G:vCounter[12]~regout\ $ (((!\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~57\) # (\MOD_PWM2|Add0~37\ & \MOD_PWM2|Add0~57COUT1_112\))))
-- \MOD_PWM2|Add0~62\ = CARRY(((\MOD_PWM2|PWM_G:vCounter[12]~regout\) # (!\MOD_PWM2|Add0~57COUT1_112\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[12]~regout\,
	cin => \MOD_PWM2|Add0~37\,
	cin0 => \MOD_PWM2|Add0~57\,
	cin1 => \MOD_PWM2|Add0~57COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~60_combout\,
	cout => \MOD_PWM2|Add0~62\);

-- Location: LC_X14_Y2_N9
\MOD_PWM2|vCounter~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~1_combout\ = (((\MOD_PWM2|Add0~60_combout\ & \MOD_PWM2|LessThan0~4_combout\)))

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
	datac => \MOD_PWM2|Add0~60_combout\,
	datad => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~1_combout\);

-- Location: LC_X15_Y6_N6
\MOD_PWM2|PWM_G:vCounter[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[12]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~1_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(12))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~60_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~1_combout\,
	datac => \MOD_PWM2|Add0~60_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(12),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[12]~regout\);

-- Location: LC_X14_Y2_N5
\MOD_PWM2|Add0~65\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~65_combout\ = (\MOD_PWM2|PWM_G:vCounter[13]~regout\ $ ((!\MOD_PWM2|Add0~62\)))
-- \MOD_PWM2|Add0~67\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[13]~regout\ & !\MOD_PWM2|Add0~62\)))
-- \MOD_PWM2|Add0~67COUT1_114\ = CARRY(((!\MOD_PWM2|PWM_G:vCounter[13]~regout\ & !\MOD_PWM2|Add0~62\)))

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
	datab => \MOD_PWM2|PWM_G:vCounter[13]~regout\,
	cin => \MOD_PWM2|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~65_combout\,
	cout0 => \MOD_PWM2|Add0~67\,
	cout1 => \MOD_PWM2|Add0~67COUT1_114\);

-- Location: LC_X15_Y2_N4
\MOD_PWM2|vCounter~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~2_combout\ = (((\MOD_PWM2|LessThan0~4_combout\ & \MOD_PWM2|Add0~65_combout\)))

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
	datac => \MOD_PWM2|LessThan0~4_combout\,
	datad => \MOD_PWM2|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~2_combout\);

-- Location: LC_X15_Y6_N9
\MOD_PWM2|PWM_G:vCounter[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[13]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~2_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(13))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~65_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~2_combout\,
	datac => \MOD_PWM2|Add0~65_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(13),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[13]~regout\);

-- Location: LC_X14_Y2_N6
\MOD_PWM2|Add0~70\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~70_combout\ = \MOD_PWM2|PWM_G:vCounter[14]~regout\ $ (((((!\MOD_PWM2|Add0~62\ & \MOD_PWM2|Add0~67\) # (\MOD_PWM2|Add0~62\ & \MOD_PWM2|Add0~67COUT1_114\)))))
-- \MOD_PWM2|Add0~72\ = CARRY((\MOD_PWM2|PWM_G:vCounter[14]~regout\) # ((!\MOD_PWM2|Add0~67\)))
-- \MOD_PWM2|Add0~72COUT1_116\ = CARRY((\MOD_PWM2|PWM_G:vCounter[14]~regout\) # ((!\MOD_PWM2|Add0~67COUT1_114\)))

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
	dataa => \MOD_PWM2|PWM_G:vCounter[14]~regout\,
	cin => \MOD_PWM2|Add0~62\,
	cin0 => \MOD_PWM2|Add0~67\,
	cin1 => \MOD_PWM2|Add0~67COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~70_combout\,
	cout0 => \MOD_PWM2|Add0~72\,
	cout1 => \MOD_PWM2|Add0~72COUT1_116\);

-- Location: LC_X15_Y2_N8
\MOD_PWM2|vCounter~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~3_combout\ = (((\MOD_PWM2|Add0~70_combout\ & \MOD_PWM2|LessThan0~4_combout\)))

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
	datac => \MOD_PWM2|Add0~70_combout\,
	datad => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~3_combout\);

-- Location: LC_X15_Y6_N3
\MOD_PWM2|PWM_G:vCounter[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[14]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~3_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(14))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~70_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~3_combout\,
	datac => \MOD_PWM2|Add0~70_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(14),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[14]~regout\);

-- Location: LC_X14_Y2_N7
\MOD_PWM2|Add0~75\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Add0~75_combout\ = (((!\MOD_PWM2|Add0~62\ & \MOD_PWM2|Add0~72\) # (\MOD_PWM2|Add0~62\ & \MOD_PWM2|Add0~72COUT1_116\) $ (!\MOD_PWM2|PWM_G:vCounter[15]~regout\)))

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
	datad => \MOD_PWM2|PWM_G:vCounter[15]~regout\,
	cin => \MOD_PWM2|Add0~62\,
	cin0 => \MOD_PWM2|Add0~72\,
	cin1 => \MOD_PWM2|Add0~72COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Add0~75_combout\);

-- Location: LC_X15_Y6_N2
\MOD_PWM2|vCounter~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~0_combout\ = (((\MOD_PWM2|Add0~75_combout\ & \MOD_PWM2|LessThan0~4_combout\)))

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
	datac => \MOD_PWM2|Add0~75_combout\,
	datad => \MOD_PWM2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~0_combout\);

-- Location: LC_X15_Y6_N7
\MOD_PWM2|PWM_G:vCounter[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[15]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~0_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(15))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~75_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~0_combout\,
	datac => \MOD_PWM2|Add0~75_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(15),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[15]~regout\);

-- Location: LC_X15_Y6_N0
\MOD_PWM2|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan0~0_combout\ = (\MOD_PWM2|PWM_G:vCounter[12]~regout\) # ((\MOD_PWM2|PWM_G:vCounter[13]~regout\) # ((\MOD_PWM2|PWM_G:vCounter[15]~regout\) # (\MOD_PWM2|PWM_G:vCounter[14]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|PWM_G:vCounter[12]~regout\,
	datab => \MOD_PWM2|PWM_G:vCounter[13]~regout\,
	datac => \MOD_PWM2|PWM_G:vCounter[15]~regout\,
	datad => \MOD_PWM2|PWM_G:vCounter[14]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan0~0_combout\);

-- Location: LC_X12_Y2_N0
\MOD_PWM2|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan0~4_combout\ = (\MOD_PWM2|LessThan0~1_combout\) # ((\MOD_PWM2|LessThan0~3_combout\) # ((\MOD_PWM2|LessThan0~2_combout\) # (\MOD_PWM2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|LessThan0~1_combout\,
	datab => \MOD_PWM2|LessThan0~3_combout\,
	datac => \MOD_PWM2|LessThan0~2_combout\,
	datad => \MOD_PWM2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan0~4_combout\);

-- Location: LC_X12_Y2_N7
\MOD_PWM2|vCounter~12\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|vCounter~12_combout\ = ((\MOD_PWM2|LessThan0~4_combout\ & (\MOD_PWM2|Add0~5_combout\)))

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
	datab => \MOD_PWM2|LessThan0~4_combout\,
	datac => \MOD_PWM2|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|vCounter~12_combout\);

-- Location: LC_X12_Y2_N9
\MOD_PWM2|PWM_G:vCounter[1]\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|PWM_G:vCounter[1]~regout\ = DFFEAS((\MOD_PWM2|sPWMState.HI~regout\ & (\MOD_PWM2|vCounter~12_combout\)) # (!\MOD_PWM2|sPWMState.HI~regout\ & (((\MOD_PWM2|sPWMPERIOD\(1))))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, 
-- \MOD_PWM2|Add0~5_combout\, , , \MOD_PWM2|PWM_G:vCounter[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|vCounter~12_combout\,
	datac => \MOD_PWM2|Add0~5_combout\,
	datad => \MOD_PWM2|sPWMPERIOD\(1),
	aclr => GND,
	sload => \MOD_PWM2|PWM_G:vCounter[7]~0_combout\,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|PWM_G:vCounter[1]~regout\);

-- Location: LC_X12_Y3_N3
\MOD_PWM2|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Equal0~0_combout\ = (\MOD_PWM2|Add0~5_combout\) # ((\MOD_PWM2|Add0~0_combout\) # ((\MOD_PWM2|Add0~10_combout\) # (\MOD_PWM2|Add0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|Add0~5_combout\,
	datab => \MOD_PWM2|Add0~0_combout\,
	datac => \MOD_PWM2|Add0~10_combout\,
	datad => \MOD_PWM2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Equal0~0_combout\);

-- Location: LC_X12_Y3_N1
\MOD_PWM2|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Equal0~1_combout\ = (\MOD_PWM2|Add0~20_combout\) # ((\MOD_PWM2|Add0~35_combout\) # ((\MOD_PWM2|Add0~25_combout\) # (\MOD_PWM2|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|Add0~20_combout\,
	datab => \MOD_PWM2|Add0~35_combout\,
	datac => \MOD_PWM2|Add0~25_combout\,
	datad => \MOD_PWM2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Equal0~1_combout\);

-- Location: LC_X13_Y3_N9
\MOD_PWM2|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Equal0~3_combout\ = (\MOD_PWM2|Add0~75_combout\) # ((\MOD_PWM2|Add0~70_combout\) # ((\MOD_PWM2|Add0~60_combout\) # (\MOD_PWM2|Add0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|Add0~75_combout\,
	datab => \MOD_PWM2|Add0~70_combout\,
	datac => \MOD_PWM2|Add0~60_combout\,
	datad => \MOD_PWM2|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Equal0~3_combout\);

-- Location: LC_X13_Y3_N4
\MOD_PWM2|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Equal0~2_combout\ = (\MOD_PWM2|Add0~45_combout\) # ((\MOD_PWM2|Add0~55_combout\) # ((\MOD_PWM2|Add0~50_combout\) # (\MOD_PWM2|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|Add0~45_combout\,
	datab => \MOD_PWM2|Add0~55_combout\,
	datac => \MOD_PWM2|Add0~50_combout\,
	datad => \MOD_PWM2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Equal0~2_combout\);

-- Location: LC_X12_Y3_N7
\MOD_PWM2|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Equal0~4_combout\ = (\MOD_PWM2|Equal0~0_combout\) # ((\MOD_PWM2|Equal0~1_combout\) # ((\MOD_PWM2|Equal0~3_combout\) # (\MOD_PWM2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|Equal0~0_combout\,
	datab => \MOD_PWM2|Equal0~1_combout\,
	datac => \MOD_PWM2|Equal0~3_combout\,
	datad => \MOD_PWM2|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Equal0~4_combout\);

-- Location: LC_X14_Y3_N2
\MOD_PWM2|Selector21~4\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector21~4_combout\ = (\MOD_PWM2|sPWMState.LO~regout\ & (((\MOD_IOSPACE|oWrPWMDUTY2~regout\) # (\MOD_IOSPACE|oWrPWMPERIOD2~regout\)) # (!\MOD_PWM2|sPWMCONFIG\(0))))

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
	dataa => \MOD_PWM2|sPWMState.LO~regout\,
	datab => \MOD_PWM2|sPWMCONFIG\(0),
	datac => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datad => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector21~4_combout\);

-- Location: LC_X15_Y5_N3
\MOD_PWM2|Selector19~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector19~1_combout\ = ((\MOD_PWM2|Selector21~3_combout\ & ((!\MOD_PWM2|sPWMState.HI~regout\))) # (!\MOD_PWM2|Selector21~3_combout\ & (\MOD_PWM2|sPWMState.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sPWMState.IDLE~regout\,
	datab => \MOD_PWM2|sPWMState.HI~regout\,
	datad => \MOD_PWM2|Selector21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector19~1_combout\);

-- Location: LC_X15_Y5_N8
\MOD_PWM2|sPWMState.IDLE\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMState.IDLE~regout\ = DFFEAS((\MOD_PWM2|Selector21~4_combout\ & (\MOD_PWM2|sPWMCONFIG\(0))) # (!\MOD_PWM2|Selector21~4_combout\ & ((\MOD_PWM2|Selector19~1_combout\) # ((\MOD_PWM2|sPWMCONFIG\(0) & \MOD_PWM2|Selector21~3_combout\)))), 
-- GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMCONFIG\(0),
	datab => \MOD_PWM2|Selector21~3_combout\,
	datac => \MOD_PWM2|Selector21~4_combout\,
	datad => \MOD_PWM2|Selector19~1_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMState.IDLE~regout\);

-- Location: LC_X15_Y5_N0
\MOD_PWM2|Selector21~1\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector21~1_combout\ = (\MOD_PWM2|sPWMState.RESET~regout\) # ((!\MOD_PWM2|sPWMState.LO~regout\ & (\MOD_PWM2|sPWMCONFIG\(0) & !\MOD_PWM2|sPWMState.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccdc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sPWMState.LO~regout\,
	datab => \MOD_PWM2|sPWMState.RESET~regout\,
	datac => \MOD_PWM2|sPWMCONFIG\(0),
	datad => \MOD_PWM2|sPWMState.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector21~1_combout\);

-- Location: LC_X15_Y5_N6
\MOD_PWM2|Selector21~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector21~0_combout\ = ((!\MOD_IOSPACE|oWrPWMPERIOD2~regout\ & (\MOD_PWM2|sPWMCONFIG\(0) & !\MOD_IOSPACE|oWrPWMDUTY2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	datac => \MOD_PWM2|sPWMCONFIG\(0),
	datad => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector21~0_combout\);

-- Location: LC_X15_Y5_N7
\MOD_PWM2|Selector21~2\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector21~2_combout\ = ((\MOD_PWM2|sPWMState.LO~regout\ & ((\MOD_PWM2|Selector21~0_combout\) # (!\MOD_PWM2|sPWMState.IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sPWMState.IDLE~regout\,
	datac => \MOD_PWM2|sPWMState.LO~regout\,
	datad => \MOD_PWM2|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector21~2_combout\);

-- Location: LC_X15_Y5_N2
\MOD_PWM2|Selector21~3\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector21~3_combout\ = (\MOD_PWM2|Selector21~1_combout\) # (((!\MOD_PWM2|Equal0~4_combout\ & \MOD_PWM2|Selector21~2_combout\)) # (!\MOD_PWM2|Selector19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|Equal0~4_combout\,
	datab => \MOD_PWM2|Selector21~1_combout\,
	datac => \MOD_PWM2|Selector21~2_combout\,
	datad => \MOD_PWM2|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector21~3_combout\);

-- Location: LC_X13_Y5_N2
\MOD_PWM2|LessThan1~77\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~77_cout0\ = CARRY((!\MOD_PWM2|sDUTY\(0) & (\MOD_PWM2|vCounter~15_combout\)))
-- \MOD_PWM2|LessThan1~77COUT1_94\ = CARRY((!\MOD_PWM2|sDUTY\(0) & (\MOD_PWM2|vCounter~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(0),
	datab => \MOD_PWM2|vCounter~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~75\,
	cout0 => \MOD_PWM2|LessThan1~77_cout0\,
	cout1 => \MOD_PWM2|LessThan1~77COUT1_94\);

-- Location: LC_X13_Y5_N3
\MOD_PWM2|LessThan1~72\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~72_cout0\ = CARRY((\MOD_PWM2|sDUTY\(1) & ((!\MOD_PWM2|LessThan1~77_cout0\) # (!\MOD_PWM2|vCounter~12_combout\))) # (!\MOD_PWM2|sDUTY\(1) & (!\MOD_PWM2|vCounter~12_combout\ & !\MOD_PWM2|LessThan1~77_cout0\)))
-- \MOD_PWM2|LessThan1~72COUT1_96\ = CARRY((\MOD_PWM2|sDUTY\(1) & ((!\MOD_PWM2|LessThan1~77COUT1_94\) # (!\MOD_PWM2|vCounter~12_combout\))) # (!\MOD_PWM2|sDUTY\(1) & (!\MOD_PWM2|vCounter~12_combout\ & !\MOD_PWM2|LessThan1~77COUT1_94\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(1),
	datab => \MOD_PWM2|vCounter~12_combout\,
	cin0 => \MOD_PWM2|LessThan1~77_cout0\,
	cin1 => \MOD_PWM2|LessThan1~77COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~70\,
	cout0 => \MOD_PWM2|LessThan1~72_cout0\,
	cout1 => \MOD_PWM2|LessThan1~72COUT1_96\);

-- Location: LC_X13_Y5_N4
\MOD_PWM2|LessThan1~67\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~67_cout\ = CARRY((\MOD_PWM2|vCounter~13_combout\ & ((!\MOD_PWM2|LessThan1~72COUT1_96\) # (!\MOD_PWM2|sDUTY\(2)))) # (!\MOD_PWM2|vCounter~13_combout\ & (!\MOD_PWM2|sDUTY\(2) & !\MOD_PWM2|LessThan1~72COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|vCounter~13_combout\,
	datab => \MOD_PWM2|sDUTY\(2),
	cin0 => \MOD_PWM2|LessThan1~72_cout0\,
	cin1 => \MOD_PWM2|LessThan1~72COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~65\,
	cout => \MOD_PWM2|LessThan1~67_cout\);

-- Location: LC_X13_Y5_N5
\MOD_PWM2|LessThan1~62\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~62_cout0\ = CARRY((\MOD_PWM2|sDUTY\(3) & ((!\MOD_PWM2|LessThan1~67_cout\) # (!\MOD_PWM2|vCounter~14_combout\))) # (!\MOD_PWM2|sDUTY\(3) & (!\MOD_PWM2|vCounter~14_combout\ & !\MOD_PWM2|LessThan1~67_cout\)))
-- \MOD_PWM2|LessThan1~62COUT1_98\ = CARRY((\MOD_PWM2|sDUTY\(3) & ((!\MOD_PWM2|LessThan1~67_cout\) # (!\MOD_PWM2|vCounter~14_combout\))) # (!\MOD_PWM2|sDUTY\(3) & (!\MOD_PWM2|vCounter~14_combout\ & !\MOD_PWM2|LessThan1~67_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(3),
	datab => \MOD_PWM2|vCounter~14_combout\,
	cin => \MOD_PWM2|LessThan1~67_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~60\,
	cout0 => \MOD_PWM2|LessThan1~62_cout0\,
	cout1 => \MOD_PWM2|LessThan1~62COUT1_98\);

-- Location: LC_X13_Y5_N6
\MOD_PWM2|LessThan1~57\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~57_cout0\ = CARRY((\MOD_PWM2|vCounter~8_combout\ & ((!\MOD_PWM2|LessThan1~62_cout0\) # (!\MOD_PWM2|sDUTY\(4)))) # (!\MOD_PWM2|vCounter~8_combout\ & (!\MOD_PWM2|sDUTY\(4) & !\MOD_PWM2|LessThan1~62_cout0\)))
-- \MOD_PWM2|LessThan1~57COUT1_100\ = CARRY((\MOD_PWM2|vCounter~8_combout\ & ((!\MOD_PWM2|LessThan1~62COUT1_98\) # (!\MOD_PWM2|sDUTY\(4)))) # (!\MOD_PWM2|vCounter~8_combout\ & (!\MOD_PWM2|sDUTY\(4) & !\MOD_PWM2|LessThan1~62COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|vCounter~8_combout\,
	datab => \MOD_PWM2|sDUTY\(4),
	cin => \MOD_PWM2|LessThan1~67_cout\,
	cin0 => \MOD_PWM2|LessThan1~62_cout0\,
	cin1 => \MOD_PWM2|LessThan1~62COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~55\,
	cout0 => \MOD_PWM2|LessThan1~57_cout0\,
	cout1 => \MOD_PWM2|LessThan1~57COUT1_100\);

-- Location: LC_X13_Y5_N7
\MOD_PWM2|LessThan1~52\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~52_cout0\ = CARRY((\MOD_PWM2|sDUTY\(5) & ((!\MOD_PWM2|LessThan1~57_cout0\) # (!\MOD_PWM2|vCounter~9_combout\))) # (!\MOD_PWM2|sDUTY\(5) & (!\MOD_PWM2|vCounter~9_combout\ & !\MOD_PWM2|LessThan1~57_cout0\)))
-- \MOD_PWM2|LessThan1~52COUT1_102\ = CARRY((\MOD_PWM2|sDUTY\(5) & ((!\MOD_PWM2|LessThan1~57COUT1_100\) # (!\MOD_PWM2|vCounter~9_combout\))) # (!\MOD_PWM2|sDUTY\(5) & (!\MOD_PWM2|vCounter~9_combout\ & !\MOD_PWM2|LessThan1~57COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(5),
	datab => \MOD_PWM2|vCounter~9_combout\,
	cin => \MOD_PWM2|LessThan1~67_cout\,
	cin0 => \MOD_PWM2|LessThan1~57_cout0\,
	cin1 => \MOD_PWM2|LessThan1~57COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~50\,
	cout0 => \MOD_PWM2|LessThan1~52_cout0\,
	cout1 => \MOD_PWM2|LessThan1~52COUT1_102\);

-- Location: LC_X13_Y5_N8
\MOD_PWM2|LessThan1~47\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~47_cout0\ = CARRY((\MOD_PWM2|sDUTY\(6) & (\MOD_PWM2|vCounter~10_combout\ & !\MOD_PWM2|LessThan1~52_cout0\)) # (!\MOD_PWM2|sDUTY\(6) & ((\MOD_PWM2|vCounter~10_combout\) # (!\MOD_PWM2|LessThan1~52_cout0\))))
-- \MOD_PWM2|LessThan1~47COUT1_104\ = CARRY((\MOD_PWM2|sDUTY\(6) & (\MOD_PWM2|vCounter~10_combout\ & !\MOD_PWM2|LessThan1~52COUT1_102\)) # (!\MOD_PWM2|sDUTY\(6) & ((\MOD_PWM2|vCounter~10_combout\) # (!\MOD_PWM2|LessThan1~52COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(6),
	datab => \MOD_PWM2|vCounter~10_combout\,
	cin => \MOD_PWM2|LessThan1~67_cout\,
	cin0 => \MOD_PWM2|LessThan1~52_cout0\,
	cin1 => \MOD_PWM2|LessThan1~52COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~45\,
	cout0 => \MOD_PWM2|LessThan1~47_cout0\,
	cout1 => \MOD_PWM2|LessThan1~47COUT1_104\);

-- Location: LC_X13_Y5_N9
\MOD_PWM2|LessThan1~42\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~42_cout\ = CARRY((\MOD_PWM2|vCounter~11_combout\ & (\MOD_PWM2|sDUTY\(7) & !\MOD_PWM2|LessThan1~47COUT1_104\)) # (!\MOD_PWM2|vCounter~11_combout\ & ((\MOD_PWM2|sDUTY\(7)) # (!\MOD_PWM2|LessThan1~47COUT1_104\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|vCounter~11_combout\,
	datab => \MOD_PWM2|sDUTY\(7),
	cin => \MOD_PWM2|LessThan1~67_cout\,
	cin0 => \MOD_PWM2|LessThan1~47_cout0\,
	cin1 => \MOD_PWM2|LessThan1~47COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~40\,
	cout => \MOD_PWM2|LessThan1~42_cout\);

-- Location: LC_X14_Y5_N0
\MOD_PWM2|LessThan1~37\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~37_cout0\ = CARRY((\MOD_PWM2|vCounter~4_combout\ & ((!\MOD_PWM2|LessThan1~42_cout\) # (!\MOD_PWM2|sDUTY\(8)))) # (!\MOD_PWM2|vCounter~4_combout\ & (!\MOD_PWM2|sDUTY\(8) & !\MOD_PWM2|LessThan1~42_cout\)))
-- \MOD_PWM2|LessThan1~37COUT1_106\ = CARRY((\MOD_PWM2|vCounter~4_combout\ & ((!\MOD_PWM2|LessThan1~42_cout\) # (!\MOD_PWM2|sDUTY\(8)))) # (!\MOD_PWM2|vCounter~4_combout\ & (!\MOD_PWM2|sDUTY\(8) & !\MOD_PWM2|LessThan1~42_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|vCounter~4_combout\,
	datab => \MOD_PWM2|sDUTY\(8),
	cin => \MOD_PWM2|LessThan1~42_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~35\,
	cout0 => \MOD_PWM2|LessThan1~37_cout0\,
	cout1 => \MOD_PWM2|LessThan1~37COUT1_106\);

-- Location: LC_X14_Y5_N1
\MOD_PWM2|LessThan1~32\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~32_cout0\ = CARRY((\MOD_PWM2|sDUTY\(9) & ((!\MOD_PWM2|LessThan1~37_cout0\) # (!\MOD_PWM2|vCounter~5_combout\))) # (!\MOD_PWM2|sDUTY\(9) & (!\MOD_PWM2|vCounter~5_combout\ & !\MOD_PWM2|LessThan1~37_cout0\)))
-- \MOD_PWM2|LessThan1~32COUT1_108\ = CARRY((\MOD_PWM2|sDUTY\(9) & ((!\MOD_PWM2|LessThan1~37COUT1_106\) # (!\MOD_PWM2|vCounter~5_combout\))) # (!\MOD_PWM2|sDUTY\(9) & (!\MOD_PWM2|vCounter~5_combout\ & !\MOD_PWM2|LessThan1~37COUT1_106\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(9),
	datab => \MOD_PWM2|vCounter~5_combout\,
	cin => \MOD_PWM2|LessThan1~42_cout\,
	cin0 => \MOD_PWM2|LessThan1~37_cout0\,
	cin1 => \MOD_PWM2|LessThan1~37COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~30\,
	cout0 => \MOD_PWM2|LessThan1~32_cout0\,
	cout1 => \MOD_PWM2|LessThan1~32COUT1_108\);

-- Location: LC_X14_Y5_N2
\MOD_PWM2|LessThan1~27\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~27_cout0\ = CARRY((\MOD_PWM2|vCounter~6_combout\ & ((!\MOD_PWM2|LessThan1~32_cout0\) # (!\MOD_PWM2|sDUTY\(10)))) # (!\MOD_PWM2|vCounter~6_combout\ & (!\MOD_PWM2|sDUTY\(10) & !\MOD_PWM2|LessThan1~32_cout0\)))
-- \MOD_PWM2|LessThan1~27COUT1_110\ = CARRY((\MOD_PWM2|vCounter~6_combout\ & ((!\MOD_PWM2|LessThan1~32COUT1_108\) # (!\MOD_PWM2|sDUTY\(10)))) # (!\MOD_PWM2|vCounter~6_combout\ & (!\MOD_PWM2|sDUTY\(10) & !\MOD_PWM2|LessThan1~32COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|vCounter~6_combout\,
	datab => \MOD_PWM2|sDUTY\(10),
	cin => \MOD_PWM2|LessThan1~42_cout\,
	cin0 => \MOD_PWM2|LessThan1~32_cout0\,
	cin1 => \MOD_PWM2|LessThan1~32COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~25\,
	cout0 => \MOD_PWM2|LessThan1~27_cout0\,
	cout1 => \MOD_PWM2|LessThan1~27COUT1_110\);

-- Location: LC_X14_Y5_N3
\MOD_PWM2|LessThan1~22\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~22_cout0\ = CARRY((\MOD_PWM2|sDUTY\(11) & ((!\MOD_PWM2|LessThan1~27_cout0\) # (!\MOD_PWM2|vCounter~7_combout\))) # (!\MOD_PWM2|sDUTY\(11) & (!\MOD_PWM2|vCounter~7_combout\ & !\MOD_PWM2|LessThan1~27_cout0\)))
-- \MOD_PWM2|LessThan1~22COUT1_112\ = CARRY((\MOD_PWM2|sDUTY\(11) & ((!\MOD_PWM2|LessThan1~27COUT1_110\) # (!\MOD_PWM2|vCounter~7_combout\))) # (!\MOD_PWM2|sDUTY\(11) & (!\MOD_PWM2|vCounter~7_combout\ & !\MOD_PWM2|LessThan1~27COUT1_110\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(11),
	datab => \MOD_PWM2|vCounter~7_combout\,
	cin => \MOD_PWM2|LessThan1~42_cout\,
	cin0 => \MOD_PWM2|LessThan1~27_cout0\,
	cin1 => \MOD_PWM2|LessThan1~27COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~20\,
	cout0 => \MOD_PWM2|LessThan1~22_cout0\,
	cout1 => \MOD_PWM2|LessThan1~22COUT1_112\);

-- Location: LC_X14_Y5_N4
\MOD_PWM2|LessThan1~17\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~17_cout\ = CARRY((\MOD_PWM2|sDUTY\(12) & (\MOD_PWM2|vCounter~1_combout\ & !\MOD_PWM2|LessThan1~22COUT1_112\)) # (!\MOD_PWM2|sDUTY\(12) & ((\MOD_PWM2|vCounter~1_combout\) # (!\MOD_PWM2|LessThan1~22COUT1_112\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(12),
	datab => \MOD_PWM2|vCounter~1_combout\,
	cin => \MOD_PWM2|LessThan1~42_cout\,
	cin0 => \MOD_PWM2|LessThan1~22_cout0\,
	cin1 => \MOD_PWM2|LessThan1~22COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~15\,
	cout => \MOD_PWM2|LessThan1~17_cout\);

-- Location: LC_X14_Y5_N5
\MOD_PWM2|LessThan1~12\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~12_cout0\ = CARRY((\MOD_PWM2|sDUTY\(13) & ((!\MOD_PWM2|LessThan1~17_cout\) # (!\MOD_PWM2|vCounter~2_combout\))) # (!\MOD_PWM2|sDUTY\(13) & (!\MOD_PWM2|vCounter~2_combout\ & !\MOD_PWM2|LessThan1~17_cout\)))
-- \MOD_PWM2|LessThan1~12COUT1_114\ = CARRY((\MOD_PWM2|sDUTY\(13) & ((!\MOD_PWM2|LessThan1~17_cout\) # (!\MOD_PWM2|vCounter~2_combout\))) # (!\MOD_PWM2|sDUTY\(13) & (!\MOD_PWM2|vCounter~2_combout\ & !\MOD_PWM2|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sDUTY\(13),
	datab => \MOD_PWM2|vCounter~2_combout\,
	cin => \MOD_PWM2|LessThan1~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~10\,
	cout0 => \MOD_PWM2|LessThan1~12_cout0\,
	cout1 => \MOD_PWM2|LessThan1~12COUT1_114\);

-- Location: LC_X14_Y5_N6
\MOD_PWM2|LessThan1~7\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~7_cout0\ = CARRY((\MOD_PWM2|vCounter~3_combout\ & ((!\MOD_PWM2|LessThan1~12_cout0\) # (!\MOD_PWM2|sDUTY\(14)))) # (!\MOD_PWM2|vCounter~3_combout\ & (!\MOD_PWM2|sDUTY\(14) & !\MOD_PWM2|LessThan1~12_cout0\)))
-- \MOD_PWM2|LessThan1~7COUT1_116\ = CARRY((\MOD_PWM2|vCounter~3_combout\ & ((!\MOD_PWM2|LessThan1~12COUT1_114\) # (!\MOD_PWM2|sDUTY\(14)))) # (!\MOD_PWM2|vCounter~3_combout\ & (!\MOD_PWM2|sDUTY\(14) & !\MOD_PWM2|LessThan1~12COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|vCounter~3_combout\,
	datab => \MOD_PWM2|sDUTY\(14),
	cin => \MOD_PWM2|LessThan1~17_cout\,
	cin0 => \MOD_PWM2|LessThan1~12_cout0\,
	cin1 => \MOD_PWM2|LessThan1~12COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~5\,
	cout0 => \MOD_PWM2|LessThan1~7_cout0\,
	cout1 => \MOD_PWM2|LessThan1~7COUT1_116\);

-- Location: LC_X14_Y5_N7
\MOD_PWM2|LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|LessThan1~0_combout\ = ((\MOD_PWM2|sDUTY\(15) & ((!\MOD_PWM2|LessThan1~17_cout\ & \MOD_PWM2|LessThan1~7_cout0\) # (\MOD_PWM2|LessThan1~17_cout\ & \MOD_PWM2|LessThan1~7COUT1_116\) & \MOD_PWM2|vCounter~0_combout\)) # (!\MOD_PWM2|sDUTY\(15) & 
-- (((!\MOD_PWM2|LessThan1~17_cout\ & \MOD_PWM2|LessThan1~7_cout0\) # (\MOD_PWM2|LessThan1~17_cout\ & \MOD_PWM2|LessThan1~7COUT1_116\)) # (\MOD_PWM2|vCounter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM2|sDUTY\(15),
	datad => \MOD_PWM2|vCounter~0_combout\,
	cin => \MOD_PWM2|LessThan1~17_cout\,
	cin0 => \MOD_PWM2|LessThan1~7_cout0\,
	cin1 => \MOD_PWM2|LessThan1~7COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|LessThan1~0_combout\);

-- Location: LC_X14_Y3_N0
\MOD_PWM2|Selector21~5\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector21~5_combout\ = (\MOD_PWM2|sPWMState.HI~regout\ & (!\MOD_IOSPACE|oWrPWMPERIOD2~regout\ & (\MOD_PWM2|sPWMCONFIG\(0) & !\MOD_IOSPACE|oWrPWMDUTY2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	datac => \MOD_PWM2|sPWMCONFIG\(0),
	datad => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector21~5_combout\);

-- Location: LC_X15_Y5_N4
\MOD_PWM2|sPWMState.LO\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMState.LO~regout\ = DFFEAS((\MOD_PWM2|sPWMState.LO~regout\ & (((!\MOD_PWM2|LessThan1~0_combout\ & \MOD_PWM2|Selector21~5_combout\)) # (!\MOD_PWM2|Selector21~3_combout\))) # (!\MOD_PWM2|sPWMState.LO~regout\ & (((!\MOD_PWM2|LessThan1~0_combout\ 
-- & \MOD_PWM2|Selector21~5_combout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.LO~regout\,
	datab => \MOD_PWM2|Selector21~3_combout\,
	datac => \MOD_PWM2|LessThan1~0_combout\,
	datad => \MOD_PWM2|Selector21~5_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMState.LO~regout\);

-- Location: LC_X15_Y5_N1
\MOD_PWM2|Selector19~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector19~0_combout\ = (\MOD_PWM2|Selector21~0_combout\ & (((\MOD_PWM2|LessThan1~0_combout\) # (!\MOD_PWM2|sPWMState.HI~regout\)))) # (!\MOD_PWM2|Selector21~0_combout\ & (!\MOD_PWM2|sPWMState.LO~regout\ & ((!\MOD_PWM2|sPWMState.HI~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_PWM2|sPWMState.LO~regout\,
	datab => \MOD_PWM2|LessThan1~0_combout\,
	datac => \MOD_PWM2|Selector21~0_combout\,
	datad => \MOD_PWM2|sPWMState.HI~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector19~0_combout\);

-- Location: LC_X15_Y5_N5
\MOD_PWM2|sPWMState.HI\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMState.HI~regout\ = DFFEAS(((\MOD_PWM2|Selector21~3_combout\ & (\MOD_PWM2|Selector19~0_combout\)) # (!\MOD_PWM2|Selector21~3_combout\ & ((\MOD_PWM2|sPWMState.HI~regout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_PWM2|Selector19~0_combout\,
	datac => \MOD_PWM2|sPWMState.HI~regout\,
	datad => \MOD_PWM2|Selector21~3_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMState.HI~regout\);

-- Location: LC_X14_Y3_N8
\MOD_PWM2|Selector22~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector22~0_combout\ = ((!\MOD_IOSPACE|oWrPWMDUTY2~regout\ & ((!\MOD_IOSPACE|oWrPWMPERIOD2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_IOSPACE|oWrPWMDUTY2~regout\,
	datad => \MOD_IOSPACE|oWrPWMPERIOD2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector22~0_combout\);

-- Location: LC_X14_Y3_N6
\MOD_PWM2|sPWMState.RESET\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sPWMState.RESET~regout\ = DFFEAS((\MOD_PWM2|sPWMCONFIG\(0) & (!\MOD_PWM2|Selector22~0_combout\ & ((\MOD_PWM2|sPWMState.HI~regout\) # (\MOD_PWM2|sPWMState.LO~regout\)))), GLOBAL(\iCLK~combout\), \iSW_RESET_CPLD~combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.HI~regout\,
	datab => \MOD_PWM2|sPWMCONFIG\(0),
	datac => \MOD_PWM2|sPWMState.LO~regout\,
	datad => \MOD_PWM2|Selector22~0_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sPWMState.RESET~regout\);

-- Location: LC_X14_Y3_N7
\MOD_PWM2|sOPState.HI\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sOPState.HI~regout\ = DFFEAS(((\MOD_PWM2|sPWMState.HI~regout\) # ((\MOD_PWM2|sPWMState.RESET~regout\ & \MOD_PWM2|sOPState.HI~regout\))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.RESET~regout\,
	datab => \MOD_PWM2|sOPState.HI~regout\,
	datad => \MOD_PWM2|sPWMState.HI~regout\,
	aclr => GND,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sOPState.HI~regout\);

-- Location: LC_X14_Y3_N5
\MOD_PWM2|sOPState.IDLE\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|sOPState.IDLE~regout\ = DFFEAS(((\MOD_PWM2|sPWMState.IDLE~regout\ & ((\MOD_PWM2|sOPState.IDLE~regout\) # (!\MOD_PWM2|sPWMState.RESET~regout\)))), GLOBAL(\iCLK~combout\), VCC, , \iSW_RESET_CPLD~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	dataa => \MOD_PWM2|sPWMState.RESET~regout\,
	datac => \MOD_PWM2|sOPState.IDLE~regout\,
	datad => \MOD_PWM2|sPWMState.IDLE~regout\,
	aclr => GND,
	ena => \iSW_RESET_CPLD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_PWM2|sOPState.IDLE~regout\);

-- Location: LC_X11_Y5_N1
\MOD_PWM2|Selector24~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector24~0_combout\ = ((\MOD_PWM2|sOPState.HI~regout\) # ((\MOD_PWM2|sPWMCONFIG\(1) & !\MOD_PWM2|sOPState.IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM2|sPWMCONFIG\(1),
	datac => \MOD_PWM2|sOPState.HI~regout\,
	datad => \MOD_PWM2|sOPState.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector24~0_combout\);

-- Location: LC_X11_Y5_N2
\MOD_PWM2|Selector23~0\ : maxv_lcell
-- Equation(s):
-- \MOD_PWM2|Selector23~0_combout\ = (((\MOD_PWM2|sOPState.IDLE~regout\)) # (!\MOD_PWM2|sPWMCONFIG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_PWM2|sPWMCONFIG\(2),
	datad => \MOD_PWM2|sOPState.IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_PWM2|Selector23~0_combout\);

-- Location: LC_X9_Y7_N2
\MOD_IOSPACE|Mux19~10\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~10_combout\ = (\MOD_IOSPACE|Mux19~6\ & ((\MOD_SRAMIO|IO_ADDR\(2)) # ((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_IOSPACE|Mux19~6\,
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~10_combout\);

-- Location: LC_X9_Y7_N3
\SYNCMOD|sSYNCONFIG[31]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~7\ = (\MOD_IOSPACE|oData[14]~32_combout\ & (\MOD_IOSPACE|oData[14]~31_combout\ & (L1_sSYNCONFIG[31]))) # (!\MOD_IOSPACE|oData[14]~32_combout\ & (((\MOD_IOSPACE|Mux19~10_combout\)) # (!\MOD_IOSPACE|oData[14]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d591",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrSYNCONFIG2~regout\,
	dataa => \MOD_IOSPACE|oData[14]~32_combout\,
	datab => \MOD_IOSPACE|oData[14]~31_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	datad => \MOD_IOSPACE|Mux19~10_combout\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~7\,
	regout => \SYNCMOD|sSYNCONFIG\(31));

-- Location: LC_X9_Y7_N4
\OPMOD|sOutput[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux19~8\ = (\MOD_IOSPACE|oData[14]~27_combout\ & (((\MOD_IOSPACE|Mux19~7\)))) # (!\MOD_IOSPACE|oData[14]~27_combout\ & ((\MOD_IOSPACE|Mux19~7\ & ((J1_sOutput[15]))) # (!\MOD_IOSPACE|Mux19~7\ & (\SYNCMOD|sSYNCONFIG\(15)))))
-- \OPMOD|sOutput\(15) = DFFEAS(\MOD_IOSPACE|Mux19~8\, GLOBAL(\MOD_IOSPACE|oWrOUTPUTS~regout\), \iSW_RESET_CPLD~combout\, , , \MOD_SRAMIO|IO_DAT_WR\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \MOD_IOSPACE|oWrOUTPUTS~regout\,
	dataa => \SYNCMOD|sSYNCONFIG\(15),
	datab => \MOD_IOSPACE|oData[14]~27_combout\,
	datac => \MOD_SRAMIO|IO_DAT_WR\(15),
	datad => \MOD_IOSPACE|Mux19~7\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux19~8\,
	regout => \OPMOD|sOutput\(15));

-- Location: LC_X15_Y4_N2
\MOD_RESET|COUNTER:vCounter[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[9]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~40_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~40_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[9]~regout\);

-- Location: LC_X13_Y4_N4
\MOD_RESET|Add0~15\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~15_combout\ = (\MOD_RESET|COUNTER:vCounter[2]~regout\ $ ((!\MOD_RESET|Add0~7\)))
-- \MOD_RESET|Add0~17\ = CARRY(((\MOD_RESET|COUNTER:vCounter[2]~regout\ & !\MOD_RESET|Add0~7COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[2]~regout\,
	cin0 => \MOD_RESET|Add0~7\,
	cin1 => \MOD_RESET|Add0~7COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~15_combout\,
	cout => \MOD_RESET|Add0~17\);

-- Location: LC_X12_Y4_N7
\MOD_RESET|COUNTER:vCounter[2]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[2]~regout\ = DFFEAS((((\MOD_RESET|Add0~15_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~15_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[2]~regout\);

-- Location: LC_X13_Y4_N5
\MOD_RESET|Add0~10\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~10_combout\ = (\MOD_RESET|COUNTER:vCounter[3]~regout\ $ ((\MOD_RESET|Add0~17\)))
-- \MOD_RESET|Add0~12\ = CARRY(((!\MOD_RESET|Add0~17\) # (!\MOD_RESET|COUNTER:vCounter[3]~regout\)))
-- \MOD_RESET|Add0~12COUT1_98\ = CARRY(((!\MOD_RESET|Add0~17\) # (!\MOD_RESET|COUNTER:vCounter[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[3]~regout\,
	cin => \MOD_RESET|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~10_combout\,
	cout0 => \MOD_RESET|Add0~12\,
	cout1 => \MOD_RESET|Add0~12COUT1_98\);

-- Location: LC_X14_Y4_N8
\MOD_RESET|COUNTER:vCounter[3]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[3]~regout\ = DFFEAS((((\MOD_RESET|Add0~10_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~10_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[3]~regout\);

-- Location: LC_X13_Y4_N6
\MOD_RESET|Add0~25\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~25_combout\ = \MOD_RESET|COUNTER:vCounter[4]~regout\ $ ((((!(!\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~12\) # (\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~12COUT1_98\)))))
-- \MOD_RESET|Add0~27\ = CARRY((\MOD_RESET|COUNTER:vCounter[4]~regout\ & ((!\MOD_RESET|Add0~12\))))
-- \MOD_RESET|Add0~27COUT1_100\ = CARRY((\MOD_RESET|COUNTER:vCounter[4]~regout\ & ((!\MOD_RESET|Add0~12COUT1_98\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|COUNTER:vCounter[4]~regout\,
	cin => \MOD_RESET|Add0~17\,
	cin0 => \MOD_RESET|Add0~12\,
	cin1 => \MOD_RESET|Add0~12COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~25_combout\,
	cout0 => \MOD_RESET|Add0~27\,
	cout1 => \MOD_RESET|Add0~27COUT1_100\);

-- Location: LC_X12_Y4_N9
\MOD_RESET|COUNTER:vCounter[4]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[4]~regout\ = DFFEAS((((\MOD_RESET|Add0~25_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~25_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[4]~regout\);

-- Location: LC_X13_Y4_N7
\MOD_RESET|Add0~20\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~20_combout\ = (\MOD_RESET|COUNTER:vCounter[5]~regout\ $ (((!\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~27\) # (\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~27COUT1_100\))))
-- \MOD_RESET|Add0~22\ = CARRY(((!\MOD_RESET|Add0~27\) # (!\MOD_RESET|COUNTER:vCounter[5]~regout\)))
-- \MOD_RESET|Add0~22COUT1_102\ = CARRY(((!\MOD_RESET|Add0~27COUT1_100\) # (!\MOD_RESET|COUNTER:vCounter[5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[5]~regout\,
	cin => \MOD_RESET|Add0~17\,
	cin0 => \MOD_RESET|Add0~27\,
	cin1 => \MOD_RESET|Add0~27COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~20_combout\,
	cout0 => \MOD_RESET|Add0~22\,
	cout1 => \MOD_RESET|Add0~22COUT1_102\);

-- Location: LC_X12_Y4_N6
\MOD_RESET|COUNTER:vCounter[5]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[5]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~20_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~20_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[5]~regout\);

-- Location: LC_X13_Y4_N8
\MOD_RESET|Add0~35\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~35_combout\ = (\MOD_RESET|COUNTER:vCounter[6]~regout\ $ ((!(!\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~22\) # (\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~22COUT1_102\))))
-- \MOD_RESET|Add0~37\ = CARRY(((\MOD_RESET|COUNTER:vCounter[6]~regout\ & !\MOD_RESET|Add0~22\)))
-- \MOD_RESET|Add0~37COUT1_104\ = CARRY(((\MOD_RESET|COUNTER:vCounter[6]~regout\ & !\MOD_RESET|Add0~22COUT1_102\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[6]~regout\,
	cin => \MOD_RESET|Add0~17\,
	cin0 => \MOD_RESET|Add0~22\,
	cin1 => \MOD_RESET|Add0~22COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~35_combout\,
	cout0 => \MOD_RESET|Add0~37\,
	cout1 => \MOD_RESET|Add0~37COUT1_104\);

-- Location: LC_X15_Y4_N3
\MOD_RESET|COUNTER:vCounter[6]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[6]~regout\ = DFFEAS((((\MOD_RESET|Add0~35_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~35_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[6]~regout\);

-- Location: LC_X13_Y4_N9
\MOD_RESET|Add0~30\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~30_combout\ = (\MOD_RESET|COUNTER:vCounter[7]~regout\ $ (((!\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~37\) # (\MOD_RESET|Add0~17\ & \MOD_RESET|Add0~37COUT1_104\))))
-- \MOD_RESET|Add0~32\ = CARRY(((!\MOD_RESET|Add0~37COUT1_104\) # (!\MOD_RESET|COUNTER:vCounter[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[7]~regout\,
	cin => \MOD_RESET|Add0~17\,
	cin0 => \MOD_RESET|Add0~37\,
	cin1 => \MOD_RESET|Add0~37COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~30_combout\,
	cout => \MOD_RESET|Add0~32\);

-- Location: LC_X12_Y4_N2
\MOD_RESET|COUNTER:vCounter[7]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[7]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~30_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~30_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[7]~regout\);

-- Location: LC_X14_Y4_N0
\MOD_RESET|Add0~45\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~45_combout\ = (\MOD_RESET|COUNTER:vCounter[8]~regout\ $ ((!\MOD_RESET|Add0~32\)))
-- \MOD_RESET|Add0~47\ = CARRY(((\MOD_RESET|COUNTER:vCounter[8]~regout\ & !\MOD_RESET|Add0~32\)))
-- \MOD_RESET|Add0~47COUT1_106\ = CARRY(((\MOD_RESET|COUNTER:vCounter[8]~regout\ & !\MOD_RESET|Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[8]~regout\,
	cin => \MOD_RESET|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~45_combout\,
	cout0 => \MOD_RESET|Add0~47\,
	cout1 => \MOD_RESET|Add0~47COUT1_106\);

-- Location: LC_X14_Y4_N9
\MOD_RESET|COUNTER:vCounter[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[8]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~45_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~45_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[8]~regout\);

-- Location: LC_X14_Y4_N1
\MOD_RESET|Add0~40\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~40_combout\ = (\MOD_RESET|COUNTER:vCounter[9]~regout\ $ (((!\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~47\) # (\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~47COUT1_106\))))
-- \MOD_RESET|Add0~42\ = CARRY(((!\MOD_RESET|Add0~47\) # (!\MOD_RESET|COUNTER:vCounter[9]~regout\)))
-- \MOD_RESET|Add0~42COUT1_108\ = CARRY(((!\MOD_RESET|Add0~47COUT1_106\) # (!\MOD_RESET|COUNTER:vCounter[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[9]~regout\,
	cin => \MOD_RESET|Add0~32\,
	cin0 => \MOD_RESET|Add0~47\,
	cin1 => \MOD_RESET|Add0~47COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~40_combout\,
	cout0 => \MOD_RESET|Add0~42\,
	cout1 => \MOD_RESET|Add0~42COUT1_108\);

-- Location: LC_X12_Y4_N3
\MOD_RESET|sReset~5\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~5_combout\ = (\MOD_RESET|sResetPeriod\(8) & ((\MOD_RESET|Add0~45_combout\) # (\MOD_RESET|Add0~40_combout\ $ (!\MOD_RESET|sResetPeriod\(9))))) # (!\MOD_RESET|sResetPeriod\(8) & ((\MOD_RESET|Add0~40_combout\ $ 
-- (!\MOD_RESET|sResetPeriod\(9))) # (!\MOD_RESET|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebd7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|sResetPeriod\(8),
	datab => \MOD_RESET|Add0~40_combout\,
	datac => \MOD_RESET|sResetPeriod\(9),
	datad => \MOD_RESET|Add0~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~5_combout\);

-- Location: LC_X15_Y4_N1
\MOD_RESET|COUNTER:vCounter[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[12]~regout\ = DFFEAS((((\MOD_RESET|Add0~60_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~60_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[12]~regout\);

-- Location: LC_X14_Y4_N2
\MOD_RESET|Add0~50\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~50_combout\ = \MOD_RESET|COUNTER:vCounter[10]~regout\ $ ((((!(!\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~42\) # (\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~42COUT1_108\)))))
-- \MOD_RESET|Add0~52\ = CARRY((\MOD_RESET|COUNTER:vCounter[10]~regout\ & ((!\MOD_RESET|Add0~42\))))
-- \MOD_RESET|Add0~52COUT1_110\ = CARRY((\MOD_RESET|COUNTER:vCounter[10]~regout\ & ((!\MOD_RESET|Add0~42COUT1_108\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|COUNTER:vCounter[10]~regout\,
	cin => \MOD_RESET|Add0~32\,
	cin0 => \MOD_RESET|Add0~42\,
	cin1 => \MOD_RESET|Add0~42COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~50_combout\,
	cout0 => \MOD_RESET|Add0~52\,
	cout1 => \MOD_RESET|Add0~52COUT1_110\);

-- Location: LC_X15_Y4_N7
\MOD_RESET|COUNTER:vCounter[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[10]~regout\ = DFFEAS((((\MOD_RESET|Add0~50_combout\))), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_RESET|Add0~50_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[10]~regout\);

-- Location: LC_X14_Y4_N3
\MOD_RESET|Add0~55\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~55_combout\ = \MOD_RESET|COUNTER:vCounter[11]~regout\ $ (((((!\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~52\) # (\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~52COUT1_110\)))))
-- \MOD_RESET|Add0~57\ = CARRY(((!\MOD_RESET|Add0~52\)) # (!\MOD_RESET|COUNTER:vCounter[11]~regout\))
-- \MOD_RESET|Add0~57COUT1_112\ = CARRY(((!\MOD_RESET|Add0~52COUT1_110\)) # (!\MOD_RESET|COUNTER:vCounter[11]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|COUNTER:vCounter[11]~regout\,
	cin => \MOD_RESET|Add0~32\,
	cin0 => \MOD_RESET|Add0~52\,
	cin1 => \MOD_RESET|Add0~52COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~55_combout\,
	cout0 => \MOD_RESET|Add0~57\,
	cout1 => \MOD_RESET|Add0~57COUT1_112\);

-- Location: LC_X15_Y4_N6
\MOD_RESET|COUNTER:vCounter[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[11]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~55_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~55_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[11]~regout\);

-- Location: LC_X14_Y4_N4
\MOD_RESET|Add0~60\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~60_combout\ = \MOD_RESET|COUNTER:vCounter[12]~regout\ $ ((((!(!\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~57\) # (\MOD_RESET|Add0~32\ & \MOD_RESET|Add0~57COUT1_112\)))))
-- \MOD_RESET|Add0~62\ = CARRY((\MOD_RESET|COUNTER:vCounter[12]~regout\ & ((!\MOD_RESET|Add0~57COUT1_112\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|COUNTER:vCounter[12]~regout\,
	cin => \MOD_RESET|Add0~32\,
	cin0 => \MOD_RESET|Add0~57\,
	cin1 => \MOD_RESET|Add0~57COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~60_combout\,
	cout => \MOD_RESET|Add0~62\);

-- Location: LC_X16_Y4_N2
\MOD_RESET|COUNTER:vCounter[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[13]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~65_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~65_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[13]~regout\);

-- Location: LC_X14_Y4_N5
\MOD_RESET|Add0~65\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~65_combout\ = (\MOD_RESET|COUNTER:vCounter[13]~regout\ $ ((\MOD_RESET|Add0~62\)))
-- \MOD_RESET|Add0~67\ = CARRY(((!\MOD_RESET|Add0~62\) # (!\MOD_RESET|COUNTER:vCounter[13]~regout\)))
-- \MOD_RESET|Add0~67COUT1_114\ = CARRY(((!\MOD_RESET|Add0~62\) # (!\MOD_RESET|COUNTER:vCounter[13]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \MOD_RESET|COUNTER:vCounter[13]~regout\,
	cin => \MOD_RESET|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~65_combout\,
	cout0 => \MOD_RESET|Add0~67\,
	cout1 => \MOD_RESET|Add0~67COUT1_114\);

-- Location: LC_X12_Y4_N1
\MOD_RESET|sReset~7\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~7_combout\ = (\MOD_RESET|sResetPeriod\(12) & ((\MOD_RESET|sResetPeriod\(13) $ (\MOD_RESET|Add0~65_combout\)) # (!\MOD_RESET|Add0~60_combout\))) # (!\MOD_RESET|sResetPeriod\(12) & ((\MOD_RESET|Add0~60_combout\) # 
-- (\MOD_RESET|sResetPeriod\(13) $ (\MOD_RESET|Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|sResetPeriod\(12),
	datab => \MOD_RESET|Add0~60_combout\,
	datac => \MOD_RESET|sResetPeriod\(13),
	datad => \MOD_RESET|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~7_combout\);

-- Location: LC_X12_Y4_N5
\MOD_RESET|sReset~6\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~6_combout\ = (\MOD_RESET|Add0~50_combout\ & ((\MOD_RESET|sResetPeriod\(11) $ (\MOD_RESET|Add0~55_combout\)) # (!\MOD_RESET|sResetPeriod\(10)))) # (!\MOD_RESET|Add0~50_combout\ & ((\MOD_RESET|sResetPeriod\(10)) # 
-- (\MOD_RESET|sResetPeriod\(11) $ (\MOD_RESET|Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bde",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|Add0~50_combout\,
	datab => \MOD_RESET|sResetPeriod\(11),
	datac => \MOD_RESET|sResetPeriod\(10),
	datad => \MOD_RESET|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~6_combout\);

-- Location: LC_X15_Y4_N0
\MOD_RESET|COUNTER:vCounter[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[14]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~70_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~70_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[14]~regout\);

-- Location: LC_X14_Y4_N6
\MOD_RESET|Add0~70\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~70_combout\ = \MOD_RESET|COUNTER:vCounter[14]~regout\ $ ((((!(!\MOD_RESET|Add0~62\ & \MOD_RESET|Add0~67\) # (\MOD_RESET|Add0~62\ & \MOD_RESET|Add0~67COUT1_114\)))))
-- \MOD_RESET|Add0~72\ = CARRY((\MOD_RESET|COUNTER:vCounter[14]~regout\ & ((!\MOD_RESET|Add0~67\))))
-- \MOD_RESET|Add0~72COUT1_116\ = CARRY((\MOD_RESET|COUNTER:vCounter[14]~regout\ & ((!\MOD_RESET|Add0~67COUT1_114\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|COUNTER:vCounter[14]~regout\,
	cin => \MOD_RESET|Add0~62\,
	cin0 => \MOD_RESET|Add0~67\,
	cin1 => \MOD_RESET|Add0~67COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~70_combout\,
	cout0 => \MOD_RESET|Add0~72\,
	cout1 => \MOD_RESET|Add0~72COUT1_116\);

-- Location: LC_X16_Y4_N4
\MOD_RESET|COUNTER:vCounter[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|COUNTER:vCounter[15]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , \MOD_RESET|COUNTER:vCounter[15]~0_combout\, \MOD_RESET|Add0~75_combout\, , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_RESET|Add0~75_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	sload => VCC,
	ena => \MOD_RESET|COUNTER:vCounter[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|COUNTER:vCounter[15]~regout\);

-- Location: LC_X14_Y4_N7
\MOD_RESET|Add0~75\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|Add0~75_combout\ = (((!\MOD_RESET|Add0~62\ & \MOD_RESET|Add0~72\) # (\MOD_RESET|Add0~62\ & \MOD_RESET|Add0~72COUT1_116\) $ (\MOD_RESET|COUNTER:vCounter[15]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \MOD_RESET|COUNTER:vCounter[15]~regout\,
	cin => \MOD_RESET|Add0~62\,
	cin0 => \MOD_RESET|Add0~72\,
	cin1 => \MOD_RESET|Add0~72COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|Add0~75_combout\);

-- Location: LC_X12_Y4_N8
\MOD_RESET|sReset~8\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~8_combout\ = (\MOD_RESET|Add0~70_combout\ & ((\MOD_RESET|sResetPeriod\(15) $ (\MOD_RESET|Add0~75_combout\)) # (!\MOD_RESET|sResetPeriod\(14)))) # (!\MOD_RESET|Add0~70_combout\ & ((\MOD_RESET|sResetPeriod\(14)) # 
-- (\MOD_RESET|sResetPeriod\(15) $ (\MOD_RESET|Add0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bde",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|Add0~70_combout\,
	datab => \MOD_RESET|sResetPeriod\(15),
	datac => \MOD_RESET|sResetPeriod\(14),
	datad => \MOD_RESET|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~8_combout\);

-- Location: LC_X12_Y4_N0
\MOD_RESET|sReset~9\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~9_combout\ = (\MOD_RESET|sReset~5_combout\) # ((\MOD_RESET|sReset~7_combout\) # ((\MOD_RESET|sReset~6_combout\) # (\MOD_RESET|sReset~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|sReset~5_combout\,
	datab => \MOD_RESET|sReset~7_combout\,
	datac => \MOD_RESET|sReset~6_combout\,
	datad => \MOD_RESET|sReset~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~9_combout\);

-- Location: LC_X11_Y4_N6
\MOD_RESET|sReset~3\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~3_combout\ = (\MOD_RESET|Add0~35_combout\ & ((\MOD_RESET|sResetPeriod\(6)) # (\MOD_RESET|sResetPeriod\(7) $ (!\MOD_RESET|Add0~30_combout\)))) # (!\MOD_RESET|Add0~35_combout\ & ((\MOD_RESET|sResetPeriod\(7) $ 
-- (!\MOD_RESET|Add0~30_combout\)) # (!\MOD_RESET|sResetPeriod\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ebd7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|Add0~35_combout\,
	datab => \MOD_RESET|sResetPeriod\(7),
	datac => \MOD_RESET|Add0~30_combout\,
	datad => \MOD_RESET|sResetPeriod\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~3_combout\);

-- Location: LC_X11_Y4_N0
\MOD_RESET|sReset~2\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~2_combout\ = (\MOD_RESET|Add0~25_combout\ & ((\MOD_RESET|Add0~20_combout\ $ (!\MOD_RESET|sResetPeriod\(5))) # (!\MOD_RESET|sResetPeriod\(4)))) # (!\MOD_RESET|Add0~25_combout\ & ((\MOD_RESET|sResetPeriod\(4)) # 
-- (\MOD_RESET|Add0~20_combout\ $ (!\MOD_RESET|sResetPeriod\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d7eb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|Add0~25_combout\,
	datab => \MOD_RESET|Add0~20_combout\,
	datac => \MOD_RESET|sResetPeriod\(5),
	datad => \MOD_RESET|sResetPeriod\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~2_combout\);

-- Location: LC_X10_Y4_N0
\MOD_RESET|sReset~1\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~1_combout\ = (\MOD_RESET|sResetPeriod\(2) & ((\MOD_RESET|Add0~10_combout\ $ (!\MOD_RESET|sResetPeriod\(3))) # (!\MOD_RESET|Add0~15_combout\))) # (!\MOD_RESET|sResetPeriod\(2) & ((\MOD_RESET|Add0~15_combout\) # 
-- (\MOD_RESET|Add0~10_combout\ $ (!\MOD_RESET|sResetPeriod\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de7b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|sResetPeriod\(2),
	datab => \MOD_RESET|Add0~10_combout\,
	datac => \MOD_RESET|Add0~15_combout\,
	datad => \MOD_RESET|sResetPeriod\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~1_combout\);

-- Location: LC_X11_Y4_N2
\MOD_RESET|sReset~4\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~4_combout\ = (\MOD_RESET|sReset~3_combout\) # ((\MOD_RESET|sReset~0\) # ((\MOD_RESET|sReset~2_combout\) # (\MOD_RESET|sReset~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_RESET|sReset~3_combout\,
	datab => \MOD_RESET|sReset~0\,
	datac => \MOD_RESET|sReset~2_combout\,
	datad => \MOD_RESET|sReset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_RESET|sReset~4_combout\);

-- Location: LC_X12_Y4_N4
\MOD_RESET|sReset\ : maxv_lcell
-- Equation(s):
-- \MOD_RESET|sReset~regout\ = DFFEAS((((\MOD_RESET|sReset~9_combout\) # (\MOD_RESET|sReset~4_combout\)) # (!\MOD_RESET|sCounter1USOF~regout\)), GLOBAL(\iCLK~combout\), !\MOD_RESET|COUNTER1US~0_combout\, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \MOD_RESET|sCounter1USOF~regout\,
	datac => \MOD_RESET|sReset~9_combout\,
	datad => \MOD_RESET|sReset~4_combout\,
	aclr => \MOD_RESET|COUNTER1US~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_RESET|sReset~regout\);

-- Location: LC_X1_Y9_N5
\MOD_SRAMIO|SRAM_RD_DATA_PROC~0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\ = ((!\iRD~combout\ & (!\iCS_FPGA~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \iRD~combout\,
	datac => \iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\);

-- Location: LC_X2_Y6_N7
\MOD_SRAMIO|DATA[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(0), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(0),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[0]~reg0_regout\);

-- Location: LC_X1_Y9_N1
\MOD_SRAMIO|DATA[0]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[0]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[0]~en_regout\);

-- Location: LC_X2_Y6_N3
\MOD_SRAMIO|DATA[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(1), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(1),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[1]~reg0_regout\);

-- Location: LC_X1_Y9_N6
\MOD_SRAMIO|DATA[1]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[1]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[1]~en_regout\);

-- Location: LC_X10_Y9_N6
\MOD_SRAMIO|DATA[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(2), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(2),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[2]~reg0_regout\);

-- Location: LC_X1_Y6_N5
\MOD_SRAMIO|DATA[2]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[2]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[2]~en_regout\);

-- Location: LC_X2_Y6_N4
\MOD_SRAMIO|DATA[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(3), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(3),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[3]~reg0_regout\);

-- Location: LC_X1_Y6_N4
\MOD_SRAMIO|DATA[3]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[3]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[3]~en_regout\);

-- Location: LC_X6_Y6_N2
\MOD_SRAMIO|DATA[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[4]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(4), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(4),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[4]~reg0_regout\);

-- Location: LC_X1_Y9_N7
\MOD_SRAMIO|DATA[4]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[4]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[4]~en_regout\);

-- Location: LC_X2_Y6_N6
\MOD_SRAMIO|DATA[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[5]~reg0_regout\ = DFFEAS((((\MOD_IOSPACE|oData\(5)))), GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_IOSPACE|oData\(5),
	aclr => GND,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[5]~reg0_regout\);

-- Location: LC_X1_Y6_N2
\MOD_SRAMIO|DATA[5]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[5]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[5]~en_regout\);

-- Location: LC_X2_Y6_N9
\MOD_SRAMIO|DATA[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(6), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(6),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[6]~reg0_regout\);

-- Location: LC_X1_Y6_N1
\MOD_SRAMIO|DATA[6]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[6]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[6]~en_regout\);

-- Location: LC_X2_Y6_N2
\MOD_SRAMIO|DATA[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[7]~reg0_regout\ = DFFEAS((((\MOD_IOSPACE|oData\(7)))), GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_IOSPACE|oData\(7),
	aclr => GND,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[7]~reg0_regout\);

-- Location: LC_X1_Y6_N3
\MOD_SRAMIO|DATA[7]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[7]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[7]~en_regout\);

-- Location: LC_X11_Y7_N8
\MOD_IOSPACE|oData[8]~26\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData[8]~26_combout\ = (!\MOD_SRAMIO|IO_ADDR\(6) & (!\MOD_SRAMIO|IO_ADDR\(5) & (!\MOD_SRAMIO|IO_ADDR\(0) & !\MOD_SRAMIO|IO_ADDR\(2))))

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
	dataa => \MOD_SRAMIO|IO_ADDR\(6),
	datab => \MOD_SRAMIO|IO_ADDR\(5),
	datac => \MOD_SRAMIO|IO_ADDR\(0),
	datad => \MOD_SRAMIO|IO_ADDR\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|oData[8]~26_combout\);

-- Location: LC_X11_Y9_N6
\MOD_IOSPACE|oData[8]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(8) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & (\MOD_IOSPACE|Mux26~9\ & ((\MOD_IOSPACE|oData[8]~26_combout\) # (!\MOD_SRAMIO|IO_ADDR\(1))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|oData[8]~26_combout\,
	datac => \MOD_IOSPACE|Mux6~6_combout\,
	datad => \MOD_IOSPACE|Mux26~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(8));

-- Location: LC_X10_Y9_N5
\MOD_SRAMIO|DATA[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[8]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(8), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(8),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[8]~reg0_regout\);

-- Location: LC_X1_Y6_N6
\MOD_SRAMIO|DATA[8]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[8]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[8]~en_regout\);

-- Location: LC_X11_Y7_N3
\MOD_IOSPACE|oData[9]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(9) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & (\MOD_IOSPACE|Mux25~9\ & ((\MOD_IOSPACE|oData[8]~26_combout\) # (!\MOD_SRAMIO|IO_ADDR\(1))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|oData[8]~26_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|Mux6~6_combout\,
	datad => \MOD_IOSPACE|Mux25~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(9));

-- Location: LC_X6_Y7_N0
\MOD_SRAMIO|DATA[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(9), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(9),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[9]~reg0_regout\);

-- Location: LC_X1_Y6_N9
\MOD_SRAMIO|DATA[9]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[9]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[9]~en_regout\);

-- Location: LC_X8_Y6_N8
\MOD_IOSPACE|Mux24~2\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~2_combout\ = (\MOD_SRAMIO|IO_ADDR\(2)) # (((\MOD_SRAMIO|IO_ADDR\(5)) # (\MOD_SRAMIO|IO_ADDR\(0))) # (!\MOD_SRAMIO|IO_ADDR\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_SRAMIO|IO_ADDR\(2),
	datab => \MOD_SRAMIO|IO_ADDR\(6),
	datac => \MOD_SRAMIO|IO_ADDR\(5),
	datad => \MOD_SRAMIO|IO_ADDR\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~2_combout\);

-- Location: LC_X8_Y7_N9
\MOD_IOSPACE|Mux24~3\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|Mux24~3_combout\ = (\MOD_IOSPACE|Mux6~6_combout\ & ((\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|oData[8]~26_combout\))) # (!\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MOD_IOSPACE|Mux24~2_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|Mux6~6_combout\,
	datad => \MOD_IOSPACE|oData[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \MOD_IOSPACE|Mux24~3_combout\);

-- Location: LC_X8_Y7_N6
\MOD_IOSPACE|oData[10]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(10) = DFFEAS((\MOD_IOSPACE|Mux24~3_combout\ & ((\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux24~4\)) # (!\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux24~10\))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|Mux24~3_combout\,
	datac => \MOD_IOSPACE|Mux24~4\,
	datad => \MOD_IOSPACE|Mux24~10\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(10));

-- Location: LC_X8_Y7_N2
\MOD_SRAMIO|DATA[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[10]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(10), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(10),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[10]~reg0_regout\);

-- Location: LC_X1_Y6_N7
\MOD_SRAMIO|DATA[10]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[10]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[10]~en_regout\);

-- Location: LC_X11_Y9_N0
\MOD_IOSPACE|oData[11]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(11) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & (\MOD_IOSPACE|Mux23~9\ & ((\MOD_IOSPACE|oData[8]~26_combout\) # (!\MOD_SRAMIO|IO_ADDR\(1))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|oData[8]~26_combout\,
	datac => \MOD_IOSPACE|Mux6~6_combout\,
	datad => \MOD_IOSPACE|Mux23~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(11));

-- Location: LC_X10_Y9_N0
\MOD_SRAMIO|DATA[11]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[11]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(11), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(11),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[11]~reg0_regout\);

-- Location: LC_X1_Y5_N1
\MOD_SRAMIO|DATA[11]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[11]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[11]~en_regout\);

-- Location: LC_X11_Y7_N7
\MOD_IOSPACE|oData[12]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(12) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & (\MOD_IOSPACE|Mux22~9\ & ((\MOD_IOSPACE|oData[8]~26_combout\) # (!\MOD_SRAMIO|IO_ADDR\(1))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|oData[8]~26_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|Mux6~6_combout\,
	datad => \MOD_IOSPACE|Mux22~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(12));

-- Location: LC_X10_Y9_N9
\MOD_SRAMIO|DATA[12]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[12]~reg0_regout\ = DFFEAS((((\MOD_IOSPACE|oData\(12)))), GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_IOSPACE|oData\(12),
	aclr => GND,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[12]~reg0_regout\);

-- Location: LC_X1_Y5_N8
\MOD_SRAMIO|DATA[12]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[12]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[12]~en_regout\);

-- Location: LC_X6_Y7_N9
\MOD_IOSPACE|oData[13]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(13) = DFFEAS((\MOD_IOSPACE|Mux6~6_combout\ & (\MOD_IOSPACE|Mux21~9\ & ((\MOD_IOSPACE|oData[8]~26_combout\) # (!\MOD_SRAMIO|IO_ADDR\(1))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_IOSPACE|Mux6~6_combout\,
	datab => \MOD_SRAMIO|IO_ADDR\(1),
	datac => \MOD_IOSPACE|oData[8]~26_combout\,
	datad => \MOD_IOSPACE|Mux21~9\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(13));

-- Location: LC_X6_Y7_N3
\MOD_SRAMIO|DATA[13]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[13]~reg0_regout\ = DFFEAS((((\MOD_IOSPACE|oData\(13)))), GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

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
	clk => \iCLK~combout\,
	datad => \MOD_IOSPACE|oData\(13),
	aclr => GND,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[13]~reg0_regout\);

-- Location: LC_X1_Y5_N4
\MOD_SRAMIO|DATA[13]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[13]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[13]~en_regout\);

-- Location: LC_X8_Y7_N7
\MOD_IOSPACE|oData[14]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(14) = DFFEAS((\MOD_IOSPACE|Mux24~3_combout\ & ((\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux20~2\)) # (!\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux20~8\))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|Mux24~3_combout\,
	datac => \MOD_IOSPACE|Mux20~2\,
	datad => \MOD_IOSPACE|Mux20~8\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(14));

-- Location: LC_X8_Y7_N3
\MOD_SRAMIO|DATA[14]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[14]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(14), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(14),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[14]~reg0_regout\);

-- Location: LC_X1_Y5_N2
\MOD_SRAMIO|DATA[14]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[14]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[14]~en_regout\);

-- Location: LC_X8_Y7_N4
\MOD_IOSPACE|oData[15]\ : maxv_lcell
-- Equation(s):
-- \MOD_IOSPACE|oData\(15) = DFFEAS((\MOD_IOSPACE|Mux24~3_combout\ & ((\MOD_SRAMIO|IO_ADDR\(1) & (\MOD_IOSPACE|Mux19~2\)) # (!\MOD_SRAMIO|IO_ADDR\(1) & ((\MOD_IOSPACE|Mux19~8\))))), !GLOBAL(\iRD~combout\), \iSW_RESET_CPLD~combout\, , !\iCS_FPGA~combout\, , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_iRD~combout\,
	dataa => \MOD_SRAMIO|IO_ADDR\(1),
	datab => \MOD_IOSPACE|Mux24~3_combout\,
	datac => \MOD_IOSPACE|Mux19~2\,
	datad => \MOD_IOSPACE|Mux19~8\,
	aclr => \ALT_INV_iSW_RESET_CPLD~combout\,
	ena => \ALT_INV_iCS_FPGA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_IOSPACE|oData\(15));

-- Location: LC_X8_Y7_N0
\MOD_SRAMIO|DATA[15]~reg0\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[15]~reg0_regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), VCC, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, \MOD_IOSPACE|oData\(15), , , VCC)

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
	clk => \iCLK~combout\,
	datac => \MOD_IOSPACE|oData\(15),
	aclr => GND,
	sload => VCC,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[15]~reg0_regout\);

-- Location: LC_X1_Y5_N6
\MOD_SRAMIO|DATA[15]~en\ : maxv_lcell
-- Equation(s):
-- \MOD_SRAMIO|DATA[15]~en_regout\ = DFFEAS(VCC, GLOBAL(\iCLK~combout\), !\MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\, , \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	aclr => \MOD_IOSPACE|IO_SPACE_PROC_WR~0_combout\,
	ena => \MOD_SRAMIO|SRAM_RD_DATA_PROC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MOD_SRAMIO|DATA[15]~en_regout\);

-- Location: LC_X8_Y10_N8
\SYNCMOD|Mux2~6\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux2~6_combout\ = (\SYNCMOD|Mux2~4\) # ((!\SYNCMOD|sSYNCONFIG\(2) & (!\SYNCMOD|sSYNCONFIG\(1) & \SYNCMOD|Mux2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|sSYNCONFIG\(2),
	datab => \SYNCMOD|sSYNCONFIG\(1),
	datac => \SYNCMOD|Mux2~4\,
	datad => \SYNCMOD|Mux2~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux2~6_combout\);

-- Location: LC_X8_Y8_N3
\SYNCMOD|Mux3~5\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux3~5_combout\ = (\SYNCMOD|sSYNCONFIG\(7) & ((\SYNCMOD|sSYNCONFIG\(4) & (\iInput~combout\(9))) # (!\SYNCMOD|sSYNCONFIG\(4) & ((\iInput~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iInput~combout\(9),
	datab => \iInput~combout\(8),
	datac => \SYNCMOD|sSYNCONFIG\(4),
	datad => \SYNCMOD|sSYNCONFIG\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux3~5_combout\);

-- Location: LC_X7_Y6_N7
\SYNCMOD|Mux3~6\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux3~6_combout\ = (\SYNCMOD|Mux3~4\) # ((!\SYNCMOD|sSYNCONFIG\(6) & (!\SYNCMOD|sSYNCONFIG\(5) & \SYNCMOD|Mux3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|Mux3~4\,
	datab => \SYNCMOD|sSYNCONFIG\(6),
	datac => \SYNCMOD|sSYNCONFIG\(5),
	datad => \SYNCMOD|Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux3~6_combout\);

-- Location: LC_X12_Y8_N1
\SYNCMOD|Mux4~5\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux4~5_combout\ = (\SYNCMOD|sSYNCONFIG\(11) & ((\SYNCMOD|sSYNCONFIG\(8) & ((\iInput~combout\(9)))) # (!\SYNCMOD|sSYNCONFIG\(8) & (\iInput~combout\(8)))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(8),
	datab => \iInput~combout\(8),
	datac => \SYNCMOD|sSYNCONFIG\(11),
	datad => \iInput~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux4~5_combout\);

-- Location: LC_X10_Y8_N3
\SYNCMOD|Mux4~6\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux4~6_combout\ = (\SYNCMOD|Mux4~4\) # ((!\SYNCMOD|sSYNCONFIG\(10) & (!\SYNCMOD|sSYNCONFIG\(9) & \SYNCMOD|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|Mux4~4\,
	datab => \SYNCMOD|sSYNCONFIG\(10),
	datac => \SYNCMOD|sSYNCONFIG\(9),
	datad => \SYNCMOD|Mux4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux4~6_combout\);

-- Location: LC_X9_Y6_N0
\SYNCMOD|Mux5~6\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux5~6_combout\ = (\SYNCMOD|Mux5~4\) # ((!\SYNCMOD|sSYNCONFIG\(14) & (\SYNCMOD|Mux5~5\ & !\SYNCMOD|sSYNCONFIG\(13))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(14),
	datab => \SYNCMOD|Mux5~5\,
	datac => \SYNCMOD|Mux5~4\,
	datad => \SYNCMOD|sSYNCONFIG\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux5~6_combout\);

-- Location: LC_X8_Y9_N8
\SYNCMOD|Mux6~5\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux6~5_combout\ = (\SYNCMOD|sSYNCONFIG\(19) & ((\SYNCMOD|sSYNCONFIG\(16) & (\iInput~combout\(9))) # (!\SYNCMOD|sSYNCONFIG\(16) & ((\iInput~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|sSYNCONFIG\(16),
	datab => \SYNCMOD|sSYNCONFIG\(19),
	datac => \iInput~combout\(9),
	datad => \iInput~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux6~5_combout\);

-- Location: LC_X8_Y9_N3
\SYNCMOD|Mux6~2\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux6~2_combout\ = (\SYNCMOD|sSYNCONFIG\(17) & (((\SYNCMOD|sSYNCONFIG\(16))))) # (!\SYNCMOD|sSYNCONFIG\(17) & ((\SYNCMOD|sSYNCONFIG\(16) & ((\iInput~combout\(1)))) # (!\SYNCMOD|sSYNCONFIG\(16) & (\iInput~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|sSYNCONFIG\(17),
	datab => \iInput~combout\(0),
	datac => \iInput~combout\(1),
	datad => \SYNCMOD|sSYNCONFIG\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux6~2_combout\);

-- Location: LC_X8_Y9_N6
\SYNCMOD|Mux6~3\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux6~3_combout\ = (\SYNCMOD|sSYNCONFIG\(17) & ((\SYNCMOD|Mux6~2_combout\ & (\iInput~combout\(3))) # (!\SYNCMOD|Mux6~2_combout\ & ((\iInput~combout\(2)))))) # (!\SYNCMOD|sSYNCONFIG\(17) & (((\SYNCMOD|Mux6~2_combout\))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(17),
	datab => \iInput~combout\(3),
	datac => \SYNCMOD|Mux6~2_combout\,
	datad => \iInput~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux6~3_combout\);

-- Location: LC_X7_Y8_N3
\SYNCMOD|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux6~0_combout\ = (\SYNCMOD|sSYNCONFIG\(17) & (\SYNCMOD|sSYNCONFIG\(16))) # (!\SYNCMOD|sSYNCONFIG\(17) & ((\SYNCMOD|sSYNCONFIG\(16) & ((\iInput~combout\(5)))) # (!\SYNCMOD|sSYNCONFIG\(16) & (\iInput~combout\(4)))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(17),
	datab => \SYNCMOD|sSYNCONFIG\(16),
	datac => \iInput~combout\(4),
	datad => \iInput~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux6~0_combout\);

-- Location: LC_X7_Y8_N8
\SYNCMOD|Mux6~1\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux6~1_combout\ = (\SYNCMOD|sSYNCONFIG\(17) & ((\SYNCMOD|Mux6~0_combout\ & (\iInput~combout\(7))) # (!\SYNCMOD|Mux6~0_combout\ & ((\iInput~combout\(6)))))) # (!\SYNCMOD|sSYNCONFIG\(17) & (((\SYNCMOD|Mux6~0_combout\))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(17),
	datab => \iInput~combout\(7),
	datac => \SYNCMOD|Mux6~0_combout\,
	datad => \iInput~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux6~1_combout\);

-- Location: LC_X7_Y8_N0
\SYNCMOD|Mux6~4\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux6~4_combout\ = (!\SYNCMOD|sSYNCONFIG\(19) & ((\SYNCMOD|sSYNCONFIG\(18) & ((\SYNCMOD|Mux6~1_combout\))) # (!\SYNCMOD|sSYNCONFIG\(18) & (\SYNCMOD|Mux6~3_combout\))))

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
	dataa => \SYNCMOD|sSYNCONFIG\(19),
	datab => \SYNCMOD|Mux6~3_combout\,
	datac => \SYNCMOD|sSYNCONFIG\(18),
	datad => \SYNCMOD|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux6~4_combout\);

-- Location: LC_X7_Y8_N1
\SYNCMOD|Mux6~6\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux6~6_combout\ = (\SYNCMOD|Mux6~4_combout\) # ((!\SYNCMOD|sSYNCONFIG\(17) & (\SYNCMOD|Mux6~5_combout\ & !\SYNCMOD|sSYNCONFIG\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|sSYNCONFIG\(17),
	datab => \SYNCMOD|Mux6~5_combout\,
	datac => \SYNCMOD|sSYNCONFIG\(18),
	datad => \SYNCMOD|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux6~6_combout\);

-- Location: LC_X6_Y5_N9
\SYNCMOD|Mux7~5\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux7~5_combout\ = (\SYNCMOD|sSYNCONFIG\(23) & ((\SYNCMOD|sSYNCONFIG\(20) & (\iInput~combout\(9))) # (!\SYNCMOD|sSYNCONFIG\(20) & ((\iInput~combout\(8))))))

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
	dataa => \iInput~combout\(9),
	datab => \iInput~combout\(8),
	datac => \SYNCMOD|sSYNCONFIG\(23),
	datad => \SYNCMOD|sSYNCONFIG\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux7~5_combout\);

-- Location: LC_X6_Y5_N2
\SYNCMOD|Mux7~6\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux7~6_combout\ = (\SYNCMOD|Mux7~4\) # ((!\SYNCMOD|sSYNCONFIG\(21) & (\SYNCMOD|Mux7~5_combout\ & !\SYNCMOD|sSYNCONFIG\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|Mux7~4\,
	datab => \SYNCMOD|sSYNCONFIG\(21),
	datac => \SYNCMOD|Mux7~5_combout\,
	datad => \SYNCMOD|sSYNCONFIG\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux7~6_combout\);

-- Location: LC_X12_Y8_N0
\SYNCMOD|Mux8~5\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux8~5_combout\ = (\SYNCMOD|sSYNCONFIG\(27) & ((\SYNCMOD|sSYNCONFIG\(24) & (\iInput~combout\(9))) # (!\SYNCMOD|sSYNCONFIG\(24) & ((\iInput~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|sSYNCONFIG\(27),
	datab => \SYNCMOD|sSYNCONFIG\(24),
	datac => \iInput~combout\(9),
	datad => \iInput~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux8~5_combout\);

-- Location: LC_X12_Y9_N4
\SYNCMOD|Mux8~6\ : maxv_lcell
-- Equation(s):
-- \SYNCMOD|Mux8~6_combout\ = (\SYNCMOD|Mux8~4\) # ((!\SYNCMOD|sSYNCONFIG\(26) & (!\SYNCMOD|sSYNCONFIG\(25) & \SYNCMOD|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SYNCMOD|sSYNCONFIG\(26),
	datab => \SYNCMOD|sSYNCONFIG\(25),
	datac => \SYNCMOD|Mux8~5_combout\,
	datad => \SYNCMOD|Mux8~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \SYNCMOD|Mux8~6_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oWAIT~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SRAMIO|ALT_INV_sRdState.read_start~regout\,
	oe => VCC,
	padio => ww_oWAIT);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oENC_T3_IN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QENC1|oPulse~0\,
	oe => VCC,
	padio => ww_oENC_T3_IN);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oENC_T3_DIR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QENC1|oDir~0_combout\,
	oe => VCC,
	padio => ww_oENC_T3_DIR);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oENC_N3_INX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iENC_N3~combout\,
	oe => VCC,
	padio => ww_oENC_N3_INX);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oENC_T4_IN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QENC2|oPulse~0\,
	oe => VCC,
	padio => ww_oENC_T4_IN);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oENC_T4_DIR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \QENC2|oDir~0_combout\,
	oe => VCC,
	padio => ww_oENC_T4_DIR);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oENC_N4_INX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iENC_N4~combout\,
	oe => VCC,
	padio => ww_oENC_N4_INX);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[0]~0_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(0));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[1]~1_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(1));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[2]~2_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(2));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[3]~3_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(3));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[4]~4_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(4));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[5]~5_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(5));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[6]~6_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(6));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\o7SEGLED[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SEG|oLEDOutput[7]~7_combout\,
	oe => VCC,
	padio => ww_o7SEGLED(7));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(10));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(11));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(12));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInput[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInput(13));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(6));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInput[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInput(7));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(0),
	oe => VCC,
	padio => ww_oOutput(0));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(1),
	oe => VCC,
	padio => ww_oOutput(1));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(2),
	oe => VCC,
	padio => ww_oOutput(2));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(3),
	oe => VCC,
	padio => ww_oOutput(3));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(4),
	oe => VCC,
	padio => ww_oOutput(4));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(5),
	oe => VCC,
	padio => ww_oOutput(5));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(6),
	oe => VCC,
	padio => ww_oOutput(6));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(7),
	oe => VCC,
	padio => ww_oOutput(7));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(8),
	oe => VCC,
	padio => ww_oOutput(8));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(9),
	oe => VCC,
	padio => ww_oOutput(9));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(10),
	oe => VCC,
	padio => ww_oOutput(10));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(11),
	oe => VCC,
	padio => ww_oOutput(11));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(12),
	oe => VCC,
	padio => ww_oOutput(12));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(13),
	oe => VCC,
	padio => ww_oOutput(13));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oOutput[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(14),
	oe => VCC,
	padio => ww_oOutput(14));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\oCPLD_DEBUG[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oCPLD_DEBUG[0]~reg0_regout\,
	oe => VCC,
	padio => ww_oCPLD_DEBUG(0));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\oCPLD_DEBUG[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oCPLD_DEBUG[1]~reg0_regout\,
	oe => VCC,
	padio => ww_oCPLD_DEBUG(1));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\oCPLD_DEBUG[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oCPLD_DEBUG[2]~reg0_regout\,
	oe => VCC,
	padio => ww_oCPLD_DEBUG(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
\oCPLD_DEBUG[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oCPLD_DEBUG[3]~reg0_regout\,
	oe => VCC,
	padio => ww_oCPLD_DEBUG(3));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oRFID_RXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SERIALMUX|oRX_OUT~regout\,
	oe => VCC,
	padio => ww_oRFID_RXD);

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oRFID1_TXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SERIALMUX|oTX1_OUT~reg0_regout\,
	oe => \MOD_SERIALMUX|oTX1_OUT~en_regout\,
	padio => ww_oRFID1_TXD);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oRFID2_TXD~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_SERIALMUX|oTX2_OUT~reg0_regout\,
	oe => \MOD_SERIALMUX|oTX2_OUT~en_regout\,
	padio => ww_oRFID2_TXD);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oLED_FPGA_OK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_PWM1|Selector24~0_combout\,
	oe => \MOD_PWM1|Selector23~0_combout\,
	padio => ww_oLED_FPGA_OK);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oLED_PWM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_PWM1|Selector24~0_combout\,
	oe => \MOD_PWM1|Selector23~0_combout\,
	padio => ww_oLED_PWM);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWM2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_PWM2|Selector24~0_combout\,
	oe => \MOD_PWM2|Selector23~0_combout\,
	padio => ww_oPWM2);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iLED_OVERCURRENT~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iLED_OVERCURRENT);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oLED_ENABLE~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oLED_ENABLE);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oLED_ENC_ERR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_PWM2|Selector24~0_combout\,
	oe => \MOD_PWM2|Selector23~0_combout\,
	padio => ww_oLED_ENC_ERR);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oRSTIN~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \OPMOD|sOutput\(15),
	oe => VCC,
	padio => ww_oRSTIN);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oRST~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \MOD_RESET|ALT_INV_sReset~regout\,
	oe => VCC,
	padio => ww_oRST);
END structure;


