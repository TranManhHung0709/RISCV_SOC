module byte_enable_decoder(
	//INPUT
	input [31:0] alu_result_address,
	input [31:0] reg_read,
	input [2:0] f3,
	//OUTPUT
	output reg [3:0] byte_enable,
	output reg [31:0] data
);

wire [1:0] offset = alu_result_address[1:0];

always @(*) begin
	case (f3) 
	// ---------------- BYTE (SB, LB, LBU) ----------------
		3'b000, 3'b100: begin 
			case(offset)
				2'b00: begin 		//SB byte 0
					byte_enable <= 4'b0001;
					data = (reg_read & 32'h000000FF);
				end
				2'b01: begin 		//SB byte 1
					byte_enable <= 4'b0010;
					data = (reg_read & 32'h000000FF) << 8;
				end
				2'b10: begin 		//SB byte 2
					byte_enable <= 4'b0100;
					data = (reg_read & 32'h000000FF) << 16;
				end
				2'b11: begin 		//SB byte 3
					byte_enable <= 4'b1000;
					data = (reg_read & 32'h000000FF) << 24;
				end
			endcase
		end
	// ---------------- HALFWORD (SH, LH, LHU) ----------------
		3'b001, 3'b101: begin //SH, LH, LHU
			case (offset)
				2'b00: begin //byte 0 --> 1
					byte_enable = 4'b0011;
					data = (reg_read & 32'h0000FFFF);
				end
				2'b10: begin //byte 2--> 3
					byte_enable = 4'b1100;
					data = (reg_read & 32'h0000FFFF) << 16;
				end
				default: begin
					byte_enable = 4'b0000;
					data = reg_read;
				end
			endcase
		end
	// ---------------- WORD (SW. LW) ----------------
		3'b010: begin 
			byte_enable = (offset == 2'b00) ? 4'b1111 : 4'b0000;
			data = reg_read;
		end
		default: begin
			byte_enable = 4'b0000;
			data = reg_read;
		end
	endcase
end



endmodule
