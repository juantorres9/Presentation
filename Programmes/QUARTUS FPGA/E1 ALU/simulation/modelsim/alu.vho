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

-- DATE "07/12/2015 16:44:21"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
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

ENTITY 	alu IS
    PORT (
	CLK : IN std_logic;
	SELEC : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(2 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	LEDG : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELEC[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SELEC[1]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SELEC : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \SELEC[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \SELEC[0]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \AffichLEDS|HEX[0]~0_combout\ : std_logic;
SIGNAL \AffichLEDS|HEX[1]~1_combout\ : std_logic;
SIGNAL \AffichLEDS|HEX[2]~2_combout\ : std_logic;
SIGNAL \AffichLEDS|HEX[3]~3_combout\ : std_logic;
SIGNAL \AffichLEDS|HEX[4]~4_combout\ : std_logic;
SIGNAL \AffichLEDS|HEX[5]~5_combout\ : std_logic;
SIGNAL \AffichLEDS|HEX[6]~6_combout\ : std_logic;
SIGNAL RESULTAT : std_logic_vector(3 DOWNTO 0);
SIGNAL \AffichLEDS|ALT_INV_HEX[3]~3_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_SELEC <= SELEC;
ww_A <= A;
ww_B <= B;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\AffichLEDS|ALT_INV_HEX[3]~3_combout\ <= NOT \AffichLEDS|HEX[3]~3_combout\;

-- Location: IOOBUF_X7_Y0_N16
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RESULTAT(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RESULTAT(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RESULTAT(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => RESULTAT(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AffichLEDS|HEX[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N9
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AffichLEDS|HEX[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AffichLEDS|HEX[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AffichLEDS|ALT_INV_HEX[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AffichLEDS|HEX[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AffichLEDS|HEX[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AffichLEDS|HEX[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: IOIBUF_X0_Y10_N15
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\SELEC[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELEC(1),
	o => \SELEC[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X1_Y9_N0
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\SELEC[1]~input_o\ & ((\SELEC[0]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\SELEC[0]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELEC[0]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SELEC[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y9_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y9_N16
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\) # ((\SELEC[0]~input_o\ & (\SELEC[1]~input_o\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELEC[0]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \SELEC[1]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X1_Y9_N17
\RESULTAT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RESULTAT(0));

-- Location: IOIBUF_X0_Y9_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\SELEC[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SELEC(0),
	o => \SELEC[0]~input_o\);

-- Location: LCCOMB_X1_Y9_N2
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\A[1]~input_o\ & ((\SELEC[0]~input_o\) # ((\B[1]~input_o\ & !\SELEC[1]~input_o\)))) # (!\A[1]~input_o\ & (\SELEC[0]~input_o\ & ((\B[1]~input_o\) # (\SELEC[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SELEC[1]~input_o\,
	datad => \SELEC[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y9_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\Add0~1\ & VCC)) # (!\B[1]~input_o\ & (!\Add0~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\Add0~1\)) # (!\B[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\Add0~1\)) # (!\A[1]~input_o\ & ((!\Add0~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y9_N18
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\SELEC[1]~input_o\ & ((\Mux2~0_combout\ & (\Add0~2_combout\)) # (!\Mux2~0_combout\ & ((\A[0]~input_o\))))) # (!\SELEC[1]~input_o\ & (\Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELEC[1]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Add0~2_combout\,
	datad => \A[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: FF_X1_Y9_N19
\RESULTAT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RESULTAT(1));

-- Location: IOIBUF_X0_Y9_N8
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y9_N28
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SELEC[0]~input_o\ & ((\A[2]~input_o\) # ((\SELEC[1]~input_o\) # (\B[2]~input_o\)))) # (!\SELEC[0]~input_o\ & (\A[2]~input_o\ & (!\SELEC[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELEC[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \SELEC[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X0_Y10_N1
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y9_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\Add0~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y9_N20
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\SELEC[1]~input_o\ & ((\Mux1~0_combout\ & ((\Add0~4_combout\))) # (!\Mux1~0_combout\ & (\A[1]~input_o\)))) # (!\SELEC[1]~input_o\ & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELEC[1]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \A[1]~input_o\,
	datad => \Add0~4_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X1_Y9_N21
\RESULTAT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RESULTAT(2));

-- Location: LCCOMB_X1_Y9_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~5\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X1_Y9_N14
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SELEC[1]~input_o\ & ((\SELEC[0]~input_o\ & ((\Add0~6_combout\))) # (!\SELEC[0]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SELEC[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \SELEC[1]~input_o\,
	datad => \Add0~6_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X1_Y9_N15
\RESULTAT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RESULTAT(3));

-- Location: LCCOMB_X2_Y5_N24
\AffichLEDS|HEX[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AffichLEDS|HEX[0]~0_combout\ = (!RESULTAT(1) & ((RESULTAT(2) & (RESULTAT(3) $ (!RESULTAT(0)))) # (!RESULTAT(2) & (!RESULTAT(3) & RESULTAT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RESULTAT(2),
	datab => RESULTAT(3),
	datac => RESULTAT(1),
	datad => RESULTAT(0),
	combout => \AffichLEDS|HEX[0]~0_combout\);

-- Location: LCCOMB_X2_Y5_N10
\AffichLEDS|HEX[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AffichLEDS|HEX[1]~1_combout\ = (RESULTAT(3) & ((RESULTAT(0) & ((RESULTAT(1)))) # (!RESULTAT(0) & (RESULTAT(2))))) # (!RESULTAT(3) & (RESULTAT(2) & (RESULTAT(1) $ (RESULTAT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RESULTAT(2),
	datab => RESULTAT(3),
	datac => RESULTAT(1),
	datad => RESULTAT(0),
	combout => \AffichLEDS|HEX[1]~1_combout\);

-- Location: LCCOMB_X2_Y5_N4
\AffichLEDS|HEX[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AffichLEDS|HEX[2]~2_combout\ = (RESULTAT(2) & (RESULTAT(3) & ((RESULTAT(1)) # (!RESULTAT(0))))) # (!RESULTAT(2) & (RESULTAT(1) & (RESULTAT(3) $ (!RESULTAT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RESULTAT(2),
	datab => RESULTAT(3),
	datac => RESULTAT(1),
	datad => RESULTAT(0),
	combout => \AffichLEDS|HEX[2]~2_combout\);

-- Location: LCCOMB_X2_Y5_N22
\AffichLEDS|HEX[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AffichLEDS|HEX[3]~3_combout\ = (RESULTAT(1) & ((RESULTAT(2) & ((!RESULTAT(0)))) # (!RESULTAT(2) & ((RESULTAT(0)) # (!RESULTAT(3)))))) # (!RESULTAT(1) & ((RESULTAT(3)) # (RESULTAT(2) $ (!RESULTAT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RESULTAT(2),
	datab => RESULTAT(3),
	datac => RESULTAT(1),
	datad => RESULTAT(0),
	combout => \AffichLEDS|HEX[3]~3_combout\);

-- Location: LCCOMB_X2_Y5_N16
\AffichLEDS|HEX[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AffichLEDS|HEX[4]~4_combout\ = (RESULTAT(1) & (((!RESULTAT(3) & RESULTAT(0))))) # (!RESULTAT(1) & ((RESULTAT(2) & (!RESULTAT(3))) # (!RESULTAT(2) & ((RESULTAT(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RESULTAT(2),
	datab => RESULTAT(3),
	datac => RESULTAT(1),
	datad => RESULTAT(0),
	combout => \AffichLEDS|HEX[4]~4_combout\);

-- Location: LCCOMB_X2_Y5_N2
\AffichLEDS|HEX[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AffichLEDS|HEX[5]~5_combout\ = (RESULTAT(2) & (RESULTAT(0) & (RESULTAT(3) $ (RESULTAT(1))))) # (!RESULTAT(2) & (!RESULTAT(3) & ((RESULTAT(1)) # (RESULTAT(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RESULTAT(2),
	datab => RESULTAT(3),
	datac => RESULTAT(1),
	datad => RESULTAT(0),
	combout => \AffichLEDS|HEX[5]~5_combout\);

-- Location: LCCOMB_X2_Y5_N20
\AffichLEDS|HEX[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AffichLEDS|HEX[6]~6_combout\ = (RESULTAT(1) & (RESULTAT(0) & (RESULTAT(2) $ (RESULTAT(3))))) # (!RESULTAT(1) & ((RESULTAT(2) & (RESULTAT(3) & !RESULTAT(0))) # (!RESULTAT(2) & (!RESULTAT(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => RESULTAT(2),
	datab => RESULTAT(3),
	datac => RESULTAT(1),
	datad => RESULTAT(0),
	combout => \AffichLEDS|HEX[6]~6_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


