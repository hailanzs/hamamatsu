`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2019 11:04:12 AM
// Design Name: 
// Module Name: testbench
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


module testbench();
 reg sys_clkn=1;
 wire sys_clkp;
 wire [2:0] LVDS_OUT_A;
 wire [2:0] LVDS_OUT_A;
 wire [2:0] LVDS_OUT_B;
 wire [2:0] LVDS_OUT_BN;
 wire [2:0] LVDS_OUT_C;
 wire [2:0] LVDS_OUT_CN;
 wire [2:0] LVDS_OUT_D;
 wire [2:0] LVDS_OUT_DN;
 wire [2:0] LVDS_OUT_E;
 wire [2:0] LVDS_OUT_EN;
 wire VSYNC;
 wire VSYNC_N;
 wire HSYNC;
 wire HSYNC_N;
 wire CTR;
 wire CTR_N;
 wire P_CLK;
 wire P_CLK_N;
 
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
endmodule
