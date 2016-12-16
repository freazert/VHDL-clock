----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:27:44 11/28/2016 
-- Design Name: 
-- Module Name:    clock - Behavioral 
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

entity clock is
    Port ( 
		sysclk : in  STD_LOGIC;
		--reset : in std_logic;
		btn_l, btn_r, btn_c, btn_u, btn_d : in std_logic;
      
		an : out  STD_LOGIC_VECTOR(3 downto 0);
      cath : out  STD_LOGIC_VECTOR(6 downto 0);
		sel_out: out std_logic_vector(2 downto 0);
      led_alarm_buzzing : out  STD_LOGIC;
		led_alarm_on: out std_logic
		);
end clock;

architecture Behavioral of clock is

signal reset: std_logic := '0';
signal init : std_logic := '0';


COMPONENT timer 
PORT  (
	sysclk, reset : in  STD_LOGIC;	 
	init_reset, pulse_1ms, pulse_10ms, pulse_100ms, pulse_1s : out  STD_LOGIC
);
end component;


COMPONENT buttons
Port ( 
	btn1, btn2, btn3, btn4, btn5 : in  STD_LOGIC;
	sysclk, debclk : in  STD_LOGIC;
	op1, op2, op3, op4, op5 : out  STD_LOGIC
);
end COMPONENT;

COMPONENT selection
Port (
	i1, i2, i3 : in  STD_LOGIC;
	selectm, sysclk : in  STD_LOGIC;
   U1_1, U1_2, U1_3 : out STD_LOGIC;
	U2_1, U2_2, U2_3 : out  STD_LOGIC;
	U3_1, U3_2, U3_3 : out  STD_LOGIC;
	U1_active, U2_active, U3_active : out std_logic;
	ostate : out STD_LOGIC_Vector(2 downto 0)
);
end component;

COMPONENT alarm_clock
port (
		sysclk, reset, en 			: in std_logic;
		mode_t, incr_t, decr_t : in std_logic;
		mode_d, incr_d, decr_d : in std_logic;
		mode_a, incr_a, decr_a : in std_logic;
		end_edit_a, end_edit_d, end_edit_t : in std_logic;
		stop : in std_logic;
		sel 								: in std_logic_vector(2 downto 0);
		count_t, count_d, count_a 	: out std_logic_vector(23 downto 0);
		state_t, state_d, state_a 	: out std_logic_vector( 3 downto 0);
		led_on, led_alarm				: out std_logic
	);
end COMPONENT;

COMPONENT select_show_function
Port ( 
	sysclk, reset					: in  STD_LOGIC;
	idig1, idig2, idig3 			: in  STD_LOGIC_VECTOR (23 downto 0); -- volledige tijd
	istate1, istate2, istate3 	: in  STD_LOGIC_VECTOR (3 downto 0); -- "0000" = counter, "0100" = uur aanpassen, "0010" = min aanpassen, "0001" = sec aanpassen
	sel 								: in  STD_LOGIC_VECTOR (2 downto 0); -- "100" = clock, "010" = date, "100" = wekker
	odig 								: out  STD_LOGIC_VECTOR (23 downto 0);
	ostate 							: out  STD_LOGIC_VECTOR (3 downto 0)
);
end COMPONENT;

COMPONENT data_to_display
port(
  idig : in  STD_LOGIC_VECTOR (23 downto 0);
  istate : in  STD_LOGIC_VECTOR (3 downto 0);
  number1 : out  STD_LOGIC_VECTOR (3 downto 0);
  number2 : out  STD_LOGIC_VECTOR (3 downto 0);
  number3 : out  STD_LOGIC_VECTOR (3 downto 0);
  number4 : out  STD_LOGIC_VECTOR (3 downto 0);
  sysclk : in std_logic;
  bliclk : in std_logic;
  obli0 : out  STD_LOGIC_Vector (3 downto 0)
);
end COMPONENT;

COMPONENT weergave4dig7segm
Port ( 
	sysclk, reset,en 	 : in  STD_LOGIC;
	blank : in std_logic_vector(3 downto 0);
	dig3,dig2,dig1,dig0 : in  STD_LOGIC_VECTOR (3 downto 0);
	cath 					 : out  STD_LOGIC_VECTOR (6 downto 0);
	an 						 : out  STD_LOGIC_VECTOR (3 downto 0)
			  --Led : out STD_LOGIC
);
end component;

signal pulse_1ms : std_logic := '0';
signal pulse_10ms : std_logic := '0';
signal pulse_100ms: std_logic := '0';
signal pulse_1s: std_logic := '0';
signal sel : std_logic_vector(2 downto 0) := "100";

signal op_l, op_r, op_u, op_d, op_c: std_logic := '0';
signal odig, odig0, odig1, odig2, odig3: std_logic_vector(23 downto 0);
signal ostate, ostate0, ostate1, ostate2, ostate3: std_logic_vector(3 downto 0);
signal number1, number2, number3, number4 : std_logic_vector(3 downto 0);
signal blinking: std_logic_vector(3 downto 0);
signal mode_t, mode_d, mode_a : std_logic := '0';
signal incr_t, incr_d, incr_a : std_logic := '0';
signal decr_t, decr_d, decr_a : std_logic := '0';
signal edit_t, edit_d, edit_a : std_logic := '0';
signal init_reset : std_logic := '0';

begin
 
 INIT_RESET_P: process (sysclk)
begin
	if rising_edge(sysclk) then 
	 if init = '0' then
	 reset <= '1';
	 init <= '1';
	 else reset <= '0';
	 end if;
	end if;
end process;

T1 : timer PORT MAP( 
	sysclk => sysclk,	reset => reset,
	init_reset => init_reset,
	pulse_1ms => pulse_1ms, pulse_10ms => pulse_10ms, pulse_100ms => pulse_100ms, pulse_1s => pulse_1s
);

BUTTONS1: buttons PORT MAP(
	btn1 => btn_l, btn2 => btn_r ,btn3 => btn_c  ,btn4 => btn_u, btn5 => btn_d,
	sysclk => sysclk, debclk => pulse_10ms,
	op1 => op_l,op2 => op_r,op3 => op_c,op4 => op_u,op5 => op_d
);

S: selection PORT MAP(
	i1 => op_r, i2 => op_u, i3 => op_d,
	selectm => op_l, sysclk => sysclk,
   U1_1 => mode_t, U1_2 => incr_t, U1_3 => decr_t,
	U2_1 => mode_d, U2_2 => incr_d, U2_3 => decr_d,
	U3_1 => mode_a, U3_2 => incr_a, U3_3 => decr_a,
	U1_active => edit_t, U2_active => edit_d, U3_active => edit_a,
	oState => sel
);

ALARMCLOCK: alarm_clock PORT MAP(
	sysclk => sysclk, reset => reset, en => pulse_1s,
	mode_t => mode_t, mode_a => mode_a, mode_d => mode_d, 
	incr_t => incr_t, incr_d => incr_d, incr_a => incr_a,
	decr_t => decr_t, decr_d => decr_d, decr_a => decr_a,	
	sel => sel, stop => op_c,
	end_edit_t => edit_t, end_edit_d => edit_d, end_edit_a => edit_a,
	count_t => odig1, count_d => odig2, count_a => odig3, 	
	state_t => ostate1, state_d => ostate2, state_a => ostate3,	
	led_on => led_alarm_on, led_alarm => led_alarm_buzzing			
);

SELSHOWFUNC: select_show_function PORT MAP(
	sysclk => sysclk, reset => reset,sel => sel,
	idig1 => odig1, idig2 => odig2, idig3 => odig3,
	istate1 => ostate1, istate2 => ostate2, istate3 => ostate3,
	odig => odig, ostate => ostate
);

DATATODISPLAY: data_to_display PORT MAP(
	idig => odig, istate => ostate,
	number1 => number1, number2 => number2, number3 => number3, number4 => number4,
	sysclk => sysclk, bliclk => pulse_100ms, obli0 => blinking
);

W1 : weergave4dig7segm PORT MAP (
	sysclk => sysclk, reset => reset, en => pulse_1ms,	blank => blinking,
	dig3 => number4, dig2 => number3, dig1 => number2,	dig0 => number1,
	an => an, cath => cath
);

sel_out <= sel;


end Behavioral;

