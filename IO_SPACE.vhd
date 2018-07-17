library IEEE;
use ieee.std_logic_1164.all;
use std.standard;

LIBRARY work;
USE work.constants.all;

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
  
  --QE Module
  oWrQEMCONFIG1 : OUT STD_LOGIC;
  oWrQEMCOUNTERL1 : OUT STD_LOGIC;
  oWrQEMCOUNTERH1 : OUT STD_LOGIC;
  iQEMCONFIG1 : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  iQEMCOUNTER1 : IN STD_LOGIC_VECTOR(ENC_WIDTH-1 DOWNTO 0);
  oWrQEMCONFIG2 : OUT STD_LOGIC;
  oWrQEMCOUNTERL2 : OUT STD_LOGIC;
  oWrQEMCOUNTERH2 : OUT STD_LOGIC;
  iQEMCONFIG2 : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  iQEMCOUNTER2 : IN STD_LOGIC_VECTOR(ENC_WIDTH-1 DOWNTO 0);
  --PWM Module
  oWrPWMCONFIG1 : OUT STD_LOGIC;
  oWrPWMPERIOD1 : OUT STD_LOGIC;
  oWrPWMDUTY1   : OUT STD_LOGIC;
  iPWMCONFIG1   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMPERIOD1   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMDUTY1     : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  oWrPWMCONFIG2 : OUT STD_LOGIC;
  oWrPWMPERIOD2 : OUT STD_LOGIC;
  oWrPWMDUTY2   : OUT STD_LOGIC;
  iPWMCONFIG2   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMPERIOD2   : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iPWMDUTY2     : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  --7SEG Module
  oWrSEG7OUTPUT : OUT STD_LOGIC;
  iSEG7OUTPUT : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  --Input Module
  iINPUTSTATUS : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  iINPUTS : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  -- Output Module
  oWrOUTPUTS : OUT STD_LOGIC;
  iOUTPUTS : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  -- Sync Module
  oWrSYNCONFIG1 : OUT STD_LOGIC;  
  oWrSYNCONFIG2 : OUT STD_LOGIC;  
  iSYNCONFIG1 : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  iSYNCONFIG2 : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  iSYNDIR : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0);
  iSYNVALUE : IN STD_LOGIC_VECTOR(BUSWIDTH-1 DOWNTO 0); 
  --Reset Module : 
  oWrRESETCONFIG : OUT STD_LOGIC;
  oWrRESETPERIOD : OUT STD_LOGIC;
  iRESETCONFIG  : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  iRESETPERIOD  : IN std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0')
  );
end IO_SPACE;

architecture A_IO_SPACE of IO_SPACE is
signal sQEMBUFFER1 : STD_LOGIC_VECTOR(BUSWIDTH-1 downto 0);
signal sQEMBUFFER2 : STD_LOGIC_VECTOR(BUSWIDTH-1 downto 0);
BEGIN

-- Set the respective write signal based on address input.
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
    oWrSEG7OUTPUT <= '0';
    oWrRESETCONFIG <= '0';
    oWrRESETPERIOD <= '0';
    oWrQEMCONFIG1 <= '0';
    oWrQEMCOUNTERL1 <= '0';
    oWrQEMCOUNTERH1 <= '0';
    oWrQEMCONFIG2 <= '0';
    oWrQEMCOUNTERL2 <= '0';
    oWrQEMCOUNTERH2 <= '0';
    oWrOUTPUTS <= '0';
    oWrSYNCONFIG1 <= '0';
    oWrSYNCONFIG2 <= '0';
  elsif falling_edge(inWrRdy) then
    -- Set all write signals to inactive state.
    oWrPWMCONFIG1 <= '0';
    oWrPWMPERIOD1 <= '0';
    oWrPWMDUTY1 <= '0';
    oWrPWMCONFIG2 <= '0';
    oWrPWMPERIOD2 <= '0';
    oWrPWMDUTY2 <= '0';
    oWrSEG7OUTPUT <= '0';
    oWrRESETCONFIG <= '0';
    oWrRESETPERIOD <= '0';
    oWrQEMCOUNTERL1 <= '0';
    oWrQEMCOUNTERH1 <= '0';
    oWrQEMCONFIG2 <= '0';
    oWrQEMCOUNTERL2 <= '0';
    oWrQEMCOUNTERH2 <= '0';    
    oWrOUTPUTS <= '0';
    oWrSYNCONFIG1 <= '0';
    oWrSYNCONFIG2 <= '0';
    vAddress := iAddress(7 downto 0); -- use only the lower byte for address.
    case vAddress is 
    when X"00" => oWrPWMCONFIG1 <= '1';
    when X"01" => oWrPWMPERIOD1 <= '1';
    when X"02" => oWrPWMDUTY1 <= '1';
    when X"03" => oWrPWMCONFIG2 <= '1';
    when X"04" => oWrPWMPERIOD2 <= '1';
    when X"05" => oWrPWMDUTY2 <= '1';
    when X"40" => oWrSEG7OUTPUT <= '1';    
    when X"30" => oWrRESETCONFIG <= '1';
    when X"31" => oWrRESETPERIOD <= '1';
    when X"10" => oWrQEMCONFIG1 <= '1';
    when X"11" => oWrQEMCOUNTERL1 <= '1';
    when X"12" => oWrQEMCOUNTERH1 <= '1';    
    when X"13" => oWrQEMCONFIG2 <= '1';
    when X"14" => oWrQEMCOUNTERL2 <= '1';
    when X"15" => oWrQEMCOUNTERH2 <= '1';    
    when X"60" => oWrOUTPUTS <= '1';
    when X"70" => oWrSYNCONFIG1 <= '1';
    when X"71" => oWrSYNCONFIG2 <= '1';
    when others => null;
    end case;
  end if;
end process IO_SPACE_PROC_WR;
  
-- Direct the respective data to read to EBU interface
IO_SPACE_PROC_RD : process (inRESET,iCLK,inRdRdy)
variable vAddress : std_logic_vector (7 downto 0);
begin
  if (inRESET = '0') then
    vAddress := (others => '0');    
    sQEMBUFFER1 <= (others => '0');
    sQEMBUFFER2 <= (others => '0');
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
    when X"10" => oData <= iQEMCONFIG1;
    when X"11" => oData <= sQEMBUFFER1;
    when X"12" => 
      oData <= iQEMCOUNTER1(15 downto 0);
      sQEMBUFFER1 <= iQEMCOUNTER1(ENC_WIDTH-1 downto 16);
    when X"13" => oData <= iQEMCONFIG2;
    when X"14" => oData <= sQEMBUFFER2;
    when X"15" => 
      oData <= iQEMCOUNTER2(15 downto 0);
      sQEMBUFFER2 <= iQEMCOUNTER2(ENC_WIDTH-1 downto 16);
    when X"40" => oData <= iSEG7OUTPUT;
    when X"30" => oData <= iRESETCONFIG;
    when X"31" => oData <= iRESETPERIOD;
    when X"50" => oData <= iINPUTSTATUS;
    when X"51" => oData <= iINPUTS;
    when X"60" => oData <= iOUTPUTS;
    when X"70" => oData <= iSYNCONFIG1;
    when X"71" => oData <= iSYNCONFIG2;
    when X"72" => oData <= iSYNDIR;
    when X"73" => oData <= iSYNVALUE;
    when others =>  oData <= (others=>'0');
    end case;
  end if;
end process IO_SPACE_PROC_RD;

END architecture A_IO_SPACE;