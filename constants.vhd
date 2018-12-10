LIBRARY ieee;
USE ieee.std_logic_1164.all; 

package constants is

constant VERSION : std_logic_vector(15 downto 0) := X"0007"; -- version 0.07
constant NUM_OF_PWMMOD  : natural :=3;
constant DEFAULT_RESET_PERIOD : integer := 1000; -- 1ms;
constant ENC_WIDTH : natural := 32; -- 1ms;
constant NUM_OF_INPUTS : natural := 22;
constant NUM_OF_OUTPUTS : natural := 15;
constant DEFAULT_PWM_PERIOD : integer := 1000;
constant DEFAULT_PWM_DUTY : integer := 100;
constant NUM_OF_SYNC : integer := 7;
-- Main Board
--constant NUM_OF_SE_INPUTS : natural := 14;
--constant NUM_OF_DIFFINPUTS : natural := 2;
-- Sub Board / AIV Board
constant NUM_OF_SE_INPUTS : natural := 12;
constant NUM_OF_DIFFINPUTS : natural := 4;
end package constants;
