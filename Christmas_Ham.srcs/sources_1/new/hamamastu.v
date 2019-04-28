`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Written by: Highland and iphlip 
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
    
/* DECLARING WIRES AND REGISTERS AND VARIABLES */

    // clock registers and wires
    wire MASTER_CLK, SPI_gen_CLK, ILA_CLK;          // random clocks
    wire clk;                                       // total clock
    wire clk_out;                                   // clock for debugging
    
    wire [8:0] State_copy;                          // SPI settings fsm state for debugging
    wire TrigerEvent;                               // jtag debugging wire
    
    // okWire stuff!!
    wire okClk;                                     //These are FrontPanel wires needed to IO communication    
    wire [112:0] okHE;      //These are FrontPanel wires needed to IO communication    
    wire [64:0] okEH;       //These are FrontPanel wires needed to IO communication     
    
    //ok memory spacing for block throttle and other opal kelly wires
    localparam  endPt_count = 1;
    wire [endPt_count*65-1:0] okEHx;
    okWireOR # (.N(endPt_count)) wireOR (okEH, okEHx);
                          
    // wires for communicating
    wire [31:0] rw_flag;                // read/write flag
    wire [31:0] register_input;         // register to read/write to
    wire [31:0] data_input;             // data to write
    wire [31:0] data_output;            // data to read from
    wire error;
    //fifo controller registers
    reg write_reset, read_reset, write_enable;
    //reset registers
    reg TG_RESET_REG, SPI_RESET_REG;
    //delay counters
    reg [2:0] delay0, delay1, delay2, tg_counter;
    reg tiger;
    
/* ASSIGNING WIRES AND REGISTERS TO VALUES */
    
    // assigning statements
    assign TG_RESET = TG_RESET_REG;
    assign SPI_RESET = SPI_RESET_REG;
    assign M_CLOCK = MASTER_CLK;
    assign VDD_A_EN = 1'b1;                         // set up regulators VDD(D) and VDD(A)
    assign VDD_D_EN = 1'b1;
   
    reg [29:0] counter;
    assign TrigerEvent = tiger;
    assign rw_flag[0] = tiger;
    assign led[6] = ~tiger;
    assign led[7] = error;
    assign led[5:0] = ~counter[27:22];
    
    // state parameters
    localparam STATE_INIT = 8'd0;
    localparam STATE_SPI_RESET = 8'd1;
    localparam STATE_DELAY0 = 8'd2;
    localparam STATE_TG_RESET = 8'd3;
    localparam STATE_DELAY1 = 8'd4;
    
    reg [7:0] State = STATE_INIT;
    
/* INSTANTIATING MODULES */

    /* OKWIRE INSTANTIATIONS */
    //This is the OK host that allows data to be sent or recived    
//    okHost hostIF (     
//        .okUH(okUH),
//        .okHU(okHU),
//        .okUHU(okUHU),
//        .okClk(okClk),
//        .okAA(okAA),
//        .okHE(okHE),
//        .okEH(okEH)
//    );
    
//   okWireIn wire10 (    .okHE(okHE), 
//                        .ep_addr(8'h00), 
//                        .ep_dataout(data_input));
   
//   okWireIn wire11 (    .okHE(okHE), 
//                        .ep_addr(8'h01), 
//                        .ep_dataout(register_input));
                        
//   okWireIn wire12 (    .okHE(okHE), 
//                        .ep_addr(8'h02), 
//                        .ep_dataout(rw_flag));
                       
//   okWireOut wire20 (  .okHE(okHE), 
//                        .okEH(okEHx[ 0*65 +: 65 ]),
//                        .ep_addr(8'h20), 
//                        .ep_datain(data_output));
    
        
    

    /* CLOCK INSTATIATION */
    ClockGenerator clock(   
        .sys_clkn(sys_clkn),
        .sys_clkp(sys_clkp),    
        .MASTER_CLK(MASTER_CLK),
        .SPI_gen_CLK(SPI_gen_CLK),
        .ILA_CLK(ILA_CLK)
    );
    
    /* OTHER MODULES */                        
    // spi protocol instantitation                        
    spi_spo spi_rw(       
        .error(error),
        .clock(SPI_gen_CLK),
        .SPI_MOSI(SPI_MOSI),
        .SPI_CS(SPI_CS),
        .SPI_CLK(SPI_CLK),
        .SPI_MISO(SPI_MISO),
        .rw_flag(rw_flag),
        .register_input(32'd0),
        .data_input(32'd0),
        .data_output(data_output),
        .State_copy(State_copy)
    );
    
    initial
        begin 
            SPI_RESET_REG <= 1'b1;
            TG_RESET_REG <= 1'b0;
            delay0 <= 3'b0;
            delay1 <= 3'b0;
            delay2 <= 3'b0;
            tg_counter <= 3'b0;
            counter <= 30'd0;
            tiger <= 1'b0;
        end
        
   always @(posedge MASTER_CLK) begin
       if(counter >= 30'd268435456)
            tiger <= 1'b1;
       else
            counter <= counter + 1'b1;
            
       case(State)
           STATE_INIT:
               begin
                   if(delay2 == 3'd5)
                       begin
                           State <= STATE_SPI_RESET;
                       end
                   else
                       begin
                           delay2 <= delay2 + 1'b1;
                           State <= STATE_INIT;
                       end
               end
           STATE_SPI_RESET:
               begin
                   SPI_RESET_REG <= 1'b0;
                   State <= STATE_DELAY0;
               end
           STATE_DELAY0:
               begin
                   if(delay0 == 3'd5)
                       begin
                           SPI_RESET_REG <= 1'b1;
                           State <= STATE_TG_RESET;
                       end
                   else
                       begin
                           delay0 <= delay0 + 1'b1;
                           State <= STATE_DELAY0;
                       end
               end
            STATE_TG_RESET:
               begin
                   if(tg_counter == 3'd5)
                       begin
                           TG_RESET_REG <= 1'b1;
                           State <= STATE_DELAY1;
                       end
                   else
                       begin
                           tg_counter <= tg_counter + 1'b1;
                           State <= STATE_TG_RESET;
                       end
               end
           STATE_DELAY1: 
               begin
                   if(delay1 == 3'd5)
                       begin
                           TG_RESET_REG <= 1'b0;
                           State <= STATE_DELAY1;
                       end
                   else
                       begin
                           delay1 <= delay1 + 1'b1;
                           State <= STATE_DELAY1;
                       end
                end
           
        endcase
    end   
   
        
    ila_0 ila_sample12 ( 
        .clk(ILA_CLK),
        .probe0({M_CLOCK, SPI_CS, rw_flag[1:0], data_output[7:0], data_input[7:0], SPI_MISO, SPI_MOSI, SPI_RESET, State_copy, SPI_CLK}),                             
        .probe1({SPI_gen_CLK, TrigerEvent})
    );


//      fifo_generator_0 FIFO_for_Counter_BTPipe_Interface (
//        .wr_clk(),
//        .wr_rst(write_reset),
//        .rd_clk(okClk),
//        .rd_rst(read_reset),
//        .din(),
//        .wr_en(write_enable),
//        .rd_en(FIFO_read_enable),
//        .dout(FIFO_data_out),
//        .full(FIFO_full),
//        .empty(FIFO_empty),       
//        .prog_full(FIFO_BT_BlockSize_Full)        
//    );
      
//    okBTPipeOut CounterToPC (
//        .okHE(okHE), 
//        .okEH(okEHx[ 0*65 +: 65 ]),
//        .ep_addr(8'ha0), 
//        .ep_datain(FIFO_data_out), 
//        .ep_read(FIFO_read_enable),
//        .ep_blockstrobe(BT_Strobe), 
//        .ep_ready(FIFO_BT_BlockSize_Full)
//    );       
            
    // select io for lvds lines instantitation
/*    selectio_wiz_0 lvds_input ( 
        .data_in_from_pins_p(), 
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
        .clk_out(clk_out)
    );
 */                                    
    

                                
endmodule
