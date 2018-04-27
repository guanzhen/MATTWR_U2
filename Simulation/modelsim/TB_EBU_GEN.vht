LIBRARY ieee;
USE ieee.std_logic_1164.all;
LIBRARY work;
USE work.common.all;

ENTITY TB_EBU_GEN IS
GENERIC  
  (
      WIDTH        : integer  :=    8;                                               -- Datenbus 8 Bit
      CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                      -- Version 0.13
  );  
END TB_EBU_GEN;

architecture logic of TB_EBU_GEN is
signal sEBUCLK       : std_logic;
signal nRESET        : std_logic := '1';                                             
signal nRD           : std_logic := '1';                                             
signal nWR           : std_logic := '1';                                             
signal nCS           : std_logic := '1';                                             
signal nADV          : std_logic := '1';                                             
signal nWAIT         : std_logic := '1';                                             

signal sAD_BUS       : std_logic_vector(WIDTH-1 downto 0);
signal sA_BUS        : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_iRst     : std_logic := '1';  --EBU reset signal
signal sEBU_iRdWr    : std_logic := '1';
signal sEBU_ienwait  : std_logic := '1';
signal sEBU_iAdd     : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_iData    : std_logic_vector(WIDTH-1 downto 0);
signal sEBU_oData    : std_logic_vector(WIDTH-1 downto 0);

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
  iWait: in std_logic;
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
  ioData => sAD_BUS,
  oADV => nADV,
  oCS => nCS,
  oRD => nRD,
  oWR => nWR
  );

EBUASYNCMUX : PROCESS is
BEGIN

--------------------------------------------------------
-- READ
--------------------------------------------------------

sEBU_ienwait <= '0';
-- Read
sEBU_iRdWr <='1';
sEBU_iRst<= '0';
wait for 100 ns;
sEBU_iRst<= '1';
-- Read : adress phase
sEBU_iAdd <= "00001100";
sEBU_iData <= "10100011";
sAD_BUS <= (others => 'Z');
wait until nRD = '0';
-- read : command phase
sAD_BUS <= "00001111";
--wait for 200 ns; -- n wait delay. 100 nS  =  1 cycle
wait until nRD = '1';
wait for 100 ns;
sEBU_iRst <= 'Z';
wait for 200 ns;

--------------------------------------------------------
-- READ WITH WAIT
--------------------------------------------------------

sEBU_ienwait <= '1';
-- Read
sEBU_iRdWr <='1';
sEBU_iRst<= '0';
wait for 100 ns;
sEBU_iRst<= '1';
-- Read : adress phase
sEBU_iAdd <= "00001100";
sEBU_iData <= "10100011";
sAD_BUS <= (others => 'Z');
nWAIT <= '0';
wait until nRD = '0';
-- read : command phase
sAD_BUS <= "00001111";
wait for 500 ns; -- n wait delay. 100 nS  =  1 cycle
nWAIT <= '1';
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
sAD_BUS <= (others => 'Z');
wait until nWR = '0';
--write : command phase
wait until nWR = '1';

wait;
END PROCESS EBUASYNCMUX;

end architecture logic;
