-- Copyright 2014 Shane's Crappy VHDL Coding.llc
-- Original Author: Shane Allman (michael.allman@colorado.edu)
-- Counts with each clock cycle and sets state of LED's to counts.
-- This version attempts to use a better clockdivider

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

entity HSMCCounter is
	port (
		restetn: in std_logic;  -- push button to select reducedClk speed USER_PB1
		clk : in std_logic; -- ???MHz clock
		leds : out std_logic_vector(3 downto 0); --leds for status	
		
		--HSMC Lines for Masking the LEDs
		pulseInputs : in std_logic_vector(3 downto 0)
	);

end entity ; -- HSMCCounter

architecture arch of HSMCCounter is

signal q: unsigned(31 downto 0) := (others => '0');
signal reducedClk : std_logic := '0';
    
begin
    clkDiv  : process(clk,q) --The nth bit of q should flip at the rate clk/(2^(n+1))
    variable counter: unsigned(1 downto 0) := (others => '0');
	 begin
        if (rising_edge(clk)) then 
            q <= q + 1;
        end if;
	 reducedClk <= q(24); --reducedClk is running at the rate clk/2^28
    end process clkDiv;

    ledMask: process(reducedClk,pulseInputs)
	 variable currentState : std_logic_vector(3 downto 0) := (others => '0');
    begin
			if (rising_edge(reducedClk)) then
				currentState := currentState xor pulseInputs; --Make the led state toggle on and off with reducedClk.
			end if;	
			leds <= pulseInputs;
    end process ledMask;
	 
	 

end arch;
