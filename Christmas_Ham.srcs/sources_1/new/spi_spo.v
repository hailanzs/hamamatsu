`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2019 02:14:50 PM
// Design Name: 
// Module Name: spi_spo
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


module spi_spo(
        input clock,
        output SPI_RESET,
        output SPI_MOSI,
        output SPI_CS,
        output SPI_CLK,
        input SPI_MISO
    );
    
    reg [8:0] State;
    localparam STATE_INIT = 9'b0;
    
    // initial settings
    initial begin
        State <= 9'b0;
    end
    
    // running at 20MHZ so that SPI_CLK runs at 10 MHHz
    // read timing
    always @(posedge clock) begin
    
        // begin FSM
        case(State) 
        
            STATE_INIT: begin
                
            end
        
        endcase
    end
    
    // write timing
    always @(posedge clock) begin
    
        // begin FSM
        case(State) 
        
            STATE_INIT: begin
                
            end
        
        endcase
    end
    
    
    
endmodule
