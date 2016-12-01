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

entity alarm_clock is

	port (
		sysclk, reset, en : in std_logic;
		mode, incr, decr, stop : in std_logic;
		sel : in std_logic_vector(2 downto 0);
		count_t, count_d, count_a : out std_logic_vector(23 downto 0);
		state_t, state_d, state_a : out std_logic_vector( 3 downto 0)
	);

end alarm_clock;

architecture Behavioral of alarm_clock is

component time_block
	port(
		sysclk, reset, cnten : in std_logic;
		mode, incr, decr : in std_logic;
		endEdit: in std_logic;
		time_cnt: out std_logic_vector(23 downto 0);
		tc: out std_logic;
		Ostate: out std_logic_vector
	);
end component;

component date_block
	Port ( 	 
		sysclk,reset 	: in  STD_LOGIC;
		cnten	 			: in  STD_LOGIC;
		mode		: in  STD_LOGIC;									-- OPGELET : voor deze ingangen mag de ingang slechts gedurende 1 klokperiode 1 zijn.
		incr, decr	: in  STD_LOGIC;
		ostate			: out  STD_LOGIC_VECTOR (3 downto 0);
		date_cnt 		: out  STD_LOGIC_VECTOR (23 downto 0)
	);
end component;

component wekker_block
	Port ( 
		sysclk, reset	: in STD_LOGIC;
		mode, incr, decr, btnStop : in  STD_LOGIC;
		counterInput : in  STD_LOGIC_VECTOR (23 downto 0);
		ledWekSignaal : out  STD_LOGIC;
		ledOn : out STD_LOGIC;
		wstate : out STD_LOGIC_VECTOR (3 downto 0);
		alarmOutput : out STD_LOGIC_VECTOR (23 downto 0)
	);	
end component;

signal mode_t, mode_d, mode_a : std_logic := '0';
signal incr_t, incr_d, incr_a : std_logic := '0';
signal decr_t, decr_d, decr_a : std_logic := '0';
signal tc_t: std_logic := '0';
signal endEditT, endEditD, endEditA : std_logic := '0';

signal time_counter : std_logic_vector (23 downto 0);

begin

BTNEVENT : process(sysclk, mode, incr, decr, stop, sel)
begin
	case sel is
		when "100" =>
			if mode = '1' then mode_t <= '1'; else mode_t <= '0'; end if;
			if incr = '1' then incr_t <= '1'; else incr_t <= '0'; end if;
			if decr = '1' then decr_t <= '1'; else decr_t <= '0'; end if;
			mode_d <= '0'; mode_a <= '0'; incr_d <= '0'; incr_a <= '0'; decr_d<= '0'; decr_a <= '0';
			endEditT <= '0'; endEditD <= '1'; endEditA <= '1';
		when "010" =>
			if mode = '1' then mode_d <= '1'; else mode_d <= '0'; end if;
			if incr = '1' then incr_d <= '1'; else incr_d <= '0'; end if;
			if decr = '1' then decr_d <= '1'; else decr_d <= '0'; end if;
			mode_t <= '0'; mode_a <= '0'; incr_t <= '0'; incr_a <= '0'; decr_t <= '0'; decr_a <= '0';
			endEditT <= '1'; endEditD <= '0'; endEditA <= '1';
		when "001" =>
			if mode = '1' then mode_d <= '1'; else mode_a <= '0'; end if;
			if incr = '1' then incr_d <= '1'; else incr_a <= '0'; end if;
			if decr = '1' then decr_d <= '1'; else decr_a <= '0'; end if;
			mode_t <= '0'; mode_d <= '0'; incr_t <= '0'; incr_d <= '0'; decr_t <= '0'; decr_d <= '0';
			endEditT <= '1'; endEditD <= '1'; endEditA <= '0';
		when others =>
			--sel <= "100";
			--mode_t <= '0';
	end case;
end process;

SETCNT : process(sysclk, time_counter)
begin
	if sysclk = '1' then
		
		count_t <= time_counter;
		
	end if;

end process;



T1: time_block PORT MAP(
	sysclk => sysclk, reset => reset, cnten => en,
	mode => mode_t, incr => incr_t, decr => decr_t,
	tc => tc_t, endEdit => endEditT,
	time_cnt => time_counter, Ostate => state_t
);

D1: date_block PORT MAP(
	sysclk => sysclk,reset => reset, cnten => tc_t,
	mode => mode_d, incr => incr_d, decr => decr_d,
	endEdit => endEditD,
	date_cnt => count_d, Ostate => state_d
);

A1: wekker_block PORT MAP(
	sysclk => sysclk, reset => reset, btnStop => stop,
	mode => mode_a, incr => incr_a, decr => decr_a,
	endEdit => endEditA,
	--wekker_cnt => count_a, 
	alarmOutput => count_a,
	counterInput => time_counter, wstate => state_a
);

end Behavioral;

