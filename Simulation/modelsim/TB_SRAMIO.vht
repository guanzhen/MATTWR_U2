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
signal IO_RDY_WR     : std_logic;
signal IO_RDY_RD     : std_logic;
signal IO_DAT_RD     : std_logic_vector(WIDTH-1 downto 0);
signal i_DAT_RD_rdy  : std_logic;

signal inpin         : std_logic_vector(3 downto 0) := "1010";
signal outpin        : std_logic_vector(3 downto 0) := "ZZZZ";
signal iopin         : std_logic_vector(3 downto 0) := "ZZZZ";

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
		IO_RDY_WR		:	 OUT STD_LOGIC;
		IO_DAT_WR		:	 OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		IO_RDY_RD		:	 OUT STD_LOGIC;
		IO_DAT_RD		:	 IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		i_DAT_RD_rdy		:	 IN STD_LOGIC
	);
END COMPONENT;
BEGIN

component MOD_EBU is
generic (
  addrc : integer := 1; -- number of cycles in address phase
  cmd_delay : integer := 1; -- programmed command delay cycles
  waitrdc : integer := 1; -- programmed wait states for read acceses;
  waitwrd : integer := 1; -- programmed wait states for write acceses;
  datac : integer := 1 ; --data hold cycels
  datawidth : integer := 8 ; 
  addwidth : integer := 8
);
port (
  iclk : in std_logic;
  reset : in std_logic;
  iRd_nWr : in std_logic;
  iAddress : in std_logic_vector(addwidth - 1 downto 0);
  oAddress : out std_logic_vector(addwidth - 1 downto 0);
  iData : out std_logic_vector(datawidth - 1 downto 0);
  oData : out std_logic_vector(datawidth - 1 downto 0);
  oADV : out std_logic;
  oCS : out std_logic;
  oRD : out std_logic;
  oWR : out std_logic
);

end MOD_EBU;

ebu_clk : MOD_CLKGEN 
GENERIC MAP (period => 100 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => sEBUCLK );

cpld_clk : MOD_CLKGEN
GENERIC MAP (period => 900 ns ) PORT MAP ( reset => nRESET, clk_en => '1', clk_o => sclk );

reset : MOD_RESET
GENERIC MAP (delay => 100 ns) PORT MAP ( reset_o => nRESET );

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
  IO_ADDR    =>  IO_ADDR      ,
  IO_RDY_WR  =>  IO_RDY_WR    ,
  IO_RDY_RD  =>  IO_RDY_RD    ,
  IO_DAT_RD  =>  IO_DAT_RD    ,
  i_DAT_RD_rdy  =>  i_DAT_RD_rdy
);

write_gen : PROCESS (sclk) is
BEGIN

END PROCESS write_gen;

end architecture logic;
