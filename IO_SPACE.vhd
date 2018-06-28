library IEEE;
use ieee.std_logic_1164.all;
use std.standard;

entity IO_SPACE is
GENERIC
  (
  BUSWIDTH : integer := 16
  );
PORT 
  (
	iCLK      : IN STD_LOGIC;
	inRESET   : IN STD_LOGIC;   
	inWrRdy   : IN STD_LOGIC;
  inRdRdy   : IN STD_LOGIC;
  iAddress  : IN std_logic_vector(BUSWIDTH-1 downto 0);
  iData     : IN std_logic_vector(BUSWIDTH-1 downto 0);
  oData     : OUT std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  --Register Ouputs  
  oPWMCONFIG1   : OUT std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  oPWMPERIOD1   : OUT std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  oPWMDUTY1     : OUT std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0')
  );
end IO_SPACE;

architecture A_IO_SPACE of IO_SPACE is
signal sPWMCONFIG1 : std_logic_vector(15 downto 0) := X"1010";
signal sPWMPERIOD1 : std_logic_vector(15 downto 0) := X"2020";
signal sPWMDUTY1   : std_logic_vector(15 downto 0) := X"3030";
BEGIN

oPWMCONFIG1 <= sPWMCONFIG1;
oPWMPERIOD1 <= sPWMPERIOD1;
oPWMDUTY1 <= sPWMDUTY1;

-- Writes
IO_SPACE_PROC_WR : process (inRESET,inWrRdy)
variable vAddress : std_logic_vector (7 downto 0);
begin

if (inRESET = '0') then
  vAddress := (others => '0');
elsif falling_edge(inWrRdy) then
  vAddress := iAddress(7 downto 0); -- use only the lower byte for address.
  case vAddress is 
  -- PWMCONFIG1
  when X"00" =>   sPWMCONFIG1 <=  iData;
  when X"01" =>   sPWMPERIOD1 <=  iData;
  when X"02" =>   sPWMDUTY1   <=  iData;
  when others =>
  end case;
end if;
end process IO_SPACE_PROC_WR;
  
-- Reads
IO_SPACE_PROC_RD : process (inRESET,iCLK,inRdRdy)
variable vAddress : std_logic_vector (7 downto 0);
begin
  if (inRESET = '0') then
  vAddress := (others => '0');
  elsif falling_edge(inRdRdy) then
  vAddress := iAddress(7 downto 0); -- use only the lower byte for address.
    case vAddress is			
    -- PWMCONFIG1
    when X"00" => oData <= sPWMCONFIG1;
    when X"01" => oData <= sPWMPERIOD1;
    when X"02" => oData <= sPWMDUTY1;
    when others =>  oData <= (others=>'0');
    end case;
  end if;
end process IO_SPACE_PROC_RD;

END architecture A_IO_SPACE;