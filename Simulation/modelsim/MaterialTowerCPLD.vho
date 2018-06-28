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

-- DATE "06/28/2018 13:22:00"

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

ENTITY 	IO_SPACE IS
    PORT (
	iCLK : IN std_logic;
	inRESET : IN std_logic;
	inWrRdy : IN std_logic;
	inRdRdy : IN std_logic;
	iAddress : IN std_logic_vector(15 DOWNTO 0);
	iData : IN std_logic_vector(15 DOWNTO 0);
	oData : OUT std_logic_vector(15 DOWNTO 0);
	oPWMCONFIG1 : OUT std_logic_vector(15 DOWNTO 0);
	oPWMPERIOD1 : OUT std_logic_vector(15 DOWNTO 0);
	oPWMDUTY1 : OUT std_logic_vector(15 DOWNTO 0)
	);
END IO_SPACE;

-- Design Ports Information
-- iCLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[8]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[9]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[10]	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[11]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[12]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[13]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[14]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[15]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oData[0]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[1]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[4]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[5]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[6]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[7]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[8]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[9]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[10]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[11]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[12]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[13]	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[14]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oData[15]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[0]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[1]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[2]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[3]	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[5]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[6]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[7]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[8]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[9]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[10]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[11]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[12]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[13]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[14]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMCONFIG1[15]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[1]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[2]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[3]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[4]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[5]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[6]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[7]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[8]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[9]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[10]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[11]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[12]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[13]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[14]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMPERIOD1[15]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[0]	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[2]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[5]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[6]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[7]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[8]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[9]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[10]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[11]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[12]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[13]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[14]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oPWMDUTY1[15]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- inRdRdy	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[0]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[1]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[4]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[5]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[6]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iAddress[7]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inRESET	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[0]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inWrRdy	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[1]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[2]	=>  Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[3]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[4]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[5]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[6]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[7]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[8]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[9]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[10]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[11]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[12]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[13]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[14]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iData[15]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF IO_SPACE IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_inRESET : std_logic;
SIGNAL ww_inWrRdy : std_logic;
SIGNAL ww_inRdRdy : std_logic;
SIGNAL ww_iAddress : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_iData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_oData : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_oPWMCONFIG1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_oPWMPERIOD1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_oPWMDUTY1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \inRdRdy~combout\ : std_logic;
SIGNAL \inWrRdy~combout\ : std_logic;
SIGNAL \inRESET~combout\ : std_logic;
SIGNAL \sPWMDUTY1[0]~0_combout\ : std_logic;
SIGNAL \sPWMDUTY1[0]~1_combout\ : std_logic;
SIGNAL \sPWMCONFIG1[0]~0_combout\ : std_logic;
SIGNAL \sPWMDUTY1[0]~2_combout\ : std_logic;
SIGNAL \sPWMPERIOD1[0]~0_combout\ : std_logic;
SIGNAL \oData[1]~0_combout\ : std_logic;
SIGNAL \oData[0]~reg0_regout\ : std_logic;
SIGNAL \oData[1]~reg0_regout\ : std_logic;
SIGNAL \oData[2]~reg0_regout\ : std_logic;
SIGNAL \oData[3]~reg0_regout\ : std_logic;
SIGNAL \sPWMDUTY1[4]~_wirecell_combout\ : std_logic;
SIGNAL \oData[4]~reg0_regout\ : std_logic;
SIGNAL \sPWMDUTY1[5]~_wirecell_combout\ : std_logic;
SIGNAL \oData[5]~reg0_regout\ : std_logic;
SIGNAL \oData[6]~reg0_regout\ : std_logic;
SIGNAL \oData[7]~reg0_regout\ : std_logic;
SIGNAL \oData[8]~reg0_regout\ : std_logic;
SIGNAL \oData[9]~reg0_regout\ : std_logic;
SIGNAL \oData[10]~reg0_regout\ : std_logic;
SIGNAL \oData[11]~reg0_regout\ : std_logic;
SIGNAL \sPWMDUTY1[12]~_wirecell_combout\ : std_logic;
SIGNAL \oData[12]~reg0_regout\ : std_logic;
SIGNAL \sPWMDUTY1[13]~_wirecell_combout\ : std_logic;
SIGNAL \oData[13]~reg0_regout\ : std_logic;
SIGNAL \oData[14]~reg0_regout\ : std_logic;
SIGNAL \oData[15]~reg0_regout\ : std_logic;
SIGNAL sPWMCONFIG1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \iAddress~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL sPWMPERIOD1 : std_logic_vector(15 DOWNTO 0);
SIGNAL sPWMDUTY1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \iData~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_inWrRdy~combout\ : std_logic;
SIGNAL \ALT_INV_inRdRdy~combout\ : std_logic;
SIGNAL ALT_INV_sPWMDUTY1 : std_logic_vector(13 DOWNTO 4);
SIGNAL ALT_INV_sPWMPERIOD1 : std_logic_vector(13 DOWNTO 5);
SIGNAL ALT_INV_sPWMCONFIG1 : std_logic_vector(12 DOWNTO 4);

BEGIN

ww_iCLK <= iCLK;
ww_inRESET <= inRESET;
ww_inWrRdy <= inWrRdy;
ww_inRdRdy <= inRdRdy;
ww_iAddress <= iAddress;
ww_iData <= iData;
oData <= ww_oData;
oPWMCONFIG1 <= ww_oPWMCONFIG1;
oPWMPERIOD1 <= ww_oPWMPERIOD1;
oPWMDUTY1 <= ww_oPWMDUTY1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inWrRdy~combout\ <= NOT \inWrRdy~combout\;
\ALT_INV_inRdRdy~combout\ <= NOT \inRdRdy~combout\;
ALT_INV_sPWMDUTY1(13) <= NOT sPWMDUTY1(13);
ALT_INV_sPWMDUTY1(12) <= NOT sPWMDUTY1(12);
ALT_INV_sPWMDUTY1(5) <= NOT sPWMDUTY1(5);
ALT_INV_sPWMDUTY1(4) <= NOT sPWMDUTY1(4);
ALT_INV_sPWMPERIOD1(13) <= NOT sPWMPERIOD1(13);
ALT_INV_sPWMPERIOD1(5) <= NOT sPWMPERIOD1(5);
ALT_INV_sPWMCONFIG1(12) <= NOT sPWMCONFIG1(12);
ALT_INV_sPWMCONFIG1(4) <= NOT sPWMCONFIG1(4);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inRdRdy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inRdRdy,
	combout => \inRdRdy~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(0),
	combout => \iAddress~combout\(0));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inWrRdy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inWrRdy,
	combout => \inWrRdy~combout\);

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(0),
	combout => \iData~combout\(0));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inRESET~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inRESET,
	combout => \inRESET~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(7),
	combout => \iAddress~combout\(7));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(2),
	combout => \iAddress~combout\(2));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(4),
	combout => \iAddress~combout\(4));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(5),
	combout => \iAddress~combout\(5));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(3),
	combout => \iAddress~combout\(3));

-- Location: LC_X16_Y5_N2
\sPWMDUTY1[0]~0\ : maxv_lcell
-- Equation(s):
-- \sPWMDUTY1[0]~0_combout\ = (!\iAddress~combout\(2) & (!\iAddress~combout\(4) & (!\iAddress~combout\(5) & !\iAddress~combout\(3))))

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
	dataa => \iAddress~combout\(2),
	datab => \iAddress~combout\(4),
	datac => \iAddress~combout\(5),
	datad => \iAddress~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMDUTY1[0]~0_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(6),
	combout => \iAddress~combout\(6));

-- Location: LC_X3_Y5_N0
\sPWMDUTY1[0]~1\ : maxv_lcell
-- Equation(s):
-- \sPWMDUTY1[0]~1_combout\ = ((!\iAddress~combout\(7) & (\sPWMDUTY1[0]~0_combout\ & !\iAddress~combout\(6))))

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
	datab => \iAddress~combout\(7),
	datac => \sPWMDUTY1[0]~0_combout\,
	datad => \iAddress~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMDUTY1[0]~1_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(1),
	combout => \iAddress~combout\(1));

-- Location: LC_X3_Y8_N6
\sPWMCONFIG1[0]~0\ : maxv_lcell
-- Equation(s):
-- \sPWMCONFIG1[0]~0_combout\ = (!\iAddress~combout\(0) & (\inRESET~combout\ & (\sPWMDUTY1[0]~1_combout\ & !\iAddress~combout\(1))))

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
	dataa => \iAddress~combout\(0),
	datab => \inRESET~combout\,
	datac => \sPWMDUTY1[0]~1_combout\,
	datad => \iAddress~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMCONFIG1[0]~0_combout\);

-- Location: LC_X9_Y8_N5
\sPWMCONFIG1[0]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(0) = DFFEAS((((\iData~combout\(0)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datad => \iData~combout\(0),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(0));

-- Location: LC_X5_Y8_N2
\sPWMDUTY1[0]~2\ : maxv_lcell
-- Equation(s):
-- \sPWMDUTY1[0]~2_combout\ = (!\iAddress~combout\(0) & (\inRESET~combout\ & (\sPWMDUTY1[0]~1_combout\ & \iAddress~combout\(1))))

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
	dataa => \iAddress~combout\(0),
	datab => \inRESET~combout\,
	datac => \sPWMDUTY1[0]~1_combout\,
	datad => \iAddress~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMDUTY1[0]~2_combout\);

-- Location: LC_X9_Y8_N0
\sPWMDUTY1[0]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(0) = DFFEAS((((\iData~combout\(0)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datad => \iData~combout\(0),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(0));

-- Location: LC_X5_Y8_N8
\sPWMPERIOD1[0]~0\ : maxv_lcell
-- Equation(s):
-- \sPWMPERIOD1[0]~0_combout\ = (\iAddress~combout\(0) & (\inRESET~combout\ & (\sPWMDUTY1[0]~1_combout\ & !\iAddress~combout\(1))))

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
	dataa => \iAddress~combout\(0),
	datab => \inRESET~combout\,
	datac => \sPWMDUTY1[0]~1_combout\,
	datad => \iAddress~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMPERIOD1[0]~0_combout\);

-- Location: LC_X7_Y8_N4
\sPWMPERIOD1[0]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(0) = DFFEAS(((\iData~combout\(0))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(0),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(0));

-- Location: LC_X3_Y8_N9
\oData[1]~0\ : maxv_lcell
-- Equation(s):
-- \oData[1]~0_combout\ = (((\iAddress~combout\(0) & \iAddress~combout\(1))) # (!\sPWMDUTY1[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \iAddress~combout\(0),
	datac => \sPWMDUTY1[0]~1_combout\,
	datad => \iAddress~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \oData[1]~0_combout\);

-- Location: LC_X8_Y8_N6
\oData[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[0]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(0))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(0))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(0), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(0),
	datac => sPWMDUTY1(0),
	datad => sPWMPERIOD1(0),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[0]~reg0_regout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(1),
	combout => \iData~combout\(1));

-- Location: LC_X9_Y8_N4
\sPWMCONFIG1[1]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(1) = DFFEAS(((\iData~combout\(1))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(1),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(1));

-- Location: LC_X9_Y8_N9
\sPWMDUTY1[1]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(1) = DFFEAS(((\iData~combout\(1))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(1),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(1));

-- Location: LC_X7_Y8_N7
\sPWMPERIOD1[1]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(1) = DFFEAS(((\iData~combout\(1))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(1),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(1));

-- Location: LC_X8_Y8_N4
\oData[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[1]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(1))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(1))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(1), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(1),
	datac => sPWMDUTY1(1),
	datad => sPWMPERIOD1(1),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[1]~reg0_regout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(2),
	combout => \iData~combout\(2));

-- Location: LC_X9_Y7_N6
\sPWMCONFIG1[2]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(2) = DFFEAS((\iData~combout\(2)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(2),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(2));

-- Location: LC_X11_Y7_N2
\sPWMDUTY1[2]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(2) = DFFEAS((\iData~combout\(2)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(2),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(2));

-- Location: LC_X9_Y7_N4
\sPWMPERIOD1[2]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(2) = DFFEAS((\iData~combout\(2)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(2),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(2));

-- Location: LC_X10_Y7_N5
\oData[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[2]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(2))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(2))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(2), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(2),
	datac => sPWMDUTY1(2),
	datad => sPWMPERIOD1(2),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[2]~reg0_regout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(3),
	combout => \iData~combout\(3));

-- Location: LC_X6_Y8_N4
\sPWMCONFIG1[3]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(3) = DFFEAS(((\iData~combout\(3))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(3),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(3));

-- Location: LC_X6_Y8_N3
\sPWMDUTY1[3]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(3) = DFFEAS((\iData~combout\(3)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(3),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(3));

-- Location: LC_X4_Y8_N5
\sPWMPERIOD1[3]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(3) = DFFEAS(((\iData~combout\(3))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(3),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(3));

-- Location: LC_X5_Y8_N5
\oData[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[3]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(3))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(3))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(3), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(3),
	datac => sPWMDUTY1(3),
	datad => sPWMPERIOD1(3),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[3]~reg0_regout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(4),
	combout => \iData~combout\(4));

-- Location: LC_X9_Y8_N8
\sPWMCONFIG1[4]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(4) = DFFEAS((!\iData~combout\(4)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(4),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(4));

-- Location: LC_X7_Y8_N3
\sPWMDUTY1[4]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(4) = DFFEAS((!\iData~combout\(4)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(4),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(4));

-- Location: LC_X7_Y8_N9
\sPWMDUTY1[4]~_wirecell\ : maxv_lcell
-- Equation(s):
-- \sPWMDUTY1[4]~_wirecell_combout\ = (((!sPWMDUTY1(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => sPWMDUTY1(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMDUTY1[4]~_wirecell_combout\);

-- Location: LC_X7_Y8_N5
\sPWMPERIOD1[4]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(4) = DFFEAS((\iData~combout\(4)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(4),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(4));

-- Location: LC_X8_Y8_N5
\oData[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[4]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(4))))) # (!\iAddress~combout\(0) & (!sPWMCONFIG1(4))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, \sPWMDUTY1[4]~_wirecell_combout\, , \oData[1]~0_combout\, 
-- \iAddress~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(4),
	datac => \sPWMDUTY1[4]~_wirecell_combout\,
	datad => sPWMPERIOD1(4),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[4]~reg0_regout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(5),
	combout => \iData~combout\(5));

-- Location: LC_X9_Y8_N1
\sPWMCONFIG1[5]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(5) = DFFEAS((\iData~combout\(5)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(5),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(5));

-- Location: LC_X9_Y8_N7
\sPWMDUTY1[5]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(5) = DFFEAS(((!\iData~combout\(5))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(5),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(5));

-- Location: LC_X9_Y8_N3
\sPWMDUTY1[5]~_wirecell\ : maxv_lcell
-- Equation(s):
-- \sPWMDUTY1[5]~_wirecell_combout\ = (((!sPWMDUTY1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => sPWMDUTY1(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMDUTY1[5]~_wirecell_combout\);

-- Location: LC_X9_Y7_N8
\sPWMPERIOD1[5]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(5) = DFFEAS((((!\iData~combout\(5)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datad => \iData~combout\(5),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(5));

-- Location: LC_X8_Y8_N2
\oData[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[5]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((!sPWMPERIOD1(5))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(5))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, \sPWMDUTY1[5]~_wirecell_combout\, , \oData[1]~0_combout\, 
-- \iAddress~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22ee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => sPWMCONFIG1(5),
	datab => \iAddress~combout\(0),
	datac => \sPWMDUTY1[5]~_wirecell_combout\,
	datad => sPWMPERIOD1(5),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[5]~reg0_regout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(6),
	combout => \iData~combout\(6));

-- Location: LC_X2_Y8_N8
\sPWMCONFIG1[6]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(6) = DFFEAS(((\iData~combout\(6))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(6),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(6));

-- Location: LC_X4_Y8_N3
\sPWMDUTY1[6]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(6) = DFFEAS(((\iData~combout\(6))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(6),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(6));

-- Location: LC_X2_Y8_N2
\sPWMPERIOD1[6]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(6) = DFFEAS(((\iData~combout\(6))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(6),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(6));

-- Location: LC_X3_Y8_N4
\oData[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[6]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(6))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(6))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(6), , \oData[1]~0_combout\, \iAddress~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => sPWMCONFIG1(6),
	datab => \iAddress~combout\(0),
	datac => sPWMDUTY1(6),
	datad => sPWMPERIOD1(6),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[6]~reg0_regout\);

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(7),
	combout => \iData~combout\(7));

-- Location: LC_X2_Y8_N7
\sPWMCONFIG1[7]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(7) = DFFEAS(GND, !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, \iData~combout\(7), , , VCC)

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
	clk => \ALT_INV_inWrRdy~combout\,
	datac => \iData~combout\(7),
	aclr => GND,
	sload => VCC,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(7));

-- Location: LC_X6_Y8_N1
\sPWMDUTY1[7]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(7) = DFFEAS(((\iData~combout\(7))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(7),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(7));

-- Location: LC_X2_Y8_N0
\sPWMPERIOD1[7]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(7) = DFFEAS(GND, !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, \iData~combout\(7), , , VCC)

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
	clk => \ALT_INV_inWrRdy~combout\,
	datac => \iData~combout\(7),
	aclr => GND,
	sload => VCC,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(7));

-- Location: LC_X3_Y8_N8
\oData[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[7]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(7))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(7))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(7), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(7),
	datac => sPWMDUTY1(7),
	datad => sPWMPERIOD1(7),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[7]~reg0_regout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(8),
	combout => \iData~combout\(8));

-- Location: LC_X2_Y8_N6
\sPWMPERIOD1[8]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(8) = DFFEAS(((\iData~combout\(8))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(8),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(8));

-- Location: LC_X4_Y8_N7
\sPWMDUTY1[8]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(8) = DFFEAS(((\iData~combout\(8))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(8),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(8));

-- Location: LC_X1_Y8_N1
\sPWMCONFIG1[8]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(8) = DFFEAS((((\iData~combout\(8)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datad => \iData~combout\(8),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(8));

-- Location: LC_X3_Y8_N5
\oData[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[8]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (sPWMPERIOD1(8))) # (!\iAddress~combout\(0) & (((sPWMCONFIG1(8))))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(8), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMPERIOD1(8),
	datac => sPWMDUTY1(8),
	datad => sPWMCONFIG1(8),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[8]~reg0_regout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(9),
	combout => \iData~combout\(9));

-- Location: LC_X9_Y8_N2
\sPWMCONFIG1[9]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(9) = DFFEAS((\iData~combout\(9)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(9),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(9));

-- Location: LC_X9_Y8_N6
\sPWMDUTY1[9]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(9) = DFFEAS((\iData~combout\(9)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(9),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(9));

-- Location: LC_X7_Y8_N0
\sPWMPERIOD1[9]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(9) = DFFEAS(((\iData~combout\(9))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(9),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(9));

-- Location: LC_X8_Y8_N3
\oData[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[9]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(9))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(9))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(9), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(9),
	datac => sPWMDUTY1(9),
	datad => sPWMPERIOD1(9),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[9]~reg0_regout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(10),
	combout => \iData~combout\(10));

-- Location: LC_X6_Y8_N5
\sPWMCONFIG1[10]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(10) = DFFEAS(GND, !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, \iData~combout\(10), , , VCC)

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
	clk => \ALT_INV_inWrRdy~combout\,
	datac => \iData~combout\(10),
	aclr => GND,
	sload => VCC,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(10));

-- Location: LC_X6_Y8_N2
\sPWMDUTY1[10]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(10) = DFFEAS(GND, !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, \iData~combout\(10), , , VCC)

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
	clk => \ALT_INV_inWrRdy~combout\,
	datac => \iData~combout\(10),
	aclr => GND,
	sload => VCC,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(10));

-- Location: LC_X4_Y8_N0
\sPWMPERIOD1[10]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(10) = DFFEAS((\iData~combout\(10)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(10),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(10));

-- Location: LC_X5_Y8_N9
\oData[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[10]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(10))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(10))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(10), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(10),
	datac => sPWMDUTY1(10),
	datad => sPWMPERIOD1(10),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[10]~reg0_regout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(11),
	combout => \iData~combout\(11));

-- Location: LC_X2_Y8_N5
\sPWMCONFIG1[11]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(11) = DFFEAS((((\iData~combout\(11)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datad => \iData~combout\(11),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(11));

-- Location: LC_X4_Y8_N9
\sPWMDUTY1[11]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(11) = DFFEAS(((\iData~combout\(11))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(11),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(11));

-- Location: LC_X2_Y8_N9
\sPWMPERIOD1[11]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(11) = DFFEAS((((\iData~combout\(11)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datad => \iData~combout\(11),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(11));

-- Location: LC_X3_Y8_N2
\oData[11]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[11]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(11))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(11))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(11), , \oData[1]~0_combout\, \iAddress~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => sPWMCONFIG1(11),
	datab => \iAddress~combout\(0),
	datac => sPWMDUTY1(11),
	datad => sPWMPERIOD1(11),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[11]~reg0_regout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(12),
	combout => \iData~combout\(12));

-- Location: LC_X6_Y8_N8
\sPWMCONFIG1[12]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(12) = DFFEAS((!\iData~combout\(12)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(12),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(12));

-- Location: LC_X4_Y8_N1
\sPWMDUTY1[12]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(12) = DFFEAS((!\iData~combout\(12)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(12),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(12));

-- Location: LC_X4_Y8_N6
\sPWMDUTY1[12]~_wirecell\ : maxv_lcell
-- Equation(s):
-- \sPWMDUTY1[12]~_wirecell_combout\ = (((!sPWMDUTY1(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => sPWMDUTY1(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMDUTY1[12]~_wirecell_combout\);

-- Location: LC_X7_Y8_N6
\sPWMPERIOD1[12]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(12) = DFFEAS((\iData~combout\(12)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(12),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(12));

-- Location: LC_X5_Y8_N4
\oData[12]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[12]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(12))))) # (!\iAddress~combout\(0) & (!sPWMCONFIG1(12))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, \sPWMDUTY1[12]~_wirecell_combout\, , \oData[1]~0_combout\, 
-- \iAddress~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMCONFIG1(12),
	datac => \sPWMDUTY1[12]~_wirecell_combout\,
	datad => sPWMPERIOD1(12),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[12]~reg0_regout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(13),
	combout => \iData~combout\(13));

-- Location: LC_X7_Y8_N8
\sPWMPERIOD1[13]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(13) = DFFEAS((((!\iData~combout\(13)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datac => \iData~combout\(13),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(13));

-- Location: LC_X4_Y8_N4
\sPWMDUTY1[13]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(13) = DFFEAS((((!\iData~combout\(13)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datac => \iData~combout\(13),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(13));

-- Location: LC_X4_Y8_N8
\sPWMDUTY1[13]~_wirecell\ : maxv_lcell
-- Equation(s):
-- \sPWMDUTY1[13]~_wirecell_combout\ = (((!sPWMDUTY1(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => sPWMDUTY1(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sPWMDUTY1[13]~_wirecell_combout\);

-- Location: LC_X2_Y8_N4
\sPWMCONFIG1[13]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(13) = DFFEAS(((\iData~combout\(13))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(13),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(13));

-- Location: LC_X5_Y8_N6
\oData[13]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[13]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (!sPWMPERIOD1(13))) # (!\iAddress~combout\(0) & (((sPWMCONFIG1(13))))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, \sPWMDUTY1[13]~_wirecell_combout\, , \oData[1]~0_combout\, 
-- \iAddress~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7722",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMPERIOD1(13),
	datac => \sPWMDUTY1[13]~_wirecell_combout\,
	datad => sPWMCONFIG1(13),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[13]~reg0_regout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(14),
	combout => \iData~combout\(14));

-- Location: LC_X2_Y8_N1
\sPWMCONFIG1[14]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(14) = DFFEAS(((\iData~combout\(14))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(14),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(14));

-- Location: LC_X4_Y8_N2
\sPWMDUTY1[14]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(14) = DFFEAS(((\iData~combout\(14))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(14),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(14));

-- Location: LC_X2_Y8_N3
\sPWMPERIOD1[14]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(14) = DFFEAS(((\iData~combout\(14))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inWrRdy~combout\,
	datab => \iData~combout\(14),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(14));

-- Location: LC_X3_Y8_N7
\oData[14]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[14]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (((sPWMPERIOD1(14))))) # (!\iAddress~combout\(0) & (sPWMCONFIG1(14))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(14), , \oData[1]~0_combout\, \iAddress~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => sPWMCONFIG1(14),
	datab => \iAddress~combout\(0),
	datac => sPWMDUTY1(14),
	datad => sPWMPERIOD1(14),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[14]~reg0_regout\);

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iData[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iData(15),
	combout => \iData~combout\(15));

-- Location: LC_X10_Y8_N4
\sPWMPERIOD1[15]\ : maxv_lcell
-- Equation(s):
-- sPWMPERIOD1(15) = DFFEAS((\iData~combout\(15)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMPERIOD1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(15),
	aclr => GND,
	ena => \sPWMPERIOD1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMPERIOD1(15));

-- Location: LC_X10_Y8_N9
\sPWMDUTY1[15]\ : maxv_lcell
-- Equation(s):
-- sPWMDUTY1(15) = DFFEAS((\iData~combout\(15)), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMDUTY1[0]~2_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	dataa => \iData~combout\(15),
	aclr => GND,
	ena => \sPWMDUTY1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMDUTY1(15));

-- Location: LC_X12_Y8_N1
\sPWMCONFIG1[15]\ : maxv_lcell
-- Equation(s):
-- sPWMCONFIG1(15) = DFFEAS((((\iData~combout\(15)))), !GLOBAL(\inWrRdy~combout\), VCC, , \sPWMCONFIG1[0]~0_combout\, , , , )

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
	clk => \ALT_INV_inWrRdy~combout\,
	datad => \iData~combout\(15),
	aclr => GND,
	ena => \sPWMCONFIG1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sPWMCONFIG1(15));

-- Location: LC_X11_Y8_N2
\oData[15]~reg0\ : maxv_lcell
-- Equation(s):
-- \oData[15]~reg0_regout\ = DFFEAS((\iAddress~combout\(0) & (sPWMPERIOD1(15))) # (!\iAddress~combout\(0) & (((sPWMCONFIG1(15))))), !GLOBAL(\inRdRdy~combout\), VCC, , \inRESET~combout\, sPWMDUTY1(15), , \oData[1]~0_combout\, \iAddress~combout\(1))

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
	clk => \ALT_INV_inRdRdy~combout\,
	dataa => \iAddress~combout\(0),
	datab => sPWMPERIOD1(15),
	datac => sPWMDUTY1(15),
	datad => sPWMCONFIG1(15),
	aclr => GND,
	sclr => \oData[1]~0_combout\,
	sload => \iAddress~combout\(1),
	ena => \inRESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \oData[15]~reg0_regout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iCLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iCLK);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(8));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(9));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(10));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(11));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(12));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(13));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(14));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iAddress[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iAddress(15));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[0]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(0));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[1]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[2]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[3]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[4]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(4));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[5]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(5));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[6]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(6));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[7]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(7));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[8]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(8));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[9]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(9));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[10]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(10));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[11]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(11));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[12]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(12));

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[13]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(13));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[14]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(14));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oData[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \oData[15]~reg0_regout\,
	oe => VCC,
	padio => ww_oData(15));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(0),
	oe => VCC,
	padio => ww_oPWMCONFIG1(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(1),
	oe => VCC,
	padio => ww_oPWMCONFIG1(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(2),
	oe => VCC,
	padio => ww_oPWMCONFIG1(2));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(3),
	oe => VCC,
	padio => ww_oPWMCONFIG1(3));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMCONFIG1(4),
	oe => VCC,
	padio => ww_oPWMCONFIG1(4));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(5),
	oe => VCC,
	padio => ww_oPWMCONFIG1(5));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(6),
	oe => VCC,
	padio => ww_oPWMCONFIG1(6));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(7),
	oe => VCC,
	padio => ww_oPWMCONFIG1(7));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(8),
	oe => VCC,
	padio => ww_oPWMCONFIG1(8));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(9),
	oe => VCC,
	padio => ww_oPWMCONFIG1(9));

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(10),
	oe => VCC,
	padio => ww_oPWMCONFIG1(10));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(11),
	oe => VCC,
	padio => ww_oPWMCONFIG1(11));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMCONFIG1(12),
	oe => VCC,
	padio => ww_oPWMCONFIG1(12));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(13),
	oe => VCC,
	padio => ww_oPWMCONFIG1(13));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(14),
	oe => VCC,
	padio => ww_oPWMCONFIG1(14));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMCONFIG1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMCONFIG1(15),
	oe => VCC,
	padio => ww_oPWMCONFIG1(15));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(0),
	oe => VCC,
	padio => ww_oPWMPERIOD1(0));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(1),
	oe => VCC,
	padio => ww_oPWMPERIOD1(1));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(2),
	oe => VCC,
	padio => ww_oPWMPERIOD1(2));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(3),
	oe => VCC,
	padio => ww_oPWMPERIOD1(3));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(4),
	oe => VCC,
	padio => ww_oPWMPERIOD1(4));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMPERIOD1(5),
	oe => VCC,
	padio => ww_oPWMPERIOD1(5));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(6),
	oe => VCC,
	padio => ww_oPWMPERIOD1(6));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(7),
	oe => VCC,
	padio => ww_oPWMPERIOD1(7));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(8),
	oe => VCC,
	padio => ww_oPWMPERIOD1(8));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(9),
	oe => VCC,
	padio => ww_oPWMPERIOD1(9));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(10),
	oe => VCC,
	padio => ww_oPWMPERIOD1(10));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(11),
	oe => VCC,
	padio => ww_oPWMPERIOD1(11));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(12),
	oe => VCC,
	padio => ww_oPWMPERIOD1(12));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMPERIOD1(13),
	oe => VCC,
	padio => ww_oPWMPERIOD1(13));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(14),
	oe => VCC,
	padio => ww_oPWMPERIOD1(14));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMPERIOD1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMPERIOD1(15),
	oe => VCC,
	padio => ww_oPWMPERIOD1(15));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(0),
	oe => VCC,
	padio => ww_oPWMDUTY1(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(1),
	oe => VCC,
	padio => ww_oPWMDUTY1(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(2),
	oe => VCC,
	padio => ww_oPWMDUTY1(2));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(3),
	oe => VCC,
	padio => ww_oPWMDUTY1(3));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMDUTY1(4),
	oe => VCC,
	padio => ww_oPWMDUTY1(4));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMDUTY1(5),
	oe => VCC,
	padio => ww_oPWMDUTY1(5));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(6),
	oe => VCC,
	padio => ww_oPWMDUTY1(6));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(7),
	oe => VCC,
	padio => ww_oPWMDUTY1(7));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(8),
	oe => VCC,
	padio => ww_oPWMDUTY1(8));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(9),
	oe => VCC,
	padio => ww_oPWMDUTY1(9));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(10),
	oe => VCC,
	padio => ww_oPWMDUTY1(10));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(11),
	oe => VCC,
	padio => ww_oPWMDUTY1(11));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMDUTY1(12),
	oe => VCC,
	padio => ww_oPWMDUTY1(12));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sPWMDUTY1(13),
	oe => VCC,
	padio => ww_oPWMDUTY1(13));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(14),
	oe => VCC,
	padio => ww_oPWMDUTY1(14));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oPWMDUTY1[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sPWMDUTY1(15),
	oe => VCC,
	padio => ww_oPWMDUTY1(15));
END structure;


