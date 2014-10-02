LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity andgate is
	port(x1,x2,x3 : in std_logic;
			f			: out std_logic;
			);
	end andgate;
	
	Architecture behavior of andgate is
	beging
		f <= x1 AND x2 AND x3;
		end behavior;
			