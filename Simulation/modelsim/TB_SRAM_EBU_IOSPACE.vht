LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.common.all;
USE work.Package_IO_SPACE.all;
USE work.Package_PWM_Module.all;

ENTITY TB_SRAM_EBU_IOSPACE IS
GENERIC  
    (
        WIDTH        : integer  :=    8;                                               -- Datenbus 8 Bit
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                      -- Version 0.13
    );  
END TB_SRAM_EBU_IOSPACE;

architecture logic of TB_SRAM_EBU_IOSPACE is
signal sEBUCLK       : std_logic;
signal sclk          : std_logic;
signal nRESET        : std_logic := '1';                                             
signal DATA          : std_logic_vector(WIDTH-1 downto 0) := (others => 'Z'); 
signal nRD           : std_logic := '1';                                             
signal nWR           : std_logic := '1';                                             
signal nCS           : std_logic := '1';                                             
signal nADV          : std_logic := '1';                                             
signal nWAIT         : std_logic := '1';                                             
signal IO_ADDR       : std_logic_vector(WIDTH-1 downto 0);
signal IO_DAT_WR     : std_logic_vector(WIDTH-1 downto 0);
signal IO_DAT_RD     : std_logic_vector(WIDTH-1 downto 0);
signal nWrRdy        : std_logic;

signal sEBU_iRst     : std_logic := '1';  --EBU reset signal
signal sEBU_iRdWr    : std_logic := '1';
signal sEBU_ienwait  : std_logic := '1';
signal sEBU_iAdd     : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_iData    : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_oData    : std_logic_vector(WIDTH-1 downto 0);

--PWM signal
SIGNAL PWM : STD_LOGIC;

--IOSPACE signals
SIGNAL Clk : STD_LOGIC;
SIGNAL DIP_SW : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Enc_MT1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Enc_MT2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL H_timer : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL iInputs : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL oOutputs : STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL Pizza_Cali : STD_LOGIC;
SIGNAL PWM_Duty : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL PWM_Config : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL PWM_Frq : STD_LOGIC_VECTOR(15 DOWNTO 0);
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

COMPONENT SRAM_IO is  
	GENERIC ( WIDTH : INTEGER := 8; CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0) := b"00001101" );
	PORT
	(
    iCLK : IN std_logic;
		nRESET :	 IN STD_LOGIC;
		DATA :	 INOUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		nRD :	 IN STD_LOGIC;
		nWR		:	 IN STD_LOGIC;
		nCS		:	 IN STD_LOGIC;
		nADV		:	 IN STD_LOGIC;
		nWAIT		:	 OUT STD_LOGIC;
    nWrRdy        : OUT std_logic;
		IO_ADDR		:	 OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		IO_DAT_WR		:	 OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		IO_DAT_RD		:	 IN STD_LOGIC_VECTOR(width-1 DOWNTO 0)
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
  datawidth : integer := 8 ; 
  addwidth : integer := 8
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
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => sEBUCLK );

cpld_clk : MOD_CLKGEN
GENERIC MAP (period => 900 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => sclk );

reset : MOD_RESET
GENERIC MAP (delay => 100 ns) PORT MAP ( reset_o => nRESET );

ebu_gen : entity work.mod_ebu(async_mux)
GENERIC MAP (
addrc => 1, addhold=> 0 , cmd_delay => 0, waitrdc => 2, 
waitwrd => 9, datac => 0 , rdrecovc => 0, wrrecovc => 0 ,
datawidth => 8, addwidth => 8 )
PORT MAP (
  iclk => sEBUCLK,
  reset => sEBU_iRst,
  iRd_nWr => sEBU_iRdWr,
  ien_wait => sEBU_ienwait,
  iWait => nWAIT,
  iAddress => sEBU_iAdd,
  iData => sEBU_iData,
  oData => sEBU_oData,
  ioData => DATA,
  oADV => nADV,
  oCS => nCS,
  oRD => nRD,
  oWR => nWR
  );
  
SRAM : SRAM_IO
GENERIC MAP (  WIDTH =>  8,  CPLD_VERSION =>  "00001101" )
PORT MAP 
(
  iCLK       => sclk,
  nRESET     =>  nRESET       ,
  DATA       =>  DATA         ,
  nRD        =>  nRD          ,
  nWR        =>  nWR          ,
  nCS        =>  nCS          ,
  nADV       =>  nADV         ,
  nWAIT      =>  nWAIT        ,
  nWrRdy     =>  nWrRdy        ,
  IO_ADDR    =>  IO_ADDR      , --AD_Bus
  IO_DAT_WR  =>  IO_DAT_WR    , -- data to read
  IO_DAT_RD  =>  IO_DAT_RD     -- data to read
);

pwm_mod : PWM_Module
PORT MAP (
-- list connections between master ports and signals
	CLK => sclk,
	Config => PWM_Config,
	Duty => PWM_Duty,
	Frq => PWM_Frq,
	nReset => nReset,
	PWM => PWM,
	Wr => nWrRdy
);

i1 : IO_SPACE
GENERIC MAP( BUS_WIDTH => 8, ENC_WIDTH  => 32, FAN_WIDTH => 32, CPLD_VERSION =>  "00001101" )
	
	PORT MAP (
-- list connections between master ports and signals
	Clk => sclk,
	DIP_SW => DIP_SW,
	Enc_MT1 => Enc_MT1,
	Enc_MT2 => Enc_MT2,
	H_timer => H_timer,
	IO_ADDR => IO_ADDR,
	IO_DAT_RD => IO_DAT_RD,
	IO_DAT_WR => IO_DAT_WR,
	IO_RDY_RD => nRD,
	IO_RDY_WR => nWR,
  iInputs => iInputs,
  oOutputs => oOutputs,
	nRESET => nRESET,
	Pizza_Cali => Pizza_Cali,
	PWM_Config => PWM_Config,
	PWM_Duty => PWM_Duty(13 downto 0),
	PWM_Frq => PWM_Frq(13 downto 0),
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

TESTSRAM : PROCESS is
BEGIN
--defaults
PWM_Duty(15 downto 14) <= (others => '0');
PWM_Frq(15 downto 14) <= (others => '0');
--------------------------------------------------------
-- READ
--------------------------------------------------------
-- Read
sEBU_ienwait <= '1';
sEBU_iRdWr <='1';
nRESET <= '0';
sEBU_iRst<= '0';
wait for 100 ns;
sEBU_iRst<= '1';
nRESET <= '1';
-- Read : adress phase
sEBU_iAdd <= "00001100";
sEBU_iData <= (others => 'Z');
IO_DAT_RD <= "10100010";
wait until nRD = '0';
-- read : command phase
wait until nRD = '1';
wait for 100 ns;
sEBU_iRst <= 'Z';
wait for 200 ns;

--------------------------------------------------------
-- READ WITH WAIT
--------------------------------------------------------
-- Read
sEBU_ienwait <= '1';
sEBU_iRdWr <='1';
sEBU_iRst<= '0';
wait for 100 ns;
sEBU_iRst<= '1';
-- Read : adress phase
sEBU_iAdd <= "00001101";
sEBU_iData <= (others => 'Z');
IO_DAT_RD <= "10100011";
wait until nRD = '0';
-- read : command phase
wait until nRD = '1';
wait for 100 ns;
sEBU_iRst <= 'Z';
wait for 200 ns;
--------------------------------------------------------
-- WRITE
--------------------------------------------------------
sEBU_iRdWr <='0';
sEBU_iRst <= '0';
wait for 100 ns;
sEBU_iRst <= '1';
wait for 100 ns;
-- Write: address phase
sEBU_iAdd <= "00001101";
sEBU_iData <= "10100011";
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

sEBU_iRst <= '0';
wait for 10 ns;
sEBU_iRst <= '1';
-- Write: address phase
sEBU_iAdd <= "00001110";
sEBU_iData <= "10100111";
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

wait until rising_edge(sclk);
wait for 800 ns;
sEBU_iRst <= '0';
wait for 100 ns;
sEBU_iRst <= '1';
-- Write: address phase
sEBU_iAdd <= "00001110";
sEBU_iData <= "10100111";
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

wait;
END PROCESS TESTSRAM;
end architecture logic;
