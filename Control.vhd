	----------------------------------------------------------------------------------
	-- Company: 
	-- Engineer: 
	-- Create Date:	13:24:42 01/21/2013 
	-- Module Name:	control - Behavioral  
	-- Description: 	
	----					deze module stuurt de multiplexing van het 4 cijfer display aan.
	---- 					kathodes zijn 0 actief, (gemeenschappelijke) anodes zijn 0 actief
	----					dig0 rechts, dig3 links		
	----					bits 3>0 	: bcd-code voor weer te geven waarde
	----------------------------------------------------------------------------------
	LIBRARY IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
--	use IEEE.NUMERIC_STD.ALL;

	ENTITY Control is
		 Port (	sysclk, en		: in   STD_LOGIC;
					dig3,dig2,dig1,dig0 		: in   STD_LOGIC_VECTOR (3 downto 0);
					blank : in std_logic_vector (3 downto 0);
					bcdout 						: out  STD_LOGIC_VECTOR (3 downto 0);
					dignrout 					: out  STD_LOGIC_VECTOR (3 downto 0));
	END Control;

	ARCHITECTURE Behavioral of Control is
		--signal dignr_int : integer range 0 to 3 := 0;
		signal dignr_int : std_logic_vector(1 downto 0);-- := "10" ;
	begin
		DIGNR: process (sysclk,en, dignr_int)
			begin
				if en = '1' then
					if rising_edge(sysclk) then
						case dignr_int is
							when "00" => dignr_int <= "01";
							when "01" => dignr_int <= "10";
							when "10" => dignr_int <= "11";
							when "11" => dignr_int <= "00";
							when others => dignr_int <="11";
						end case;
						--if 	dignr_int = 3 then dignr_int <= 0;
						--else 	dignr_int <= dignr_int + 1; 
						--end if;
					--else null;
					end if;
				end if;
		end process;  
			
		MUX: process (dignr_int,dig3,dig2,dig1,dig0)
			begin
				case dignr_int is
					when "00" => bcdout <= dig0;
					when "01" => bcdout <= dig1;
					when "10" => bcdout <= dig2;
					when "11" => bcdout <= dig3;
					when others => bcdout <= dig0;
				end case;
		end process;	
		
		DIGSELECT: process (dignr_int,blank)
			begin
				
				--if blank(dignr_int to dignr_int) = '1' then dignrout <= "1111";
				--else 
					case dignr_int is
						when "00" => dignrout <= "1110"; if blank(3 downto 3) = "1" then dignrout <= "1111"; end if;
						when "01" => dignrout <= "1101"; if blank(2 downto 2) = "1" then dignrout <= "1111"; end if;
						when "10" => dignrout <= "1011"; if blank(1 downto 1) = "1" then dignrout <= "1111"; end if;
						when "11" => dignrout <= "0111"; if blank(0 downto 0) = "1" then dignrout <= "1111"; end if;
						when others => dignrout <= "1110";
					end case;
				--end if;	
		end process;			
	END Behavioral;