// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun  7 13:52:55 2019
// Host        : LAPTOP-59L230FR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/cakfi/ham/hamamatsu/Christmas_Ham.srcs/sources_1/ip/selectio_wiz_0/selectio_wiz_0_stub.v
// Design      : selectio_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module selectio_wiz_0(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, in_delay_reset, in_delay_data_ce, in_delay_data_inc, in_delay_tap_in, 
  in_delay_tap_out, delay_locked, ref_clock, bitslip, clk_in_p, clk_in_n, clk_div_out, clk_reset, 
  io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[2:0],data_in_from_pins_n[2:0],data_in_to_device[11:0],in_delay_reset,in_delay_data_ce[2:0],in_delay_data_inc[2:0],in_delay_tap_in[14:0],in_delay_tap_out[14:0],delay_locked,ref_clock,bitslip[2:0],clk_in_p,clk_in_n,clk_div_out,clk_reset,io_reset" */;
  input [2:0]data_in_from_pins_p;
  input [2:0]data_in_from_pins_n;
  output [11:0]data_in_to_device;
  input in_delay_reset;
  input [2:0]in_delay_data_ce;
  input [2:0]in_delay_data_inc;
  input [14:0]in_delay_tap_in;
  output [14:0]in_delay_tap_out;
  output delay_locked;
  input ref_clock;
  input [2:0]bitslip;
  input clk_in_p;
  input clk_in_n;
  output clk_div_out;
  input clk_reset;
  input io_reset;
endmodule
