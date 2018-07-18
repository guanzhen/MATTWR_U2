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
-- Generated on "07/18/2018 11:25:05"
                                                            
-- Vhdl Test Bench template for design  :  SERIALMUX
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

Library work;
USE work.common.all;


ENTITY SERIALMUX_vhd_tst IS
END SERIALMUX_vhd_tst;
ARCHITECTURE SERIALMUX_arch OF SERIALMUX_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iCLK : STD_LOGIC;
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL iMUXSEL : STD_LOGIC;
SIGNAL inReset : STD_LOGIC;
SIGNAL iRX1_IN : STD_LOGIC;
SIGNAL iRX2_IN : STD_LOGIC;
SIGNAL iTX_IN : STD_LOGIC;
SIGNAL iWrSERIALMUXCONFIG : STD_LOGIC;
SIGNAL oRX_OUT : STD_LOGIC;
SIGNAL oSERIALMUXCONFIG : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oTX1_OUT : STD_LOGIC;
SIGNAL oTX2_OUT : STD_LOGIC;
SIGNAL SerialData : STD_LOGIC_VECTOR(2 downto 0);

COMPONENT SERIALMUX
	PORT (
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	iMUXSEL : IN STD_LOGIC;
	inReset : IN STD_LOGIC;
	iRX1_IN : IN STD_LOGIC;
	iRX2_IN : IN STD_LOGIC;
	iTX_IN : IN STD_LOGIC;
	iWrSERIALMUXCONFIG : IN STD_LOGIC;
	oRX_OUT : OUT STD_LOGIC;
	oSERIALMUXCONFIG : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oTX1_OUT : OUT STD_LOGIC;
	oTX2_OUT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN

clk : MOD_CLKGEN 
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => inRESET, clk_en => '1', clk_o => iCLK );

i1 : SERIALMUX
PORT MAP (
-- list connections between master ports and signals
iCLK => iCLK,
iData => iData,
iMUXSEL => iMUXSEL,
inReset => inReset,
iRX1_IN => iRX1_IN,
iRX2_IN => iRX2_IN,
iTX_IN => iTX_IN,
iWrSERIALMUXCONFIG => iWrSERIALMUXCONFIG,
oRX_OUT => oRX_OUT,
oSERIALMUXCONFIG => oSERIALMUXCONFIG,
oTX1_OUT => oTX1_OUT,
oTX2_OUT => oTX2_OUT
);
  
init : PROCESS                                               
-- variable declarations                                     
BEGIN
  inReset <= '0';
  wait for 100 ns;
  inReset <= '1';
WAIT;                                                       
END PROCESS init;

always2 : process(SerialData)
begin
  (iRX1_IN,iRX2_IN,iTX_IN) <= SerialData;
end process;
always : PROCESS

BEGIN  
  iRX1_IN <= 'H';
  iRX2_IN <= 'H';
  iTX_IN <= 'H';
  iWrSERIALMUXCONFIG <= '0';
  SerialData <= "000";
  iMUXSEL <= '0';
  iData <= (others=>'0');
  wait until inRESET = '1';
  -- enable module
  iData <= X"0005";
  iWrSERIALMUXCONFIG <= '1';
  wait for 100 ns;  
  iWrSERIALMUXCONFIG <= '1';
  -- process
  SerialData <= "001";
  wait for 300 ns;
  SerialData <= "001";
  wait for 300 ns;
  SerialData <= "101";
  wait for 300 ns;
  SerialData <= "101";
  wait for 300 ns;
  SerialData <= "000";
  wait for 300 ns;
  SerialData <= "000";
  wait for 300 ns;
  
  iMUXSEL <= '1';
  SerialData <= "001";
  wait for 300 ns;
  SerialData <= "010";
  wait for 300 ns;
  SerialData <= "010";
  wait for 300 ns;
  SerialData <= "001";
  wait for 300 ns;
  SerialData <= "011";
  wait for 300 ns;
  SerialData <= "000";
  wait for 300 ns;
  
  
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END SERIALMUX_arch;
