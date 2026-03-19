module control (
	//INPUT
	input [6:0] op,
	input [2:0] func3,
	input [6:0] func7,
	input alu_zero,
	input alu_last_bit,
	//OUTPUT
	output reg [3:0] alu_control,
	output reg [2:0] imm_source,
	output reg mem_write,
	output reg reg_write,
	output reg alu_source,
	output reg [1:0] write_back_source,
	output     pc_source,
	output reg [1:0] second_add_source 
);

reg [1:0] alu_op;
reg branch;
reg jump;

//MAIN DECODER
always @(*) begin
	case (op)
		// LOAD_I-TYPE
		7'b0000011: begin
			reg_write = 1'b1;
			imm_source = 3'b000;
			alu_source = 1'b1; //imm --> alu
			mem_write = 1'b0;
			alu_op = 2'b00;
			write_back_source = 2'b01; //(result_souce)write_back data from data_mem
			branch = 1'b0;
			jump = 1'b0;
			second_add_source = 2'b00;
		end
		// S-TYPE
		7'b0100011: begin
         reg_write = 1'b0;
         imm_source = 3'b001;
			alu_source = 1'b1; //imm --> alu
         mem_write = 1'b1;
         alu_op = 2'b00;
			//write_back_source dont care
			branch = 1'b0;
			jump = 1'b0;
			second_add_source = 2'b00;
		end
		// R-TYPE
      7'b0110011 : begin
         reg_write = 1'b1;
			//imm_source dont care
			alu_source = 1'b0; //reg2 --> alu
         mem_write = 1'b0;
         alu_op = 2'b10;
         write_back_source = 2'b00; //write_back data from alu_result
			branch = 1'b0;
			jump = 1'b0;
			second_add_source = 2'b00;
      end
		// B-TYPE
      7'b1100011 : begin   
         reg_write = 1'b0;
         imm_source = 3'b010;
         alu_source = 1'b0;
         mem_write = 1'b0;
         alu_op = 2'b01;
			//write_back_source dont care
         branch = 1'b1;
			jump = 1'b0;
			second_add_source = 2'b00;
      end
		// JAL/JALR
		7'b1101111, 7'b1100111 : begin
			reg_write = 1'b1;     //ghi vao rd
			//imm_source o duoi
			//alu_source dont care
			mem_write = 1'b0;		 //yea we dont use this
			//alu_op dont care
			write_back_source = 2'b10; //data to rd is pc+4
			branch = 1'b0;			
			jump = 1'b1;			//khong re nhanh nhung co jump
			case (op[3])
				1'b1: begin //JAL
					imm_source = 3'b011;	
					second_add_source = 2'b00;
				end
				1'b0: begin //JALR
					imm_source = 3'b000;
					second_add_source = 2'b10; //JALR exclusive
				end
			endcase
		end
		// I-TYPE REAL										<--this is how simple it is to implemente ADDI, only need to update control module 
		7'b0010011 : begin
			reg_write = 1'b1;
			imm_source = 3'b000;
			alu_source = 1'b1; //imm
			mem_write = 1'b0;
			alu_op = 2'b10;
			write_back_source = 2'b00; //write_back data from alu_result
			branch = 1'b0;
			jump = 1'b0;
			second_add_source = 2'b00;
		end
		// U-TYPE
		7'b0110111, 7'b0010111 : begin
			reg_write = 1'b1;
			imm_source = 3'b100;
			//alu_source dont care
			mem_write = 1'b0;
			//alu_op dont care
			write_back_source = 2'b11; //U-type exclusive
			branch = 1'b0;
			jump = 1'b0;
			case(op[5])
				1'b1 : second_add_source = 2'b01; // lui : rd = pc + 32'b0
				1'b0 : second_add_source = 2'b00; // auipc : rd = pc + (imm<<12)
			endcase
		end
		
		//EVERYTHING ELSE WILL BE ADDED LATER
		default: begin
			reg_write = 1'b0;
			imm_source = 3'b000;
			alu_source = 1'b0; //imm
			mem_write = 1'b0;
			alu_op = 2'b00;
			write_back_source = 2'b00; //alu_result
			branch = 1'b0;
			jump = 1'b0;
			second_add_source = 2'b00;
		end
	endcase
end

//ALU DECODER
always @(*) begin
	case(alu_op)
		//LW and SW dua theo alu decoder table
		//ban se thay la k dung func3 voi func7 do no chua can vao luc nay de phan biet voi cac instruction khac
		2'b00: alu_control = 4'b0000;
		//R_I TYPE
      2'b10 : begin														//<-- ADD R-TYPE
			case (func3)
				// ADDI/ADD (SUB instruction co func7 khac)				//<-- ADD R type ADD instruction as a foundation
				3'b000 : begin
					if(op == 7'b0110011) begin // R-type
						alu_control = (func7[5]) ? 4'b0001 : 4'b0000;
					end 
					else alu_control = 4'b0000; // I-TYPE
				end
				// ANDI/AND
				3'b111 : alu_control = 4'b0010; 						//<-- ADD more R type
				// ORI/OR
				3'b110 : alu_control = 4'b0011; 
				// SLTI/SLT
				3'b010 : alu_control = 4'b0101; 
				// SLTIU/SLTU
				3'b011 : alu_control = 4'b0111; // NEW !
				// XORI/XOR
				3'b100 : alu_control = 4'b1000;
				// SLLI/SLL
				3'b001 : alu_control = 4'b1001;
				// SRLI/SRL - SRA/SRAI
				3'b101 : begin
					case (func7[5])
						1'b0 : alu_control = 4'b1010; // SRLI/SRL
						1'b1 : alu_control = 4'b1011; // SRAI/SRA
					endcase
				end
				// EVERYTHING ELSE WILL BE ADDED LATER
				default: alu_control = 4'b1111;
			endcase
      end
		// BEQ
		2'b01: begin
			case(func3) 
			//BEQ/BNE
		   3'b000, 3'b001: alu_control = 4'b0001; 		//SUB
			//BLT/BGE
			3'b100, 3'b101: alu_control = 4'b0101; 		//SLT
			//BLTU/BGEU
			3'b110, 3'b111: alu_control = 4'b0111;			//SLTU
			endcase
		end
		//EVERYTHING ELSE WILL BE ADDED LATER
		default: alu_control = 4'b1111;
	endcase
end

//BRANCH DECODER 
reg assert_branch; //calculated different for each B-TYPE

always @(*) begin
	case (func3)
		//BEQ
		3'b000: assert_branch = alu_zero & branch;
		//BNE
		3'b001: assert_branch = !alu_zero & branch;
		//BLT, BLTU
		3'b100, 3'b110: assert_branch = alu_last_bit & branch;
		//BGE, BGEU
		3'b101, 3'b111: assert_branch = !alu_last_bit & branch;
		//
		
		default: assert_branch = 1'b0;
	endcase
end

assign pc_source = assert_branch | jump;  //<-- them option jump doi voi JAL va JALR

endmodule