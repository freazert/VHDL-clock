--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:42:53 11/28/2016
-- Design Name:   
-- Module Name:   D:/school/SCH-IW_EI/elektronica/digitale/labo/working_directory/clock/alarm_clock_tb.vhd
-- Project Name:  clock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alarm_clock
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
 
ENTITY alarm_clock_tb IS
END alarm_clock_tb;
 
ARCHITECTURE behavior OF alarm_clock_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alarm_clock
    PORT(
         sysclk : IN  std_logic;
         reset : IN  std_logic;
         en : IN  std_logic;
         sel : IN  std_logic_vector(2 downto 0);
         mode : IN  std_logic;
         incr : IN  std_logic;
         decr : IN  std_logic;
			stop : IN std_logic;
         count_t : OUT  std_logic_vector(23 downto 0);
         count_d : OUT  std_logic_vector(23 downto 0);
         count_a : OUT  std_logic_vector(23 downto 0);
         state_t : OUT  std_logic_vector(3 downto 0);
         state_d : OUT  std_logic_vector(3 downto 0);
         state_a : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sysclk : std_logic := '0';
   signal reset : std_logic := '0';
   signal en : std_logic := '0';
   signal sel : std_logic_vector(2 downto 0) := "100";
   signal mode : std_logic := '0';
   signal incr : std_logic := '0';
   signal decr : std_logic := '0';
	signal stop : std_logic := '0';

 	--Outputs
   signal count_t : std_logic_vector(23 downto 0);
   signal count_d : std_logic_vector(23 downto 0);
   signal count_a : std_logic_vector(23 downto 0);
   signal state_t : std_logic_vector(3 downto 0);
   signal state_d : std_logic_vector(3 downto 0);
   signal state_a : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant sysclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alarm_clock PORT MAP (
          sysclk => sysclk,
          reset => reset,
          en => en,
          sel => sel,
          mode => mode,
          incr => incr,
          decr => decr,
			 stop => stop,
          count_t => count_t,
          count_d => count_d,
          count_a => count_a,
          state_t => state_t,
          state_d => state_d,
          state_a => state_a
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
		reset <= '1';
      wait for 100 ns;	
		reset <= '0';
		en <= '1';
      wait for sysclk_period*10;
		mode <= '1';
		wait for 10ns;
		mode <= '0';

		wait for 100ns;
		incr <= '1';
		sel <= "010";
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		sel <= "001";
		wait for 100ns;
		sel <= "100";
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		
		sel <= "010";
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		
		sel <= "001";
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		mode <= '1';
		wait for 10ns;
		mode <= '0';
		wait for 100ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 50ns;
		incr <= '1';
		wait for 10ns;
		incr <= '0';
		wait for 100ns;
		decr <= '1';
		wait for 10ns;
		decr <= '0';
		wait for 50ns;
		
		
		wait for sysclk_period * 3600 * 3;
		

      -- insert stimulus here 

      wait;
   end process;

END;
