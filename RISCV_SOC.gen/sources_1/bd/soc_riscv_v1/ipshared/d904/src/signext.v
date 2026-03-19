module signext (
	//INPUT
	input [24:0] raw_src, //32 bit MSB cua instruction
	input [2:0] imm_source, //kiem tra loai lenh
	
	//OUTPUT
	output reg [31:0] immediate  
);

// remove thanh ghi group immediate lai tuy theo lenh

// UPDATE EVERYTHING BELOW FOR OPTIMIZATION(do gathered imm khong con co dinh 12 bit nua nen update signext )
always @(*) begin
	case (imm_source)
		//I-TYPE
		3'b000 : immediate = {{20{raw_src[24]}}, raw_src[24:13]};
		//S-TYPE
      3'b001 : immediate = {{20{raw_src[24]}},raw_src[24:18],raw_src[4:0]};
		//B-TYPE
		3'b010 : immediate = {{20{raw_src[24]}},raw_src[0],raw_src[23:18],raw_src[4:1],1'b0};
      //J-types
      3'b011 : immediate = {{12{raw_src[24]}}, 
                          raw_src[12:5],
                          raw_src[13],
                          raw_src[23:14],
                          1'b0};
		//U-type
		3'b100 : immediate = {raw_src[24:5],12'b000000000000};
		default: immediate = 32'b0;
	endcase
end

endmodule 