`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2019 10:14:51 AM
// Design Name: 
// Module Name: SPIe
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


module SPIe(
        output [7:0] led,
        
        // clock 
        input sys_clkp,
        input sys_clkn,
        
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
    wire MASTER_CLK, SPI_gen_CLK, ILA_CLK;          // random clocks
    wire clk;                                       // total clock
    wire clk_out;                         
    wire [7:0] data_output;
    wire [8:0] State_copy;
    wire [1:0] cmd;
    wire TriggerEvent;
    reg [0:0] Trigger;
    reg [1:0] cmdr;
    reg [29:0] counter;
    assign cmd = cmdr;
    assign TriggerEvent = Trigger;
 /* CLOCK INSTATIATION */
    ClockGenerator clock(   
        .sys_clkn(sys_clkn),
        .sys_clkp(sys_clkp),
        .clk(clk),   
        .MASTER_CLK(MASTER_CLK),
        .SPI_gen_CLK(SPI_gen_CLK),
        .ILA_CLK(ILA_CLK)
    );
    
    SPI russianspi(
        .clock(SPI_gen_CLK),
        .SPI_MOSI(SPI_MOSI),
        .SPI_CS(SPI_CS),
        .SPI_CLK(SPI_CLK),

        .SPI_MISO(SPI_MISO),
        .cmd(cmd),
        .register_input(6'd17),
        .data_input(8'd1),
        .data_output(data_output),
        .State_copy(State_copy)
    );
    ila_0 ila_sample12(
        .clk(ILA_CLK),
        .probe0({SPI_MOSI, SPI_MISO, SPI_CS, SPI_CLK, TG_RESET, SPI_RESET, data_output, State_copy}),
        .probe1({SPI_gen_CLK, TriggerEvent})
       );
    
    localparam STATE_INIT = 8'd0;
    localparam STATE_SPI_RST = 8'd1;
    localparam STATE_DELAY0 = 8'd2;
    localparam STATE_TG_RST = 8'd3;
    localparam STATE_SPI = 8'd4;
    
    reg [7:0] State = STATE_INIT;
    reg SPI_RESET_REG, TG_RESET_REG;
    reg [2:0] delay0, delay2, tg_counter;
     initial
        begin 
            SPI_RESET_REG <= 1'b1;
            TG_RESET_REG <= 1'b0;
            delay0 <= 3'b0;
            delay2 <= 3'b0;
            tg_counter <= 3'b0;
            Trigger <= 1'b0;
            cmdr <= 2'b00;
        end
     always @(posedge MASTER_CLK) begin
         case(State)
             STATE_INIT:
               begin
                   if(delay2 == 3'd5)
                       begin
                           State <= STATE_SPI_RST;
                       end
                   else
                       begin
                           delay2 <= delay2 + 1'b1;
                           State <= STATE_INIT;
                       end
               end
           STATE_SPI_RST:
               begin
                   SPI_RESET_REG <= 1'b0;
                   State <= STATE_DELAY0;
               end
           STATE_DELAY0:
               begin
                   if(delay0 == 3'd5)
                       begin
                           SPI_RESET_REG <= 1'b1;
                           State <= STATE_TG_RST;
                       end
                   else
                       begin
                           delay0 <= delay0 + 1'b1;
                           State <= STATE_DELAY0;
                       end
               end
            STATE_TG_RST:
               begin
                   if(tg_counter == 3'd5)
                       begin
                           TG_RESET_REG <= 1'b1;
                           State <= STATE_SPI;
                       end
                   else
                       begin
                           tg_counter <= tg_counter + 1'b1;
                           State <= STATE_TG_RST;
                       end
               end
          STATE_SPI:
           begin
                 Trigger = 1'b1;
                 cmdr = 2'b1;
                 State <= STATE_SPI;        
           end
     endcase
    end
endmodule