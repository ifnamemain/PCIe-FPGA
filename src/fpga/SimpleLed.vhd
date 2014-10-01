-- Copyright 2014 Shane's Crappy VHDL Coding.llc
-- Original Author: Shane Allman (michael.allman@colorado.edu)
-- Counts with each clock cycle and sets state of LED's to counts.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

library streaming_sgdma;
use streaming_sgdma.streaming_sgdma;

entity SimpleLed_top is
	port (
		clk : in std_logic; -- ???MHz clock
		leds : out std_logic_vector(3 downto 0); --leds for status	
	) ;

end entity ; -- SimpleLed_top

architecture arch of SimpleLed_top is

begin

    ledCounter: process(clk)
    variable counter: unsigned(3 downto 0) := (others => '0');
    begin
        if (clk = '1') then
            counter := counter + 1;
        end if;
        leds <= counter;
    end process ledCounter;

end arch;
