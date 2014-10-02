-- Copyright 2014 Shane's Crappy VHDL Coding.llc
-- Original Author: Shane Allman (michael.allman@colorado.edu)
-- Counts with each clock cycle and sets state of LED's to counts.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

--library streaming_sgdma;
--use streaming_sgdma.streaming_sgdma;

entity SimpleLED is
	port (
		clk : in std_logic; -- ???MHz clock
		leds : out std_logic_vector(3 downto 0) --leds for status	
	);

end entity ; -- SimpleLed_top

architecture arch of SimpleLED is

begin

    ledCounter: process(clk)
    variable counter: unsigned(31 downto 0) := (others => '0');
    variable slowCounter: unsigned(3 downto 0) := (others => '0');
    constant incrementSlowCounter: positive := 100000000; --when counter hits this number, increment slowCounter by 1.  Means 1 second has passed since I'm  using 100MHz clock
    begin
        if (rising_edge(clk)) then
            if (counter = to_unsigned(incrementSlowCounter, 32)) then 
                counter := (others => '0');
            else
                counter := counter + 1;
            end if;
            if (counter = 0) then
                slowCounter := slowCounter + 1;
				end if;
        end if;
        leds <= not std_logic_vector(slowCounter);
    end process ledCounter;

end arch;
