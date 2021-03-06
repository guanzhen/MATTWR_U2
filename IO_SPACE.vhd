library IEEE;
use ieee.std_logic_1164.all;
use std.standard;
    

entity IO_SPACE is
GENERIC
    (
        BUS_WIDTH    : integer  :=    8;     
        ENC_WIDTH    : integer  :=    32;   
        FAN_WIDTH    : integer  :=    32;		  
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                     
    );
PORT 
    (
       nRESET        : IN    std_logic; 
		 Clk           : IN    std_logic;
       IO_ADDR       : IN    std_logic_vector(BUS_WIDTH-1 downto 0);                     
       IO_RDY_WR     : IN    std_logic;
		 IO_DAT_WR     : IN    std_logic_vector(BUS_WIDTH-1 downto 0);  
       IO_RDY_RD     : IN    std_logic;
		 IO_DAT_RD     : OUT   std_logic_vector(BUS_WIDTH-1 downto 0) := (others => '0');  
		 
		 --IO PINS
		 iPin7_0       : IN    std_logic_vector(2 downto 0); 
		 iPin15_8      : IN    std_logic_vector(5 downto 0); 
		 iPin23_16     : IN    std_logic_vector(BUS_WIDTH-1 downto 0); 
		 
		 oPin7_0       : OUT   std_logic_vector(BUS_WIDTH-1 downto 0) := (others => '0');
		 oPin15_8      : OUT   std_logic_vector(BUS_WIDTH-1 downto 0) := (others => '0');
		 oPin23_16     : OUT   std_logic := '0';
		 
		 --DIP Switch
		 DIP_SW        : IN    std_logic_vector (3 downto 0);
		 
		 --Mt Enc
		 Wr_MT1        : OUT   std_logic := '0';
       WrVal_MT1     : OUT   std_logic_vector (ENC_WIDTH-1 downto 0) := (others => '0');
		 Enc_MT1       : IN    std_logic_vector (ENC_WIDTH-1 downto 0);
		 
		 Wr_MT2        : OUT   std_logic := '0';
       WrVal_MT2     : OUT   std_logic_vector (ENC_WIDTH-1 downto 0) := (others => '0');
		 Enc_MT2       : IN    std_logic_vector (ENC_WIDTH-1 downto 0);
		 
		 
		 --7 Seg LED 
		 Seg_LED       : OUT   std_logic_vector (7 downto 0);
		 Seg_DP        : IN    std_logic;                                                       --7 Seg LED DP control Signal & PWM signal from MCU in other module
		 
		 --System Reset
		 Wr_timer      : OUT   std_logic := '0';
		 H_timer       : OUT STD_LOGIC_VECTOR (7 downto 0)  := (others => '0'); --for setting
		 R_timer       : IN std_logic_vector (7 downto 0);  --count by us
		 Trigger_Reset : OUT   std_logic := '0';
		 
		 --Pizza calibration
		 Pizza_Cali    : OUT   std_logic := '0';
		 
		 
		 --LED brightness & FAN Speed control
		 Wr_PWM        : OUT   std_logic := '0';
		 PWM_ONOFF     : OUT   std_logic := '0';
		 		 
		 --PWM I/F
		 PWM_Duty      : OUT  STD_LOGIC_VECTOR (13 downto 0):= (others => '0'); --(0-16000)0-100%
		 PWM_Frq       : OUT  STD_LOGIC_VECTOR (13 downto 0):= (others => '0')  --320-16000 (2-100K,)
		 
    );
end IO_SPACE;

architecture A_IO_SPACE of IO_SPACE is
signal sWr_MT1    : std_logic := '0';
signal sWr_MT2    : std_logic := '0';
signal sWrVal_MT1 : std_logic_vector (ENC_WIDTH-1 downto 0) := (others => '0');
signal sWrVal_MT2 : std_logic_vector (ENC_WIDTH-1 downto 0) := (others => '0');
signal sEnc_MT1   : std_logic_vector (ENC_WIDTH-1 downto 0) := (others => '0');
signal sEnc_MT2   : std_logic_vector (ENC_WIDTH-1 downto 0) := (others => '0');
--signal sFAN_1     : std_logic_vector (FAN_WIDTH-1 downto 0) := (others => '0');
signal sSeg_LED   : std_logic_vector (7 downto 0) := (others => '1');

--Reset module
signal sWr_timer  : std_logic := '0';
signal sTrigger_Reset  : std_logic := '0';
signal sH_timer   : std_logic_vector (7 downto 0) := (others => '0');

--LED brightness
signal sWr_PWM    : std_logic := '0';
signal sPWM_ONOFF : std_logic := '0';

--PWM I/F
signal sPWM_Duty  : STD_LOGIC_VECTOR (13 downto 0):= (others => '0');
signal sPWM_Frq   : STD_LOGIC_VECTOR (13 downto 0):= (others => '0');

--IO Output buffer
signal soPin7_0   : std_logic_vector(7 downto 0) := (others => '0');
signal soPin15_8  : std_logic_vector(7 downto 0) := (others => '0');
signal soPin23_16 : std_logic := '0';

BEGIN

Wr_MT1        <= sWr_MT1;
Wr_MT2        <= sWr_MT2;
Wr_timer      <= sWr_timer;
Trigger_Reset <= sTrigger_Reset;	
Wr_PWM        <= sWr_PWM;

IOSPACE_WR_PROC: process (nRESET, IO_RDY_WR, IO_RDY_RD, IO_DAT_WR, IO_ADDR, sWr_MT1, sWr_MT2, sWrVal_MT1, sWrVal_MT2, soPin7_0, soPin15_8, soPin23_16, iPin23_16, iPin15_8, iPin7_0, DIP_SW, sEnc_MT1, sEnc_MT2, Enc_MT1, Enc_MT2) is
begin
	 if nRESET = '0' then 
		soPin7_0(7 downto 0)    			 <=  "00000000"; -- "00000000"
		soPin15_8(7 downto 0)   			 <=  "00000000"; -- "00000000"
		soPin23_16							    <=  '0'; --1
		sSeg_LED(7 downto 0)              <=  "00000000";   --"10000"
		
		sWr_MT1                           <= '0';
		sWr_MT2                           <= '0';
--		sWr_timer                         <= '0';
--		sTrigger_Reset                    <= '0';
		sPWM_ONOFF                        <= '0';
		sWrVal_MT1                        <= (others => '0');
		sWrVal_MT2                        <= (others => '0');
		
	 elsif IO_RDY_WR = '1' then
			case IO_ADDR is

			  -- 7 Seg LED indicator for error display
			  when b"00000000" =>                                       -- 0x00   Set 7 Seg LED indicator
				sSeg_LED(7 downto 0)             <=  IO_DAT_WR(7 downto 0);
				
			  -- IO Ouput
			  when b"00000010" =>                                       -- 0x02   IO block 3
				soPin23_16                       <= IO_DAT_WR(0);
			  when b"00000011" =>                                       -- 0x03   IO block 2
				soPin15_8(7 downto 0)  				<= IO_DAT_WR(7 downto 0);
			  when b"00000100" => 												  -- 0x04   IO block 1
				soPin7_0(7 downto 0)             <= IO_DAT_WR(7 downto 0);
				
			  -- Write Encoder counter 1
			  when b"00100100" =>                                       -- 0x24 Write Encoder counter 
				sWrVal_MT1(7 downto 0)           <= IO_DAT_WR(7 downto 0);
			  when b"00100011" =>                                       -- 0x23 Write Encoder counter 
				sWrVal_MT1(15 downto 8)          <= IO_DAT_WR(7 downto 0);
			  when b"00100010" =>                                       -- 0x22 Write Encoder counter 
				sWrVal_MT1(23 downto 16)         <= IO_DAT_WR(7 downto 0);
			  when b"00100001" =>                                       -- 0x21 Write Encoder counter
			   sWrVal_MT1(31 downto 24)         <= IO_DAT_WR(7 downto 0);
			  when b"00100000" =>                                       -- 0x20 latch Encoder counter
				sWr_MT1 <= not sWr_MT1;
				
			  -- Write Encoder counter 2
			  when b"00101001" =>                                       -- 0x29 Write Encoder counter 
				sWrVal_MT2(7 downto 0)           <= IO_DAT_WR(7 downto 0);
			  when b"00101000" =>                                       -- 0x28 Write Encoder counter 
				sWrVal_MT2(15 downto 8)          <= IO_DAT_WR(7 downto 0);
			  when b"00100111" =>                                       -- 0x27 Write Encoder counter 
				sWrVal_MT2(23 downto 16)         <= IO_DAT_WR(7 downto 0);
			  when b"00100110" =>                                       -- 0x26 Write Encoder counter
			   sWrVal_MT2(31 downto 24)         <= IO_DAT_WR(7 downto 0);
			  when b"00100101" =>                                       -- 0x25 latch Encoder counter
				sWr_MT2 <= not sWr_MT2;
				
			  --Reset module
			  when b"01000000" =>                                       -- 0x40 Write timer config
			   sH_timer(7 downto 0)  <= IO_DAT_WR(7 downto 0);
			  when b"01000001" =>                                       -- 0x41 Write timer latch
			   sWr_timer             <= not sWr_timer;
			  when b"01000010" =>                                       -- 0x42 Trigger Reset
			   sTrigger_Reset        <= not sTrigger_Reset;
			  
			  --PWM I/F
			  when b"01000101" =>                                       --0x45 Write PWM Frq Low
			    sPWM_Frq(7 downto 0) <= IO_DAT_WR(7 downto 0);
			  when b"01000110" =>                                       --0x46 Write PWM Frq High
			    sPWM_Frq(13 downto 8) <= IO_DAT_WR(5 downto 0); 
			  when b"01000111" =>                                       --0x47 Write PWM duty Low
			    sPWM_Duty(7 downto 0)<= IO_DAT_WR(7 downto 0);
			  when b"01001000" =>                                       --0x48 Write PWM duty High
			    sPWM_Duty(13 downto 8)<= IO_DAT_WR(5 downto 0);
			  --LED brightness & --FAN control
			  when b"01001001" =>                                       --0x49 Write LED latch, On/OFF
			  sWr_PWM                <= not sWr_PWM;
			  sPWM_ONOFF             <= IO_DAT_WR(0);
--			  --FAN control
--			  when b"01001010" =>                                       --0x4a Write FAN latch, On/OFF
--			  sWr_FAN                <= not sWr_FAN;
--			  sFAN_ONOFF             <= IO_DAT_WR(0);
			  -- NULL
			  when others =>
				NULL;
			end case;
		elsif IO_RDY_RD = '1' then
		   case IO_ADDR is
			
			-- 7 Seg LED indicator for error display
			when b"00000000" =>   
			IO_DAT_RD(7 downto 0)              <= sSeg_LED(7 downto 0);
			-- IO Input
		   when b"00000110" =>                                      -- 0x02   IO block 3
			 IO_DAT_RD(7 downto 0)             <= iPin23_16(7 downto 0);
		   when b"00000111" =>                                      -- 0x03   IO block 2
			 IO_DAT_RD(7 downto 0)             <=  "00" & iPin15_8(5 downto 0);
		   when b"00001000" => 												   -- 0x04   IO block 1
			 IO_DAT_RD(7 downto 0)             <=  "00000" & iPin7_0(2 downto 0);
			 
			--Read IO Output
			when b"00000010" =>                                       -- 0x02   IO block 3
		    IO_DAT_RD(7 downto 0)             <= "0000000" & soPin23_16;                
			when b"00000011" =>                                       -- 0x03   IO block 2
			 IO_DAT_RD(7 downto 0)             <= soPin15_8(7 downto 0);
			when b"00000100" => 												    -- 0x04   IO block 1
			 IO_DAT_RD(7 downto 0)             <= soPin7_0(7 downto 0);
				
         -- CPLD Version
			when b"00001010" =>                                      -- 0x0a  CPLD version
			 IO_DAT_RD(7 downto 0)             <= CPLD_VERSION(7 downto 0);

			-- DIP Switch setting
			when b"00001011" =>                                      -- 0x0b  DIP Switch setting
			 IO_DAT_RD(7 downto 0)             <= "0000" & DIP_SW(3 downto 0);
			 
--			-- Error Code
--			when b"00001100" =>                                      -- 0x0c  CPLD Error detection, current not define
--			 IO_DAT_RD    <= "00001100";
			 
		   -- Read Encoder 1 counter
		   when b"00100100" =>                                      -- 0x24  Read encoder cunter                                       
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT1(7 downto 0);
		   when b"00100011" =>                                      -- 0x23  Read encoder cunter 
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT1(15 downto 8);
		   when b"00100010" =>                                      -- 0x22  Read encoder cunter 
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT1(23 downto 16);
		   when b"00100001" =>                                      -- 0x21  Read encoder cunter
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT1(31 downto 24);
		   when b"00100000" =>                                      -- 0x20 latch Encoder counter
			 sEnc_MT1 <= Enc_MT1;
			 
			-- Read Encoder 2 counter
		   when b"00101001" =>                                      -- 0x29  Read encoder cunter                                       
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT2(7 downto 0);
		   when b"00101000" =>                                      -- 0x28  Read encoder cunter 
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT2(15 downto 8);
		   when b"00100111" =>                                      -- 0x27  Read encoder cunter 
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT2(23 downto 16);
		   when b"00100110" =>                                      -- 0x26  Read encoder cunter
		    IO_DAT_RD(7 downto 0)            <= sEnc_MT2(31 downto 24);
		   when b"00100101" =>                                      -- 0x25 latch Encoder counter
			 sEnc_MT2 <= Enc_MT2;
			 
			-- Read Encoder 3 counter
			
			-- Read Encoder 4 counter

			--Reset module
			when b"01000000" =>                                      -- 0x40 Read timer config
			   IO_DAT_RD(7 downto 0) <= R_timer(7 downto 0);
				
			--PWM I/F
		   when b"01000101" =>                                       --0x45 Read PWM Frq Low
			 IO_DAT_RD(7 downto 0)            <= sPWM_Frq(7 downto 0);
		   when b"01000110" =>                                       --0x46 Read PWM Frq High
			 IO_DAT_RD(7 downto 0)            <= "00" & sPWM_Frq(13 downto 8);
		   when b"01000111" =>                                       --0x47 Read PWM duty Low
			 IO_DAT_RD(7 downto 0)            <= sPWM_Duty(7 downto 0);
		   when b"01001000" =>                                       --0x48 Read PWM duty High
			 IO_DAT_RD(7 downto 0)            <= "00" & sPWM_Duty(13 downto 8);
			 
		   when others =>
			 IO_DAT_RD(7 downto 0)            <= "11110011";
			end case;
  end if;
end process IOSPACE_WR_PROC;


IO_OUT : process (nRESET, Clk, sWrVal_MT1, sWrVal_MT2, soPin7_0, soPin15_8, soPin23_16, sSeg_LED, Seg_DP) is
begin
	if rising_edge(clk) then	
		if nRESET = '0' then
			H_timer  <= "00001011";	
			PWM_Duty   <= "01111101000000";	
			PWM_Frq    <= "11111010000000";	
			PWM_ONOFF  <= '0';
			WrVal_MT1  <= (others => '0');
			WrVal_MT2  <= (others => '0');
			oPin7_0    <= "00000000"; --(others => 'Z');
			oPin15_8   <= "00000000";--(others => 'Z');
			oPin23_16  <= '0';
			Seg_LED    <= "11111111";
			Pizza_Cali <= '0';
		else
			H_timer    <= sH_timer;
			PWM_Duty   <= sPWM_Duty;
			PWM_Frq    <= sPWM_Frq;
			PWM_ONOFF  <= sPWM_ONOFF; 
			WrVal_MT1  <= sWrVal_MT1;
			WrVal_MT2  <= sWrVal_MT2;	
			oPin7_0    <= soPin7_0;
			oPin15_8   <= soPin15_8 or "01000000";
			oPin23_16  <= soPin23_16;
			Seg_LED(7) <= Seg_DP or sSeg_LED(7);
			Seg_LED(6) <= Seg_DP or sSeg_LED(6);
			Seg_LED(5) <= Seg_DP or sSeg_LED(5);
			Seg_LED(4) <= Seg_DP or sSeg_LED(4);
			Seg_LED(3) <= Seg_DP or sSeg_LED(3);-- and DIP_SW(3);
			Seg_LED(2) <= Seg_DP or sSeg_LED(2);-- and DIP_SW(2);
			Seg_LED(1) <= Seg_DP or sSeg_LED(1);-- and DIP_SW(1);
			Seg_LED(0) <= Seg_DP or sSeg_LED(0);-- and DIP_SW(0);
			Pizza_Cali <= ((not iPin23_16(0)) or (not iPin15_8(0))) and DIP_SW(1);   -- IO INPUT 10 or and 11, 12, 13, 14, 15, 16, 17
		end if;
	end if;
end process IO_OUT;
END architecture A_IO_SPACE;