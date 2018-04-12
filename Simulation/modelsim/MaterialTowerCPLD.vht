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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/12/2018 11:36:34"
                                                            
-- Vhdl Test Bench template for design  :  MaterialTowerCPLD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MaterialTowerCPLD_vhd_tst IS
END MaterialTowerCPLD_vhd_tst;
ARCHITECTURE MaterialTowerCPLD_arch OF MaterialTowerCPLD_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL AD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CAN1_RXD : STD_LOGIC;
SIGNAL CAN1_TXD : STD_LOGIC;
SIGNAL CAN2_RXD : STD_LOGIC;
SIGNAL CAN2_TXD : STD_LOGIC;
SIGNAL CC_CAN1_RXD : STD_LOGIC;
SIGNAL CC_CAN1_TXD : STD_LOGIC;
SIGNAL CC_CAN2_RXD : STD_LOGIC;
SIGNAL CC_CAN2_TXD : STD_LOGIC;
SIGNAL Clk : STD_LOGIC;
SIGNAL CPLD_INT : STD_LOGIC;
SIGNAL DIP_SWITCH : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL EN_EDIF_CAN : STD_LOGIC;
SIGNAL ENC_1_A : STD_LOGIC;
SIGNAL ENC_1_B : STD_LOGIC;
SIGNAL ENC_1_DIR : STD_LOGIC;
SIGNAL ENC_1_INX : STD_LOGIC;
SIGNAL ENC_1_N : STD_LOGIC;
SIGNAL ENC_1_PS : STD_LOGIC;
SIGNAL ENC_2_A : STD_LOGIC;
SIGNAL ENC_2_B : STD_LOGIC;
SIGNAL ENC_2_DIR : STD_LOGIC;
SIGNAL ENC_2_INX : STD_LOGIC;
SIGNAL ENC_2_N : STD_LOGIC;
SIGNAL ENC_2_PS : STD_LOGIC;
SIGNAL ENC_ERR : STD_LOGIC;
SIGNAL FAN_PULSE : STD_LOGIC;
SIGNAL FAN_PWM : STD_LOGIC;
SIGNAL FPGA_OK : STD_LOGIC;
SIGNAL IO_Input0 : STD_LOGIC;
SIGNAL IO_Input1 : STD_LOGIC;
SIGNAL IO_Input2 : STD_LOGIC;
SIGNAL IO_Input8 : STD_LOGIC;
SIGNAL IO_Input9 : STD_LOGIC;
SIGNAL IO_Input10 : STD_LOGIC;
SIGNAL IO_Input11 : STD_LOGIC;
SIGNAL IO_Input12 : STD_LOGIC;
SIGNAL IO_Input13 : STD_LOGIC;
SIGNAL IO_Input16 : STD_LOGIC;
SIGNAL IO_Input17 : STD_LOGIC;
SIGNAL IO_Input18 : STD_LOGIC;
SIGNAL IO_Input19 : STD_LOGIC;
SIGNAL IO_Input20 : STD_LOGIC;
SIGNAL IO_Input21 : STD_LOGIC;
SIGNAL IO_Input22 : STD_LOGIC;
SIGNAL IO_Input23 : STD_LOGIC;
SIGNAL IO_Output : STD_LOGIC_VECTOR(16 DOWNTO 0);
SIGNAL LED_PWM : STD_LOGIC;
SIGNAL nADV : STD_LOGIC;
SIGNAL nCS : STD_LOGIC;
SIGNAL nRD : STD_LOGIC;
SIGNAL nWAIT : STD_LOGIC;
SIGNAL nWR : STD_LOGIC;
SIGNAL PIZZA_CALIBRATION : STD_LOGIC;
SIGNAL PWM_LED : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL SDCLKO : STD_LOGIC;
SIGNAL Seg_LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT MaterialTowerCPLD
	PORT (
	A : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	AD : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CAN1_RXD : IN STD_LOGIC;
	CAN1_TXD : OUT STD_LOGIC;
	CAN2_RXD : IN STD_LOGIC;
	CAN2_TXD : OUT STD_LOGIC;
	CC_CAN1_RXD : OUT STD_LOGIC;
	CC_CAN1_TXD : IN STD_LOGIC;
	CC_CAN2_RXD : OUT STD_LOGIC;
	CC_CAN2_TXD : IN STD_LOGIC;
	Clk : IN STD_LOGIC;
	CPLD_INT : IN STD_LOGIC;
	DIP_SWITCH : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	EN_EDIF_CAN : IN STD_LOGIC;
	ENC_1_A : IN STD_LOGIC;
	ENC_1_B : IN STD_LOGIC;
	ENC_1_DIR : OUT STD_LOGIC;
	ENC_1_INX : OUT STD_LOGIC;
	ENC_1_N : IN STD_LOGIC;
	ENC_1_PS : OUT STD_LOGIC;
	ENC_2_A : IN STD_LOGIC;
	ENC_2_B : IN STD_LOGIC;
	ENC_2_DIR : OUT STD_LOGIC;
	ENC_2_INX : OUT STD_LOGIC;
	ENC_2_N : IN STD_LOGIC;
	ENC_2_PS : OUT STD_LOGIC;
	ENC_ERR : OUT STD_LOGIC;
	FAN_PULSE : IN STD_LOGIC;
	FAN_PWM : OUT STD_LOGIC;
	FPGA_OK : OUT STD_LOGIC;
	IO_Input0 : IN STD_LOGIC;
	IO_Input1 : IN STD_LOGIC;
	IO_Input2 : IN STD_LOGIC;
	IO_Input8 : IN STD_LOGIC;
	IO_Input9 : IN STD_LOGIC;
	IO_Input10 : IN STD_LOGIC;
	IO_Input11 : IN STD_LOGIC;
	IO_Input12 : IN STD_LOGIC;
	IO_Input13 : IN STD_LOGIC;
	IO_Input16 : IN STD_LOGIC;
	IO_Input17 : IN STD_LOGIC;
	IO_Input18 : IN STD_LOGIC;
	IO_Input19 : IN STD_LOGIC;
	IO_Input20 : IN STD_LOGIC;
	IO_Input21 : IN STD_LOGIC;
	IO_Input22 : IN STD_LOGIC;
	IO_Input23 : IN STD_LOGIC;
	IO_Output : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);
	LED_PWM : OUT STD_LOGIC;
	nADV : IN STD_LOGIC;
	nCS : IN STD_LOGIC;
	nRD : IN STD_LOGIC;
	nWAIT : IN STD_LOGIC;
	nWR : IN STD_LOGIC;
	PIZZA_CALIBRATION : OUT STD_LOGIC;
	PWM_LED : IN STD_LOGIC;
	RST : OUT STD_LOGIC;
	SDCLKO : IN STD_LOGIC;
	Seg_LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MaterialTowerCPLD
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AD => AD,
	CAN1_RXD => CAN1_RXD,
	CAN1_TXD => CAN1_TXD,
	CAN2_RXD => CAN2_RXD,
	CAN2_TXD => CAN2_TXD,
	CC_CAN1_RXD => CC_CAN1_RXD,
	CC_CAN1_TXD => CC_CAN1_TXD,
	CC_CAN2_RXD => CC_CAN2_RXD,
	CC_CAN2_TXD => CC_CAN2_TXD,
	Clk => Clk,
	CPLD_INT => CPLD_INT,
	DIP_SWITCH => DIP_SWITCH,
	EN_EDIF_CAN => EN_EDIF_CAN,
	ENC_1_A => ENC_1_A,
	ENC_1_B => ENC_1_B,
	ENC_1_DIR => ENC_1_DIR,
	ENC_1_INX => ENC_1_INX,
	ENC_1_N => ENC_1_N,
	ENC_1_PS => ENC_1_PS,
	ENC_2_A => ENC_2_A,
	ENC_2_B => ENC_2_B,
	ENC_2_DIR => ENC_2_DIR,
	ENC_2_INX => ENC_2_INX,
	ENC_2_N => ENC_2_N,
	ENC_2_PS => ENC_2_PS,
	ENC_ERR => ENC_ERR,
	FAN_PULSE => FAN_PULSE,
	FAN_PWM => FAN_PWM,
	FPGA_OK => FPGA_OK,
	IO_Input0 => IO_Input0,
	IO_Input1 => IO_Input1,
	IO_Input2 => IO_Input2,
	IO_Input8 => IO_Input8,
	IO_Input9 => IO_Input9,
	IO_Input10 => IO_Input10,
	IO_Input11 => IO_Input11,
	IO_Input12 => IO_Input12,
	IO_Input13 => IO_Input13,
	IO_Input16 => IO_Input16,
	IO_Input17 => IO_Input17,
	IO_Input18 => IO_Input18,
	IO_Input19 => IO_Input19,
	IO_Input20 => IO_Input20,
	IO_Input21 => IO_Input21,
	IO_Input22 => IO_Input22,
	IO_Input23 => IO_Input23,
	IO_Output => IO_Output,
	LED_PWM => LED_PWM,
	nADV => nADV,
	nCS => nCS,
	nRD => nRD,
	nWAIT => nWAIT,
	nWR => nWR,
	PIZZA_CALIBRATION => PIZZA_CALIBRATION,
	PWM_LED => PWM_LED,
	RST => RST,
	SDCLKO => SDCLKO,
	Seg_LED => Seg_LED
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END MaterialTowerCPLD_arch;
