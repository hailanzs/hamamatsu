// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri May  3 15:59:30 2019
// Host        : ECEB-4022-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ selectio_wiz_0_sim_netlist.v
// Design      : selectio_wiz_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DEV_W = "64" *) (* SYS_W = "16" *) 
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

  wire [15:0]bitslip;
  wire clk_div_out;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire clk_in_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire clk_in_p;
  wire clk_reset;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [15:0]data_in_from_pins_n;
  (* DIFF_TERM = 0 *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVDS_25" *) wire [15:0]data_in_from_pins_p;
  wire [63:0]data_in_to_device;
  wire delay_locked;
  wire [15:0]in_delay_data_ce;
  wire [15:0]in_delay_data_inc;
  wire in_delay_reset;
  wire [79:0]in_delay_tap_in;
  wire [79:0]in_delay_tap_out;
  wire io_reset;
  wire ref_clock;

  (* DEV_W = "64" *) 
  (* SYS_W = "16" *) 
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

(* DEV_W = "64" *) (* SYS_W = "16" *) (* num_serial_bits = "4" *) 
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

  wire [15:0]bitslip;
  wire clk_div_out;
  wire clk_in_int;
  wire clk_in_int_buf;
  wire clk_in_n;
  wire clk_in_p;
  wire clk_reset;
  wire data_in_from_pins_delay_0;
  wire data_in_from_pins_delay_1;
  wire data_in_from_pins_delay_10;
  wire data_in_from_pins_delay_11;
  wire data_in_from_pins_delay_12;
  wire data_in_from_pins_delay_13;
  wire data_in_from_pins_delay_14;
  wire data_in_from_pins_delay_15;
  wire data_in_from_pins_delay_2;
  wire data_in_from_pins_delay_3;
  wire data_in_from_pins_delay_4;
  wire data_in_from_pins_delay_5;
  wire data_in_from_pins_delay_6;
  wire data_in_from_pins_delay_7;
  wire data_in_from_pins_delay_8;
  wire data_in_from_pins_delay_9;
  wire data_in_from_pins_int_0;
  wire data_in_from_pins_int_1;
  wire data_in_from_pins_int_10;
  wire data_in_from_pins_int_11;
  wire data_in_from_pins_int_12;
  wire data_in_from_pins_int_13;
  wire data_in_from_pins_int_14;
  wire data_in_from_pins_int_15;
  wire data_in_from_pins_int_2;
  wire data_in_from_pins_int_3;
  wire data_in_from_pins_int_4;
  wire data_in_from_pins_int_5;
  wire data_in_from_pins_int_6;
  wire data_in_from_pins_int_7;
  wire data_in_from_pins_int_8;
  wire data_in_from_pins_int_9;
  wire [15:0]data_in_from_pins_n;
  wire [15:0]data_in_from_pins_p;
  wire [63:0]data_in_to_device;
  wire delay_locked;
  wire [15:0]in_delay_data_ce;
  wire [15:0]in_delay_data_inc;
  wire in_delay_reset;
  wire [79:0]in_delay_tap_in;
  wire [79:0]in_delay_tap_out;
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
  wire \NLW_pins[10].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[10].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[10].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[10].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[10].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[10].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[10].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[11].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[11].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[11].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[11].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[11].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[11].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[11].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[12].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[12].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[12].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[12].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[12].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[12].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[12].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[13].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[13].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[13].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[13].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[13].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[13].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[13].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[14].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[14].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[14].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[14].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[14].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[14].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[14].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[15].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[15].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[15].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[15].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[15].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[15].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[15].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
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
  wire \NLW_pins[3].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[4].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[4].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[4].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[4].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[4].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[4].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[4].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[5].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[5].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[5].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[5].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[5].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[5].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[5].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[6].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[6].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[6].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[6].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[6].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[6].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[6].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[7].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[7].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[7].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[7].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[7].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[7].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[7].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[8].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[8].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[8].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[8].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[8].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[8].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[8].iserdese2_master_SHIFTOUT2_UNCONNECTED ;
  wire \NLW_pins[9].iserdese2_master_O_UNCONNECTED ;
  wire \NLW_pins[9].iserdese2_master_Q5_UNCONNECTED ;
  wire \NLW_pins[9].iserdese2_master_Q6_UNCONNECTED ;
  wire \NLW_pins[9].iserdese2_master_Q7_UNCONNECTED ;
  wire \NLW_pins[9].iserdese2_master_Q8_UNCONNECTED ;
  wire \NLW_pins[9].iserdese2_master_SHIFTOUT1_UNCONNECTED ;
  wire \NLW_pins[9].iserdese2_master_SHIFTOUT2_UNCONNECTED ;

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
  (* OPT_MODIFIED = "MLO " *) 
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
        .Q1(data_in_to_device[48]),
        .Q2(data_in_to_device[32]),
        .Q3(data_in_to_device[16]),
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
  IBUFDS \pins[10].ibufds_inst 
       (.I(data_in_from_pins_p[10]),
        .IB(data_in_from_pins_n[10]),
        .O(data_in_from_pins_int_10));
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
    \pins[10].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[10]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[54:50]),
        .CNTVALUEOUT(in_delay_tap_out[54:50]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_10),
        .IDATAIN(data_in_from_pins_int_10),
        .INC(in_delay_data_inc[10]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[10].iserdese2_master 
       (.BITSLIP(bitslip[10]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_10),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[10].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[58]),
        .Q2(data_in_to_device[42]),
        .Q3(data_in_to_device[26]),
        .Q4(data_in_to_device[10]),
        .Q5(\NLW_pins[10].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[10].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[10].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[10].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[10].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[10].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[11].ibufds_inst 
       (.I(data_in_from_pins_p[11]),
        .IB(data_in_from_pins_n[11]),
        .O(data_in_from_pins_int_11));
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
    \pins[11].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[11]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[59:55]),
        .CNTVALUEOUT(in_delay_tap_out[59:55]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_11),
        .IDATAIN(data_in_from_pins_int_11),
        .INC(in_delay_data_inc[11]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[11].iserdese2_master 
       (.BITSLIP(bitslip[11]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_11),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[11].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[59]),
        .Q2(data_in_to_device[43]),
        .Q3(data_in_to_device[27]),
        .Q4(data_in_to_device[11]),
        .Q5(\NLW_pins[11].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[11].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[11].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[11].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[11].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[11].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[12].ibufds_inst 
       (.I(data_in_from_pins_p[12]),
        .IB(data_in_from_pins_n[12]),
        .O(data_in_from_pins_int_12));
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
    \pins[12].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[12]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[64:60]),
        .CNTVALUEOUT(in_delay_tap_out[64:60]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_12),
        .IDATAIN(data_in_from_pins_int_12),
        .INC(in_delay_data_inc[12]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[12].iserdese2_master 
       (.BITSLIP(bitslip[12]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_12),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[12].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[60]),
        .Q2(data_in_to_device[44]),
        .Q3(data_in_to_device[28]),
        .Q4(data_in_to_device[12]),
        .Q5(\NLW_pins[12].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[12].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[12].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[12].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[12].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[12].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[13].ibufds_inst 
       (.I(data_in_from_pins_p[13]),
        .IB(data_in_from_pins_n[13]),
        .O(data_in_from_pins_int_13));
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
    \pins[13].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[13]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[69:65]),
        .CNTVALUEOUT(in_delay_tap_out[69:65]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_13),
        .IDATAIN(data_in_from_pins_int_13),
        .INC(in_delay_data_inc[13]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[13].iserdese2_master 
       (.BITSLIP(bitslip[13]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_13),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[13].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[61]),
        .Q2(data_in_to_device[45]),
        .Q3(data_in_to_device[29]),
        .Q4(data_in_to_device[13]),
        .Q5(\NLW_pins[13].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[13].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[13].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[13].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[13].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[13].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[14].ibufds_inst 
       (.I(data_in_from_pins_p[14]),
        .IB(data_in_from_pins_n[14]),
        .O(data_in_from_pins_int_14));
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
    \pins[14].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[14]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[74:70]),
        .CNTVALUEOUT(in_delay_tap_out[74:70]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_14),
        .IDATAIN(data_in_from_pins_int_14),
        .INC(in_delay_data_inc[14]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[14].iserdese2_master 
       (.BITSLIP(bitslip[14]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_14),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[14].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[62]),
        .Q2(data_in_to_device[46]),
        .Q3(data_in_to_device[30]),
        .Q4(data_in_to_device[14]),
        .Q5(\NLW_pins[14].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[14].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[14].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[14].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[14].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[14].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[15].ibufds_inst 
       (.I(data_in_from_pins_p[15]),
        .IB(data_in_from_pins_n[15]),
        .O(data_in_from_pins_int_15));
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
    \pins[15].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[15]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[79:75]),
        .CNTVALUEOUT(in_delay_tap_out[79:75]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_15),
        .IDATAIN(data_in_from_pins_int_15),
        .INC(in_delay_data_inc[15]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[15].iserdese2_master 
       (.BITSLIP(bitslip[15]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_15),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[15].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[63]),
        .Q2(data_in_to_device[47]),
        .Q3(data_in_to_device[31]),
        .Q4(data_in_to_device[15]),
        .Q5(\NLW_pins[15].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[15].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[15].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[15].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[15].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[15].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
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
  (* OPT_MODIFIED = "MLO " *) 
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
        .Q1(data_in_to_device[49]),
        .Q2(data_in_to_device[33]),
        .Q3(data_in_to_device[17]),
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
  (* OPT_MODIFIED = "MLO " *) 
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
        .Q1(data_in_to_device[50]),
        .Q2(data_in_to_device[34]),
        .Q3(data_in_to_device[18]),
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
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[3].ibufds_inst 
       (.I(data_in_from_pins_p[3]),
        .IB(data_in_from_pins_n[3]),
        .O(data_in_from_pins_int_3));
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
    \pins[3].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[3]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[19:15]),
        .CNTVALUEOUT(in_delay_tap_out[19:15]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_3),
        .IDATAIN(data_in_from_pins_int_3),
        .INC(in_delay_data_inc[3]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[3].iserdese2_master 
       (.BITSLIP(bitslip[3]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_3),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[3].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[51]),
        .Q2(data_in_to_device[35]),
        .Q3(data_in_to_device[19]),
        .Q4(data_in_to_device[3]),
        .Q5(\NLW_pins[3].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[3].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[3].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[3].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[4].ibufds_inst 
       (.I(data_in_from_pins_p[4]),
        .IB(data_in_from_pins_n[4]),
        .O(data_in_from_pins_int_4));
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
    \pins[4].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[4]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[24:20]),
        .CNTVALUEOUT(in_delay_tap_out[24:20]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_4),
        .IDATAIN(data_in_from_pins_int_4),
        .INC(in_delay_data_inc[4]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[4].iserdese2_master 
       (.BITSLIP(bitslip[4]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_4),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[4].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[52]),
        .Q2(data_in_to_device[36]),
        .Q3(data_in_to_device[20]),
        .Q4(data_in_to_device[4]),
        .Q5(\NLW_pins[4].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[4].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[4].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[4].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[4].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[4].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[5].ibufds_inst 
       (.I(data_in_from_pins_p[5]),
        .IB(data_in_from_pins_n[5]),
        .O(data_in_from_pins_int_5));
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
    \pins[5].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[5]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[29:25]),
        .CNTVALUEOUT(in_delay_tap_out[29:25]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_5),
        .IDATAIN(data_in_from_pins_int_5),
        .INC(in_delay_data_inc[5]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[5].iserdese2_master 
       (.BITSLIP(bitslip[5]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_5),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[5].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[53]),
        .Q2(data_in_to_device[37]),
        .Q3(data_in_to_device[21]),
        .Q4(data_in_to_device[5]),
        .Q5(\NLW_pins[5].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[5].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[5].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[5].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[5].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[5].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[6].ibufds_inst 
       (.I(data_in_from_pins_p[6]),
        .IB(data_in_from_pins_n[6]),
        .O(data_in_from_pins_int_6));
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
    \pins[6].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[6]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[34:30]),
        .CNTVALUEOUT(in_delay_tap_out[34:30]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_6),
        .IDATAIN(data_in_from_pins_int_6),
        .INC(in_delay_data_inc[6]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[6].iserdese2_master 
       (.BITSLIP(bitslip[6]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_6),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[6].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[54]),
        .Q2(data_in_to_device[38]),
        .Q3(data_in_to_device[22]),
        .Q4(data_in_to_device[6]),
        .Q5(\NLW_pins[6].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[6].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[6].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[6].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[6].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[6].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[7].ibufds_inst 
       (.I(data_in_from_pins_p[7]),
        .IB(data_in_from_pins_n[7]),
        .O(data_in_from_pins_int_7));
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
    \pins[7].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[7]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[39:35]),
        .CNTVALUEOUT(in_delay_tap_out[39:35]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_7),
        .IDATAIN(data_in_from_pins_int_7),
        .INC(in_delay_data_inc[7]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[7].iserdese2_master 
       (.BITSLIP(bitslip[7]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_7),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[7].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[55]),
        .Q2(data_in_to_device[39]),
        .Q3(data_in_to_device[23]),
        .Q4(data_in_to_device[7]),
        .Q5(\NLW_pins[7].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[7].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[7].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[7].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[7].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[7].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[8].ibufds_inst 
       (.I(data_in_from_pins_p[8]),
        .IB(data_in_from_pins_n[8]),
        .O(data_in_from_pins_int_8));
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
    \pins[8].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[8]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[44:40]),
        .CNTVALUEOUT(in_delay_tap_out[44:40]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_8),
        .IDATAIN(data_in_from_pins_int_8),
        .INC(in_delay_data_inc[8]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[8].iserdese2_master 
       (.BITSLIP(bitslip[8]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_8),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[8].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[56]),
        .Q2(data_in_to_device[40]),
        .Q3(data_in_to_device[24]),
        .Q4(data_in_to_device[8]),
        .Q5(\NLW_pins[8].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[8].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[8].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[8].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[8].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[8].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS \pins[9].ibufds_inst 
       (.I(data_in_from_pins_p[9]),
        .IB(data_in_from_pins_n[9]),
        .O(data_in_from_pins_int_9));
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
    \pins[9].idelaye2_bus 
       (.C(clk_div_out),
        .CE(in_delay_data_ce[9]),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(in_delay_tap_in[49:45]),
        .CNTVALUEOUT(in_delay_tap_out[49:45]),
        .DATAIN(1'b0),
        .DATAOUT(data_in_from_pins_delay_9),
        .IDATAIN(data_in_from_pins_int_9),
        .INC(in_delay_data_inc[9]),
        .LD(in_delay_reset),
        .LDPIPEEN(1'b0),
        .REGRST(io_reset));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO " *) 
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
    \pins[9].iserdese2_master 
       (.BITSLIP(bitslip[9]),
        .CE1(1'b1),
        .CE2(1'b1),
        .CLK(clk_in_int_buf),
        .CLKB(clk_in_int_buf),
        .CLKDIV(clk_div_out),
        .CLKDIVP(1'b0),
        .D(1'b0),
        .DDLY(data_in_from_pins_delay_9),
        .DYNCLKDIVSEL(1'b0),
        .DYNCLKSEL(1'b0),
        .O(\NLW_pins[9].iserdese2_master_O_UNCONNECTED ),
        .OCLK(1'b0),
        .OCLKB(1'b0),
        .OFB(1'b0),
        .Q1(data_in_to_device[57]),
        .Q2(data_in_to_device[41]),
        .Q3(data_in_to_device[25]),
        .Q4(data_in_to_device[9]),
        .Q5(\NLW_pins[9].iserdese2_master_Q5_UNCONNECTED ),
        .Q6(\NLW_pins[9].iserdese2_master_Q6_UNCONNECTED ),
        .Q7(\NLW_pins[9].iserdese2_master_Q7_UNCONNECTED ),
        .Q8(\NLW_pins[9].iserdese2_master_Q8_UNCONNECTED ),
        .RST(io_reset),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(\NLW_pins[9].iserdese2_master_SHIFTOUT1_UNCONNECTED ),
        .SHIFTOUT2(\NLW_pins[9].iserdese2_master_SHIFTOUT2_UNCONNECTED ));
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
