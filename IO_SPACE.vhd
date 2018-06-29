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
  
  --PWM Module
  oWrPWMCONFIG1 : out STD_LOGIC;
  oWrPWMPERIOD1 : out STD_LOGIC;
  oWrPWMDUTY1   : out STD_LOGIC;
  iPWMCONFIG1   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMPERIOD1   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMDUTY1     : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  oWrPWMCONFIG2 : out STD_LOGIC;
  oWrPWMPERIOD2 : out STD_LOGIC;
  oWrPWMDUTY2   : out STD_LOGIC;
  iPWMCONFIG2   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMPERIOD2   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMDUTY2     : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0')
  );
end IO_SPACE;

architecture A_IO_SPACE of IO_SPACE is
BEGIN

-- Writes
IO_SPACE_PROC_WR : process (inRESET,inWrRdy)
variable vAddress : std_logic_vector (7 downto 0);
begin
  if (inRESET = '0') then
    vAddress := (others => '0');
    oWrPWMCONFIG1 <= '0';
    oWrPWMPERIOD1 <= '0';
    oWrPWMDUTY1 <= '0';
    oWrPWMCONFIG2 <= '0';
    oWrPWMPERIOD2 <= '0';
    oWrPWMDUTY2 <= '0';
  elsif falling_edge(inWrRdy) then
    -- Set all write signals to inactive state.
    oWrPWMCONFIG1 <= '0';
    oWrPWMPERIOD1 <= '0';
    oWrPWMDUTY1 <= '0';
    oWrPWMCONFIG2 <= '0';
    oWrPWMPERIOD2 <= '0';
    oWrPWMDUTY2 <= '0';
    vAddress := iAddress(7 downto 0); -- use only the lower byte for address.
    case vAddress is 
    -- PWMCONFIG1
    when X"00" => oWrPWMCONFIG1 <= '1';
    when X"01" => oWrPWMPERIOD1 <= '1';
    when X"02" => oWrPWMDUTY1 <= '1';
    when X"03" => oWrPWMCONFIG2 <= '1';
    when X"04" => oWrPWMPERIOD2 <= '1';
    when X"05" => oWrPWMDUTY2 <= '1';
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
    oData <= (others => '0');
  elsif falling_edge(inRdRdy) then
    vAddress := iAddress(7 downto 0); -- use only the lower byte for address.
    case vAddress is			
    -- PWMCONFIG1
    when X"00" => oData <= iPWMCONFIG1;
    when X"01" => oData <= iPWMPERIOD1;
    when X"02" => oData <= iPWMDUTY1;
    when X"03" => oData <= iPWMCONFIG2;
    when X"04" => oData <= iPWMPERIOD2;
    when X"05" => oData <= iPWMDUTY2;
    when others =>  oData <= (others=>'0');
    end case;
  end if;
end process IO_SPACE_PROC_RD;

END architecture A_IO_SPACE;