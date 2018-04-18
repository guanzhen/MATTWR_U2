LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.common.all;

ENTITY TB_SRAMIO IS
GENERIC  
    (
        WIDTH        : integer  :=    8;                                               -- Datenbus 8 Bit
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                      -- Version 0.13
    );  
END TB_SRAMIO;

architecture logic of TB_SRAMIO is
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
signal IO_RDY_WR     : std_logic;
signal IO_RDY_RD     : std_logic;
signal i_DAT_RD_rdy  : std_logic;

signal sAD_BUS       : std_logic_vector(WIDTH-1 downto 0);
signal sA_BUS        : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_iRst     : std_logic := '1';  --EBU reset signal
signal sEBU_iRdWr    : std_logic := '1';
signal sEBU_ienwait  : std_logic := '1';
signal sEBU_iAdd     : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_iData    : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_oData    : std_logic_vector(WIDTH-1 downto 0);

COMPONENT SRAM_IO is  
	GENERIC ( WIDTH : INTEGER := 8; CPLD_VERSION : STD_LOGIC_VECTOR(7 DOWNTO 0) := b"00001101" );
	PORT
	(
		nRESET		:	 IN STD_LOGIC;
		DATA		:	 INOUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		nRD		:	 IN STD_LOGIC;
		nWR		:	 IN STD_LOGIC;
		nCS		:	 IN STD_LOGIC;
		nADV		:	 IN STD_LOGIC;
		nWAIT		:	 IN STD_LOGIC;
		IO_ADDR		:	 OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		IO_DAT_WR		:	 OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		IO_DAT_RD		:	 IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		IO_RDY_WR		:	 OUT STD_LOGIC;
		IO_RDY_RD		:	 OUT STD_LOGIC;
		i_DAT_RD_rdy		:	 IN STD_LOGIC
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
GENERIC MAP (addrc => 3, addhold=> 0 , cmd_delay => 0, waitrdc => 2, waitwrd => 2, datac => 2 , rdrecovc => 0, wrrecovc => 0 , datawidth => 8, addwidth => 8 )
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
GENERIC MAP (  WIDTH =>  8,  CPLD_VERSION =>  "00001101" )
PORT MAP 
(
  nRESET     =>  nRESET       ,
  DATA       =>  DATA         ,
  nRD        =>  nRD          ,
  nWR        =>  nWR          ,
  nCS        =>  nCS          ,
  nADV       =>  nADV         ,
  nWAIT      =>  nWAIT        ,
  IO_ADDR    =>  IO_ADDR      , --AD_Bus
  IO_DAT_WR  =>  IO_DAT_WR    , -- data to read
  IO_DAT_RD  =>  IO_DAT_RD    , -- data to read
  IO_RDY_WR  =>  IO_RDY_WR    , -- write signal
  IO_RDY_RD  =>  IO_RDY_RD    , -- read signal
  i_DAT_RD_rdy  =>  i_DAT_RD_rdy
);

TESTSRAM : PROCESS is
BEGIN
--defaults
i_DAT_RD_rdy <= '0';
--------------------------------------------------------
-- READ
--------------------------------------------------------
-- Read
sEBU_ienwait <= '0';
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
wait for 10 ns;
i_DAT_RD_rdy <= '1';
-- read : command phase
wait until nRD = '1';
i_DAT_RD_rdy <= '0';
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
wait for 10 ns;
i_DAT_RD_rdy <= '1';
wait for 100 ns;
i_DAT_RD_rdy <= '0';
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
-- Write: address phase
sEBU_iAdd <= "00001101";
sEBU_iData <= "10100011";
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

wait;
END PROCESS TESTSRAM;
end architecture logic;
