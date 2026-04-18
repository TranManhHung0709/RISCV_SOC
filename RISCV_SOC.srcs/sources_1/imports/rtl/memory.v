module memory #(
	parameter WORDS = 64
)(
	input clk,
	input [31:0] address,
	input [31:0] write_data,
	input [3:0] byte_enable,
	input write_enable,
	input rst_n,

	output [31:0] read_data
);

// 1. STORAGE
reg [31:0] mem [0:WORDS - 1];
integer i;

// 2. WRITE PATH
always @(posedge clk) begin
	if (!rst_n) begin
		for (i = 0; i <= WORDS - 1; i = i + 1) begin
			mem[i] <= 32'b0;
		end
	end else if (write_enable) begin
		if (address[1:0] != 2'b00) begin
			$display("Misaligned write at address %h", address);
		end else begin
			for (i = 0; i < 4; i = i + 1) begin
				if (byte_enable[i]) begin
					mem[address[31:2]][(i*8)+:8] <= write_data[(i*8)+:8];
				end
			end
		end
	end
end

// 3. READ PATH
assign read_data = mem[address[31:2]];

endmodule