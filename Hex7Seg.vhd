LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Hex7Seg IS
PORT(A   :IN STD_LOGIC_VECTOR(4 DOWNTO 0);            
		LED7S:OUT STD_LOGIC_VECTOR(7 DOWNTO 0) ); 
END;  

ARCHITECTURE A_Hex7Seg OF Hex7Seg IS 
BEGIN     
LED7S(7) <= A(4);
PROCESS(A) 
BEGIN       
		CASE A(3 DOWNTO 0) IS   
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
		WHEN b"1101"=> LED7S(6 DOWNTO 0)<= "0100001"; 		   --D
		WHEN b"1110"=> LED7S(6 DOWNTO 0)<= "0000110";         --E
		WHEN b"1111"=> LED7S(6 DOWNTO 0)<= "0001110";         --F 
		WHEN OTHERS=> NULL;--LED7S(6 DOWNTO 0)<= (others => '1');  
		END CASE; 
	END  PROCESS; 
END architecture A_Hex7Seg;