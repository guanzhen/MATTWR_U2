LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;
 
entity Pulse_Counter is
GENERIC
    (
        ENC_WIDTH    : integer  :=    32;
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00000001"                     
    );
PORT 
    ( 
   A       : IN  STD_LOGIC;
   nRest   : IN  STD_LOGIC;
  
   B       : OUT STD_LOGIC_VECTOR (ENC_WIDTH-1 downto 0)  := (others => '0')
    );
end entity Pulse_Counter;
 
architecture a_Pulse_Counter of Pulse_Counter is

signal B_T : SIGNED(ENC_WIDTH-1 downto 0) := ( others=> '0');

begin

B <= std_logic_vector(B_T);

CountProcess : process (A, nRest) is 
begin 
	if nRest = '0' then 
		 B_T <= (others => '0');
		else 
		    if rising_edge(A) and A = '1'  then
				B_T <= B_T + 1;
			 end if;
	end if;
end process CountProcess;
 

end architecture a_Pulse_Counter;
