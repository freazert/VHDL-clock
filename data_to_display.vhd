----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:17:53 12/01/2016 
-- Design Name: 
-- Module Name:    data_to_display - Behavioral 
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

entity data_to_display is
		port(
			  idig : in  STD_LOGIC_VECTOR (23 downto 0);
           istate : in  STD_LOGIC_VECTOR (3 downto 0);
			  number1 : out  STD_LOGIC_VECTOR (3 downto 0);
           number2 : out  STD_LOGIC_VECTOR (3 downto 0);
           number3 : out  STD_LOGIC_VECTOR (3 downto 0);
           number4 : out  STD_LOGIC_VECTOR (3 downto 0);
			  sysclk : in std_logic;
			  bliclk : in std_logic;
           obli0 : out  STD_LOGIC_Vector (3 downto 0));
			  
end data_to_display;

architecture Behavioral of data_to_display is
	
	 COMPONENT format_numbers
    PORT(idig : in  STD_LOGIC_VECTOR (23 downto 0);
           istate : in  STD_LOGIC_VECTOR (3 downto 0);
			  number1 : out  STD_LOGIC_VECTOR (3 downto 0);
           number2 : out  STD_LOGIC_VECTOR (3 downto 0);
           number3 : out  STD_LOGIC_VECTOR (3 downto 0);
           number4 : out  STD_LOGIC_VECTOR (3 downto 0));
    END COMPONENT;
	 
	 COMPONENT blinking
    port(istate : in  STD_LOGIC_VECTOR (3 downto 0);
			  sysclk : in std_logic;
			  bliclk : in std_logic;
           obli0 : out  STD_LOGIC_Vector (3 downto 0));
    END COMPONENT;

begin

F_N1:format_numbers PORT MAP (idig => idig,istate => istate,number1=>number1,number2=>number2,number3=>number3,number4=>number4);
B1:blinking PORT MAP (istate => istate, sysclk => sysclk, bliclk => bliclk,obli0=> obli0);

end Behavioral;

