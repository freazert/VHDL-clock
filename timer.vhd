----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:43:48 10/27/2016 
-- Design Name: 
-- Module Name:    timer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timer is
    Port ( sysclk : in  STD_LOGIC;	 
			  reset : in  STD_LOGIC := '0';
			  init_reset : out std_logic;
			  pulse_1ms : out  STD_LOGIC;
			  pulse_10ms : out STD_LOGIC;
			  pulse_100ms: out STD_LOGIC;
			  pulse_1s: out STD_LOGIC
			  );
			  
			  
end timer;

architecture Behavioral of timer is
	COMPONENT clock_divider
	generic (div : integer := 1000000);
	Port ( 
		clk : in std_logic;
		pulse : out std_logic
	);
	END COMPONENT;
	

	signal cnten_100us, cnten_1ms : std_logic;
	--signal pulse_1us, pulse_100
	
	
begin
	
	--T1us: clock_divider GENERIC MAP	(div=> 100) PORT MAP(clk => sysclk, pulse => pulse_1us);
	--T100us: clock_divider GENERIC MAP	(div=> 10000) PORT MAP(clk => sysclk, pulse => pulse_100us); --100us
	T1ms: clock_divider GENERIC MAP	(div=> 100000) PORT MAP(clk => sysclk, pulse => pulse_1ms); -- 1ms
	T10ms: clock_divider GENERIC MAP	(div=> 1000000) PORT MAP(clk => sysclk, pulse => pulse_10ms); -- 10ms
	T100ms: clock_divider GENERIC MAP	(div=> 10000000) PORT MAP(clk => sysclk, pulse => pulse_100ms); -- 100ms
	T1s: clock_divider GENERIC MAP	(div=> 100000000) PORT MAP(clk => sysclk, pulse => pulse_1s ); -- 1s
	
	
	
end Behavioral;

