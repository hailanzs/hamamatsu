// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 14:24:30 2019
// Host        : ECEB-4022-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top selectio_wiz_0 -prefix
//               selectio_wiz_0_ selectio_wiz_0_stub.v
// Design      : selectio_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module selectio_wiz_0(data_in_from_pins_p, data_in_from_pins_n, 
  data_in_to_device, in_delay_reset, in_delay_data_ce, in_delay_data_inc, in_delay_tap_in, 
  in_delay_tap_out, delay_locked, ref_clock, bitslip, clk_in, clk_div_out, clk_reset, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins_p[0:0],data_in_from_pins_n[0:0],data_in_to_device[3:0],in_delay_reset,in_delay_data_ce[0:0],in_delay_data_inc[0:0],in_delay_tap_in[4:0],in_delay_tap_out[4:0],delay_locked,ref_clock,bitslip[0:0],clk_in,clk_div_out,clk_reset,io_reset" */;
  input [0:0]data_in_from_pins_p;
  input [0:0]data_in_from_pins_n;
  output [3:0]data_in_to_device;
  input in_delay_reset;
  input [0:0]in_delay_data_ce;
  input [0:0]in_delay_data_inc;
  input [4:0]in_delay_tap_in;
  output [4:0]in_delay_tap_out;
  output delay_locked;
  input ref_clock;
  input [0:0]bitslip;
  input clk_in;
  output clk_div_out;
  input clk_reset;
  input io_reset;
endmodule
