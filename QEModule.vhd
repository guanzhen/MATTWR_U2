LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use std.standard;

entity QEMODULE is
GENERIC
  (
  BUSWIDTH : natural := 16;
  ENCWIDTH : natural := 32
  );
PORT 
  (
	iCLK    : IN STD_LOGIC;
	inRESET : IN STD_LOGIC;   
  iData   : IN STD_LOGIC_VECTOR(BUSWIDTH-1 downto 0);
	iWrQEMCONFIG  : IN STD_LOGIC;
	iA      : IN STD_LOGIC;
	iB      : IN STD_LOGIC;
	iIndex  : IN STD_LOGIC;
  oPulse  : OUT STD_LOGIC;
  oDir    : OUT STD_LOGIC;
  oIndex  : OUT STD_LOGIC;
  --Register Ouputs  
  oQEMCONFIG  : OUT std_logic_vector(BUSWIDTH-1 downto 0):= (others => '0');
  oQEMCOUNTER : OUT std_logic_vector(ENCWIDTH-1 downto 0):= (others => '0')
  );
end QEMODULE;

architecture LOGIC of QEMODULE is
signal Ar, Br  : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal sDir    : STD_LOGIC := '0';
signal P  	   : STD_LOGIC := '0';
signal sQEMCONFIG : STD_LOGIC := '0';
signal sQEMCOUNTER : SIGNED(ENCWIDTH-1 downto 0) := ( others=> '0');
begin

oDir <= sDir;
oIndex <= iIndex;
oQEMCOUNTER <= STD_LOGIC_VECTOR(sQEMCOUNTER);
QEM_CNTL : process (inRESET,iWrQEMCONFIG)
begin
  if (inRESET = '0') then
    sQEMCONFIG <= '0';
  elsif rising_edge(iWrQEMCONFIG) then
    sQEMCONFIG <= iData(0);   
  end if;
end process;

QuadDecProcess : process (iCLK,iA,iB) is 
begin
	if rising_edge(iCLK) then
		Ar <= (Ar(0)&iA);
		Br <= (Br(0)&iB);
		if (Ar = "01") then -- rising edge of A
			P <= '1';
			if (iB = '0') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		elsif (Ar = "10") then -- falling edge of A
			P <= '1';
			if (iB = '1') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		elsif (Br = "01") then -- positive edge of B
			P <= '1';
			if (iA = '1') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		elsif (Br = "10") then -- positive edge of B
			P <= '1';
			if (iA = '0') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		else P <= '0';
		end if;
	end if;
end process QuadDecProcess;

pulse_gen : process (iCLK) is 
begin 
	if rising_edge(iCLK) then
		oPulse <= P;
	end if;
end process pulse_gen;

enc_count : process (iCLK,inRESET,P,sDir) is
begin 
  if (inRESET = '0') then
    sQEMCOUNTER <= (others=> '0');
  elsif rising_edge(iCLK) and P = '1'  then
    if sDir = '1' then
      sQEMCOUNTER <= sQEMCOUNTER + 1;
    else
      sQEMCOUNTER <= sQEMCOUNTER - 1;
    end if;		
  end if;
end process enc_count;

end architecture LOGIC;