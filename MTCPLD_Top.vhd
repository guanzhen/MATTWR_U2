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
  ( EBU_WIDTH: INTEGER := 16
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
  ioData :  INOUT  STD_LOGIC_VECTOR(EBU_WIDTH-1 DOWNTO 0);    
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
BEGIN

END logic;