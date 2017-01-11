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

-- DATE "11/18/2015 08:14:54"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	additioneur IS
    PORT (
	A : IN std_logic_vector(2 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	Rin : IN std_logic;
	CLK : IN std_logic;
	S : OUT std_logic_vector(2 DOWNTO 0);
	Rout : OUT std_logic
	);
END additioneur;

-- Design Ports Information
-- S[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rin	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF additioneur IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Rin : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Rout : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Rin~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \Rout~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \TOTAL[0]~5_cout\ : std_logic;
SIGNAL \TOTAL[0]~6_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \TOTAL[0]~7\ : std_logic;
SIGNAL \TOTAL[1]~8_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \TOTAL[1]~9\ : std_logic;
SIGNAL \TOTAL[2]~10_combout\ : std_logic;
SIGNAL \TOTAL[2]~11\ : std_logic;
SIGNAL \TOTAL[3]~12_combout\ : std_logic;
SIGNAL TOTAL : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_Rin <= Rin;
ww_CLK <= CLK;
S <= ww_S;
Rout <= ww_Rout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOIBUF_X0_Y13_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\Rin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rin,
	o => \Rin~input_o\);

-- Location: IOIBUF_X0_Y13_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOOBUF_X14_Y0_N23
\S[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TOTAL(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\S[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TOTAL(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\S[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TOTAL(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\Rout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => TOTAL(3),
	devoe => ww_devoe,
	o => \Rout~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y12_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y12_N6
\TOTAL[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TOTAL[0]~5_cout\ = CARRY(\Rin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rin~input_o\,
	datad => VCC,
	cout => \TOTAL[0]~5_cout\);

-- Location: LCCOMB_X1_Y12_N8
\TOTAL[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TOTAL[0]~6_combout\ = (\A[0]~input_o\ & ((\B[0]~input_o\ & (\TOTAL[0]~5_cout\ & VCC)) # (!\B[0]~input_o\ & (!\TOTAL[0]~5_cout\)))) # (!\A[0]~input_o\ & ((\B[0]~input_o\ & (!\TOTAL[0]~5_cout\)) # (!\B[0]~input_o\ & ((\TOTAL[0]~5_cout\) # (GND)))))
-- \TOTAL[0]~7\ = CARRY((\A[0]~input_o\ & (!\B[0]~input_o\ & !\TOTAL[0]~5_cout\)) # (!\A[0]~input_o\ & ((!\TOTAL[0]~5_cout\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[0]~input_o\,
	datad => VCC,
	cin => \TOTAL[0]~5_cout\,
	combout => \TOTAL[0]~6_combout\,
	cout => \TOTAL[0]~7\);

-- Location: FF_X1_Y12_N9
\TOTAL[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TOTAL[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TOTAL(0));

-- Location: IOIBUF_X0_Y2_N22
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X1_Y12_N10
\TOTAL[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TOTAL[1]~8_combout\ = ((\A[1]~input_o\ $ (\B[1]~input_o\ $ (!\TOTAL[0]~7\)))) # (GND)
-- \TOTAL[1]~9\ = CARRY((\A[1]~input_o\ & ((\B[1]~input_o\) # (!\TOTAL[0]~7\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & !\TOTAL[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \TOTAL[0]~7\,
	combout => \TOTAL[1]~8_combout\,
	cout => \TOTAL[1]~9\);

-- Location: FF_X1_Y12_N11
\TOTAL[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TOTAL[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TOTAL(1));

-- Location: IOIBUF_X0_Y13_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X1_Y12_N12
\TOTAL[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TOTAL[2]~10_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ & (\TOTAL[1]~9\ & VCC)) # (!\A[2]~input_o\ & (!\TOTAL[1]~9\)))) # (!\B[2]~input_o\ & ((\A[2]~input_o\ & (!\TOTAL[1]~9\)) # (!\A[2]~input_o\ & ((\TOTAL[1]~9\) # (GND)))))
-- \TOTAL[2]~11\ = CARRY((\B[2]~input_o\ & (!\A[2]~input_o\ & !\TOTAL[1]~9\)) # (!\B[2]~input_o\ & ((!\TOTAL[1]~9\) # (!\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \TOTAL[1]~9\,
	combout => \TOTAL[2]~10_combout\,
	cout => \TOTAL[2]~11\);

-- Location: FF_X1_Y12_N13
\TOTAL[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TOTAL[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TOTAL(2));

-- Location: LCCOMB_X1_Y12_N14
\TOTAL[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \TOTAL[3]~12_combout\ = !\TOTAL[2]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \TOTAL[2]~11\,
	combout => \TOTAL[3]~12_combout\);

-- Location: FF_X1_Y12_N15
\TOTAL[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \TOTAL[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => TOTAL(3));

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_Rout <= \Rout~output_o\;
END structure;


