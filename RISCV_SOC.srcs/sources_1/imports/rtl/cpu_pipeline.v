module cpu_pipeline (
	input clk,
	input rst_n,
	output wire [31:0] dbg_pc_out,
	output wire dbg_wb_reg_write_en_out,
	output wire [4:0] dbg_wb_rd_addr_out,
	output wire [31:0] dbg_wb_rd_data_out
);

// GLOBAL PIPELINE CONTROL
wire if_stage_stall;
wire if_id_stall;
wire if_id_flush;
wire id_ex_flush;

// EX REDIRECT FEEDBACK
wire ex_redirect_en;
wire [31:0] ex_redirect_pc;

// IF STAGE WIRES
wire [31:0] if_pc;
wire [31:0] if_pc_plus4;
wire [31:0] if_instruction;

// IF/ID PIPE WIRES
wire [31:0] if_id_pc;
wire [31:0] if_id_pc_plus4;
wire [31:0] if_id_instruction;

// ID STAGE WIRES
wire [31:0] id_pc;
wire [31:0] id_pc_plus4;
wire [31:0] id_instruction;
wire [31:0] id_rs1_data;
wire [31:0] id_rs2_data;
wire [31:0] id_immediate;
wire [4:0] id_rs1_addr;
wire [4:0] id_rs2_addr;
wire [4:0] id_rd_addr;
wire [2:0] id_func3;
wire [6:0] id_opcode;
wire [3:0] id_alu_control;
wire [1:0] id_second_add_source;
wire [1:0] id_write_back_source;
wire id_mem_write;
wire id_reg_write;
wire id_alu_source;

// ID/EX PIPE WIRES
wire [31:0] id_ex_pc;
wire [31:0] id_ex_pc_plus4;
wire [31:0] id_ex_instruction;
wire [31:0] id_ex_rs1_data;
wire [31:0] id_ex_rs2_data;
wire [31:0] id_ex_immediate;
wire [4:0] id_ex_rs1_addr;
wire [4:0] id_ex_rs2_addr;
wire [4:0] id_ex_rd_addr;
wire [2:0] id_ex_func3;
wire [6:0] id_ex_opcode;
wire [3:0] id_ex_alu_control;
wire [1:0] id_ex_second_add_source;
wire [1:0] id_ex_write_back_source;
wire id_ex_mem_write;
wire id_ex_reg_write;
wire id_ex_alu_source;

// FORWARDING WIRES
wire [1:0] forward_a_sel;
wire [1:0] forward_b_sel;
wire ex_mem_is_load;
reg [31:0] ex_rs1_data_forwarded;
reg [31:0] ex_rs2_data_forwarded;
reg [31:0] ex_mem_forward_data;

// EX STAGE WIRES
wire [31:0] ex_pc_plus4;
wire [31:0] ex_instruction;
wire [31:0] ex_alu_result;
wire [31:0] ex_second_add_result;
wire [31:0] ex_store_data;
wire [4:0] ex_rd_addr;
wire [2:0] ex_func3;
wire [6:0] ex_opcode;
wire [1:0] ex_write_back_source;
wire ex_mem_write;
wire ex_reg_write;

// EX/MEM PIPE WIRES
wire [31:0] ex_mem_pc_plus4;
wire [31:0] ex_mem_instruction;
wire [31:0] ex_mem_alu_result;
wire [31:0] ex_mem_second_add_result;
wire [31:0] ex_mem_store_data;
wire [4:0] ex_mem_rd_addr;
wire [2:0] ex_mem_func3;
wire [6:0] ex_mem_opcode;
wire [1:0] ex_mem_write_back_source;
wire ex_mem_mem_write;
wire ex_mem_reg_write;

// MEM STAGE WIRES
wire [31:0] mem_pc_plus4;
wire [31:0] mem_instruction;
wire [31:0] mem_alu_result;
wire [31:0] mem_second_add_result;
wire [31:0] mem_load_data;
wire mem_load_valid;
wire [4:0] mem_rd_addr;
wire [1:0] mem_write_back_source;
wire mem_reg_write;

// MEM/WB PIPE WIRES
wire [31:0] mem_wb_pc_plus4;
wire [31:0] mem_wb_instruction;
wire [31:0] mem_wb_alu_result;
wire [31:0] mem_wb_second_add_result;
wire [31:0] mem_wb_load_data;
wire mem_wb_load_valid;
wire [4:0] mem_wb_rd_addr;
wire [1:0] mem_wb_write_back_source;
wire mem_wb_reg_write;

// WB STAGE WIRES
wire wb_reg_write_en;
wire [4:0] wb_rd_addr;
wire [31:0] wb_rd_data;

// HAZARD + FLUSH CONTROL
hazard_unit hazard_unit_inst (
	.if_id_instruction(if_id_instruction),
	.id_ex_rd_addr(id_ex_rd_addr),
	.id_ex_write_back_source(id_ex_write_back_source),
	.id_ex_reg_write(id_ex_reg_write),
	.ex_redirect_en(ex_redirect_en),
	.if_stage_stall(if_stage_stall),
	.if_id_stall(if_id_stall),
	.if_id_flush(if_id_flush),
	.id_ex_flush(id_ex_flush)
);

// FORWARDING CONTROL
assign ex_mem_is_load = ex_mem_reg_write && (ex_mem_write_back_source == 2'b01);

forward_unit forward_unit_inst (
	.ex_rs1_addr(id_ex_rs1_addr),
	.ex_rs2_addr(id_ex_rs2_addr),
	.ex_mem_rd_addr(ex_mem_rd_addr),
	.ex_mem_reg_write(ex_mem_reg_write),
	.ex_mem_is_load(ex_mem_is_load),
	.mem_wb_rd_addr(mem_wb_rd_addr),
	.mem_wb_reg_write(wb_reg_write_en),
	.forward_a_sel(forward_a_sel),
	.forward_b_sel(forward_b_sel)
);

// FORWARD DATA FROM EX/MEM FOR ALU/JUMP/U-TYPE RESULTS
always @(*) begin
	case (ex_mem_write_back_source)
		2'b00: ex_mem_forward_data = ex_mem_alu_result;
		2'b10: ex_mem_forward_data = ex_mem_pc_plus4;
		2'b11: ex_mem_forward_data = ex_mem_second_add_result;
		default: ex_mem_forward_data = ex_mem_alu_result;
	endcase
end

always @(*) begin
	case (forward_a_sel)
		2'b10: ex_rs1_data_forwarded = ex_mem_forward_data;
		2'b01: ex_rs1_data_forwarded = wb_rd_data;
		default: ex_rs1_data_forwarded = id_ex_rs1_data;
	endcase
end

always @(*) begin
	case (forward_b_sel)
		2'b10: ex_rs2_data_forwarded = ex_mem_forward_data;
		2'b01: ex_rs2_data_forwarded = wb_rd_data;
		default: ex_rs2_data_forwarded = id_ex_rs2_data;
	endcase
end

// IF STAGE
if_stage if_stage_inst (
	.clk(clk),
	.rst_n(rst_n),
	.stall(if_stage_stall),
	.redirect_en(ex_redirect_en),
	.redirect_pc(ex_redirect_pc),
	.pc_out(if_pc),
	.pc_plus4_out(if_pc_plus4),
	.instruction_out(if_instruction)
);

// IF/ID PIPE REGISTER
if_id_pipe if_id_pipe_inst (
	.clk(clk),
	.rst_n(rst_n),
	.stall(if_id_stall),
	.flush(if_id_flush),
	.pc_in(if_pc),
	.pc_plus4_in(if_pc_plus4),
	.instruction_in(if_instruction),
	.pc_out(if_id_pc),
	.pc_plus4_out(if_id_pc_plus4),
	.instruction_out(if_id_instruction)
);

// ID STAGE
id_stage id_stage_inst (
	.clk(clk),
	.rst_n(rst_n),
	.pc_in(if_id_pc),
	.pc_plus4_in(if_id_pc_plus4),
	.instruction_in(if_id_instruction),
	.wb_reg_write_en(wb_reg_write_en),
	.wb_rd_addr(wb_rd_addr),
	.wb_rd_data(wb_rd_data),
	.pc_out(id_pc),
	.pc_plus4_out(id_pc_plus4),
	.instruction_out(id_instruction),
	.rs1_data_out(id_rs1_data),
	.rs2_data_out(id_rs2_data),
	.immediate_out(id_immediate),
	.rs1_addr_out(id_rs1_addr),
	.rs2_addr_out(id_rs2_addr),
	.rd_addr_out(id_rd_addr),
	.func3_out(id_func3),
	.opcode_out(id_opcode),
	.alu_control_out(id_alu_control),
	.second_add_source_out(id_second_add_source),
	.write_back_source_out(id_write_back_source),
	.mem_write_out(id_mem_write),
	.reg_write_out(id_reg_write),
	.alu_source_out(id_alu_source)
);

// ID/EX PIPE REGISTER
id_ex_pipe id_ex_pipe_inst (
	.clk(clk),
	.rst_n(rst_n),
	.stall(1'b0),
	.flush(id_ex_flush),
	.pc_in(id_pc),
	.pc_plus4_in(id_pc_plus4),
	.instruction_in(id_instruction),
	.rs1_data_in(id_rs1_data),
	.rs2_data_in(id_rs2_data),
	.immediate_in(id_immediate),
	.rs1_addr_in(id_rs1_addr),
	.rs2_addr_in(id_rs2_addr),
	.rd_addr_in(id_rd_addr),
	.func3_in(id_func3),
	.opcode_in(id_opcode),
	.alu_control_in(id_alu_control),
	.second_add_source_in(id_second_add_source),
	.write_back_source_in(id_write_back_source),
	.mem_write_in(id_mem_write),
	.reg_write_in(id_reg_write),
	.alu_source_in(id_alu_source),
	.pc_out(id_ex_pc),
	.pc_plus4_out(id_ex_pc_plus4),
	.instruction_out(id_ex_instruction),
	.rs1_data_out(id_ex_rs1_data),
	.rs2_data_out(id_ex_rs2_data),
	.immediate_out(id_ex_immediate),
	.rs1_addr_out(id_ex_rs1_addr),
	.rs2_addr_out(id_ex_rs2_addr),
	.rd_addr_out(id_ex_rd_addr),
	.func3_out(id_ex_func3),
	.opcode_out(id_ex_opcode),
	.alu_control_out(id_ex_alu_control),
	.second_add_source_out(id_ex_second_add_source),
	.write_back_source_out(id_ex_write_back_source),
	.mem_write_out(id_ex_mem_write),
	.reg_write_out(id_ex_reg_write),
	.alu_source_out(id_ex_alu_source)
);

// EX STAGE
ex_stage ex_stage_inst (
	.pc_in(id_ex_pc),
	.pc_plus4_in(id_ex_pc_plus4),
	.instruction_in(id_ex_instruction),
	.rs1_data_in(ex_rs1_data_forwarded),
	.rs2_data_in(ex_rs2_data_forwarded),
	.immediate_in(id_ex_immediate),
	.rd_addr_in(id_ex_rd_addr),
	.func3_in(id_ex_func3),
	.opcode_in(id_ex_opcode),
	.alu_control_in(id_ex_alu_control),
	.second_add_source_in(id_ex_second_add_source),
	.write_back_source_in(id_ex_write_back_source),
	.mem_write_in(id_ex_mem_write),
	.reg_write_in(id_ex_reg_write),
	.alu_source_in(id_ex_alu_source),
	.redirect_en_out(ex_redirect_en),
	.redirect_pc_out(ex_redirect_pc),
	.pc_plus4_out(ex_pc_plus4),
	.instruction_out(ex_instruction),
	.alu_result_out(ex_alu_result),
	.second_add_result_out(ex_second_add_result),
	.store_data_out(ex_store_data),
	.rd_addr_out(ex_rd_addr),
	.func3_out(ex_func3),
	.opcode_out(ex_opcode),
	.write_back_source_out(ex_write_back_source),
	.mem_write_out(ex_mem_write),
	.reg_write_out(ex_reg_write)
);

// EX/MEM PIPE REGISTER
ex_mem_pipe ex_mem_pipe_inst (
	.clk(clk),
	.rst_n(rst_n),
	.stall(1'b0),
	.flush(1'b0),
	.pc_plus4_in(ex_pc_plus4),
	.instruction_in(ex_instruction),
	.alu_result_in(ex_alu_result),
	.second_add_result_in(ex_second_add_result),
	.store_data_in(ex_store_data),
	.rd_addr_in(ex_rd_addr),
	.func3_in(ex_func3),
	.opcode_in(ex_opcode),
	.write_back_source_in(ex_write_back_source),
	.mem_write_in(ex_mem_write),
	.reg_write_in(ex_reg_write),
	.pc_plus4_out(ex_mem_pc_plus4),
	.instruction_out(ex_mem_instruction),
	.alu_result_out(ex_mem_alu_result),
	.second_add_result_out(ex_mem_second_add_result),
	.store_data_out(ex_mem_store_data),
	.rd_addr_out(ex_mem_rd_addr),
	.func3_out(ex_mem_func3),
	.opcode_out(ex_mem_opcode),
	.write_back_source_out(ex_mem_write_back_source),
	.mem_write_out(ex_mem_mem_write),
	.reg_write_out(ex_mem_reg_write)
);

// MEM STAGE
mem_stage mem_stage_inst (
	.clk(clk),
	.pc_plus4_in(ex_mem_pc_plus4),
	.instruction_in(ex_mem_instruction),
	.alu_result_in(ex_mem_alu_result),
	.second_add_result_in(ex_mem_second_add_result),
	.store_data_in(ex_mem_store_data),
	.rd_addr_in(ex_mem_rd_addr),
	.func3_in(ex_mem_func3),
	.opcode_in(ex_mem_opcode),
	.write_back_source_in(ex_mem_write_back_source),
	.mem_write_in(ex_mem_mem_write),
	.reg_write_in(ex_mem_reg_write),
	.pc_plus4_out(mem_pc_plus4),
	.instruction_out(mem_instruction),
	.alu_result_out(mem_alu_result),
	.second_add_result_out(mem_second_add_result),
	.load_data_out(mem_load_data),
	.load_valid_out(mem_load_valid),
	.rd_addr_out(mem_rd_addr),
	.write_back_source_out(mem_write_back_source),
	.reg_write_out(mem_reg_write)
);

// MEM/WB PIPE REGISTER
mem_wb_pipe mem_wb_pipe_inst (
	.clk(clk),
	.rst_n(rst_n),
	.stall(1'b0),
	.flush(1'b0),
	.pc_plus4_in(mem_pc_plus4),
	.instruction_in(mem_instruction),
	.alu_result_in(mem_alu_result),
	.second_add_result_in(mem_second_add_result),
	.load_data_in(mem_load_data),
	.load_valid_in(mem_load_valid),
	.rd_addr_in(mem_rd_addr),
	.write_back_source_in(mem_write_back_source),
	.reg_write_in(mem_reg_write),
	.pc_plus4_out(mem_wb_pc_plus4),
	.instruction_out(mem_wb_instruction),
	.alu_result_out(mem_wb_alu_result),
	.second_add_result_out(mem_wb_second_add_result),
	.load_data_out(mem_wb_load_data),
	.load_valid_out(mem_wb_load_valid),
	.rd_addr_out(mem_wb_rd_addr),
	.write_back_source_out(mem_wb_write_back_source),
	.reg_write_out(mem_wb_reg_write)
);

// WB STAGE
wb_stage wb_stage_inst (
	.pc_plus4_in(mem_wb_pc_plus4),
	.alu_result_in(mem_wb_alu_result),
	.second_add_result_in(mem_wb_second_add_result),
	.load_data_in(mem_wb_load_data),
	.load_valid_in(mem_wb_load_valid),
	.rd_addr_in(mem_wb_rd_addr),
	.write_back_source_in(mem_wb_write_back_source),
	.reg_write_in(mem_wb_reg_write),
	.wb_reg_write_en_out(wb_reg_write_en),
	.wb_rd_addr_out(wb_rd_addr),
	.wb_rd_data_out(wb_rd_data)
);

// DEBUG OUTPUTS
assign dbg_pc_out = if_pc;
assign dbg_wb_reg_write_en_out = wb_reg_write_en;
assign dbg_wb_rd_addr_out = wb_rd_addr;
assign dbg_wb_rd_data_out = wb_rd_data;

endmodule