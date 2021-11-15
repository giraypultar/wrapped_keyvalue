/* Machine-generated using Migen */
module keyvalue_1(
	input [15:0] KEY_i,
	input [15:0] VALUE_i_o,
	input RESET_i,
	input [3:0] SEL_i,
	input [15:0] ADR_i,
	input [15:0] DAT_i,
	input WE_i,
	input STB_i,
	input CYC_i,
	output reg STALL_o,
	output reg ACK_o,
	output reg [15:0] DAT_o,
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
reg [15:0] storak8 = 16'd0;
reg [15:0] storak9 = 16'd0;
reg [15:0] storak10 = 16'd0;
reg [15:0] storak11 = 16'd0;
reg [15:0] storak12 = 16'd0;
reg [15:0] storak13 = 16'd0;
reg [15:0] storak14 = 16'd0;
reg [15:0] storak15 = 16'd0;
reg [15:0] storak16 = 16'd0;
reg [15:0] storak17 = 16'd0;
reg [15:0] storak18 = 16'd0;
reg [15:0] storak19 = 16'd0;
reg [15:0] storak20 = 16'd0;
reg [15:0] storak21 = 16'd0;
reg [15:0] storak22 = 16'd0;
reg [15:0] storak23 = 16'd0;
reg [15:0] storak24 = 16'd0;
reg [15:0] storak25 = 16'd0;
reg [15:0] storak26 = 16'd0;
reg [15:0] storak27 = 16'd0;
reg [15:0] storak28 = 16'd0;
reg [15:0] storak29 = 16'd0;
reg [15:0] storak30 = 16'd0;
reg [15:0] storak31 = 16'd0;
reg [15:0] storav0 = 16'd0;
reg [15:0] storav1 = 16'd0;
reg [15:0] storav2 = 16'd0;
reg [15:0] storav3 = 16'd0;
reg [15:0] storav4 = 16'd0;
reg [15:0] storav5 = 16'd0;
reg [15:0] storav6 = 16'd0;
reg [15:0] storav7 = 16'd0;
reg [15:0] storav8 = 16'd0;
reg [15:0] storav9 = 16'd0;
reg [15:0] storav10 = 16'd0;
reg [15:0] storav11 = 16'd0;
reg [15:0] storav12 = 16'd0;
reg [15:0] storav13 = 16'd0;
reg [15:0] storav14 = 16'd0;
reg [15:0] storav15 = 16'd0;
reg [15:0] storav16 = 16'd0;
reg [15:0] storav17 = 16'd0;
reg [15:0] storav18 = 16'd0;
reg [15:0] storav19 = 16'd0;
reg [15:0] storav20 = 16'd0;
reg [15:0] storav21 = 16'd0;
reg [15:0] storav22 = 16'd0;
reg [15:0] storav23 = 16'd0;
reg [15:0] storav24 = 16'd0;
reg [15:0] storav25 = 16'd0;
reg [15:0] storav26 = 16'd0;
reg [15:0] storav27 = 16'd0;
reg [15:0] storav28 = 16'd0;
reg [15:0] storav29 = 16'd0;
reg [15:0] storav30 = 16'd0;
reg [15:0] storav31 = 16'd0;
reg [15:0] empty_location = 16'd0;
reg [1:0] state = 2'd3;
reg [1:0] next_state;
reg STALL_o_next_value0;
reg STALL_o_next_value_ce0;
reg [15:0] empty_location_t_next_value;
reg empty_location_t_next_value_ce;
reg ACK_o_f_next_value;
reg ACK_o_f_next_value_ce;
reg [15:0] DAT_o_next_value1;
reg DAT_o_next_value_ce1;
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

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	next_state <= 2'd0;
	STALL_o_next_value0 <= 1'd0;
	STALL_o_next_value_ce0 <= 1'd0;
	empty_location_t_next_value <= 16'd0;
	empty_location_t_next_value_ce <= 1'd0;
	ACK_o_f_next_value <= 1'd0;
	ACK_o_f_next_value_ce <= 1'd0;
	DAT_o_next_value1 <= 16'd0;
	DAT_o_next_value_ce1 <= 1'd0;
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
			STALL_o_next_value0 <= 1'd0;
			STALL_o_next_value_ce0 <= 1'd1;
			if ((((STB_i == 1'd1) & (WE_i == 1'd0)) & (ACK_o == 1'd0))) begin
				next_state <= 1'd1;
			end else begin
				if ((((STB_i == 1'd1) & (WE_i == 1'd1)) & (ACK_o == 1'd0))) begin
					next_state <= 2'd2;
					if ((ADR_i == 16'd0)) begin
						empty_location_t_next_value <= (empty_location + 1'd1);
						empty_location_t_next_value_ce <= 1'd1;
					end
				end else begin
					ACK_o_f_next_value <= 1'd0;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
		end
		1'd1: begin
			if ((ADR_i == 16'd0)) begin
				if ((storak1 == KEY_i)) begin
					DAT_o_next_value1 <= storav1;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak2 == KEY_i)) begin
					DAT_o_next_value1 <= storav2;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak3 == KEY_i)) begin
					DAT_o_next_value1 <= storav3;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak4 == KEY_i)) begin
					DAT_o_next_value1 <= storav4;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak5 == KEY_i)) begin
					DAT_o_next_value1 <= storav5;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak6 == KEY_i)) begin
					DAT_o_next_value1 <= storav6;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak7 == KEY_i)) begin
					DAT_o_next_value1 <= storav7;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak8 == KEY_i)) begin
					DAT_o_next_value1 <= storav8;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak9 == KEY_i)) begin
					DAT_o_next_value1 <= storav9;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak10 == KEY_i)) begin
					DAT_o_next_value1 <= storav10;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak11 == KEY_i)) begin
					DAT_o_next_value1 <= storav11;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak12 == KEY_i)) begin
					DAT_o_next_value1 <= storav12;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak13 == KEY_i)) begin
					DAT_o_next_value1 <= storav13;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak14 == KEY_i)) begin
					DAT_o_next_value1 <= storav14;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak15 == KEY_i)) begin
					DAT_o_next_value1 <= storav15;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak16 == KEY_i)) begin
					DAT_o_next_value1 <= storav16;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak17 == KEY_i)) begin
					DAT_o_next_value1 <= storav17;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak18 == KEY_i)) begin
					DAT_o_next_value1 <= storav18;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak19 == KEY_i)) begin
					DAT_o_next_value1 <= storav19;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak20 == KEY_i)) begin
					DAT_o_next_value1 <= storav20;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak21 == KEY_i)) begin
					DAT_o_next_value1 <= storav21;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak22 == KEY_i)) begin
					DAT_o_next_value1 <= storav22;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak23 == KEY_i)) begin
					DAT_o_next_value1 <= storav23;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak24 == KEY_i)) begin
					DAT_o_next_value1 <= storav24;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak25 == KEY_i)) begin
					DAT_o_next_value1 <= storav25;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak26 == KEY_i)) begin
					DAT_o_next_value1 <= storav26;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak27 == KEY_i)) begin
					DAT_o_next_value1 <= storav27;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak28 == KEY_i)) begin
					DAT_o_next_value1 <= storav28;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak29 == KEY_i)) begin
					DAT_o_next_value1 <= storav29;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak30 == KEY_i)) begin
					DAT_o_next_value1 <= storav30;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i == 16'd0)) begin
				if ((storak31 == KEY_i)) begin
					DAT_o_next_value1 <= storav31;
					DAT_o_next_value_ce1 <= 1'd1;
					ACK_o_f_next_value <= 1'd1;
					ACK_o_f_next_value_ce <= 1'd1;
					next_state <= 1'd0;
				end
			end
			if ((ADR_i != 16'd0)) begin
				DAT_o_next_value1 <= comb_array_muxed;
				DAT_o_next_value_ce1 <= 1'd1;
				ACK_o_f_next_value <= 1'd1;
				ACK_o_f_next_value_ce <= 1'd1;
				next_state <= 1'd0;
			end
			if ((RESET_i == 1'd1)) begin
				next_state <= 2'd3;
			end
		end
		2'd2: begin
			if ((ADR_i == 16'd0)) begin
				t_next_value0 <= DAT_i;
				t_next_value_ce0 <= 1'd1;
				t_next_value1 <= KEY_i;
				t_next_value_ce1 <= 1'd1;
				DAT_o_next_value1 <= empty_location;
				DAT_o_next_value_ce1 <= 1'd1;
			end else begin
				f_next_value0 <= DAT_i;
				f_next_value_ce0 <= 1'd1;
				f_next_value1 <= KEY_i;
				f_next_value_ce1 <= 1'd1;
				DAT_o_next_value1 <= ADR_i;
				DAT_o_next_value_ce1 <= 1'd1;
			end
			ACK_o_f_next_value <= 1'd1;
			ACK_o_f_next_value_ce <= 1'd1;
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
		3'd7: begin
			comb_array_muxed <= storav7;
		end
		4'd8: begin
			comb_array_muxed <= storav8;
		end
		4'd9: begin
			comb_array_muxed <= storav9;
		end
		4'd10: begin
			comb_array_muxed <= storav10;
		end
		4'd11: begin
			comb_array_muxed <= storav11;
		end
		4'd12: begin
			comb_array_muxed <= storav12;
		end
		4'd13: begin
			comb_array_muxed <= storav13;
		end
		4'd14: begin
			comb_array_muxed <= storav14;
		end
		4'd15: begin
			comb_array_muxed <= storav15;
		end
		5'd16: begin
			comb_array_muxed <= storav16;
		end
		5'd17: begin
			comb_array_muxed <= storav17;
		end
		5'd18: begin
			comb_array_muxed <= storav18;
		end
		5'd19: begin
			comb_array_muxed <= storav19;
		end
		5'd20: begin
			comb_array_muxed <= storav20;
		end
		5'd21: begin
			comb_array_muxed <= storav21;
		end
		5'd22: begin
			comb_array_muxed <= storav22;
		end
		5'd23: begin
			comb_array_muxed <= storav23;
		end
		5'd24: begin
			comb_array_muxed <= storav24;
		end
		5'd25: begin
			comb_array_muxed <= storav25;
		end
		5'd26: begin
			comb_array_muxed <= storav26;
		end
		5'd27: begin
			comb_array_muxed <= storav27;
		end
		5'd28: begin
			comb_array_muxed <= storav28;
		end
		5'd29: begin
			comb_array_muxed <= storav29;
		end
		5'd30: begin
			comb_array_muxed <= storav30;
		end
		default: begin
			comb_array_muxed <= storav31;
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
	if (empty_location_t_next_value_ce) begin
		empty_location <= empty_location_t_next_value;
	end
	if (ACK_o_f_next_value_ce) begin
		ACK_o <= ACK_o_f_next_value;
	end
	if (DAT_o_next_value_ce1) begin
		DAT_o <= DAT_o_next_value1;
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
			3'd7: begin
				storav7 <= sync_array_muxed0;
			end
			4'd8: begin
				storav8 <= sync_array_muxed0;
			end
			4'd9: begin
				storav9 <= sync_array_muxed0;
			end
			4'd10: begin
				storav10 <= sync_array_muxed0;
			end
			4'd11: begin
				storav11 <= sync_array_muxed0;
			end
			4'd12: begin
				storav12 <= sync_array_muxed0;
			end
			4'd13: begin
				storav13 <= sync_array_muxed0;
			end
			4'd14: begin
				storav14 <= sync_array_muxed0;
			end
			4'd15: begin
				storav15 <= sync_array_muxed0;
			end
			5'd16: begin
				storav16 <= sync_array_muxed0;
			end
			5'd17: begin
				storav17 <= sync_array_muxed0;
			end
			5'd18: begin
				storav18 <= sync_array_muxed0;
			end
			5'd19: begin
				storav19 <= sync_array_muxed0;
			end
			5'd20: begin
				storav20 <= sync_array_muxed0;
			end
			5'd21: begin
				storav21 <= sync_array_muxed0;
			end
			5'd22: begin
				storav22 <= sync_array_muxed0;
			end
			5'd23: begin
				storav23 <= sync_array_muxed0;
			end
			5'd24: begin
				storav24 <= sync_array_muxed0;
			end
			5'd25: begin
				storav25 <= sync_array_muxed0;
			end
			5'd26: begin
				storav26 <= sync_array_muxed0;
			end
			5'd27: begin
				storav27 <= sync_array_muxed0;
			end
			5'd28: begin
				storav28 <= sync_array_muxed0;
			end
			5'd29: begin
				storav29 <= sync_array_muxed0;
			end
			5'd30: begin
				storav30 <= sync_array_muxed0;
			end
			default: begin
				storav31 <= sync_array_muxed0;
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
			3'd7: begin
				storak7 <= sync_array_muxed1;
			end
			4'd8: begin
				storak8 <= sync_array_muxed1;
			end
			4'd9: begin
				storak9 <= sync_array_muxed1;
			end
			4'd10: begin
				storak10 <= sync_array_muxed1;
			end
			4'd11: begin
				storak11 <= sync_array_muxed1;
			end
			4'd12: begin
				storak12 <= sync_array_muxed1;
			end
			4'd13: begin
				storak13 <= sync_array_muxed1;
			end
			4'd14: begin
				storak14 <= sync_array_muxed1;
			end
			4'd15: begin
				storak15 <= sync_array_muxed1;
			end
			5'd16: begin
				storak16 <= sync_array_muxed1;
			end
			5'd17: begin
				storak17 <= sync_array_muxed1;
			end
			5'd18: begin
				storak18 <= sync_array_muxed1;
			end
			5'd19: begin
				storak19 <= sync_array_muxed1;
			end
			5'd20: begin
				storak20 <= sync_array_muxed1;
			end
			5'd21: begin
				storak21 <= sync_array_muxed1;
			end
			5'd22: begin
				storak22 <= sync_array_muxed1;
			end
			5'd23: begin
				storak23 <= sync_array_muxed1;
			end
			5'd24: begin
				storak24 <= sync_array_muxed1;
			end
			5'd25: begin
				storak25 <= sync_array_muxed1;
			end
			5'd26: begin
				storak26 <= sync_array_muxed1;
			end
			5'd27: begin
				storak27 <= sync_array_muxed1;
			end
			5'd28: begin
				storak28 <= sync_array_muxed1;
			end
			5'd29: begin
				storak29 <= sync_array_muxed1;
			end
			5'd30: begin
				storak30 <= sync_array_muxed1;
			end
			default: begin
				storak31 <= sync_array_muxed1;
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
			3'd7: begin
				storav7 <= sync_array_muxed2;
			end
			4'd8: begin
				storav8 <= sync_array_muxed2;
			end
			4'd9: begin
				storav9 <= sync_array_muxed2;
			end
			4'd10: begin
				storav10 <= sync_array_muxed2;
			end
			4'd11: begin
				storav11 <= sync_array_muxed2;
			end
			4'd12: begin
				storav12 <= sync_array_muxed2;
			end
			4'd13: begin
				storav13 <= sync_array_muxed2;
			end
			4'd14: begin
				storav14 <= sync_array_muxed2;
			end
			4'd15: begin
				storav15 <= sync_array_muxed2;
			end
			5'd16: begin
				storav16 <= sync_array_muxed2;
			end
			5'd17: begin
				storav17 <= sync_array_muxed2;
			end
			5'd18: begin
				storav18 <= sync_array_muxed2;
			end
			5'd19: begin
				storav19 <= sync_array_muxed2;
			end
			5'd20: begin
				storav20 <= sync_array_muxed2;
			end
			5'd21: begin
				storav21 <= sync_array_muxed2;
			end
			5'd22: begin
				storav22 <= sync_array_muxed2;
			end
			5'd23: begin
				storav23 <= sync_array_muxed2;
			end
			5'd24: begin
				storav24 <= sync_array_muxed2;
			end
			5'd25: begin
				storav25 <= sync_array_muxed2;
			end
			5'd26: begin
				storav26 <= sync_array_muxed2;
			end
			5'd27: begin
				storav27 <= sync_array_muxed2;
			end
			5'd28: begin
				storav28 <= sync_array_muxed2;
			end
			5'd29: begin
				storav29 <= sync_array_muxed2;
			end
			5'd30: begin
				storav30 <= sync_array_muxed2;
			end
			default: begin
				storav31 <= sync_array_muxed2;
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
			3'd7: begin
				storak7 <= sync_array_muxed3;
			end
			4'd8: begin
				storak8 <= sync_array_muxed3;
			end
			4'd9: begin
				storak9 <= sync_array_muxed3;
			end
			4'd10: begin
				storak10 <= sync_array_muxed3;
			end
			4'd11: begin
				storak11 <= sync_array_muxed3;
			end
			4'd12: begin
				storak12 <= sync_array_muxed3;
			end
			4'd13: begin
				storak13 <= sync_array_muxed3;
			end
			4'd14: begin
				storak14 <= sync_array_muxed3;
			end
			4'd15: begin
				storak15 <= sync_array_muxed3;
			end
			5'd16: begin
				storak16 <= sync_array_muxed3;
			end
			5'd17: begin
				storak17 <= sync_array_muxed3;
			end
			5'd18: begin
				storak18 <= sync_array_muxed3;
			end
			5'd19: begin
				storak19 <= sync_array_muxed3;
			end
			5'd20: begin
				storak20 <= sync_array_muxed3;
			end
			5'd21: begin
				storak21 <= sync_array_muxed3;
			end
			5'd22: begin
				storak22 <= sync_array_muxed3;
			end
			5'd23: begin
				storak23 <= sync_array_muxed3;
			end
			5'd24: begin
				storak24 <= sync_array_muxed3;
			end
			5'd25: begin
				storak25 <= sync_array_muxed3;
			end
			5'd26: begin
				storak26 <= sync_array_muxed3;
			end
			5'd27: begin
				storak27 <= sync_array_muxed3;
			end
			5'd28: begin
				storak28 <= sync_array_muxed3;
			end
			5'd29: begin
				storak29 <= sync_array_muxed3;
			end
			5'd30: begin
				storak30 <= sync_array_muxed3;
			end
			default: begin
				storak31 <= sync_array_muxed3;
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
		storak8 <= 16'd0;
		storak9 <= 16'd0;
		storak10 <= 16'd0;
		storak11 <= 16'd0;
		storak12 <= 16'd0;
		storak13 <= 16'd0;
		storak14 <= 16'd0;
		storak15 <= 16'd0;
		storak16 <= 16'd0;
		storak17 <= 16'd0;
		storak18 <= 16'd0;
		storak19 <= 16'd0;
		storak20 <= 16'd0;
		storak21 <= 16'd0;
		storak22 <= 16'd0;
		storak23 <= 16'd0;
		storak24 <= 16'd0;
		storak25 <= 16'd0;
		storak26 <= 16'd0;
		storak27 <= 16'd0;
		storak28 <= 16'd0;
		storak29 <= 16'd0;
		storak30 <= 16'd0;
		storak31 <= 16'd0;
		storav0 <= 16'd0;
		storav1 <= 16'd0;
		storav2 <= 16'd0;
		storav3 <= 16'd0;
		storav4 <= 16'd0;
		storav5 <= 16'd0;
		storav6 <= 16'd0;
		storav7 <= 16'd0;
		storav8 <= 16'd0;
		storav9 <= 16'd0;
		storav10 <= 16'd0;
		storav11 <= 16'd0;
		storav12 <= 16'd0;
		storav13 <= 16'd0;
		storav14 <= 16'd0;
		storav15 <= 16'd0;
		storav16 <= 16'd0;
		storav17 <= 16'd0;
		storav18 <= 16'd0;
		storav19 <= 16'd0;
		storav20 <= 16'd0;
		storav21 <= 16'd0;
		storav22 <= 16'd0;
		storav23 <= 16'd0;
		storav24 <= 16'd0;
		storav25 <= 16'd0;
		storav26 <= 16'd0;
		storav27 <= 16'd0;
		storav28 <= 16'd0;
		storav29 <= 16'd0;
		storav30 <= 16'd0;
		storav31 <= 16'd0;
		empty_location <= 16'd0;
		state <= 2'd3;
	end
end

endmodule


