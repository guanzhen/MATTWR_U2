-- A library clause declares a name as a library.  It 
-- does not create the library; it simply forward declares 
-- it. 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

LIBRARY work;
USE work.constants.all;

entity TIMERMODULE is
	generic
	(
  DATAWIDTH   : natural := 16;
  MAX_COUNT_WIDTH   : natural := 30;
  COUNTS_PER_US : integer := 16;   -- 16: 16MHz iCLK : 16 counts = 1uS  
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
	 oSecond : OUT std_LOGIC;
    oTimersec : OUT std_logic_vector(31 downto 0):= (others => '0');
    oTimermS  : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0');
    oTimeruS  : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0')
	);
end TIMERMODULE;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture LOGIC of TIMERMODULE is

signal sTIMERSEC : natural range 0 to 2**MAX_COUNT_WIDTH := 0;
signal sTIMERMILLI : natural range 0 to COUNTS_PER_SEC := 0;
signal sTIMERUS : natural range 0 to COUNTS_PER_MS := 0;
signal sTIMER1US : natural range 0 to COUNTS_PER_US := 0;
signal sSeconds : STD_LOGIC;
signal sCounter1USOF : STD_LOGIC:= '0'; -- signal for overflow output from COUNTER1US
signal sCounter1msOF : STD_LOGIC:= '0'; -- signal for overflow output from COUNTER
signal sCounter1secSOF : STD_LOGIC:= '0'; -- signal for overflow output from COUNTER1US

signal sEnable : STD_LOGIC:= '1';

begin
sEnable <= '1';
oTimersec <= std_logic_vector(to_unsigned(sTIMERSEC, oTimersec'length));
oTimermS <= std_logic_vector(to_unsigned(sTIMERMILLI, oTimermS'length));
oTimeruS <= std_logic_vector(to_unsigned(sTIMERUS, oTimeruS'length));
oSecond <=  std_logic_vector(to_unsigned(sTIMERSEC, oTimersec'length))(0);

COUNTER : PROCESS(inReset,iCLK,sCounter1secSOF,sEnable,sTIMERSEC) -- counts Seconds
BEGIN
  if (inReset = '0' or sEnable = '0') then -- reset internal counter on reset or write to period counter
    sTIMERSEC <= 0;
  elsif rising_edge(iCLK) and sEnable = '1' then -- increment counter when module is enabled
    if sCounter1secSOF = '1' then
        sTIMERSEC <= sTIMERSEC + 1;
    end if;
  end if;  
  if sTIMERSEC = 2**MAX_COUNT_WIDTH then
    sTIMERSEC <= 0;
  end if;  
END PROCESS;

COUNTER1S : PROCESS(iCLK,inReset,sEnable,sTIMERMILLI,sCounter1msOF) -- counts mS
BEGIN
  if (inReset = '0' or sEnable = '0') then -- reset internal counter on reset or write to period counter
    sTIMERMILLI <= 0;
    sCounter1secSOF <= '0';
  elsif rising_edge(iCLK) and sEnable = '1' then
    sCounter1secSOF <= '0';     
    if (sCounter1msOF = '1') then
        sTIMERMILLI <= sTIMERMILLI + 1;
    end if;
  end if;    
  if sTIMERMILLI = COUNTS_PER_SEC then
    sCounter1secSOF <= '1';
    sTIMERMILLI <= 0;
  end if;
END PROCESS;

COUNTER1MS : PROCESS(iCLK,inReset,sEnable,sTIMERUS,sCounter1USOF) --counts uS 
BEGIN
  if (inReset = '0' or sEnable = '0') then -- reset internal counter on reset or write to period counter
    sTIMERUS <= 0;
    sCounter1MSOF <= '0';
  elsif rising_edge(iCLK) and sEnable = '1' then
    sCounter1MSOF <= '0'; 
	 if (sCounter1USOF = '1') then
      sTIMERUS <= sTIMERUS + 1;
    end if;
  end if;    
  if sTIMERUS = COUNTS_PER_MS then
    sCounter1MSOF <= '1';
    sTIMERUS <= 0;
  end if;
END PROCESS;

COUNTER1US : PROCESS(iCLK,inReset,sEnable,sTIMER1US)
BEGIN
  if (inReset = '0' or sEnable = '0') then -- reset internal counter on reset or write to period counter
    sTIMER1US <= 0;
    sCounter1USOF <= '0';
  elsif rising_edge(iCLK) and sEnable = '1' then
    sCounter1USOF <= '0'; 
    sTIMER1US <= sTIMER1US + 1;
  end if;    
  if sTIMER1US = COUNTS_PER_US then
    sCounter1USOF <= '1';
    sTIMER1US <= 0;
  end if;
END PROCESS;


end LOGIC;
