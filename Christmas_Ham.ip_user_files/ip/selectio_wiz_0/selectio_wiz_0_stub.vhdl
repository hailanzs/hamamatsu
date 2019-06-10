-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Jun  7 13:52:55 2019
-- Host        : LAPTOP-59L230FR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/cakfi/ham/hamamatsu/Christmas_Ham.srcs/sources_1/ip/selectio_wiz_0/selectio_wiz_0_stub.vhdl
-- Design      : selectio_wiz_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity selectio_wiz_0 is
  Port ( 
    data_in_from_pins_p : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_from_pins_n : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in_to_device : out STD_LOGIC_VECTOR ( 11 downto 0 );
    in_delay_reset : in STD_LOGIC;
    in_delay_data_ce : in STD_LOGIC_VECTOR ( 2 downto 0 );
    in_delay_data_inc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    in_delay_tap_in : in STD_LOGIC_VECTOR ( 14 downto 0 );
    in_delay_tap_out : out STD_LOGIC_VECTOR ( 14 downto 0 );
    delay_locked : out STD_LOGIC;
    ref_clock : in STD_LOGIC;
    bitslip : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_in_p : in STD_LOGIC;
    clk_in_n : in STD_LOGIC;
    clk_div_out : out STD_LOGIC;
    clk_reset : in STD_LOGIC;
    io_reset : in STD_LOGIC
  );

end selectio_wiz_0;

architecture stub of selectio_wiz_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_in_from_pins_p[2:0],data_in_from_pins_n[2:0],data_in_to_device[11:0],in_delay_reset,in_delay_data_ce[2:0],in_delay_data_inc[2:0],in_delay_tap_in[14:0],in_delay_tap_out[14:0],delay_locked,ref_clock,bitslip[2:0],clk_in_p,clk_in_n,clk_div_out,clk_reset,io_reset";
begin
end;
