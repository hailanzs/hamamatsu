`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2019 10:26:13 AM
// Design Name: 
// Module Name: SPI
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


module SPI(
        input clock,
        output SPI_MOSI,
        SPI_CS,
        SPI_CLK,
        input SPI_MISO,
        input [1:0] cmd,
        input [6:0] register_input,
        input [7:0] data_input,
        output [7:0] data_output,
        output [8:0] State_copy
    );
   reg [8:0] State = 9'd0;
   reg rw_bit; 
   localparam STATE_INIT = 9'd0;
   localparam READ = 1'b0;
   localparam WRITE = 1'b1;
    
   reg MOSI, MISO, CS, CLK;
   reg [6:0] register;
   reg [7:0] data_write, data_read;
   
   assign SPI_MOSI = MOSI;
   assign SPI_CLK = CLK;
   assign SPI_CS = CS;
   assign data_output = data_read;
   assign State_copy = State;
   
   initial 
    begin
        CLK <= 1'b0;
        CS <= 1'b1;
   end
    always @(posedge clock) begin
        register <= register_input[6:0];
        data_write <= data_input[7:0];
    end
    
    // running at 20MHZ so that SPI_CLK runs at 10 MHHz
    // write timing sequence
    always @(posedge clock) begin
    
        // begin FSM
        case(State) 
        
            STATE_INIT: begin
                // 1 is read
                if (cmd == 2'b01) begin 
                    State <= 9'b1;
                    rw_bit <= READ;
                end
                
                // 2 is write
                else if (cmd == 2'b10) begin 
                    State <= 9'b1;
                    rw_bit <= WRITE;
                end
                
                // else stay in state_init
                else State <= STATE_INIT;
            end
            
            // begin write sequence
            9'd1: begin
                CLK <= 1'b0;                // init states of the lines
                CS <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd2: begin
                CLK <= 1'b0;                // cs goes low while clock is off
                CS <= 1'b0;
                MOSI <= register[6];
                State <= State + 1'b1;
            end
            
            // write bit 6
            9'd3: begin
                CLK <= 1'b0;                // sample on rising edge, so write on low
                State <= State + 1'b1;
            end
            
            9'd4: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd5: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // write bit 5
            9'd6: begin
                CLK <= 1'b0;
                MOSI <= register[5];
                State <= State + 1'b1;
            end
            
            9'd7: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd8: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd9: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // write bit 4
            9'd10: begin
                CLK <= 1'b0;
                MOSI <= register[4];
                State <= State + 1'b1;
            end
            
            9'd11: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd12: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd13: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // write bit 3
            9'd14: begin
                CLK <= 1'b0;
                MOSI <= register[3];
                State <= State + 1'b1;
            end
            
            9'd15: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd16: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd17: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // write bit 2
            9'd18: begin
                CLK <= 1'b0;
                MOSI <= register[2];
                State <= State + 1'b1;
            end
            
            9'd19: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd20: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd21: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // write bit 1
            9'd22: begin
                CLK <= 1'b0;
                MOSI <= register[1];
                State <= State + 1'b1;
            end
            
            9'd23: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd24: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd25: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // write bit 0
            9'd26: begin
                CLK <= 1'b0;
                MOSI <= register[0];
                State <= State + 1'b1;
            end
            
            9'd27: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd28: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd29: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // send write/read bit
            9'd30: begin
                CLK <= 1'b0;
                MOSI <= rw_bit;
                State <= State + 1'b1;
            end
            
            9'd31: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd32: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd33: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            // begin READING/WRITING data
            // read/write bit 7
            9'd34: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)
                    MOSI <= data_write[7];
                State <= State + 1'b1;
            end
            
            9'd35: begin
                CLK <= 1'b0;   
                State <= State + 1'b1;
            end
            
            9'd36: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd37: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[7] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            // read/write bit 6
            9'd38: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)             
                    MOSI <= data_write[6];
                State <= State + 1'b1;
            end
            
            9'd39: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd40: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd41: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[6] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            // read/write bit 5
            9'd42: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)             
                    MOSI <= data_write[5];
                State <= State + 1'b1;
            end
            
            9'd43: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd44: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd45: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[5] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            // read/write bit 4
            9'd46: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)
                    MOSI <= data_write[4];
                State <= State + 1'b1;
            end
            
            9'd47: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd48: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd49: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[4] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            // read/write bit 3
            9'd50: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)
                    MOSI <= data_write[3];
                State <= State + 1'b1;
            end
            
            9'd51: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd52: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd53: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[3] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            // read/write bit 2
            9'd54: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)
                    MOSI <= data_write[2];
                State <= State + 1'b1;
            end
            
            9'd55: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd56: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd57: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[2] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            // read/write bit 1
            9'd58: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)
                    MOSI <= data_write[1];
                State <= State + 1'b1;
            end
            
            9'd59: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd60: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd61: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[1] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            // read/write bit 0
            9'd62: begin
                CLK <= 1'b0;
                if(rw_bit == WRITE)
                    MOSI <= data_write[0];
                State <= State + 1'b1;
            end
            
            9'd63: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd64: begin
                CLK <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd65: begin
                CLK <= 1'b1;
                if(rw_bit == READ)             
                    data_read[0] <= SPI_MISO;
                State <= State + 1'b1;
            end
            
            9'd66: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            // stop sequence
            9'd67: begin
                CLK <= 1'b0;
                State <= State + 1'b1;
            end
            
            9'd68: begin
                CLK <= 1'b0;
                CS <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd69: begin
               // CS <= 1'b1;
                State <= State + 1'b1;
            end
            
            9'd70: begin
                State <= STATE_INIT;
               
            end
            
            default: begin 
            end
        
        endcase
    end
    
    
   
endmodule
