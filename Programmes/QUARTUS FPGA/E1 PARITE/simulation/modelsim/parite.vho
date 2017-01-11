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

-- DATE "07/16/2015 14:32:19"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parite IS
    PORT (
	REG : IN std_logic_vector(7 DOWNTO 0);
	S : OUT std_logic
	);
END parite;

-- Design Ports Information
-- S	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[6]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REG[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parite IS
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
SIGNAL ww_S : std_logic;
SIGNAL \COMPT[0]~1_combout\ : std_logic;
SIGNAL \REG[6]~input_o\ : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \REG[2]~input_o\ : std_logic;
SIGNAL \REG[3]~input_o\ : std_logic;
SIGNAL \REG[1]~input_o\ : std_logic;
SIGNAL \COMPT[1]~7_combout\ : std_logic;
SIGNAL \REG[5]~input_o\ : std_logic;
SIGNAL \REG[7]~input_o\ : std_logic;
SIGNAL \REG[0]~input_o\ : std_logic;
SIGNAL \COMPT[1]~6_combout\ : std_logic;
SIGNAL \COMPT[1]~8_combout\ : std_logic;
SIGNAL \REG[4]~input_o\ : std_logic;
SIGNAL \COMPT[0]~2_combout\ : std_logic;
SIGNAL \COMPT[0]~3_combout\ : std_logic;
SIGNAL \COMPT[0]~4_combout\ : std_logic;
SIGNAL \COMPT[0]~0_combout\ : std_logic;
SIGNAL \COMPT[0]~5_combout\ : std_logic;
SIGNAL COMPT : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_COMPT : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_REG <= REG;
S <= ww_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_COMPT(0) <= NOT COMPT(0);

-- Location: LCCOMB_X1_Y3_N20
\COMPT[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[0]~1_combout\ = (\REG[6]~input_o\ & (\REG[2]~input_o\ & \REG[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[6]~input_o\,
	datac => \REG[2]~input_o\,
	datad => \REG[5]~input_o\,
	combout => \COMPT[0]~1_combout\);

-- Location: IOIBUF_X1_Y0_N1
\REG[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(6),
	o => \REG[6]~input_o\);

-- Location: IOOBUF_X0_Y2_N9
\S~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_COMPT(0),
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOIBUF_X0_Y3_N1
\REG[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(2),
	o => \REG[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\REG[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(3),
	o => \REG[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\REG[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(1),
	o => \REG[1]~input_o\);

-- Location: LCCOMB_X1_Y3_N16
\COMPT[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[1]~7_combout\ = (((!\REG[1]~input_o\) # (!\REG[3]~input_o\)) # (!\REG[2]~input_o\)) # (!\REG[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[6]~input_o\,
	datab => \REG[2]~input_o\,
	datac => \REG[3]~input_o\,
	datad => \REG[1]~input_o\,
	combout => \COMPT[1]~7_combout\);

-- Location: IOIBUF_X1_Y0_N22
\REG[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(5),
	o => \REG[5]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\REG[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(7),
	o => \REG[7]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\REG[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(0),
	o => \REG[0]~input_o\);

-- Location: LCCOMB_X1_Y3_N28
\COMPT[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[1]~6_combout\ = (((!\REG[0]~input_o\) # (!\REG[7]~input_o\)) # (!\REG[5]~input_o\)) # (!\REG[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[4]~input_o\,
	datab => \REG[5]~input_o\,
	datac => \REG[7]~input_o\,
	datad => \REG[0]~input_o\,
	combout => \COMPT[1]~6_combout\);

-- Location: LCCOMB_X1_Y3_N22
\COMPT[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[1]~8_combout\ = (\COMPT[1]~7_combout\) # (\COMPT[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COMPT[1]~7_combout\,
	datad => \COMPT[1]~6_combout\,
	combout => \COMPT[1]~8_combout\);

-- Location: IOIBUF_X1_Y0_N15
\REG[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REG(4),
	o => \REG[4]~input_o\);

-- Location: LCCOMB_X1_Y3_N30
\COMPT[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[0]~2_combout\ = \REG[3]~input_o\ $ (\REG[1]~input_o\ $ (\REG[7]~input_o\ $ (\REG[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[3]~input_o\,
	datab => \REG[1]~input_o\,
	datac => \REG[7]~input_o\,
	datad => \REG[0]~input_o\,
	combout => \COMPT[0]~2_combout\);

-- Location: LCCOMB_X1_Y3_N18
\COMPT[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[0]~3_combout\ = (\REG[3]~input_o\ & (\REG[1]~input_o\ & (\REG[7]~input_o\ & \REG[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[3]~input_o\,
	datab => \REG[1]~input_o\,
	datac => \REG[7]~input_o\,
	datad => \REG[0]~input_o\,
	combout => \COMPT[0]~3_combout\);

-- Location: LCCOMB_X1_Y3_N26
\COMPT[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[0]~4_combout\ = (\COMPT[0]~2_combout\ & (\COMPT[0]~1_combout\ $ (\REG[4]~input_o\ $ (!\COMPT[0]~3_combout\)))) # (!\COMPT[0]~2_combout\ & ((\COMPT[0]~1_combout\ & ((\COMPT[0]~3_combout\) # (!\REG[4]~input_o\))) # (!\COMPT[0]~1_combout\ & 
-- (\REG[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COMPT[0]~1_combout\,
	datab => \REG[4]~input_o\,
	datac => \COMPT[0]~2_combout\,
	datad => \COMPT[0]~3_combout\,
	combout => \COMPT[0]~4_combout\);

-- Location: LCCOMB_X1_Y3_N12
\COMPT[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[0]~0_combout\ = COMPT(0) $ (((\REG[6]~input_o\ & (!\REG[5]~input_o\ & !\REG[2]~input_o\)) # (!\REG[6]~input_o\ & (\REG[5]~input_o\ $ (\REG[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[6]~input_o\,
	datab => \REG[5]~input_o\,
	datac => \REG[2]~input_o\,
	datad => COMPT(0),
	combout => \COMPT[0]~0_combout\);

-- Location: LCCOMB_X1_Y3_N6
\COMPT[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COMPT[0]~5_combout\ = \COMPT[0]~4_combout\ $ (\COMPT[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COMPT[0]~4_combout\,
	datad => \COMPT[0]~0_combout\,
	combout => \COMPT[0]~5_combout\);

-- Location: LCCOMB_X1_Y3_N24
\COMPT[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- COMPT(0) = (\COMPT[1]~8_combout\ & ((\COMPT[0]~5_combout\))) # (!\COMPT[1]~8_combout\ & (COMPT(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COMPT(0),
	datac => \COMPT[1]~8_combout\,
	datad => \COMPT[0]~5_combout\,
	combout => COMPT(0));

ww_S <= \S~output_o\;
END structure;


