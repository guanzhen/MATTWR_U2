LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY LED7SEGMODULE IS

GENERIC (
DATAWIDTH : integer := 16;
INACTIVESTATE : std_logic := '0'
);
PORT 
(
  inReset    : IN STD_LOGIC; 
  iWrData    : IN STD_LOGIC;
  iEnable    : IN STD_LOGIC;
  iData      : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);    
  oLEDOutput : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
); 
END;  

ARCHITECTURE A_Hex7Seg OF LED7SEGMODULE IS 
SIGNAL s7SEGOUTPUT : STD_LOGIC_VECTOR(7 downto 0);
BEGIN

oLEDOutput <= s7SEGOUTPUT when iEnable = '0' else (others=>INACTIVESTATE);

WRITEREG : PROCESS(inReset,iWrData,iData)
  BEGIN  
  if (inReset = '0') then
    s7SEGOUTPUT <= (others =>'0');
  elsif rising_edge(iWrData) then    
    s7SEGOUTPUT <= iData(7 downto 0);
  end if;  
END PROCESS;

END ARCHITECTURE A_Hex7Seg;