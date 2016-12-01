----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:15:07 11/04/2016 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
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

entity debouncer is
	 generic (width : positive := 4);
    Port ( inp : in  STD_LOGIC;
           sysclk : in  STD_LOGIC;
           debclk : in  STD_LOGIC;
           op : out  STD_LOGIC);
end debouncer;

architecture Behavioral of debouncer is

signal del : std_logic_vector (width downto 1);
constant val : STD_LOGIC_VECTOR (width downto 1) := (others => '1'); 

begin
	process(sysclk)
	begin
		if rising_edge(sysclk) then
			if debclk = '1' then 
				del(1) <= inp;
				del(width downto 2) <= del((width -1) downto 1);
			end if;
		end if;
		end process;
  op  <= '1' when del = val else '0';
end Behavioral;

