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

Library work;
USE work.common.all;

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
	ioSync : INOUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	oSYNCONFIG1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oSYNCONFIG2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oSYNDIR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oSYNVALUE : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN

clk : MOD_CLKGEN 
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => inRESET, clk_en => '1', clk_o => iCLK );


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
	ioSync => oSync,
	oSYNCONFIG1 => oSYNCONFIG1,
	oSYNCONFIG2 => oSYNCONFIG2,
	oSYNDIR => oSYNDIR,
	oSYNVALUE => oSYNVALUE
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
procedure SetInputBit (constant bitval : natural range 9 downto 0) is
begin
  case bitval is
  when 0 => iInputs <= B"00_0000_0001";
  when 1 => iInputs <= B"00_0000_0010";
  when 2 => iInputs <= B"00_0000_0100";
  when 3 => iInputs <= B"00_0000_1000";
  when 4 => iInputs <= B"00_0001_0000";
  when 5 => iInputs <= B"00_0010_0000";
  when 6 => iInputs <= B"00_0100_0000";
  when 7 => iInputs <= B"00_1000_0000";
  when 8 => iInputs <= B"01_0000_0000";
  when 9 => iInputs <= B"10_0000_0000";
  end case;
end procedure;
BEGIN                                                         
  inWrSYNCONFIG1 <= '0';
  inWrSYNCONFIG2 <= '0';
  inSyncSel <= (others=>'0');
  iInputs <= (others=>'0');
  iData <= (others=>'0');
  wait until inRESET = '1';
  
  oSync(6) <= 'H';
  oSync(5) <= 'H';
  --write config1 register
  inWrSYNCONFIG1 <= '1';
  iData <= X"4321";    
  wait for 100 ns;
  inWrSYNCONFIG1 <= '0';
   --write config2 register
  inWrSYNCONFIG2 <= '1';
  iData <= X"7654";  
  wait for 100 ns;
  inWrSYNCONFIG2 <= '0';  
  -- 
  oSync(6 downto 5) <= "10";
  SetInputBit(0);
  wait for 100 ns;
  SetInputBit(1);
  wait for 100 ns;
  SetInputBit(2);
  wait for 100 ns;
  SetInputBit(3);
  wait for 100 ns;
  SetInputBit(4);
  wait for 100 ns;
   oSync(6 downto 5) <= "11";
  SetInputBit(5);
  wait for 100 ns;
  SetInputBit(6);
  wait for 100 ns;
  SetInputBit(7);
  wait for 100 ns;
  SetInputBit(8);
  wait for 100 ns;
  SetInputBit(9);
    --write config1 register
  inWrSYNCONFIG1 <= '1';
  iData <= X"2211";    
  wait for 100 ns;
  inWrSYNCONFIG1 <= '0';
   --write config2 register
  inWrSYNCONFIG2 <= '1';
  iData <= X"6655";  
  wait for 100 ns;
  inWrSYNCONFIG2 <= '0';  
  -- 
  oSync(6 downto 5) <= "00";
  SetInputBit(0);
  wait for 100 ns;
  SetInputBit(1);
  wait for 100 ns;
  SetInputBit(2);
  wait for 100 ns;
  SetInputBit(3);
  wait for 100 ns;
  SetInputBit(4);
  wait for 100 ns;
  oSync(6 downto 5) <= "01";
  SetInputBit(5);
  wait for 100 ns;
  SetInputBit(6);
  wait for 100 ns;
  SetInputBit(7);
  wait for 100 ns;
  SetInputBit(8);
  wait for 100 ns;
  SetInputBit(9);
WAIT;                                                        
END PROCESS always;                                          
END SYNCMODULE_arch;
