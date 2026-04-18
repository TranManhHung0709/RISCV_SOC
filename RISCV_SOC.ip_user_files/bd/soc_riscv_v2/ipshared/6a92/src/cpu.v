module cpu (
	input clk,
	input rst_n,

	// ==========================================
	// PORT A - Giao tiếp với IMEM (Instruction LUTRAM)
	// ==========================================
	output wire [31:0] imem_addr,
	input  wire [31:0] imem_dout,
	output wire        imem_en,
	output wire [3:0]  imem_we,
	output wire [31:0] imem_din,

    // ==========================================
	// PORT B - Giao tiếp với SYSTEM BUS (Address Decoder / DMEM / IP)
	// ==========================================
	output wire [31:0] cpu_addr,
	input  wire [31:0] cpu_dout,
	output wire        cpu_en,
	output wire [3:0]  cpu_we,
	output wire [31:0] cpu_din
);

/////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------  WIRE & REG DECLARATIONS  -----------------------------------//
/////////////////////////////////////////////////////////////////////////////////////////////////////

//======================
// PROGRAM COUNTER
//======================
reg  [31:0] pc;
reg  [31:0] pc_next;
wire        pc_source;
wire [1:0]  second_add_source;

wire [31:0] pc_plus_four;
reg  [31:0] pc_plus_second_add;

//======================
// INSTRUCTION
//======================
wire [31:0] instruction;

//======================
// CONTROL SIGNALS
//======================
wire [6:0]  op;
wire [2:0]  f3;
wire [6:0]  f7;

wire [3:0]  alu_control;
wire [2:0]  imm_source;
wire        mem_write;
wire        reg_write;
wire        alu_source;
wire [1:0]  write_back_source;

//======================
// REGISTER FILE
//======================
wire [4:0]  source_reg1;
wire [4:0]  source_reg2;
wire [4:0]  dest_reg;

wire [31:0] read_reg1;
wire [31:0] read_reg2;

reg  [31:0] write_back_data;
reg         wb_valid;

//======================
// IMMEDIATE
//======================
wire [24:0] raw_imm;
wire [31:0] immediate;

//======================
// ALU
//======================
wire [31:0] alu_result;
wire        alu_zero;
wire        alu_last_bit;

reg  [31:0] alu_src2;

//======================
// DATA MEMORY SIGNALS
//======================
wire [31:0] mem_read;
wire [3:0]  mem_byte_enable;
wire [31:0] mem_write_data;

//======================
// LOAD DATA PATH
//======================
wire        mem_read_write_back_valid;
wire [31:0] mem_read_write_back_data;

/////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------  PROGRAM COUNTER  --------------------------------------------//
/////////////////////////////////////////////////////////////////////////////////////////////////////

always @(*) begin
	case(second_add_source)
		2'b00: pc_plus_second_add = pc + immediate;
		2'b01: pc_plus_second_add = immediate;
		2'b10: pc_plus_second_add = immediate + read_reg1;
		default: pc_plus_second_add = 32'b0;
	endcase
end

assign pc_plus_four = pc + 4;

always @(*) begin
	case (pc_source)
		1'b0: pc_next = pc_plus_four;
		1'b1: pc_next = pc_plus_second_add;
	endcase
end

always @(posedge clk) begin
	if (!rst_n)
		pc <= 32'b0;
	else
		pc <= pc_next;
end

//////////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------  INSTRUCTION MEMORY EXTERNAL ------------------------------------//
//////////////////////////////////////////////////////////////////////////////////////////////////////////

assign imem_addr   = pc;
assign instruction = imem_dout;
assign imem_en     = 1'b1;         
assign imem_we     = 4'b0000;      
assign imem_din    = 32'b0;

/////////////////////////////////////////////////////////////////////////////////////////////////////
//-------------------------------------  CONTROL UNIT  --------------------------------------------//
/////////////////////////////////////////////////////////////////////////////////////////////////////

assign op = instruction[6:0];
assign f3 = instruction[14:12];
assign f7 = instruction[31:25];

control control_unit(
	.op(op),
	.func3(f3),
	.func7(f7),
	.alu_zero(alu_zero),
	.alu_last_bit(alu_last_bit),

	.alu_control(alu_control),
	.imm_source(imm_source),
	.mem_write(mem_write),
	.reg_write(reg_write),

	.alu_source(alu_source),
	.write_back_source(write_back_source),
	.pc_source(pc_source),
	.second_add_source(second_add_source)
);

////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------  REGISTER FILE  -------------------------------------------//
////////////////////////////////////////////////////////////////////////////////////////////////////

assign source_reg1 = instruction[19:15];
assign source_reg2 = instruction[24:20];
assign dest_reg    = instruction[11:7];

always @(*) begin
	case (write_back_source)
		2'b00: begin
			write_back_data = alu_result;
			wb_valid = 1'b1;
		end
		2'b01: begin
			write_back_data = mem_read_write_back_data;
			wb_valid = mem_read_write_back_valid;
		end
		2'b10: begin
			write_back_data = pc_plus_four;
			wb_valid = 1'b1;
		end
		2'b11: begin
			write_back_data = pc_plus_second_add;
			wb_valid = 1'b1;
		end
	endcase
end

regfile regfile(
	.clk(clk),
	.rst_n(rst_n),
	.address1(source_reg1),
	.address2(source_reg2),
	.read_data1(read_reg1),
	.read_data2(read_reg2),
	.write_enable(reg_write & wb_valid),
	.write_data(write_back_data),
	.address3(dest_reg)
);

////////////////////////////////////////////////////////////////////////////////////////////////////
//------------------------------------  SIGN EXTENDER  -------------------------------------------//
////////////////////////////////////////////////////////////////////////////////////////////////////

assign raw_imm = instruction[31:7];

signext sign_extender(
	.raw_src(raw_imm),
	.imm_source(imm_source),
	.immediate(immediate)
);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------  ARITHMETIC LOGIC UNIT  -----------------------------------------//
//////////////////////////////////////////////////////////////////////////////////////////////////////////////

always @(*) begin
	case (alu_source)
		1'b1: alu_src2 = immediate;
		default: alu_src2 = read_reg2;
	endcase
end

alu alu_inst(
	.alu_control(alu_control),
	.src1(read_reg1),
	.src2(alu_src2),
	.alu_result(alu_result),
	.zero(alu_zero),
	.last_bit(alu_last_bit)
);

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
//----------------------------------------- BYTE_ENABLE_DECODER  -----------------------------------------//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////

byte_enable_decoder be_decode(
	.alu_result_address(alu_result),
	.f3(f3),
	.reg_read(read_reg2),
	.byte_enable(mem_byte_enable),
	.data(mem_write_data)
);

//////////////////////////////////////////////////////////////////////////////////////////////////////
//---------------------------------------  SYSTEM BUS INTERFACE ------------------------------------//
//////////////////////////////////////////////////////////////////////////////////////////////////////

assign cpu_addr = {alu_result[31:2], 2'b00}; 
assign mem_read = cpu_dout;
assign cpu_en   = 1'b1;
assign cpu_we   = mem_write ? mem_byte_enable : 4'b0000;
assign cpu_din  = mem_write_data;

//////////////////////////////////////////////////////////////////////////////////////////////////////
//-------------------------------------------  READER  ----------------------------------------------//
//////////////////////////////////////////////////////////////////////////////////////////////////////

reader reader_inst(
	.mem_data(mem_read),
	.be_mask(mem_byte_enable),
	.f3(f3),
	.wb_data(mem_read_write_back_data),
	.valid(mem_read_write_back_valid)
);

endmodule