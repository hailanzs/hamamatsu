// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Apr 12 13:47:52 2019
// Host        : ECEB-4022-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ selectio_wiz_0_sim_netlist.v
// Design      : selectio_wiz_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DEV_W = "2" *) (* SYS_W = "1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_in_from_pins_p,
    data_in_from_pins_n,
    data_in_to_device,
    delay_clk,
    in_delay_reset,
    in_delay_data_ce,
    in_delay_data_inc,
    in_delay_tap_in,
    in_delay_tap_out,
    delay_locked,
    ref_clock,
    clk_in,
    clk_out,
    io_reset);
  input [0:0]data_in_from_pins_p;
  input [0:0]data_in_from_pins_n;
  output [1:0]data_in_to_device;
  input delay_clk;
  input in_delay_reset;
  input [0:0]in_delay_data_ce;
  input [0:0]in_delay_data_inc;
  input [4:0]in_delay_tap_in;
  output [4:0]in_delay_tap_out;
  output delay_locked;
  input ref_clock;
  input clk_in;
  output clk_out;
  input io_reset;

  (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVCMOS33" *) wire clk_in;
  wire clk_out;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]data_in_from_pins_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [0:0]data_in_from_pins_p;
  wire [1:0]data_in_to_device;
  wire delay_clk;
  wire delay_locked;
  wire [0:0]in_delay_data_ce;
  wire [0:0]in_delay_data_inc;
  wire in_delay_reset;
  wire [4:0]in_delay_tap_in;
  wire [4:0]in_delay_tap_out;
  wire io_reset;
  wire ref_clock;

  (* DEV_W = "2" *) 
  (* SYS_W = "1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz inst
       (.clk_in(clk_in),
        .clk_out(clk_out),
        .data_in_from_pins_n(data_in_from_pins_n),
        .data_in_from_pins_p(data_in_from_pins_p),
        .data_in_to_device(data_in_to_device),
        .delay_clk(delay_clk),
        .delay_locked(delay_locked),
        .in_delay_data_ce(in_delay_data_ce),
        .in_delay_data_inc(in_delay_data_inc),
        .in_delay_reset(in_delay_reset),
        .in_delay_tap_in(in_delay_tap_in),
        .in_delay_tap_out(in_delay_tap_out),
        .io_reset(io_reset),
        .ref_clock(ref_clock));
endmodule

(* DEV_W = "2" *) (* SYS_W = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz
   (data_in_from_pins_p,
    data_in_from_pins_n,
    data_in_to_device,
    delay_clk,
    in_delay_reset,
    in_delay_data_ce,
    in_delay_data_inc,
    in_delay_tap_in,
    in_delay_tap_out,
    delay_locked,
    ref_clock,
    clk_in,
    clk_out,
    io_reset);
  input [0:0]data_in_from_pins_p;
  input [0:0]data_in_from_pins_n;
  output [1:0]data_in_to_device;
  input delay_clk;
  input in_delay_reset;
  input [0:0]in_delay_data_ce;
  input [0:0]in_delay_data_inc;
  input [4:0]in_delay_tap_in;
  output [4:0]in_delay_tap_out;
  output delay_locked;
  input ref_clock;
  input clk_in;
  output clk_out;
  input io_reset;

  wire clk_in;
  wire clk_in_bufmr;
  wire clk_in_int;
  wire clk_out;
  wire data_in_from_pins_delay;
  wire data_in_from_pins_int;
  wire [0:0]data_in_from_pins_n;
  wire [0:0]data_in_from_pins_p;
  wire [1:0]data_in_to_device;
  wire delay_clk;
  wire delay_locked;
  wire [0:0]in_delay_data_ce;
  wire [0:0]in_delay_data_inc;
  wire in_delay_reset;
  wire [4:0]in_delay_tap_in;
  wire [4:0]in_delay_tap_out;
  wire io_reset;
  wire ref_clock;
  wire ref_clock_bufg;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFMR bufmr_in_clk_inst
       (.I(clk_in_bufmr),
        .O(clk_in_int));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("BYPASS"),
    .SIM_DEVICE("7SERIES")) 
    clkout_buf_inst
       (.CE(1'b1),
        .CLR(1'b0),
        .I(clk_in_int),
        .O(clk_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "selectio_wiz_0_group" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    delayctrl
       (.RDY(delay_locked),
        .REFCLK(ref_clock_bufg),
        .RST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF ibuf_clk_inst
       (.I(clk_in),
        .O(clk_in_bufmr));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[0].ibufds_inst 
       (.I(data_in_from_pins_p),
        .IB(data_in_from_pins_n),
        .O(data_in_from_pins_int));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "FALSE" *) 
  IDDR #(
    .DDR_CLK_EDGE("SAME_EDGE_PIPELINED"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("ASYNC")) 
    \pins[0].iddr_inst 
       (.C(clk_out),
        .CE(1'b1),
        .D(data_in_from_pins_delay),
        .Q1(data_in_to_device[0]),
        .Q2(data_in_to_device[1]),
        .R(io_reset),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "selectio_wiz_0_group" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("FALSE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(0),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    \pins[0].idelaye2_bus 
       (.C(delay_clk),
        .CE(in_delay_data_ce),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in),
        .CNTVALUEOUT(in_delay_tap_out),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay),
        .IDATAIN(data_in_from_pins_int),
        .INC(in_delay_data_inc),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG ref_clk_bufg
       (.I(ref_clock),
        .O(ref_clock_bufg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif