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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 14.1.0 Build 186 12/03/2014 SJ Full Version"
-- CREATED		"Thu Apr 12 18:05:48 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MaterialTowerCPLD IS 
	PORT
	(
		nRD :  IN  STD_LOGIC;
		nWR :  IN  STD_LOGIC;
		nCS :  IN  STD_LOGIC;
		nADV :  IN  STD_LOGIC;
		nWAIT :  OUT  STD_LOGIC;
		ENC_1_A :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		ENC_1_B :  IN  STD_LOGIC;
		ENC_1_N :  IN  STD_LOGIC;
		ENC_2_A :  IN  STD_LOGIC;
		ENC_2_B :  IN  STD_LOGIC;
		ENC_2_N :  IN  STD_LOGIC;
		PWM_LED :  IN  STD_LOGIC;
		CC_CAN1_TXD :  IN  STD_LOGIC;
		CC_CAN2_TXD :  IN  STD_LOGIC;
		CAN1_RXD :  IN  STD_LOGIC;
		CAN2_RXD :  IN  STD_LOGIC;
		EN_EDIF_CAN :  IN  STD_LOGIC;
		FAN_PULSE :  IN  STD_LOGIC;
		SDCLKO :  IN  STD_LOGIC;
		CPLD_INT :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
		AD :  INOUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		DIP_SWITCH :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		IO_Inputs	: IN STD_LOGIC_VECTOR(23 DOWNTO 0);
	
		ENC_1_PS :  OUT  STD_LOGIC;
		ENC_1_DIR :  OUT  STD_LOGIC;
		ENC_1_INX :  OUT  STD_LOGIC;
		ENC_2_PS :  OUT  STD_LOGIC;
		ENC_2_DIR :  OUT  STD_LOGIC;
		ENC_2_INX :  OUT  STD_LOGIC;
		CAN1_TXD :  OUT  STD_LOGIC;
		CAN2_TXD :  OUT  STD_LOGIC;
		CC_CAN1_RXD :  OUT  STD_LOGIC;
		CC_CAN2_RXD :  OUT  STD_LOGIC;
		FPGA_OK :  OUT  STD_LOGIC;
		FAN_PWM :  OUT  STD_LOGIC;
		LED_PWM :  OUT  STD_LOGIC;
		PIZZA_CALIBRATION :  OUT  STD_LOGIC;
		ENC_ERR :  OUT  STD_LOGIC;
		RST :  OUT  STD_LOGIC;
		IO_Output :  OUT  STD_LOGIC_VECTOR(23 DOWNTO 0);
		Seg_LED :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END MaterialTowerCPLD;

ARCHITECTURE bdf_type OF MaterialTowerCPLD IS 

COMPONENT system_reset
	PORT(CLK : IN STD_LOGIC;
		 SW_Reset : IN STD_LOGIC;
		 Wr_timer : IN STD_LOGIC;
		 Trigger_Reset : IN STD_LOGIC;
		 H_timer : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 HW_Reset : OUT STD_LOGIC;
		 R_timer : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sram_io
GENERIC (CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0);
			WIDTH : INTEGER
			);
	PORT(nRESET : IN STD_LOGIC;
		 nRD : IN STD_LOGIC;
		 nWR : IN STD_LOGIC;
		 nCS : IN STD_LOGIC;
		 nADV : IN STD_LOGIC;
		 nWAIT : OUT STD_LOGIC;
		 DATA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 IO_DAT_RD : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 IO_ADDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 IO_DAT_WR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT io_space
GENERIC (BUS_WIDTH : INTEGER;
			CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0);
			ENC_WIDTH : INTEGER;
			FAN_WIDTH : INTEGER
			);
	PORT (
	Clk : IN STD_LOGIC;
	DIP_SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Enc_MT1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Enc_MT2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	H_timer : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_ADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_DAT_RD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_DAT_WR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_RDY_RD : IN STD_LOGIC;
	IO_RDY_WR : IN STD_LOGIC;
	nRESET : IN STD_LOGIC;
  iInputs : IN std_logic_vector(23 downto 0);
  oOutputs : OUT std_logic_vector(23 downto 0);
	Pizza_Cali : OUT STD_LOGIC;
	PWM_Duty : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	PWM_Frq : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	PWM_ONOFF : OUT STD_LOGIC;
	R_timer : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Seg_DP : IN STD_LOGIC;
	Seg_LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Trigger_Reset : OUT STD_LOGIC;
	Wr_MT1 : OUT STD_LOGIC;
	Wr_MT2 : OUT STD_LOGIC;
	Wr_PWM : OUT STD_LOGIC;
	Wr_timer : OUT STD_LOGIC;
	WrVal_MT1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	WrVal_MT2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT quaddectodirpulse
GENERIC (CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0);
			ENC_WIDTH : INTEGER
			);
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 N : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 Wr : IN STD_LOGIC;
		 WrVal : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 PS : OUT STD_LOGIC;
		 DIR : OUT STD_LOGIC;
		 INX : OUT STD_LOGIC;
		 Enc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT pwm_module
	PORT(nReset : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 Wr : IN STD_LOGIC;
		 ctrl : IN STD_LOGIC;
		 Duty : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 Frq : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 PWM : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;

BEGIN 
CAN1_TXD <= CC_CAN1_TXD;
CAN2_TXD <= CC_CAN2_TXD;
CC_CAN2_RXD <= CAN2_RXD;
FPGA_OK <= SYNTHESIZED_WIRE_22;
FAN_PWM <= SYNTHESIZED_WIRE_22;
LED_PWM <= SYNTHESIZED_WIRE_22;
ENC_ERR <= SYNTHESIZED_WIRE_22;




reset_mod : system_reset
PORT MAP(CLK => Clk,
		 SW_Reset => CPLD_INT,
		 Wr_timer => SYNTHESIZED_WIRE_0,
		 Trigger_Reset => SYNTHESIZED_WIRE_1,
		 H_timer => SYNTHESIZED_WIRE_2,
		 HW_Reset => RST,
		 R_timer => SYNTHESIZED_WIRE_10);


sramIOmod : sram_io
GENERIC MAP(CPLD_VERSION => "00001101",
			WIDTH => 8
			)
PORT MAP(nRESET => CPLD_INT,
		 nRD => nRD,
		 nWR => nWR,
		 nCS => nCS,
		 nADV => nADV,
		 nWAIT => nWAIT,
		 DATA => AD,
		 IO_DAT_RD => SYNTHESIZED_WIRE_3,
		 IO_ADDR => SYNTHESIZED_WIRE_8,
		 IO_DAT_WR => SYNTHESIZED_WIRE_9);


iospacemod : io_space
GENERIC MAP(BUS_WIDTH => 8,
			CPLD_VERSION => "00001101",
			ENC_WIDTH => 32,
			FAN_WIDTH => 32
			)
PORT MAP(nRESET => CPLD_INT,
		 Clk => Clk,
		 IO_RDY_WR => nWR,
		 IO_RDY_RD => nRD,
		 Seg_DP => PWM_LED,
		 DIP_SW => DIP_SWITCH,
		 Enc_MT1 => SYNTHESIZED_WIRE_6,
		 Enc_MT2 => SYNTHESIZED_WIRE_7,
		 IO_ADDR => SYNTHESIZED_WIRE_8,
		 IO_DAT_WR => SYNTHESIZED_WIRE_9,
		 iInputs => IO_Inputs,
		 R_timer => SYNTHESIZED_WIRE_10,
		 oOutputs => IO_Output,
		 Wr_MT1 => SYNTHESIZED_WIRE_11,
		 Wr_MT2 => SYNTHESIZED_WIRE_13,
		 Wr_timer => SYNTHESIZED_WIRE_0,
		 Trigger_Reset => SYNTHESIZED_WIRE_1,
		 Pizza_Cali => PIZZA_CALIBRATION,
		 Wr_PWM => SYNTHESIZED_WIRE_15,
		 PWM_ONOFF => SYNTHESIZED_WIRE_16,
		 H_timer => SYNTHESIZED_WIRE_2,
		 IO_DAT_RD => SYNTHESIZED_WIRE_3,
		 PWM_Duty => SYNTHESIZED_WIRE_17,
		 PWM_Frq => SYNTHESIZED_WIRE_18,
		 Seg_LED => Seg_LED,
		 WrVal_MT1 => SYNTHESIZED_WIRE_12,
		 WrVal_MT2 => SYNTHESIZED_WIRE_14);


qemod1 : quaddectodirpulse
GENERIC MAP(CPLD_VERSION => "00001101",
			ENC_WIDTH => 32
			)
PORT MAP(A => ENC_1_A,
		 B => ENC_1_B,
		 N => ENC_1_N,
		 CLK => Clk,
		 Wr => SYNTHESIZED_WIRE_11,
		 WrVal => SYNTHESIZED_WIRE_12,
		 PS => ENC_1_PS,
		 DIR => ENC_1_DIR,
		 INX => ENC_1_INX,
		 Enc => SYNTHESIZED_WIRE_6);


qemod2 : quaddectodirpulse
GENERIC MAP(CPLD_VERSION => "00001101",
			ENC_WIDTH => 32
			)
PORT MAP(A => ENC_2_A,
		 B => ENC_2_B,
		 N => ENC_2_N,
		 CLK => Clk,
		 Wr => SYNTHESIZED_WIRE_13,
		 WrVal => SYNTHESIZED_WIRE_14,
		 PS => ENC_2_PS,
		 DIR => ENC_2_DIR,
		 INX => ENC_2_INX,
		 Enc => SYNTHESIZED_WIRE_7);


pwm_mod : pwm_module
PORT MAP(nReset => CPLD_INT,
		 CLK => Clk,
		 Wr => SYNTHESIZED_WIRE_15,
		 ctrl => SYNTHESIZED_WIRE_16,
		 Duty => SYNTHESIZED_WIRE_17,
		 Frq => SYNTHESIZED_WIRE_18,
		 PWM => SYNTHESIZED_WIRE_22);


PROCESS(CAN1_RXD,EN_EDIF_CAN)
BEGIN
if (EN_EDIF_CAN = '1') THEN
	CC_CAN1_RXD <= CAN1_RXD;
ELSE
	CC_CAN1_RXD <= 'Z';
END IF;
END PROCESS;


END bdf_type;