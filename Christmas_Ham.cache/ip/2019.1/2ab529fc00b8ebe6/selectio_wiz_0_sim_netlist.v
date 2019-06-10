// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Jun  7 13:52:55 2019
// Host        : LAPTOP-59L230FR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ selectio_wiz_0_sim_netlist.v
// Design      : selectio_wiz_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DEV_W = "12" *) (* SYS_W = "3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_in_from_pins_p,
    data_in_from_pins_n,
    data_in_to_device,
    in_delay_reset,
    in_delay_data_ce,
    in_delay_data_inc,
    in_delay_tap_in,
    in_delay_tap_out,
    delay_locked,
    ref_clock,
    bitslip,
    clk_in_p,
    clk_in_n,
    clk_div_out,
    clk_reset,
    io_reset);
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

  wire [2:0]bitslip;
  wire clk_div_out;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire clk_in_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire clk_in_p;
  wire clk_reset;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [2:0]data_in_from_pins_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [2:0]data_in_from_pins_p;
  wire [11:0]data_in_to_device;
  wire delay_locked;
  wire [2:0]in_delay_data_ce;
  wire [2:0]in_delay_data_inc;
  wire in_delay_reset;
  wire [14:0]in_delay_tap_in;
  wire [14:0]in_delay_tap_out;
  wire io_reset;
  wire ref_clock;

  (* DEV_W = "12" *) 
  (* SYS_W = "3" *) 
  (* num_serial_bits = "4" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz inst
       (.bitslip(bitslip),
        .clk_div_out(clk_div_out),
        .clk_in_n(clk_in_n),
        .clk_in_p(clk_in_p),
        .clk_reset(clk_reset),
        .data_in_from_pins_n(data_in_from_pins_n),
        .data_in_from_pins_p(data_in_from_pins_p),
        .data_in_to_device(data_in_to_device),
        .delay_locked(delay_locked),
        .in_delay_data_ce(in_delay_data_ce),
        .in_delay_data_inc(in_delay_data_inc),
        .in_delay_reset(in_delay_reset),
        .in_delay_tap_in(in_delay_tap_in),
        .in_delay_tap_out(in_delay_tap_out),
        .io_reset(io_reset),
        .ref_clock(ref_clock));
endmodule

(* DEV_W = "12" *) (* SYS_W = "3" *) (* num_serial_bits = "4" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_selectio_wiz_0_selectio_wiz
   (data_in_from_pins_p,
    data_in_from_pins_n,
    data_in_to_device,
    in_delay_reset,
    in_delay_data_ce,
    in_delay_data_inc,
    in_delay_tap_in,
    in_delay_tap_out,
    delay_locked,
    ref_clock,
    bitslip,
    clk_in_p,
    clk_in_n,
    clk_div_out,
    clk_reset,
    io_reset);
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

  wire [2:0]bitslip;
  wire clk_div_out;
  wire clk_in_int;
  wire clk_in_int_buf;
  wire clk_in_n;
  wire clk_in_p;
  wire clk_reset;
  wire data_in_from_pins_delay_0;
  wire data_in_from_pins_delay_1;
  wire data_in_from_pins_delay_2;
  wire data_in_from_pins_int_0;
  wire data_in_from_pins_int_1;
  wire data_in_from_pins_int_2;
  wire [2:0]data_in_from_pins_n;
  wire [2:0]data_in_from_pins_p;
  wire [11:0]data_in_to_device;
  wire delay_locked;
  wire [2:0]in_delay_data_ce;
  wire [2:0]in_delay_data_inc;
  wire in_delay_reset;
  wire [14:0]in_delay_tap_in;
  wire [14:0]in_delay_tap_out;
  wire io_reset;
  wire ref_clock;
  wire ref_clock_bufg;
  wire \NLW_pins[0].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFIO bufio_inst
       (.I(clk_in_int),
        .O(clk_in_int_buf));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFR #(
    .BUFR_DIVIDE("2"),
    .SIM_DEVICE("7SERIES")) 
    clkout_buf_inst
       (.CE(1'b1),
        .CLR(clk_reset),
        .I(clk_in_int),
        .O(clk_div_out));
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
  IBUFDS ibufds_clk_inst
       (.I(clk_in_p),
        .IB(clk_in_n),
        .O(clk_in_int));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[0].ibufds_inst 
       (.I(data_in_from_pins_p[0]),
        .IB(data_in_from_pins_n[0]),
        .O(data_in_from_pins_int_0));
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
       (.C(clk_div_out),
        .CE(in_delay_data_ce[0]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[4:0]),
        .CNTVALUEOUT(in_delay_tap_out[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_0),
        .IDATAIN(data_in_from_pins_int_0),
        .INC(in_delay_data_inc[0]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(4),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \pins[0].iserdese2_master 
       (.BITSLIP(bitslip[0]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_0),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[0].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[9]),
        .Q2(data_in_to_device[6]),
        .Q3(data_in_to_device[3]),
        .Q4(data_in_to_device[0]),
        .Q5(\NLW_pins[0].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[0].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[0].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[0].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[1].ibufds_inst 
       (.I(data_in_from_pins_p[1]),
        .IB(data_in_from_pins_n[1]),
        .O(data_in_from_pins_int_1));
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
    \pins[1].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[1]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[9:5]),
        .CNTVALUEOUT(in_delay_tap_out[9:5]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_1),
        .IDATAIN(data_in_from_pins_int_1),
        .INC(in_delay_data_inc[1]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(4),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \pins[1].iserdese2_master 
       (.BITSLIP(bitslip[1]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_1),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[1].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[10]),
        .Q2(data_in_to_device[7]),
        .Q3(data_in_to_device[4]),
        .Q4(data_in_to_device[1]),
        .Q5(\NLW_pins[1].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[1].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[1].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[1].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[2].ibufds_inst 
       (.I(data_in_from_pins_p[2]),
        .IB(data_in_from_pins_n[2]),
        .O(data_in_from_pins_int_2));
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
    \pins[2].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[2]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[14:10]),
        .CNTVALUEOUT(in_delay_tap_out[14:10]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_2),
        .IDATAIN(data_in_from_pins_int_2),
        .INC(in_delay_data_inc[2]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  ISERDESE2 #(
    .DATA_RATE("DDR"),
    .DATA_WIDTH(4),
    .DYN_CLKDIV_INV_EN("FALSE"),
    .DYN_CLK_INV_EN("FALSE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .INIT_Q3(1'b0),
    .INIT_Q4(1'b0),
    .INTERFACE_TYPE("NETWORKING"),
    .IOBDELAY("IFD"),
    .IS_CLKB_INVERTED(1'b1),
    .IS_CLKDIVP_INVERTED(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_OCLKB_INVERTED(1'b0),
    .IS_OCLK_INVERTED(1'b0),
    .NUM_CE(2),
    .OFB_USED("FALSE"),
    .SERDES_MODE("MASTER"),
    .SRVAL_Q1(1'b0),
    .SRVAL_Q2(1'b0),
    .SRVAL_Q3(1'b0),
    .SRVAL_Q4(1'b0)) 
    \pins[2].iserdese2_master 
       (.BITSLIP(bitslip[2]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_2),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[2].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[11]),
        .Q2(data_in_to_device[8]),
        .Q3(data_in_to_device[5]),
        .Q4(data_in_to_device[2]),
        .Q5(\NLW_pins[2].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[2].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[2].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[2].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
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
