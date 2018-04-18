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
signal sEBU_EVENT : std_logic := '0';
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
signal sPizza_Cali : std_logic := '0';

BEGIN

sEBU_EVENT    <= IO_RDY_WR OR IO_RDY_RD when nRESET = '1' else '0';

-- outputs
oPin7_0       <= soPin7_0;
oPin15_8      <= soPin15_8 OR X"40";
oPin23_16     <= soPin23_16;
Wr_MT1        <= sWr_MT1;
Wr_MT2        <= sWr_MT2;
H_timer       <= sH_timer;
Wr_timer      <= sWr_timer;
Trigger_Reset <= sTrigger_Reset;	
PWM_Frq       <= sPWM_Frq;
PWM_Duty      <= sPWM_Duty;
Wr_PWM        <= sWr_PWM;
PWM_ONOFF     <= sPWM_ONOFF;
WrVal_MT1     <= sWrVal_MT1;
WrVal_MT2     <= sWrVal_MT2;	
Pizza_Cali    <= sPizza_Cali;

LED_OUT : process (sSeg_LED,Seg_DP)
begin
  if (Seg_DP = '0') then
    Seg_LED <=  sSeg_LED AND X"00"; 
  else
    Seg_LED <=  sSeg_LED AND X"FF";
  end if;
end process LED_OUT;

IO_SPACE_PROC : process (nRESET,clk,sEBU_EVENT)
variable vADDRESS : std_logic_vector (7 downto 0);
begin

if (nRESET = '0') then
  vADDRESS := (others => '0');
  sSeg_LED <= "11111111";
  soPin7_0 <= "00000000"; --(others => 'Z');
  soPin15_8 <= "00000000";--(others => 'Z');
  soPin23_16 <= '0';
  sWr_MT1 <= '0';
  sWrVal_MT1 <= (others => '0');
  sWr_MT2 <= '0';  
  sWrVal_MT2 <= (others => '0');
  sH_timer <= "00001011";
  sWr_timer <= '0';
  sTrigger_Reset <= '0';
  sPWM_Frq <= "11111010000000";	
  sPWM_Duty <= "01111101000000";	
  sPWM_ONOFF <= '0';  
  sPizza_Cali <= '0';
elsif rising_edge(sEBU_EVENT) then
  vADDRESS := IO_ADDR;
  sPizza_Cali <= ((not iPin23_16(0)) or (not iPin15_8(0))) and DIP_SW(1);   -- IO INPUT 10 or and 11, 12, 13, 14, 15, 16, 17

  if (IO_RDY_WR = '1') then
    case vADDRESS is 
    -- 7 Segment
    when X"00" =>   
      sSeg_LED <=  IO_DAT_WR;
    -- IO Ouput
    when X"02" => -- 0x02   IO block 3
      soPin23_16 <= IO_DAT_WR(0);
    when X"03" => -- 0x03   IO block 2
      soPin15_8(7 downto 0) <= IO_DAT_WR;
    when X"04" => -- 0x04   IO block 1
      soPin7_0(7 downto 0) <= IO_DAT_WR;
    -- Write Encoder counter 1
    when X"20" => -- 0x20 latch Encoder counter
      sWr_MT1 <= not sWr_MT1;
    when X"21" => -- 0x21 Write Encoder counter
      sWrVal_MT1(31 downto 24)<= IO_DAT_WR;
    when X"22" => -- 0x22 Write Encoder counter 
      sWrVal_MT1(23 downto 16)<= IO_DAT_WR;
    when X"23" => -- 0x23 Write Encoder counter 
      sWrVal_MT1(15 downto 8) <= IO_DAT_WR(7 downto 0);
    when X"24" => -- 0x24 Write Encoder counter 
      sWrVal_MT1(7 downto 0) <= IO_DAT_WR(7 downto 0);
    -- Write Encoder counter 2
    when X"25" => -- 0x25 latch Encoder counter
      sWr_MT2 <= not sWr_MT2;
    when X"26" => -- 0x26 Write Encoder counter
      sWrVal_MT2(31 downto 24) <= IO_DAT_WR(7 downto 0);
    when X"27" => -- 0x27 Write Encoder counter 
      sWrVal_MT2(23 downto 16) <= IO_DAT_WR(7 downto 0);
    when X"28" => -- 0x28 Write Encoder counter 
      sWrVal_MT2(15 downto 8) <= IO_DAT_WR(7 downto 0);
    when X"29" => -- 0x29 Write Encoder counter 
      sWrVal_MT2(7 downto 0) <= IO_DAT_WR(7 downto 0);
    --Reset module
    when X"40" => -- 0x40 Write timer config
      sH_timer(7 downto 0) <= IO_DAT_WR(7 downto 0);
    when X"41" => -- 0x41 Write timer latch
      sWr_timer <= not sWr_timer;
    when X"42" => -- 0x42 Trigger Reset
      sTrigger_Reset <= not sTrigger_Reset;
    --PWM I/F
    when X"45" => --0x45 Write PWM Frq Low
      sPWM_Frq(7 downto 0) <= IO_DAT_WR(7 downto 0);
    when X"46" => --0x46 Write PWM Frq High
      sPWM_Frq(13 downto 8) <= IO_DAT_WR(5 downto 0); 
    when X"47" => --0x47 Write PWM duty Low
      sPWM_Duty(7 downto 0)<= IO_DAT_WR(7 downto 0);
    when X"48" => --0x48 Write PWM duty High
      sPWM_Duty(13 downto 8)<= IO_DAT_WR(5 downto 0);
    --LED brightness & --FAN control
    when X"49" => --0x49 Write LED latch, On/OFF
      sWr_PWM <= not sWr_PWM;
      sPWM_ONOFF <= IO_DAT_WR(0);
    when others =>
    end case;
  end if;
  
  if (IO_RDY_RD = '1') then
    vADDRESS := IO_ADDR;
      case vADDRESS is			
			-- 7 Seg LED indicator for error display
			when X"00" =>
			IO_DAT_RD(7 downto 0)              <= sSeg_LED(7 downto 0);
			-- IO Input
      when X"06" => -- 0x02   IO block 3
        IO_DAT_RD(7 downto 0)             <= iPin23_16(7 downto 0);
      when X"07" => -- 0x03   IO block 2
        IO_DAT_RD(7 downto 0)             <=  "00" & iPin15_8(5 downto 0);
      when X"08" => -- 0x04   IO block 1
        IO_DAT_RD(7 downto 0)             <=  "00000" & iPin7_0(2 downto 0);
			--Read IO Output
      when X"02" => -- 0x02   IO block 3
        IO_DAT_RD(7 downto 0)             <= "0000000" & soPin23_16;                
      when X"03" => -- 0x03   IO block 2
        IO_DAT_RD(7 downto 0)             <= soPin15_8(7 downto 0);
      when X"04" => -- 0x04   IO block 1
        IO_DAT_RD(7 downto 0)             <= soPin7_0(7 downto 0);
      -- CPLD Version
			when X"0A" => -- 0x0a  CPLD version
			  IO_DAT_RD(7 downto 0)             <= CPLD_VERSION(7 downto 0);
			-- DIP Switch setting
			when X"0B" => -- 0x0b  DIP Switch setting
			 IO_DAT_RD(7 downto 0)             <= "0000" & DIP_SW(3 downto 0);
      -- Read Encoder 1 counter
      when X"20" => -- 0x20 latch Encoder counter
      sEnc_MT1 <= Enc_MT1;
      when X"21" => -- 0x21  Read encoder cunter
        IO_DAT_RD(7 downto 0)            <= sEnc_MT1(31 downto 24);
      when X"22" => -- 0x22  Read encoder cunter 
        IO_DAT_RD(7 downto 0)            <= sEnc_MT1(23 downto 16);
      when X"23" => -- 0x23  Read encoder cunter 
        IO_DAT_RD(7 downto 0)            <= sEnc_MT1(15 downto 8);
      when X"24" => -- 0x24  Read encoder cunter                                       
        IO_DAT_RD(7 downto 0)            <= sEnc_MT1(7 downto 0);
      -- Read Encoder 2 counter
      when X"25" => -- 0x25 latch Encoder counter
      sEnc_MT2 <= Enc_MT2;
      when X"26" => -- 0x26  Read encoder cunter
      IO_DAT_RD(7 downto 0)            <= sEnc_MT2(31 downto 24);
      when X"27" => -- 0x27  Read encoder cunter 
      IO_DAT_RD(7 downto 0)            <= sEnc_MT2(23 downto 16);
      when X"28" => -- 0x28  Read encoder cunter 
      IO_DAT_RD(7 downto 0)            <= sEnc_MT2(15 downto 8);
      when X"29" => -- 0x29  Read encoder cunter                                       
      IO_DAT_RD(7 downto 0)            <= sEnc_MT2(7 downto 0);
			--Reset module
			when X"40" => -- 0x40 Read timer config
		    IO_DAT_RD(7 downto 0) <= R_timer(7 downto 0);
			--PWM I/F
		  when X"45" =>  --0x45 Read PWM Frq Low
        IO_DAT_RD(7 downto 0)            <= sPWM_Frq(7 downto 0);
		  when X"46" => --0x46 Read PWM Frq High
        IO_DAT_RD(7 downto 0)            <= "00" & sPWM_Frq(13 downto 8);
		  when X"47" => --0x47 Read PWM duty Low
        IO_DAT_RD(7 downto 0)            <= sPWM_Duty(7 downto 0);
		  when X"48" => --0x48 Read PWM duty High
        IO_DAT_RD(7 downto 0)            <= "00" & sPWM_Duty(13 downto 8);
		  when others =>
        IO_DAT_RD(7 downto 0)            <= "11110011";
			end case;
  end if;
end if;  
end process IO_SPACE_PROC;

END architecture A_IO_SPACE;