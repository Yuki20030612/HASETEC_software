-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 Patches 1.02i SJ Lite Edition"

-- DATE "08/28/2025 19:16:49"

-- 
-- Device: Altera 10CL006YE144C6G Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pulse_Td IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pulse_SW_Td : BUFFER std_logic;
	pulse_D_Td : BUFFER std_logic
	);
END pulse_Td;

-- Design Ports Information
-- pulse_SW_Td	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pulse_D_Td	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pulse_Td IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_pulse_SW_Td : std_logic;
SIGNAL ww_pulse_D_Td : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulse_SW_Td~output_o\ : std_logic;
SIGNAL \pulse_D_Td~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~0_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|dffe4~feeder_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|dffe4~q\ : std_logic;
SIGNAL \U0|Add0~0_combout\ : std_logic;
SIGNAL \U0|Add0~1\ : std_logic;
SIGNAL \U0|Add0~2_combout\ : std_logic;
SIGNAL \U0|Add0~3\ : std_logic;
SIGNAL \U0|Add0~4_combout\ : std_logic;
SIGNAL \U0|Add0~7\ : std_logic;
SIGNAL \U0|Add0~8_combout\ : std_logic;
SIGNAL \U0|Add0~9\ : std_logic;
SIGNAL \U0|Add0~10_combout\ : std_logic;
SIGNAL \U0|Add0~11\ : std_logic;
SIGNAL \U0|Add0~12_combout\ : std_logic;
SIGNAL \U0|cnt_Toff~4_combout\ : std_logic;
SIGNAL \U0|Equal1~3_combout\ : std_logic;
SIGNAL \U0|cnt_Toff~1_combout\ : std_logic;
SIGNAL \U0|Add0~5\ : std_logic;
SIGNAL \U0|Add0~6_combout\ : std_logic;
SIGNAL \U0|Add0~13\ : std_logic;
SIGNAL \U0|Add0~14_combout\ : std_logic;
SIGNAL \U0|cnt_Toff~0_combout\ : std_logic;
SIGNAL \U0|Equal1~0_combout\ : std_logic;
SIGNAL \U0|Equal1~1_combout\ : std_logic;
SIGNAL \U0|Add0~15\ : std_logic;
SIGNAL \U0|Add0~16_combout\ : std_logic;
SIGNAL \U0|cnt_Toff~3_combout\ : std_logic;
SIGNAL \U0|Add0~17\ : std_logic;
SIGNAL \U0|Add0~18_combout\ : std_logic;
SIGNAL \U0|Add0~19\ : std_logic;
SIGNAL \U0|Add0~20_combout\ : std_logic;
SIGNAL \U0|Add0~21\ : std_logic;
SIGNAL \U0|Add0~22_combout\ : std_logic;
SIGNAL \U0|cnt_Toff~2_combout\ : std_logic;
SIGNAL \U0|Equal1~2_combout\ : std_logic;
SIGNAL \U0|pul~0_combout\ : std_logic;
SIGNAL \U0|pul~1_combout\ : std_logic;
SIGNAL \U0|pul~2_combout\ : std_logic;
SIGNAL \U0|pul~q\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[4]~4_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[5]~5_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[6]~6_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \U0|pul~_wirecell_combout\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \SW~0_combout\ : std_logic;
SIGNAL \SW~q\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a1\ : std_logic;
SIGNAL \D~0_combout\ : std_logic;
SIGNAL \D~q\ : std_logic;
SIGNAL \U0|cnt_Toff\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|ALT_INV_dffe4~q\ : std_logic;
SIGNAL \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
pulse_SW_Td <= ww_pulse_SW_Td;
pulse_D_Td <= ww_pulse_D_Td;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & \U0|pul~_wirecell_combout\ & \U0|pul~q\);

\U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\ <= (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4)
& \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\ <= (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4)
& \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ <= \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(0);
\U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a1\ <= \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\(1);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\U1|shift_rtl_0|auto_generated|ALT_INV_dffe4~q\ <= NOT \U1|shift_rtl_0|auto_generated|dffe4~q\;
\U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\ <= NOT \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N2
\pulse_SW_Td~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW~q\,
	devoe => ww_devoe,
	o => \pulse_SW_Td~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\pulse_D_Td~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D~q\,
	devoe => ww_devoe,
	o => \pulse_D_Td~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y6_N12
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\ = !\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(0)
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\ = CARRY(!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(0),
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X0_Y11_N8
\rst~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X14_Y6_N13
\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(0));

-- Location: LCCOMB_X14_Y6_N14
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\ = (\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(1) & (!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\)) # (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(1) & 
-- ((\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\) # (GND)))
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ = CARRY((!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\) # (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(1),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita0~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\);

-- Location: FF_X14_Y6_N15
\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(1));

-- Location: LCCOMB_X14_Y6_N16
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\ = (\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & (\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\ & VCC)) # 
-- (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & (!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\))
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ = CARRY((!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(2) & !\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(2),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita1~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\);

-- Location: FF_X14_Y6_N17
\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(2));

-- Location: LCCOMB_X14_Y6_N18
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\ = (\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(3) & ((GND) # (!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\))) # 
-- (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(3) & (\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\ $ (GND)))
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\ = CARRY((\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(3)) # (!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(3),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita2~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\);

-- Location: FF_X14_Y6_N19
\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(3));

-- Location: LCCOMB_X14_Y6_N20
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~combout\ = (\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(4) & (\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\ & VCC)) # 
-- (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(4) & (!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\))
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~COUT\ = CARRY((!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(4) & !\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(4),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita3~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~COUT\);

-- Location: FF_X14_Y6_N21
\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(4));

-- Location: LCCOMB_X14_Y6_N22
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~combout\ = (\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(5) & (!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~COUT\)) # (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(5) & 
-- ((\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~COUT\) # (GND)))
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~COUT\ = CARRY((!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~COUT\) # (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(5),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita4~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~COUT\);

-- Location: FF_X14_Y6_N23
\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(5));

-- Location: LCCOMB_X14_Y6_N24
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~combout\ = (\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(6) & (\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(6) & (!\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~COUT\ & VCC))
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~COUT\ = CARRY((\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(6) & !\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(6),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita5~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~COUT\);

-- Location: FF_X14_Y6_N25
\U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	ena => \U1|shift_rtl_0|auto_generated|cntr3|ALT_INV_counter_comb_bita6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr3|counter_reg_bit\(6));

-- Location: LCCOMB_X14_Y6_N26
\U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~0_combout\ = \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~0_combout\);

-- Location: LCCOMB_X14_Y6_N8
\U1|shift_rtl_0|auto_generated|dffe4~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|dffe4~feeder_combout\ = \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1|shift_rtl_0|auto_generated|cntr3|counter_comb_bita6~0_combout\,
	combout => \U1|shift_rtl_0|auto_generated|dffe4~feeder_combout\);

-- Location: FF_X14_Y6_N9
\U1|shift_rtl_0|auto_generated|dffe4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|dffe4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|dffe4~q\);

-- Location: LCCOMB_X13_Y8_N2
\U0|Add0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~0_combout\ = \U0|cnt_Toff\(0) $ (VCC)
-- \U0|Add0~1\ = CARRY(\U0|cnt_Toff\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|cnt_Toff\(0),
	datad => VCC,
	combout => \U0|Add0~0_combout\,
	cout => \U0|Add0~1\);

-- Location: FF_X13_Y8_N3
\U0|cnt_Toff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(0));

-- Location: LCCOMB_X13_Y8_N4
\U0|Add0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~2_combout\ = (\U0|cnt_Toff\(1) & (!\U0|Add0~1\)) # (!\U0|cnt_Toff\(1) & ((\U0|Add0~1\) # (GND)))
-- \U0|Add0~3\ = CARRY((!\U0|Add0~1\) # (!\U0|cnt_Toff\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|cnt_Toff\(1),
	datad => VCC,
	cin => \U0|Add0~1\,
	combout => \U0|Add0~2_combout\,
	cout => \U0|Add0~3\);

-- Location: FF_X13_Y8_N5
\U0|cnt_Toff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(1));

-- Location: LCCOMB_X13_Y8_N6
\U0|Add0~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~4_combout\ = (\U0|cnt_Toff\(2) & (\U0|Add0~3\ $ (GND))) # (!\U0|cnt_Toff\(2) & (!\U0|Add0~3\ & VCC))
-- \U0|Add0~5\ = CARRY((\U0|cnt_Toff\(2) & !\U0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(2),
	datad => VCC,
	cin => \U0|Add0~3\,
	combout => \U0|Add0~4_combout\,
	cout => \U0|Add0~5\);

-- Location: LCCOMB_X13_Y8_N8
\U0|Add0~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~6_combout\ = (\U0|cnt_Toff\(3) & (!\U0|Add0~5\)) # (!\U0|cnt_Toff\(3) & ((\U0|Add0~5\) # (GND)))
-- \U0|Add0~7\ = CARRY((!\U0|Add0~5\) # (!\U0|cnt_Toff\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|cnt_Toff\(3),
	datad => VCC,
	cin => \U0|Add0~5\,
	combout => \U0|Add0~6_combout\,
	cout => \U0|Add0~7\);

-- Location: LCCOMB_X13_Y8_N10
\U0|Add0~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~8_combout\ = (\U0|cnt_Toff\(4) & (\U0|Add0~7\ $ (GND))) # (!\U0|cnt_Toff\(4) & (!\U0|Add0~7\ & VCC))
-- \U0|Add0~9\ = CARRY((\U0|cnt_Toff\(4) & !\U0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(4),
	datad => VCC,
	cin => \U0|Add0~7\,
	combout => \U0|Add0~8_combout\,
	cout => \U0|Add0~9\);

-- Location: FF_X13_Y8_N11
\U0|cnt_Toff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(4));

-- Location: LCCOMB_X13_Y8_N12
\U0|Add0~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~10_combout\ = (\U0|cnt_Toff\(5) & (!\U0|Add0~9\)) # (!\U0|cnt_Toff\(5) & ((\U0|Add0~9\) # (GND)))
-- \U0|Add0~11\ = CARRY((!\U0|Add0~9\) # (!\U0|cnt_Toff\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(5),
	datad => VCC,
	cin => \U0|Add0~9\,
	combout => \U0|Add0~10_combout\,
	cout => \U0|Add0~11\);

-- Location: FF_X13_Y8_N13
\U0|cnt_Toff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(5));

-- Location: LCCOMB_X13_Y8_N14
\U0|Add0~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~12_combout\ = (\U0|cnt_Toff\(6) & (\U0|Add0~11\ $ (GND))) # (!\U0|cnt_Toff\(6) & (!\U0|Add0~11\ & VCC))
-- \U0|Add0~13\ = CARRY((\U0|cnt_Toff\(6) & !\U0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(6),
	datad => VCC,
	cin => \U0|Add0~11\,
	combout => \U0|Add0~12_combout\,
	cout => \U0|Add0~13\);

-- Location: LCCOMB_X13_Y8_N26
\U0|cnt_Toff~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|cnt_Toff~4_combout\ = (\U0|Add0~12_combout\ & (((!\U0|Equal1~1_combout\) # (!\U0|Equal1~2_combout\)) # (!\U0|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal1~3_combout\,
	datab => \U0|Equal1~2_combout\,
	datac => \U0|Add0~12_combout\,
	datad => \U0|Equal1~1_combout\,
	combout => \U0|cnt_Toff~4_combout\);

-- Location: FF_X13_Y8_N27
\U0|cnt_Toff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|cnt_Toff~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(6));

-- Location: LCCOMB_X14_Y8_N18
\U0|Equal1~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Equal1~3_combout\ = (\U0|cnt_Toff\(6) & !\U0|cnt_Toff\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U0|cnt_Toff\(6),
	datad => \U0|cnt_Toff\(5),
	combout => \U0|Equal1~3_combout\);

-- Location: LCCOMB_X13_Y8_N30
\U0|cnt_Toff~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|cnt_Toff~1_combout\ = (\U0|Add0~4_combout\ & (((!\U0|Equal1~1_combout\) # (!\U0|Equal1~2_combout\)) # (!\U0|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Add0~4_combout\,
	datab => \U0|Equal1~3_combout\,
	datac => \U0|Equal1~2_combout\,
	datad => \U0|Equal1~1_combout\,
	combout => \U0|cnt_Toff~1_combout\);

-- Location: FF_X13_Y8_N31
\U0|cnt_Toff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|cnt_Toff~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(2));

-- Location: FF_X13_Y8_N9
\U0|cnt_Toff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(3));

-- Location: LCCOMB_X13_Y8_N16
\U0|Add0~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~14_combout\ = (\U0|cnt_Toff\(7) & (!\U0|Add0~13\)) # (!\U0|cnt_Toff\(7) & ((\U0|Add0~13\) # (GND)))
-- \U0|Add0~15\ = CARRY((!\U0|Add0~13\) # (!\U0|cnt_Toff\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|cnt_Toff\(7),
	datad => VCC,
	cin => \U0|Add0~13\,
	combout => \U0|Add0~14_combout\,
	cout => \U0|Add0~15\);

-- Location: LCCOMB_X13_Y8_N0
\U0|cnt_Toff~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|cnt_Toff~0_combout\ = (\U0|Add0~14_combout\ & (((!\U0|Equal1~2_combout\) # (!\U0|Equal1~1_combout\)) # (!\U0|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal1~3_combout\,
	datab => \U0|Equal1~1_combout\,
	datac => \U0|Equal1~2_combout\,
	datad => \U0|Add0~14_combout\,
	combout => \U0|cnt_Toff~0_combout\);

-- Location: FF_X13_Y8_N1
\U0|cnt_Toff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|cnt_Toff~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(7));

-- Location: LCCOMB_X14_Y8_N6
\U0|Equal1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Equal1~0_combout\ = (!\U0|cnt_Toff\(3) & (!\U0|cnt_Toff\(2) & (\U0|cnt_Toff\(7) & !\U0|cnt_Toff\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(3),
	datab => \U0|cnt_Toff\(2),
	datac => \U0|cnt_Toff\(7),
	datad => \U0|cnt_Toff\(4),
	combout => \U0|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y8_N24
\U0|Equal1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Equal1~1_combout\ = (\U0|cnt_Toff\(0) & (\U0|cnt_Toff\(1) & \U0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(0),
	datac => \U0|cnt_Toff\(1),
	datad => \U0|Equal1~0_combout\,
	combout => \U0|Equal1~1_combout\);

-- Location: LCCOMB_X13_Y8_N18
\U0|Add0~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~16_combout\ = (\U0|cnt_Toff\(8) & (\U0|Add0~15\ $ (GND))) # (!\U0|cnt_Toff\(8) & (!\U0|Add0~15\ & VCC))
-- \U0|Add0~17\ = CARRY((\U0|cnt_Toff\(8) & !\U0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(8),
	datad => VCC,
	cin => \U0|Add0~15\,
	combout => \U0|Add0~16_combout\,
	cout => \U0|Add0~17\);

-- Location: LCCOMB_X14_Y8_N2
\U0|cnt_Toff~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|cnt_Toff~3_combout\ = (\U0|Add0~16_combout\ & (((!\U0|Equal1~3_combout\) # (!\U0|Equal1~1_combout\)) # (!\U0|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal1~2_combout\,
	datab => \U0|Equal1~1_combout\,
	datac => \U0|Equal1~3_combout\,
	datad => \U0|Add0~16_combout\,
	combout => \U0|cnt_Toff~3_combout\);

-- Location: FF_X14_Y8_N3
\U0|cnt_Toff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|cnt_Toff~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(8));

-- Location: LCCOMB_X13_Y8_N20
\U0|Add0~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~18_combout\ = (\U0|cnt_Toff\(9) & (!\U0|Add0~17\)) # (!\U0|cnt_Toff\(9) & ((\U0|Add0~17\) # (GND)))
-- \U0|Add0~19\ = CARRY((!\U0|Add0~17\) # (!\U0|cnt_Toff\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U0|cnt_Toff\(9),
	datad => VCC,
	cin => \U0|Add0~17\,
	combout => \U0|Add0~18_combout\,
	cout => \U0|Add0~19\);

-- Location: FF_X13_Y8_N21
\U0|cnt_Toff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|Add0~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(9));

-- Location: LCCOMB_X13_Y8_N22
\U0|Add0~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~20_combout\ = (\U0|cnt_Toff\(10) & (\U0|Add0~19\ $ (GND))) # (!\U0|cnt_Toff\(10) & (!\U0|Add0~19\ & VCC))
-- \U0|Add0~21\ = CARRY((\U0|cnt_Toff\(10) & !\U0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(10),
	datad => VCC,
	cin => \U0|Add0~19\,
	combout => \U0|Add0~20_combout\,
	cout => \U0|Add0~21\);

-- Location: FF_X13_Y8_N23
\U0|cnt_Toff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(10));

-- Location: LCCOMB_X13_Y8_N24
\U0|Add0~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Add0~22_combout\ = \U0|Add0~21\ $ (\U0|cnt_Toff\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U0|cnt_Toff\(11),
	cin => \U0|Add0~21\,
	combout => \U0|Add0~22_combout\);

-- Location: LCCOMB_X13_Y8_N28
\U0|cnt_Toff~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|cnt_Toff~2_combout\ = (\U0|Add0~22_combout\ & (((!\U0|Equal1~2_combout\) # (!\U0|Equal1~1_combout\)) # (!\U0|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal1~3_combout\,
	datab => \U0|Equal1~1_combout\,
	datac => \U0|Equal1~2_combout\,
	datad => \U0|Add0~22_combout\,
	combout => \U0|cnt_Toff~2_combout\);

-- Location: FF_X13_Y8_N29
\U0|cnt_Toff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|cnt_Toff~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|cnt_Toff\(11));

-- Location: LCCOMB_X14_Y8_N12
\U0|Equal1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|Equal1~2_combout\ = (!\U0|cnt_Toff\(9) & (\U0|cnt_Toff\(11) & (\U0|cnt_Toff\(8) & !\U0|cnt_Toff\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(9),
	datab => \U0|cnt_Toff\(11),
	datac => \U0|cnt_Toff\(8),
	datad => \U0|cnt_Toff\(10),
	combout => \U0|Equal1~2_combout\);

-- Location: LCCOMB_X14_Y8_N10
\U0|pul~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|pul~0_combout\ = (\U0|cnt_Toff\(9) & (!\U0|cnt_Toff\(11) & (!\U0|cnt_Toff\(8) & \U0|cnt_Toff\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(9),
	datab => \U0|cnt_Toff\(11),
	datac => \U0|cnt_Toff\(8),
	datad => \U0|cnt_Toff\(10),
	combout => \U0|pul~0_combout\);

-- Location: LCCOMB_X14_Y8_N28
\U0|pul~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|pul~1_combout\ = (\U0|cnt_Toff\(5) & (!\U0|pul~q\ & (!\U0|cnt_Toff\(6) & \U0|pul~0_combout\))) # (!\U0|cnt_Toff\(5) & (\U0|pul~q\ & (\U0|cnt_Toff\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|cnt_Toff\(5),
	datab => \U0|pul~q\,
	datac => \U0|cnt_Toff\(6),
	datad => \U0|pul~0_combout\,
	combout => \U0|pul~1_combout\);

-- Location: LCCOMB_X14_Y8_N8
\U0|pul~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|pul~2_combout\ = (\U0|pul~1_combout\ & ((\U0|pul~q\ & ((!\U0|Equal1~1_combout\) # (!\U0|Equal1~2_combout\))) # (!\U0|pul~q\ & ((\U0|Equal1~1_combout\))))) # (!\U0|pul~1_combout\ & (((\U0|pul~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|Equal1~2_combout\,
	datab => \U0|pul~1_combout\,
	datac => \U0|pul~q\,
	datad => \U0|Equal1~1_combout\,
	combout => \U0|pul~2_combout\);

-- Location: FF_X14_Y8_N9
\U0|pul\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U0|pul~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U0|pul~q\);

-- Location: LCCOMB_X16_Y6_N12
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ = \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\ = CARRY(\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X16_Y6_N14
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\)) # (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- ((\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (GND)))
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ = CARRY((!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\) # (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X16_Y6_N2
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\ & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ & 
-- ((!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\) # (!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~combout\,
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\,
	datad => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\);

-- Location: FF_X16_Y6_N3
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LCCOMB_X16_Y6_N16
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\ & VCC))
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\ = CARRY((\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & !\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita1~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X16_Y6_N18
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\)) # (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & 
-- ((\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (GND)))
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ = CARRY((!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\) # (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X16_Y6_N20
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\ & VCC))
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\ = CARRY((\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) & !\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X16_Y6_N4
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[4]~4_combout\ = (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ & (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\ & 
-- ((!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\) # (!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datab => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\,
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\,
	datad => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~combout\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[4]~4_combout\);

-- Location: FF_X16_Y6_N5
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4));

-- Location: LCCOMB_X16_Y6_N22
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\)) # (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5) & 
-- ((\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\) # (GND)))
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ = CARRY((!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\) # (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita4~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X16_Y6_N6
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[5]~5_combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\ & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ & 
-- ((!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\) # (!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~combout\,
	datab => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\,
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\,
	datad => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[5]~5_combout\);

-- Location: FF_X16_Y6_N7
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5));

-- Location: LCCOMB_X16_Y6_N24
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\ & VCC))
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\ = CARRY((\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & !\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6),
	datad => VCC,
	cin => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita5~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\,
	cout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X16_Y6_N0
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[6]~6_combout\ = (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ & (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\ & 
-- ((!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\) # (!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datab => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\,
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\,
	datad => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~combout\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[6]~6_combout\);

-- Location: FF_X16_Y6_N1
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6));

-- Location: LCCOMB_X16_Y6_N26
\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ = \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~COUT\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\);

-- Location: LCCOMB_X16_Y6_N28
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\ = (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ & (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\ & 
-- ((!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\) # (!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datab => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\,
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\,
	datad => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita2~combout\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\);

-- Location: FF_X16_Y6_N29
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2));

-- Location: LCCOMB_X17_Y6_N24
\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2) & 
-- !\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(2),
	datad => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	combout => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X16_Y6_N30
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\ = (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ & (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\ & 
-- ((!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\) # (!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datab => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\,
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\,
	datad => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita3~combout\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\);

-- Location: FF_X16_Y6_N31
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3));

-- Location: LCCOMB_X16_Y6_N10
\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\ = (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3) & (\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6) & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4) 
-- & \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(3),
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(6),
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(4),
	datad => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(5),
	combout => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X16_Y6_N8
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\ = (\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\ & (!\U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\ & 
-- ((!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\) # (!\U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~0_combout\,
	datab => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita0~combout\,
	datac => \U1|shift_rtl_0|auto_generated|cntr1|counter_comb_bita6~0_combout\,
	datad => \U1|shift_rtl_0|auto_generated|cntr1|cmpr6|aneb_result_wire[0]~1_combout\,
	combout => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\);

-- Location: FF_X16_Y6_N9
\U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|shift_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LCCOMB_X14_Y6_N30
\U0|pul~_wirecell\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \U0|pul~_wirecell_combout\ = !\U0|pul~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U0|pul~q\,
	combout => \U0|pul~_wirecell_combout\);

-- Location: M9K_X15_Y6_N0
\U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "shift_resister:U1|altshift_taps:shift_rtl_0|shift_taps_glm:auto_generated|altsyncram_l2b1:altsyncram2|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 98,
	port_a_logical_ram_width => 2,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 7,
	port_b_data_out_clear => "clear0",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 98,
	port_b_logical_ram_width => 2,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clr0 => \U1|shift_rtl_0|auto_generated|ALT_INV_dffe4~q\,
	portadatain => \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y6_N28
\SW~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \SW~0_combout\ = (\U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\ & \U0|pul~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a0~portbdataout\,
	datad => \U0|pul~q\,
	combout => \SW~0_combout\);

-- Location: FF_X14_Y6_N29
SW : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \SW~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SW~q\);

-- Location: LCCOMB_X14_Y6_N10
\D~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \D~0_combout\ = (!\U0|pul~q\ & \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U0|pul~q\,
	datad => \U1|shift_rtl_0|auto_generated|altsyncram2|ram_block5a1\,
	combout => \D~0_combout\);

-- Location: FF_X14_Y6_N11
D : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \D~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D~q\);

ww_pulse_SW_Td <= \pulse_SW_Td~output_o\;

ww_pulse_D_Td <= \pulse_D_Td~output_o\;
END structure;


