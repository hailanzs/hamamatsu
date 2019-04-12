`timescale 1ns / 1ps

module ClockGenerator(
    input sys_clkn,
    input sys_clkp,    
    output reg MASTER_CLK,
    output reg SPI_gen_CLK
    );

    //Generate high speed main clock from two differential clock signals        
    wire clk;
    reg [23:0] ClkDiv_M = 24'd0; 
    reg [23:0] ClkDiv_S = 24'd0;        

    IBUFGDS osc_clk(
        .O(clk),
        .I(sys_clkp),
        .IB(sys_clkn)
    );    
         
    // Initialize the two registers used in this module  
    initial begin
        MASTER_CLK <= 1'b0;  
        SPI_gen_CLK <= 1'b0;     
    end
 
    // We derive a clock signal that will be used for sampling signals for the ILA
    // This clock will be 10 times slower than the system clock.    
    always @(posedge clk) begin        
        if (ClkDiv_M == 499) begin
            MASTER_CLK <= !MASTER_CLK;                       
            ClkDiv_M <= 0;
        end else begin                        
            ClkDiv_M <= ClkDiv_M + 1'b1;
        end
    end      
    
    always @(posedge clk) begin        
        if (ClkDiv_S == 499) begin
            SPI_gen_CLK <= !SPI_gen_CLK;                       
            ClkDiv_S <= 0;
        end else begin                        
            ClkDiv_S <= ClkDiv_S + 1'b1;
        end
    end      

            
endmodule
