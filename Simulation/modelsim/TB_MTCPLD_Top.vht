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
-- Generated on "06/28/2018 13:49:20"
                                                            
-- Vhdl Test Bench template for design  :  MTCPLD_Top
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
USE ieee.numeric_std.all;
LIBRARY work;
USE work.common.all;

ENTITY TB_MTCPLD_Top IS
GENERIC  
  (
    DATAWIDTH    : integer  := 16                                  -- Datenbus 8 Bit
  );  
END TB_MTCPLD_Top;
ARCHITECTURE MTCPLD_Top_arch OF TB_MTCPLD_Top IS
-- constants                                                 
-- signals                                                   
SIGNAL iADV : STD_LOGIC;
SIGNAL iCLK : STD_LOGIC;
SIGNAL iCS_FPGA : STD_LOGIC;
SIGNAL iDiffInput : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL iDIP_SWITCH : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL iENC_A3 : STD_LOGIC;
SIGNAL iENC_A4 : STD_LOGIC;
SIGNAL iENC_B3 : STD_LOGIC;
SIGNAL iENC_B4 : STD_LOGIC;
SIGNAL iENC_N3 : STD_LOGIC;
SIGNAL iENC_N4 : STD_LOGIC;
SIGNAL iInput : STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL iLED_OVERCURRENT : STD_LOGIC;
SIGNAL ioData : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ioSYNC : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL iPWM_LED : STD_LOGIC;
SIGNAL iRD : STD_LOGIC;
SIGNAL iRFID1_RXD : STD_LOGIC;
SIGNAL iRFID2_RXD : STD_LOGIC;
SIGNAL iRFID_MUX_SEL : STD_LOGIC;
SIGNAL iRFID_TXD : STD_LOGIC;
SIGNAL iSW_RESET_CPLD : STD_LOGIC;
SIGNAL iSYNC_SEL1 : STD_LOGIC;
SIGNAL iSYNC_SEL2 : STD_LOGIC;
SIGNAL iWR : STD_LOGIC;
SIGNAL o7SEGLED : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL oCPLD_DEBUG : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL oENC_N3_INX : STD_LOGIC;
SIGNAL oENC_N4_INX : STD_LOGIC;
SIGNAL oENC_T3_DIR : STD_LOGIC;
SIGNAL oENC_T3_IN : STD_LOGIC;
SIGNAL oENC_T4_DIR : STD_LOGIC;
SIGNAL oENC_T4_IN : STD_LOGIC;
SIGNAL oLED_ENABLE : STD_LOGIC;
SIGNAL oLED_ENC_ERR : STD_LOGIC;
SIGNAL oLED_FPGA_OK : STD_LOGIC;
SIGNAL oLED_PWM : STD_LOGIC;
SIGNAL oOutput : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL oPWM2 : STD_LOGIC;
SIGNAL oRFID1_TXD : STD_LOGIC;
SIGNAL oRFID2_TXD : STD_LOGIC;
SIGNAL oRFID_RXD : STD_LOGIC;
SIGNAL oRST : STD_LOGIC;
SIGNAL oRSTIN : STD_LOGIC;
SIGNAL oWAIT : STD_LOGIC;

SIGNAL sEBUCLK       : std_logic;
SIGNAL nRESET        : std_logic := '1';                                             
SIGNAL sEBU_iRst     : std_logic := '1';  --EBU reset signal
SIGNAL sEBU_iRdWr    : std_logic := '1';
SIGNAL sEBU_ienwait  : std_logic := '1';
SIGNAL sEBU_iAdd     : std_logic_vector(DATAWIDTH-1 downto 0);
SIGNAL sEBU_iData    : std_logic_vector(DATAWIDTH-1 downto 0);
SIGNAL sEBU_oData    : std_logic_vector(DATAWIDTH-1 downto 0);

COMPONENT MTCPLD_Top
	PORT (
	iADV : IN STD_LOGIC;
	iCLK : IN STD_LOGIC;
	iCS_FPGA : IN STD_LOGIC;
	iDiffInput : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	iDIP_SWITCH : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	iENC_A3 : IN STD_LOGIC;
	iENC_A4 : IN STD_LOGIC;
	iENC_B3 : IN STD_LOGIC;
	iENC_B4 : IN STD_LOGIC;
	iENC_N3 : IN STD_LOGIC;
	iENC_N4 : IN STD_LOGIC;
	iInput : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
	iLED_OVERCURRENT : IN STD_LOGIC;
	ioData : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ioSYNC : INOUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	iPWM_LED : IN STD_LOGIC;
	iRD : IN STD_LOGIC;
	iRFID1_RXD : IN STD_LOGIC;
	iRFID2_RXD : IN STD_LOGIC;
	iRFID_MUX_SEL : IN STD_LOGIC;
	iRFID_TXD : IN STD_LOGIC;
	iSW_RESET_CPLD : IN STD_LOGIC;
	iSYNC_SEL1 : IN STD_LOGIC;
	iSYNC_SEL2 : IN STD_LOGIC;
	iWR : IN STD_LOGIC;
	o7SEGLED : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	oCPLD_DEBUG : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	oENC_N3_INX : OUT STD_LOGIC;
	oENC_N4_INX : OUT STD_LOGIC;
	oENC_T3_DIR : OUT STD_LOGIC;
	oENC_T3_IN : OUT STD_LOGIC;
	oENC_T4_DIR : OUT STD_LOGIC;
	oENC_T4_IN : OUT STD_LOGIC;
	oLED_ENABLE : OUT STD_LOGIC;
	oLED_ENC_ERR : OUT STD_LOGIC;
	oLED_FPGA_OK : OUT STD_LOGIC;
	oLED_PWM : OUT STD_LOGIC;
	oOutput : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	oPWM2 : OUT STD_LOGIC;
	oRFID1_TXD : OUT STD_LOGIC;
	oRFID2_TXD : OUT STD_LOGIC;
	oRFID_RXD : OUT STD_LOGIC;
	oRST : OUT STD_LOGIC;
	oRSTIN : OUT STD_LOGIC;
	oWAIT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT MOD_EBU is
generic (
  addrc : integer := 1; -- number of cycles in address phase
  addhold : integer := 0; -- number of address hold cycles 
  cmd_delay : integer := 1; -- programmed command delay cycles
  waitrdc : integer := 1; -- programmed wait states for read acceses;
  waitwrd : integer := 1; -- programmed wait states for write acceses;
  datac : integer := 1 ; -- number of data hold cycles 
  rdrecovc : integer := 0; -- number of recovery cycles in recover phase after read access
  wrrecovc : integer := 0; -- number of recovery cycles in recover phase after wr access
  datawidth : integer := 16 ; 
  addwidth : integer := 16
);
port (
  iclk : in std_logic;
  reset : in std_logic;
  iRd_nWr : in std_logic;
  ien_wait : in std_logic := '0'; --enable wait for WAIT signal  
  iWait: out std_logic;
  iAddress : in std_logic_vector(addwidth - 1 downto 0);
  iData : in std_logic_vector(datawidth - 1 downto 0);
  oData : out std_logic_vector(datawidth - 1 downto 0);
  ioData : inout std_logic_vector(datawidth - 1 downto 0);
  oADV : out std_logic;
  oCS : out std_logic;
  oRD : out std_logic;
  oWR : out std_logic
);

END COMPONENT;

BEGIN

ebu_clk : MOD_CLKGEN 
GENERIC MAP (period => 7 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => sEBUCLK );

cpld_clk : MOD_CLKGEN
GENERIC MAP (period => 63 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => iCLK );

reset : MOD_RESET
GENERIC MAP (delay => 100 ns) PORT MAP ( reset_o => nRESET );

resetcpld : MOD_RESET
GENERIC MAP (delay => 100 ns) PORT MAP ( reset_o => iSW_RESET_CPLD );

  ebu_gen : entity work.mod_ebu(async_mux)
  GENERIC MAP (
  addrc => 1, addhold=> 0 , cmd_delay => 0, 
  waitrdc => 9,
  waitwrd => 9, 
  datac => 0 , rdrecovc => 0, wrrecovc => 0 ,
  datawidth => DATAWIDTH, addwidth => DATAWIDTH )
  PORT MAP (
  iclk => sEBUCLK,
  reset => sEBU_iRst,
  iRd_nWr => sEBU_iRdWr,
  ien_wait => sEBU_ienwait,
  iWait => oWAIT,
  iAddress => sEBU_iAdd,
  iData => sEBU_iData,
  oData => sEBU_oData,
  ioData => ioData,
  oADV => iADV,
  oCS => iCS_FPGA,
  oRD => iRD,
  oWR => iWR
  );
  
  
	i1 : MTCPLD_Top
	PORT MAP (
-- list connections between master ports and signals
	iCS_FPGA => iCS_FPGA,
	iCLK => iCLK,
	iADV => iADV,
	iWR => iWR,
	iRD => iRD,
	oWAIT => oWAIT,
	iInput => iInput,
	ioData => ioData,
	iDiffInput => iDiffInput,
	iDIP_SWITCH => iDIP_SWITCH,
	iENC_A3 => iENC_A3,
	iENC_A4 => iENC_A4,
	iENC_B3 => iENC_B3,
	iENC_B4 => iENC_B4,
	iENC_N3 => iENC_N3,
	iENC_N4 => iENC_N4,
	iLED_OVERCURRENT => iLED_OVERCURRENT,
	ioSYNC => ioSYNC,
	iPWM_LED => iPWM_LED,
	iRFID1_RXD => iRFID1_RXD,
	iRFID2_RXD => iRFID2_RXD,
	iRFID_MUX_SEL => iRFID_MUX_SEL,
	iRFID_TXD => iRFID_TXD,
	iSW_RESET_CPLD => iSW_RESET_CPLD,
	iSYNC_SEL1 => iSYNC_SEL1,
	iSYNC_SEL2 => iSYNC_SEL2,
	o7SEGLED => o7SEGLED,
	oCPLD_DEBUG => oCPLD_DEBUG,
	oENC_N3_INX => oENC_N3_INX,
	oENC_N4_INX => oENC_N4_INX,
	oENC_T3_DIR => oENC_T3_DIR,
	oENC_T3_IN => oENC_T3_IN,
	oENC_T4_DIR => oENC_T4_DIR,
	oENC_T4_IN => oENC_T4_IN,
	oLED_ENABLE => oLED_ENABLE,
	oLED_ENC_ERR => oLED_ENC_ERR,
	oLED_FPGA_OK => oLED_FPGA_OK,
	oLED_PWM => oLED_PWM,
	oOutput => oOutput,
	oPWM2 => oPWM2,
	oRFID1_TXD => oRFID1_TXD,
	oRFID2_TXD => oRFID2_TXD,
	oRFID_RXD => oRFID_RXD,
	oRST => oRST,
	oRSTIN => oRSTIN
	);
  

TESTSRAM : PROCESS is
variable TestCase : integer range 0 to 10 := 10;

PROCEDURE WRITEREG (constant REGNUM : std_logic_vector(7 downto 0); constant WRDATA : std_logic_vector(DATAWIDTH-1 downto 0)) is
BEGIN
  sEBU_iRdWr <='0'; -- Set to write mode.
  sEBU_iRst <= '0';
  wait for 100 ns;
  sEBU_iRst <= '1';
  -- Write PWM Config
  sEBU_iAdd <= X"00" & REGNUM;
  sEBU_iData <= WRDATA;
  wait until iWR = '1';
  sEBU_iData <= (others => 'Z');
END PROCEDURE;

PROCEDURE READREG(constant en_wait: std_logic; constant REGNUM : std_logic_vector(7 downto 0)) is
BEGIN
  sEBU_ienwait <= en_wait;
  sEBU_iRdWr <= '1';
  sEBU_iRst<= '0';
  wait for 300 ns;
  sEBU_iRst<= '1';
  -- Read : address phase
  sEBU_iAdd <= X"00" & REGNUM;
  sEBU_iData <= (others => 'Z');
  wait until iRD = '0';
  -- read : command phase
  wait until iRD = '1';

END PROCEDURE;
BEGIN
-----------------------------------
-- Test starts here
-----------------------------------
TestCase := 1;
--defaults
case TestCase is 
  when 1 =>  
  -- setup PWM1
  WRITEREG(X"01",X"0010");
  WRITEREG(X"02",X"0008");
  WRITEREG(X"00",X"0005");
  -- setup PWM2
  WRITEREG(X"04",X"0020");
  WRITEREG(X"05",X"0010");
  WRITEREG(X"03",X"0001");
  -- read PWM1 config
  READREG('0',X"00");
  -- read PWM2 config
  READREG('0',X"03");
  WRITEREG(X"31",X"0001");
  WRITEREG(X"30",X"0001");  
  WRITEREG(X"01",X"0016");  
  WRITEREG(X"01",X"0011");    
  WRITEREG(X"01",X"0012");    
  READREG('0',X"02");
  READREG('0',X"05");
  READREG('0',X"01");
  READREG('0',X"04");
  wait;
when 2 =>

wait; --END case 2
when others =>
end case;
wait; -- last line. DO NOT MOVE!
END PROCESS TESTSRAM;
-----------------------------------
-- Test starts here
-----------------------------------
TESTINPUTS : PROCESS IS
BEGIN
  iSYNC_SEL1 <= '0';
  iSYNC_SEL2 <= '0';
  iENC_A3 <= '0';
  iENC_A4 <= '0';
  iENC_B3 <= '0';
  iENC_B4 <= '0';
  iENC_N3 <= '0';
  iENC_N4 <= '0';
  iPWM_LED <= '0';
  iLED_OVERCURRENT <= '0';
  iRFID1_RXD <= '0';
  iRFID2_RXD <= '0';
  iRFID_MUX_SEL <= '0';
  iRFID_TXD <= '0';
  iInput <= (others => '0');
  iDiffInput <= (others => '0');
  iDIP_SWITCH <= (others => '0');
  ioSYNC <= (others => 'H');
  sEBU_iRdWr <='0'; -- Set to write mode.
  sEBU_iRst <= '0';
wait until nRESET = '1';
wait;
END PROCESS;

END MTCPLD_Top_arch;
