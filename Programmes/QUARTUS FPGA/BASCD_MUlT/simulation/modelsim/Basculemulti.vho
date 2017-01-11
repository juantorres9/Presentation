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

-- DATE "08/03/2015 12:23:00"

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

ENTITY 	basculemulti IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	SEL : IN std_logic_vector(1 DOWNTO 0);
	C : OUT std_logic_vector(7 DOWNTO 0)
	);
END basculemulti;

-- Design Ports Information
-- C[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF basculemulti IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult1|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[7]~output_o\ : std_logic;
SIGNAL \SEL[1]~input_o\ : std_logic;
SIGNAL \SEL[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \C[0]~0_combout\ : std_logic;
SIGNAL \C4[0]~0_combout\ : std_logic;
SIGNAL \C[0]~1_combout\ : std_logic;
SIGNAL \C4[0]~1\ : std_logic;
SIGNAL \C4[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \C[1]~2_combout\ : std_logic;
SIGNAL \C[1]~3_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \C4[1]~3\ : std_logic;
SIGNAL \C4[2]~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \C[2]~4_combout\ : std_logic;
SIGNAL \C[2]~5_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~1\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \C4[2]~5\ : std_logic;
SIGNAL \C4[3]~6_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \C[3]~6_combout\ : std_logic;
SIGNAL \C[3]~7_combout\ : std_logic;
SIGNAL \C4[3]~7\ : std_logic;
SIGNAL \C4[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \C[4]~8_combout\ : std_logic;
SIGNAL \C[4]~9_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \C[5]~10_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \C[5]~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \C[6]~12_combout\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~13\ : std_logic;
SIGNAL \Mult1|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \C[7]~13_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult1|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_SEL <= SEL;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X21_Y27_N0
\Mult1|auto_generated|op_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~0_combout\ = (\Mult1|auto_generated|le3a\(0) & (\B[1]~input_o\ $ (VCC))) # (!\Mult1|auto_generated|le3a\(0) & (\B[1]~input_o\ & VCC))
-- \Mult1|auto_generated|op_3~1\ = CARRY((\Mult1|auto_generated|le3a\(0) & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(0),
	datab => \B[1]~input_o\,
	datad => VCC,
	combout => \Mult1|auto_generated|op_3~0_combout\,
	cout => \Mult1|auto_generated|op_3~1\);

-- Location: LCCOMB_X21_Y27_N2
\Mult1|auto_generated|op_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~2_combout\ = (\Mult1|auto_generated|le3a\(1) & (!\Mult1|auto_generated|op_3~1\)) # (!\Mult1|auto_generated|le3a\(1) & ((\Mult1|auto_generated|op_3~1\) # (GND)))
-- \Mult1|auto_generated|op_3~3\ = CARRY((!\Mult1|auto_generated|op_3~1\) # (!\Mult1|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult1|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~1\,
	combout => \Mult1|auto_generated|op_3~2_combout\,
	cout => \Mult1|auto_generated|op_3~3\);

-- Location: LCCOMB_X21_Y27_N16
\Mult1|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~0_combout\ = (\Mult1|auto_generated|le3a\(2) & (\Mult1|auto_generated|le4a\(5) $ (VCC))) # (!\Mult1|auto_generated|le3a\(2) & (\Mult1|auto_generated|le4a\(5) & VCC))
-- \Mult1|auto_generated|op_1~1\ = CARRY((\Mult1|auto_generated|le3a\(2) & \Mult1|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(2),
	datab => \Mult1|auto_generated|le4a\(5),
	datad => VCC,
	combout => \Mult1|auto_generated|op_1~0_combout\,
	cout => \Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X21_Y27_N4
\Mult1|auto_generated|op_3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~4_combout\ = ((\Mult1|auto_generated|op_1~0_combout\ $ (\Mult1|auto_generated|le4a\(0) $ (!\Mult1|auto_generated|op_3~3\)))) # (GND)
-- \Mult1|auto_generated|op_3~5\ = CARRY((\Mult1|auto_generated|op_1~0_combout\ & ((\Mult1|auto_generated|le4a\(0)) # (!\Mult1|auto_generated|op_3~3\))) # (!\Mult1|auto_generated|op_1~0_combout\ & (\Mult1|auto_generated|le4a\(0) & 
-- !\Mult1|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~0_combout\,
	datab => \Mult1|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~3\,
	combout => \Mult1|auto_generated|op_3~4_combout\,
	cout => \Mult1|auto_generated|op_3~5\);

-- Location: LCCOMB_X23_Y28_N22
\Mult0|auto_generated|add10_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(3) & (!\Mult0|auto_generated|add10_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\Mult0|auto_generated|add10_result[0]~1\) # (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[0]~1\,
	combout => \Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X21_Y27_N20
\Mult1|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~4_combout\ = ((\Mult1|auto_generated|le3a\(4) $ (\Mult1|auto_generated|le4a\(2) $ (!\Mult1|auto_generated|op_1~3\)))) # (GND)
-- \Mult1|auto_generated|op_1~5\ = CARRY((\Mult1|auto_generated|le3a\(4) & ((\Mult1|auto_generated|le4a\(2)) # (!\Mult1|auto_generated|op_1~3\))) # (!\Mult1|auto_generated|le3a\(4) & (\Mult1|auto_generated|le4a\(2) & !\Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(4),
	datab => \Mult1|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~3\,
	combout => \Mult1|auto_generated|op_1~4_combout\,
	cout => \Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y28_N26
\Mult0|auto_generated|add10_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[3]~6_combout\ = !\Mult0|auto_generated|add10_result[2]~5\
-- \Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[2]~5\,
	combout => \Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X21_Y27_N22
\Mult1|auto_generated|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~6_combout\ = (\Mult1|auto_generated|le4a\(3) & ((\Mult1|auto_generated|le5a\(1) & (\Mult1|auto_generated|op_1~5\ & VCC)) # (!\Mult1|auto_generated|le5a\(1) & (!\Mult1|auto_generated|op_1~5\)))) # (!\Mult1|auto_generated|le4a\(3) 
-- & ((\Mult1|auto_generated|le5a\(1) & (!\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|le5a\(1) & ((\Mult1|auto_generated|op_1~5\) # (GND)))))
-- \Mult1|auto_generated|op_1~7\ = CARRY((\Mult1|auto_generated|le4a\(3) & (!\Mult1|auto_generated|le5a\(1) & !\Mult1|auto_generated|op_1~5\)) # (!\Mult1|auto_generated|le4a\(3) & ((!\Mult1|auto_generated|op_1~5\) # (!\Mult1|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(3),
	datab => \Mult1|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~5\,
	combout => \Mult1|auto_generated|op_1~6_combout\,
	cout => \Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X21_Y27_N24
\Mult1|auto_generated|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~8_combout\ = ((\Mult1|auto_generated|le4a\(4) $ (\Mult1|auto_generated|le5a\(2) $ (!\Mult1|auto_generated|op_1~7\)))) # (GND)
-- \Mult1|auto_generated|op_1~9\ = CARRY((\Mult1|auto_generated|le4a\(4) & ((\Mult1|auto_generated|le5a\(2)) # (!\Mult1|auto_generated|op_1~7\))) # (!\Mult1|auto_generated|le4a\(4) & (\Mult1|auto_generated|le5a\(2) & !\Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(4),
	datab => \Mult1|auto_generated|le5a\(2),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~7\,
	combout => \Mult1|auto_generated|op_1~8_combout\,
	cout => \Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X21_Y27_N26
\Mult1|auto_generated|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~10_combout\ = \Mult1|auto_generated|le5a\(3) $ (\Mult1|auto_generated|le4a\(5) $ (!\Mult1|auto_generated|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le5a\(3),
	datab => \Mult1|auto_generated|le4a\(5),
	cin => \Mult1|auto_generated|op_1~9\,
	combout => \Mult1|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X21_Y28_N12
\Mult1|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(2) = LCELL((\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[2]~input_o\)))) # (!\B[0]~input_o\ & (!\A[1]~input_o\ & (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult1|auto_generated|le3a\(2));

-- Location: LCCOMB_X22_Y27_N30
\Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL((\Mult0|auto_generated|le2a\(0)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \A[0]~input_o\,
	datad => \Mult0|auto_generated|le2a\(0),
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X21_Y28_N30
\Mult1|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(3) = LCELL((\B[0]~input_o\ & (\A[3]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult1|auto_generated|le3a\(3));

-- Location: LCCOMB_X22_Y27_N16
\Mult1|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\Mult1|auto_generated|le4a\(5) $ (((\A[1]~input_o\))))) # (!\Mult0|auto_generated|cs3a[1]~0_combout\ & (\Mult1|auto_generated|le4a\(5) & (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(5),
	datab => \A[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult1|auto_generated|le4a\(1));

-- Location: LCCOMB_X21_Y28_N0
\Mult1|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(4) = LCELL((\B[1]~input_o\ & ((\B[0]~input_o\) # (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult1|auto_generated|le3a\(4));

-- Location: LCCOMB_X21_Y28_N2
\Mult1|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(0) = LCELL((\A[0]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mult1|auto_generated|le5a\(0));

-- Location: LCCOMB_X21_Y28_N28
\Mult0|auto_generated|le5a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((\B[1]~input_o\ & (!\A[3]~input_o\)) # (!\B[1]~input_o\ & (\A[3]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(4));

-- Location: LCCOMB_X22_Y27_N22
\Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|le2a\(2)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\B[3]~input_o\ $ (\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Mult0|auto_generated|le2a\(2),
	datac => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \A[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X22_Y28_N20
\Mult1|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\Mult1|auto_generated|le4a\(5) $ ((\A[3]~input_o\)))) # (!\Mult0|auto_generated|cs3a[1]~0_combout\ & (\Mult1|auto_generated|le4a\(5) & ((!\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datab => \Mult1|auto_generated|le4a\(5),
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mult1|auto_generated|le4a\(3));

-- Location: LCCOMB_X22_Y27_N8
\Mult1|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(1) = LCELL((\A[1]~input_o\ & ((\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|le5a\(1));

-- Location: LCCOMB_X22_Y27_N2
\Mult1|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(4) = LCELL((\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (\B[1]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ $ (((\B[2]~input_o\ & \B[1]~input_o\))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mult1|auto_generated|le4a\(4));

-- Location: LCCOMB_X22_Y27_N12
\Mult1|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(2) = LCELL((\A[2]~input_o\ & ((\B[3]~input_o\) # ((\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|le5a\(2));

-- Location: LCCOMB_X23_Y28_N18
\Mult0|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|le2a\(4)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(4),
	datab => \A[3]~input_o\,
	datac => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \B[3]~input_o\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X22_Y27_N6
\Mult1|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le5a\(3) = LCELL((\A[3]~input_o\ & ((\B[3]~input_o\) # ((\B[2]~input_o\ & \B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mult1|auto_generated|le5a\(3));

-- Location: LCCOMB_X22_Y27_N24
\Mult0|auto_generated|le2a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(0) = LCELL((\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X22_Y27_N10
\Mult0|auto_generated|le2a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(1) = LCELL((\A[0]~input_o\ & (((\B[1]~input_o\ & \B[2]~input_o\)))) # (!\A[0]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X22_Y27_N20
\Mult0|auto_generated|le2a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(2) = LCELL((\A[1]~input_o\ & (((\B[1]~input_o\ & \B[2]~input_o\)))) # (!\A[1]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X22_Y27_N14
\Mult0|auto_generated|le2a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(3) = LCELL((\A[2]~input_o\ & (((\B[1]~input_o\ & \B[2]~input_o\)))) # (!\A[2]~input_o\ & (\B[3]~input_o\ & (\B[1]~input_o\ $ (!\B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X23_Y28_N30
\Mult0|auto_generated|le2a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(4) = LCELL((\A[3]~input_o\ & (\B[2]~input_o\ & (\B[1]~input_o\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\B[2]~input_o\ $ (!\B[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X21_Y28_N6
\Mult1|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(0) = LCELL(\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult1|auto_generated|le3a\(0));

-- Location: LCCOMB_X21_Y28_N4
\Mult0|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\B[0]~input_o\ & ((\B[1]~input_o\ $ (\A[2]~input_o\)))) # (!\B[0]~input_o\ & (!\A[1]~input_o\ & (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X21_Y28_N14
\Mult0|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\B[0]~input_o\ & (\A[3]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: IOOBUF_X16_Y29_N9
\C[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[0]~1_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\C[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[1]~3_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\C[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[2]~5_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\C[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[3]~7_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\C[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[4]~9_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\C[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[5]~11_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\C[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[6]~12_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\C[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C[7]~13_combout\,
	devoe => ww_devoe,
	o => \C[7]~output_o\);

-- Location: IOIBUF_X21_Y29_N22
\SEL[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(1),
	o => \SEL[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\SEL[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL(0),
	o => \SEL[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N15
\B[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X23_Y29_N8
\A[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X26_Y29_N29
\B[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X21_Y28_N8
\Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL(\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X23_Y28_N2
\Mult0|auto_generated|add6_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[0]~0_combout\ = (\B[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\B[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) & VCC))
-- \Mult0|auto_generated|add6_result[0]~1\ = CARRY((\B[1]~input_o\ & \Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X22_Y28_N8
\C[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[0]~0_combout\ = (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\Mult1|auto_generated|op_3~0_combout\)) # (!\SEL[0]~input_o\ & ((\Mult0|auto_generated|add6_result[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~0_combout\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \Mult0|auto_generated|add6_result[0]~0_combout\,
	combout => \C[0]~0_combout\);

-- Location: LCCOMB_X21_Y28_N16
\C4[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C4[0]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\ $ (VCC))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & VCC))
-- \C4[0]~1\ = CARRY((\B[0]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => VCC,
	combout => \C4[0]~0_combout\,
	cout => \C4[0]~1\);

-- Location: LCCOMB_X22_Y28_N10
\C[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[0]~1_combout\ = (\C[0]~0_combout\) # ((\SEL[1]~input_o\ & (\SEL[0]~input_o\ & \C4[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \C[0]~0_combout\,
	datac => \SEL[0]~input_o\,
	datad => \C4[0]~0_combout\,
	combout => \C[0]~1_combout\);

-- Location: LCCOMB_X21_Y28_N18
\C4[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C4[1]~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\ & (\C4[0]~1\ & VCC)) # (!\B[1]~input_o\ & (!\C4[0]~1\)))) # (!\A[1]~input_o\ & ((\B[1]~input_o\ & (!\C4[0]~1\)) # (!\B[1]~input_o\ & ((\C4[0]~1\) # (GND)))))
-- \C4[1]~3\ = CARRY((\A[1]~input_o\ & (!\B[1]~input_o\ & !\C4[0]~1\)) # (!\A[1]~input_o\ & ((!\C4[0]~1\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datad => VCC,
	cin => \C4[0]~1\,
	combout => \C4[1]~2_combout\,
	cout => \C4[1]~3\);

-- Location: LCCOMB_X21_Y28_N26
\Mult0|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\B[0]~input_o\ & (\A[1]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X23_Y28_N4
\Mult0|auto_generated|add6_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|add6_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\Mult0|auto_generated|add6_result[0]~1\) # (!\Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[0]~1\,
	combout => \Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X22_Y28_N12
\C[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[1]~2_combout\ = (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\Mult1|auto_generated|op_3~2_combout\)) # (!\SEL[0]~input_o\ & ((\Mult0|auto_generated|add6_result[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~2_combout\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \Mult0|auto_generated|add6_result[1]~2_combout\,
	combout => \C[1]~2_combout\);

-- Location: LCCOMB_X22_Y28_N14
\C[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[1]~3_combout\ = (\C[1]~2_combout\) # ((\SEL[1]~input_o\ & (\C4[1]~2_combout\ & \SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \C4[1]~2_combout\,
	datac => \SEL[0]~input_o\,
	datad => \C[1]~2_combout\,
	combout => \C[1]~3_combout\);

-- Location: IOIBUF_X14_Y29_N22
\A[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X21_Y28_N20
\C4[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C4[2]~4_combout\ = ((\B[2]~input_o\ $ (\A[2]~input_o\ $ (!\C4[1]~3\)))) # (GND)
-- \C4[2]~5\ = CARRY((\B[2]~input_o\ & ((\A[2]~input_o\) # (!\C4[1]~3\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & !\C4[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datad => VCC,
	cin => \C4[1]~3\,
	combout => \C4[2]~4_combout\,
	cout => \C4[2]~5\);

-- Location: IOIBUF_X26_Y29_N22
\B[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X23_Y28_N20
\Mult0|auto_generated|add10_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[0]~0_combout\ = (\Mult0|auto_generated|le5a\(2) & (\B[3]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|le5a\(2) & (\B[3]~input_o\ & VCC))
-- \Mult0|auto_generated|add10_result[0]~1\ = CARRY((\Mult0|auto_generated|le5a\(2) & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(2),
	datab => \B[3]~input_o\,
	datad => VCC,
	combout => \Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X23_Y28_N6
\Mult0|auto_generated|add6_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[2]~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|add10_result[0]~0_combout\ $ (!\Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|add6_result[2]~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|add10_result[0]~0_combout\) # (!\Mult0|auto_generated|add6_result[1]~3\))) # (!\Mult0|auto_generated|le4a\(0) & 
-- (\Mult0|auto_generated|add10_result[0]~0_combout\ & !\Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|add10_result[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[1]~3\,
	combout => \Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X22_Y28_N16
\C[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[2]~4_combout\ = (\SEL[0]~input_o\ & ((\Mult1|auto_generated|op_3~4_combout\) # ((\SEL[1]~input_o\)))) # (!\SEL[0]~input_o\ & (((!\SEL[1]~input_o\ & \Mult0|auto_generated|add6_result[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~4_combout\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \Mult0|auto_generated|add6_result[2]~4_combout\,
	combout => \C[2]~4_combout\);

-- Location: LCCOMB_X22_Y28_N26
\C[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[2]~5_combout\ = (\C[2]~4_combout\ & ((\C4[2]~4_combout\) # ((!\SEL[1]~input_o\)))) # (!\C[2]~4_combout\ & (((\SEL[1]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4[2]~4_combout\,
	datab => \C[2]~4_combout\,
	datac => \SEL[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \C[2]~5_combout\);

-- Location: IOIBUF_X23_Y29_N22
\B[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X22_Y27_N0
\Mult1|auto_generated|le4a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(5) = LCELL(\B[3]~input_o\ $ (((\B[2]~input_o\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Mult1|auto_generated|le4a\(5));

-- Location: LCCOMB_X21_Y27_N18
\Mult1|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_1~2_combout\ = (\Mult1|auto_generated|le3a\(3) & (!\Mult1|auto_generated|op_1~1\)) # (!\Mult1|auto_generated|le3a\(3) & ((\Mult1|auto_generated|op_1~1\) # (GND)))
-- \Mult1|auto_generated|op_1~3\ = CARRY((!\Mult1|auto_generated|op_1~1\) # (!\Mult1|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult1|auto_generated|op_1~1\,
	combout => \Mult1|auto_generated|op_1~2_combout\,
	cout => \Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y27_N18
\Mult1|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(0) = LCELL(\B[3]~input_o\ $ (((\A[0]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\))) # (!\A[0]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult1|auto_generated|le4a\(0));

-- Location: LCCOMB_X21_Y28_N10
\Mult1|auto_generated|le3a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(1) = LCELL((\B[0]~input_o\ & (\A[1]~input_o\ $ ((\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\B[1]~input_o\ & !\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mult1|auto_generated|le3a\(1));

-- Location: LCCOMB_X21_Y27_N6
\Mult1|auto_generated|op_3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~6_combout\ = (\Mult1|auto_generated|le4a\(1) & ((\Mult1|auto_generated|op_1~2_combout\ & (\Mult1|auto_generated|op_3~5\ & VCC)) # (!\Mult1|auto_generated|op_1~2_combout\ & (!\Mult1|auto_generated|op_3~5\)))) # 
-- (!\Mult1|auto_generated|le4a\(1) & ((\Mult1|auto_generated|op_1~2_combout\ & (!\Mult1|auto_generated|op_3~5\)) # (!\Mult1|auto_generated|op_1~2_combout\ & ((\Mult1|auto_generated|op_3~5\) # (GND)))))
-- \Mult1|auto_generated|op_3~7\ = CARRY((\Mult1|auto_generated|le4a\(1) & (!\Mult1|auto_generated|op_1~2_combout\ & !\Mult1|auto_generated|op_3~5\)) # (!\Mult1|auto_generated|le4a\(1) & ((!\Mult1|auto_generated|op_3~5\) # 
-- (!\Mult1|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(1),
	datab => \Mult1|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~5\,
	combout => \Mult1|auto_generated|op_3~6_combout\,
	cout => \Mult1|auto_generated|op_3~7\);

-- Location: LCCOMB_X21_Y28_N22
\C4[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C4[3]~6_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\ & (\C4[2]~5\ & VCC)) # (!\B[3]~input_o\ & (!\C4[2]~5\)))) # (!\A[3]~input_o\ & ((\B[3]~input_o\ & (!\C4[2]~5\)) # (!\B[3]~input_o\ & ((\C4[2]~5\) # (GND)))))
-- \C4[3]~7\ = CARRY((\A[3]~input_o\ & (!\B[3]~input_o\ & !\C4[2]~5\)) # (!\A[3]~input_o\ & ((!\C4[2]~5\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datad => VCC,
	cin => \C4[2]~5\,
	combout => \C4[3]~6_combout\,
	cout => \C4[3]~7\);

-- Location: IOIBUF_X23_Y29_N15
\A[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X22_Y27_N4
\Mult0|auto_generated|cs3a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs3a[1]~0_combout\ = \B[1]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mult0|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X22_Y27_N26
\Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|le2a\(1)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\A[1]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(1),
	datab => \A[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X23_Y28_N8
\Mult0|auto_generated|add6_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[3]~6_combout\ = (\Mult0|auto_generated|add10_result[1]~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (\Mult0|auto_generated|add6_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(1) & 
-- (!\Mult0|auto_generated|add6_result[2]~5\)))) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|le4a\(1) & 
-- ((\Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|add6_result[3]~7\ = CARRY((\Mult0|auto_generated|add10_result[1]~2_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- ((!\Mult0|auto_generated|add6_result[2]~5\) # (!\Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[1]~2_combout\,
	datab => \Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[2]~5\,
	combout => \Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X22_Y28_N28
\C[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[3]~6_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\) # (\A[1]~input_o\)))) # (!\SEL[1]~input_o\ & (\Mult0|auto_generated|add6_result[3]~6_combout\ & (!\SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \Mult0|auto_generated|add6_result[3]~6_combout\,
	datac => \SEL[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \C[3]~6_combout\);

-- Location: LCCOMB_X22_Y28_N22
\C[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[3]~7_combout\ = (\SEL[0]~input_o\ & ((\C[3]~6_combout\ & ((\C4[3]~6_combout\))) # (!\C[3]~6_combout\ & (\Mult1|auto_generated|op_3~6_combout\)))) # (!\SEL[0]~input_o\ & (((\C[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~6_combout\,
	datab => \C4[3]~6_combout\,
	datac => \SEL[0]~input_o\,
	datad => \C[3]~6_combout\,
	combout => \C[3]~7_combout\);

-- Location: LCCOMB_X21_Y28_N24
\C4[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C4[4]~8_combout\ = \C4[3]~7\ $ (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \B[3]~input_o\,
	cin => \C4[3]~7\,
	combout => \C4[4]~8_combout\);

-- Location: LCCOMB_X23_Y28_N24
\Mult0|auto_generated|add10_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[2]~4_combout\ = (\Mult0|auto_generated|le5a\(4) & (\Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\Mult0|auto_generated|le5a\(4) & ((GND) # (!\Mult0|auto_generated|add10_result[1]~3\)))
-- \Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\Mult0|auto_generated|add10_result[1]~3\) # (!\Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[1]~3\,
	combout => \Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X23_Y28_N10
\Mult0|auto_generated|add6_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[4]~8_combout\ = ((\Mult0|auto_generated|le4a\(2) $ (\Mult0|auto_generated|add10_result[2]~4_combout\ $ (!\Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|add6_result[4]~9\ = CARRY((\Mult0|auto_generated|le4a\(2) & ((\Mult0|auto_generated|add10_result[2]~4_combout\) # (!\Mult0|auto_generated|add6_result[3]~7\))) # (!\Mult0|auto_generated|le4a\(2) & 
-- (\Mult0|auto_generated|add10_result[2]~4_combout\ & !\Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(2),
	datab => \Mult0|auto_generated|add10_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[3]~7\,
	combout => \Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X22_Y27_N28
\Mult1|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\Mult1|auto_generated|le4a\(5) $ ((\A[2]~input_o\)))) # (!\Mult0|auto_generated|cs3a[1]~0_combout\ & (\Mult1|auto_generated|le4a\(5) & ((!\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le4a\(5),
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult1|auto_generated|le4a\(2));

-- Location: LCCOMB_X21_Y27_N8
\Mult1|auto_generated|op_3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~8_combout\ = ((\Mult1|auto_generated|le5a\(0) $ (\Mult1|auto_generated|op_1~4_combout\ $ (!\Mult1|auto_generated|op_3~7\)))) # (GND)
-- \Mult1|auto_generated|op_3~9\ = CARRY((\Mult1|auto_generated|le5a\(0) & ((\Mult1|auto_generated|op_1~4_combout\) # (!\Mult1|auto_generated|op_3~7\))) # (!\Mult1|auto_generated|le5a\(0) & (\Mult1|auto_generated|op_1~4_combout\ & 
-- !\Mult1|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|le5a\(0),
	datab => \Mult1|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~7\,
	combout => \Mult1|auto_generated|op_3~8_combout\,
	cout => \Mult1|auto_generated|op_3~9\);

-- Location: LCCOMB_X22_Y28_N24
\C[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[4]~8_combout\ = (\SEL[1]~input_o\ & (((\SEL[0]~input_o\)))) # (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & ((\Mult1|auto_generated|op_3~8_combout\))) # (!\SEL[0]~input_o\ & (\Mult0|auto_generated|add6_result[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \SEL[0]~input_o\,
	datad => \Mult1|auto_generated|op_3~8_combout\,
	combout => \C[4]~8_combout\);

-- Location: LCCOMB_X22_Y28_N18
\C[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[4]~9_combout\ = (\SEL[1]~input_o\ & ((\C[4]~8_combout\ & ((\C4[4]~8_combout\))) # (!\C[4]~8_combout\ & (\A[2]~input_o\)))) # (!\SEL[1]~input_o\ & (((\C[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \C4[4]~8_combout\,
	datac => \SEL[1]~input_o\,
	datad => \C[4]~8_combout\,
	combout => \C[4]~9_combout\);

-- Location: IOIBUF_X23_Y29_N29
\A[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X23_Y28_N0
\Mult0|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|le2a\(3)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(3),
	datab => \A[3]~input_o\,
	datac => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datad => \B[3]~input_o\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X23_Y28_N12
\Mult0|auto_generated|add6_result[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[5]~10_combout\ = (\Mult0|auto_generated|add10_result[3]~6_combout\ & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|add6_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & 
-- (!\Mult0|auto_generated|add6_result[4]~9\)))) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|le4a\(3) & 
-- ((\Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|add6_result[5]~11\ = CARRY((\Mult0|auto_generated|add10_result[3]~6_combout\ & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & 
-- ((!\Mult0|auto_generated|add6_result[4]~9\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[3]~6_combout\,
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[4]~9\,
	combout => \Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X22_Y28_N4
\C[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[5]~10_combout\ = (!\SEL[0]~input_o\ & ((\SEL[1]~input_o\ & (\A[3]~input_o\)) # (!\SEL[1]~input_o\ & ((\Mult0|auto_generated|add6_result[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \SEL[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Mult0|auto_generated|add6_result[5]~10_combout\,
	combout => \C[5]~10_combout\);

-- Location: LCCOMB_X21_Y27_N28
\Mult1|auto_generated|le3a[5]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|le3a\(5) = LCELL(\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \B[1]~input_o\,
	combout => \Mult1|auto_generated|le3a\(5));

-- Location: LCCOMB_X21_Y27_N10
\Mult1|auto_generated|op_3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~10_combout\ = (\Mult1|auto_generated|op_1~6_combout\ & ((\Mult1|auto_generated|le3a\(5) & (\Mult1|auto_generated|op_3~9\ & VCC)) # (!\Mult1|auto_generated|le3a\(5) & (!\Mult1|auto_generated|op_3~9\)))) # 
-- (!\Mult1|auto_generated|op_1~6_combout\ & ((\Mult1|auto_generated|le3a\(5) & (!\Mult1|auto_generated|op_3~9\)) # (!\Mult1|auto_generated|le3a\(5) & ((\Mult1|auto_generated|op_3~9\) # (GND)))))
-- \Mult1|auto_generated|op_3~11\ = CARRY((\Mult1|auto_generated|op_1~6_combout\ & (!\Mult1|auto_generated|le3a\(5) & !\Mult1|auto_generated|op_3~9\)) # (!\Mult1|auto_generated|op_1~6_combout\ & ((!\Mult1|auto_generated|op_3~9\) # 
-- (!\Mult1|auto_generated|le3a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~6_combout\,
	datab => \Mult1|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~9\,
	combout => \Mult1|auto_generated|op_3~10_combout\,
	cout => \Mult1|auto_generated|op_3~11\);

-- Location: LCCOMB_X22_Y28_N6
\C[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[5]~11_combout\ = (\C[5]~10_combout\) # ((!\SEL[1]~input_o\ & (\SEL[0]~input_o\ & \Mult1|auto_generated|op_3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \C[5]~10_combout\,
	datac => \SEL[0]~input_o\,
	datad => \Mult1|auto_generated|op_3~10_combout\,
	combout => \C[5]~11_combout\);

-- Location: LCCOMB_X23_Y28_N28
\Mult0|auto_generated|add10_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[4]~8_combout\ = !\Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add10_result[3]~7\,
	combout => \Mult0|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X23_Y28_N14
\Mult0|auto_generated|add6_result[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[6]~12_combout\ = ((\Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|add10_result[4]~8_combout\ $ (\Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|add6_result[6]~13\ = CARRY((\Mult0|auto_generated|le4a\(4) & (\Mult0|auto_generated|add10_result[4]~8_combout\ & !\Mult0|auto_generated|add6_result[5]~11\)) # (!\Mult0|auto_generated|le4a\(4) & 
-- ((\Mult0|auto_generated|add10_result[4]~8_combout\) # (!\Mult0|auto_generated|add6_result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(4),
	datab => \Mult0|auto_generated|add10_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[5]~11\,
	combout => \Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X21_Y27_N12
\Mult1|auto_generated|op_3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~12_combout\ = ((\Mult1|auto_generated|op_1~8_combout\ $ (\Mult1|auto_generated|le3a\(5) $ (!\Mult1|auto_generated|op_3~11\)))) # (GND)
-- \Mult1|auto_generated|op_3~13\ = CARRY((\Mult1|auto_generated|op_1~8_combout\ & ((\Mult1|auto_generated|le3a\(5)) # (!\Mult1|auto_generated|op_3~11\))) # (!\Mult1|auto_generated|op_1~8_combout\ & (\Mult1|auto_generated|le3a\(5) & 
-- !\Mult1|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~8_combout\,
	datab => \Mult1|auto_generated|le3a\(5),
	datad => VCC,
	cin => \Mult1|auto_generated|op_3~11\,
	combout => \Mult1|auto_generated|op_3~12_combout\,
	cout => \Mult1|auto_generated|op_3~13\);

-- Location: LCCOMB_X22_Y28_N0
\C[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[6]~12_combout\ = (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & ((\Mult1|auto_generated|op_3~12_combout\))) # (!\SEL[0]~input_o\ & (\Mult0|auto_generated|add6_result[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL[1]~input_o\,
	datab => \Mult0|auto_generated|add6_result[6]~12_combout\,
	datac => \SEL[0]~input_o\,
	datad => \Mult1|auto_generated|op_3~12_combout\,
	combout => \C[6]~12_combout\);

-- Location: LCCOMB_X21_Y27_N14
\Mult1|auto_generated|op_3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult1|auto_generated|op_3~14_combout\ = \Mult1|auto_generated|op_1~10_combout\ $ (\Mult1|auto_generated|op_3~13\ $ (!\Mult1|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_1~10_combout\,
	datad => \Mult1|auto_generated|le3a\(5),
	cin => \Mult1|auto_generated|op_3~13\,
	combout => \Mult1|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X23_Y28_N16
\Mult0|auto_generated|add6_result[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[7]~14_combout\ = !\Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add6_result[6]~13\,
	combout => \Mult0|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X22_Y28_N2
\C[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C[7]~13_combout\ = (!\SEL[1]~input_o\ & ((\SEL[0]~input_o\ & (\Mult1|auto_generated|op_3~14_combout\)) # (!\SEL[0]~input_o\ & ((\Mult0|auto_generated|add6_result[7]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult1|auto_generated|op_3~14_combout\,
	datab => \SEL[0]~input_o\,
	datac => \SEL[1]~input_o\,
	datad => \Mult0|auto_generated|add6_result[7]~14_combout\,
	combout => \C[7]~13_combout\);

ww_C(0) <= \C[0]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(7) <= \C[7]~output_o\;
END structure;


