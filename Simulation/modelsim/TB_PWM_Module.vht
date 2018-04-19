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
-- Generated on "04/19/2018 13:50:29"
                                                            
-- Vhdl Test Bench template for design  :  PWM_Module
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
LIBRARY work;
USE work.common.all;

ENTITY PWM_Module_vhd_tst IS
END PWM_Module_vhd_tst;
ARCHITECTURE PWM_Module_arch OF PWM_Module_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Config : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Duty : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Frq : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL nReset : STD_LOGIC;
SIGNAL PWM : STD_LOGIC;
SIGNAL Wr : STD_LOGIC;
COMPONENT PWM_Module
	PORT (
	CLK : IN STD_LOGIC;
	Config : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Duty : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Frq : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	nReset : IN STD_LOGIC;
	PWM : OUT STD_LOGIC;
	Wr : IN STD_LOGIC
	);
END COMPONENT;

BEGIN

ebu_clk : MOD_CLKGEN 
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => CLK );

	i1 : PWM_Module
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	Config => Config,
	Duty => Duty,
	Frq => Frq,
	nReset => nReset,
	PWM => PWM,
	Wr => Wr
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
nReset <= '0';                                                  
wait for 100 ns;
nReset <= '1';
Frq <= X"3E80";
Duty <= X"1F40";
Config <= ((0) => '1', others => '0');
--(to_integer(unsigned(s_proc_chan(2 downto 0)))+4) => '1', others => '0');
Wr <= '0';
wait for 100 ns;
Wr <= '1';
wait for 500 ns;


WAIT;                                                        
END PROCESS always;                                          
END PWM_Module_arch;
