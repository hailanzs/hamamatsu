`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Written by: Hailand and iflip 
// 
// Create Date: 04/12/2019 01:52:21 PM
// Module Name: top level
// Project Name: Hamamastu
// Target Devices: S13101 
// Description: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module hamamastu(
        // leds
        output [7:0] led,
        
        // clock 
        input sys_clkp,
        input sys_clkn,
        
        // lvds data
        input [2:0] LVDS_OUT_A,
        input [2:0] LVDS_OUT_AN,
        input [2:0] LVDS_OUT_B,
        input [2:0] LVDS_OUT_BN,
        input [2:0] LVDS_OUT_C,
        input [2:0] LVDS_OUT_CN,
        input [2:0] LVDS_OUT_D,
        input [2:0] LVDS_OUT_DN,
        input [2:0] LVDS_OUT_E,
        input [2:0] LVDS_OUT_EN,
        input VSYNC,
        input VSYNC_N,
        input HSYNC,
        input HSYNC_N,
        input CTR,
        input CTR_N,
        input P_CLK,
        input P_CLK_N,
        
        // enable pins
        output VDD_A_EN,
        output VDD_D_EN,
        output VDD_C_EN,
        output N15_EN,
        output N2_EN,
        
        // spi protocol 
        output SPI_RESET,
        output SPI_MOSI,
        output SPI_CS,
        output SPI_CLK,
        input SPI_MISO,
        
        // timing generator stuff
        output TG_RESET,
        output M_CLOCK,
        output PLL_RESET,
        output M_START,
        
        // okWire stuff
        input [4:0] okUH,
        output [2:0] okHU,
        inout [31:0] okUHU,
        inout okAA

    );

    // clock registers and wires
    reg MASTER_CLK, SPI_gen_CLK;    // random clocks
    wire clk;                       // total clock
    wire clk_out;                   // clock for debugging
    
    // assigning statements
    assign VDD_A_EN = 1'b1;         // set up regulators VDD(D) and VDD(A)
    assign VDD_D_EN = 1'b1;


    // okWire stuff!!
    wire okClk;             //These are FrontPanel wires needed to IO communication    
    wire [112:0] okHE;      //These are FrontPanel wires needed to IO communication    
    wire [64:0] okEH;       //These are FrontPanel wires needed to IO communication     
    
    //This is the OK host that allows data to be sent or recived    
    okHost hostIF (     .okUH(okUH),
                        .okHU(okHU),
                        .okUHU(okUHU),
                        .okClk(okClk),
                        .okAA(okAA),
                        .okHE(okHE),
                        .okEH(okEH));
                        
    // wires for communicating
    wire [31:0] rw_flag;                // read/write flag
    wire [31:0] register_input;         // register to read/write to
    wire [31:0] data_input;             // data to write
    wire [31:0] data_output;            // data to read from
    
    
    // clock generator instantitation
    ClockGenerator clock(   .sys_clkn(sys_clkn),
                            .sys_clkp(sys_clkp),    
                            .MASTER_CLK(MASTER_CLK),
                            .SPI_gen_CLK(SPI_gen_CLK));
                            
    // spi protocol instantitation                        
    spi_spo spi_rw(       .led(led),
                            .clock(SPI_gen_CLK),
                            .SPI_RESET(SPI_RESET),
                            .SPI_MOSI(SPI_MOSI),
                            .SPI_CS(SPI_CS),
                            .SPI_CLK(SPI_CLK),
                            .SPI_MISO(SPI_MISO),
                            .rw_flag(rw_flag),
                            .data_input(data_input),
                            .data_output(data_output));

    // initial set up
    initial begin
        
    end

    // select io for lvds lines instantitation
    selectio_wiz_0 lvds_input ( .data_in_from_pins_p(), 
                                .data_in_from_pins_n(), 
                                .clk_in(clk),
                                .io_reset(), 
                                .delay_clk(), 
                                .in_delay_reset(), 
                                .in_delay_tap_in(),
                                .in_delay_data_ce(), 
                                .in_delay_data_inc(), 
                                .ref_clock(), 
                                .in_delay_tap_out(),
                                .delay_locked(), 
                                .clk_out(clk_out));
                                
endmodule
