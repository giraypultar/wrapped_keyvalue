`default_nettype none
`ifdef FORMAL
    `define MPRJ_IO_PADS 38    
`endif

`define USE_WB  1
`define USE_LA  1
`define USE_IO  1
//`define USE_MEM 0
//`define USE_IRQ 0

// update this to the name of your module
module both(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif
    input wire wb_clk_i,            // clock, runs at system clock
 // wishbone interface
`ifdef USE_WB
    input wire wb_rst_i,            // main system reset
    input wire wbs_stb_i,           // wishbone write strobe
    input wire wbs_cyc_i,           // wishbone cycle
    input wire wbs_we_i,            // wishbone write enable
    input wire [3:0] wbs_sel_i,     // wishbone write word select
    input wire [31:0] wbs_dat_i,    // wishbone data in
    input wire [31:0] wbs_adr_i,    // wishbone address
    output wire wbs_ack_o,          // wishbone ack
    output wire [31:0] wbs_dat_o,   // wishbone data out
`endif
    // Logic Analyzer Signals
    // only provide first 32 bits to reduce wiring congestion
`ifdef USE_LA
    input  wire [31:0] la1_data_in,  // from PicoRV32 to your project
    output wire [31:0] la1_data_out, // from your project to PicoRV32
    input  wire [31:0] la1_oenb,     // output enable bar (low for active)
`endif

    // IOs
`ifdef USE_IO
    input  wire [`MPRJ_IO_PADS-1:0] io_in,  // in to your project
    output wire [`MPRJ_IO_PADS-1:0] io_out, // out fro your project
    output wire [`MPRJ_IO_PADS-1:0] io_oeb, // out enable bar (low active)
`endif

    // IRQ
`ifdef USE_IRQ
    output wire [2:0] user_irq,          // interrupt from project to PicoRV32
`endif

`ifdef USE_CLK2
    // extra user clock
    input wire user_clock2,
`endif
    
    // active input, only connect tristated outputs if this is high
    input wire active
);

    // Use the buffered outputs for your module's outputs.
    keyvalue_3 keyvalue3(
		       .sys_clk   (wb_clk_i),
		       .sys_rst_1   (wb_rst_i),
		       .STB_i     (wbs_stb_i),
		       .CYC_i     (wbs_cyc_i),
		       .WE_i      (wbs_we_i),
			 // .SEL_i     (wbs_sel_i),
			 .ADR_IS_KEY_i (wbs_sel_i[0]),
 			 .DAT_IS_KEY_i (wbs_sel_i[1]),
		       .DAT_i     (wbs_dat_i),
		       .ADR_i     (wbs_adr_i),
		       .DAT_o     (wbs_dat_o[15:0]),
		       .DUP_o     (wbs_dat_o[16]),
		       .LA_o      (la_data_out)
		       );
   


       // Use the buffered outputs for your module's outputs.
    keyvalue_4 keyvalue4(
		       .ACK_o     (io_out[8]),
		       .sys_clk   (io_in[9]),
		       .sys_rst_1 (wb_rst_i),
		       .STB_i     (io_in[10]),
		       .WE_i      (io_in[11]),
		       .ADR_IS_KEY_i (io_in[19]),
 		       .DAT_IS_KEY_i (io_in[27]),			 
		       .DAT_i     (io_in[18:12]),
		       .ADR_i     (io_in[26:20]),
		       .DAT_o     (io_out[34:28]),
			 .DUP_o     (io_out[35]),
// not connected		       .LA_o      (buf_la1_data_out),
		       );
   

endmodule 
`default_nettype wire
