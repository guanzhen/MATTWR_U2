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
-- Generated on "07/16/2018 09:10:40"
                                                            
-- Vhdl Test Bench template for design  :  INPUTMODULE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;

Library work;
USE work.common.all;

ENTITY INPUTMODULE_vhd_tst IS
END INPUTMODULE_vhd_tst;
ARCHITECTURE INPUTMODULE_arch OF INPUTMODULE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL iCLK : STD_LOGIC;
SIGNAL iInputs : STD_LOGIC_VECTOR(21 DOWNTO 0);
SIGNAL inReset : STD_LOGIC;
SIGNAL oInputs : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL oInputStatus : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL DIFF1_ERR,DIFF2_ERR,DIFF3_ERR,DIFF4_ERR : STD_LOGIC;
SIGNAL DIFF1L,DIFF2L,DIFF3L,DIFF1H,DIFF2H,DIFF3H,DIFF4L,DIFF4H : STD_LOGIC;
COMPONENT INPUTMODULE
	PORT (
	iCLK : IN STD_LOGIC;
	iInputs : IN STD_LOGIC_VECTOR(21 DOWNTO 0);
	inReset : IN STD_LOGIC;
	oInputs : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	oInputStatus : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN

clk : MOD_CLKGEN 
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => inRESET, clk_en => '1', clk_o => iCLK );

	i1 : INPUTMODULE
	PORT MAP (
-- list connections between master ports and signals
	iCLK => iCLK,
	iInputs => iInputs,
	inReset => inReset,
	oInputs => oInputs,
	oInputStatus => oInputStatus
	);

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
  inReset <= '0';
  wait for 100 ns;
  inReset <= '1';                         
WAIT;                                                       
END PROCESS init;                                           

--MainBoard config 14 single ended, 2 diff inputs
--DIFF1L <= NOT DIFF1H when DIFF1_ERR = '0' else DIFF1H;
--DIFF2L <= NOT DIFF2H when DIFF2_ERR = '0' else DIFF2H;
--DIFF3L <= NOT DIFF3H when DIFF3_ERR = '0' else DIFF3H;
--iInputs(19 downto 14) <= (DIFF3H,DIFF3L,DIFF2H,DIFF2L,DIFF1H,DIFF1L);
--iInputs(13 downto 0) <= (others => '0');

-- subboard config 12 singled ended, 4 diff inputs.
DIFF1L <= NOT DIFF1H when DIFF1_ERR = '0' else DIFF1H;
DIFF2L <= NOT DIFF2H when DIFF2_ERR = '0' else DIFF2H;
DIFF3L <= NOT DIFF3H when DIFF3_ERR = '0' else DIFF3H;
DIFF4L <= NOT DIFF4H when DIFF4_ERR = '0' else DIFF3H;
iInputs(21 downto 20) <= (others => '0');
iInputs(19 downto 12) <= (DIFF4H,DIFF4L,DIFF3H,DIFF3L,DIFF2H,DIFF2L,DIFF1H,DIFF1L);
iInputs(11 downto 0) <= (others => '0');

always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                              
BEGIN                                                                 -- code executes for every event on sensitivity list  
DIFF4H <= '0';
DIFF3H <= '0';
DIFF2H <= '0';
DIFF1H <= '0';
DIFF1_ERR <= '0';
DIFF2_ERR <= '0';
DIFF3_ERR <= '0';
DIFF4_ERR <= '0';
wait until inReset = '1';


wait for 500 ns; --1
DIFF1H <= '1';
DIFF2H <= '0';
DIFF3H <= '0';
DIFF4H <= '0';
wait for 500 ns; --2
DIFF1H <= '0';
DIFF2H <= '1';
DIFF3H <= '0';
DIFF4H <= '0';
wait for 500 ns; --3
DIFF1H <= '0';
DIFF2H <= '0';
DIFF3H <= '1';
DIFF4H <= '0';
wait for 500 ns; --4
DIFF1H <= '0';
DIFF2H <= '0';
DIFF3H <= '0';
DIFF4H <= '1';
wait for 500 ns; --5
DIFF1H <= '1';
DIFF2H <= '1';
DIFF3H <= '0';
DIFF4H <= '0';
wait for 500 ns; --6
DIFF1H <= '0';
DIFF2H <= '0';
DIFF3H <= '1';
DIFF4H <= '1';
wait for 500 ns; --7
DIFF1H <= '1';
DIFF2H <= '0';
DIFF3H <= '1';
DIFF4H <= '0';
wait for 500 ns; --8
DIFF1H <= '0';
DIFF2H <= '1';
DIFF3H <= '0';
DIFF4H <= '1';
wait for 500 ns; --9 
DIFF1H <= '0';
DIFF2H <= '0';
DIFF3H <= '0';
DIFF4H <= '0';
wait for 500 ns;


DIFF1H <= '1';
wait for 100 ns;
DIFF1H <= '0';
wait for 100 ns;
DIFF1H <= '1';
wait for 100 ns;
DIFF1H <= '0';
DIFF1_ERR <= '1';
wait for 100 ns;
DIFF1_ERR <= '0';
DIFF1H <= '1';
wait for 200 ns;
DIFF1_ERR <= '1';
wait for 300 ns;
DIFF1_ERR <= '0';
wait for 500 ns;

DIFF2H <= '1';
wait for 100 ns;
DIFF2H <= '0';
wait for 100 ns;
DIFF2H <= '1';
wait for 100 ns;
DIFF2H <= '0';
DIFF2_ERR <= '1';
wait for 100 ns;
DIFF2_ERR <= '0';
DIFF2H <= '1';
wait for 200 ns;
DIFF2_ERR <= '1';
wait for 300 ns;
DIFF2_ERR <= '0';
wait for 500 ns;

DIFF3H <= '1';
wait for 100 ns;
DIFF3H <= '0';
wait for 100 ns;
DIFF3H <= '1';
wait for 100 ns;
DIFF3H <= '0';
DIFF3_ERR <= '1';
wait for 100 ns;
DIFF3_ERR <= '0';
DIFF3H <= '1';
wait for 200 ns;
DIFF3_ERR <= '1';
wait for 300 ns;
DIFF3_ERR <= '0';
wait for 500 ns;

DIFF4H <= '1';
wait for 100 ns;
DIFF4H <= '0';
wait for 100 ns;
DIFF4H <= '1';
wait for 100 ns;
DIFF4H <= '0';
DIFF4_ERR <= '1';
wait for 100 ns;
DIFF4_ERR <= '0';
DIFF4H <= '1';
wait for 200 ns;
DIFF4_ERR <= '1';
wait for 300 ns;
DIFF4_ERR <= '0';
wait for 500 ns;




WAIT;                                                        
END PROCESS always;                                          
END INPUTMODULE_arch;
