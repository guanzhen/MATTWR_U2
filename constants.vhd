LIBRARY ieee;
USE ieee.std_logic_1164.all; 

package constants is

constant NUM_OF_PWMMOD  : natural :=3;
constant DEFAULT_RESET_PERIOD : integer := 1000; -- 1ms;
constant ENC_WIDTH : natural := 32; -- 1ms;
constant NUM_OF_INPUTS : natural := 10;
constant NUM_OF_DIFFINPUTS : natural := 3;
constant NUM_OF_OUTPUTS : natural := 16;
constant DEFAULT_PWM_PERIOD : integer := 1000;
constant DEFAULT_PWM_DUTY : integer := 100;
end package constants;
