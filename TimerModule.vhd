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
  COUNTS_PER_MS : integer := 16000000;   -- 16000000: 16MHz iCLK : 16,000,000 counts = 1mS
  COUNTS_PER_SEC : integer := 1000    -- 1000: 1000 ms = 1s
	);
	port
	(
    -- Input ports
    iCLK         : IN STD_LOGIC;
    inRESET      : IN STD_LOGIC;   
    iData        : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);
    -- Output ports
    oTimersec   : OUT std_logic_vector(31 downto 0):= (others => '0');
    oTimermilli   : OUT std_logic_vector(DATAWIDTH-1 downto 0):= (others => '0')
	);
end TIMERMODULE;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture LOGIC of TIMERMODULE is

signal sTIMERSEC : natural range 0 to 2**MAX_COUNT_WIDTH := 0;
signal sTIMERMILLI : natural range 0 to COUNTS_PER_SEC := 0;
signal sCounter1MS : integer range 0 to COUNTS_PER_MS := 0;
signal sCounter1msOF : STD_LOGIC:= '0'; -- signal for overflow output from COUNTER1US
signal sCounter1secSOF : STD_LOGIC:= '0'; -- signal for overflow output from COUNTER1US
signal sEnable : STD_LOGIC:= '1';

begin
sEnable <= '1';
oTimersec <= std_logic_vector(to_unsigned(sTIMERSEC, oTimersec'length));
oTimermilli <= std_logic_vector(to_unsigned(sTIMERMILLI, oTimermilli'length));
COUNTER : PROCESS(inReset,iCLK,sCounter1secSOF,sEnable,sTIMERSEC)
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

COUNTER1S : PROCESS(iCLK,inReset,sEnable,sTIMERMILLI)
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

COUNTER1MS : PROCESS(iCLK,inReset,sEnable,sCounter1MS)
BEGIN
  if (inReset = '0' or sEnable = '0') then -- reset internal counter on reset or write to period counter
    sCounter1MS <= 0;
    sCounter1MSOF <= '0';
  elsif rising_edge(iCLK) and sEnable = '1' then
    sCounter1MSOF <= '0'; 
    sCounter1MS <= sCounter1MS + 1;
  end if;    
  if sCounter1MS = COUNTS_PER_MS then
    sCounter1MSOF <= '1';
    sCounter1MS <= 0;
  end if;
END PROCESS;

end LOGIC;
