module alu (
	//INPUT
	input [3:0] alu_control,
	input [31:0] src1,
	input [31:0] src2,
		
	//OUTPUT
	output reg [31:0] alu_result,
	output zero,
	output last_bit
);

//alu last_bit for B-type
assign last_bit = alu_result[0];

//shamt for SHIFT INSTRUCTION	
wire [4:0] shamt;
assign shamt = src2[4:0];
	
always @(*) begin
	case (alu_control)
		//LW and ADD
		4'b0000: alu_result = src1 + src2;
		//SUB 
		4'b0001: alu_result = src1 + (~src2 + 1'b1); //<-- new
		//ANDI/AND 
		4'b0010: alu_result = src1 & src2;
		//ORI/OR
		4'b0011: alu_result = src1 | src2;
		//SLTI/SLT (signed)
		4'b0101 : alu_result = {31'b0, $signed(src1) < $signed(src2)};
		//SLTIU/SLTU(unsigned)
		4'b0111 : alu_result = {31'b0, src1 < src2};
		//XORI/XORI
		4'b1000 : alu_result = src1 ^ src2;
		//SLLI/SLL
		4'b1001 : alu_result = src1 << shamt;
		//SRLI/SRL 
		4'b1010 : alu_result = src1 >> shamt;
		//SRAI/SRA
		4'b1011: alu_result = $signed(src1) >>> shamt;
		default: alu_result = 32'b0;
	endcase
end

assign zero = (alu_result == 32'b0);

endmodule

