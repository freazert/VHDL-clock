--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:42:29 12/01/2016
-- Design Name:   
-- Module Name:   D:/school/elektronica 1/VHDLclock/VHDL_CLOCK_2/data_to_display_tb.vhd
-- Project Name:  VHDL_CLOCK_2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: data_to_display
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
 
ENTITY data_to_display_tb IS
END data_to_display_tb;
 
ARCHITECTURE behavior OF data_to_display_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_to_display
    PORT(
         idig : IN  std_logic_vector(23 downto 0);
         istate : IN  std_logic_vector(3 downto 0);
         number1 : OUT  std_logic_vector(3 downto 0);
         number2 : OUT  std_logic_vector(3 downto 0);
         number3 : OUT  std_logic_vector(3 downto 0);
         number4 : OUT  std_logic_vector(3 downto 0);
         sysclk : IN  std_logic;
         bliclk : IN  std_logic;
         obli0 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal idig : std_logic_vector(23 downto 0) := (others => '0');
   signal istate : std_logic_vector(3 downto 0) := (others => '0');
   signal sysclk : std_logic := '0';
   signal bliclk : std_logic := '0';

 	--Outputs
   signal number1 : std_logic_vector(3 downto 0);
   signal number2 : std_logic_vector(3 downto 0);
   signal number3 : std_logic_vector(3 downto 0);
   signal number4 : std_logic_vector(3 downto 0);
   signal obli0 : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant sysclk_period : time := 10 ns;
   constant bliclk_period : time := 1000 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_to_display PORT MAP (
          idig => idig,
          istate => istate,
          number1 => number1,
          number2 => number2,
          number3 => number3,
          number4 => number4,
          sysclk => sysclk,
          bliclk => bliclk,
          obli0 => obli0
        );

   -- Clock process definitions
   sysclk_process :process
   begin
		sysclk <= '0';
		wait for sysclk_period/2;
		sysclk <= '1';
		wait for sysclk_period/2;
   end process;
 
   bliclk_process :process
   begin
		bliclk <= '0';
		wait for bliclk_period/2;
		bliclk <= '1';
		wait for bliclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      
		idig <= "010101010101010101111111";
		istate <= "1000";
      wait for 100 ns;	
		--idig <= "010101010101010101010101";
		istate <= "0100";
      wait for 100 ns;	
		--idig <= "010101010101010101010101";
		istate <= "0001";
      wait for 100 ns;	
		idig <= "111111111111111111111111";
		--istate <= "1000";
      wait for 100 ns;	
		--idig <= "010101010101010101010101";
		istate <= "1000";
      wait for 100 ns;	

		
		-- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for sysclk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
