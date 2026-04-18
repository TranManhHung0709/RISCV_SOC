module id_stage (
    input wire clk,
    input wire rst_n,
    input wire [31:0] pc_in,
    input wire [31:0] pc_plus4_in,
    input wire [31:0] instruction_in,

    input wire wb_reg_write_en,
    input wire [4:0] wb_rd_addr,
    input wire [31:0] wb_rd_data,

    output wire [31:0] pc_out,
    output wire [31:0] pc_plus4_out,
    output wire [31:0] instruction_out,
    output wire [31:0] rs1_data_out,
    output wire [31:0] rs2_data_out,
    output wire [31:0] immediate_out,
    output wire [4:0] rs1_addr_out,
    output wire [4:0] rs2_addr_out,
    output wire [4:0] rd_addr_out,
    output wire [2:0] func3_out,
    output wire [6:0] opcode_out,

    output wire [3:0] alu_control_out,
    output wire [1:0] second_add_source_out,
    output wire [1:0] write_back_source_out,
    output wire mem_write_out,
    output wire reg_write_out,
    output wire alu_source_out
);

    // INSTRUCTION DECODE FIELDS
    wire [6:0] op;
    wire [2:0] f3;
    wire [6:0] f7;
    wire [4:0] rs1_addr;
    wire [4:0] rs2_addr;
    wire [4:0] rd_addr;
    wire [24:0] raw_imm;

    assign op = instruction_in[6:0];
    assign f3 = instruction_in[14:12];
    assign f7 = instruction_in[31:25];
    assign rs1_addr = instruction_in[19:15];
    assign rs2_addr = instruction_in[24:20];
    assign rd_addr = instruction_in[11:7];
    assign raw_imm = instruction_in[31:7];

    // CONTROL DECODE
    wire [3:0] alu_control;
    wire [2:0] imm_source;
    wire mem_write;
    wire reg_write;
    wire alu_source;
    wire [1:0] write_back_source;
    wire [1:0] second_add_source;

    control_pipeline control_unit (
        .op(op),
        .func3(f3),
        .func7(f7),
        .alu_control(alu_control),
        .imm_source(imm_source),
        .mem_write(mem_write),
        .reg_write(reg_write),
        .alu_source(alu_source),
        .write_back_source(write_back_source),
        .second_add_source(second_add_source)
    );

    // REGISTER FILE READ
    wire [31:0] rs1_data;
    wire [31:0] rs2_data;

    regfile regfile_inst (
        .clk(clk),
        .rst_n(rst_n),
        .address1(rs1_addr),
        .address2(rs2_addr),
        .read_data1(rs1_data),
        .read_data2(rs2_data),
        .write_enable(wb_reg_write_en),
        .write_data(wb_rd_data),
        .address3(wb_rd_addr)
    );

    // IMMEDIATE GENERATION
    wire [31:0] immediate;

    signext sign_extender (
        .raw_src(raw_imm),
        .imm_source(imm_source),
        .immediate(immediate)
    );

    // OUTPUTS: PC CONTEXT
    assign pc_out = pc_in;
    assign pc_plus4_out = pc_plus4_in;

    // OUTPUTS: FETCHED INSTRUCTION
    assign instruction_out = instruction_in;

    // OUTPUTS: OPERAND VALUES
    assign rs1_data_out = rs1_data;
    assign rs2_data_out = rs2_data;
    assign immediate_out = immediate;

    // OUTPUTS: DECODED FIELDS
    assign rs1_addr_out = rs1_addr;
    assign rs2_addr_out = rs2_addr;
    assign rd_addr_out = rd_addr;
    assign func3_out = f3;
    assign opcode_out = op;

    // OUTPUTS: CONTROL SIGNALS
    assign alu_control_out = alu_control;
    assign second_add_source_out = second_add_source;
    assign write_back_source_out = write_back_source;
    assign mem_write_out = mem_write;
    assign reg_write_out = reg_write;
    assign alu_source_out = alu_source;

endmodule
