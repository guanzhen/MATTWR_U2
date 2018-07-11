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
-- Generated on "07/11/2018 11:26:54"
                                                            
-- Vhdl Test Bench template for design  :  PWMMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE IEEE.NUMERIC_STD.ALL;

Library work;
USE work.common.all;

ENTITY PWMMODULE_vhd_tst IS
END PWMMODULE_vhd_tst;
ARCHITECTURE PWMMODULE_arch OF PWMMODULE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iCLK : STD_LOGIC;
SIGNAL iData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL inRESET : STD_LOGIC;
SIGNAL iWrPWMCONFIG : STD_LOGIC;
SIGNAL iWrPWMDUTY : STD_LOGIC;
SIGNAL iWrPWMPERIOD : STD_LOGIC;
SIGNAL oPWM : STD_LOGIC;
SIGNAL oPWMCONFIG : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oPWMDUTY : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oPWMPERIOD : STD_LOGIC_VECTOR(15 DOWNTO 0);

COMPONENT PWMMODULE
	PORT (
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	inRESET : IN STD_LOGIC;
	iWrPWMCONFIG : IN STD_LOGIC;
	iWrPWMDUTY : IN STD_LOGIC;
	iWrPWMPERIOD : IN STD_LOGIC;
	oPWM : OUT STD_LOGIC;
	oPWMCONFIG : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oPWMDUTY : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oPWMPERIOD : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN

clk : MOD_CLKGEN 
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => inRESET, clk_en => '1', clk_o => iCLK );

	i1 : PWMMODULE
	PORT MAP (
-- list connections between master ports and signals
	iCLK => iCLK,
	iData => iData,
	inRESET => inRESET,
	iWrPWMCONFIG => iWrPWMCONFIG,
	iWrPWMDUTY => iWrPWMDUTY,
	iWrPWMPERIOD => iWrPWMPERIOD,
	oPWM => oPWM,
	oPWMCONFIG => oPWMCONFIG,
	oPWMDUTY => oPWMDUTY,
	oPWMPERIOD => oPWMPERIOD
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
                                   
BEGIN                         
  iWrPWMCONFIG <= '0';
  iWrPWMDUTY <= '0';
  iWrPWMPERIOD <= '0';
  iData <= (others=>'Z');
  wait until inReset = '1';
  -- write 0x11 to PWMCONFIG.DEFOP to set idle level as 'Z'
  iWrPWMCONFIG <= '1';
  iData <= std_logic_vector(to_unsigned(6, iData'length));
  wait for 100 ns;
  iWrPWMCONFIG <= '0';
  --write period
  iWrPWMPERIOD <= '1';  
  iData <= std_logic_vector(to_unsigned(10, iData'length));
  wait for 100 ns;
  iWrPWMPERIOD <= '0';
  --write duty cycle
  iWrPWMDUTY <= '1';  
  iData <= std_logic_vector(to_unsigned(5, iData'length));
  wait for 100 ns;
  iWrPWMDUTY <= '0';  
  --enable module
  iWrPWMCONFIG <= '1';
  iData <= std_logic_vector(to_unsigned(7, iData'length));
  wait for 100 ns;
  iWrPWMCONFIG <= '0';
  -- delay
  wait for 1300 ns;
  --write period to force reset
  iWrPWMPERIOD <= '1';  
  iData <= std_logic_vector(to_unsigned(10, iData'length));
  wait for 100 ns;
  iWrPWMPERIOD <= '0';
  wait for 2 us;
  wait until rising_edge(oPWM);
  -- disable module
  iWrPWMCONFIG <= '1';
  iData <= std_logic_vector(to_unsigned(6, iData'length));
  wait for 100 ns;
  iWrPWMCONFIG <= '0';
    --write period
  iWrPWMPERIOD <= '1';  
  iData <= std_logic_vector(to_unsigned(10, iData'length));
  wait for 100 ns;
  iWrPWMPERIOD <= '0';
  -- write duty cycle
  iWrPWMDUTY <= '1';  
  iData <= std_logic_vector(to_unsigned(0, iData'length));
  wait for 100 ns;
  iWrPWMDUTY <= '0';
  -- enable module
  iWrPWMCONFIG <= '1';
  iData <= std_logic_vector(to_unsigned(7, iData'length));
  wait for 100 ns;
  iWrPWMCONFIG <= '0';
  -- delay
  wait for 2 us;
  --write period
  iWrPWMPERIOD <= '1';  
  iData <= std_logic_vector(to_unsigned(10, iData'length));
  wait for 100 ns;
  iWrPWMPERIOD <= '0';
  -- write duty cycle
  iWrPWMDUTY <= '1';  
  iData <= std_logic_vector(to_unsigned(10, iData'length));
  wait for 100 ns;
  iWrPWMDUTY <= '0';  
  wait until rising_edge(oPWM);
  -- disable module
  iWrPWMCONFIG <= '1';
  iData <= std_logic_vector(to_unsigned(6, iData'length));
  wait for 100 ns;
  iWrPWMCONFIG <= '0';
  
WAIT;                                                        
END PROCESS always;                                          
END PWMMODULE_arch;
