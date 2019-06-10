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
// Additional Comments: jtag is funky
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
    //wire okClk;                                     //These are FrontPanel wires needed to IO communication    
    //wire [112:0] okHE;      //These are FrontPanel wires needed to IO communication    
   // wire [64:0] okEH;       //These are FrontPanel wires needed to IO communication     
    
    //ok memory spacing for block throttle and other opal kelly wires
    localparam  endPt_count = 1;
    wire [endPt_count*65-1:0] okEHx;
    //okWireOR # (.N(endPt_count)) wireOR (okEH, okEHx);
    wire p_clk;  
    
    //lvds wires
    wire io_reset; 
    wire delay_clk;
    wire in_delay_reset;
    wire in_delay_tap_in;
    wire in_delay_data_ce; 
    wire in_delay_data_inc;
    wire in_delay_tap_out;
    wire delay_locked, clk_reset, data_in_to_device;
    wire [2:0] A,B,C,D,E;                    
    // wires for communicating
    wire [31:0] rw_flag;                // read/write flag
    wire [31:0] register_input;         // register to read/write to
    wire [31:0] data_input;             // data to write
    wire [31:0] data_output;            // data to read from
    wire error, spi_flag;
    reg spi_flag_r;
    
    assign spi_flag = spi_flag_r;
    
    //fifo controller registers
//    reg write_reset, read_reset, write_enable;
    //reset registers
    reg TG_RESET_REG, SPI_RESET_REG;
    reg [31:0] rw_flag_reg;
    //delay counters
    reg [2:0] delay0, delay1, delay2, tg_counter;
    reg tiger;
//    reg[1:0] rw_flag_tiger;
    
/* ASSIGNING WIRES AND REGISTERS TO VALUES */
    
    // assigning statements
    assign rw_flag = rw_flag_reg;
    assign TG_RESET = TG_RESET_REG;
    assign SPI_RESET = SPI_RESET_REG;
    assign M_CLOCK = MASTER_CLK;
    assign VDD_A_EN = 1'b1;                         // set up regulators VDD(D) and VDD(A)
    assign VDD_D_EN = 1'b1;
   
    reg [29:0] counter;
    assign TrigerEvent = tiger;
//    assign rw_flag[0] = rw_flag_tiger[0];
//    assign led[6] = ~tiger;
    assign led[7] = error;
//    assign led[5:0] = ~counter[27:22];
    
    // state parameters
    localparam STATE_INIT = 8'd0;
    localparam STATE_SPI_RESET = 8'd1;
    localparam STATE_DELAY0 = 8'd2;
    localparam STATE_TG_RESET = 8'd3;
    localparam STATE_DELAY1 = 8'd4;
    localparam STATE_SPI = 8'd5;
    
    reg [7:0] State = 8'd100;
    
/* INSTANTIATING MODULES */
//IBUFGDS pee_clk(
//        .O(p_clk),
//        .I(P_CLK),
//        .IB(P_CLK_N)
//    );    
    
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
        .p_clkn(P_CLK_N),
        .p_clkp(P_CLK),
        .clk(clk),   
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
        .register_input(32'd17),
        .data_input(32'd1),
        .data_output(data_output),
        .State_copy(State_copy)
    );
    
    //lvds modules
    LVDS elvedees(
            .p_clk(p_clk),
            .clk_reset(clk_reset),
            .io_reset(io_reset),                  
            .in_delay_reset(in_delay_reset),    
            .in_delay_tap_in(in_delay_tap_in),   
            .in_delay_data_ce(in_delay_data_ce),  
            .in_delay_data_inc(in_delay_data_inc),
            .spi_flag(spi_flag)
    );
  
    

    initial
        begin 
            SPI_RESET_REG <= 1'b1;
            TG_RESET_REG <= 1'b0;
            delay0 <= 3'b0;
            delay1 <= 3'b0;
            delay2 <= 3'b0;
            tg_counter <= 3'b0;
            spi_flag_r <= 1'b0;
            rw_flag_reg <= 32'd0;
            counter <= 30'd0;
            tiger <= 1'b0;
        end
        
   always @(posedge MASTER_CLK) begin
       if(counter >= 30'd268435456)
        begin
            tiger <= 1'b1;
            rw_flag_reg <= 32'd1;
         end
       else
            counter <= counter + 1'b1;
            
       case(State)
           8'd100: begin
               if(tiger == 1'b1) 
                begin
                    State <= STATE_INIT;
                end
                else
                    begin
                        State <= 8'd100;
                    end
           end
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
                           delay2 <= 3'b0;
                           State <= STATE_SPI;
                           spi_flag_r <= 1'b1;
                       end
                   else
                       begin
                           delay1 <= delay1 + 1'b1;
                           State <= STATE_DELAY1;
                       end
                end
           STATE_SPI: 
               begin
//                   if(delay2 == 3'd4) 
//                       begin
//                           rw_flag_tiger[0] <= 1'b1;
//                           State <= STATE_SPI;
//                       end 
//                   else
//                       begin
//                           delay2 <= delay2 + 1'b1;
//                           State <= STATE_SPI;
//                       end  
               end
                
           
        endcase
    end   
   
        
    ila_0 ila_sample12 ( 
        .clk(ILA_CLK),
        .probe0({SPI_CS, data_output[7:0], SPI_RESET, SPI_MISO, SPI_MOSI, State_copy, SPI_CLK}),                             
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
//    selectio_wiz_0 lvds_input ( 
//        .clk_in_p(P_CLK),
//        .clk_in_n(P_CLK_N),
//        .data_in_from_pins_p(LVDS_OUT_A), 
//        .data_in_from_pins_n(LVDS_OUT_AN), 
//        .clk_reset(clk_reset),
//        .io_reset(io_reset),
//        .in_delay_reset(in_delay_reset), 
//        .in_delay_tap_in(in_delay_tap_in),
//        .in_delay_data_ce(in_delay_data_ce), 
//        .in_delay_data_inc(in_delay_data_inc), 
//        .ref_clock(clk), 
//        .bitslip(3'b0),
//        .in_delay_tap_out(in_delay_tap_out),
//        .delay_locked(delay_locked), 
//        .clk_div_out(clk_out),
//        .data_in_to_device(data_in_to_device)
//    );
                                    
    

                                
endmodule
