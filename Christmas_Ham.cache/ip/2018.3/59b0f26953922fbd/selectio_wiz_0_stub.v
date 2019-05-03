// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May  3 15:59:30 2019
// Host        : ECEB-4022-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ selectio_wiz_0_stub.v
// Design      : selectio_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, in_delay_reset, in_delay_data_ce, in_delay_data_inc, in_delay_tap_in, 
  in_delay_tap_out, delay_locked, ref_clock, bitslip, clk_in_p, clk_in_n, clk_div_out, clk_reset, 
  io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[15:0],data_in_from_pins_n[15:0],data_in_to_device[63:0],in_delay_reset,in_delay_data_ce[15:0],in_delay_data_inc[15:0],in_delay_tap_in[79:0],in_delay_tap_out[79:0],delay_locked,ref_clock,bitslip[15:0],clk_in_p,clk_in_n,clk_div_out,clk_reset,io_reset" */;
  input [15:0]data_in_from_pins_p;
  input [15:0]data_in_from_pins_n;
  output [63:0]data_in_to_device;
  input in_delay_reset;
  input [15:0]in_delay_data_ce;
  input [15:0]in_delay_data_inc;
  input [79:0]in_delay_tap_in;
  output [79:0]in_delay_tap_out;
  output delay_locked;
  input ref_clock;
  input [15:0]bitslip;
  input clk_in_p;
  input clk_in_n;
  output clk_div_out;
  input clk_reset;
  input io_reset;
endmodule
