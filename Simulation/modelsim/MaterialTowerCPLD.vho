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

-- DATE "07/13/2018 18:10:21"

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

ENTITY 	INPUTMODULE IS
    PORT (
	iCLK : IN std_logic;
	inReset : IN std_logic;
	iInputs : IN std_logic_vector(9 DOWNTO 0);
	iDiffInputs : IN std_logic_vector(5 DOWNTO 0);
	oInputStatus : OUT std_logic_vector(15 DOWNTO 0);
	oInputs : OUT std_logic_vector(15 DOWNTO 0)
	);
END INPUTMODULE;

-- Design Ports Information
-- oInputStatus[0]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[1]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[2]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[3]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[4]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[5]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[6]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[7]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[8]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[9]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[10]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[11]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[12]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[13]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[14]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputStatus[15]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[0]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[1]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[3]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[4]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[5]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[6]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[8]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[9]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[10]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[11]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[12]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[13]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[14]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oInputs[15]	=>  Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- iInputs[0]	=>  Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[2]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[3]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[4]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[5]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[6]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[7]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[8]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iInputs[9]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInputs[4]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInputs[2]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInputs[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iCLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- inReset	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInputs[1]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInputs[3]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iDiffInputs[5]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF INPUTMODULE IS
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
SIGNAL ww_inReset : std_logic;
SIGNAL ww_iInputs : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_iDiffInputs : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_oInputStatus : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_oInputs : std_logic_vector(15 DOWNTO 0);
SIGNAL \iCLK~combout\ : std_logic;
SIGNAL \inReset~combout\ : std_logic;
SIGNAL \sDiffStatus[0][0]~regout\ : std_logic;
SIGNAL \sDiffStatus[1][0]~regout\ : std_logic;
SIGNAL \sDiffStatus[2][0]~regout\ : std_logic;
SIGNAL \sDiffStatus[3][0]~regout\ : std_logic;
SIGNAL \sDiffStatus[4][0]~regout\ : std_logic;
SIGNAL \sDiffStatus[0][1]~regout\ : std_logic;
SIGNAL \sDiffStatus[1][1]~regout\ : std_logic;
SIGNAL \sDiffStatus[2][1]~regout\ : std_logic;
SIGNAL \sDiffStatus[3][1]~regout\ : std_logic;
SIGNAL \sDiffStatus[4][1]~regout\ : std_logic;
SIGNAL \sDiffStatus[0][2]~regout\ : std_logic;
SIGNAL \sDiffStatus[1][2]~regout\ : std_logic;
SIGNAL \sDiffStatus[2][2]~regout\ : std_logic;
SIGNAL \sDiffStatus[3][2]~regout\ : std_logic;
SIGNAL \sDiffStatus[4][2]~regout\ : std_logic;
SIGNAL \iInputs~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \iDiffInputs~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_inReset~combout\ : std_logic;

BEGIN

ww_iCLK <= iCLK;
ww_inReset <= inReset;
ww_iInputs <= iInputs;
ww_iDiffInputs <= iDiffInputs;
oInputStatus <= ww_oInputStatus;
oInputs <= ww_oInputs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inReset~combout\ <= NOT \inReset~combout\;

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

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInputs[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInputs(1),
	combout => \iDiffInputs~combout\(1));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInputs[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInputs(0),
	combout => \iDiffInputs~combout\(0));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\inReset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_inReset,
	combout => \inReset~combout\);

-- Location: LC_X1_Y6_N5
\sDiffStatus[0][0]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[0][0]~regout\ = DFFEAS(((\iDiffInputs~combout\(1) $ (\iDiffInputs~combout\(0)))), GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , , , , )

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
	datac => \iDiffInputs~combout\(1),
	datad => \iDiffInputs~combout\(0),
	aclr => \ALT_INV_inReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[0][0]~regout\);

-- Location: LC_X1_Y6_N0
\sDiffStatus[1][0]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[1][0]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[0][0]~regout\, , , VCC)

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
	datac => \sDiffStatus[0][0]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[1][0]~regout\);

-- Location: LC_X1_Y6_N6
\sDiffStatus[2][0]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[2][0]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[1][0]~regout\, , , VCC)

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
	datac => \sDiffStatus[1][0]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[2][0]~regout\);

-- Location: LC_X1_Y6_N7
\sDiffStatus[3][0]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[3][0]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[2][0]~regout\, , , VCC)

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
	datac => \sDiffStatus[2][0]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[3][0]~regout\);

-- Location: LC_X1_Y6_N4
\sDiffStatus[4][0]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[4][0]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[3][0]~regout\, , , VCC)

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
	datac => \sDiffStatus[3][0]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[4][0]~regout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInputs[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInputs(3),
	combout => \iDiffInputs~combout\(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInputs[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInputs(2),
	combout => \iDiffInputs~combout\(2));

-- Location: LC_X1_Y9_N7
\sDiffStatus[0][1]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[0][1]~regout\ = DFFEAS((\iDiffInputs~combout\(3) $ ((\iDiffInputs~combout\(2)))), GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \iDiffInputs~combout\(3),
	datac => \iDiffInputs~combout\(2),
	aclr => \ALT_INV_inReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[0][1]~regout\);

-- Location: LC_X1_Y9_N6
\sDiffStatus[1][1]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[1][1]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[0][1]~regout\, , , VCC)

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
	datac => \sDiffStatus[0][1]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[1][1]~regout\);

-- Location: LC_X1_Y9_N5
\sDiffStatus[2][1]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[2][1]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[1][1]~regout\, , , VCC)

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
	datac => \sDiffStatus[1][1]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[2][1]~regout\);

-- Location: LC_X1_Y9_N0
\sDiffStatus[3][1]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[3][1]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[2][1]~regout\, , , VCC)

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
	datac => \sDiffStatus[2][1]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[3][1]~regout\);

-- Location: LC_X1_Y9_N4
\sDiffStatus[4][1]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[4][1]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[3][1]~regout\, , , VCC)

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
	datac => \sDiffStatus[3][1]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[4][1]~regout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInputs[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInputs(4),
	combout => \iDiffInputs~combout\(4));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iDiffInputs[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iDiffInputs(5),
	combout => \iDiffInputs~combout\(5));

-- Location: LC_X16_Y5_N5
\sDiffStatus[0][2]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[0][2]~regout\ = DFFEAS((\iDiffInputs~combout\(4) $ (((\iDiffInputs~combout\(5))))), GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~combout\,
	datab => \iDiffInputs~combout\(4),
	datad => \iDiffInputs~combout\(5),
	aclr => \ALT_INV_inReset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[0][2]~regout\);

-- Location: LC_X16_Y5_N6
\sDiffStatus[1][2]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[1][2]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[0][2]~regout\, , , VCC)

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
	datac => \sDiffStatus[0][2]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[1][2]~regout\);

-- Location: LC_X16_Y5_N4
\sDiffStatus[2][2]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[2][2]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[1][2]~regout\, , , VCC)

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
	datac => \sDiffStatus[1][2]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[2][2]~regout\);

-- Location: LC_X16_Y5_N0
\sDiffStatus[3][2]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[3][2]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[2][2]~regout\, , , VCC)

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
	datac => \sDiffStatus[2][2]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[3][2]~regout\);

-- Location: LC_X16_Y5_N2
\sDiffStatus[4][2]\ : maxv_lcell
-- Equation(s):
-- \sDiffStatus[4][2]~regout\ = DFFEAS(GND, GLOBAL(\iCLK~combout\), GLOBAL(\inReset~combout\), , , \sDiffStatus[3][2]~regout\, , , VCC)

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
	datac => \sDiffStatus[3][2]~regout\,
	aclr => \ALT_INV_inReset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sDiffStatus[4][2]~regout\);

-- Location: PIN_107,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(0),
	combout => \iInputs~combout\(0));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(1),
	combout => \iInputs~combout\(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(2),
	combout => \iInputs~combout\(2));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(3),
	combout => \iInputs~combout\(3));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(4),
	combout => \iInputs~combout\(4));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(5),
	combout => \iInputs~combout\(5));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(6),
	combout => \iInputs~combout\(6));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(7),
	combout => \iInputs~combout\(7));

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(8),
	combout => \iInputs~combout\(8));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iInputs[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_iInputs(9),
	combout => \iInputs~combout\(9));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sDiffStatus[4][0]~regout\,
	oe => VCC,
	padio => ww_oInputStatus(0));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sDiffStatus[4][1]~regout\,
	oe => VCC,
	padio => ww_oInputStatus(1));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sDiffStatus[4][2]~regout\,
	oe => VCC,
	padio => ww_oInputStatus(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(3));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(4));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(5));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(6));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(7));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(8));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(9));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(10));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(11));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(12));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(13));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(14));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputStatus[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputStatus(15));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(0),
	oe => VCC,
	padio => ww_oInputs(0));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(1),
	oe => VCC,
	padio => ww_oInputs(1));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(2),
	oe => VCC,
	padio => ww_oInputs(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(3),
	oe => VCC,
	padio => ww_oInputs(3));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(4),
	oe => VCC,
	padio => ww_oInputs(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(5),
	oe => VCC,
	padio => ww_oInputs(5));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(6),
	oe => VCC,
	padio => ww_oInputs(6));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(7),
	oe => VCC,
	padio => ww_oInputs(7));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(8),
	oe => VCC,
	padio => ww_oInputs(8));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iInputs~combout\(9),
	oe => VCC,
	padio => ww_oInputs(9));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputs(10));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iDiffInputs~combout\(4),
	oe => VCC,
	padio => ww_oInputs(11));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iDiffInputs~combout\(2),
	oe => VCC,
	padio => ww_oInputs(12));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \iDiffInputs~combout\(0),
	oe => VCC,
	padio => ww_oInputs(13));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputs(14));

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oInputs[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_oInputs(15));
END structure;


