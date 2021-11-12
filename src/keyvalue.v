/* Machine-generated using Migen */
module keyvalue(
	input [15:0] KEY_i,
	input [15:0] VALUE_i_o,
	input RESET_i,
	input [15:0] ADR_i,
	input [15:0] DAT_i,
	input WE_i,
	input STB_i,
	input CYC_i,
	output reg STALL_o,
	output reg ACK_o,
	output reg [15:0] DAT_o,
	output [15:0] BUF_o,
	output [15:0] LA_o,
	input sys_clk,
	input sys_rst
);

reg [15:0] storak0 = 16'd0;
reg [15:0] storak1 = 16'd0;
reg [15:0] storak2 = 16'd0;
reg [15:0] storak3 = 16'd0;
reg [15:0] storak4 = 16'd0;
reg [15:0] storak5 = 16'd0;
reg [15:0] storak6 = 16'd0;
reg [15:0] storak7 = 16'd0;
reg [15:0] storav0 = 16'd0;
reg [15:0] storav1 = 16'd0;
reg [15:0] storav2 = 16'd0;
reg [15:0] storav3 = 16'd0;
reg [15:0] storav4 = 16'd0;
reg [15:0] storav5 = 16'd0;
reg [15:0] storav6 = 16'd0;
reg [15:0] storav7 = 16'd0;
reg [15:0] empty_location = 16'd1;
reg [1:0] state = 2'd3;
reg [1:0] next_state;
reg STALL_o_next_value0;
reg STALL_o_next_value_ce0;
reg ACK_o_next_value1;
reg ACK_o_next_value_ce1;
reg [15:0] empty_location_next_value2;
reg empty_location_next_value_ce2;
reg [15:0] DAT_o_next_value3;
reg DAT_o_next_value_ce3;
reg [15:0] t_next_value0;
reg t_next_value_ce0;
reg [15:0] t_next_value1;
reg t_next_value_ce1;
reg [15:0] f_next_value0;
reg f_next_value_ce0;
reg [15:0] f_next_value1;
reg f_next_value_ce1;
reg [15:0] comb_array_muxed;
reg [15:0] sync_array_muxed0 = 16'd0;
reg [15:0] sync_array_muxed1 = 16'd0;
reg [15:0] sync_array_muxed2 = 16'd0;
reg [15:0] sync_array_muxed3 = 16'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign LA_o = DAT_o;
assign BUF_o = ADR_i;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	next_state <= 2'd0;
	STALL_o_next_value0 <= 1'd0;
	STALL_o_next_value_ce0 <= 1'd0;
	ACK_o_next_value1 <= 1'd0;
	ACK_o_next_value_ce1 <= 1'd0;
	empty_location_next_value2 <= 16'd0;
	empty_location_next_value_ce2 <= 1'd0;
	DAT_o_next_value3 <= 16'd0;
	DAT_o_next_value_ce3 <= 1'd0;
	t_next_value0 <= 16'd0;
	t_next_value_ce0 <= 1'd0;
	t_next_value1 <= 16'd0;
	t_next_value_ce1 <= 1'd0;
	f_next_value0 <= 16'd0;
	f_next_value_ce0 <= 1'd0;
	f_next_value1 <= 16'd0;
	f_next_value_ce1 <= 1'd0;
	next_state <= state;
	case (state)
		1'd0: begin
			STALL_o_next_value0 <= 1'd1;
			STALL_o_next_value_ce0 <= 1'd1;
			ACK_o_next_value1 <= 1'd0;
			ACK_o_next_value_ce1 <= 1'd1;
			if ((STB_i == 1'd1)) begin
				next_state <= 1'd1;
			end
			if (((STB_i == 1'd1) & (WE_i == 1'd1))) begin
				next_state <= 2'd2;
				if ((ADR_i == 1'd0)) begin
					empty_location_next_value2 <= (empty_location + 1'd1);
					empty_location_next_value_ce2 <= 1'd1;
				end
			end
		end
		1'd1: begin
			DAT_o_next_value3 <= comb_array_muxed;
			DAT_o_next_value_ce3 <= 1'd1;
			STALL_o_next_value0 <= 1'd0;
			STALL_o_next_value_ce0 <= 1'd1;
			if ((RESET_i == 1'd1)) begin
				next_state <= 2'd3;
			end
			if ((CYC_i == 1'd0)) begin
				ACK_o_next_value1 <= 1'd1;
				ACK_o_next_value_ce1 <= 1'd1;
				next_state <= 1'd0;
			end
		end
		2'd2: begin
			if ((ADR_i == 1'd0)) begin
				t_next_value0 <= DAT_i;
				t_next_value_ce0 <= 1'd1;
				t_next_value1 <= KEY_i;
				t_next_value_ce1 <= 1'd1;
				empty_location_next_value2 <= (empty_location + 1'd1);
				empty_location_next_value_ce2 <= 1'd1;
				DAT_o_next_value3 <= empty_location;
				DAT_o_next_value_ce3 <= 1'd1;
			end else begin
				f_next_value0 <= DAT_i;
				f_next_value_ce0 <= 1'd1;
				f_next_value1 <= KEY_i;
				f_next_value_ce1 <= 1'd1;
				DAT_o_next_value3 <= ADR_i;
				DAT_o_next_value_ce3 <= 1'd1;
			end
			ACK_o_next_value1 <= 1'd1;
			ACK_o_next_value_ce1 <= 1'd1;
			next_state <= 1'd0;
			if ((RESET_i == 1'd1)) begin
				next_state <= 2'd3;
			end else begin
				next_state <= 1'd0;
			end
		end
		default: begin
			next_state <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	comb_array_muxed <= 16'd0;
	case (ADR_i)
		1'd0: begin
			comb_array_muxed <= storav0;
		end
		1'd1: begin
			comb_array_muxed <= storav1;
		end
		2'd2: begin
			comb_array_muxed <= storav2;
		end
		2'd3: begin
			comb_array_muxed <= storav3;
		end
		3'd4: begin
			comb_array_muxed <= storav4;
		end
		3'd5: begin
			comb_array_muxed <= storav5;
		end
		3'd6: begin
			comb_array_muxed <= storav6;
		end
		default: begin
			comb_array_muxed <= storav7;
		end
	endcase
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	state <= next_state;
	if (STALL_o_next_value_ce0) begin
		STALL_o <= STALL_o_next_value0;
	end
	if (ACK_o_next_value_ce1) begin
		ACK_o <= ACK_o_next_value1;
	end
	if (empty_location_next_value_ce2) begin
		empty_location <= empty_location_next_value2;
	end
	if (DAT_o_next_value_ce3) begin
		DAT_o <= DAT_o_next_value3;
	end
	if (t_next_value_ce0) begin
		sync_array_muxed0 = t_next_value0;
		case (empty_location)
			1'd0: begin
				storav0 <= sync_array_muxed0;
			end
			1'd1: begin
				storav1 <= sync_array_muxed0;
			end
			2'd2: begin
				storav2 <= sync_array_muxed0;
			end
			2'd3: begin
				storav3 <= sync_array_muxed0;
			end
			3'd4: begin
				storav4 <= sync_array_muxed0;
			end
			3'd5: begin
				storav5 <= sync_array_muxed0;
			end
			3'd6: begin
				storav6 <= sync_array_muxed0;
			end
			default: begin
				storav7 <= sync_array_muxed0;
			end
		endcase
	end
	if (t_next_value_ce1) begin
		sync_array_muxed1 = t_next_value1;
		case (empty_location)
			1'd0: begin
				storak0 <= sync_array_muxed1;
			end
			1'd1: begin
				storak1 <= sync_array_muxed1;
			end
			2'd2: begin
				storak2 <= sync_array_muxed1;
			end
			2'd3: begin
				storak3 <= sync_array_muxed1;
			end
			3'd4: begin
				storak4 <= sync_array_muxed1;
			end
			3'd5: begin
				storak5 <= sync_array_muxed1;
			end
			3'd6: begin
				storak6 <= sync_array_muxed1;
			end
			default: begin
				storak7 <= sync_array_muxed1;
			end
		endcase
	end
	if (f_next_value_ce0) begin
		sync_array_muxed2 = f_next_value0;
		case (ADR_i)
			1'd0: begin
				storav0 <= sync_array_muxed2;
			end
			1'd1: begin
				storav1 <= sync_array_muxed2;
			end
			2'd2: begin
				storav2 <= sync_array_muxed2;
			end
			2'd3: begin
				storav3 <= sync_array_muxed2;
			end
			3'd4: begin
				storav4 <= sync_array_muxed2;
			end
			3'd5: begin
				storav5 <= sync_array_muxed2;
			end
			3'd6: begin
				storav6 <= sync_array_muxed2;
			end
			default: begin
				storav7 <= sync_array_muxed2;
			end
		endcase
	end
	if (f_next_value_ce1) begin
		sync_array_muxed3 = f_next_value1;
		case (ADR_i)
			1'd0: begin
				storak0 <= sync_array_muxed3;
			end
			1'd1: begin
				storak1 <= sync_array_muxed3;
			end
			2'd2: begin
				storak2 <= sync_array_muxed3;
			end
			2'd3: begin
				storak3 <= sync_array_muxed3;
			end
			3'd4: begin
				storak4 <= sync_array_muxed3;
			end
			3'd5: begin
				storak5 <= sync_array_muxed3;
			end
			3'd6: begin
				storak6 <= sync_array_muxed3;
			end
			default: begin
				storak7 <= sync_array_muxed3;
			end
		endcase
	end
	if (sys_rst) begin
		STALL_o <= 1'd0;
		ACK_o <= 1'd0;
		DAT_o <= 16'd0;
		storak0 <= 16'd0;
		storak1 <= 16'd0;
		storak2 <= 16'd0;
		storak3 <= 16'd0;
		storak4 <= 16'd0;
		storak5 <= 16'd0;
		storak6 <= 16'd0;
		storak7 <= 16'd0;
		storav0 <= 16'd0;
		storav1 <= 16'd0;
		storav2 <= 16'd0;
		storav3 <= 16'd0;
		storav4 <= 16'd0;
		storav5 <= 16'd0;
		storav6 <= 16'd0;
		storav7 <= 16'd0;
		empty_location <= 16'd1;
		state <= 2'd3;
	end
end

endmodule


