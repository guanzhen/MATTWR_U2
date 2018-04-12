--------------------------------------------------------------------------------
-- Company: www.controlsystemslab.com
-- Engineer: Dr.Varodom Toochinda
--
-- Create Date:   21:34:19 05/02/2012
-- Design Name:   Testbench for X4enc3
-- Module Name:   F:/Dewwork/Dew2012/Active/research/hdl/encoder/vhdl/x4enc3/TB1.vhd
-- Project Name:  x4enc3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: x4enc3
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB1 IS
END TB1;
 
ARCHITECTURE behavior OF TB1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT QuadDecToDIRPulse
    GENERIC
    (
        ENC_WIDTH    : integer  :=    32;
        CPLD_VERSION : std_logic_vector(7 downto 0) := "00001101"                     
    );
    PORT(
         A       : IN  std_logic;
         B       : IN  std_logic;         
         N       : IN  STD_LOGIC;
         CLK     : IN  std_logic;
         PS      : OUT  std_logic;
         DIR     : OUT  std_logic;
       	 Enc     : OUT STD_LOGIC_VECTOR (31 downto 0)  := (others => '0');
       	 Wr      : IN  STD_LOGIC;
       	 WrVal   : IN  STD_LOGIC_VECTOR (31 downto 0)
        );
    END COMPONENT;
	 

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal Clk : std_logic := '0';
   signal N : std_logic := '0';

 	--Outputs
   signal P : std_logic;
   signal Dir : std_logic;
   signal Enc : STD_LOGIC_VECTOR (31 downto 0);
   signal Wr : std_logic := '0';
   signal WrVal : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: QuadDecToDIRPulse 
    GENERIC MAP
    (
        ENC_WIDTH    =>  32,
        CPLD_VERSION =>  "00001101"                     
    )
   PORT MAP 
   (
          A => A,
          B => B,
          CLK => Clk,
          N => N,
          PS => P,
          DIR => Dir,
          Enc => Enc,
          Wr => Wr,
          WrVal => WrVal
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*5;

      -- insert stimulus here 
		-- CW direction: A leads B 90 degree
		A <= '1';
		B <= '0';
		wait for 100 ns;
		A <= '1';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '0';
		wait for 100 ns;
		A <= '1';
		B <= '0';
		wait for 100 ns;
		A <= '1';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '0';
		wait for 200 ns;
		----
		
		A <= '1';
		B <= '0';
		wait for 100 ns;
		A <= '1';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '0';
		wait for 50 ns;
		WrVal <= (8 => '1', others => '0');
		Wr <= not Wr;
		wait for 50 ns;
		A <= '1';
		B <= '0';
		wait for 100 ns;
		A <= '1';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '1';
		wait for 100 ns;
		A <= '0';
		B <= '0';
		wait for 200 ns;
		
		-- CCW direction: B leads A 90 degree
		A <= '0';
		B <= '1';
		wait for 100 ns;
		A <= '1';
		B <= '1';
		wait for 100 ns;
		A <= '1';
		B <= '0';
		wait for 100 ns;
		A <= '0';
		B <= '0';
		wait for 100 ns;
		A <= '0';
		B <= '1';
		wait for 100 ns;
		A <= '1';
		B <= '1';
		wait for 100 ns;
		A <= '1';
		B <= '0';
		wait for 100 ns;
		A <= '0';
		B <= '0';
	   wait;
   end process;


END;
