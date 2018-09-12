-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- Generated on "09/12/2018 10:10:55"
                                                            
-- Vhdl Test Bench template for design  :  TIMERMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;                       

LIBRARY work;
USE work.common.all;

ENTITY TIMERMODULE_vhd_tst IS
END TIMERMODULE_vhd_tst;
ARCHITECTURE TIMERMODULE_arch OF TIMERMODULE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iCLK : STD_LOGIC;
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL inRESET : STD_LOGIC;
SIGNAL oTimermilli : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oTimersec : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT TIMERMODULE
	PORT (
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	inRESET : IN STD_LOGIC;
	oTimermilli : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oTimersec : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN

cpld_clk : MOD_CLKGEN
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => inReset, clk_en => '1', clk_o => iCLK );

i1 : TIMERMODULE
PORT MAP (
  -- list connections between master ports and signals
  iCLK => iCLK,
  iData => iData,
  inRESET => inRESET,
  oTimermilli => oTimermilli,
  oTimersec => oTimersec
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
END TIMERMODULE_arch;
