----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:09:05 12/16/2016 
-- Design Name: 
-- Module Name:    Sound - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sound is
    Port ( alarm_sound : in  STD_LOGIC;
			  sysclk : in STD_LOGIC;
			  pulske : in STD_LOGIC;
           soundpulse : out  STD_LOGIC);
end Sound;

architecture Behavioral of Sound is

begin

ALARM_GOES_OFF : process(sysclk)
begin
	if alarm_sound = '1' then 
		soundpulse <= pulske;
		--soundpulse <= '1';
	else soundpulse <= '0';
	end if;
end process;

end Behavioral;

