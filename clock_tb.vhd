--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:27:53 11/28/2016
-- Design Name:   
-- Module Name:   D:/school/SCH-IW_EI/elektronica/digitale/labo/working_directory/clock/clock_tb.vhd
-- Project Name:  clock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: clock
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
 
ENTITY clock_tb IS
END clock_tb;
 
ARCHITECTURE behavior OF clock_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clock
    Port ( 
		sysclk : in  STD_LOGIC;
		reset : in std_logic;
		btn_l, btn_r, btn_c, btn_u, btn_d : in std_logic;
      
		an : out  STD_LOGIC_VECTOR(3 downto 0);
      cath : out  STD_LOGIC_VECTOR(6 downto 0);
      led_alarm_buzzing : out  STD_LOGIC;
		led_alarm_on: out std_logic
		);
    END COMPONENT;
    

   --Inputs
   signal sysclk : std_logic := '0';
   signal reset : std_logic := '0';
	signal btn_l, btn_r, btn_c, btn_u, btn_d : std_logic := '0';
 	--Outputs
   signal an : std_logic_vector(3 downto 0);
   signal cath : std_logic_vector(6 downto 0);
   signal led_alarm_on : std_logic;
   signal led_alarm_buzzing : std_logic;

   -- Clock period definitions
   constant sysclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clock PORT MAP (
          sysclk => sysclk,
          reset => reset,
			 btn_l => btn_l,
			 btn_r => btn_r,
			 btn_c => btn_c,
			 btn_d => btn_d,
			 btn_u => btn_u,
          an => an,
          cath => cath,
          led_alarm_buzzing => led_alarm_buzzing,
			 led_alarm_on => led_alarm_on
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

      wait for sysclk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
