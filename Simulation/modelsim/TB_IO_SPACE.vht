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
-- Generated on "06/27/2018 17:53:13"
                                                            
-- Vhdl Test Bench template for design  :  IO_SPACE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY IO_SPACE_vhd_tst IS
END IO_SPACE_vhd_tst;
ARCHITECTURE IO_SPACE_arch OF IO_SPACE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iAddress : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL iCLK : STD_LOGIC;
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL inRdRdy : STD_LOGIC;
SIGNAL inRESET : STD_LOGIC;
SIGNAL inWrRdy : STD_LOGIC;
SIGNAL oData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oPWMCONFIG1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oPWMDUTY1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oPWMPERIOD1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT IO_SPACE
	PORT (
	iAddress : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	inRdRdy : IN STD_LOGIC;
	inRESET : IN STD_LOGIC;
	inWrRdy : IN STD_LOGIC;
	oData : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oPWMCONFIG1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oPWMDUTY1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oPWMPERIOD1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : IO_SPACE
	PORT MAP (
-- list connections between master ports and signals
	iAddress => iAddress,
	iCLK => iCLK,
	iData => iData,
	inRdRdy => inRdRdy,
	inRESET => inRESET,
	inWrRdy => inWrRdy,
	oData => oData,
	oPWMCONFIG1 => oPWMCONFIG1,
	oPWMDUTY1 => oPWMDUTY1,
	oPWMPERIOD1 => oPWMPERIOD1
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
END IO_SPACE_arch;
