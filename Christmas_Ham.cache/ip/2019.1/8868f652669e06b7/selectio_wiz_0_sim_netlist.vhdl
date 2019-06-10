-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Jun  7 12:18:02 2019
-- Host        : LAPTOP-59L230FR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ selectio_wiz_0_sim_netlist.vhdl
-- Design      : selectio_wiz_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 63 downto 0 );
    in_delay_reset : in STD_LOGIC;
    in_delay_data_ce : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_delay_data_inc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_delay_tap_in : in STD_LOGIC_VECTOR ( 79 downto 0 );
    in_delay_tap_out : out STD_LOGIC_VECTOR ( 79 downto 0 );
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute DEV_W : integer;
  attribute DEV_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz : entity is 64;
  attribute SYS_W : integer;
  attribute SYS_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz : entity is 16;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz : entity is 4;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz is
  signal \^clk_div_out\ : STD_LOGIC;
  signal clk_in_int : STD_LOGIC;
  signal clk_in_int_buf : STD_LOGIC;
  signal data_in_from_pins_delay_0 : STD_LOGIC;
  signal data_in_from_pins_delay_1 : STD_LOGIC;
  signal data_in_from_pins_delay_10 : STD_LOGIC;
  signal data_in_from_pins_delay_11 : STD_LOGIC;
  signal data_in_from_pins_delay_12 : STD_LOGIC;
  signal data_in_from_pins_delay_13 : STD_LOGIC;
  signal data_in_from_pins_delay_14 : STD_LOGIC;
  signal data_in_from_pins_delay_15 : STD_LOGIC;
  signal data_in_from_pins_delay_2 : STD_LOGIC;
  signal data_in_from_pins_delay_3 : STD_LOGIC;
  signal data_in_from_pins_delay_4 : STD_LOGIC;
  signal data_in_from_pins_delay_5 : STD_LOGIC;
  signal data_in_from_pins_delay_6 : STD_LOGIC;
  signal data_in_from_pins_delay_7 : STD_LOGIC;
  signal data_in_from_pins_delay_8 : STD_LOGIC;
  signal data_in_from_pins_delay_9 : STD_LOGIC;
  signal data_in_from_pins_int_0 : STD_LOGIC;
  signal data_in_from_pins_int_1 : STD_LOGIC;
  signal data_in_from_pins_int_10 : STD_LOGIC;
  signal data_in_from_pins_int_11 : STD_LOGIC;
  signal data_in_from_pins_int_12 : STD_LOGIC;
  signal data_in_from_pins_int_13 : STD_LOGIC;
  signal data_in_from_pins_int_14 : STD_LOGIC;
  signal data_in_from_pins_int_15 : STD_LOGIC;
  signal data_in_from_pins_int_2 : STD_LOGIC;
  signal data_in_from_pins_int_3 : STD_LOGIC;
  signal data_in_from_pins_int_4 : STD_LOGIC;
  signal data_in_from_pins_int_5 : STD_LOGIC;
  signal data_in_from_pins_int_6 : STD_LOGIC;
  signal data_in_from_pins_int_7 : STD_LOGIC;
  signal data_in_from_pins_int_8 : STD_LOGIC;
  signal data_in_from_pins_int_9 : STD_LOGIC;
  signal ref_clock_bufg : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[10].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[10].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[10].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[10].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[10].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[10].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[10].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[11].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[11].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[11].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[11].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[11].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[11].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[11].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[12].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[12].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[12].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[12].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[12].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[12].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[12].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[13].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[13].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[13].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[13].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[13].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[13].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[13].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[14].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[14].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[14].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[14].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[14].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[14].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[14].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[15].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[15].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[15].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[15].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[15].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[15].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[15].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[4].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[4].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[4].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[4].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[4].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[4].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[4].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[5].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[5].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[5].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[5].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[5].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[5].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[5].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[6].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[6].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[6].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[6].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[6].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[6].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[6].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[7].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[7].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[7].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[7].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[7].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[7].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[7].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[8].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[8].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[8].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[8].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[8].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[8].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[8].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[9].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[9].iserdese2_master_Q5_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[9].iserdese2_master_Q6_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[9].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[9].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[9].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[9].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of bufio_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout_buf_inst : label is "PRIMITIVE";
  attribute BOX_TYPE of delayctrl : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of delayctrl : label is "selectio_wiz_0_group";
  attribute BOX_TYPE of ibufds_clk_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibufds_clk_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibufds_clk_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibufds_clk_inst : label is "AUTO";
  attribute BOX_TYPE of \pins[0].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[0].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[0].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[0].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of \pins[0].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[0].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \pins[0].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[10].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[10].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[10].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[10].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[10].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[10].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[10].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[10].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[10].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[11].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[11].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[11].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[11].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[11].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[11].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[11].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[11].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[11].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[12].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[12].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[12].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[12].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[12].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[12].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[12].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[12].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[12].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[13].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[13].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[13].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[13].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[13].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[13].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[13].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[13].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[13].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[14].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[14].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[14].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[14].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[14].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[14].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[14].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[14].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[14].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[15].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[15].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[15].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[15].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[15].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[15].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[15].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[15].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[15].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[1].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[1].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[1].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[1].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[1].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[1].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[1].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[2].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[2].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[2].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[2].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[2].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[2].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[2].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[2].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[2].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[3].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[3].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[3].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[3].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[3].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[3].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[3].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[3].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[3].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[4].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[4].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[4].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[4].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[4].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[4].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[4].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[4].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[4].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[5].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[5].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[5].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[5].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[5].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[5].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[5].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[5].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[5].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[6].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[6].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[6].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[6].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[6].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[6].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[6].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[6].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[6].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[7].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[7].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[7].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[7].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[7].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[7].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[7].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[7].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[7].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[8].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[8].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[8].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[8].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[8].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[8].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[8].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[8].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[8].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[9].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[9].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[9].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[9].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[9].idelaye2_bus\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[9].idelaye2_bus\ : label is "selectio_wiz_0_group";
  attribute SIM_DELAY_D of \pins[9].idelaye2_bus\ : label is 0;
  attribute BOX_TYPE of \pins[9].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[9].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of ref_clk_bufg : label is "PRIMITIVE";
begin
  clk_div_out <= \^clk_div_out\;
bufio_inst: unisim.vcomponents.BUFIO
     port map (
      I => clk_in_int,
      O => clk_in_int_buf
    );
clkout_buf_inst: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "2",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => clk_reset,
      I => clk_in_int,
      O => \^clk_div_out\
    );
delayctrl: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => delay_locked,
      REFCLK => ref_clock_bufg,
      RST => io_reset
    );
ibufds_clk_inst: unisim.vcomponents.IBUFDS
     port map (
      I => clk_in_p,
      IB => clk_in_n,
      O => clk_in_int
    );
\pins[0].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(0),
      IB => data_in_from_pins_n(0),
      O => data_in_from_pins_int_0
    );
\pins[0].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(0),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(4 downto 0),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_0,
      IDATAIN => data_in_from_pins_int_0,
      INC => in_delay_data_inc(0),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[0].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(0),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_0,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[0].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(48),
      Q2 => data_in_to_device(32),
      Q3 => data_in_to_device(16),
      Q4 => data_in_to_device(0),
      Q5 => \NLW_pins[0].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[0].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[10].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(10),
      IB => data_in_from_pins_n(10),
      O => data_in_from_pins_int_10
    );
\pins[10].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(10),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(54 downto 50),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(54 downto 50),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_10,
      IDATAIN => data_in_from_pins_int_10,
      INC => in_delay_data_inc(10),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[10].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(10),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_10,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[10].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(58),
      Q2 => data_in_to_device(42),
      Q3 => data_in_to_device(26),
      Q4 => data_in_to_device(10),
      Q5 => \NLW_pins[10].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[10].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[10].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[10].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[10].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[10].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[11].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(11),
      IB => data_in_from_pins_n(11),
      O => data_in_from_pins_int_11
    );
\pins[11].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(11),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(59 downto 55),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(59 downto 55),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_11,
      IDATAIN => data_in_from_pins_int_11,
      INC => in_delay_data_inc(11),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[11].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(11),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_11,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[11].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(59),
      Q2 => data_in_to_device(43),
      Q3 => data_in_to_device(27),
      Q4 => data_in_to_device(11),
      Q5 => \NLW_pins[11].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[11].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[11].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[11].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[11].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[11].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[12].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(12),
      IB => data_in_from_pins_n(12),
      O => data_in_from_pins_int_12
    );
\pins[12].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(12),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(64 downto 60),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(64 downto 60),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_12,
      IDATAIN => data_in_from_pins_int_12,
      INC => in_delay_data_inc(12),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[12].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(12),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_12,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[12].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(60),
      Q2 => data_in_to_device(44),
      Q3 => data_in_to_device(28),
      Q4 => data_in_to_device(12),
      Q5 => \NLW_pins[12].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[12].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[12].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[12].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[12].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[12].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[13].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(13),
      IB => data_in_from_pins_n(13),
      O => data_in_from_pins_int_13
    );
\pins[13].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(13),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(69 downto 65),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(69 downto 65),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_13,
      IDATAIN => data_in_from_pins_int_13,
      INC => in_delay_data_inc(13),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[13].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(13),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_13,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[13].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(61),
      Q2 => data_in_to_device(45),
      Q3 => data_in_to_device(29),
      Q4 => data_in_to_device(13),
      Q5 => \NLW_pins[13].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[13].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[13].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[13].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[13].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[13].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[14].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(14),
      IB => data_in_from_pins_n(14),
      O => data_in_from_pins_int_14
    );
\pins[14].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(14),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(74 downto 70),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(74 downto 70),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_14,
      IDATAIN => data_in_from_pins_int_14,
      INC => in_delay_data_inc(14),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[14].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(14),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_14,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[14].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(62),
      Q2 => data_in_to_device(46),
      Q3 => data_in_to_device(30),
      Q4 => data_in_to_device(14),
      Q5 => \NLW_pins[14].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[14].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[14].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[14].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[14].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[14].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[15].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(15),
      IB => data_in_from_pins_n(15),
      O => data_in_from_pins_int_15
    );
\pins[15].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(15),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(79 downto 75),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(79 downto 75),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_15,
      IDATAIN => data_in_from_pins_int_15,
      INC => in_delay_data_inc(15),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[15].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(15),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_15,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[15].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(63),
      Q2 => data_in_to_device(47),
      Q3 => data_in_to_device(31),
      Q4 => data_in_to_device(15),
      Q5 => \NLW_pins[15].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[15].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[15].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[15].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[15].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[15].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[1].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(1),
      IB => data_in_from_pins_n(1),
      O => data_in_from_pins_int_1
    );
\pins[1].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(1),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(9 downto 5),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(9 downto 5),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_1,
      IDATAIN => data_in_from_pins_int_1,
      INC => in_delay_data_inc(1),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[1].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(1),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_1,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[1].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(49),
      Q2 => data_in_to_device(33),
      Q3 => data_in_to_device(17),
      Q4 => data_in_to_device(1),
      Q5 => \NLW_pins[1].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[1].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[1].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[1].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[2].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(2),
      IB => data_in_from_pins_n(2),
      O => data_in_from_pins_int_2
    );
\pins[2].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(2),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(14 downto 10),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(14 downto 10),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_2,
      IDATAIN => data_in_from_pins_int_2,
      INC => in_delay_data_inc(2),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[2].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(2),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_2,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[2].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(50),
      Q2 => data_in_to_device(34),
      Q3 => data_in_to_device(18),
      Q4 => data_in_to_device(2),
      Q5 => \NLW_pins[2].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[2].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[2].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[2].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[3].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(3),
      IB => data_in_from_pins_n(3),
      O => data_in_from_pins_int_3
    );
\pins[3].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(3),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(19 downto 15),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(19 downto 15),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_3,
      IDATAIN => data_in_from_pins_int_3,
      INC => in_delay_data_inc(3),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[3].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(3),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_3,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[3].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(51),
      Q2 => data_in_to_device(35),
      Q3 => data_in_to_device(19),
      Q4 => data_in_to_device(3),
      Q5 => \NLW_pins[3].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[3].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[3].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[3].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[4].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(4),
      IB => data_in_from_pins_n(4),
      O => data_in_from_pins_int_4
    );
\pins[4].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(4),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(24 downto 20),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(24 downto 20),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_4,
      IDATAIN => data_in_from_pins_int_4,
      INC => in_delay_data_inc(4),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[4].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(4),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_4,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[4].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(52),
      Q2 => data_in_to_device(36),
      Q3 => data_in_to_device(20),
      Q4 => data_in_to_device(4),
      Q5 => \NLW_pins[4].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[4].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[4].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[4].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[4].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[4].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[5].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(5),
      IB => data_in_from_pins_n(5),
      O => data_in_from_pins_int_5
    );
\pins[5].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(5),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(29 downto 25),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(29 downto 25),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_5,
      IDATAIN => data_in_from_pins_int_5,
      INC => in_delay_data_inc(5),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[5].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(5),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_5,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[5].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(53),
      Q2 => data_in_to_device(37),
      Q3 => data_in_to_device(21),
      Q4 => data_in_to_device(5),
      Q5 => \NLW_pins[5].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[5].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[5].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[5].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[5].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[5].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[6].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(6),
      IB => data_in_from_pins_n(6),
      O => data_in_from_pins_int_6
    );
\pins[6].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(6),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(34 downto 30),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(34 downto 30),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_6,
      IDATAIN => data_in_from_pins_int_6,
      INC => in_delay_data_inc(6),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[6].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(6),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_6,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[6].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(54),
      Q2 => data_in_to_device(38),
      Q3 => data_in_to_device(22),
      Q4 => data_in_to_device(6),
      Q5 => \NLW_pins[6].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[6].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[6].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[6].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[6].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[6].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[7].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(7),
      IB => data_in_from_pins_n(7),
      O => data_in_from_pins_int_7
    );
\pins[7].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(7),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(39 downto 35),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(39 downto 35),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_7,
      IDATAIN => data_in_from_pins_int_7,
      INC => in_delay_data_inc(7),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[7].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(7),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_7,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[7].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(55),
      Q2 => data_in_to_device(39),
      Q3 => data_in_to_device(23),
      Q4 => data_in_to_device(7),
      Q5 => \NLW_pins[7].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[7].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[7].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[7].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[7].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[7].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[8].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(8),
      IB => data_in_from_pins_n(8),
      O => data_in_from_pins_int_8
    );
\pins[8].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(8),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(44 downto 40),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(44 downto 40),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_8,
      IDATAIN => data_in_from_pins_int_8,
      INC => in_delay_data_inc(8),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[8].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(8),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_8,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[8].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(56),
      Q2 => data_in_to_device(40),
      Q3 => data_in_to_device(24),
      Q4 => data_in_to_device(8),
      Q5 => \NLW_pins[8].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[8].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[8].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[8].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[8].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[8].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[9].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => data_in_from_pins_p(9),
      IB => data_in_from_pins_n(9),
      O => data_in_from_pins_int_9
    );
\pins[9].idelaye2_bus\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 0,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => \^clk_div_out\,
      CE => in_delay_data_ce(9),
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => in_delay_tap_in(49 downto 45),
      CNTVALUEOUT(4 downto 0) => in_delay_tap_out(49 downto 45),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_9,
      IDATAIN => data_in_from_pins_int_9,
      INC => in_delay_data_inc(9),
      LD => in_delay_reset,
      LDPIPEEN => '0',
      REGRST => io_reset
    );
\pins[9].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 4,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "IFD",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => bitslip(9),
      CE1 => '1',
      CE2 => '1',
      CLK => clk_in_int_buf,
      CLKB => clk_in_int_buf,
      CLKDIV => \^clk_div_out\,
      CLKDIVP => '0',
      D => '0',
      DDLY => data_in_from_pins_delay_9,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[9].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => data_in_to_device(57),
      Q2 => data_in_to_device(41),
      Q3 => data_in_to_device(25),
      Q4 => data_in_to_device(9),
      Q5 => \NLW_pins[9].iserdese2_master_Q5_UNCONNECTED\,
      Q6 => \NLW_pins[9].iserdese2_master_Q6_UNCONNECTED\,
      Q7 => \NLW_pins[9].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[9].iserdese2_master_Q8_UNCONNECTED\,
      RST => io_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[9].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[9].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
ref_clk_bufg: unisim.vcomponents.BUFG
     port map (
      I => ref_clock,
      O => ref_clock_bufg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 63 downto 0 );
    in_delay_reset : in STD_LOGIC;
    in_delay_data_ce : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_delay_data_inc : in STD_LOGIC_VECTOR ( 15 downto 0 );
    in_delay_tap_in : in STD_LOGIC_VECTOR ( 79 downto 0 );
    in_delay_tap_out : out STD_LOGIC_VECTOR ( 79 downto 0 );
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute DEV_W : integer;
  attribute DEV_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 64;
  attribute SYS_W : integer;
  attribute SYS_W of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is 16;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute DEV_W of inst : label is 64;
  attribute SYS_W of inst : label is 16;
  attribute num_serial_bits : integer;
  attribute num_serial_bits of inst : label is 4;
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz
     port map (
      bitslip(15 downto 0) => bitslip(15 downto 0),
      clk_div_out => clk_div_out,
      clk_in_n => clk_in_n,
      clk_in_p => clk_in_p,
      clk_reset => clk_reset,
      data_in_from_pins_n(15 downto 0) => data_in_from_pins_n(15 downto 0),
      data_in_from_pins_p(15 downto 0) => data_in_from_pins_p(15 downto 0),
      data_in_to_device(63 downto 0) => data_in_to_device(63 downto 0),
      delay_locked => delay_locked,
      in_delay_data_ce(15 downto 0) => in_delay_data_ce(15 downto 0),
      in_delay_data_inc(15 downto 0) => in_delay_data_inc(15 downto 0),
      in_delay_reset => in_delay_reset,
      in_delay_tap_in(79 downto 0) => in_delay_tap_in(79 downto 0),
      in_delay_tap_out(79 downto 0) => in_delay_tap_out(79 downto 0),
      io_reset => io_reset,
      ref_clock => ref_clock
    );
end STRUCTURE;
