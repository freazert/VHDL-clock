----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:59 11/28/2016 
-- Design Name: 
-- Module Name:    alarm_clock - Behavioral 
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
--------------------------- -------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alarm_clock is

	port (
		sysclk, reset, en 			: in std_logic;
		mode_t, incr_t, decr_t : in std_logic;
		mode_d, incr_d, decr_d : in std_logic;
		mode_a, incr_a, decr_a : in std_logic;
		end_edit_a, end_edit_t, end_edit_d : in std_logic;
		stop 		: in std_logic;
		sel 								: in std_logic_vector(2 downto 0);
		count_t, count_d, count_a 	: out std_logic_vector(23 downto 0);
		state_t, state_d, state_a 	: out std_logic_vector( 3 downto 0);
		led_on, led_alarm				: out std_logic
	);

end alarm_clock;

architecture Behavioral of alarm_clock is

component time_block
	port(
		sysclk, reset, cnten : in std_logic;
		mode, incr, decr 		: in std_logic;
		end_edit_a, end_edit_d, end_edit_t : in std_logic;
		endEdit					: in std_logic;
		time_cnt					: out std_logic_vector(23 downto 0);
		tc							: out std_logic;
		Ostate					: out std_logic_vector
	);
end component;

component date_block
	Port ( 	 
		sysclk,reset 	: in  STD_LOGIC;
		cnten	 			: in  STD_LOGIC;
		mode				: in  STD_LOGIC;									-- OPGELET : voor deze ingangen mag de ingang slechts gedurende 1 klokperiode 1 zijn.
		incr, decr		: in  STD_LOGIC;
		endEdit 			: in std_logic;
		ostate			: out  STD_LOGIC_VECTOR (3 downto 0);
		date_cnt 		: out  STD_LOGIC_VECTOR (23 downto 0)
	);
end component;

component wekker_block
	Port ( 
		sysclk, reset					: in STD_LOGIC;
		mode, incr, decr, btnStop 	: in  STD_LOGIC;
		counterInput 					: in  STD_LOGIC_VECTOR (23 downto 0);
		endEdit 							: in std_logic;
		ledWekSignaal 					: out  STD_LOGIC;
		ledOn 							: out STD_LOGIC;
		wstate 							: out STD_LOGIC_VECTOR (3 downto 0);
		alarmOutput 					: out STD_LOGIC_VECTOR (23 downto 0)
	);	
end component;

--signal mode_t, mode_d, mode_a : std_logic := '0';
--signal incr_t, incr_d, incr_a : std_logic := '0';
--signal decr_t, decr_d, decr_a : std_logic := '0';
signal tc_t: std_logic := '0';
--signal endEditT, endEditD, endEditA : std_logic := '0';
signal alarm_on: std_logic := '0';

signal time_counter : std_logic_vector (23 downto 0);

begin

SETCNT : process(sysclk, time_counter)
begin
	if sysclk = '1' then
		
		count_t <= time_counter;
		
	end if;

end process;

SET_LED_ALARM : process(alarm_on)
begin
	led_on <= alarm_on;
end process;



T1: time_block PORT MAP(
	sysclk => sysclk, reset => reset, cnten => en,
	mode => mode_t, incr => incr_t, decr => decr_t,
	tc => tc_t, endEdit => end_edit_t,
	time_cnt => time_counter, Ostate => state_t
);

D1: date_block PORT MAP(
	sysclk => sysclk,reset => reset, cnten => tc_t,
	mode => mode_d, incr => incr_d, decr => decr_d,
	endEdit => end_edit_d,
	date_cnt => count_d, Ostate => state_d
);

A1: wekker_block PORT MAP(
	sysclk => sysclk, reset => reset, btnStop => stop,
	mode => mode_a, incr => incr_a, decr => decr_a,
	endEdit => end_edit_a,
	alarmOutput => count_a,
	counterInput => time_counter, wstate => state_a,
	ledOn => alarm_on, ledWeksignaal => led_alarm
);

end Behavioral;

