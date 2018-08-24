LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY OUTPUTMODULE IS

GENERIC (
DATAWIDTH : integer := 16;
OUTPUTWIDTH : integer := 15;
INACTIVESTATE : std_logic := '0'
);
PORT 
(
  inReset    : IN STD_LOGIC; 
  iWrData    : IN STD_LOGIC;
  iData      : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);    
  oOutput    : OUT STD_LOGIC_VECTOR(DATAWIDTH-1 DOWNTO 0) 
); 
END;

ARCHITECTURE A_outputmodule OF OUTPUTMODULE IS 
SIGNAL sOutput : STD_LOGIC_VECTOR(OUTPUTWIDTH-1 downto 0);
constant sPadding : STD_LOGIC_VECTOR(DATAWIDTH-OUTPUTWIDTH-1 downto 0):=(others=>'0');
BEGIN

oOutput <= sPadding & sOutput;

WRITEREG : PROCESS(inReset,iWrData,iData)
  BEGIN  
  if (inReset = '0') then
    sOutput <= ((DATAWIDTH-1) => '1', others =>INACTIVESTATE);	-- EEPROM write protect disabled by default.
  elsif rising_edge(iWrData) then -- write data on signal
    sOutput <= iData(OUTPUTWIDTH-1 DOWNTO 0);
  end if;  
END PROCESS;

END ARCHITECTURE A_outputmodule;