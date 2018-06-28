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

-- PROGRAM    "Quartus II 64-Bit"
-- VERSION    "Version 14.1.0 Build 186 12/03/2014 SJ Full Version"
-- CREATED    "Thu Apr 12 18:05:48 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MTCPLD_Top IS 
  GENERIC
  ( DATAWIDTH: INTEGER := 16
  );
  PORT
  (
  iSW_RESET_CPLD :  IN  STD_LOGIC;
  iCLK :  IN  STD_LOGIC;
  iRD :  IN  STD_LOGIC;
  iWR :  IN  STD_LOGIC;
  iCS_FPGA :  IN  STD_LOGIC;
  iADV :  IN  STD_LOGIC;
  oWAIT :  OUT  STD_LOGIC;
  ioData :  INOUT  STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);    
  iENC_A3 :  IN  STD_LOGIC;
  iENC_B3 :  IN  STD_LOGIC;
  iENC_N3 :  IN  STD_LOGIC;
  iENC_A4 :  IN  STD_LOGIC;
  iENC_B4 :  IN  STD_LOGIC;
  iENC_N4 :  IN  STD_LOGIC;
  oENC_T3_IN :  OUT  STD_LOGIC;
  oENC_T3_DIR :  OUT  STD_LOGIC;
  oENC_N3_INX :  OUT  STD_LOGIC;
  oENC_T4_IN :  OUT  STD_LOGIC;
  oENC_T4_DIR :  OUT  STD_LOGIC;
  oENC_N4_INX :  OUT  STD_LOGIC;
  
  iPWM_LED :  IN  STD_LOGIC;
  o7SEGLED :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
  iDIP_SWITCH :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
  iInput  : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
  iDiffInput  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
  oOutput : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
  
  iSYNC_SEL1 :  IN  STD_LOGIC;
  iSYNC_SEL2 :  IN  STD_LOGIC;
  ioSYNC : INOUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  
  oCPLD_DEBUG : OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);

  iRFID_MUX_SEL :  IN  STD_LOGIC;
  iRFID_TXD :  IN  STD_LOGIC;
  oRFID_RXD :  OUT  STD_LOGIC;
  oRFID1_TXD :  OUT  STD_LOGIC;
  iRFID1_RXD :  IN  STD_LOGIC;
  oRFID2_TXD :  OUT  STD_LOGIC;
  iRFID2_RXD :  IN  STD_LOGIC;
  
  oLED_FPGA_OK :  OUT  STD_LOGIC;
  oLED_PWM :  OUT  STD_LOGIC;
  oPWM2 :  OUT  STD_LOGIC;
  iLED_OVERCURRENT :  IN  STD_LOGIC;
  oLED_ENABLE :  OUT  STD_LOGIC;
  oLED_ENC_ERR :  OUT  STD_LOGIC;
  oRSTIN :  OUT STD_LOGIC;
  oRST :  OUT  STD_LOGIC
  );
END MTCPLD_Top;

ARCHITECTURE logic OF MTCPLD_Top IS 
signal nRESET        : STD_LOGIC := '1';                                             
signal nCS           : STD_LOGIC := '1';                                             
signal nADV          : STD_LOGIC := '1';                                             
signal nWAIT         : STD_LOGIC := '1';                                             
signal IO_ADDR       : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal IO_DAT_WR     : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal IO_DAT_RD     : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal nWrRdy        : STD_LOGIC;

signal oPWMCONFIG1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal oPWMDUTY1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal oPWMPERIOD1 : STD_LOGIC_VECTOR(15 DOWNTO 0);

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

COMPONENT SRAM_IO is  
	GENERIC ( DATAWIDTH : INTEGER := 16; CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0) := b"00001101" );
	PORT
	(
    iCLK      : IN std_logic;
		nRESET    : IN STD_LOGIC;
		DATA      : INOUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
		nRD       : IN STD_LOGIC;
		nWR       : IN STD_LOGIC;
		nCS       : IN STD_LOGIC;
		nADV      : IN STD_LOGIC;
		nWAIT     : OUT STD_LOGIC;
    nWrRdy    : OUT std_logic;
		IO_ADDR	  : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
		IO_DAT_WR	: OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
		IO_DAT_RD	: IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0)
	);
END COMPONENT;


BEGIN

nRESET <= iSW_RESET_CPLD;
nCS <= iCS_FPGA;

MOD_SRAMIO : SRAM_IO
GENERIC MAP (  DATAWIDTH =>  DATAWIDTH,  CPLD_VERSION =>  "00001101" )
PORT MAP 
(
  iCLK       => iCLK,
  nRESET     =>  nRESET       ,
  DATA       =>  ioData       ,
  nRD        =>  iRD          ,
  nWR        =>  iWR          ,
  nCS        =>  nCS          ,
  nADV       =>  iADV         ,
  nWAIT      =>  oWAIT        ,
  nWrRdy     =>  nWrRdy        ,
  IO_ADDR    =>  IO_ADDR      , -- address bus to IOSPACE
  IO_DAT_WR  =>  IO_DAT_WR    , -- data to write to IOSPACE
  IO_DAT_RD  =>  IO_DAT_RD      -- data to read from IOSPACE
);

MOD_IOSPACE : IO_SPACE
	PORT MAP (
-- list connections between master ports and signals
	iAddress => IO_ADDR,
	iCLK => iCLK,
	iData => IO_DAT_WR,
	inRdRdy => iRD,
	inRESET => nRESET,
	inWrRdy => iWR,
	oData => IO_DAT_RD,
	oPWMCONFIG1 => oPWMCONFIG1,
	oPWMDUTY1 => oPWMDUTY1,
	oPWMPERIOD1 => oPWMPERIOD1
	);  

  
  
END logic;