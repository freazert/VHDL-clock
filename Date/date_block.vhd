----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:14:58 11/03/2016 
-- Design Name: 
-- Module Name:    time - Behavioral 
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

entity date_block is
    Port ( 	sysclk,reset 	: in  STD_LOGIC;
				cnten	 			: in  STD_LOGIC;
				mode		: in  STD_LOGIC;									-- OPGELET : voor deze ingangen mag de ingang slechts gedurende 1 klokperiode 1 zijn.
				incr, decr	: in  STD_LOGIC;
				endEdit		: in STD_LOGIC;
				ostate			: out  STD_LOGIC_VECTOR (3 downto 0);
				date_cnt 		: out  STD_LOGIC_VECTOR (23 downto 0));
end date_block;

architecture Behavioral of date_block is

COMPONENT counter
	PORT(
		cnten,reset 			: IN std_logic;
		sysclk 					: IN std_logic;
		min 						: IN std_logic_vector(7 downto 0);
		max 						: IN std_logic_vector(7 downto 0); 
		upDwn						: IN std_logic;
		count 					: OUT std_logic_vector(7 downto 0);
		tc 						: OUT std_logic);
	END COMPONENT;
	
COMPONENT max_day_setter
	PORT(
		MYinput : in  STD_LOGIC_VECTOR (15 downto 0);
      maxDay : out  STD_LOGIC_VECTOR (7 downto 0));
	END COMPONENT;
	
-- declaratie interne verbindingen	
	signal tcT1,tcT2 			: std_logic;
	signal cntenT1,cntenT2	: std_logic;
	signal cntenT3 			: std_logic;
	signal cntenT3_s 			: std_logic;
	signal cntenT3_s2 			: std_logic;

	signal setMaxDay			: STD_LOGIC_VECTOR (7 downto 0);
	signal countT3T2T1		: STD_LOGIC_VECTOR (23 downto 0);
	signal countT1				: STD_LOGIC_VECTOR (7 downto 0);
	signal countT2 			: STD_LOGIC_VECTOR (7 downto 0);
	signal countT3 			: STD_LOGIC_VECTOR (7 downto 0);
	signal countTrigger		: STD_LOGIC := '0';
	signal upDwn				: std_logic := '1';
	signal btn					: std_logic := '0';
	signal Udaycheck 			: 	integer range 0 to 9;
	signal Tdaycheck 			: 	integer range 0 to 9;
	signal Uday 				: 	integer range 0 to 9;
	signal Tday 				: 	integer range 0 to 9;
	--signal Umonth 				: 	integer range 0 to 9;
	--signal Tmonth 				: 	integer range 0 to 9;
	--signal Uyear 				: 	integer range 0 to 9;
	--signal Tyear 				: 	integer range 0 to 9;
	signal dayforward 		: std_logic := '0';
----------------------------------------------------------------
-- TOESTANDSMACHINE VOOR DE BEDIENING
-- declaratie toestanden
	type state is (cnt,setT1,setT2,setT3);
	signal present_state, next_state : state;

begin
	
	STATE_REG: process (sysclk)
	begin
		if rising_edge(sysclk) then 								
			if reset = '1' then present_state <= cnt; else present_state <= next_state; end if;
		end if;
	end process;
	
	DATE_COUNT_PROCESS: process (countT1, countT2, countT3, countTrigger)
	begin
		countT3T2T1 (7 downto 0) <= countT1;
		countT3T2T1 (15 downto 8) <= countT2;
		countT3T2T1 (23 downto 16) <= countT3;
	end process;
	
	DATE_COUNT_PROCESS2: process (countT3T2T1)
	begin
		date_cnt (23 downto 0) <= countT3T2T1;
	end process;

	NXT_STATE: process (present_state, mode, endEdit)		
	begin
	if endEdit = '1' then next_state <= cnt; 
	else
		case present_state is
			when cnt   =>	if mode = '1' then 	next_state <= setT1;	else next_state <= cnt;		end if;
			when setT3 =>	if mode = '1' then 	next_state <= cnt;	else next_state <= setT3;	end if;
			when setT2 =>	if mode = '1' then 	next_state <= setT3;	else next_state <= setT2;	end if;	
			when setT1 =>	if mode = '1' then 	next_state <= setT2;	else next_state <= setT1;	end if;			
		end case;
	end if;
	end process;
	-- het OUTPUTS process zal, afhankelijk van de "present-state", de verbindingen met de correcte (teller)poorten leggen
	OUTPUTS : process (present_state,btn, incr, decr) 		
	begin
	if incr = '1' 
		then upDwn <= '1'; btn <= '1'; 
	elsif decr = '1' 
		then upDwn <= '0'; btn <= '1'; 
	else 
		upDwn <= '1'; btn <= '0'; 
	end if;
	case present_state is
			when cnt  	=> cntenT1 <= tcT2;	cntenT2 <= tcT1;	cntenT3_s <= cnten; ostate <= "1000";
			when setT3  =>	cntenT1 <= '0';	cntenT2 <= '0'; 	cntenT3_s <= btn; ostate <= "0100";
			when setT2  =>	cntenT1 <= '0';	cntenT2 <= btn;	cntenT3_s <= '0'; ostate <= "0010";
			when setT1  =>	cntenT1 <= btn;	cntenT2 <= '0'; 	cntenT3_s <= '0'; ostate <= "0001";
		end case;
	end process;

   CHECKIFDAYISIMPOSSIBLE : process (setMaxDay, sysclk)
	begin
									
		Udaycheck <= to_integer(unsigned(setMaxDay(3 downto 0))) ;	
		Tdaycheck <= to_integer(unsigned(setMaxDay(7 downto 4))) ;
		Uday <= to_integer(unsigned(countT3(3 downto 0))) ;	
		Tday <= to_integer(unsigned(countT3(7 downto 4))) ;
	
		dayforward <= not dayforward;
	
	
	end process;
	
	SETDAYFORWARD : process (dayforward)
	begin
	if (Tday > Tdaycheck or (Tday = Tdaycheck and Uday > Udaycheck))
	then cntenT3_s2 <= '1';
	else cntenT3_s2 <= '0';
	end if;
	end process;
	
	
	SETCNTENBACKTONORMAL : process (countT3)
	begin
	--if countT3 = "00000001" and cntenT3_s2 = '1'
	--then cntenT3_s2 <= '0';
	--end if;
	end process;
	
	cntenT3 <= '1' when cntenT3_s2 = '1' else cntenT3_S;
	
	
	
	T1: counter PORT MAP(
		cnten => cntenT1, reset => reset,sysclk => sysclk,
		min => x"16",max => x"99",count => countT1, upDwn => upDwn 
	);
	T2: counter PORT MAP(
		cnten => cntenT2, reset => reset,sysclk => sysclk,
		min => x"01",max => x"12",count => countT2, tc => tcT2, upDwn => upDwn 
	);
	T3: counter PORT MAP(
		cnten => cntenT3, reset => reset,sysclk => sysclk,
		min => x"01",max => setMaxDay,count => countT3,tc => tcT1 , upDwn => upDwn );
	SD: max_day_setter PORT MAP (
		MYinput => countT3T2T1 (15 downto 0), maxDay => setMaxDay
	);
	

end Behavioral;

