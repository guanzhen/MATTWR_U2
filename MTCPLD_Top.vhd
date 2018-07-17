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
  iInput  : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
  iDiffInput  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
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
signal nRESET        : STD_LOGIC := '1';                                             
signal nCS           : STD_LOGIC := '1';                                                
signal nWAIT         : STD_LOGIC := '1';                                             
signal IO_ADDR       : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal IO_DAT_WR     : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal IO_DAT_RD     : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
signal nWrRdy        : STD_LOGIC;

-- PWM modules signals
signal sWrPWMCONFIG1 : STD_LOGIC;
signal sWrPWMPERIOD1 : STD_LOGIC;
signal sWrPWMDUTY1   : STD_LOGIC;
signal sPWMCONFIG1   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMDUTY1     : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMPERIOD1   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sWrPWMCONFIG2 : STD_LOGIC;
signal sWrPWMPERIOD2 : STD_LOGIC;
signal sWrPWMDUTY2   : STD_LOGIC;
signal sPWMCONFIG2   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMDUTY2     : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
signal sPWMPERIOD2   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
--7SEGMENT Led module signals
signal sWrSEG7OUTPUT : STD_LOGIC;
signal sSeg7En       : STD_LOGIC;
signal sSEG7OUTPUT   : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
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
SIGNAL siInputs : STD_LOGIC_VECTOR(NUM_OF_INPUTS-1 DOWNTO 0);
SIGNAL sDiffInputs : STD_LOGIC_VECTOR(NUM_OF_DIFFINPUTS*2-1 DOWNTO 0);
SIGNAL sInputStatus : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sInputs : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
-- Output Module
SIGNAL sOutputs : STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
SIGNAL sWrOutput : STD_LOGIC;
COMPONENT IO_SPACE
	PORT (
	iCLK      : IN STD_LOGIC;
	inRESET   : IN STD_LOGIC;
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
  oWrOUTPUTS : OUT STD_LOGIC;  
  iOUTPUTS : IN STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
  oWrRESETCONFIG : OUT STD_LOGIC;
  oWrRESETPERIOD : OUT STD_LOGIC;
  iRESETCONFIG  : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  iRESETPERIOD  : IN std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0')

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
  SINGLE_INPUTS : natural := NUM_OF_INPUTS;
  FILTER : natural := 5;     -- number of cycles to FILTER Diffential inputs
  DIFF_INPUTS : natural := NUM_OF_DIFFINPUTS
  );
	PORT (
	iCLK : IN STD_LOGIC;
	iDiffInputs : IN STD_LOGIC_VECTOR(NUM_OF_DIFFINPUTS*2-1 DOWNTO 0);
	iInputs : IN STD_LOGIC_VECTOR(NUM_OF_INPUTS-1 DOWNTO 0);
	inReset : IN STD_LOGIC;
	oInputs : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0);
	oInputStatus : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0)
	);
END COMPONENT;

BEGIN

nRESET  <= iSW_RESET_CPLD;
nCS     <= iCS_FPGA;
sSeg7En <= iPWM_LED;
siInputs <= iInput(NUM_OF_INPUTS-1 downto 0);
sDiffInputs <= iDiffInput(NUM_OF_DIFFINPUTS*2-1 downto 0);
oOutput <= sOutputs(NUM_OF_OUTPUTS-1 downto 0);

OPMOD : OUTPUTMODULE
  PORT MAP (
  inReset => nRESET,
  iWrData => sWrOutput,
  iData => IO_DAT_WR,
  oOutput => sOutputs
  );
  
IPMOD : INPUTMODULE
	PORT MAP (
-- list connections between master ports and signals
	iCLK => iCLK,
	iDiffInputs => sDiffInputs,
	iInputs => siInputs,
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
  iSEG7OUTPUT => sSEG7OUTPUT,
  iINPUTSTATUS => sInputStatus,
  iINPUTS => sInputs,
  oWrOUTPUTS => sWrOutput,
  iOUTPUTS => sOutputs,
  oWrRESETCONFIG => sWrConfig,
  oWrRESETPERIOD => sWrPeriod,
  iRESETCONFIG => sResetConfig,
  iRESETPERIOD => sResetPeriod   
	);  

MOD_PWM1 : PWMMODULE
  PORT MAP (
  iCLK => iCLK,
  inRESET => nRESET,
  iData => IO_DAT_WR,
  iWrPWMCONFIG => sWrPWMCONFIG1,
  iWrPWMPERIOD => sWrPWMPERIOD1,
  iWrPWMDUTY => sWrPWMDUTY1,
  oPWM => oLED_PWM,
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
  oPWM => oPWM2,
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
  oLEDOutput => o7SEGLED
  );
  
MOD_RESET : RESETMODULE
  PORT MAP (
	iCLK => iCLK,
	iData => IO_DAT_WR,
	inReset => nRESET,
	iWrConfig => sWrConfig,
	iWrPeriod => sWrPeriod,
	oReset => oRST,
	oResetConfig => sResetConfig,
	oResetPeriod => sResetPeriod
	);
END logic;