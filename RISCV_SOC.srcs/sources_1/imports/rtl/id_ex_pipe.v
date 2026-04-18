module id_ex_pipe (
    input wire clk,
    input wire rst_n,
    input wire stall,
    input wire flush,

    input wire [31:0] pc_in,
    input wire [31:0] pc_plus4_in,
    input wire [31:0] instruction_in,
    input wire [31:0] rs1_data_in,
    input wire [31:0] rs2_data_in,
    input wire [31:0] immediate_in,
    input wire [4:0] rs1_addr_in,
    input wire [4:0] rs2_addr_in,
    input wire [4:0] rd_addr_in,
    input wire [2:0] func3_in,
    input wire [6:0] opcode_in,
    input wire [3:0] alu_control_in,
    input wire [1:0] second_add_source_in,
    input wire [1:0] write_back_source_in,
    input wire mem_write_in,
    input wire reg_write_in,
    input wire alu_source_in,

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

    // PIPELINE STORAGE: PC CONTEXT
    reg [31:0] pc_reg;
    reg [31:0] pc_plus4_reg;

    // PIPELINE STORAGE: FETCHED INSTRUCTION
    reg [31:0] instruction_reg;

    // PIPELINE STORAGE: OPERANDS
    reg [31:0] rs1_data_reg;
    reg [31:0] rs2_data_reg;
    reg [31:0] immediate_reg;

    // PIPELINE STORAGE: DECODED FIELDS
    reg [4:0] rs1_addr_reg;
    reg [4:0] rs2_addr_reg;
    reg [4:0] rd_addr_reg;
    reg [2:0] func3_reg;
    reg [6:0] opcode_reg;

    // PIPELINE STORAGE: CONTROL SIGNALS
    reg [3:0] alu_control_reg;
    reg [1:0] second_add_source_reg;
    reg [1:0] write_back_source_reg;
    reg mem_write_reg;
    reg reg_write_reg;
    reg alu_source_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pc_reg <= 32'b0;
            pc_plus4_reg <= 32'b0;
            instruction_reg <= 32'b0;
            rs1_data_reg <= 32'b0;
            rs2_data_reg <= 32'b0;
            immediate_reg <= 32'b0;
            rs1_addr_reg <= 5'b0;
            rs2_addr_reg <= 5'b0;
            rd_addr_reg <= 5'b0;
            func3_reg <= 3'b0;
            opcode_reg <= 7'b0;
            alu_control_reg <= 4'b0;
            second_add_source_reg <= 2'b0;
            write_back_source_reg <= 2'b0;
            mem_write_reg <= 1'b0;
            reg_write_reg <= 1'b0;
            alu_source_reg <= 1'b0;
        end else if (flush) begin
            pc_reg <= 32'b0;
            pc_plus4_reg <= 32'b0;
            instruction_reg <= 32'b0;
            rs1_data_reg <= 32'b0;
            rs2_data_reg <= 32'b0;
            immediate_reg <= 32'b0;
            rs1_addr_reg <= 5'b0;
            rs2_addr_reg <= 5'b0;
            rd_addr_reg <= 5'b0;
            func3_reg <= 3'b0;
            opcode_reg <= 7'b0;
            alu_control_reg <= 4'b0;
            second_add_source_reg <= 2'b0;
            write_back_source_reg <= 2'b0;
            mem_write_reg <= 1'b0;
            reg_write_reg <= 1'b0;
            alu_source_reg <= 1'b0;
        end else if (!stall) begin
            pc_reg <= pc_in;
            pc_plus4_reg <= pc_plus4_in;
            instruction_reg <= instruction_in;
            rs1_data_reg <= rs1_data_in;
            rs2_data_reg <= rs2_data_in;
            immediate_reg <= immediate_in;
            rs1_addr_reg <= rs1_addr_in;
            rs2_addr_reg <= rs2_addr_in;
            rd_addr_reg <= rd_addr_in;
            func3_reg <= func3_in;
            opcode_reg <= opcode_in;
            alu_control_reg <= alu_control_in;
            second_add_source_reg <= second_add_source_in;
            write_back_source_reg <= write_back_source_in;
            mem_write_reg <= mem_write_in;
            reg_write_reg <= reg_write_in;
            alu_source_reg <= alu_source_in;
        end
    end

    // OUTPUTS: PC CONTEXT
    assign pc_out = pc_reg;
    assign pc_plus4_out = pc_plus4_reg;

    // OUTPUTS: FETCHED INSTRUCTION
    assign instruction_out = instruction_reg;

    // OUTPUTS: OPERANDS
    assign rs1_data_out = rs1_data_reg;
    assign rs2_data_out = rs2_data_reg;
    assign immediate_out = immediate_reg;

    // OUTPUTS: DECODED FIELDS
    assign rs1_addr_out = rs1_addr_reg;
    assign rs2_addr_out = rs2_addr_reg;
    assign rd_addr_out = rd_addr_reg;
    assign func3_out = func3_reg;
    assign opcode_out = opcode_reg;

    // OUTPUTS: CONTROL SIGNALS
    assign alu_control_out = alu_control_reg;
    assign second_add_source_out = second_add_source_reg;
    assign write_back_source_out = write_back_source_reg;
    assign mem_write_out = mem_write_reg;
    assign reg_write_out = reg_write_reg;
    assign alu_source_out = alu_source_reg;

endmodule
