-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri May  3 15:59:30 2019
-- Host        : ECEB-4022-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ selectio_wiz_0_stub.vhdl
-- Design      : selectio_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins_p[15:0],data_in_from_pins_n[15:0],data_in_to_device[63:0],in_delay_reset,in_delay_data_ce[15:0],in_delay_data_inc[15:0],in_delay_tap_in[79:0],in_delay_tap_out[79:0],delay_locked,ref_clock,bitslip[15:0],clk_in_p,clk_in_n,clk_div_out,clk_reset,io_reset";
begin
end;
