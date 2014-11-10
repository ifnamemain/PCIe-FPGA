-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "11/10/2014 11:29:59"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Flancter IS
    PORT (
	sysclk : IN std_logic;
	pulse : IN std_logic;
	clr : IN std_logic;
	enable : IN std_logic;
	flag : OUT std_logic
	);
END Flancter;

-- Design Ports Information
-- flag	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sysclk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Flancter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sysclk : std_logic;
SIGNAL ww_pulse : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_flag : std_logic;
SIGNAL \sysclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flag~output_o\ : std_logic;
SIGNAL \sysclk~input_o\ : std_logic;
SIGNAL \sysclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clr~input_o\ : std_logic;
SIGNAL \pulse~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \clrFlop~0_combout\ : std_logic;
SIGNAL \clrFlop~q\ : std_logic;
SIGNAL \setFlop~0_combout\ : std_logic;
SIGNAL \setFlop~q\ : std_logic;
SIGNAL \flagSync~0_combout\ : std_logic;
SIGNAL \flagSync~q\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \flag~reg0_q\ : std_logic;

BEGIN

ww_sysclk <= sysclk;
ww_pulse <= pulse;
ww_clr <= clr;
ww_enable <= enable;
flag <= ww_flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sysclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sysclk~input_o\);

-- Location: IOOBUF_X24_Y31_N2
\flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag~reg0_q\,
	devoe => ww_devoe,
	o => \flag~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\sysclk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sysclk,
	o => \sysclk~input_o\);

-- Location: CLKCTRL_G17
\sysclk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sysclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sysclk~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y31_N8
\clr~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr,
	o => \clr~input_o\);

-- Location: IOIBUF_X26_Y31_N1
\pulse~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pulse,
	o => \pulse~input_o\);

-- Location: IOIBUF_X24_Y31_N8
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X25_Y30_N10
\clrFlop~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clrFlop~0_combout\ = (\clr~input_o\ & ((\setFlop~q\))) # (!\clr~input_o\ & (\clrFlop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \clrFlop~q\,
	datad => \setFlop~q\,
	combout => \clrFlop~0_combout\);

-- Location: FF_X25_Y30_N11
clrFlop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \clrFlop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clrFlop~q\);

-- Location: LCCOMB_X25_Y30_N16
\setFlop~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \setFlop~0_combout\ = (\enable~input_o\ & ((!\clrFlop~q\))) # (!\enable~input_o\ & (\setFlop~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \setFlop~q\,
	datad => \clrFlop~q\,
	combout => \setFlop~0_combout\);

-- Location: FF_X25_Y30_N17
setFlop : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulse~input_o\,
	d => \setFlop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \setFlop~q\);

-- Location: LCCOMB_X25_Y30_N18
\flagSync~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flagSync~0_combout\ = (!\clr~input_o\ & (\setFlop~q\ $ (\clrFlop~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~input_o\,
	datac => \setFlop~q\,
	datad => \clrFlop~q\,
	combout => \flagSync~0_combout\);

-- Location: FF_X25_Y30_N19
flagSync : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \flagSync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flagSync~q\);

-- Location: LCCOMB_X25_Y30_N12
\flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (!\clr~input_o\ & \flagSync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~input_o\,
	datad => \flagSync~q\,
	combout => \flag~0_combout\);

-- Location: FF_X25_Y30_N13
\flag~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sysclk~inputclkctrl_outclk\,
	d => \flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag~reg0_q\);

ww_flag <= \flag~output_o\;
END structure;


