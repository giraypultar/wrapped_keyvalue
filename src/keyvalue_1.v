/* Machine-generated using Migen */
module keyvalue_1(
	input sys_rst,
	input [3:0] SEL_i,
	input ADR_IS_KEY_i,
	input DAT_IS_KEY_i,
	input [7:0] ADR_i,
	input [7:0] DAT_i,
	input WE_i,
	input STB_i,
	input CYC_i,
	input DUP_o,
	output reg STALL_o,
	output reg ACK_o,
	output reg [7:0] DAT_o,
	output [7:0] LA_o,
	input sys_clk,
	input sys_rst_1
);

reg [7:0] __main___storak0 = 8'd0;
reg [7:0] __main___storak1 = 8'd0;
reg [7:0] __main___storak2 = 8'd0;
reg [7:0] __main___storak3 = 8'd0;
reg [7:0] __main___storak4 = 8'd0;
reg [7:0] __main___storak5 = 8'd0;
reg [7:0] __main___storak6 = 8'd0;
reg [7:0] __main___storak7 = 8'd0;
reg [7:0] __main___storav0 = 8'd0;
reg [7:0] __main___storav1 = 8'd0;
reg [7:0] __main___storav2 = 8'd0;
reg [7:0] __main___storav3 = 8'd0;
reg [7:0] __main___storav4 = 8'd0;
reg [7:0] __main___storav5 = 8'd0;
reg [7:0] __main___storav6 = 8'd0;
reg [7:0] __main___storav7 = 8'd0;
reg [7:0] __main___empty_location = 8'd0;
reg [1:0] convert_state = 2'd3;
reg [1:0] convert_next_state;
reg __main___STALL_o_next_value0;
reg __main___STALL_o_next_value_ce0;
reg [7:0] __main___empty_location_t_next_value;
reg __main___empty_location_t_next_value_ce;
reg __main___ACK_o_f_next_value;
reg __main___ACK_o_f_next_value_ce;
reg [7:0] __main___DAT_o_next_value1;
reg __main___DAT_o_next_value_ce1;
reg [7:0] convert_next_value0;
reg convert_next_value_ce0;
reg [7:0] convert_next_value1;
reg convert_next_value_ce1;
reg [7:0] convert_t_next_value;
reg convert_t_next_value_ce;
reg [7:0] convert_f_next_value;
reg convert_f_next_value_ce;
reg [7:0] convert_comb_array_muxed;
reg [7:0] convert_sync_array_muxed0 = 8'd0;
reg [7:0] convert_sync_array_muxed1 = 8'd0;
reg [7:0] convert_sync_array_muxed2 = 8'd0;
reg [7:0] convert_sync_array_muxed3 = 8'd0;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign LA_o = DAT_o;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	convert_next_state <= 2'd0;
	__main___STALL_o_next_value0 <= 1'd0;
	__main___STALL_o_next_value_ce0 <= 1'd0;
	__main___empty_location_t_next_value <= 8'd0;
	__main___empty_location_t_next_value_ce <= 1'd0;
	__main___ACK_o_f_next_value <= 1'd0;
	__main___ACK_o_f_next_value_ce <= 1'd0;
	__main___DAT_o_next_value1 <= 8'd0;
	__main___DAT_o_next_value_ce1 <= 1'd0;
	convert_next_value0 <= 8'd0;
	convert_next_value_ce0 <= 1'd0;
	convert_next_value1 <= 8'd0;
	convert_next_value_ce1 <= 1'd0;
	convert_t_next_value <= 8'd0;
	convert_t_next_value_ce <= 1'd0;
	convert_f_next_value <= 8'd0;
	convert_f_next_value_ce <= 1'd0;
	convert_next_state <= convert_state;
	case (convert_state)
		1'd0: begin
			__main___STALL_o_next_value0 <= 1'd0;
			__main___STALL_o_next_value_ce0 <= 1'd1;
			if ((((STB_i == 1'd1) & (WE_i == 1'd0)) & (ACK_o == 1'd0))) begin
				convert_next_state <= 1'd1;
			end else begin
				if ((((STB_i == 1'd1) & (WE_i == 1'd1)) & (ACK_o == 1'd0))) begin
					convert_next_state <= 2'd2;
					if ((ADR_i == 8'd0)) begin
						__main___empty_location_t_next_value <= (__main___empty_location + 1'd1);
						__main___empty_location_t_next_value_ce <= 1'd1;
					end
				end else begin
					__main___ACK_o_f_next_value <= 1'd0;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
		end
		1'd1: begin
			if ((ADR_IS_KEY_i == 1'd1)) begin
				if ((__main___storak1 == ADR_i)) begin
					__main___DAT_o_next_value1 <= __main___storav1;
					__main___DAT_o_next_value_ce1 <= 1'd1;
					__main___ACK_o_f_next_value <= 1'd1;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
			if ((ADR_IS_KEY_i == 1'd1)) begin
				if ((__main___storak2 == ADR_i)) begin
					__main___DAT_o_next_value1 <= __main___storav2;
					__main___DAT_o_next_value_ce1 <= 1'd1;
					__main___ACK_o_f_next_value <= 1'd1;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
			if ((ADR_IS_KEY_i == 1'd1)) begin
				if ((__main___storak3 == ADR_i)) begin
					__main___DAT_o_next_value1 <= __main___storav3;
					__main___DAT_o_next_value_ce1 <= 1'd1;
					__main___ACK_o_f_next_value <= 1'd1;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
			if ((ADR_IS_KEY_i == 1'd1)) begin
				if ((__main___storak4 == ADR_i)) begin
					__main___DAT_o_next_value1 <= __main___storav4;
					__main___DAT_o_next_value_ce1 <= 1'd1;
					__main___ACK_o_f_next_value <= 1'd1;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
			if ((ADR_IS_KEY_i == 1'd1)) begin
				if ((__main___storak5 == ADR_i)) begin
					__main___DAT_o_next_value1 <= __main___storav5;
					__main___DAT_o_next_value_ce1 <= 1'd1;
					__main___ACK_o_f_next_value <= 1'd1;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
			if ((ADR_IS_KEY_i == 1'd1)) begin
				if ((__main___storak6 == ADR_i)) begin
					__main___DAT_o_next_value1 <= __main___storav6;
					__main___DAT_o_next_value_ce1 <= 1'd1;
					__main___ACK_o_f_next_value <= 1'd1;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
			if ((ADR_IS_KEY_i == 1'd1)) begin
				if ((__main___storak7 == ADR_i)) begin
					__main___DAT_o_next_value1 <= __main___storav7;
					__main___DAT_o_next_value_ce1 <= 1'd1;
					__main___ACK_o_f_next_value <= 1'd1;
					__main___ACK_o_f_next_value_ce <= 1'd1;
					convert_next_state <= 1'd0;
				end
			end
			if ((ADR_IS_KEY_i == 1'd0)) begin
				__main___DAT_o_next_value1 <= convert_comb_array_muxed;
				__main___DAT_o_next_value_ce1 <= 1'd1;
				__main___ACK_o_f_next_value <= 1'd1;
				__main___ACK_o_f_next_value_ce <= 1'd1;
				convert_next_state <= 1'd0;
			end
			if ((sys_rst == 1'd1)) begin
				convert_next_state <= 2'd3;
			end
		end
		2'd2: begin
			if (ADR_IS_KEY_i) begin
				convert_next_value0 <= DAT_i;
				convert_next_value_ce0 <= 1'd1;
				convert_next_value1 <= ADR_i;
				convert_next_value_ce1 <= 1'd1;
				__main___DAT_o_next_value1 <= __main___empty_location;
				__main___DAT_o_next_value_ce1 <= 1'd1;
			end else begin
				if (DAT_IS_KEY_i) begin
					convert_t_next_value <= DAT_i;
					convert_t_next_value_ce <= 1'd1;
					__main___DAT_o_next_value1 <= ADR_i;
					__main___DAT_o_next_value_ce1 <= 1'd1;
				end else begin
					convert_f_next_value <= DAT_i;
					convert_f_next_value_ce <= 1'd1;
					__main___DAT_o_next_value1 <= ADR_i;
					__main___DAT_o_next_value_ce1 <= 1'd1;
				end
			end
			__main___ACK_o_f_next_value <= 1'd1;
			__main___ACK_o_f_next_value_ce <= 1'd1;
			convert_next_state <= 1'd0;
			if ((sys_rst == 1'd1)) begin
				convert_next_state <= 2'd3;
			end else begin
				convert_next_state <= 1'd0;
			end
		end
		default: begin
			convert_next_state <= 1'd0;
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
	convert_comb_array_muxed <= 8'd0;
	case (ADR_i)
		1'd0: begin
			convert_comb_array_muxed <= __main___storav0;
		end
		1'd1: begin
			convert_comb_array_muxed <= __main___storav1;
		end
		2'd2: begin
			convert_comb_array_muxed <= __main___storav2;
		end
		2'd3: begin
			convert_comb_array_muxed <= __main___storav3;
		end
		3'd4: begin
			convert_comb_array_muxed <= __main___storav4;
		end
		3'd5: begin
			convert_comb_array_muxed <= __main___storav5;
		end
		3'd6: begin
			convert_comb_array_muxed <= __main___storav6;
		end
		default: begin
			convert_comb_array_muxed <= __main___storav7;
		end
	endcase
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	convert_state <= convert_next_state;
	if (__main___STALL_o_next_value_ce0) begin
		STALL_o <= __main___STALL_o_next_value0;
	end
	if (__main___empty_location_t_next_value_ce) begin
		__main___empty_location <= __main___empty_location_t_next_value;
	end
	if (__main___ACK_o_f_next_value_ce) begin
		ACK_o <= __main___ACK_o_f_next_value;
	end
	if (__main___DAT_o_next_value_ce1) begin
		DAT_o <= __main___DAT_o_next_value1;
	end
	if (convert_next_value_ce0) begin
		convert_sync_array_muxed0 = convert_next_value0;
		case (__main___empty_location)
			1'd0: begin
				__main___storav0 <= convert_sync_array_muxed0;
			end
			1'd1: begin
				__main___storav1 <= convert_sync_array_muxed0;
			end
			2'd2: begin
				__main___storav2 <= convert_sync_array_muxed0;
			end
			2'd3: begin
				__main___storav3 <= convert_sync_array_muxed0;
			end
			3'd4: begin
				__main___storav4 <= convert_sync_array_muxed0;
			end
			3'd5: begin
				__main___storav5 <= convert_sync_array_muxed0;
			end
			3'd6: begin
				__main___storav6 <= convert_sync_array_muxed0;
			end
			default: begin
				__main___storav7 <= convert_sync_array_muxed0;
			end
		endcase
	end
	if (convert_next_value_ce1) begin
		convert_sync_array_muxed1 = convert_next_value1;
		case (__main___empty_location)
			1'd0: begin
				__main___storak0 <= convert_sync_array_muxed1;
			end
			1'd1: begin
				__main___storak1 <= convert_sync_array_muxed1;
			end
			2'd2: begin
				__main___storak2 <= convert_sync_array_muxed1;
			end
			2'd3: begin
				__main___storak3 <= convert_sync_array_muxed1;
			end
			3'd4: begin
				__main___storak4 <= convert_sync_array_muxed1;
			end
			3'd5: begin
				__main___storak5 <= convert_sync_array_muxed1;
			end
			3'd6: begin
				__main___storak6 <= convert_sync_array_muxed1;
			end
			default: begin
				__main___storak7 <= convert_sync_array_muxed1;
			end
		endcase
	end
	if (convert_t_next_value_ce) begin
		convert_sync_array_muxed2 = convert_t_next_value;
		case (ADR_i)
			1'd0: begin
				__main___storak0 <= convert_sync_array_muxed2;
			end
			1'd1: begin
				__main___storak1 <= convert_sync_array_muxed2;
			end
			2'd2: begin
				__main___storak2 <= convert_sync_array_muxed2;
			end
			2'd3: begin
				__main___storak3 <= convert_sync_array_muxed2;
			end
			3'd4: begin
				__main___storak4 <= convert_sync_array_muxed2;
			end
			3'd5: begin
				__main___storak5 <= convert_sync_array_muxed2;
			end
			3'd6: begin
				__main___storak6 <= convert_sync_array_muxed2;
			end
			default: begin
				__main___storak7 <= convert_sync_array_muxed2;
			end
		endcase
	end
	if (convert_f_next_value_ce) begin
		convert_sync_array_muxed3 = convert_f_next_value;
		case (ADR_i)
			1'd0: begin
				__main___storav0 <= convert_sync_array_muxed3;
			end
			1'd1: begin
				__main___storav1 <= convert_sync_array_muxed3;
			end
			2'd2: begin
				__main___storav2 <= convert_sync_array_muxed3;
			end
			2'd3: begin
				__main___storav3 <= convert_sync_array_muxed3;
			end
			3'd4: begin
				__main___storav4 <= convert_sync_array_muxed3;
			end
			3'd5: begin
				__main___storav5 <= convert_sync_array_muxed3;
			end
			3'd6: begin
				__main___storav6 <= convert_sync_array_muxed3;
			end
			default: begin
				__main___storav7 <= convert_sync_array_muxed3;
			end
		endcase
	end
	if (sys_rst_1) begin
		STALL_o <= 1'd0;
		ACK_o <= 1'd0;
		DAT_o <= 8'd0;
		__main___storak0 <= 8'd0;
		__main___storak1 <= 8'd0;
		__main___storak2 <= 8'd0;
		__main___storak3 <= 8'd0;
		__main___storak4 <= 8'd0;
		__main___storak5 <= 8'd0;
		__main___storak6 <= 8'd0;
		__main___storak7 <= 8'd0;
		__main___storav0 <= 8'd0;
		__main___storav1 <= 8'd0;
		__main___storav2 <= 8'd0;
		__main___storav3 <= 8'd0;
		__main___storav4 <= 8'd0;
		__main___storav5 <= 8'd0;
		__main___storav6 <= 8'd0;
		__main___storav7 <= 8'd0;
		__main___empty_location <= 8'd0;
		convert_state <= 2'd3;
	end
end

endmodule


