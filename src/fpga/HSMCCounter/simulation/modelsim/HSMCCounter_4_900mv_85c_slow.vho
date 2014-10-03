-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/03/2014 10:42:03"

-- 
-- Device: Altera EP2AGX125EF35C4 Package FBGA1152
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	HSMCCounter IS
    PORT (
	clkSelect : IN std_logic;
	clk : IN std_logic;
	leds : OUT std_logic_vector(3 DOWNTO 0)
	);
END HSMCCounter;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AJ19,	 I/O Standard: LVDS,	 Current Strength: Default
-- clkSelect	=>  Location: PIN_AL7,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- clk(n)	=>  Location: PIN_AK19,	 I/O Standard: LVDS,	 Current Strength: Default


ARCHITECTURE structure OF HSMCCounter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkSelect : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk(n)~padout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~101_sumout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_sumout\ : std_logic;
SIGNAL \Add0~106\ : std_logic;
SIGNAL \Add0~109_sumout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~113_sumout\ : std_logic;
SIGNAL \Add0~114\ : std_logic;
SIGNAL \Add0~117_sumout\ : std_logic;
SIGNAL \Add0~118\ : std_logic;
SIGNAL \Add0~121_sumout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~combout\ : std_logic;
SIGNAL \clkDiv:counter[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \q[0]~0_combout\ : std_logic;
SIGNAL \clkDiv:counter[1]~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clkSelect~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[17]~feeder_combout\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \Mux0~clkctrl_outclk\ : std_logic;
SIGNAL \ledCounter:counter[0]~0_combout\ : std_logic;
SIGNAL \ledCounter:counter[0]~q\ : std_logic;
SIGNAL \ledCounter:counter[1]~0DUPLICATE_combout\ : std_logic;
SIGNAL \ledCounter:counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ledCounter:counter[2]~0_combout\ : std_logic;
SIGNAL \ledCounter:counter[2]~q\ : std_logic;
SIGNAL \ledCounter:counter[1]~0_combout\ : std_logic;
SIGNAL \ledCounter:counter[1]~q\ : std_logic;
SIGNAL \ledCounter:counter[3]~0_combout\ : std_logic;
SIGNAL \ledCounter:counter[3]~q\ : std_logic;
SIGNAL q : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_ledCounter:counter[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clkSelect~input_o\ : std_logic;
SIGNAL \ALT_INV_clkDiv:counter[1]~combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_clkDiv:counter[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_q : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_ledCounter:counter[3]~q\ : std_logic;
SIGNAL \ALT_INV_ledCounter:counter[2]~q\ : std_logic;
SIGNAL \ALT_INV_ledCounter:counter[1]~q\ : std_logic;
SIGNAL \ALT_INV_ledCounter:counter[0]~q\ : std_logic;
SIGNAL \ALT_INV_Add0~65_sumout\ : std_logic;

BEGIN

ww_clkSelect <= clkSelect;
ww_clk <= clk;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ledCounter:counter[1]~DUPLICATE_q\ <= NOT \ledCounter:counter[1]~DUPLICATE_q\;
\ALT_INV_clkSelect~input_o\ <= NOT \clkSelect~input_o\;
\ALT_INV_clkDiv:counter[1]~combout\ <= NOT \clkDiv:counter[1]~combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_clkDiv:counter[0]~0_combout\ <= NOT \clkDiv:counter[0]~0_combout\;
ALT_INV_q(0) <= NOT q(0);
ALT_INV_q(1) <= NOT q(1);
ALT_INV_q(2) <= NOT q(2);
ALT_INV_q(3) <= NOT q(3);
ALT_INV_q(4) <= NOT q(4);
ALT_INV_q(5) <= NOT q(5);
ALT_INV_q(6) <= NOT q(6);
ALT_INV_q(7) <= NOT q(7);
ALT_INV_q(8) <= NOT q(8);
ALT_INV_q(9) <= NOT q(9);
ALT_INV_q(10) <= NOT q(10);
ALT_INV_q(11) <= NOT q(11);
ALT_INV_q(12) <= NOT q(12);
ALT_INV_q(13) <= NOT q(13);
ALT_INV_q(14) <= NOT q(14);
ALT_INV_q(15) <= NOT q(15);
\ALT_INV_Mux0~13_combout\ <= NOT \Mux0~13_combout\;
\ALT_INV_Mux0~12_combout\ <= NOT \Mux0~12_combout\;
\ALT_INV_Mux0~11_combout\ <= NOT \Mux0~11_combout\;
ALT_INV_q(26) <= NOT q(26);
ALT_INV_q(27) <= NOT q(27);
\ALT_INV_Mux0~10_combout\ <= NOT \Mux0~10_combout\;
ALT_INV_q(24) <= NOT q(24);
ALT_INV_q(25) <= NOT q(25);
\ALT_INV_Mux0~9_combout\ <= NOT \Mux0~9_combout\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
ALT_INV_q(30) <= NOT q(30);
ALT_INV_q(31) <= NOT q(31);
\ALT_INV_Mux0~7_combout\ <= NOT \Mux0~7_combout\;
ALT_INV_q(28) <= NOT q(28);
ALT_INV_q(29) <= NOT q(29);
\ALT_INV_Mux0~6_combout\ <= NOT \Mux0~6_combout\;
\ALT_INV_Mux0~5_combout\ <= NOT \Mux0~5_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
ALT_INV_q(18) <= NOT q(18);
ALT_INV_q(19) <= NOT q(19);
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
ALT_INV_q(16) <= NOT q(16);
ALT_INV_q(17) <= NOT q(17);
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
ALT_INV_q(22) <= NOT q(22);
ALT_INV_q(23) <= NOT q(23);
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
ALT_INV_q(20) <= NOT q(20);
ALT_INV_q(21) <= NOT q(21);
\ALT_INV_ledCounter:counter[3]~q\ <= NOT \ledCounter:counter[3]~q\;
\ALT_INV_ledCounter:counter[2]~q\ <= NOT \ledCounter:counter[2]~q\;
\ALT_INV_ledCounter:counter[1]~q\ <= NOT \ledCounter:counter[1]~q\;
\ALT_INV_ledCounter:counter[0]~q\ <= NOT \ledCounter:counter[0]~q\;
\ALT_INV_Add0~65_sumout\ <= NOT \Add0~65_sumout\;

-- Location: MLABCELL_X47_Y3_N0
\Add0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( q(1) ) + ( q(0) ) + ( !VCC ))
-- \Add0~2\ = CARRY(( q(1) ) + ( q(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(1),
	dataf => ALT_INV_q(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X47_Y3_N2
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( q(2) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( q(2) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(2),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X47_Y3_N4
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( GND ) + ( q(3) ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( GND ) + ( q(3) ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(3),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X47_Y3_N6
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( q(4) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( q(4) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(4),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: MLABCELL_X47_Y3_N8
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( q(5) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( q(5) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(5),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X47_Y3_N10
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( q(6) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( q(6) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(6),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: MLABCELL_X47_Y3_N12
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( q(7) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( q(7) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(7),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: MLABCELL_X47_Y3_N14
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( q(8) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( q(8) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(8),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X47_Y3_N16
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( q(9) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( q(9) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(9),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X47_Y3_N18
\Add0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( q(10) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( q(10) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(10),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X47_Y3_N20
\Add0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( q(11) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( q(11) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(11),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: MLABCELL_X47_Y3_N22
\Add0~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( q(12) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( q(12) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(12),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: MLABCELL_X47_Y3_N24
\Add0~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( q(13) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( q(13) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(13),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: MLABCELL_X47_Y3_N26
\Add0~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( q(14) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( q(14) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(14),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: MLABCELL_X47_Y3_N28
\Add0~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( q(15) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( q(15) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(15),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: MLABCELL_X47_Y3_N30
\Add0~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( GND ) + ( q(16) ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( GND ) + ( q(16) ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(16),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: MLABCELL_X47_Y3_N32
\Add0~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( GND ) + ( q(17) ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( GND ) + ( q(17) ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(17),
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: MLABCELL_X47_Y3_N34
\Add0~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( GND ) + ( q(18) ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( GND ) + ( q(18) ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(18),
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: MLABCELL_X47_Y3_N36
\Add0~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( GND ) + ( q(19) ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( GND ) + ( q(19) ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(19),
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: MLABCELL_X47_Y3_N38
\Add0~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( GND ) + ( q(20) ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( GND ) + ( q(20) ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(20),
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: MLABCELL_X47_Y2_N0
\Add0~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( GND ) + ( q(21) ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( GND ) + ( q(21) ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(21),
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: MLABCELL_X47_Y2_N2
\Add0~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( GND ) + ( q(22) ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( GND ) + ( q(22) ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(22),
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: MLABCELL_X47_Y2_N4
\Add0~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( GND ) + ( q(23) ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( GND ) + ( q(23) ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(23),
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: MLABCELL_X47_Y2_N6
\Add0~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( GND ) + ( q(24) ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( GND ) + ( q(24) ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(24),
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: MLABCELL_X47_Y2_N8
\Add0~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( GND ) + ( q(25) ) + ( \Add0~94\ ))
-- \Add0~98\ = CARRY(( GND ) + ( q(25) ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(25),
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\,
	cout => \Add0~98\);

-- Location: MLABCELL_X47_Y2_N10
\Add0~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~101_sumout\ = SUM(( GND ) + ( q(26) ) + ( \Add0~98\ ))
-- \Add0~102\ = CARRY(( GND ) + ( q(26) ) + ( \Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(26),
	cin => \Add0~98\,
	sumout => \Add0~101_sumout\,
	cout => \Add0~102\);

-- Location: MLABCELL_X47_Y2_N12
\Add0~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~105_sumout\ = SUM(( GND ) + ( q(27) ) + ( \Add0~102\ ))
-- \Add0~106\ = CARRY(( GND ) + ( q(27) ) + ( \Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(27),
	cin => \Add0~102\,
	sumout => \Add0~105_sumout\,
	cout => \Add0~106\);

-- Location: MLABCELL_X47_Y2_N14
\Add0~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~109_sumout\ = SUM(( q(28) ) + ( GND ) + ( \Add0~106\ ))
-- \Add0~110\ = CARRY(( q(28) ) + ( GND ) + ( \Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(28),
	cin => \Add0~106\,
	sumout => \Add0~109_sumout\,
	cout => \Add0~110\);

-- Location: MLABCELL_X47_Y2_N16
\Add0~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~113_sumout\ = SUM(( GND ) + ( q(29) ) + ( \Add0~110\ ))
-- \Add0~114\ = CARRY(( GND ) + ( q(29) ) + ( \Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(29),
	cin => \Add0~110\,
	sumout => \Add0~113_sumout\,
	cout => \Add0~114\);

-- Location: MLABCELL_X47_Y2_N18
\Add0~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~117_sumout\ = SUM(( GND ) + ( q(30) ) + ( \Add0~114\ ))
-- \Add0~118\ = CARRY(( GND ) + ( q(30) ) + ( \Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(30),
	cin => \Add0~114\,
	sumout => \Add0~117_sumout\,
	cout => \Add0~118\);

-- Location: MLABCELL_X47_Y2_N20
\Add0~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~121_sumout\ = SUM(( q(31) ) + ( GND ) + ( \Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(31),
	cin => \Add0~118\,
	sumout => \Add0~121_sumout\);

-- Location: FF_X47_Y2_N23
\q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~81_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(21));

-- Location: FF_X47_Y3_N37
\q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~77_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(20));

-- Location: MLABCELL_X47_Y2_N22
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \clkDiv:counter[0]~0_combout\ & ( q(20) ) ) # ( !\clkDiv:counter[0]~0_combout\ & ( q(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_q(20),
	datad => ALT_INV_q(21),
	dataf => \ALT_INV_clkDiv:counter[0]~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X47_Y2_N11
\q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~89_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(23));

-- Location: FF_X47_Y2_N35
\q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~85_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(22));

-- Location: MLABCELL_X47_Y2_N34
\Mux0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( q(23) & ( (!\clkDiv:counter[0]~0_combout\) # (q(22)) ) ) # ( !q(23) & ( (\clkDiv:counter[0]~0_combout\ & q(22)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clkDiv:counter[0]~0_combout\,
	datad => ALT_INV_q(22),
	dataf => ALT_INV_q(23),
	combout => \Mux0~1_combout\);

-- Location: MLABCELL_X47_Y2_N38
\Mux0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \clkDiv:counter[1]~combout\ & ( !\Mux0~1_combout\ ) ) # ( !\clkDiv:counter[1]~combout\ & ( !\Mux0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_clkDiv:counter[1]~combout\,
	combout => \Mux0~2_combout\);

-- Location: FF_X48_Y3_N37
\q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \q[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(17));

-- Location: FF_X47_Y3_N35
\q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~61_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(16));

-- Location: LABCELL_X48_Y3_N22
\Mux0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = ( q(17) & ( \clkDiv:counter[0]~0_combout\ & ( q(16) ) ) ) # ( !q(17) & ( \clkDiv:counter[0]~0_combout\ & ( q(16) ) ) ) # ( q(17) & ( !\clkDiv:counter[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_q(16),
	datae => ALT_INV_q(17),
	dataf => \ALT_INV_clkDiv:counter[0]~0_combout\,
	combout => \Mux0~3_combout\);

-- Location: FF_X47_Y3_N31
\q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~73_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(19));

-- Location: FF_X47_Y3_N39
\q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~69_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(18));

-- Location: LABCELL_X48_Y3_N0
\Mux0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = ( \clkDiv:counter[0]~0_combout\ & ( q(19) & ( q(18) ) ) ) # ( !\clkDiv:counter[0]~0_combout\ & ( q(19) ) ) # ( \clkDiv:counter[0]~0_combout\ & ( !q(19) & ( q(18) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_q(18),
	datae => \ALT_INV_clkDiv:counter[0]~0_combout\,
	dataf => ALT_INV_q(19),
	combout => \Mux0~4_combout\);

-- Location: LABCELL_X48_Y2_N36
\Mux0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = ( !\Mux0~4_combout\ & ( \clkDiv:counter[1]~combout\ ) ) # ( \Mux0~4_combout\ & ( !\clkDiv:counter[1]~combout\ & ( !\Mux0~3_combout\ ) ) ) # ( !\Mux0~4_combout\ & ( !\clkDiv:counter[1]~combout\ & ( !\Mux0~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~3_combout\,
	datae => \ALT_INV_Mux0~4_combout\,
	dataf => \ALT_INV_clkDiv:counter[1]~combout\,
	combout => \Mux0~5_combout\);

-- Location: LABCELL_X48_Y2_N28
\Mux0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = ( \Mux0~2_combout\ & ( \Mux0~5_combout\ ) ) # ( !\Mux0~2_combout\ & ( \Mux0~5_combout\ & ( !\clkDiv:counter[1]~combout\ ) ) ) # ( \Mux0~2_combout\ & ( !\Mux0~5_combout\ & ( \clkDiv:counter[1]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clkDiv:counter[1]~combout\,
	datae => \ALT_INV_Mux0~2_combout\,
	dataf => \ALT_INV_Mux0~5_combout\,
	combout => \Mux0~6_combout\);

-- Location: FF_X47_Y2_N29
\q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~113_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(29));

-- Location: FF_X47_Y2_N33
\q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~109_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(28));

-- Location: MLABCELL_X47_Y2_N32
\Mux0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = ( q(29) & ( (!\clkDiv:counter[0]~0_combout\) # (q(28)) ) ) # ( !q(29) & ( (\clkDiv:counter[0]~0_combout\ & q(28)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clkDiv:counter[0]~0_combout\,
	datad => ALT_INV_q(28),
	dataf => ALT_INV_q(29),
	combout => \Mux0~7_combout\);

-- Location: FF_X47_Y2_N27
\q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~121_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(31));

-- Location: FF_X47_Y2_N31
\q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~117_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(30));

-- Location: MLABCELL_X47_Y2_N26
\Mux0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = ( q(30) & ( (q(31)) # (\clkDiv:counter[0]~0_combout\) ) ) # ( !q(30) & ( (!\clkDiv:counter[0]~0_combout\ & q(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clkDiv:counter[0]~0_combout\,
	datad => ALT_INV_q(31),
	dataf => ALT_INV_q(30),
	combout => \Mux0~8_combout\);

-- Location: MLABCELL_X47_Y2_N28
\Mux0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = ( \Mux0~8_combout\ & ( (!\clkDiv:counter[1]~combout\ & !\Mux0~7_combout\) ) ) # ( !\Mux0~8_combout\ & ( (!\Mux0~7_combout\) # (\clkDiv:counter[1]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clkDiv:counter[1]~combout\,
	datac => \ALT_INV_Mux0~7_combout\,
	dataf => \ALT_INV_Mux0~8_combout\,
	combout => \Mux0~9_combout\);

-- Location: FF_X47_Y2_N37
\q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~97_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(25));

-- Location: FF_X47_Y2_N39
\q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~93_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(24));

-- Location: MLABCELL_X47_Y2_N36
\Mux0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = ( \clkDiv:counter[0]~0_combout\ & ( q(24) ) ) # ( !\clkDiv:counter[0]~0_combout\ & ( q(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_q(24),
	datad => ALT_INV_q(25),
	dataf => \ALT_INV_clkDiv:counter[0]~0_combout\,
	combout => \Mux0~10_combout\);

-- Location: FF_X47_Y2_N25
\q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~105_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(27));

-- Location: FF_X47_Y2_N13
\q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \Add0~101_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(26));

-- Location: MLABCELL_X47_Y2_N24
\Mux0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = ( q(26) & ( (q(27)) # (\clkDiv:counter[0]~0_combout\) ) ) # ( !q(26) & ( (!\clkDiv:counter[0]~0_combout\ & q(27)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clkDiv:counter[0]~0_combout\,
	datad => ALT_INV_q(27),
	dataf => ALT_INV_q(26),
	combout => \Mux0~11_combout\);

-- Location: MLABCELL_X47_Y2_N30
\Mux0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = ( \Mux0~11_combout\ & ( (!\clkDiv:counter[1]~combout\ & !\Mux0~10_combout\) ) ) # ( !\Mux0~11_combout\ & ( (!\Mux0~10_combout\) # (\clkDiv:counter[1]~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_clkDiv:counter[1]~combout\,
	datac => \ALT_INV_Mux0~10_combout\,
	dataf => \ALT_INV_Mux0~11_combout\,
	combout => \Mux0~12_combout\);

-- Location: LABCELL_X48_Y2_N34
\Mux0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = ( \clkDiv:counter[1]~combout\ & ( \Mux0~9_combout\ ) ) # ( !\clkDiv:counter[1]~combout\ & ( \Mux0~9_combout\ & ( \Mux0~12_combout\ ) ) ) # ( !\clkDiv:counter[1]~combout\ & ( !\Mux0~9_combout\ & ( \Mux0~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux0~12_combout\,
	datae => \ALT_INV_clkDiv:counter[1]~combout\,
	dataf => \ALT_INV_Mux0~9_combout\,
	combout => \Mux0~13_combout\);

-- Location: LABCELL_X48_Y2_N18
Mux0 : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~combout\ = LCELL(( !\clkDiv:counter[1]~combout\ & ( \Mux0~6_combout\ & ( !\Mux0~13_combout\ ) ) ) # ( \clkDiv:counter[1]~combout\ & ( !\Mux0~6_combout\ ) ) # ( !\clkDiv:counter[1]~combout\ & ( !\Mux0~6_combout\ & ( !\Mux0~13_combout\ ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111111111111111111110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux0~13_combout\,
	datae => \ALT_INV_clkDiv:counter[1]~combout\,
	dataf => \ALT_INV_Mux0~6_combout\,
	combout => \Mux0~combout\);

-- Location: FF_X47_Y3_N29
\q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(15));

-- Location: FF_X47_Y3_N27
\q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(14));

-- Location: FF_X47_Y3_N25
\q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(13));

-- Location: FF_X47_Y3_N23
\q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(12));

-- Location: FF_X47_Y3_N21
\q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(11));

-- Location: FF_X47_Y3_N19
\q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(10));

-- Location: FF_X47_Y3_N17
\q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(9));

-- Location: FF_X47_Y3_N15
\q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(8));

-- Location: FF_X47_Y3_N13
\q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(7));

-- Location: FF_X47_Y3_N11
\q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(6));

-- Location: FF_X47_Y3_N9
\q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(5));

-- Location: FF_X47_Y3_N7
\q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(4));

-- Location: FF_X47_Y3_N33
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: FF_X47_Y3_N3
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: FF_X47_Y3_N1
\q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(1));

-- Location: FF_X47_Y3_N5
\q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \q[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(0));

-- Location: LABCELL_X48_Y2_N0
\clkDiv:counter[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \clkDiv:counter[0]~0_combout\ = ( \clkSelect~input_o\ & ( \clkDiv:counter[0]~0_combout\ ) ) # ( !\clkSelect~input_o\ & ( !\clkDiv:counter[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_clkDiv:counter[0]~0_combout\,
	datae => \ALT_INV_clkSelect~input_o\,
	combout => \clkDiv:counter[0]~0_combout\);

-- Location: LABCELL_X48_Y2_N24
\Add1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( !\clkDiv:counter[0]~0_combout\ & ( \clkDiv:counter[1]~combout\ ) ) # ( \clkDiv:counter[0]~0_combout\ & ( !\clkDiv:counter[1]~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_clkDiv:counter[0]~0_combout\,
	dataf => \ALT_INV_clkDiv:counter[1]~combout\,
	combout => \Add1~0_combout\);

-- Location: LABCELL_X46_Y3_N24
\q[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \q[0]~0_combout\ = ( !q(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_q(0),
	combout => \q[0]~0_combout\);

-- Location: LABCELL_X48_Y2_N20
\clkDiv:counter[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \clkDiv:counter[1]~combout\ = ( \clkSelect~input_o\ & ( \Add1~0_combout\ & ( \clkDiv:counter[1]~combout\ ) ) ) # ( !\clkSelect~input_o\ & ( \Add1~0_combout\ ) ) # ( \clkSelect~input_o\ & ( !\Add1~0_combout\ & ( \clkDiv:counter[1]~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111111111111111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_clkDiv:counter[1]~combout\,
	datae => \ALT_INV_clkSelect~input_o\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \clkDiv:counter[1]~combout\);

-- Location: IOIBUF_X40_Y0_N32
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	ibar => \clk(n)~padout\,
	o => \clk~input_o\);

-- Location: IOIBUF_X76_Y0_N1
\clkSelect~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkSelect,
	o => \clkSelect~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LABCELL_X48_Y3_N36
\q[17]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \q[17]~feeder_combout\ = ( \Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~65_sumout\,
	combout => \q[17]~feeder_combout\);

-- Location: IOOBUF_X83_Y56_N36
\leds[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledCounter:counter[0]~q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X83_Y65_N98
\leds[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledCounter:counter[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X83_Y65_N36
\leds[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledCounter:counter[2]~q\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X83_Y50_N67
\leds[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ledCounter:counter[3]~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: CLKCTRL_G6
\Mux0~clkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux0~clkctrl_outclk\);

-- Location: LABCELL_X82_Y65_N18
\ledCounter:counter[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ledCounter:counter[0]~0_combout\ = ( !\ledCounter:counter[0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ledCounter:counter[0]~q\,
	combout => \ledCounter:counter[0]~0_combout\);

-- Location: FF_X82_Y65_N19
\ledCounter:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mux0~clkctrl_outclk\,
	d => \ledCounter:counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledCounter:counter[0]~q\);

-- Location: LABCELL_X82_Y65_N30
\ledCounter:counter[1]~0DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \ledCounter:counter[1]~0DUPLICATE_combout\ = ( !\ledCounter:counter[1]~DUPLICATE_q\ & ( \ledCounter:counter[0]~q\ ) ) # ( \ledCounter:counter[1]~DUPLICATE_q\ & ( !\ledCounter:counter[0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ledCounter:counter[1]~DUPLICATE_q\,
	dataf => \ALT_INV_ledCounter:counter[0]~q\,
	combout => \ledCounter:counter[1]~0DUPLICATE_combout\);

-- Location: FF_X82_Y65_N31
\ledCounter:counter[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mux0~clkctrl_outclk\,
	d => \ledCounter:counter[1]~0DUPLICATE_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledCounter:counter[1]~DUPLICATE_q\);

-- Location: LABCELL_X82_Y65_N26
\ledCounter:counter[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ledCounter:counter[2]~0_combout\ = ( \ledCounter:counter[2]~q\ & ( \ledCounter:counter[0]~q\ & ( !\ledCounter:counter[1]~DUPLICATE_q\ ) ) ) # ( !\ledCounter:counter[2]~q\ & ( \ledCounter:counter[0]~q\ & ( \ledCounter:counter[1]~DUPLICATE_q\ ) ) ) # ( 
-- \ledCounter:counter[2]~q\ & ( !\ledCounter:counter[0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ledCounter:counter[1]~DUPLICATE_q\,
	datae => \ALT_INV_ledCounter:counter[2]~q\,
	dataf => \ALT_INV_ledCounter:counter[0]~q\,
	combout => \ledCounter:counter[2]~0_combout\);

-- Location: FF_X82_Y65_N27
\ledCounter:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mux0~clkctrl_outclk\,
	d => \ledCounter:counter[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledCounter:counter[2]~q\);

-- Location: LABCELL_X82_Y65_N28
\ledCounter:counter[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ledCounter:counter[1]~0_combout\ = ( !\ledCounter:counter[1]~q\ & ( \ledCounter:counter[0]~q\ ) ) # ( \ledCounter:counter[1]~q\ & ( !\ledCounter:counter[0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ledCounter:counter[1]~q\,
	dataf => \ALT_INV_ledCounter:counter[0]~q\,
	combout => \ledCounter:counter[1]~0_combout\);

-- Location: FF_X82_Y65_N29
\ledCounter:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mux0~clkctrl_outclk\,
	d => \ledCounter:counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledCounter:counter[1]~q\);

-- Location: LABCELL_X82_Y65_N6
\ledCounter:counter[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \ledCounter:counter[3]~0_combout\ = ( \ledCounter:counter[3]~q\ & ( \ledCounter:counter[0]~q\ & ( (!\ledCounter:counter[2]~q\) # (!\ledCounter:counter[1]~q\) ) ) ) # ( !\ledCounter:counter[3]~q\ & ( \ledCounter:counter[0]~q\ & ( (\ledCounter:counter[2]~q\ 
-- & \ledCounter:counter[1]~q\) ) ) ) # ( \ledCounter:counter[3]~q\ & ( !\ledCounter:counter[0]~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ledCounter:counter[2]~q\,
	datad => \ALT_INV_ledCounter:counter[1]~q\,
	datae => \ALT_INV_ledCounter:counter[3]~q\,
	dataf => \ALT_INV_ledCounter:counter[0]~q\,
	combout => \ledCounter:counter[3]~0_combout\);

-- Location: FF_X82_Y65_N7
\ledCounter:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Mux0~clkctrl_outclk\,
	d => \ledCounter:counter[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ledCounter:counter[3]~q\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;
END structure;


