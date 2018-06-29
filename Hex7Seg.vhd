LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Hex7Seg IS

GENERIC (
DATAWIDTH : integer := 16
);
PORT 
(
  inReset : IN STD_LOGIC; 
  iWrData : IN STD_LOGIC;
  iData   : IN STD_LOGIC_VECTOR(DATAWIDTH-1 downto 0);    
  LED7S   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) 
); 
END;  

ARCHITECTURE A_Hex7Seg OF Hex7Seg IS 
SIGNAL s7SEG : STD_LOGIC_VECTOR(4 downto 0);
BEGIN

LED7S(7) <= s7SEG(4);

WRITEREG : PROCESS(inReset,iWrData)
  BEGIN  
  if (inReset = '0') then
    s7SEG <= (others =>'0');
  elsif rising_edge(iWrData) then    
    s7SEG <= iData(4 downto 0);
  end if;  
END PROCESS;

LEDOUTPUT : PROCESS(s7SEG) 
  BEGIN       
		CASE s7SEG(3 DOWNTO 0) IS   
		 --           --A--               
     --         F|     |B   
     --          |     |		           
		 --           --G--    
     --         E|     |C 
     --          |     |		     
		 --           --D--  .DP.  
		 -- A  LED7S[0]
		 -- B  LED7S[1]
		 -- C  LED7S[2]
		 -- D  LED7S[3]
		 -- E  LED7S[4]
		 -- F  LED7S[5]
		 -- G  LED7S[6]
		 -- DP LED7S[7]		
		WHEN b"0000"=> LED7S(6 DOWNTO 0)<= "1111111";         --0 --"1000000", chagne to Off, for power save
		WHEN b"0001"=> LED7S(6 DOWNTO 0)<= "1111001";         --1
		WHEN b"0010"=> LED7S(6 DOWNTO 0)<= "0100100";         --2
		WHEN b"0011"=> LED7S(6 DOWNTO 0)<= "0110000";         --3
		WHEN b"0100"=> LED7S(6 DOWNTO 0)<= "0011001";         --4
		WHEN b"0101"=> LED7S(6 DOWNTO 0)<= "0010010";         --5
		WHEN b"0110"=> LED7S(6 DOWNTO 0)<= "0000010";         --6
		WHEN b"0111"=> LED7S(6 DOWNTO 0)<= "1111000";         --7
		WHEN b"1000"=> LED7S(6 DOWNTO 0)<= "0000000";         --8
		WHEN b"1001"=> LED7S(6 DOWNTO 0)<= "0010000";         --9
		WHEN b"1010"=> LED7S(6 DOWNTO 0)<= "0001000";         --A
		WHEN b"1011"=> LED7S(6 DOWNTO 0)<= "0000011";         --B
		WHEN b"1100"=> LED7S(6 DOWNTO 0)<= "1000110";         --C
		WHEN b"1101"=> LED7S(6 DOWNTO 0)<= "0100001"; 		    --D
		WHEN b"1110"=> LED7S(6 DOWNTO 0)<= "0000110";         --E
		WHEN b"1111"=> LED7S(6 DOWNTO 0)<= "0001110";         --F 
		WHEN OTHERS=> NULL;--LED7S(6 DOWNTO 0)<= (others => '1');  
		END CASE; 
END PROCESS;

END ARCHITECTURE A_Hex7Seg;