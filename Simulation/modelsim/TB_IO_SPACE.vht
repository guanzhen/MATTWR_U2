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
-- Generated on "04/18/2018 13:01:13"
                                                            
-- Vhdl Test Bench template for design  :  IO_SPACE
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

LIBRARY work;
USE work.common.all;


ENTITY IO_SPACE_vhd_tst IS
END IO_SPACE_vhd_tst;
ARCHITECTURE IO_SPACE_arch OF IO_SPACE_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL DIP_SW : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Enc_MT1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Enc_MT2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL H_timer : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IO_ADDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IO_DAT_RD : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IO_DAT_WR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IO_RDY_RD : STD_LOGIC;
SIGNAL IO_RDY_WR : STD_LOGIC;

SIGNAL iInputs : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL oOutputs : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL nRESET : STD_LOGIC;
SIGNAL Pizza_Cali : STD_LOGIC;
SIGNAL PWM_Duty : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL PWM_Frq : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL PWM_ONOFF : STD_LOGIC;
SIGNAL R_timer : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Seg_DP : STD_LOGIC;
SIGNAL Seg_LED : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Trigger_Reset : STD_LOGIC;
SIGNAL Wr_MT1 : STD_LOGIC;
SIGNAL Wr_MT2 : STD_LOGIC;
SIGNAL Wr_PWM : STD_LOGIC;
SIGNAL Wr_timer : STD_LOGIC;
SIGNAL WrVal_MT1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL WrVal_MT2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT IO_SPACE
  GENERIC ( BUS_WIDTH : INTEGER := 8; ENC_WIDTH : INTEGER := 32; FAN_WIDTH : INTEGER := 32; CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00001101" );
	
	PORT (
	Clk : IN STD_LOGIC;
	DIP_SW : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Enc_MT1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Enc_MT2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	H_timer : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_ADDR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_DAT_RD : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_DAT_WR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	IO_RDY_RD : IN STD_LOGIC;
	IO_RDY_WR : IN STD_LOGIC;
	nRESET : IN STD_LOGIC;
  iInputs : IN std_logic_vector(23 downto 0);
  oOutputs : OUT std_logic_vector(23 downto 0);
	Pizza_Cali : OUT STD_LOGIC;
	PWM_Duty : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	PWM_Frq : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
	PWM_ONOFF : OUT STD_LOGIC;
	R_timer : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Seg_DP : IN STD_LOGIC;
	Seg_LED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Trigger_Reset : OUT STD_LOGIC;
	Wr_MT1 : OUT STD_LOGIC;
	Wr_MT2 : OUT STD_LOGIC;
	Wr_PWM : OUT STD_LOGIC;
	Wr_timer : OUT STD_LOGIC;
	WrVal_MT1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	WrVal_MT2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
  cpld_clk : MOD_CLKGEN
  GENERIC MAP (period => 100 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => Clk );

	i1 : IO_SPACE
  GENERIC MAP( BUS_WIDTH => 8, ENC_WIDTH  => 32, FAN_WIDTH => 32, CPLD_VERSION =>  "00001101" )
	
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	DIP_SW => DIP_SW,
	Enc_MT1 => Enc_MT1,
	Enc_MT2 => Enc_MT2,
	H_timer => H_timer,
	IO_ADDR => IO_ADDR,
	IO_DAT_RD => IO_DAT_RD,
	IO_DAT_WR => IO_DAT_WR,
	IO_RDY_RD => IO_RDY_RD,
	IO_RDY_WR => IO_RDY_WR,
  iInputs => iInputs,
  oOutputs => oOutputs,
	nRESET => nRESET,
	Pizza_Cali => Pizza_Cali,
	PWM_Duty => PWM_Duty,
	PWM_Frq => PWM_Frq,
	PWM_ONOFF => PWM_ONOFF,
	R_timer => R_timer,
	Seg_DP => Seg_DP,
	Seg_LED => Seg_LED,
	Trigger_Reset => Trigger_Reset,
	Wr_MT1 => Wr_MT1,
	Wr_MT2 => Wr_MT2,
	Wr_PWM => Wr_PWM,
	Wr_timer => Wr_timer,
	WrVal_MT1 => WrVal_MT1,
	WrVal_MT2 => WrVal_MT2
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
nRESET <= '0';
wait for 100 ns;
nRESET <= '1';
wait for 100 ns;
IO_RDY_RD <= '1';
IO_RDY_WR <= '1';
IO_DAT_WR <= (others => '0');
Seg_DP <= '1';
iInputs<= (others => 'Z');

-- READ CPLD VERSION
IO_ADDR <= "00001010";
wait for 100 ns;
IO_RDY_RD <= '0';
wait for 100 ns;
IO_RDY_RD <= '1';

nRESET <= '1';
wait for 200 ns;

-- WRITE SOMETHING
IO_ADDR <= X"00";
IO_DAT_WR <= X"5F";
IO_RDY_WR <= '0';
wait for 100 ns;
IO_RDY_WR <= '1';



WAIT;                                                        
END PROCESS always;                                          
END IO_SPACE_arch;
