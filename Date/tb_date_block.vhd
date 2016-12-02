--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:22:39 11/10/2016
-- Design Name:   
-- Module Name:   D:/School UAntwerpen/Electronica-1/Labo Digitaal/ISE Projects/Gitmap kopie/vhdl-clock/Date/tb_date_block.vhd
-- Project Name:  Date
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: date_block
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
 
ENTITY tb_date_block IS
END tb_date_block;
 
ARCHITECTURE behavior OF tb_date_block IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT date_block
    PORT(
         sysclk : IN  std_logic;
         reset : IN  std_logic;
         cnten : IN  std_logic;
         mode : IN  std_logic;
         incr, decr : IN  std_logic;
		   endEdit		: in STD_LOGIC;
		   ostate	: out  STD_LOGIC_VECTOR (3 downto 0);
         date_cnt : OUT  std_logic_vector(23 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal sysclk : std_logic := '0';
   signal reset : std_logic := '0';
   signal cnten : std_logic := '0';
   signal mode : std_logic := '0';
   signal incr : std_logic := '0';
   signal decr : std_logic := '0';
	signal endEdit : std_logic := '0';

 	--Outputs
   signal ostate : std_logic_vector(3 downto 0);
   signal date_cnt : std_logic_vector(23 downto 0);

   -- Clock period definitions
   constant sysclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: date_block PORT MAP (
          sysclk => sysclk,
          reset => reset,
          cnten => cnten,
          mode => mode,
          incr => incr,
			 decr => decr,
			 endEdit => endEdit,
			 ostate => ostate,
          date_cnt => date_cnt
        );

   -- Clock process definitions
   sysclk_process :process
   begin
		sysclk <= '0';
		wait for sysclk_period/2;
		sysclk <= '1';
		wait for sysclk_period/2;
   end process;
	
	cnten_process :process
   begin
		cnten <= '0';	wait for sysclk_period*9;
		cnten <= '1';	wait for sysclk_period;
   end process;	


   -- Stimulus process
   stim_proc: process
   begin		
    reset <='1';wait for sysclk_period;	
		reset <='0';wait for sysclk_period;
		--wait for sysclk_period*8650;
		
		--wait for 100 ns;
		--mode <='0';	wait for 20 ns;
		
		-- stel instel mode in op setT3
		mode <='1';	wait for sysclk_period;
		mode <='0';	wait for 100 ns;	
		mode <='1';	wait for sysclk_period;
		mode <='0';	wait for 100 ns;
		mode <='1';	wait for sysclk_period;
		mode <='0';	wait for 100 ns;	
			-- stel T3 in
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		
		
		mode <='1';	wait for sysclk_period;
		mode <='0';	wait for 10 ns;
		mode <='1';	wait for sysclk_period;
		mode <='0';	wait for 100 ns;
		mode <='1';	wait for sysclk_period;
		mode <='0';	wait for 100 ns;
		
		incr <='1';	wait for sysclk_period;
		incr <='0';	wait for sysclk_period;
		
		
		

		--date_cnt <= "001100010000000100010110"

		endEdit <= '1'; wait for 100 ns;
		
		-- stel  mode in op tellen	
		mode <='1';	wait for sysclk_period;
		mode <='0';	wait for 100 ns;
      wait;
   end process;

END;
