`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/02/2019 10:46:18 AM
// Design Name: 
// Module Name: LVDS
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


module LVDS(
        input p_clk,
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
        output TG_RESET,
        output M_CLOCK,
        output PLL_RESET,
        output M_START,
        output clk_reset,
        output io_reset,          
        output in_delay_reset,    
        output in_delay_tap_in,   
        output in_delay_data_ce,  
        output in_delay_data_inc,
        input spi_flag   
    );
    
    // state parameters
    localparam STATE_INIT = 8'd0;
    localparam STATE_DELAY = 8'd2;
    localparam STATE_SER_DELAY = 8'd1;
    localparam STATE_IO = 8'd3;
    localparam FINITO = 8'd4;
    
    reg [3:0] delay0, delay1, delay2;
    reg [7:0] State = 8'd0;
    reg io_reset_r, clk_reset_r, in_delay_reset_r, in_delay_tap_in_r, in_delay_data_c_r, in_delay_data_inc_r;
    
    assign io_reset = io_reset_r;
    assign clk_reset = clk_reset_r;       
    assign in_delay_reset = in_delay_reset_r;  
    assign in_delay_tap_in = in_delay_tap_in_r; 
    assign in_delay_data_ce = in_delay_data_c_r;
    assign in_delay_data_inc = in_delay_data_inc_r;
    
    
    initial begin
    
        delay0 <= 4'b0;
        delay1 <= 4'b0;
        delay2 <= 4'b0;
        io_reset_r <= 1'b0;
        clk_reset_r <= 1'b0;
        in_delay_reset_r <= 1'b0;
    end
    
    always @(posedge p_clk) begin
        case(State)
            STATE_INIT:
            begin
                if(spi_flag)
                    begin
                        clk_reset_r <= 1'b0;
                        State <= STATE_SER_DELAY;
                    end
                else
                    begin
                        clk_reset_r <= 1'b1;
                    end
            end
            STATE_SER_DELAY:
            begin
                if(delay0 >= 4'd9)
                    begin
                        State <= STATE_DELAY;
                    end
                else
                    begin
                        delay0 <= delay0 + 1'b1;
                    end
             end
             STATE_DELAY:
             begin
                if(delay1 <= 4'd9)
                    begin
                       in_delay_reset_r <= 1'b1;
                    end
                 else 
                    begin
                        delay1 <= delay1 + 1'b1;
                        in_delay_reset_r <= 1'b0;
                        State <= STATE_IO;
                    end
            end
            STATE_IO:
            begin
                if(delay2 <= 4'd9)
                    begin
                        io_reset_r <= 1'b1;
                    end
                else
                    begin
                        delay2 <= delay2 + 1'b1;
                        io_reset_r <= 1'b0;
                        State <= FINITO;
                    end
           end
           FINITO:
           begin
            //sugma
            end
        endcase
    end
    
endmodule
