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
-- Generated on "07/17/2018 13:16:20"
                                                            
-- Vhdl Test Bench template for design  :  SYNCMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SYNCMODULE_vhd_tst IS
END SYNCMODULE_vhd_tst;
ARCHITECTURE SYNCMODULE_arch OF SYNCMODULE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iCLK : STD_LOGIC;
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL iInputs : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL inRESET : STD_LOGIC;
SIGNAL inSyncSel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL inWrSYNCONFIG1 : STD_LOGIC;
SIGNAL inWrSYNCONFIG2 : STD_LOGIC;
SIGNAL oSync : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL oSYNCONFIG1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oSYNCONFIG2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oSYNDIR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oSYNVALUE : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT SYNCMODULE
	PORT (
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	iInputs : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	inRESET : IN STD_LOGIC;
	inSyncSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	inWrSYNCONFIG1 : IN STD_LOGIC;
	inWrSYNCONFIG2 : IN STD_LOGIC;
	oSync : INOUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	oSYNCONFIG1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oSYNCONFIG2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oSYNDIR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oSYNVALUE : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : SYNCMODULE
	PORT MAP (
-- list connections between master ports and signals
	iCLK => iCLK,
	iData => iData,
	iInputs => iInputs,
	inRESET => inRESET,
	inSyncSel => inSyncSel,
	inWrSYNCONFIG1 => inWrSYNCONFIG1,
	inWrSYNCONFIG2 => inWrSYNCONFIG2,
	oSync => oSync,
	oSYNCONFIG1 => oSYNCONFIG1,
	oSYNCONFIG2 => oSYNCONFIG2,
	oSYNDIR => oSYNDIR,
	oSYNVALUE => oSYNVALUE
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
END SYNCMODULE_arch;
