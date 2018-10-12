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
USE work.constants.all;

ENTITY MTCPLD_Top IS 
  GENERIC
  ( DATAWIDTH: INTEGER := 16
  );
  PORT (
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
  iInput  : IN STD_LOGIC_VECTOR(NUM_OF_INPUTS-1 DOWNTO 0);
  oOutput : OUT STD_LOGIC_VECTOR(NUM_OF_OUTPUTS-1 DOWNTO 0);
  
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
-- signal inCLKBUF1,inCLKBUF2, inCLK : STD_LOGIC := '1';
signal nRESET        : STD_LOGIC := '1';                                             
signal nCS           : STD_LOGIC := '1';                                                
signal nWAIT         : STD_LOGIC := '1';                                             
signal IO_ADDR       : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal IO_DAT_WR     : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal IO_DAT_RD     : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal nWrRdy        : STD_LOGIC;
signal sReset        : STD_LOGIC;
-- PWM modules signals
signal sWrPWMCONFIG1 : STD_LOGIC;
signal sWrPWMPERIOD1 : STD_LOGIC;
signal sWrPWMDUTY1   : STD_LOGIC;
signal sPWMCONFIG1   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMDUTY1     : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMPERIOD1   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMOUT1      : STD_LOGIC;
signal sWrPWMCONFIG2 : STD_LOGIC;
signal sWrPWMPERIOD2 : STD_LOGIC;
signal sWrPWMDUTY2   : STD_LOGIC;
signal sPWMCONFIG2   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMDUTY2     : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMPERIOD2   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMOUT2      : STD_LOGIC;
--7SEGMENT Led module signals
signal sWrSEG7OUTPUT : STD_LOGIC;
signal sSeg7En       : STD_LOGIC;
signal sSEG7OUTPUT   : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal sSEG7OUTPUT16 : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
-- Reset Module signals
signal sWrConfig     : STD_LOGIC;
signal sWrPeriod     : STD_LOGIC;
signal sResetConfig  : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sResetPeriod  : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
-- Quadrature Encoder Module (QEM)
SIGNAL sWrQEMCONFIG1 : STD_LOGIC;
SIGNAL sWrQEMCOUNTERL1 : STD_LOGIC;
SIGNAL sWrQEMCOUNTERH1 : STD_LOGIC;
SIGNAL sQEMCONFIG1 : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sQEMCOUNTER1 : STD_LOGIC_VECTOR(ENC_WIDTH-1 DOWNTO 0);
SIGNAL sWrQEMCONFIG2 : STD_LOGIC;
SIGNAL sWrQEMCOUNTERL2 : STD_LOGIC;
SIGNAL sWrQEMCOUNTERH2 : STD_LOGIC;
SIGNAL sQEMCONFIG2 : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sQEMCOUNTER2 : STD_LOGIC_VECTOR(ENC_WIDTH-1 DOWNTO 0);
-- Input Module
SIGNAL sInputStatus : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sInputs : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
-- Output Module 1
SIGNAL sOutput1 : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sWrOutput1 : STD_LOGIC;
-- Output Module 2
SIGNAL sOutput2 : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sWrOutput2 : STD_LOGIC;
-- Sync Module
SIGNAL sSyncSelc : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL sWrSYNCONFIG1 : STD_LOGIC;
SIGNAL sWrSYNCONFIG2 : STD_LOGIC;
SIGNAL sSYNDIR : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sSYNVALUE : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sSYNCONFIG1 : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sSYNCONFIG2 : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
-- SERIALMUX module
SIGNAL sWrSERIALMUXCONFIG : STD_LOGIC;
SIGNAL sSERIALMUXCONFIG : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
-- TIMERMODULE
SIGNAL sTimermS : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sTimeruS : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sTimersec : STD_LOGIC_VECTOR(31 DOWNTO 0);

COMPONENT IO_SPACE
	PORT (
	iCLK      : IN STD_LOGIC;
	inRESET   : IN STD_LOGIC;
  inCS      : IN STD_LOGIC;
	inWrRdy   : IN STD_LOGIC;
	inRdRdy   : IN STD_LOGIC;
	iAddress  : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	iData     : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	oData     : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  oWrQEMCONFIG1 : OUT STD_LOGIC;
  oWrQEMCOUNTERL1 : OUT STD_LOGIC;
  oWrQEMCOUNTERH1 : OUT STD_LOGIC;
  iQEMCONFIG1 : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  iQEMCOUNTER1 : IN STD_LOGIC_VECTOR(ENC_WIDTH-1 DOWNTO 0);
  oWrQEMCONFIG2 : OUT STD_LOGIC;
  oWrQEMCOUNTERL2 : OUT STD_LOGIC;
  oWrQEMCOUNTERH2 : OUT STD_LOGIC;
  iQEMCONFIG2 : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  iQEMCOUNTER2 : IN STD_LOGIC_VECTOR(ENC_WIDTH-1 DOWNTO 0);
  oWrPWMCONFIG1 : OUT STD_LOGIC;
  oWrPWMPERIOD1 : OUT STD_LOGIC;
  oWrPWMDUTY1   : OUT STD_LOGIC;
	iPWMCONFIG1   : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	iPWMDUTY1     : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	iPWMPERIOD1   : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  oWrPWMCONFIG2 : OUT STD_LOGIC;
  oWrPWMPERIOD2 : OUT STD_LOGIC;
  oWrPWMDUTY2   : OUT STD_LOGIC;
  iPWMCONFIG2   : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  iPWMPERIOD2   : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  iPWMDUTY2     : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  oWrSEG7OUTPUT : OUT STD_LOGIC;
  iSEG7OUTPUT   : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');  
  iINPUTSTATUS : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  iINPUTS : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  iDIPSWITCH : IN STD_LOGIC_VECTOR(3 downto 0);
  oWrOUTPUT1 : OUT STD_LOGIC;  
  iOUTPUT1 : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  oWrOUTPUT2 : OUT STD_LOGIC;  
  iOUTPUT2 : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  oWrSYNCONFIG1 : OUT STD_LOGIC;  
  oWrSYNCONFIG2 : OUT STD_LOGIC;  
  iSYNCONFIG1 : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  iSYNCONFIG2 : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  iSYNDIR : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  iSYNVALUE : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);  
  oWrSERIALMUXCONFIG : OUT STD_LOGIC;  
  iSERIALMUXCONFIG : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);   
  oWrRESETCONFIG : OUT STD_LOGIC;
  oWrRESETPERIOD : OUT STD_LOGIC;
  iRESETCONFIG  : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  iRESETPERIOD  : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  iTimersec   : IN std_logic_vector(31 downto 0):= (others => '0');
  iTimermS   : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  iTimeruS   : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0')
	);
END COMPONENT;

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

COMPONENT SYNCMODULE
	GENERIC ( BUSWIDTH : INTEGER := DATAWIDTH; NUMOFSYNC : INTEGER := 7);
	PORT (
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	iInputs : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
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

COMPONENT SRAM_IO is  
	GENERIC ( DATAWIDTH : INTEGER := DATAWIDTH; CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0) := b"00001101" );
	PORT (
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

COMPONENT PWMMODULE 
  GENERIC ( BUSWIDTH : INTEGER := DATAWIDTH; PWMBITWIDTH : INTEGER := 16 ); 
  PORT ( 
  iCLK         :   IN STD_LOGIC; 
  inRESET      :   IN STD_LOGIC; 
  iWrPWMCONFIG :   IN STD_LOGIC; 
  iWrPWMPERIOD :   IN STD_LOGIC; 
  iWrPWMDUTY   :   IN STD_LOGIC;
  iData        :   IN STD_LOGIC_VECTOR(buswidth-1 DOWNTO 0); 
  oPWM         :   OUT STD_LOGIC;
  oPWMCONFIG   :   OUT STD_LOGIC_VECTOR(pwmbitwidth-1 DOWNTO 0); 
  oPWMPERIOD   :   OUT STD_LOGIC_VECTOR(pwmbitwidth-1 DOWNTO 0); 
  oPWMDUTY     :   OUT STD_LOGIC_VECTOR(pwmbitwidth-1 DOWNTO 0) 
  ); 
END COMPONENT;

COMPONENT LED7SEGMODULE
	GENERIC ( DATAWIDTH : INTEGER := DATAWIDTH );
	PORT (
  inReset		:	 IN STD_LOGIC;
  iWrData		:	 IN STD_LOGIC;
  iEnable		:	 IN STD_LOGIC;    
  iData		:	 IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  oLEDOutput		:	 OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT RESETMODULE
	PORT (
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	inReset : IN STD_LOGIC;
	iWrConfig : IN STD_LOGIC;
	iWrPeriod : IN STD_LOGIC;
	oReset : OUT STD_LOGIC;
	oResetConfig : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	oResetPeriod : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT QEMODULE
  GENERIC (
  BUSWIDTH : natural := DATAWIDTH;
  ENCWIDTH : natural := ENC_WIDTH
  );
	PORT (
	iA : IN STD_LOGIC;
	iB : IN STD_LOGIC;
	iCLK : IN STD_LOGIC;
	iData : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	iIndex : IN STD_LOGIC;
	inRESET : IN STD_LOGIC;
	iWrQEMCONFIG : IN STD_LOGIC;
	iWrQEMCOUNTERL : IN STD_LOGIC;
	iWrQEMCOUNTERH : IN STD_LOGIC;
	oDir : OUT STD_LOGIC;
	oIndex : OUT STD_LOGIC;
	oPulse : OUT STD_LOGIC;
	oQEMCONFIG : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	oQEMCOUNTER : OUT STD_LOGIC_VECTOR(ENC_WIDTH-1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT OUTPUTMODULE
  GENERIC (
  DATAWIDTH : integer := DATAWIDTH;
  OUTPUTWIDTH : integer := NUM_OF_OUTPUTS;
  INACTIVESTATE : std_logic := '0'
  );
  
  PORT (
  inReset    : IN STD_LOGIC; 
  iWrData    : IN STD_LOGIC;
  iData      : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);    
  oOutput    : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0) 
  );
END COMPONENT;

COMPONENT INPUTMODULE
  GENERIC (
  DATAWIDTH : natural := DATAWIDTH;
  FILTER : natural := 5     -- number of cycles to FILTER Diffential inputs
  );
	PORT (
	iCLK : IN STD_LOGIC;
	iInputs : IN STD_LOGIC_VECTOR(NUM_OF_INPUTS-1 DOWNTO 0);
	inReset : IN STD_LOGIC;
	oInputs : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	oInputStatus : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT TIMERMODULE is
	generic
	(
  DATAWIDTH   : natural := DATAWIDTH;
  MAX_COUNT_WIDTH   : natural := 30;
  COUNTS_PER_US : integer := 16;   
  COUNTS_PER_MS : integer := 1000;
  COUNTS_PER_SEC : integer := 1000
	);
	port
	(
    -- Input ports
    iCLK         : IN STD_LOGIC;
    inRESET      : IN STD_LOGIC;   
    iData        : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
    -- Output ports
	 oSecond : OUT STD_LOGIC;
    oTimersec   : OUT std_logic_vector(31 downto 0):= (others => '0');
    oTimermS   : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
    oTimeruS   : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0')

	);
END COMPONENT;


SIGNAL DIP_SWITCH_BUFF,sig_a,sig_b,sig_c,sig_d : STD_LOGIC_VECTOR(3 downto 0);
BEGIN

nRESET  <= iSW_RESET_CPLD;
nCS     <= iCS_FPGA;
sSyncSelc <= iSYNC_SEL2 & iSYNC_SEL1;
sSeg7En <= iPWM_LED;
sSEG7OUTPUT16 <= B"0000_0000" & sSEG7OUTPUT;
o7SEGLED <= sSEG7OUTPUT;
oOutput <= sOutput1(NUM_OF_OUTPUTS-1 downto 0); -- rest of the bits are for outputs.
oRSTIN      <= sOutput2(0); -- reset signal for EEPROM.
oLED_ENABLE <= sOutput2(1); -- LED enable pin
oLED_PWM <= sPWMOUT1;
oLED_ENC_ERR <= sPWMOUT2;
oPWM2 <= sPWMOUT2;
oRST <= sReset;

DIP_SWITCH_DEBOUNCE : PROCESS(iCLK,nRESET,iDIP_SWITCH) is
BEGIN
  if nRESET = '0' then
    sig_a <= "0000";
    sig_b <= "0000";
    sig_c <= "0000";
    sig_d <= "0000";
    DIP_SWITCH_BUFF <= "0000";
  elsif rising_edge(iCLK) then
    sig_a <= iDIP_SWITCH;
    sig_b <= sig_a;
    sig_c <= sig_b;
    sig_d <= sig_c;
    DIP_SWITCH_BUFF <= sig_d;
  end if;
END PROCESS;

TIMERMOD : TIMERMODULE
  GENERIC MAP (  DATAWIDTH =>  DATAWIDTH )
  PORT MAP (
  iCLK => iCLK,
  iData => IO_DAT_WR,
  inRESET => nRESET,
  oSecond => oLED_FPGA_OK,
  oTimermS => sTimermS,
  oTimeruS => sTimeruS,  
  oTimersec => sTimersec
  );

SYNCMOD : SYNCMODULE
	PORT MAP (
-- list connections between master ports and signals
	iCLK => iCLK,
	iData => IO_DAT_WR,
	iInputs => sInputs,
	inRESET => nRESET,
	inSyncSel => sSyncSelc,
	inWrSYNCONFIG1 => sWrSYNCONFIG1,
	inWrSYNCONFIG2 => sWrSYNCONFIG2,
	ioSync => ioSYNC,
	oSYNCONFIG1 => sSYNCONFIG1,
	oSYNCONFIG2 => sSYNCONFIG2,
	oSYNDIR => sSYNDIR,
	oSYNVALUE => sSYNVALUE
	);

OPMOD1 : OUTPUTMODULE
  GENERIC MAP (OUTPUTWIDTH => NUM_OF_OUTPUTS )
  PORT MAP ( 
  inReset => nRESET,
  iWrData => sWrOutput1,
  iData => IO_DAT_WR,
  oOutput => sOutput1
  );

OPMOD2 : OUTPUTMODULE -- This module for output other signals
  GENERIC MAP (OUTPUTWIDTH => 2 )
  PORT MAP (
  inReset => nRESET,
  iWrData => sWrOutput2,
  iData => IO_DAT_WR,
  oOutput => sOutput2
  );
  
IPMOD : INPUTMODULE
	PORT MAP (
-- list connections between master ports and signals
	iCLK => iCLK,
	iInputs => iInput,
	inReset => nRESET,
	oInputs => sInputs,
	oInputStatus => sInputStatus
	);
  
QENC1 : QEMODULE
  GENERIC MAP (  BUSWIDTH =>  DATAWIDTH,  ENCWIDTH =>  ENC_WIDTH )
	PORT MAP (
-- list connections between master ports and signals
	iA => iENC_A3,
	iB => iENC_B3,
	iCLK => iCLK,
	iData => IO_DAT_WR,
	iIndex => iENC_N3,
	inRESET => nRESET,
	iWrQEMCONFIG => sWrQEMCONFIG1,
	iWrQEMCOUNTERL => sWrQEMCOUNTERL1,
	iWrQEMCOUNTERH => sWrQEMCOUNTERH1,
	oDir => oENC_T3_DIR,
	oIndex => oENC_N3_INX,
	oPulse => oENC_T3_IN,
	oQEMCONFIG => sQEMCONFIG1,
	oQEMCOUNTER => sQEMCOUNTER1
	);

QENC2 : QEMODULE
  GENERIC MAP (  BUSWIDTH =>  DATAWIDTH,  ENCWIDTH =>  ENC_WIDTH )
	PORT MAP (
-- list connections between master ports and signals
	iA => iENC_A4,
	iB => iENC_B4,
	iCLK => iCLK,
	iData => IO_DAT_WR,
	iIndex => iENC_N4,
	inRESET => nRESET,
	iWrQEMCONFIG => sWrQEMCONFIG2,
	iWrQEMCOUNTERL => sWrQEMCOUNTERL2,
	iWrQEMCOUNTERH => sWrQEMCOUNTERH2,
	oDir => oENC_T4_DIR,
	oIndex => oENC_N4_INX,
	oPulse => oENC_T4_IN,
	oQEMCONFIG => sQEMCONFIG2,
	oQEMCOUNTER => sQEMCOUNTER2
	);  

MOD_SERIALMUX : SERIALMUX
PORT MAP (
-- list connections between master ports and signals
  iCLK => iCLK,
  iData => IO_DAT_WR,
  iMUXSEL => iRFID_MUX_SEL,
  inReset => nRESET,
  iRX1_IN => iRFID1_RXD,
  iRX2_IN => iRFID2_RXD,
  iTX_IN => iRFID_TXD,
  iWrSERIALMUXCONFIG => sWrSERIALMUXCONFIG,
  oRX_OUT => oRFID_RXD,
  oSERIALMUXCONFIG => sSERIALMUXCONFIG,
  oTX1_OUT => oRFID1_TXD,
  oTX2_OUT => oRFID2_TXD
);

MOD_SRAMIO : SRAM_IO
GENERIC MAP (  DATAWIDTH =>  DATAWIDTH,  CPLD_VERSION =>  "00001101" )
PORT MAP 
(
  iCLK       =>  iCLK         ,
  nRESET     =>  nRESET       ,
  DATA       =>  ioData       ,
  nRD        =>  iRD          ,
  nWR        =>  iWR          ,
  nCS        =>  nCS          ,
  nADV       =>  iADV         ,
  nWAIT      =>  oWAIT        ,
  nWrRdy     =>  nWrRdy       ,
  IO_ADDR    =>  IO_ADDR      , -- address bus to IOSPACE
  IO_DAT_WR  =>  IO_DAT_WR    , -- data to write to IOSPACE
  IO_DAT_RD  =>  IO_DAT_RD      -- data to read from IOSPACE
);

MOD_IOSPACE : IO_SPACE
	PORT MAP (
-- list connections between master ports and signals
	iAddress => IO_ADDR,
	iCLK => iCLK,
  inCS => nCS,
	iData => IO_DAT_WR,
	inRdRdy => iRD,
	inRESET => nRESET,
	inWrRdy => nWrRdy,
	oData => IO_DAT_RD,
  oWrPWMCONFIG1 => sWrPWMCONFIG1,
  oWrPWMPERIOD1 => sWrPWMPERIOD1,
  oWrPWMDUTY1 => sWrPWMDUTY1,
	iPWMCONFIG1 => sPWMCONFIG1,
	iPWMDUTY1 => sPWMDUTY1,
	iPWMPERIOD1 => sPWMPERIOD1,
  oWrPWMCONFIG2 => sWrPWMCONFIG2,
  oWrPWMPERIOD2 => sWrPWMPERIOD2,
  oWrPWMDUTY2 => sWrPWMDUTY2,
	iPWMCONFIG2 => sPWMCONFIG2,
	iPWMDUTY2 => sPWMDUTY2,
	iPWMPERIOD2 => sPWMPERIOD2,
  oWrQEMCONFIG1 => sWrQEMCONFIG1,
  oWrQEMCOUNTERL1 => sWrQEMCOUNTERL1,
  oWrQEMCOUNTERH1 => sWrQEMCOUNTERH1,
  iQEMCONFIG1 => sQEMCONFIG1,
  iQEMCOUNTER1 => sQEMCOUNTER1,
  oWrQEMCONFIG2 => sWrQEMCONFIG2,
  oWrQEMCOUNTERL2 => sWrQEMCOUNTERL2,
  oWrQEMCOUNTERH2 => sWrQEMCOUNTERH2,
  iQEMCONFIG2 => sQEMCONFIG2,
  iQEMCOUNTER2 => sQEMCOUNTER2,
  oWrSEG7OUTPUT => sWrSEG7OUTPUT,
  iSEG7OUTPUT => sSEG7OUTPUT16,
  iINPUTSTATUS => sInputStatus,
  iINPUTS => sInputs,
  iDIPSWITCH => DIP_SWITCH_BUFF,
  oWrOUTPUT1 => sWrOutput1,
  iOUTPUT1 => sOutput1,
  oWrOUTPUT2 => sWrOutput2,
  iOUTPUT2 => sOutput2,
  oWrSYNCONFIG1 => sWrSYNCONFIG1,
  oWrSYNCONFIG2 => sWrSYNCONFIG2,
  iSYNCONFIG1 => sSYNCONFIG1,
  iSYNCONFIG2 => sSYNCONFIG2,
  iSYNDIR => sSYNDIR,
  iSYNVALUE => sSYNVALUE,
  oWrSERIALMUXCONFIG => sWrSERIALMUXCONFIG,
  iSERIALMUXCONFIG => sSERIALMUXCONFIG,
  oWrRESETCONFIG => sWrConfig,
  oWrRESETPERIOD => sWrPeriod,
  iRESETCONFIG => sResetConfig,
  iRESETPERIOD => sResetPeriod,
  iTimersec => sTimersec,
  iTimermS => sTimermS, 
  iTimeruS => sTimeruS
	);  

MOD_PWM1 : PWMMODULE
  PORT MAP (
  iCLK => iCLK,
  inRESET => nRESET,
  iData => IO_DAT_WR,
  iWrPWMCONFIG => sWrPWMCONFIG1,
  iWrPWMPERIOD => sWrPWMPERIOD1,
  iWrPWMDUTY => sWrPWMDUTY1,
  oPWM => sPWMOUT1,
  oPWMCONFIG => sPWMCONFIG1,
  oPWMPERIOD => sPWMPERIOD1,
  oPWMDUTY => sPWMDUTY1
  );
  
MOD_PWM2 : PWMMODULE
  PORT MAP (
  iCLK => iCLK,
  inRESET => nRESET,
  iData => IO_DAT_WR,
  iWrPWMCONFIG => sWrPWMCONFIG2,
  iWrPWMPERIOD => sWrPWMPERIOD2,
  iWrPWMDUTY => sWrPWMDUTY2,
  oPWM => sPWMOUT2,
  oPWMCONFIG => sPWMCONFIG2,
  oPWMPERIOD => sPWMPERIOD2,
  oPWMDUTY => sPWMDUTY2
  );
  
MOD_SEG : LED7SEGMODULE
  PORT MAP (
  inReset => nRESET,
  iWrData => sWrSEG7OUTPUT,
  iEnable => sSeg7En,
  iData => IO_DAT_WR,
  oLEDOutput => sSEG7OUTPUT
  );
  
MOD_RESET : RESETMODULE
  PORT MAP (
	iCLK => iCLK,
	iData => IO_DAT_WR,
	inReset => nRESET,
	iWrConfig => sWrConfig,
	iWrPeriod => sWrPeriod,
	oReset => sReset,
	oResetConfig => sResetConfig,
	oResetPeriod => sResetPeriod
	);
  
DEBUG : process (iCLK,nRESET,iDIP_SWITCH,iWR,iRD,iADV,iCS_FPGA,
                  ioData,iSW_RESET_CPLD,iPWM_LED,iSYNC_SEL1,
                  iSYNC_SEL2,iRFID_MUX_SEL,sPWMOUT2,sPWMOUT1,sWrPWMCONFIG1,sWrPWMCONFIG2
                  ) is
begin
--  if (nRESET = '0') then
--    --oCPLD_DEBUG <= "0000";
--  elsif rising_edge(iCLK) then
----    case iDIP_SWITCH is 
----    when B"0000" =>  oCPLD_DEBUG <= (iWR,iRD,iADV,iCS_FPGA); 
----    when B"0001" =>  oCPLD_DEBUG <= IO_DAT_WR(3 downto 0); 
----    when B"0010" =>  oCPLD_DEBUG <= IO_DAT_WR(7 downto 4);
----    when B"0011" =>  oCPLD_DEBUG <= (iPWM_LED,iSYNC_SEL1,iSYNC_SEL2,iRFID_MUX_SEL);
----    when B"0100" =>  oCPLD_DEBUG <= IO_DAT_RD(3 downto 0); 
----    when B"0101" =>  oCPLD_DEBUG <= IO_DAT_RD(7 downto 4); 
----    when B"0110" =>  oCPLD_DEBUG <= (sPWMOUT2,sPWMOUT1,sReset,sWrPWMCONFIG2);
----    when others =>	oCPLD_DEBUG <= (iWR,iRD,iADV,iCS_FPGA);
----    end case;
--  end if;

oCPLD_DEBUG <= (others => 'Z');
    
end process;
END logic;