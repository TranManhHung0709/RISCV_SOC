module regfile (
	//basic signals
	input clk,
	input rst_n,
	
	//Reads (32 reg --> address 5 bit)
	input [4:0] address1, 
	input [4:0] address2, 
	output [31:0] read_data1,
	output [31:0] read_data2,
	
	//Write
	input write_enable,
	input [31:0] write_data,
	input [4:0] address3
);

// riscv co 32 thanh ghi co ban
// moi thanh ghi co do dai 32 bit
reg [31:0] registers [0:31];

// LOGIC WRITE
integer i;
always @(posedge clk) begin
	// LOGIC RESET
	if (!rst_n) begin
		for (i = 0; i <= 31; i = i + 1) begin
			registers[i] <= 32'b0;
		end
	end
	
	//theo riscv thi thanh ghi 0 luon chua gia tri 0
	else if (write_enable == 1'b1 && address3 != 5'b0) begin
		registers[address3] <= write_data;
	end
end

// LOGIC READ 
assign read_data1 = registers[address1];
assign read_data2 = registers[address2];

endmodule

