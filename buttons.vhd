----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:35 11/04/2016 
-- Design Name: 
-- Module Name:    buttons - Behavioral 
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

entity buttons is
    Port ( btn1 : in  STD_LOGIC;
           btn2 : in  STD_LOGIC;
           btn3 : in  STD_LOGIC;
           btn4 : in  STD_LOGIC;
			  btn5 : in std_logic;
           sysclk : in  STD_LOGIC;
           debclk : in  STD_LOGIC;
           op1 : out  STD_LOGIC;
           op2 : out  STD_LOGIC;
           op3 : out  STD_LOGIC;
           op4 : out  STD_LOGIC;
			  op5: out std_logic);
end buttons;

architecture Behavioral of buttons is

COMPONENT button 
Port ( btn : in  STD_LOGIC;
           sysclk : in  STD_LOGIC;
           debclk : in  STD_LOGIC;
           op : out  STD_LOGIC);
end COMPONENT;

begin

B1: button PORT MAP( btn => btn1, sysclk => sysclk, debclk => debclk, op => op1);
B2: button PORT MAP( btn => btn2, sysclk => sysclk, debclk => debclk, op => op2);
B3: button PORT MAP( btn => btn3, sysclk => sysclk, debclk => debclk, op => op3);
B4: button PORT MAP( btn => btn4, sysclk => sysclk, debclk => debclk, op => op4);
B5: button PORT MAP( btn => btn5, sysclk => sysclk, debclk => debclk, op => op5);



end Behavioral;

