-- Copyright 2014 Shane's Crappy VHDL Coding.llc
-- Original Author: Shane Allman (michael.allman@colorado.edu)
-- Counts with each clock cycle and sets state of LED's to counts.
-- This version attempts to use a better clockdivider

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

entity SimpleLED is
	port (
		clkSelect: in std_logic;  -- push button to select reducedClk speed USER_PB1
		clk : in std_logic; -- ???MHz clock
		leds : out std_logic_vector(3 downto 0) --leds for status	
	);

end entity ; -- SimpleLed_top

architecture arch of SimpleLED is

signal q: unsigned(31 downto 0) := (others => '0');
signal reducedClk : std_logic := '0';
    
begin
    clkDiv  : process(clkSelect,clk,q) --The nth bit of q should flip at the rate clk/(2^(n+1))
    variable counter: unsigned(1 downto 0) := (others => '0');
	 begin
        if (rising_edge(clk)) then 
            q <= q + 1;
        end if;
		  if (rising_edge(clkSelect)) then
		      counter := counter + 1;
		  end if;
	 reducedClk <= q(25 - to_integer(counter)); 
    end process clkDiv;

    ledCounter: process(reducedClk)
	 variable counter : unsigned(3 downto 0) := (others => '0');
    begin
        if (rising_edge(reducedClk)) then    
            counter := counter + 1;
        end if;
        leds <= not std_logic_vector(counter);
    end process ledCounter;

end arch;
