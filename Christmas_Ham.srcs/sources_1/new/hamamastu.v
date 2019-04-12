`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2019 01:52:21 PM
// Design Name: 
// Module Name: hamamastu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
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
        output M_START
    );

    // clock registers and wires
    reg MASTER_CLK, SPI_gen_CLK;    // random clocks
    wire clk;                       // total clock
    wire clk_out;                   // clock for debugging
    
    // assigning statements
    assign VDD_A_EN = 1'b1;         // set up regulators VDD(D) and VDD(A)
    assign VDD_D_EN = 1'b1;


// clock generator instantitation
ClockGenerator clock(   .sys_clkn(sys_clkn),
                        .sys_clkp(sys_clkp),    
                        .MASTER_CLK(MASTER_CLK),
                        .SPI_gen_CLK(SPI_gen_CLK));
// spi protocol instantitation                        
spi_spo spi_prot(
        .clock(SPI_gen_CLK),
        .SPI_RESET(SPI_RESET),
        .SPI_MOSI(SPI_MOSI),
        .SPI_CS(SPI_CS),
        .SPI_CLK(SPI_CLK),
        .SPI_MISO(SPI_MISO)
    );

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
