LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

LIBRARY work;
USE work.constants.all;

ENTITY RESETMODULE IS

GENERIC (
DATAWIDTH   : integer := 16;
MAXCOUNT    : integer := 65536;  -- max count of 65mS (16 bit limitation)
COUNTSPERUS : integer := 16000   -- 16MHz iCLK : 16000 counts = 1uS
);
PORT 
(
  iCLK       : IN STD_LOGIC;
  inReset    : IN STD_LOGIC; 
  iWrPeriod  : IN STD_LOGIC;
  iWrConfig  : IN STD_LOGIC;
  iData      : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);  
  oReset     : OUT STD_LOGIC;
  oResetConfig   : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
  oResetPeriod   : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0')
); 
END;

ARCHITECTURE LOGIC OF RESETMODULE IS 
SIGNAL sResetConfig   : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0); -- holds reset configuration
SIGNAL sResetPeriod   : STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0); -- holds reset configuration
SIGNAL sEnable        : STD_LOGIC:= '0';
SIGNAL sReset         : STD_LOGIC:= '0'; -- active high output when reset counter has elasped
SIGNAL sCounter1USOF  : STD_LOGIC:= '0'; -- signal for overflow output from counter2

BEGIN

oResetConfig <= sResetConfig;
oResetPeriod <= sResetPeriod;
sEnable <= sResetConfig(0); --bit 0 is Enable signal
oReset <= sReset;
-- Process for writing into module registers.
WRITEREG : PROCESS(inReset,iWrConfig,iWrPeriod,iData,sReset)
BEGIN  
  if (inReset = '0' or sReset = '1') then -- reset sResetConfig register to default values
    sResetConfig <= (others =>'0');
  elsif rising_edge(iWrConfig) then       -- write to config register 
      sResetConfig <= iData;
  end if;
  
  if (inReset = '0') then                 -- reset sResetPeriod register to default values
    sResetPeriod <= std_logic_vector(to_unsigned(DEFAULT_RESET_PERIOD, sResetPeriod'length));
  elsif rising_edge(iWrPeriod) then       -- write to period register 
    sResetPeriod <= iData;
  end if;
END PROCESS;

COUNTER : PROCESS(inReset,iCLK,sCounter1USOF,iWrPeriod,sResetPeriod,sEnable)
variable vCounter : integer range 0 to MAXCOUNT-1:= 0;
variable vPeriod  : integer range 0 to MAXCOUNT-1:= 0;
BEGIN
  if (inReset = '0' or iWrPeriod = '1') then -- reset internal counter on reset or write to period counter
    vCounter := 0;
    sReset <= '0';
  else
    if rising_edge(sCounter1USOF) and sEnable = '1' then -- increment counter when module is enabled
      vCounter := vCounter + 1;
      vPeriod := to_integer(unsigned(sResetPeriod(DATAWIDTH-1 downto 0))); 
      if (vCounter = vPeriod) then
        sReset <= '1';                                   -- set output reset signal
      end if;
    end if;  
  end if;
END PROCESS;

COUNTER1US : PROCESS(iCLK,inReset,iWrPeriod,iWrConfig,sEnable)
variable vCounter1US : integer range 0 to COUNTSPERUS;
BEGIN
  if (inReset = '0' or iWrPeriod = '1' or iWrConfig = '1') then -- reset internal counter on reset or write to period counter
    vCounter1US := 0;
    sCounter1USOF <= '0';
  elsif rising_edge(iCLK) then
    sCounter1USOF <= '0'; 
    vCounter1US := vCounter1US + 1;
  end if;
  
  if vCounter1US = COUNTSPERUS then
    sCounter1USOF <= '1';
    vCounter1US := 0;
  --end if;
  end if;  
END PROCESS;
END ARCHITECTURE LOGIC;