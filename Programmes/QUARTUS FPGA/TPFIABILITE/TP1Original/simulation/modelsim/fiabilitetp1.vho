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

-- DATE "12/26/2015 20:09:51"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fiabilitetp1 IS
    PORT (
	A : IN std_logic_vector(2 DOWNTO 0);
	B : IN std_logic_vector(2 DOWNTO 0);
	Rin : IN std_logic;
	iCLK_50 : IN std_logic;
	iCLK_50_2 : IN std_logic;
	oHEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	oLEDG : OUT std_logic_vector(2 DOWNTO 0);
	Rout : OUT std_logic
	);
END fiabilitetp1;

-- Design Ports Information
-- iCLK_50_2	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oHEX0_D[0]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[1]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[2]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[3]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[5]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[6]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oLEDG[0]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oLEDG[1]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oLEDG[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Rout	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iCLK_50	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Rin	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fiabilitetp1 IS
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
SIGNAL ww_iCLK_50 : std_logic;
SIGNAL ww_iCLK_50_2 : std_logic;
SIGNAL ww_oHEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oLEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Rout : std_logic;
SIGNAL \iCLK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK_50~combout\ : std_logic;
SIGNAL \iCLK_50~clkctrl_outclk\ : std_logic;
SIGNAL \Rin~combout\ : std_logic;
SIGNAL \TOTAL[0]~5_cout\ : std_logic;
SIGNAL \TOTAL[0]~7\ : std_logic;
SIGNAL \TOTAL[1]~9\ : std_logic;
SIGNAL \TOTAL[2]~10_combout\ : std_logic;
SIGNAL \TOTAL[2]~11\ : std_logic;
SIGNAL \TOTAL[3]~12_combout\ : std_logic;
SIGNAL \TOTAL[1]~8_combout\ : std_logic;
SIGNAL \TOTAL[0]~6_combout\ : std_logic;
SIGNAL \instance1|HEX[0]~0_combout\ : std_logic;
SIGNAL \instance1|HEX[1]~1_combout\ : std_logic;
SIGNAL \instance1|HEX[2]~2_combout\ : std_logic;
SIGNAL \instance1|HEX[3]~3_combout\ : std_logic;
SIGNAL \instance1|HEX[4]~4_combout\ : std_logic;
SIGNAL \instance1|HEX[5]~5_combout\ : std_logic;
SIGNAL \instance1|HEX[6]~6_combout\ : std_logic;
SIGNAL TOTAL : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \instance1|ALT_INV_HEX[3]~3_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_Rin <= Rin;
ww_iCLK_50 <= iCLK_50;
ww_iCLK_50_2 <= iCLK_50_2;
oHEX0_D <= ww_oHEX0_D;
oLEDG <= ww_oLEDG;
Rout <= ww_Rout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iCLK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \iCLK_50~combout\);
\instance1|ALT_INV_HEX[3]~3_combout\ <= NOT \instance1|HEX[3]~3_combout\;

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iCLK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_iCLK_50,
	combout => \iCLK_50~combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: CLKCTRL_G3
\iCLK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK_50~clkctrl_outclk\);

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Rin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Rin,
	combout => \Rin~combout\);

-- Location: LCCOMB_X57_Y50_N0
\TOTAL[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TOTAL[0]~5_cout\ = CARRY(\Rin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rin~combout\,
	datad => VCC,
	cout => \TOTAL[0]~5_cout\);

-- Location: LCCOMB_X57_Y50_N2
\TOTAL[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TOTAL[0]~6_combout\ = (\A~combout\(0) & ((\B~combout\(0) & (\TOTAL[0]~5_cout\ & VCC)) # (!\B~combout\(0) & (!\TOTAL[0]~5_cout\)))) # (!\A~combout\(0) & ((\B~combout\(0) & (!\TOTAL[0]~5_cout\)) # (!\B~combout\(0) & ((\TOTAL[0]~5_cout\) # (GND)))))
-- \TOTAL[0]~7\ = CARRY((\A~combout\(0) & (!\B~combout\(0) & !\TOTAL[0]~5_cout\)) # (!\A~combout\(0) & ((!\TOTAL[0]~5_cout\) # (!\B~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cin => \TOTAL[0]~5_cout\,
	combout => \TOTAL[0]~6_combout\,
	cout => \TOTAL[0]~7\);

-- Location: LCCOMB_X57_Y50_N4
\TOTAL[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \TOTAL[1]~8_combout\ = ((\A~combout\(1) $ (\B~combout\(1) $ (!\TOTAL[0]~7\)))) # (GND)
-- \TOTAL[1]~9\ = CARRY((\A~combout\(1) & ((\B~combout\(1)) # (!\TOTAL[0]~7\))) # (!\A~combout\(1) & (\B~combout\(1) & !\TOTAL[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \TOTAL[0]~7\,
	combout => \TOTAL[1]~8_combout\,
	cout => \TOTAL[1]~9\);

-- Location: LCCOMB_X57_Y50_N6
\TOTAL[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \TOTAL[2]~10_combout\ = (\B~combout\(2) & ((\A~combout\(2) & (\TOTAL[1]~9\ & VCC)) # (!\A~combout\(2) & (!\TOTAL[1]~9\)))) # (!\B~combout\(2) & ((\A~combout\(2) & (!\TOTAL[1]~9\)) # (!\A~combout\(2) & ((\TOTAL[1]~9\) # (GND)))))
-- \TOTAL[2]~11\ = CARRY((\B~combout\(2) & (!\A~combout\(2) & !\TOTAL[1]~9\)) # (!\B~combout\(2) & ((!\TOTAL[1]~9\) # (!\A~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \TOTAL[1]~9\,
	combout => \TOTAL[2]~10_combout\,
	cout => \TOTAL[2]~11\);

-- Location: LCFF_X57_Y50_N7
\TOTAL[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \TOTAL[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TOTAL(2));

-- Location: LCCOMB_X57_Y50_N8
\TOTAL[3]~12\ : cycloneii_lcell_comb
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

-- Location: LCFF_X57_Y50_N9
\TOTAL[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \TOTAL[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TOTAL(3));

-- Location: LCFF_X57_Y50_N5
\TOTAL[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \TOTAL[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TOTAL(1));

-- Location: LCFF_X57_Y50_N3
\TOTAL[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \TOTAL[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TOTAL(0));

-- Location: LCCOMB_X57_Y50_N18
\instance1|HEX[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[0]~0_combout\ = (!TOTAL(1) & ((TOTAL(2) & (TOTAL(3) $ (!TOTAL(0)))) # (!TOTAL(2) & (!TOTAL(3) & TOTAL(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TOTAL(2),
	datab => TOTAL(3),
	datac => TOTAL(1),
	datad => TOTAL(0),
	combout => \instance1|HEX[0]~0_combout\);

-- Location: LCCOMB_X57_Y50_N20
\instance1|HEX[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[1]~1_combout\ = (TOTAL(3) & ((TOTAL(0) & ((TOTAL(1)))) # (!TOTAL(0) & (TOTAL(2))))) # (!TOTAL(3) & (TOTAL(2) & (TOTAL(1) $ (TOTAL(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TOTAL(2),
	datab => TOTAL(3),
	datac => TOTAL(1),
	datad => TOTAL(0),
	combout => \instance1|HEX[1]~1_combout\);

-- Location: LCCOMB_X57_Y50_N30
\instance1|HEX[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[2]~2_combout\ = (TOTAL(2) & (TOTAL(3) & ((TOTAL(1)) # (!TOTAL(0))))) # (!TOTAL(2) & (TOTAL(1) & (TOTAL(3) $ (!TOTAL(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TOTAL(2),
	datab => TOTAL(3),
	datac => TOTAL(1),
	datad => TOTAL(0),
	combout => \instance1|HEX[2]~2_combout\);

-- Location: LCCOMB_X57_Y50_N24
\instance1|HEX[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[3]~3_combout\ = (TOTAL(1) & ((TOTAL(2) & ((!TOTAL(0)))) # (!TOTAL(2) & ((TOTAL(0)) # (!TOTAL(3)))))) # (!TOTAL(1) & ((TOTAL(3)) # (TOTAL(2) $ (!TOTAL(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111010111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TOTAL(2),
	datab => TOTAL(3),
	datac => TOTAL(1),
	datad => TOTAL(0),
	combout => \instance1|HEX[3]~3_combout\);

-- Location: LCCOMB_X57_Y50_N26
\instance1|HEX[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[4]~4_combout\ = (TOTAL(1) & (((!TOTAL(3) & TOTAL(0))))) # (!TOTAL(1) & ((TOTAL(2) & (!TOTAL(3))) # (!TOTAL(2) & ((TOTAL(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TOTAL(2),
	datab => TOTAL(3),
	datac => TOTAL(1),
	datad => TOTAL(0),
	combout => \instance1|HEX[4]~4_combout\);

-- Location: LCCOMB_X57_Y50_N12
\instance1|HEX[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[5]~5_combout\ = (TOTAL(2) & (TOTAL(0) & (TOTAL(3) $ (TOTAL(1))))) # (!TOTAL(2) & (!TOTAL(3) & ((TOTAL(1)) # (TOTAL(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TOTAL(2),
	datab => TOTAL(3),
	datac => TOTAL(1),
	datad => TOTAL(0),
	combout => \instance1|HEX[5]~5_combout\);

-- Location: LCCOMB_X57_Y50_N22
\instance1|HEX[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[6]~6_combout\ = (TOTAL(1) & (TOTAL(0) & (TOTAL(2) $ (TOTAL(3))))) # (!TOTAL(1) & ((TOTAL(2) & (TOTAL(3) & !TOTAL(0))) # (!TOTAL(2) & (!TOTAL(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TOTAL(2),
	datab => TOTAL(3),
	datac => TOTAL(1),
	datad => TOTAL(0),
	combout => \instance1|HEX[6]~6_combout\);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iCLK_50_2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_iCLK_50_2);

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX0_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instance1|HEX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(0));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX0_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instance1|HEX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(1));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX0_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instance1|HEX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(2));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX0_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instance1|ALT_INV_HEX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX0_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instance1|HEX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(4));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX0_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instance1|HEX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(5));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oHEX0_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \instance1|HEX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(6));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oLEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TOTAL(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oLEDG(0));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oLEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TOTAL(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oLEDG(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oLEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TOTAL(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oLEDG(2));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Rout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => TOTAL(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Rout);
END structure;


