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
-- Generated on "07/10/2018 11:44:21"
                                                            
-- Vhdl Test Bench template for design  :  RESETMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                       

LIBRARY work;
USE work.common.all;

ENTITY RESETMODULE_vhd_tst IS
END RESETMODULE_vhd_tst;
ARCHITECTURE RESETMODULE_arch OF RESETMODULE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iCLK : STD_LOGIC;
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL inReset : STD_LOGIC;
SIGNAL iTrigger : STD_LOGIC;
SIGNAL iWrConfig : STD_LOGIC;
SIGNAL iWrPeriod : STD_LOGIC;
SIGNAL oReset : STD_LOGIC;
SIGNAL oResetConfig : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oResetPeriod : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT RESETMODULE
	PORT (
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	inReset : IN STD_LOGIC;
	iWrConfig : IN STD_LOGIC;
	iWrPeriod : IN STD_LOGIC;
	oReset : OUT STD_LOGIC;
	oResetConfig : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oResetPeriod : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN

cpld_clk : MOD_CLKGEN
GENERIC MAP (period => 500 ns ) PORT MAP ( reset => inReset, clk_en => '1', clk_o => iCLK );

	i1 : RESETMODULE
	PORT MAP (
-- list connections between master ports and signals
	iCLK => iCLK,
	iData => iData,
	inReset => inReset,
	iWrConfig => iWrConfig,
	iWrPeriod => iWrPeriod,
	oReset => oReset,
	oResetConfig => oResetConfig,
	oResetPeriod => oResetPeriod
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
  inReset <= '0';
  wait for 100 ns;
  inReset <= '1';                  
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
END RESETMODULE_arch;
