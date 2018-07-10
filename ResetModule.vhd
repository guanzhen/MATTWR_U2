LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

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
SIGNAL sResetConfig: STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0); -- holds reset configuration
SIGNAL sResetPeriod: STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0); -- number of counts in us.
SIGNAL sEnable     : STD_LOGIC:= '0';
SIGNAL sCounter1USOF : STD_LOGIC:= '0'; -- signal for overflow output from counter2
BEGIN

oResetConfig <= sResetConfig;
oResetPeriod <= sResetPeriod;
sEnable <= sResetConfig(0); --bit 0 is Enable signal
-- Process for writing into module registers.
WRITEREG : PROCESS(inReset,iWrConfig,iWrPeriod,iData,sCounter1USOF)
BEGIN  
  if (inReset = '0' or sCounter1USOF = '1') then                        -- reset sResetConfig register to default values
    sResetConfig <= (others =>'0');
  elsif rising_edge(iWrConfig) then              -- write to config register 
      sResetConfig <= iData;
  end if;
  
  if (inReset = '0') then  -- reset sResetPeriod register to default values
    sResetPeriod <= (others =>'0');
  elsif rising_edge(iWrPeriod) then               -- write to period register 
      sResetPeriod <= iData;
  end if;
END PROCESS;


COUNTER : PROCESS(inReset,sCounter1USOF,iWrPeriod,sResetPeriod)
variable vCounter : integer range 0 to MAXCOUNT-1;
variable vPeriod  : integer range 0 to MAXCOUNT-1;
BEGIN
  if (inReset = '0' or iWrPeriod = '1') then -- reset internal counter on reset or write to period counter
    vCounter := 0;    
  elsif rising_edge(sCounter1USOF) then               -- increment counter
    if sEnable = '1' then
      vCounter := vCounter + 1;
    end if;    
  end if;
  
  -- set output reset signal
  if inReset = '0' then
    oReset <= '0';
  else
	 vPeriod := to_integer(unsigned(sResetPeriod(DATAWIDTH-1 downto 0)));
    if vCounter = vPeriod then --assert reset signal when the values matches.
      oReset <= '1';
    else
      oReset <= '0';
    end if;
  end if;

END PROCESS;

COUNTER1US : PROCESS(iCLK,inReset,iWrPeriod)
variable vCounter1US : natural range 0 to COUNTSPERUS-1;
BEGIN
  if (inReset = '0' or iWrPeriod = '1') then -- reset internal counter on reset or write to period counter
    vCounter1US := 0;
  elsif rising_edge(iCLK) then
    if sEnable = '1' then
      vCounter1US := vCounter1US + 1;
    end if; 
  end if;
  
  --setoverflow signal when counter rolls over
  if (inReset = '0' or iWrPeriod = '1') then
    sCounter1USOF <= '0';
  elsif rising_edge(iCLK) then
    if vCounter1US = COUNTSPERUS-1 then
      sCounter1USOF <= '1'; 
    else
      sCounter1USOF <= '0'; 
    end if;
  end if;
  
END PROCESS;
END ARCHITECTURE LOGIC;