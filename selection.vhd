----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:37:35 11/17/2016 
-- Design Name: 
-- Module Name:    selection - Behavioral 
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

entity selection is
    Port ( i1, i2, i3 : in  STD_LOGIC;
           selectm, sysclk : in  STD_LOGIC;
           U1_1, U1_2, U1_3 : out  STD_LOGIC;
			  U1_active: out std_logic; 
           U2_1, U2_2, U2_3 : out  STD_LOGIC;
           U2_active: out std_logic;
           U3_1, U3_2, U3_3 : out  STD_LOGIC;
           U3_active : out std_logic;
			  ostate : out STD_LOGIC_Vector(2 downto 0);
			  alarm_is_buzzing : in STD_LOGIC
			  );
end selection;

architecture Behavioral of selection is

--signal mode : std_logic_vector (width downto 1);

Type element is (clock, date, alarm);

signal current_edit : element := clock; -- 00 clocl 	  -- 01 date	  -- alarm 
signal current_mode : STD_LOGIC := '0';
signal edit : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
signal s_ostate : STD_LOGIC_VECTOR (2 downto 0) := (others => '0');
begin
	SetType:process(sysclk)
	begin
		if rising_edge(sysclk)  then
		if alarm_is_buzzing = '0' then
			if selectm = '1' then
				case current_edit is 
				when clock => current_edit <= date; s_ostate <= "001";
				when date => current_edit <= alarm; s_ostate <= "010";
				when alarm => current_edit <= clock;  s_ostate <= "100";
				end case;
			end if;
			else
			current_edit <= clock;  s_ostate <= "100";
			end if;
		end if;
	end process;
	
	SetButtons:process(sysclk)
	begin
	if rising_edge(sysclk) and alarm_is_buzzing = '0' then
			edit <= (others => '0');
			case current_edit is
				when clock => edit(0) <= i1; edit(1) <= i2; edit(2) <= i3; U1_active <= '0'; U2_active <= '1'; U3_active <= '1';
				when date => edit(3) <= i1; edit(4) <= i2; edit(5) <= i3; U1_active <= '1'; U2_active <= '0'; U3_active <= '1';
				when alarm => edit(6) <= i1; edit(7) <= i2; edit(8) <= i3; U1_active <= '1'; U2_active <= '1'; U3_active <= '0';
			end case;
	end if;
	end process;
	U1_1 <= edit(0);
	U1_2 <= edit(1);
	U1_3 <= edit(2);
	U2_1 <= edit(3);
	U2_2 <= edit(4);
	U2_3 <= edit(5);
	U3_1 <= edit(6);
	U3_2 <= edit(7); 
	U3_3 <= edit(8);
	
	ostate <= s_ostate;
	
	
	
	
end Behavioral;

