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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "07/16/2015 09:01:14"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	reg IS
    PORT (
	REG : IN std_logic_vector(7 DOWNTO 0);
	RESULT : OUT std_logic_vector(7 DOWNTO 0);
	S : OUT std_logic
	);
END reg;

-- Design Ports Information
-- REG[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[6]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[7]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[4]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[5]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[6]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESULT[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_REG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RESULT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_S : std_logic;
SIGNAL \REG[4]~input_o\ : std_logic;
SIGNAL \REG[5]~input_o\ : std_logic;
SIGNAL \REG[6]~input_o\ : std_logic;
SIGNAL \REG[7]~input_o\ : std_logic;
SIGNAL \RESULT[0]~output_o\ : std_logic;
SIGNAL \RESULT[1]~output_o\ : std_logic;
SIGNAL \RESULT[2]~output_o\ : std_logic;
SIGNAL \RESULT[3]~output_o\ : std_logic;
SIGNAL \RESULT[4]~output_o\ : std_logic;
SIGNAL \RESULT[5]~output_o\ : std_logic;
SIGNAL \RESULT[6]~output_o\ : std_logic;
SIGNAL \RESULT[7]~output_o\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \REG[1]~input_o\ : std_logic;
SIGNAL \REG[2]~input_o\ : std_logic;
SIGNAL \REG[3]~input_o\ : std_logic;
SIGNAL \REG[0]~input_o\ : std_logic;
SIGNAL \RESULT~0_combout\ : std_logic;
SIGNAL \ALT_INV_REG[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RESULT~0_combout\ : std_logic;

BEGIN

ww_REG <= REG;
RESULT <= ww_RESULT;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_REG[1]~input_o\ <= NOT \REG[1]~input_o\;
\ALT_INV_RESULT~0_combout\ <= NOT \RESULT~0_combout\;

-- Location: IOOBUF_X0_Y12_N23
\RESULT[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_REG[1]~input_o\,
	devoe => ww_devoe,
	o => \RESULT[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\RESULT[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RESULT~0_combout\,
	devoe => ww_devoe,
	o => \RESULT[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\RESULT[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RESULT~0_combout\,
	devoe => ww_devoe,
	o => \RESULT[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\RESULT[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_RESULT~0_combout\,
	devoe => ww_devoe,
	o => \RESULT[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\RESULT[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG[1]~input_o\,
	devoe => ww_devoe,
	o => \RESULT[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\RESULT[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG[1]~input_o\,
	devoe => ww_devoe,
	o => \RESULT[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\RESULT[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG[1]~input_o\,
	devoe => ww_devoe,
	o => \RESULT[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\RESULT[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESULT~0_combout\,
	devoe => ww_devoe,
	o => \RESULT[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X0_Y8_N22
\REG[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(1),
	o => \REG[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\REG[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(2),
	o => \REG[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\REG[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(3),
	o => \REG[3]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\REG[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(0),
	o => \REG[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\RESULT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RESULT~0_combout\ = (\REG[1]~input_o\) # ((\REG[2]~input_o\ & (\REG[3]~input_o\ & \REG[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[2]~input_o\,
	datab => \REG[1]~input_o\,
	datac => \REG[3]~input_o\,
	datad => \REG[0]~input_o\,
	combout => \RESULT~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\REG[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(4),
	o => \REG[4]~input_o\);

-- Location: IOIBUF_X37_Y29_N1
\REG[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(5),
	o => \REG[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\REG[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(6),
	o => \REG[6]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\REG[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(7),
	o => \REG[7]~input_o\);

ww_RESULT(0) <= \RESULT[0]~output_o\;

ww_RESULT(1) <= \RESULT[1]~output_o\;

ww_RESULT(2) <= \RESULT[2]~output_o\;

ww_RESULT(3) <= \RESULT[3]~output_o\;

ww_RESULT(4) <= \RESULT[4]~output_o\;

ww_RESULT(5) <= \RESULT[5]~output_o\;

ww_RESULT(6) <= \RESULT[6]~output_o\;

ww_RESULT(7) <= \RESULT[7]~output_o\;

ww_S <= \S~output_o\;
END structure;


