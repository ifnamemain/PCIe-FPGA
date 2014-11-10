-- Copyright 2014 NIST
-- Original Author: Shane Allman (shane.allman@nist.gov)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity testing_top is
	port (clk : in std_logic;
			pulse : in std_logic;
			control : in std_logic;
			cnt : out unsigned(3 downto 0) := (others => '0');
			pulseFOut : out std_logic;
			clearOut : out std_logic;
			idleCnt : out unsigned(3 downto 0) := (others => '0');
			captureCnt : out unsigned(3 downto 0) := (others => '0');
			latchCnt : out unsigned(3 downto 0) := (others => '0');
			clrCnt : out unsigned(3 downto 0) := (others => '0')
		) ;
end entity ; -- testing_top

architecture arch of testing_top is

signal clear, enable, pulseFlag : std_logic := '0';

begin

pulseFOut <= pulseFlag;
clearOut <= clear;
--Setup flacters for the pulse lines
flancterGen : entity work.Flancter
		port map(
			sysclk => clk,
			pulse => pulse,
			clr => clear,
			enable => control,
			flag => pulseFlag
		);

--State machine to catch pulses
PulseCatcher : process(clk)
type State_t is (IDLE, CAPTURE, LATCH, CLR);
variable state : State_t := IDLE; 
variable idlecount, capturecount, latchcount, clrcount, count : unsigned(3 downto 0) := (others => '0');

begin
idleCnt <= idlecount;
captureCnt <= capturecount;
latchCnt <= latchcount;
clrCnt <= clrcount;
cnt <= count;
	if rising_edge(clk) then
		case( state ) is
			when IDLE =>
			   idlecount := idlecount + 1;
				clear <= '0';
				if control = '1' then
					state := CAPTURE;
				end if;
					
			when CAPTURE => 
				capturecount := capturecount + 1;
				--wait for pulseFlag to go high.
				if pulseFlag = '1' then
					state := LATCH;
				end if;

			when LATCH =>
				latchcount := latchcount + 1;
				count := count + 1;
				state := CLR;
				
			when CLR =>
				clrcount := clrcount + 1;
				clear <= '1';
				state := IDLE;

			when others =>
				null;
		
		end case ;
		
	end if ;
end process ; -- PulseCatcher
end architecture ; -- arch

