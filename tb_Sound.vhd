--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:19:47 12/16/2016
-- Design Name:   
-- Module Name:   D:/School UAntwerpen/Electronica-1/Labo Digitaal/clock-v2/clock-vhdl-2/tb_Sound.vhd
-- Project Name:  clock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sound
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
 
ENTITY tb_Sound IS
END tb_Sound;
 
ARCHITECTURE behavior OF tb_Sound IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sound
    PORT(
         alarm_sound : IN  std_logic;
         sysclk : IN  std_logic;
         pulske : IN  std_logic;
         soundpulse : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal alarm_sound : std_logic := '0';
   signal sysclk : std_logic := '0';
   signal pulske : std_logic := '0';

 	--Outputs
   signal soundpulse : std_logic;

   -- Clock period definitions
   constant sysclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sound PORT MAP (
          alarm_sound => alarm_sound,
          sysclk => sysclk,
          pulske => pulske,
          soundpulse => soundpulse
        );

   -- Clock process definitions
   sysclk_process :process
   begin
		sysclk <= '0';
		wait for sysclk_period/2;
		sysclk <= '1';
		wait for sysclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		alarm_sound <= '1';
		wait for 1 ms;
		alarm_sound <= '0';
		wait for 1 ms;
      -- insert stimulus here 

      wait;
   end process;

END;
