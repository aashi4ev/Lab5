-- Copyright (C) 1991-2012 Altera Corporation
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
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "11/01/2017 12:59:11"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ChipInterface IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_BLANK_N : OUT std_logic;
	VGA_CLK : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_HS : OUT std_logic
	);
END ChipInterface;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ChipInterface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL \v|rowIncrement~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \v|count1|Add0~0_combout\ : std_logic;
SIGNAL \v|count1|Add0~6_combout\ : std_logic;
SIGNAL \v|count2|Add0~6_combout\ : std_logic;
SIGNAL \VGA_B~0_combout\ : std_logic;
SIGNAL \v|rc4|is_between~1_combout\ : std_logic;
SIGNAL \v|count1|Equal0~1_combout\ : std_logic;
SIGNAL \v|rowIncrement~combout\ : std_logic;
SIGNAL \v|Equal0~combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \v|rowIncrement~clkctrl_outclk\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \VGA_BLANK_N~output_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \VGA_SYNC_N~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \v|count4|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \v|count4|Add0~1\ : std_logic;
SIGNAL \v|count4|Add0~2_combout\ : std_logic;
SIGNAL \v|count4|Add0~3\ : std_logic;
SIGNAL \v|count4|Add0~5\ : std_logic;
SIGNAL \v|count4|Add0~6_combout\ : std_logic;
SIGNAL \v|count4|Add0~7\ : std_logic;
SIGNAL \v|count4|Add0~9\ : std_logic;
SIGNAL \v|count4|Add0~11\ : std_logic;
SIGNAL \v|count4|Add0~13\ : std_logic;
SIGNAL \v|count4|Add0~14_combout\ : std_logic;
SIGNAL \v|count4|value~0_combout\ : std_logic;
SIGNAL \v|count4|Equal0~0_combout\ : std_logic;
SIGNAL \v|count4|Add0~10_combout\ : std_logic;
SIGNAL \v|count4|value~2_combout\ : std_logic;
SIGNAL \v|count4|Add0~8_combout\ : std_logic;
SIGNAL \v|count4|Add0~4_combout\ : std_logic;
SIGNAL \v|count4|Equal0~2_combout\ : std_logic;
SIGNAL \v|count4|Add0~15\ : std_logic;
SIGNAL \v|count4|Add0~16_combout\ : std_logic;
SIGNAL \v|count4|value~3_combout\ : std_logic;
SIGNAL \v|count4|Add0~12_combout\ : std_logic;
SIGNAL \v|count4|Add0~17\ : std_logic;
SIGNAL \v|count4|Add0~18_combout\ : std_logic;
SIGNAL \v|count4|Add0~19\ : std_logic;
SIGNAL \v|count4|Add0~20_combout\ : std_logic;
SIGNAL \v|count4|Add0~21\ : std_logic;
SIGNAL \v|count4|Add0~22_combout\ : std_logic;
SIGNAL \v|count4|Equal0~1_combout\ : std_logic;
SIGNAL \v|count4|value~1_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \VGA_R~1_combout\ : std_logic;
SIGNAL \VGA_G~2_combout\ : std_logic;
SIGNAL \VGA_G~1_combout\ : std_logic;
SIGNAL \VGA_G~3_combout\ : std_logic;
SIGNAL \VGA_B~1_combout\ : std_logic;
SIGNAL \VGA_B~2_combout\ : std_logic;
SIGNAL \v|count2|Equal0~0_combout\ : std_logic;
SIGNAL \v|count2|Add0~0_combout\ : std_logic;
SIGNAL \v|count2|Add0~1\ : std_logic;
SIGNAL \v|count2|Add0~2_combout\ : std_logic;
SIGNAL \v|count2|value~1_combout\ : std_logic;
SIGNAL \v|count2|Add0~3\ : std_logic;
SIGNAL \v|count2|Add0~4_combout\ : std_logic;
SIGNAL \v|rc2|is_between~0_combout\ : std_logic;
SIGNAL \v|count2|Equal0~1_combout\ : std_logic;
SIGNAL \v|count2|Add0~19\ : std_logic;
SIGNAL \v|count2|Add0~20_combout\ : std_logic;
SIGNAL \v|count2|value~0_combout\ : std_logic;
SIGNAL \v|count2|Add0~21\ : std_logic;
SIGNAL \v|count2|Add0~22_combout\ : std_logic;
SIGNAL \v|count2|Equal0~2_combout\ : std_logic;
SIGNAL \v|count2|Equal0~3_combout\ : std_logic;
SIGNAL \v|count2|Add0~5\ : std_logic;
SIGNAL \v|count2|Add0~7\ : std_logic;
SIGNAL \v|count2|Add0~8_combout\ : std_logic;
SIGNAL \v|count2|value~2_combout\ : std_logic;
SIGNAL \v|count2|Add0~9\ : std_logic;
SIGNAL \v|count2|Add0~10_combout\ : std_logic;
SIGNAL \v|count2|Add0~11\ : std_logic;
SIGNAL \v|count2|Add0~12_combout\ : std_logic;
SIGNAL \v|count2|Add0~13\ : std_logic;
SIGNAL \v|count2|Add0~14_combout\ : std_logic;
SIGNAL \v|count2|Add0~15\ : std_logic;
SIGNAL \v|count2|Add0~16_combout\ : std_logic;
SIGNAL \v|count2|Add0~17\ : std_logic;
SIGNAL \v|count2|Add0~18_combout\ : std_logic;
SIGNAL \v|rc4|is_between~0_combout\ : std_logic;
SIGNAL \v|rc4|is_between~2_combout\ : std_logic;
SIGNAL \v|rc4|is_between~3_combout\ : std_logic;
SIGNAL \v|count1|Add0~1\ : std_logic;
SIGNAL \v|count1|Add0~3\ : std_logic;
SIGNAL \v|count1|Add0~5\ : std_logic;
SIGNAL \v|count1|Add0~7\ : std_logic;
SIGNAL \v|count1|Add0~8_combout\ : std_logic;
SIGNAL \v|count1|Add0~2_combout\ : std_logic;
SIGNAL \v|count1|Add0~4_combout\ : std_logic;
SIGNAL \v|count1|Equal0~3_combout\ : std_logic;
SIGNAL \v|count1|Add0~9\ : std_logic;
SIGNAL \v|count1|Add0~10_combout\ : std_logic;
SIGNAL \v|count1|Add0~11\ : std_logic;
SIGNAL \v|count1|Add0~12_combout\ : std_logic;
SIGNAL \v|count1|Add0~21\ : std_logic;
SIGNAL \v|count1|Add0~22_combout\ : std_logic;
SIGNAL \v|count1|Equal0~2_combout\ : std_logic;
SIGNAL \v|count1|value~0_combout\ : std_logic;
SIGNAL \v|count1|Add0~13\ : std_logic;
SIGNAL \v|count1|Add0~14_combout\ : std_logic;
SIGNAL \v|count1|Add0~15\ : std_logic;
SIGNAL \v|count1|Add0~17\ : std_logic;
SIGNAL \v|count1|Add0~18_combout\ : std_logic;
SIGNAL \v|count1|value~2_combout\ : std_logic;
SIGNAL \v|count1|Add0~19\ : std_logic;
SIGNAL \v|count1|Add0~20_combout\ : std_logic;
SIGNAL \v|count1|value~1_combout\ : std_logic;
SIGNAL \v|count1|Add0~16_combout\ : std_logic;
SIGNAL \v|blank~1_combout\ : std_logic;
SIGNAL \v|blank~2_combout\ : std_logic;
SIGNAL \v|count1|Equal0~0_combout\ : std_logic;
SIGNAL \v|blank~0_combout\ : std_logic;
SIGNAL \v|blank~3_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \v|rc2|is_between~2_combout\ : std_logic;
SIGNAL \v|rc2|is_between~1_combout\ : std_logic;
SIGNAL \v|rc2|is_between~3_combout\ : std_logic;
SIGNAL \v|rc1|is_between~0_combout\ : std_logic;
SIGNAL \v|rc1|is_between~1_combout\ : std_logic;
SIGNAL \v|rc1|is_between~2_combout\ : std_logic;
SIGNAL \v|count2|value\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \v|count4|value\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \v|count1|value\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \v|rc1|ALT_INV_is_between~2_combout\ : std_logic;
SIGNAL \v|rc2|ALT_INV_is_between~3_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_CLOCK_50~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_CLK <= ww_VGA_CLK;
VGA_SYNC_N <= ww_VGA_SYNC_N;
VGA_VS <= ww_VGA_VS;
VGA_HS <= ww_VGA_HS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\v|rowIncrement~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \v|rowIncrement~combout\);
\v|rc1|ALT_INV_is_between~2_combout\ <= NOT \v|rc1|is_between~2_combout\;
\v|rc2|ALT_INV_is_between~3_combout\ <= NOT \v|rc2|is_between~3_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_CLOCK_50~input_o\ <= NOT \CLOCK_50~input_o\;

-- Location: LCCOMB_X32_Y60_N6
\v|count1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~0_combout\ = \v|count1|value\(0) $ (VCC)
-- \v|count1|Add0~1\ = CARRY(\v|count1|value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(0),
	datad => VCC,
	combout => \v|count1|Add0~0_combout\,
	cout => \v|count1|Add0~1\);

-- Location: LCCOMB_X32_Y60_N12
\v|count1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~6_combout\ = (\v|count1|value\(3) & (!\v|count1|Add0~5\)) # (!\v|count1|value\(3) & ((\v|count1|Add0~5\) # (GND)))
-- \v|count1|Add0~7\ = CARRY((!\v|count1|Add0~5\) # (!\v|count1|value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(3),
	datad => VCC,
	cin => \v|count1|Add0~5\,
	combout => \v|count1|Add0~6_combout\,
	cout => \v|count1|Add0~7\);

-- Location: LCCOMB_X33_Y62_N10
\v|count2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~6_combout\ = (\v|count2|value\(3) & (!\v|count2|Add0~5\)) # (!\v|count2|value\(3) & ((\v|count2|Add0~5\) # (GND)))
-- \v|count2|Add0~7\ = CARRY((!\v|count2|Add0~5\) # (!\v|count2|value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(3),
	datad => VCC,
	cin => \v|count2|Add0~5\,
	combout => \v|count2|Add0~6_combout\,
	cout => \v|count2|Add0~7\);

-- Location: LCCOMB_X31_Y72_N10
\VGA_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~0_combout\ = (\v|count4|value\(7) & ((\v|count4|value\(2)) # ((\v|count4|value\(3)) # (\v|count4|value\(6))))) # (!\v|count4|value\(7) & (\v|count4|value\(3) & ((\v|count4|value\(2)) # (\v|count4|value\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(2),
	datab => \v|count4|value\(7),
	datac => \v|count4|value\(3),
	datad => \v|count4|value\(6),
	combout => \VGA_B~0_combout\);

-- Location: FF_X33_Y62_N11
\v|count2|value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~6_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(3));

-- Location: LCCOMB_X34_Y62_N22
\v|rc4|is_between~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc4|is_between~1_combout\ = (\v|count2|value\(3) & (\v|count2|value\(0) & (\v|count2|value\(4) & \v|count2|value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(3),
	datab => \v|count2|value\(0),
	datac => \v|count2|value\(4),
	datad => \v|count2|value\(2),
	combout => \v|rc4|is_between~1_combout\);

-- Location: FF_X32_Y60_N13
\v|count1|value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|Add0~6_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(3));

-- Location: FF_X33_Y60_N15
\v|count1|value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \v|count1|Add0~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(0));

-- Location: LCCOMB_X33_Y60_N4
\v|count1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Equal0~1_combout\ = (!\v|count1|value\(6) & (!\v|count1|value\(7) & (\v|count1|value\(0) & !\v|count1|value\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(6),
	datab => \v|count1|value\(7),
	datac => \v|count1|value\(0),
	datad => \v|count1|value\(8),
	combout => \v|count1|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y62_N16
\v|rowIncrement\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rowIncrement~combout\ = LCELL((\v|Equal0~combout\ & !\v|rc4|is_between~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v|Equal0~combout\,
	datad => \v|rc4|is_between~3_combout\,
	combout => \v|rowIncrement~combout\);

-- Location: LCCOMB_X33_Y60_N10
\v|Equal0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|Equal0~combout\ = LCELL((\v|count1|Equal0~2_combout\ & (\v|count1|Equal0~1_combout\ & \v|count1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|Equal0~2_combout\,
	datac => \v|count1|Equal0~1_combout\,
	datad => \v|count1|Equal0~3_combout\,
	combout => \v|Equal0~combout\);

-- Location: CLKCTRL_G10
\v|rowIncrement~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \v|rowIncrement~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \v|rowIncrement~clkctrl_outclk\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v|blank~3_combout\,
	devoe => ww_devoe,
	o => \VGA_BLANK_N~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_CLOCK_50~input_o\,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \VGA_SYNC_N~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v|rc2|ALT_INV_is_between~3_combout\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \v|rc1|ALT_INV_is_between~2_combout\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: LCCOMB_X32_Y72_N2
\v|count4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~0_combout\ = \v|count4|value\(0) $ (VCC)
-- \v|count4|Add0~1\ = CARRY(\v|count4|value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v|count4|value\(0),
	datad => VCC,
	combout => \v|count4|Add0~0_combout\,
	cout => \v|count4|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X32_Y72_N3
\v|count4|value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(0));

-- Location: LCCOMB_X32_Y72_N4
\v|count4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~2_combout\ = (\v|count4|value\(1) & (!\v|count4|Add0~1\)) # (!\v|count4|value\(1) & ((\v|count4|Add0~1\) # (GND)))
-- \v|count4|Add0~3\ = CARRY((!\v|count4|Add0~1\) # (!\v|count4|value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count4|value\(1),
	datad => VCC,
	cin => \v|count4|Add0~1\,
	combout => \v|count4|Add0~2_combout\,
	cout => \v|count4|Add0~3\);

-- Location: FF_X32_Y72_N5
\v|count4|value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(1));

-- Location: LCCOMB_X32_Y72_N6
\v|count4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~4_combout\ = (\v|count4|value\(2) & (\v|count4|Add0~3\ $ (GND))) # (!\v|count4|value\(2) & (!\v|count4|Add0~3\ & VCC))
-- \v|count4|Add0~5\ = CARRY((\v|count4|value\(2) & !\v|count4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(2),
	datad => VCC,
	cin => \v|count4|Add0~3\,
	combout => \v|count4|Add0~4_combout\,
	cout => \v|count4|Add0~5\);

-- Location: LCCOMB_X32_Y72_N8
\v|count4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~6_combout\ = (\v|count4|value\(3) & (!\v|count4|Add0~5\)) # (!\v|count4|value\(3) & ((\v|count4|Add0~5\) # (GND)))
-- \v|count4|Add0~7\ = CARRY((!\v|count4|Add0~5\) # (!\v|count4|value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count4|value\(3),
	datad => VCC,
	cin => \v|count4|Add0~5\,
	combout => \v|count4|Add0~6_combout\,
	cout => \v|count4|Add0~7\);

-- Location: FF_X32_Y72_N9
\v|count4|value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~6_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(3));

-- Location: LCCOMB_X32_Y72_N10
\v|count4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~8_combout\ = (\v|count4|value\(4) & (\v|count4|Add0~7\ $ (GND))) # (!\v|count4|value\(4) & (!\v|count4|Add0~7\ & VCC))
-- \v|count4|Add0~9\ = CARRY((\v|count4|value\(4) & !\v|count4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(4),
	datad => VCC,
	cin => \v|count4|Add0~7\,
	combout => \v|count4|Add0~8_combout\,
	cout => \v|count4|Add0~9\);

-- Location: LCCOMB_X32_Y72_N12
\v|count4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~10_combout\ = (\v|count4|value\(5) & (!\v|count4|Add0~9\)) # (!\v|count4|value\(5) & ((\v|count4|Add0~9\) # (GND)))
-- \v|count4|Add0~11\ = CARRY((!\v|count4|Add0~9\) # (!\v|count4|value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count4|value\(5),
	datad => VCC,
	cin => \v|count4|Add0~9\,
	combout => \v|count4|Add0~10_combout\,
	cout => \v|count4|Add0~11\);

-- Location: LCCOMB_X32_Y72_N14
\v|count4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~12_combout\ = (\v|count4|value\(6) & (\v|count4|Add0~11\ $ (GND))) # (!\v|count4|value\(6) & (!\v|count4|Add0~11\ & VCC))
-- \v|count4|Add0~13\ = CARRY((\v|count4|value\(6) & !\v|count4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(6),
	datad => VCC,
	cin => \v|count4|Add0~11\,
	combout => \v|count4|Add0~12_combout\,
	cout => \v|count4|Add0~13\);

-- Location: LCCOMB_X32_Y72_N16
\v|count4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~14_combout\ = (\v|count4|value\(7) & (!\v|count4|Add0~13\)) # (!\v|count4|value\(7) & ((\v|count4|Add0~13\) # (GND)))
-- \v|count4|Add0~15\ = CARRY((!\v|count4|Add0~13\) # (!\v|count4|value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count4|value\(7),
	datad => VCC,
	cin => \v|count4|Add0~13\,
	combout => \v|count4|Add0~14_combout\,
	cout => \v|count4|Add0~15\);

-- Location: LCCOMB_X32_Y72_N28
\v|count4|value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|value~0_combout\ = (\v|count4|Add0~14_combout\ & (((!\v|count4|Equal0~0_combout\) # (!\v|count4|Equal0~2_combout\)) # (!\v|count4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|Equal0~1_combout\,
	datab => \v|count4|Equal0~2_combout\,
	datac => \v|count4|Equal0~0_combout\,
	datad => \v|count4|Add0~14_combout\,
	combout => \v|count4|value~0_combout\);

-- Location: FF_X32_Y72_N29
\v|count4|value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|value~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(7));

-- Location: LCCOMB_X31_Y72_N16
\v|count4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Equal0~0_combout\ = (\v|count4|value\(6) & (\v|count4|value\(7) & (\v|count4|value\(3) & \v|count4|value\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(6),
	datab => \v|count4|value\(7),
	datac => \v|count4|value\(3),
	datad => \v|count4|value\(8),
	combout => \v|count4|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y72_N0
\v|count4|value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|value~2_combout\ = (\v|count4|Add0~10_combout\ & (((!\v|count4|Equal0~0_combout\) # (!\v|count4|Equal0~2_combout\)) # (!\v|count4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|Equal0~1_combout\,
	datab => \v|count4|Equal0~2_combout\,
	datac => \v|count4|Equal0~0_combout\,
	datad => \v|count4|Add0~10_combout\,
	combout => \v|count4|value~2_combout\);

-- Location: FF_X32_Y72_N1
\v|count4|value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|value~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(5));

-- Location: FF_X32_Y72_N11
\v|count4|value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~8_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(4));

-- Location: FF_X32_Y72_N7
\v|count4|value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~4_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(2));

-- Location: LCCOMB_X31_Y72_N6
\v|count4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Equal0~2_combout\ = (\v|count4|value\(1) & (!\v|count4|value\(5) & (\v|count4|value\(4) & \v|count4|value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(1),
	datab => \v|count4|value\(5),
	datac => \v|count4|value\(4),
	datad => \v|count4|value\(2),
	combout => \v|count4|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y72_N18
\v|count4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~16_combout\ = (\v|count4|value\(8) & (\v|count4|Add0~15\ $ (GND))) # (!\v|count4|value\(8) & (!\v|count4|Add0~15\ & VCC))
-- \v|count4|Add0~17\ = CARRY((\v|count4|value\(8) & !\v|count4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(8),
	datad => VCC,
	cin => \v|count4|Add0~15\,
	combout => \v|count4|Add0~16_combout\,
	cout => \v|count4|Add0~17\);

-- Location: LCCOMB_X32_Y72_N26
\v|count4|value~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|value~3_combout\ = (\v|count4|Add0~16_combout\ & (((!\v|count4|Equal0~0_combout\) # (!\v|count4|Equal0~2_combout\)) # (!\v|count4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|Equal0~1_combout\,
	datab => \v|count4|Equal0~2_combout\,
	datac => \v|count4|Equal0~0_combout\,
	datad => \v|count4|Add0~16_combout\,
	combout => \v|count4|value~3_combout\);

-- Location: FF_X32_Y72_N27
\v|count4|value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|value~3_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(8));

-- Location: LCCOMB_X32_Y72_N20
\v|count4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~18_combout\ = (\v|count4|value\(9) & (!\v|count4|Add0~17\)) # (!\v|count4|value\(9) & ((\v|count4|Add0~17\) # (GND)))
-- \v|count4|Add0~19\ = CARRY((!\v|count4|Add0~17\) # (!\v|count4|value\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count4|value\(9),
	datad => VCC,
	cin => \v|count4|Add0~17\,
	combout => \v|count4|Add0~18_combout\,
	cout => \v|count4|Add0~19\);

-- Location: FF_X32_Y72_N21
\v|count4|value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~18_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(9));

-- Location: LCCOMB_X32_Y72_N22
\v|count4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~20_combout\ = (\v|count4|value\(10) & (\v|count4|Add0~19\ $ (GND))) # (!\v|count4|value\(10) & (!\v|count4|Add0~19\ & VCC))
-- \v|count4|Add0~21\ = CARRY((\v|count4|value\(10) & !\v|count4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(10),
	datad => VCC,
	cin => \v|count4|Add0~19\,
	combout => \v|count4|Add0~20_combout\,
	cout => \v|count4|Add0~21\);

-- Location: FF_X32_Y72_N23
\v|count4|value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~20_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(10));

-- Location: LCCOMB_X32_Y72_N24
\v|count4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Add0~22_combout\ = \v|count4|Add0~21\ $ (\v|count4|value\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \v|count4|value\(11),
	cin => \v|count4|Add0~21\,
	combout => \v|count4|Add0~22_combout\);

-- Location: FF_X32_Y72_N25
\v|count4|value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|Add0~22_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(11));

-- Location: LCCOMB_X33_Y72_N4
\v|count4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|Equal0~1_combout\ = (\v|count4|value\(0) & (!\v|count4|value\(9) & (!\v|count4|value\(10) & !\v|count4|value\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(0),
	datab => \v|count4|value\(9),
	datac => \v|count4|value\(10),
	datad => \v|count4|value\(11),
	combout => \v|count4|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y72_N30
\v|count4|value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count4|value~1_combout\ = (\v|count4|Add0~12_combout\ & (((!\v|count4|Equal0~1_combout\) # (!\v|count4|Equal0~2_combout\)) # (!\v|count4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|Equal0~0_combout\,
	datab => \v|count4|Equal0~2_combout\,
	datac => \v|count4|Add0~12_combout\,
	datad => \v|count4|Equal0~1_combout\,
	combout => \v|count4|value~1_combout\);

-- Location: FF_X32_Y72_N31
\v|count4|value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|rowIncrement~clkctrl_outclk\,
	d => \v|count4|value~1_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count4|value\(6));

-- Location: LCCOMB_X30_Y72_N2
\VGA_G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (\v|count4|value\(5) & \v|count4|value\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v|count4|value\(5),
	datad => \v|count4|value\(6),
	combout => \VGA_G~0_combout\);

-- Location: LCCOMB_X30_Y72_N4
\VGA_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (\v|count4|value\(4) & (\v|count4|value\(7) & (\v|count4|value\(5) & \v|count4|value\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(4),
	datab => \v|count4|value\(7),
	datac => \v|count4|value\(5),
	datad => \v|count4|value\(6),
	combout => \VGA_R~0_combout\);

-- Location: LCCOMB_X30_Y72_N20
\VGA_R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~1_combout\ = (\v|count4|value\(8) & (((!\v|count4|value\(7))) # (!\VGA_G~0_combout\))) # (!\v|count4|value\(8) & (((\VGA_R~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(8),
	datab => \VGA_G~0_combout\,
	datac => \VGA_R~0_combout\,
	datad => \v|count4|value\(7),
	combout => \VGA_R~1_combout\);

-- Location: LCCOMB_X30_Y72_N6
\VGA_G~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~2_combout\ = (((!\v|count4|value\(4) & !\v|count4|value\(8))) # (!\v|count4|value\(6))) # (!\v|count4|value\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(4),
	datab => \v|count4|value\(8),
	datac => \v|count4|value\(5),
	datad => \v|count4|value\(6),
	combout => \VGA_G~2_combout\);

-- Location: LCCOMB_X31_Y72_N12
\VGA_G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~1_combout\ = (!\v|count4|value\(7) & ((\v|count4|value\(3) & ((\v|count4|value\(4)) # (\v|count4|value\(8)))) # (!\v|count4|value\(3) & (\v|count4|value\(4) & \v|count4|value\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count4|value\(7),
	datab => \v|count4|value\(3),
	datac => \v|count4|value\(4),
	datad => \v|count4|value\(8),
	combout => \VGA_G~1_combout\);

-- Location: LCCOMB_X30_Y72_N24
\VGA_G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~3_combout\ = (\VGA_G~2_combout\ & ((\v|count4|value\(7)) # ((\VGA_G~0_combout\ & \VGA_G~1_combout\)))) # (!\VGA_G~2_combout\ & (\VGA_G~0_combout\ & (\VGA_G~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_G~2_combout\,
	datab => \VGA_G~0_combout\,
	datac => \VGA_G~1_combout\,
	datad => \v|count4|value\(7),
	combout => \VGA_G~3_combout\);

-- Location: LCCOMB_X31_Y72_N0
\VGA_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~1_combout\ = (\VGA_B~0_combout\ & ((\v|count4|value\(4)) # (\v|count4|value\(8)))) # (!\VGA_B~0_combout\ & (\v|count4|value\(4) & \v|count4|value\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_B~0_combout\,
	datac => \v|count4|value\(4),
	datad => \v|count4|value\(8),
	combout => \VGA_B~1_combout\);

-- Location: LCCOMB_X31_Y72_N2
\VGA_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~2_combout\ = \v|count4|value\(6) $ (((\VGA_B~1_combout\ & \v|count4|value\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_B~1_combout\,
	datac => \v|count4|value\(5),
	datad => \v|count4|value\(6),
	combout => \VGA_B~2_combout\);

-- Location: LCCOMB_X34_Y62_N8
\v|count2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Equal0~0_combout\ = (!\v|count2|value\(5) & (!\v|count2|value\(7) & (!\v|count2|value\(6) & !\v|count2|value\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(5),
	datab => \v|count2|value\(7),
	datac => \v|count2|value\(6),
	datad => \v|count2|value\(8),
	combout => \v|count2|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y62_N4
\v|count2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~0_combout\ = \v|count2|value\(0) $ (VCC)
-- \v|count2|Add0~1\ = CARRY(\v|count2|value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(0),
	datad => VCC,
	combout => \v|count2|Add0~0_combout\,
	cout => \v|count2|Add0~1\);

-- Location: FF_X33_Y62_N5
\v|count2|value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(0));

-- Location: LCCOMB_X33_Y62_N6
\v|count2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~2_combout\ = (\v|count2|value\(1) & (!\v|count2|Add0~1\)) # (!\v|count2|value\(1) & ((\v|count2|Add0~1\) # (GND)))
-- \v|count2|Add0~3\ = CARRY((!\v|count2|Add0~1\) # (!\v|count2|value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(1),
	datad => VCC,
	cin => \v|count2|Add0~1\,
	combout => \v|count2|Add0~2_combout\,
	cout => \v|count2|Add0~3\);

-- Location: LCCOMB_X33_Y62_N30
\v|count2|value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|value~1_combout\ = (!\v|count2|Equal0~3_combout\ & \v|count2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v|count2|Equal0~3_combout\,
	datad => \v|count2|Add0~2_combout\,
	combout => \v|count2|value~1_combout\);

-- Location: FF_X33_Y62_N31
\v|count2|value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|value~1_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(1));

-- Location: LCCOMB_X33_Y62_N8
\v|count2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~4_combout\ = (\v|count2|value\(2) & (\v|count2|Add0~3\ $ (GND))) # (!\v|count2|value\(2) & (!\v|count2|Add0~3\ & VCC))
-- \v|count2|Add0~5\ = CARRY((\v|count2|value\(2) & !\v|count2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(2),
	datad => VCC,
	cin => \v|count2|Add0~3\,
	combout => \v|count2|Add0~4_combout\,
	cout => \v|count2|Add0~5\);

-- Location: FF_X33_Y62_N9
\v|count2|value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~4_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(2));

-- Location: LCCOMB_X34_Y62_N28
\v|rc2|is_between~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc2|is_between~0_combout\ = (!\v|count2|value\(3) & (!\v|count2|value\(1) & !\v|count2|value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(3),
	datab => \v|count2|value\(1),
	datad => \v|count2|value\(2),
	combout => \v|rc2|is_between~0_combout\);

-- Location: LCCOMB_X34_Y62_N12
\v|count2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Equal0~1_combout\ = (\v|count2|Equal0~0_combout\ & (!\v|count2|value\(9) & \v|rc2|is_between~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|Equal0~0_combout\,
	datac => \v|count2|value\(9),
	datad => \v|rc2|is_between~0_combout\,
	combout => \v|count2|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y62_N22
\v|count2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~18_combout\ = (\v|count2|value\(9) & (!\v|count2|Add0~17\)) # (!\v|count2|value\(9) & ((\v|count2|Add0~17\) # (GND)))
-- \v|count2|Add0~19\ = CARRY((!\v|count2|Add0~17\) # (!\v|count2|value\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(9),
	datad => VCC,
	cin => \v|count2|Add0~17\,
	combout => \v|count2|Add0~18_combout\,
	cout => \v|count2|Add0~19\);

-- Location: LCCOMB_X33_Y62_N24
\v|count2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~20_combout\ = (\v|count2|value\(10) & (\v|count2|Add0~19\ $ (GND))) # (!\v|count2|value\(10) & (!\v|count2|Add0~19\ & VCC))
-- \v|count2|Add0~21\ = CARRY((\v|count2|value\(10) & !\v|count2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(10),
	datad => VCC,
	cin => \v|count2|Add0~19\,
	combout => \v|count2|Add0~20_combout\,
	cout => \v|count2|Add0~21\);

-- Location: LCCOMB_X33_Y62_N2
\v|count2|value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|value~0_combout\ = (\v|count2|Add0~20_combout\ & ((!\v|count2|Equal0~1_combout\) # (!\v|count2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|Equal0~2_combout\,
	datac => \v|count2|Equal0~1_combout\,
	datad => \v|count2|Add0~20_combout\,
	combout => \v|count2|value~0_combout\);

-- Location: FF_X33_Y62_N3
\v|count2|value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|value~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(10));

-- Location: LCCOMB_X33_Y62_N26
\v|count2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~22_combout\ = \v|count2|Add0~21\ $ (\v|count2|value\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \v|count2|value\(11),
	cin => \v|count2|Add0~21\,
	combout => \v|count2|Add0~22_combout\);

-- Location: FF_X33_Y62_N27
\v|count2|value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~22_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(11));

-- Location: LCCOMB_X34_Y62_N26
\v|count2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Equal0~2_combout\ = (\v|count2|value\(4) & (\v|count2|value\(0) & (!\v|count2|value\(11) & \v|count2|value\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(4),
	datab => \v|count2|value\(0),
	datac => \v|count2|value\(11),
	datad => \v|count2|value\(10),
	combout => \v|count2|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y62_N10
\v|count2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Equal0~3_combout\ = (!\v|count2|value\(9) & (\v|count2|Equal0~0_combout\ & (\v|count2|Equal0~2_combout\ & \v|rc2|is_between~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(9),
	datab => \v|count2|Equal0~0_combout\,
	datac => \v|count2|Equal0~2_combout\,
	datad => \v|rc2|is_between~0_combout\,
	combout => \v|count2|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y62_N12
\v|count2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~8_combout\ = (\v|count2|value\(4) & (\v|count2|Add0~7\ $ (GND))) # (!\v|count2|value\(4) & (!\v|count2|Add0~7\ & VCC))
-- \v|count2|Add0~9\ = CARRY((\v|count2|value\(4) & !\v|count2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(4),
	datad => VCC,
	cin => \v|count2|Add0~7\,
	combout => \v|count2|Add0~8_combout\,
	cout => \v|count2|Add0~9\);

-- Location: LCCOMB_X33_Y62_N0
\v|count2|value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|value~2_combout\ = (!\v|count2|Equal0~3_combout\ & \v|count2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \v|count2|Equal0~3_combout\,
	datad => \v|count2|Add0~8_combout\,
	combout => \v|count2|value~2_combout\);

-- Location: FF_X33_Y62_N1
\v|count2|value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|value~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(4));

-- Location: LCCOMB_X33_Y62_N14
\v|count2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~10_combout\ = (\v|count2|value\(5) & (!\v|count2|Add0~9\)) # (!\v|count2|value\(5) & ((\v|count2|Add0~9\) # (GND)))
-- \v|count2|Add0~11\ = CARRY((!\v|count2|Add0~9\) # (!\v|count2|value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(5),
	datad => VCC,
	cin => \v|count2|Add0~9\,
	combout => \v|count2|Add0~10_combout\,
	cout => \v|count2|Add0~11\);

-- Location: FF_X33_Y62_N15
\v|count2|value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~10_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(5));

-- Location: LCCOMB_X33_Y62_N16
\v|count2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~12_combout\ = (\v|count2|value\(6) & (\v|count2|Add0~11\ $ (GND))) # (!\v|count2|value\(6) & (!\v|count2|Add0~11\ & VCC))
-- \v|count2|Add0~13\ = CARRY((\v|count2|value\(6) & !\v|count2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(6),
	datad => VCC,
	cin => \v|count2|Add0~11\,
	combout => \v|count2|Add0~12_combout\,
	cout => \v|count2|Add0~13\);

-- Location: FF_X33_Y62_N17
\v|count2|value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~12_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(6));

-- Location: LCCOMB_X33_Y62_N18
\v|count2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~14_combout\ = (\v|count2|value\(7) & (!\v|count2|Add0~13\)) # (!\v|count2|value\(7) & ((\v|count2|Add0~13\) # (GND)))
-- \v|count2|Add0~15\ = CARRY((!\v|count2|Add0~13\) # (!\v|count2|value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(7),
	datad => VCC,
	cin => \v|count2|Add0~13\,
	combout => \v|count2|Add0~14_combout\,
	cout => \v|count2|Add0~15\);

-- Location: FF_X33_Y62_N19
\v|count2|value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~14_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(7));

-- Location: LCCOMB_X33_Y62_N20
\v|count2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count2|Add0~16_combout\ = (\v|count2|value\(8) & (\v|count2|Add0~15\ $ (GND))) # (!\v|count2|value\(8) & (!\v|count2|Add0~15\ & VCC))
-- \v|count2|Add0~17\ = CARRY((\v|count2|value\(8) & !\v|count2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count2|value\(8),
	datad => VCC,
	cin => \v|count2|Add0~15\,
	combout => \v|count2|Add0~16_combout\,
	cout => \v|count2|Add0~17\);

-- Location: FF_X33_Y62_N21
\v|count2|value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~16_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(8));

-- Location: FF_X33_Y62_N23
\v|count2|value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \v|Equal0~combout\,
	d => \v|count2|Add0~18_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count2|value\(9));

-- Location: LCCOMB_X33_Y62_N28
\v|rc4|is_between~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc4|is_between~0_combout\ = (\v|count2|value\(6) & (\v|count2|value\(7) & (\v|count2|value\(5) & \v|count2|value\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(6),
	datab => \v|count2|value\(7),
	datac => \v|count2|value\(5),
	datad => \v|count2|value\(8),
	combout => \v|rc4|is_between~0_combout\);

-- Location: LCCOMB_X34_Y62_N14
\v|rc4|is_between~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc4|is_between~2_combout\ = (\v|rc4|is_between~1_combout\ & ((\v|count2|value\(1) & ((\v|rc4|is_between~0_combout\))) # (!\v|count2|value\(1) & (\v|count2|Equal0~0_combout\)))) # (!\v|rc4|is_between~1_combout\ & (((\v|count2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|rc4|is_between~1_combout\,
	datab => \v|count2|value\(1),
	datac => \v|count2|Equal0~0_combout\,
	datad => \v|rc4|is_between~0_combout\,
	combout => \v|rc4|is_between~2_combout\);

-- Location: LCCOMB_X34_Y62_N20
\v|rc4|is_between~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc4|is_between~3_combout\ = (\v|count2|value\(11)) # ((\v|count2|value\(9)) # ((\v|rc4|is_between~2_combout\) # (\v|count2|value\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(11),
	datab => \v|count2|value\(9),
	datac => \v|rc4|is_between~2_combout\,
	datad => \v|count2|value\(10),
	combout => \v|rc4|is_between~3_combout\);

-- Location: LCCOMB_X32_Y60_N8
\v|count1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~2_combout\ = (\v|count1|value\(1) & (!\v|count1|Add0~1\)) # (!\v|count1|value\(1) & ((\v|count1|Add0~1\) # (GND)))
-- \v|count1|Add0~3\ = CARRY((!\v|count1|Add0~1\) # (!\v|count1|value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(1),
	datad => VCC,
	cin => \v|count1|Add0~1\,
	combout => \v|count1|Add0~2_combout\,
	cout => \v|count1|Add0~3\);

-- Location: LCCOMB_X32_Y60_N10
\v|count1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~4_combout\ = (\v|count1|value\(2) & (\v|count1|Add0~3\ $ (GND))) # (!\v|count1|value\(2) & (!\v|count1|Add0~3\ & VCC))
-- \v|count1|Add0~5\ = CARRY((\v|count1|value\(2) & !\v|count1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(2),
	datad => VCC,
	cin => \v|count1|Add0~3\,
	combout => \v|count1|Add0~4_combout\,
	cout => \v|count1|Add0~5\);

-- Location: LCCOMB_X32_Y60_N14
\v|count1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~8_combout\ = (\v|count1|value\(4) & (\v|count1|Add0~7\ $ (GND))) # (!\v|count1|value\(4) & (!\v|count1|Add0~7\ & VCC))
-- \v|count1|Add0~9\ = CARRY((\v|count1|value\(4) & !\v|count1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|value\(4),
	datad => VCC,
	cin => \v|count1|Add0~7\,
	combout => \v|count1|Add0~8_combout\,
	cout => \v|count1|Add0~9\);

-- Location: FF_X32_Y60_N15
\v|count1|value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|Add0~8_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(4));

-- Location: FF_X32_Y60_N31
\v|count1|value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \v|count1|Add0~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(1));

-- Location: FF_X32_Y60_N11
\v|count1|value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|Add0~4_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(2));

-- Location: LCCOMB_X32_Y60_N30
\v|count1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Equal0~3_combout\ = (\v|count1|value\(3) & (\v|count1|value\(4) & (\v|count1|value\(1) & \v|count1|value\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(3),
	datab => \v|count1|value\(4),
	datac => \v|count1|value\(1),
	datad => \v|count1|value\(2),
	combout => \v|count1|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y60_N16
\v|count1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~10_combout\ = (\v|count1|value\(5) & (!\v|count1|Add0~9\)) # (!\v|count1|value\(5) & ((\v|count1|Add0~9\) # (GND)))
-- \v|count1|Add0~11\ = CARRY((!\v|count1|Add0~9\) # (!\v|count1|value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|value\(5),
	datad => VCC,
	cin => \v|count1|Add0~9\,
	combout => \v|count1|Add0~10_combout\,
	cout => \v|count1|Add0~11\);

-- Location: FF_X32_Y60_N17
\v|count1|value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|Add0~10_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(5));

-- Location: LCCOMB_X32_Y60_N18
\v|count1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~12_combout\ = (\v|count1|value\(6) & (\v|count1|Add0~11\ $ (GND))) # (!\v|count1|value\(6) & (!\v|count1|Add0~11\ & VCC))
-- \v|count1|Add0~13\ = CARRY((\v|count1|value\(6) & !\v|count1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|value\(6),
	datad => VCC,
	cin => \v|count1|Add0~11\,
	combout => \v|count1|Add0~12_combout\,
	cout => \v|count1|Add0~13\);

-- Location: LCCOMB_X32_Y60_N26
\v|count1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~20_combout\ = (\v|count1|value\(10) & (\v|count1|Add0~19\ $ (GND))) # (!\v|count1|value\(10) & (!\v|count1|Add0~19\ & VCC))
-- \v|count1|Add0~21\ = CARRY((\v|count1|value\(10) & !\v|count1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|value\(10),
	datad => VCC,
	cin => \v|count1|Add0~19\,
	combout => \v|count1|Add0~20_combout\,
	cout => \v|count1|Add0~21\);

-- Location: LCCOMB_X32_Y60_N28
\v|count1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~22_combout\ = \v|count1|Add0~21\ $ (\v|count1|value\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \v|count1|value\(11),
	cin => \v|count1|Add0~21\,
	combout => \v|count1|Add0~22_combout\);

-- Location: FF_X32_Y60_N29
\v|count1|value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|Add0~22_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(11));

-- Location: LCCOMB_X33_Y60_N8
\v|count1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Equal0~2_combout\ = (\v|count1|value\(5) & (!\v|count1|value\(11) & (\v|count1|value\(10) & \v|count1|value\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(5),
	datab => \v|count1|value\(11),
	datac => \v|count1|value\(10),
	datad => \v|count1|value\(9),
	combout => \v|count1|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y60_N0
\v|count1|value~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|value~0_combout\ = (\v|count1|Add0~12_combout\ & (((!\v|count1|Equal0~2_combout\) # (!\v|count1|Equal0~3_combout\)) # (!\v|count1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|Equal0~1_combout\,
	datab => \v|count1|Equal0~3_combout\,
	datac => \v|count1|Add0~12_combout\,
	datad => \v|count1|Equal0~2_combout\,
	combout => \v|count1|value~0_combout\);

-- Location: FF_X32_Y60_N1
\v|count1|value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|value~0_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(6));

-- Location: LCCOMB_X32_Y60_N20
\v|count1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~14_combout\ = (\v|count1|value\(7) & (!\v|count1|Add0~13\)) # (!\v|count1|value\(7) & ((\v|count1|Add0~13\) # (GND)))
-- \v|count1|Add0~15\ = CARRY((!\v|count1|Add0~13\) # (!\v|count1|value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|value\(7),
	datad => VCC,
	cin => \v|count1|Add0~13\,
	combout => \v|count1|Add0~14_combout\,
	cout => \v|count1|Add0~15\);

-- Location: FF_X32_Y60_N21
\v|count1|value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|Add0~14_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(7));

-- Location: LCCOMB_X32_Y60_N22
\v|count1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~16_combout\ = (\v|count1|value\(8) & (\v|count1|Add0~15\ $ (GND))) # (!\v|count1|value\(8) & (!\v|count1|Add0~15\ & VCC))
-- \v|count1|Add0~17\ = CARRY((\v|count1|value\(8) & !\v|count1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(8),
	datad => VCC,
	cin => \v|count1|Add0~15\,
	combout => \v|count1|Add0~16_combout\,
	cout => \v|count1|Add0~17\);

-- Location: LCCOMB_X32_Y60_N24
\v|count1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Add0~18_combout\ = (\v|count1|value\(9) & (!\v|count1|Add0~17\)) # (!\v|count1|value\(9) & ((\v|count1|Add0~17\) # (GND)))
-- \v|count1|Add0~19\ = CARRY((!\v|count1|Add0~17\) # (!\v|count1|value\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|value\(9),
	datad => VCC,
	cin => \v|count1|Add0~17\,
	combout => \v|count1|Add0~18_combout\,
	cout => \v|count1|Add0~19\);

-- Location: LCCOMB_X32_Y60_N2
\v|count1|value~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|value~2_combout\ = (\v|count1|Add0~18_combout\ & (((!\v|count1|Equal0~2_combout\) # (!\v|count1|Equal0~3_combout\)) # (!\v|count1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|Equal0~1_combout\,
	datab => \v|count1|Add0~18_combout\,
	datac => \v|count1|Equal0~3_combout\,
	datad => \v|count1|Equal0~2_combout\,
	combout => \v|count1|value~2_combout\);

-- Location: FF_X32_Y60_N3
\v|count1|value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|value~2_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(9));

-- Location: LCCOMB_X32_Y60_N4
\v|count1|value~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|value~1_combout\ = (\v|count1|Add0~20_combout\ & (((!\v|count1|Equal0~2_combout\) # (!\v|count1|Equal0~3_combout\)) # (!\v|count1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|Equal0~1_combout\,
	datab => \v|count1|Equal0~3_combout\,
	datac => \v|count1|Add0~20_combout\,
	datad => \v|count1|Equal0~2_combout\,
	combout => \v|count1|value~1_combout\);

-- Location: FF_X32_Y60_N5
\v|count1|value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|value~1_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(10));

-- Location: FF_X32_Y60_N23
\v|count1|value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \v|count1|Add0~16_combout\,
	clrn => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \v|count1|value\(8));

-- Location: LCCOMB_X33_Y60_N24
\v|blank~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|blank~1_combout\ = (!\v|count1|value\(5) & (!\v|count1|value\(7) & (!\v|count1|value\(6) & !\v|count1|value\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(5),
	datab => \v|count1|value\(7),
	datac => \v|count1|value\(6),
	datad => \v|count1|value\(8),
	combout => \v|blank~1_combout\);

-- Location: LCCOMB_X33_Y60_N20
\v|blank~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|blank~2_combout\ = (\v|count1|value\(10) & ((\v|blank~1_combout\) # (!\v|count1|value\(9)))) # (!\v|count1|value\(10) & ((\v|count1|value\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \v|count1|value\(10),
	datac => \v|blank~1_combout\,
	datad => \v|count1|value\(9),
	combout => \v|blank~2_combout\);

-- Location: LCCOMB_X33_Y60_N14
\v|count1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|count1|Equal0~0_combout\ = (!\v|count1|value\(6) & !\v|count1|value\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(6),
	datad => \v|count1|value\(7),
	combout => \v|count1|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y60_N18
\v|blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|blank~0_combout\ = (\v|count1|value\(8) & (!\v|count1|value\(10) & ((\v|count1|value\(5)) # (!\v|count1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(5),
	datab => \v|count1|value\(8),
	datac => \v|count1|value\(10),
	datad => \v|count1|Equal0~0_combout\,
	combout => \v|blank~0_combout\);

-- Location: LCCOMB_X33_Y60_N28
\v|blank~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|blank~3_combout\ = (!\v|rc4|is_between~3_combout\ & (!\v|count1|value\(11) & ((\v|blank~2_combout\) # (\v|blank~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|rc4|is_between~3_combout\,
	datab => \v|blank~2_combout\,
	datac => \v|blank~0_combout\,
	datad => \v|count1|value\(11),
	combout => \v|blank~3_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LCCOMB_X34_Y62_N18
\v|rc2|is_between~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc2|is_between~2_combout\ = (\v|count2|value\(9)) # (((\v|count2|value\(4) & !\v|rc2|is_between~0_combout\)) # (!\v|count2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(4),
	datab => \v|count2|value\(9),
	datac => \v|count2|Equal0~0_combout\,
	datad => \v|rc2|is_between~0_combout\,
	combout => \v|rc2|is_between~2_combout\);

-- Location: LCCOMB_X34_Y62_N4
\v|rc2|is_between~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc2|is_between~1_combout\ = (\v|count2|value\(11)) # ((!\v|count2|value\(4) & (\v|count2|Equal0~1_combout\ & !\v|count2|value\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(4),
	datab => \v|count2|value\(11),
	datac => \v|count2|Equal0~1_combout\,
	datad => \v|count2|value\(10),
	combout => \v|rc2|is_between~1_combout\);

-- Location: LCCOMB_X34_Y62_N24
\v|rc2|is_between~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc2|is_between~3_combout\ = (\v|rc2|is_between~1_combout\) # ((\v|count2|value\(10) & \v|rc2|is_between~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count2|value\(10),
	datac => \v|rc2|is_between~2_combout\,
	datad => \v|rc2|is_between~1_combout\,
	combout => \v|rc2|is_between~3_combout\);

-- Location: LCCOMB_X33_Y60_N12
\v|rc1|is_between~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc1|is_between~0_combout\ = (\v|count1|value\(9) & (\v|count1|value\(10) & ((\v|count1|value\(8)) # (!\v|count1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(9),
	datab => \v|count1|value\(8),
	datac => \v|count1|value\(10),
	datad => \v|count1|Equal0~0_combout\,
	combout => \v|rc1|is_between~0_combout\);

-- Location: LCCOMB_X33_Y60_N22
\v|rc1|is_between~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc1|is_between~1_combout\ = (!\v|count1|value\(9) & (!\v|count1|value\(10) & ((!\v|count1|value\(7)) # (!\v|count1|value\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|count1|value\(9),
	datab => \v|count1|value\(10),
	datac => \v|count1|value\(6),
	datad => \v|count1|value\(7),
	combout => \v|rc1|is_between~1_combout\);

-- Location: LCCOMB_X33_Y60_N26
\v|rc1|is_between~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \v|rc1|is_between~2_combout\ = (\v|rc1|is_between~0_combout\) # ((\v|count1|value\(11)) # ((!\v|count1|value\(8) & \v|rc1|is_between~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \v|rc1|is_between~0_combout\,
	datab => \v|count1|value\(8),
	datac => \v|rc1|is_between~1_combout\,
	datad => \v|count1|value\(11),
	combout => \v|rc1|is_between~2_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_VGA_BLANK_N <= \VGA_BLANK_N~output_o\;

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_VGA_SYNC_N <= \VGA_SYNC_N~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;
END structure;


