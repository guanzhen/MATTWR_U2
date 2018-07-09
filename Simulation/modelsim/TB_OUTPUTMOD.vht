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
-- Generated on "07/09/2018 16:25:22"
                                                            
-- Vhdl Test Bench template for design  :  OUTPUTMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY OUTPUTMODULE_vhd_tst IS
END OUTPUTMODULE_vhd_tst;
ARCHITECTURE OUTPUTMODULE_arch OF OUTPUTMODULE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL inReset : STD_LOGIC;
SIGNAL iWrData : STD_LOGIC;
SIGNAL oOutput : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT OUTPUTMODULE
	PORT (
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	inReset : IN STD_LOGIC;
	iWrData : IN STD_LOGIC;
	oOutput : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : OUTPUTMODULE
	PORT MAP (
-- list connections between master ports and signals
	iData => iData,
	inReset => inReset,
	iWrData => iWrData,
	oOutput => oOutput
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
END OUTPUTMODULE_arch;
