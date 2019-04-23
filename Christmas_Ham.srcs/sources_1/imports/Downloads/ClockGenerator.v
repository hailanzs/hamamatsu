`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Written by: Hailan and Filip 
// 
// Create Date: 04/12/2019 01:52:21 PM
// Module Name: Clock Generator
// Project Name: Hamamastu
// Target Devices: S13101 
// Description: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ClockGenerator(
    input sys_clkn,
    input sys_clkp,    
    output reg MASTER_CLK,
    output reg SPI_gen_CLK,
    output reg ILA_CLK
    );

    //Generate high speed main clock from two differential clock signals        
    wire clk;
    reg [23:0] ClkDiv_M = 24'd0; 
    reg [23:0] ClkDiv_S = 24'd0;  
    reg [23:0] ClkDivILA = 24'd0;      

    // clock signal
    IBUFGDS osc_clk(
        .O(clk),
        .I(sys_clkp),
        .IB(sys_clkn)
    );    
         
    // Initialize the two registers used in this module  
    initial begin
        MASTER_CLK <= 1'b0;  
        SPI_gen_CLK <= 1'b0;     
        ILA_CLK <= 1'b0;
    end
 
   
    /* CLOCK DIVIDER IS 2*(n + 1) */
    
    // master clock signal
    always @(posedge clk) begin        
        if (ClkDiv_M == 3) begin                // 2*(3+1) = 8. 200 MHz / 8 = 25 MHz
            MASTER_CLK <= !MASTER_CLK;                       
            ClkDiv_M <= 0;
        end else begin                        
            ClkDiv_M <= ClkDiv_M + 1'b1;
        end
    end      
    
    // debugger clock signal
    always @(posedge clk) begin                 
      if (ClkDivILA == 10) begin
            ILA_CLK <= !ILA_CLK;                       
            ClkDivILA <= 0;
        end else begin                        
            ClkDivILA <= ClkDivILA + 1'b1;
        end
    end      

    // spi clock signal
    always @(posedge clk) begin        
        if (ClkDiv_S == 21) begin                // 2*(10+1) = ??. 200 MHz / 22 = ?? MHz
            SPI_gen_CLK <= !SPI_gen_CLK;                       
            ClkDiv_S <= 0;
        end else begin                        
            ClkDiv_S <= ClkDiv_S + 1'b1;
        end
    end      

            
endmodule
