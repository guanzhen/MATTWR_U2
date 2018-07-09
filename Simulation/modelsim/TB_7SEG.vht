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
-- Generated on "07/09/2018 15:24:09"
                                                            
-- Vhdl Test Bench template for design  :  LED7SEGMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TB_7SEG IS
END TB_7SEG;
ARCHITECTURE LED7SEGMODULE_arch OF TB_7SEG IS
-- constants                                                 
-- signals                                                   
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL iEnable : STD_LOGIC;
SIGNAL inReset : STD_LOGIC;
SIGNAL iWrData : STD_LOGIC;
SIGNAL oLEDOutput : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT LED7SEGMODULE
	PORT (
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	iEnable : IN STD_LOGIC;
	inReset : IN STD_LOGIC;
	iWrData : IN STD_LOGIC;
	oLEDOutput : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LED7SEGMODULE
	PORT MAP (
-- list connections between master ports and signals
	iData => iData,
	iEnable => iEnable,
	inReset => inReset,
	iWrData => iWrData,
	oLEDOutput => oLEDOutput
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
        
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
  iEnable <= '1';
  iWrData <= '0';
  iData <= (others=>'Z');
  -- code executes for every event on sensitivity list  
  -- Disabled section
  wait until inReset = '1';
  iWrData <= '1';
  iData <= X"0011";
  wait for 100 ns;
  iWrData <= '0';
  wait for 300 ns;
  
  iWrData <= '1';
  iData <= X"F011";
  wait for 100 ns;
  iWrData <= '0';
  wait for 300 ns;
  
  --enabled section
  iEnable <= '0';
  iData <= X"0011";
  iWrData <= '1';
  wait for 100 ns;
  iWrData <= '0';
  wait for 300 ns;
  
  iData <= X"001F";
  iWrData <= '1';
  wait for 100 ns;
  iWrData <= '0';
  wait for 300 ns; 
  
  iEnable <= '1';
  
WAIT;                                                        
END PROCESS always;                                          
END LED7SEGMODULE_arch;
