LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LIBRARY work;
USE work.common.all;

ENTITY TB_SRAMIO IS
GENERIC  
    (
        DATAWIDTH    : integer  := 16;                                   -- Datenbus 8 Bit
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"        -- Version 0.13
    );  
END TB_SRAMIO;

architecture logic of TB_SRAMIO is
signal sEBUCLK       : std_logic;
signal sclk          : std_logic;
signal nRESET        : std_logic := '1';                                             
signal DATA          : std_logic_vector(DATAWIDTH-1 downto 0) := (others => 'Z'); 
signal nRD           : std_logic := '1';                                             
signal nWR           : std_logic := '1';                                             
signal nCS           : std_logic := '1';                                             
signal nADV          : std_logic := '1';                                             
signal nWAIT         : std_logic := '1';                                             
signal IO_ADDR       : std_logic_vector(DATAWIDTH-1 downto 0);
signal IO_DAT_WR     : std_logic_vector(DATAWIDTH-1 downto 0);
signal IO_DAT_RD     : std_logic_vector(DATAWIDTH-1 downto 0);
signal nWrRdy        : std_logic;

signal sEBU_iRst     : std_logic := '1';  --EBU reset signal
signal sEBU_iRdWr    : std_logic := '1';
signal sEBU_ienwait  : std_logic := '1';
signal sEBU_iAdd     : std_logic_vector(DATAWIDTH-1 downto 0);
signal sEBU_iData    : std_logic_vector(DATAWIDTH-1 downto 0);
signal sEBU_oData    : std_logic_vector(DATAWIDTH-1 downto 0);

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
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => sEBUCLK );

cpld_clk : MOD_CLKGEN
GENERIC MAP (period => 500 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => sclk );

reset : MOD_RESET
GENERIC MAP (delay => 100 ns) PORT MAP ( reset_o => nRESET );

ebu_gen : entity work.mod_ebu(async_mux)
GENERIC MAP (
addrc => 1, addhold=> 0 , cmd_delay => 0, waitrdc => 2, 
waitwrd => 6, datac => 0 , rdrecovc => 0, wrrecovc => 0 ,
datawidth => DATAWIDTH, addwidth => DATAWIDTH )
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
  
u1 : SRAM_IO
GENERIC MAP (  DATAWIDTH =>  DATAWIDTH,  CPLD_VERSION =>  "00001101" )
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

TESTSRAM : PROCESS is
BEGIN
--defaults
--------------------------------------------------------
-- READ WITH WAIT 1
--------------------------------------------------------
-- Read
sEBU_ienwait <= '1';
sEBU_iRdWr <='1';
nRESET <= '0';
sEBU_iRst<= '0';
wait for 100 ns;
sEBU_iRst<= '1';
nRESET <= '1';
-- Read : address phase
sEBU_iAdd <= std_logic_vector(to_unsigned(8, sEBU_iAdd'length));
sEBU_iData <= (others => 'Z');
IO_DAT_RD <= std_logic_vector(to_unsigned(111, IO_DAT_RD'length));
wait until nRD = '0';
-- read : command phase
wait until nRD = '1';
wait for 100 ns;
sEBU_iRst <= 'Z';
wait for 200 ns;

--------------------------------------------------------
-- READ WITH WAIT 2
--------------------------------------------------------
-- Read
sEBU_ienwait <= '1';
sEBU_iRdWr <='1';
sEBU_iRst<= '0';
wait for 100 ns;
sEBU_iRst<= '1';
-- Read : address phase
sEBU_iAdd <= std_logic_vector(to_unsigned(9, sEBU_iAdd'length));
sEBU_iData <= (others => 'Z');
IO_DAT_RD <= std_logic_vector(to_unsigned(222, IO_DAT_RD'length));
wait until nRD = '0';
-- read : command phase
wait until nRD = '1';
wait for 100 ns;
sEBU_iRst <= 'Z';
wait for 200 ns;

--------------------------------------------------------
-- READ WITH WAIT 3
--------------------------------------------------------
-- Read
sEBU_ienwait <= '1';
sEBU_iRdWr <='1';
sEBU_iRst<= '0';
wait for 600 ns;
sEBU_iRst<= '1';
-- Read : address phase
wait for 100 ns;
sEBU_iAdd <= std_logic_vector(to_unsigned(10, sEBU_iAdd'length));
sEBU_iData <= (others => 'Z');
IO_DAT_RD <= std_logic_vector(to_unsigned(333, IO_DAT_RD'length));
wait until nRD = '0';
-- read : command phase
wait until nRD = '1';
wait for 100 ns;
sEBU_iRst <= 'Z';
wait for 200 ns;
--------------------------------------------------------
-- WRITE 1
--------------------------------------------------------
sEBU_iRdWr <='0';
sEBU_iRst <= '0';
wait for 100 ns;
sEBU_iRst <= '1';
wait for 100 ns;
-- Write: address phase
sEBU_iAdd <= std_logic_vector(to_unsigned(20, sEBU_iAdd'length));
sEBU_iData <= std_logic_vector(to_unsigned(444, sEBU_iData'length));
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

--------------------------------------------------------
-- WRITE 2
--------------------------------------------------------
sEBU_iRst <= '0';
wait for 10 ns;
sEBU_iRst <= '1';
-- Write: address phase
sEBU_iAdd <= std_logic_vector(to_unsigned(14, sEBU_iAdd'length));
sEBU_iData <= std_logic_vector(to_unsigned(555, sEBU_iData'length));
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

wait until rising_edge(sclk);
wait for 800 ns;
--------------------------------------------------------
-- WRITE 3
--------------------------------------------------------

sEBU_iRst <= '0';
wait for 100 ns;
sEBU_iRst <= '1';
-- Write: address phase
sEBU_iAdd <= std_logic_vector(to_unsigned(23, sEBU_iAdd'length));
sEBU_iData <= std_logic_vector(to_unsigned(666, sEBU_iData'length));
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

wait;
END PROCESS TESTSRAM;
end architecture logic;
