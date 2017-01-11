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

-- DATE "11/23/2015 22:07:37"

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

ENTITY 	logique1 IS
    PORT (
	iSW : IN std_logic_vector(3 DOWNTO 0);
	iCLK_50 : IN std_logic;
	oHEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	oLEDG : INOUT std_logic;
	oLEDR : OUT std_logic
	);
END logique1;

-- Design Ports Information
-- oLEDG	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[0]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[1]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[2]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[3]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[4]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[5]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oHEX0_D[6]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oLEDR	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- iSW[3]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iCLK_50	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSW[2]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSW[1]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- iSW[0]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF logique1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iSW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_iCLK_50 : std_logic;
SIGNAL ww_oHEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_oLEDR : std_logic;
SIGNAL \iCLK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \compt50[3]~35_combout\ : std_logic;
SIGNAL \compt50[6]~41_combout\ : std_logic;
SIGNAL \compt50[8]~45_combout\ : std_logic;
SIGNAL \compt50[17]~63_combout\ : std_logic;
SIGNAL \compt50[19]~67_combout\ : std_logic;
SIGNAL \compt50[22]~73_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \C~5_combout\ : std_logic;
SIGNAL \iCLK_50~combout\ : std_logic;
SIGNAL \iCLK_50~clkctrl_outclk\ : std_logic;
SIGNAL \C~7_combout\ : std_logic;
SIGNAL \compt50[0]~29_combout\ : std_logic;
SIGNAL \compt50[0]~30\ : std_logic;
SIGNAL \compt50[1]~32\ : std_logic;
SIGNAL \compt50[2]~33_combout\ : std_logic;
SIGNAL \compt50[2]~34\ : std_logic;
SIGNAL \compt50[3]~36\ : std_logic;
SIGNAL \compt50[4]~38\ : std_logic;
SIGNAL \compt50[5]~39_combout\ : std_logic;
SIGNAL \compt50[5]~40\ : std_logic;
SIGNAL \compt50[6]~42\ : std_logic;
SIGNAL \compt50[7]~43_combout\ : std_logic;
SIGNAL \compt50[7]~44\ : std_logic;
SIGNAL \compt50[8]~46\ : std_logic;
SIGNAL \compt50[9]~47_combout\ : std_logic;
SIGNAL \compt50[9]~48\ : std_logic;
SIGNAL \compt50[10]~50\ : std_logic;
SIGNAL \compt50[11]~51_combout\ : std_logic;
SIGNAL \compt50[11]~52\ : std_logic;
SIGNAL \compt50[12]~53_combout\ : std_logic;
SIGNAL \compt50[12]~54\ : std_logic;
SIGNAL \compt50[13]~55_combout\ : std_logic;
SIGNAL \compt50[13]~56\ : std_logic;
SIGNAL \compt50[14]~57_combout\ : std_logic;
SIGNAL \compt50[14]~58\ : std_logic;
SIGNAL \compt50[15]~59_combout\ : std_logic;
SIGNAL \compt50[15]~60\ : std_logic;
SIGNAL \compt50[16]~61_combout\ : std_logic;
SIGNAL \compt50[16]~62\ : std_logic;
SIGNAL \compt50[17]~64\ : std_logic;
SIGNAL \compt50[18]~65_combout\ : std_logic;
SIGNAL \compt50[18]~66\ : std_logic;
SIGNAL \compt50[19]~68\ : std_logic;
SIGNAL \compt50[20]~69_combout\ : std_logic;
SIGNAL \compt50[20]~70\ : std_logic;
SIGNAL \compt50[21]~71_combout\ : std_logic;
SIGNAL \compt50[21]~72\ : std_logic;
SIGNAL \compt50[22]~74\ : std_logic;
SIGNAL \compt50[23]~75_combout\ : std_logic;
SIGNAL \compt50[23]~76\ : std_logic;
SIGNAL \compt50[24]~78\ : std_logic;
SIGNAL \compt50[25]~79_combout\ : std_logic;
SIGNAL \compt50[25]~80\ : std_logic;
SIGNAL \compt50[26]~82\ : std_logic;
SIGNAL \compt50[27]~83_combout\ : std_logic;
SIGNAL \compt50[27]~84\ : std_logic;
SIGNAL \compt50[28]~85_combout\ : std_logic;
SIGNAL \compt50[26]~81_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \compt50[10]~49_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \compt50[1]~31_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \compt50[4]~37_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \compt50[24]~77_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \compt10[3]~0_combout\ : std_logic;
SIGNAL \compt10[1]~1_combout\ : std_logic;
SIGNAL \A~0_combout\ : std_logic;
SIGNAL \A~regout\ : std_logic;
SIGNAL \compt10[0]~2_combout\ : std_logic;
SIGNAL \C~2_combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \C~6_combout\ : std_logic;
SIGNAL \C~4_combout\ : std_logic;
SIGNAL \C~3_combout\ : std_logic;
SIGNAL \F~0_combout\ : std_logic;
SIGNAL \FF~regout\ : std_logic;
SIGNAL \instance1|HEX[3]~0_combout\ : std_logic;
SIGNAL \instance1|HEX[5]~1_combout\ : std_logic;
SIGNAL \LEDR~regout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \LEDRR~regout\ : std_logic;
SIGNAL \iSW~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL C : std_logic_vector(2 DOWNTO 0);
SIGNAL compt10 : std_logic_vector(3 DOWNTO 0);
SIGNAL compt50 : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_iSW~combout\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \instance1|ALT_INV_HEX[3]~0_combout\ : std_logic;
SIGNAL ALT_INV_compt10 : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_iSW <= iSW;
ww_iCLK_50 <= iCLK_50;
oHEX0_D <= ww_oHEX0_D;
oLEDR <= ww_oLEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iCLK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \iCLK_50~combout\);
\ALT_INV_iSW~combout\(3) <= NOT \iSW~combout\(3);
\instance1|ALT_INV_HEX[3]~0_combout\ <= NOT \instance1|HEX[3]~0_combout\;
ALT_INV_compt10(1) <= NOT compt10(1);

-- Location: LCFF_X32_Y5_N21
\compt50[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[8]~45_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(8));

-- Location: LCFF_X32_Y5_N11
\compt50[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[3]~35_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(3));

-- Location: LCFF_X32_Y5_N17
\compt50[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[6]~41_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(6));

-- Location: LCFF_X32_Y4_N7
\compt50[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[17]~63_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(17));

-- Location: LCFF_X32_Y4_N11
\compt50[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[19]~67_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(19));

-- Location: LCFF_X32_Y4_N17
\compt50[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[22]~73_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(22));

-- Location: LCCOMB_X32_Y5_N10
\compt50[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[3]~35_combout\ = (compt50(3) & (!\compt50[2]~34\)) # (!compt50(3) & ((\compt50[2]~34\) # (GND)))
-- \compt50[3]~36\ = CARRY((!\compt50[2]~34\) # (!compt50(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(3),
	datad => VCC,
	cin => \compt50[2]~34\,
	combout => \compt50[3]~35_combout\,
	cout => \compt50[3]~36\);

-- Location: LCCOMB_X32_Y5_N16
\compt50[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[6]~41_combout\ = (compt50(6) & (\compt50[5]~40\ $ (GND))) # (!compt50(6) & (!\compt50[5]~40\ & VCC))
-- \compt50[6]~42\ = CARRY((compt50(6) & !\compt50[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(6),
	datad => VCC,
	cin => \compt50[5]~40\,
	combout => \compt50[6]~41_combout\,
	cout => \compt50[6]~42\);

-- Location: LCCOMB_X32_Y5_N20
\compt50[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[8]~45_combout\ = (compt50(8) & (\compt50[7]~44\ $ (GND))) # (!compt50(8) & (!\compt50[7]~44\ & VCC))
-- \compt50[8]~46\ = CARRY((compt50(8) & !\compt50[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(8),
	datad => VCC,
	cin => \compt50[7]~44\,
	combout => \compt50[8]~45_combout\,
	cout => \compt50[8]~46\);

-- Location: LCCOMB_X32_Y4_N6
\compt50[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[17]~63_combout\ = (compt50(17) & (!\compt50[16]~62\)) # (!compt50(17) & ((\compt50[16]~62\) # (GND)))
-- \compt50[17]~64\ = CARRY((!\compt50[16]~62\) # (!compt50(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(17),
	datad => VCC,
	cin => \compt50[16]~62\,
	combout => \compt50[17]~63_combout\,
	cout => \compt50[17]~64\);

-- Location: LCCOMB_X32_Y4_N10
\compt50[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[19]~67_combout\ = (compt50(19) & (!\compt50[18]~66\)) # (!compt50(19) & ((\compt50[18]~66\) # (GND)))
-- \compt50[19]~68\ = CARRY((!\compt50[18]~66\) # (!compt50(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(19),
	datad => VCC,
	cin => \compt50[18]~66\,
	combout => \compt50[19]~67_combout\,
	cout => \compt50[19]~68\);

-- Location: LCCOMB_X32_Y4_N16
\compt50[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[22]~73_combout\ = (compt50(22) & (\compt50[21]~72\ $ (GND))) # (!compt50(22) & (!\compt50[21]~72\ & VCC))
-- \compt50[22]~74\ = CARRY((compt50(22) & !\compt50[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(22),
	datad => VCC,
	cin => \compt50[21]~72\,
	combout => \compt50[22]~73_combout\,
	cout => \compt50[22]~74\);

-- Location: LCCOMB_X31_Y4_N10
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!compt50(16) & (!compt50(24) & (!compt50(18) & !compt50(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(16),
	datab => compt50(24),
	datac => compt50(18),
	datad => compt50(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y4_N30
\LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (((!compt50(18) & !compt50(17))) # (!compt50(20))) # (!compt50(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(19),
	datab => compt50(18),
	datac => compt50(20),
	datad => compt50(17),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y4_N14
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ((!compt50(23)) # (!compt50(22))) # (!compt50(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => compt50(21),
	datac => compt50(22),
	datad => compt50(23),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X31_Y4_N24
\LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ((!compt50(24) & ((\LessThan0~9_combout\) # (\LessThan0~8_combout\)))) # (!compt50(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(24),
	datab => compt50(25),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X31_Y4_N6
\C~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C~5_combout\ = (\iSW~combout\(0) & !\iSW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iSW~combout\(0),
	datad => \iSW~combout\(3),
	combout => \C~5_combout\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G14
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

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iSW[0]~I\ : cycloneii_io
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
	padio => ww_iSW(0),
	combout => \iSW~combout\(0));

-- Location: LCCOMB_X31_Y4_N4
\C~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C~7_combout\ = (\C~6_combout\) # ((!\iSW~combout\(3) & \iSW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSW~combout\(3),
	datac => \iSW~combout\(0),
	datad => \C~6_combout\,
	combout => \C~7_combout\);

-- Location: LCFF_X31_Y4_N5
\C[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \C~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => C(0));

-- Location: LCCOMB_X32_Y5_N4
\compt50[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[0]~29_combout\ = compt50(0) $ (VCC)
-- \compt50[0]~30\ = CARRY(compt50(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => compt50(0),
	datad => VCC,
	combout => \compt50[0]~29_combout\,
	cout => \compt50[0]~30\);

-- Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iSW[3]~I\ : cycloneii_io
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
	padio => ww_iSW(3),
	combout => \iSW~combout\(3));

-- Location: LCFF_X32_Y5_N5
\compt50[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[0]~29_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(0));

-- Location: LCCOMB_X32_Y5_N6
\compt50[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[1]~31_combout\ = (compt50(1) & (!\compt50[0]~30\)) # (!compt50(1) & ((\compt50[0]~30\) # (GND)))
-- \compt50[1]~32\ = CARRY((!\compt50[0]~30\) # (!compt50(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(1),
	datad => VCC,
	cin => \compt50[0]~30\,
	combout => \compt50[1]~31_combout\,
	cout => \compt50[1]~32\);

-- Location: LCCOMB_X32_Y5_N8
\compt50[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[2]~33_combout\ = (compt50(2) & (\compt50[1]~32\ $ (GND))) # (!compt50(2) & (!\compt50[1]~32\ & VCC))
-- \compt50[2]~34\ = CARRY((compt50(2) & !\compt50[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(2),
	datad => VCC,
	cin => \compt50[1]~32\,
	combout => \compt50[2]~33_combout\,
	cout => \compt50[2]~34\);

-- Location: LCFF_X32_Y5_N9
\compt50[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[2]~33_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(2));

-- Location: LCCOMB_X32_Y5_N12
\compt50[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[4]~37_combout\ = (compt50(4) & (\compt50[3]~36\ $ (GND))) # (!compt50(4) & (!\compt50[3]~36\ & VCC))
-- \compt50[4]~38\ = CARRY((compt50(4) & !\compt50[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(4),
	datad => VCC,
	cin => \compt50[3]~36\,
	combout => \compt50[4]~37_combout\,
	cout => \compt50[4]~38\);

-- Location: LCCOMB_X32_Y5_N14
\compt50[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[5]~39_combout\ = (compt50(5) & (!\compt50[4]~38\)) # (!compt50(5) & ((\compt50[4]~38\) # (GND)))
-- \compt50[5]~40\ = CARRY((!\compt50[4]~38\) # (!compt50(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(5),
	datad => VCC,
	cin => \compt50[4]~38\,
	combout => \compt50[5]~39_combout\,
	cout => \compt50[5]~40\);

-- Location: LCFF_X32_Y5_N15
\compt50[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[5]~39_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(5));

-- Location: LCCOMB_X32_Y5_N18
\compt50[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[7]~43_combout\ = (compt50(7) & (!\compt50[6]~42\)) # (!compt50(7) & ((\compt50[6]~42\) # (GND)))
-- \compt50[7]~44\ = CARRY((!\compt50[6]~42\) # (!compt50(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(7),
	datad => VCC,
	cin => \compt50[6]~42\,
	combout => \compt50[7]~43_combout\,
	cout => \compt50[7]~44\);

-- Location: LCFF_X32_Y5_N19
\compt50[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[7]~43_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(7));

-- Location: LCCOMB_X32_Y5_N22
\compt50[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[9]~47_combout\ = (compt50(9) & (!\compt50[8]~46\)) # (!compt50(9) & ((\compt50[8]~46\) # (GND)))
-- \compt50[9]~48\ = CARRY((!\compt50[8]~46\) # (!compt50(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(9),
	datad => VCC,
	cin => \compt50[8]~46\,
	combout => \compt50[9]~47_combout\,
	cout => \compt50[9]~48\);

-- Location: LCFF_X32_Y5_N23
\compt50[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[9]~47_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(9));

-- Location: LCCOMB_X32_Y5_N24
\compt50[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[10]~49_combout\ = (compt50(10) & (\compt50[9]~48\ $ (GND))) # (!compt50(10) & (!\compt50[9]~48\ & VCC))
-- \compt50[10]~50\ = CARRY((compt50(10) & !\compt50[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(10),
	datad => VCC,
	cin => \compt50[9]~48\,
	combout => \compt50[10]~49_combout\,
	cout => \compt50[10]~50\);

-- Location: LCCOMB_X32_Y5_N26
\compt50[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[11]~51_combout\ = (compt50(11) & (!\compt50[10]~50\)) # (!compt50(11) & ((\compt50[10]~50\) # (GND)))
-- \compt50[11]~52\ = CARRY((!\compt50[10]~50\) # (!compt50(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(11),
	datad => VCC,
	cin => \compt50[10]~50\,
	combout => \compt50[11]~51_combout\,
	cout => \compt50[11]~52\);

-- Location: LCFF_X32_Y5_N27
\compt50[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[11]~51_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(11));

-- Location: LCCOMB_X32_Y5_N28
\compt50[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[12]~53_combout\ = (compt50(12) & (\compt50[11]~52\ $ (GND))) # (!compt50(12) & (!\compt50[11]~52\ & VCC))
-- \compt50[12]~54\ = CARRY((compt50(12) & !\compt50[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(12),
	datad => VCC,
	cin => \compt50[11]~52\,
	combout => \compt50[12]~53_combout\,
	cout => \compt50[12]~54\);

-- Location: LCFF_X32_Y5_N29
\compt50[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[12]~53_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(12));

-- Location: LCCOMB_X32_Y5_N30
\compt50[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[13]~55_combout\ = (compt50(13) & (!\compt50[12]~54\)) # (!compt50(13) & ((\compt50[12]~54\) # (GND)))
-- \compt50[13]~56\ = CARRY((!\compt50[12]~54\) # (!compt50(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(13),
	datad => VCC,
	cin => \compt50[12]~54\,
	combout => \compt50[13]~55_combout\,
	cout => \compt50[13]~56\);

-- Location: LCFF_X32_Y5_N31
\compt50[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[13]~55_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(13));

-- Location: LCCOMB_X32_Y4_N0
\compt50[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[14]~57_combout\ = (compt50(14) & (\compt50[13]~56\ $ (GND))) # (!compt50(14) & (!\compt50[13]~56\ & VCC))
-- \compt50[14]~58\ = CARRY((compt50(14) & !\compt50[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(14),
	datad => VCC,
	cin => \compt50[13]~56\,
	combout => \compt50[14]~57_combout\,
	cout => \compt50[14]~58\);

-- Location: LCFF_X32_Y4_N1
\compt50[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[14]~57_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(14));

-- Location: LCCOMB_X32_Y4_N2
\compt50[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[15]~59_combout\ = (compt50(15) & (!\compt50[14]~58\)) # (!compt50(15) & ((\compt50[14]~58\) # (GND)))
-- \compt50[15]~60\ = CARRY((!\compt50[14]~58\) # (!compt50(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(15),
	datad => VCC,
	cin => \compt50[14]~58\,
	combout => \compt50[15]~59_combout\,
	cout => \compt50[15]~60\);

-- Location: LCFF_X32_Y4_N3
\compt50[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[15]~59_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(15));

-- Location: LCCOMB_X32_Y4_N4
\compt50[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[16]~61_combout\ = (compt50(16) & (\compt50[15]~60\ $ (GND))) # (!compt50(16) & (!\compt50[15]~60\ & VCC))
-- \compt50[16]~62\ = CARRY((compt50(16) & !\compt50[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(16),
	datad => VCC,
	cin => \compt50[15]~60\,
	combout => \compt50[16]~61_combout\,
	cout => \compt50[16]~62\);

-- Location: LCFF_X32_Y4_N5
\compt50[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[16]~61_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(16));

-- Location: LCCOMB_X32_Y4_N8
\compt50[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[18]~65_combout\ = (compt50(18) & (\compt50[17]~64\ $ (GND))) # (!compt50(18) & (!\compt50[17]~64\ & VCC))
-- \compt50[18]~66\ = CARRY((compt50(18) & !\compt50[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(18),
	datad => VCC,
	cin => \compt50[17]~64\,
	combout => \compt50[18]~65_combout\,
	cout => \compt50[18]~66\);

-- Location: LCFF_X32_Y4_N9
\compt50[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[18]~65_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(18));

-- Location: LCCOMB_X32_Y4_N12
\compt50[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[20]~69_combout\ = (compt50(20) & (\compt50[19]~68\ $ (GND))) # (!compt50(20) & (!\compt50[19]~68\ & VCC))
-- \compt50[20]~70\ = CARRY((compt50(20) & !\compt50[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(20),
	datad => VCC,
	cin => \compt50[19]~68\,
	combout => \compt50[20]~69_combout\,
	cout => \compt50[20]~70\);

-- Location: LCFF_X32_Y4_N13
\compt50[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[20]~69_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(20));

-- Location: LCCOMB_X32_Y4_N14
\compt50[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[21]~71_combout\ = (compt50(21) & (!\compt50[20]~70\)) # (!compt50(21) & ((\compt50[20]~70\) # (GND)))
-- \compt50[21]~72\ = CARRY((!\compt50[20]~70\) # (!compt50(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(21),
	datad => VCC,
	cin => \compt50[20]~70\,
	combout => \compt50[21]~71_combout\,
	cout => \compt50[21]~72\);

-- Location: LCFF_X32_Y4_N15
\compt50[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[21]~71_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(21));

-- Location: LCCOMB_X32_Y4_N18
\compt50[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[23]~75_combout\ = (compt50(23) & (!\compt50[22]~74\)) # (!compt50(23) & ((\compt50[22]~74\) # (GND)))
-- \compt50[23]~76\ = CARRY((!\compt50[22]~74\) # (!compt50(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(23),
	datad => VCC,
	cin => \compt50[22]~74\,
	combout => \compt50[23]~75_combout\,
	cout => \compt50[23]~76\);

-- Location: LCFF_X32_Y4_N19
\compt50[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[23]~75_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(23));

-- Location: LCCOMB_X32_Y4_N20
\compt50[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[24]~77_combout\ = (compt50(24) & (\compt50[23]~76\ $ (GND))) # (!compt50(24) & (!\compt50[23]~76\ & VCC))
-- \compt50[24]~78\ = CARRY((compt50(24) & !\compt50[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(24),
	datad => VCC,
	cin => \compt50[23]~76\,
	combout => \compt50[24]~77_combout\,
	cout => \compt50[24]~78\);

-- Location: LCCOMB_X32_Y4_N22
\compt50[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[25]~79_combout\ = (compt50(25) & (!\compt50[24]~78\)) # (!compt50(25) & ((\compt50[24]~78\) # (GND)))
-- \compt50[25]~80\ = CARRY((!\compt50[24]~78\) # (!compt50(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(25),
	datad => VCC,
	cin => \compt50[24]~78\,
	combout => \compt50[25]~79_combout\,
	cout => \compt50[25]~80\);

-- Location: LCFF_X32_Y4_N23
\compt50[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[25]~79_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(25));

-- Location: LCCOMB_X32_Y4_N24
\compt50[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[26]~81_combout\ = (compt50(26) & (\compt50[25]~80\ $ (GND))) # (!compt50(26) & (!\compt50[25]~80\ & VCC))
-- \compt50[26]~82\ = CARRY((compt50(26) & !\compt50[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => compt50(26),
	datad => VCC,
	cin => \compt50[25]~80\,
	combout => \compt50[26]~81_combout\,
	cout => \compt50[26]~82\);

-- Location: LCCOMB_X32_Y4_N26
\compt50[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[27]~83_combout\ = (compt50(27) & (!\compt50[26]~82\)) # (!compt50(27) & ((\compt50[26]~82\) # (GND)))
-- \compt50[27]~84\ = CARRY((!\compt50[26]~82\) # (!compt50(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => compt50(27),
	datad => VCC,
	cin => \compt50[26]~82\,
	combout => \compt50[27]~83_combout\,
	cout => \compt50[27]~84\);

-- Location: LCFF_X32_Y4_N27
\compt50[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[27]~83_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(27));

-- Location: LCCOMB_X32_Y4_N28
\compt50[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt50[28]~85_combout\ = \compt50[27]~84\ $ (!compt50(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => compt50(28),
	cin => \compt50[27]~84\,
	combout => \compt50[28]~85_combout\);

-- Location: LCFF_X32_Y4_N29
\compt50[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[28]~85_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(28));

-- Location: LCFF_X32_Y4_N25
\compt50[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[26]~81_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(26));

-- Location: LCCOMB_X33_Y4_N28
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!compt50(28) & (!compt50(26) & !compt50(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => compt50(28),
	datac => compt50(26),
	datad => compt50(27),
	combout => \LessThan0~0_combout\);

-- Location: LCFF_X32_Y5_N25
\compt50[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[10]~49_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(10));

-- Location: LCCOMB_X32_Y5_N0
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!compt50(8) & (!compt50(9) & (!compt50(10) & !compt50(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(8),
	datab => compt50(9),
	datac => compt50(10),
	datad => compt50(11),
	combout => \LessThan0~2_combout\);

-- Location: LCFF_X32_Y5_N7
\compt50[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[1]~31_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(1));

-- Location: LCCOMB_X32_Y5_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!compt50(1)) # (!compt50(0))) # (!compt50(2))) # (!compt50(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(3),
	datab => compt50(2),
	datac => compt50(0),
	datad => compt50(1),
	combout => \LessThan0~3_combout\);

-- Location: LCFF_X32_Y5_N13
\compt50[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[4]~37_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(4));

-- Location: LCCOMB_X31_Y4_N12
\LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((!compt50(4)) # (!compt50(5))) # (!compt50(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(6),
	datab => compt50(5),
	datad => compt50(4),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y4_N20
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & ((\LessThan0~3_combout\) # (\LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCFF_X32_Y4_N21
\compt50[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt50[24]~77_combout\,
	sclr => \LessThan0~11_combout\,
	ena => \iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt50(24));

-- Location: LCCOMB_X31_Y4_N18
\LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (((!compt50(12)) # (!compt50(13))) # (!compt50(15))) # (!compt50(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(14),
	datab => compt50(15),
	datac => compt50(13),
	datad => compt50(12),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X31_Y4_N28
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!compt50(18) & (!compt50(24) & (!compt50(16) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt50(18),
	datab => compt50(24),
	datac => compt50(16),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X31_Y4_N22
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ((!\LessThan0~10_combout\ & (!\LessThan0~5_combout\ & !\LessThan0~7_combout\))) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LCCOMB_X30_Y4_N12
\compt10[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt10[3]~0_combout\ = (\A~regout\ & (\iSW~combout\(3) & \LessThan0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~regout\,
	datac => \iSW~combout\(3),
	datad => \LessThan0~11_combout\,
	combout => \compt10[3]~0_combout\);

-- Location: LCCOMB_X30_Y4_N2
\compt10[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt10[1]~1_combout\ = compt10(1) $ (((compt10(0) & \compt10[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt10(0),
	datac => compt10(1),
	datad => \compt10[3]~0_combout\,
	combout => \compt10[1]~1_combout\);

-- Location: LCFF_X30_Y4_N3
\compt10[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt10[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt10(1));

-- Location: LCCOMB_X30_Y4_N0
\A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \A~0_combout\ = (\A~regout\ & (((!compt10(1)) # (!\LessThan0~11_combout\)) # (!compt10(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt10(0),
	datab => \LessThan0~11_combout\,
	datac => \A~regout\,
	datad => compt10(1),
	combout => \A~0_combout\);

-- Location: LCFF_X30_Y4_N1
A : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \A~0_combout\,
	sdata => VCC,
	sload => \ALT_INV_iSW~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \A~regout\);

-- Location: LCCOMB_X30_Y4_N28
\compt10[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \compt10[0]~2_combout\ = compt10(0) $ (((\iSW~combout\(3) & (\LessThan0~11_combout\ & \A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSW~combout\(3),
	datab => \LessThan0~11_combout\,
	datac => compt10(0),
	datad => \A~regout\,
	combout => \compt10[0]~2_combout\);

-- Location: LCFF_X30_Y4_N29
\compt10[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \compt10[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => compt10(0));

-- Location: LCCOMB_X30_Y4_N30
\C~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C~2_combout\ = (!compt10(0) & compt10(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => compt10(0),
	datad => compt10(1),
	combout => \C~2_combout\);

-- Location: LCCOMB_X31_Y4_N30
\LEDR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\A~regout\ & (\LessThan0~11_combout\ & (compt10(1) $ (compt10(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => compt10(1),
	datab => compt10(0),
	datac => \A~regout\,
	datad => \LessThan0~11_combout\,
	combout => \LEDR~0_combout\);

-- Location: LCCOMB_X31_Y4_N2
\C~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C~6_combout\ = (\iSW~combout\(3) & ((\LEDR~0_combout\ & ((\C~2_combout\))) # (!\LEDR~0_combout\ & (C(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSW~combout\(3),
	datab => C(0),
	datac => \C~2_combout\,
	datad => \LEDR~0_combout\,
	combout => \C~6_combout\);

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iSW[1]~I\ : cycloneii_io
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
	padio => ww_iSW(1),
	combout => \iSW~combout\(1));

-- Location: LCFF_X31_Y4_N17
\C[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \C~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => C(1));

-- Location: LCCOMB_X31_Y4_N16
\C~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C~4_combout\ = (\iSW~combout\(3) & (((C(1) & !\LEDR~0_combout\)))) # (!\iSW~combout\(3) & (\iSW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSW~combout\(3),
	datab => \iSW~combout\(1),
	datac => C(1),
	datad => \LEDR~0_combout\,
	combout => \C~4_combout\);

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\iSW[2]~I\ : cycloneii_io
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
	padio => ww_iSW(2),
	combout => \iSW~combout\(2));

-- Location: LCFF_X31_Y4_N27
\C[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \C~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => C(2));

-- Location: LCCOMB_X31_Y4_N26
\C~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C~3_combout\ = (\iSW~combout\(3) & (((C(2) & !\LEDR~0_combout\)))) # (!\iSW~combout\(3) & (\iSW~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSW~combout\(3),
	datab => \iSW~combout\(2),
	datac => C(2),
	datad => \LEDR~0_combout\,
	combout => \C~3_combout\);

-- Location: LCCOMB_X31_Y4_N0
\F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \F~0_combout\ = (\C~3_combout\ & ((\C~5_combout\) # ((\C~6_combout\) # (\C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~5_combout\,
	datab => \C~6_combout\,
	datac => \C~4_combout\,
	datad => \C~3_combout\,
	combout => \F~0_combout\);

-- Location: LCFF_X31_Y4_N1
FF : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \F~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \FF~regout\);

-- Location: LCCOMB_X20_Y1_N4
\instance1|HEX[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[3]~0_combout\ = (compt10(1)) # (!compt10(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => compt10(1),
	datad => compt10(0),
	combout => \instance1|HEX[3]~0_combout\);

-- Location: LCCOMB_X20_Y1_N18
\instance1|HEX[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance1|HEX[5]~1_combout\ = (compt10(1)) # (compt10(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => compt10(1),
	datad => compt10(0),
	combout => \instance1|HEX[5]~1_combout\);

-- Location: LCFF_X31_Y4_N9
LEDR : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	datain => \LEDR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR~regout\);

-- Location: LCCOMB_X31_Y4_N8
\LEDR~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = (\iSW~combout\(3) & ((\LEDR~0_combout\ & (!\FF~regout\)) # (!\LEDR~0_combout\ & ((\LEDR~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iSW~combout\(3),
	datab => \FF~regout\,
	datac => \LEDR~regout\,
	datad => \LEDR~0_combout\,
	combout => \LEDR~1_combout\);

-- Location: LCFF_X31_Y4_N13
LEDRR : cycloneii_lcell_ff
PORT MAP (
	clk => \iCLK_50~clkctrl_outclk\,
	sdata => \LEDR~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDRR~regout\);

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oLEDG~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \FF~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => oLEDG);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance1|ALT_INV_HEX[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(0));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(1));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \C~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(2));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance1|ALT_INV_HEX[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(3));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => compt10(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instance1|HEX[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(5));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => ALT_INV_compt10(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oHEX0_D(6));

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oLEDR~I\ : cycloneii_io
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
	datain => \LEDRR~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oLEDR);
END structure;


