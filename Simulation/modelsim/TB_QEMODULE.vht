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
-- Generated on "07/11/2018 18:04:05"
                                                            
-- Vhdl Test Bench template for design  :  QEMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

Library work;
USE work.common.all;

ENTITY QEMODULE_vhd_tst IS
END QEMODULE_vhd_tst;
ARCHITECTURE QEMODULE_arch OF QEMODULE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iA : STD_LOGIC;
SIGNAL iB : STD_LOGIC;
SIGNAL iCLK : STD_LOGIC;
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL iIndex : STD_LOGIC;
SIGNAL inRESET : STD_LOGIC;
SIGNAL iWrQEMCONFIG : STD_LOGIC;
SIGNAL oDir : STD_LOGIC;
SIGNAL oIndex : STD_LOGIC;
SIGNAL oPulse : STD_LOGIC;
SIGNAL oQEMCONFIG : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oQEMCOUNTER : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT QEMODULE
	PORT (
	iA : IN STD_LOGIC;
	iB : IN STD_LOGIC;
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	iIndex : IN STD_LOGIC;
	inRESET : IN STD_LOGIC;
	iWrQEMCONFIG : IN STD_LOGIC;
	oDir : OUT STD_LOGIC;
	oIndex : OUT STD_LOGIC;
	oPulse : OUT STD_LOGIC;
	oQEMCONFIG : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oQEMCOUNTER : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

BEGIN

clk : MOD_CLKGEN 
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => inRESET, clk_en => '1', clk_o => iCLK );


	i1 : QEMODULE
	PORT MAP (
-- list connections between master ports and signals
	iA => iA,
	iB => iB,
	iCLK => iCLK,
	iData => iData,
	iIndex => iIndex,
	inRESET => inRESET,
	iWrQEMCONFIG => iWrQEMCONFIG,
	oDir => oDir,
	oIndex => oIndex,
	oPulse => oPulse,
	oQEMCONFIG => oQEMCONFIG,
	oQEMCOUNTER => oQEMCOUNTER
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

WAIT;                                                        
END PROCESS always;

encoder : process
begin
  iIndex <= '0';
  iA <= '0'; iB <= '0';  
  iData <= (others=>'Z');
  iWrQEMCONFIG <= '0';
  wait until inReset = '1';
  iData <= X"0001";
  iWrQEMCONFIG <= '1';
  wait for 100 ns;  
  iWrQEMCONFIG <= '0';  
  wait for 500 ns;  
  -- CW
  --wait for 30 ns;
  iA <= '1'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '1';  
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  wait for 500 ns;
  iA <= '1'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '1'; 
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  
  -- CCW
  wait for 1000 ns;
  iA <= '0'; iB <= '1';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '1'; iB <= '0';  
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  wait for 500 ns;
  iA <= '0'; iB <= '1';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '1'; iB <= '0'; 
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  
  -- iData <= X"0000";
  -- iWrQEMCONFIG <= '1';
  -- wait for 100 ns;  
  -- iWrQEMCONFIG <= '0';  
  
  -- CW
  wait for 1030 ns;
  iA <= '1'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '1';  
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  wait for 500 ns;
  iA <= '1'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '0'; iB <= '1'; 
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  
  -- CCW
  wait for 1010 ns;
  iA <= '0'; iB <= '1';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '1'; iB <= '0';  
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  wait for 500 ns;
  iA <= '0'; iB <= '1';  
  wait for 500 ns;
  iA <= '0'; iB <= '0';  
  wait for 500 ns;
  iA <= '1'; iB <= '0'; 
  wait for 500 ns;
  iA <= '1'; iB <= '1';  
  
  wait;
end process;

END QEMODULE_arch;
