LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
 
entity QuadDecToDIRPulse is
GENERIC
    (
        ENC_WIDTH    : integer  :=    32;
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                     
    );
PORT 
    ( 
   A       : IN  STD_LOGIC;
   B       : IN  STD_LOGIC;
	N       : IN  STD_LOGIC;
   CLK     : IN  STD_LOGIC;
  
   PS      : OUT STD_LOGIC := '0';
   DIR     : OUT STD_LOGIC := '0';
	INX     : OUT STD_LOGIC := '0';
	 
   Enc     : OUT STD_LOGIC_VECTOR (ENC_WIDTH-1 downto 0)  := (others => '0');
   Wr      : IN  STD_LOGIC;
   WrVal   : IN  STD_LOGIC_VECTOR (ENC_WIDTH-1 downto 0)
    );
end entity QuadDecToDIRPulse;
 
architecture a_QuadDecToDIRPulse of QuadDecToDIRPulse is

signal Ar, Br  : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal P  	   : STD_LOGIC := '0';
signal sDir    : STD_LOGIC := '0';
signal WrPrev  : STD_LOGIC := '0';
signal EncVal  : SIGNED(ENC_WIDTH-1 downto 0) := ( others=> '0');

begin

DIR <= sDir;
Enc <= std_logic_vector(EncVal);
INX <= N;

QuadDecProcess : process (CLK,A,B) is 
begin
	if (CLK'event and CLK='1') then
		Ar <= (Ar(0)&A);
		Br <= (Br(0)&B);
		if (Ar = "01") then -- rising edge of A
			P <= '1';
			if (B = '0') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		elsif (Ar = "10") then -- falling edge of A
			P <= '1';
			if (B = '1') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		elsif (Br = "01") then -- positive edge of B
			P <= '1';
			if (A = '1') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		elsif (Br = "10") then -- positive edge of B
			P <= '1';
			if (A = '0') then sDir <= '0'; -- A leads B
			else sDir <= '1';					-- B leads A
			end if;
		else P <= '0';
		end if;
	end if;

end process QuadDecProcess;
 

pulse_gen : process (CLK, wr) is 
begin 
	if rising_edge(CLK) then
		 PS <= P;
		 WrPrev <= Wr;
	end if;
end process pulse_gen;

enc_count : process (CLK, Wr, WrPrev, WrVal, P) is
begin 
	if( WrPrev /=Wr) then
		EncVal <= signed(WrVal);
	else 
		if rising_edge(CLK) and P = '1'  then
			if sDir = '1' then
				EncVal <= EncVal + 1;
			else
				EncVal <= EncVal - 1;
			end if;		
		end if;
	end if;
end process enc_count;

end architecture a_QuadDecToDIRPulse;
