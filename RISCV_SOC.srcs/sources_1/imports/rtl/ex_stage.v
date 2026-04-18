module ex_stage (
    input wire [31:0] pc_in,
    input wire [31:0] pc_plus4_in,
    input wire [31:0] instruction_in,
    input wire [31:0] rs1_data_in,
    input wire [31:0] rs2_data_in,
    input wire [31:0] immediate_in,
    input wire [4:0] rd_addr_in,
    input wire [2:0] func3_in,
    input wire [6:0] opcode_in,
    input wire [3:0] alu_control_in,
    input wire [1:0] second_add_source_in,
    input wire [1:0] write_back_source_in,
    input wire mem_write_in,
    input wire reg_write_in,
    input wire alu_source_in,

    output wire redirect_en_out,
    output wire [31:0] redirect_pc_out,
    output wire [31:0] pc_plus4_out,
    output wire [31:0] instruction_out,
    output wire [31:0] alu_result_out,
    output wire [31:0] second_add_result_out,
    output wire [31:0] store_data_out,
    output wire [4:0] rd_addr_out,
    output wire [2:0] func3_out,
    output wire [6:0] opcode_out,
    output wire [1:0] write_back_source_out,
    output wire mem_write_out,
    output wire reg_write_out
);

    // SECOND ADDER PATH
    reg [31:0] second_add_result;

    always @(*) begin
        case (second_add_source_in)
            2'b00: second_add_result = pc_in       + immediate_in; // BRANCH
            2'b01: second_add_result = 32'b0       + immediate_in; // U-type auipc với lui
            2'b10: second_add_result = rs1_data_in + immediate_in; // JALR
            default: second_add_result = pc_in + immediate_in;
        endcase
    end

    // ALU PATH
    wire [31:0] alu_src2;
    wire [31:0] alu_result;
    wire alu_zero;
    wire alu_last_bit;

    assign alu_src2 = alu_source_in ? immediate_in : rs2_data_in;

    alu alu_inst (
        .alu_control(alu_control_in),
        .src1(rs1_data_in),
        .src2(alu_src2),
        .alu_result(alu_result),
        .zero(alu_zero),
        .last_bit(alu_last_bit) 
    );

    // BRANCH DECISION
    reg branch_taken;
    wire is_branch;
    wire is_jal;
    wire is_jalr;

    assign is_branch = (opcode_in == 7'b1100011);
    assign is_jal = (opcode_in == 7'b1101111);
    assign is_jalr = (opcode_in == 7'b1100111);

    always @(*) begin
        branch_taken = 1'b0;
        if (is_branch) begin
            case (func3_in)
                3'b000: branch_taken = alu_zero;
                3'b001: branch_taken = !alu_zero;
                3'b100, 3'b110: branch_taken = alu_last_bit;
                3'b101, 3'b111: branch_taken = !alu_last_bit;
                default: branch_taken = 1'b0;
            endcase
        end
    end

    // OUTPUTS: BRANCH DECISION
    assign redirect_en_out = is_jal | is_jalr | branch_taken;
    assign redirect_pc_out = is_jalr ? {second_add_result[31:1], 1'b0} : second_add_result;

    // OUTPUTS: PC CONTEXT
    assign pc_plus4_out = pc_plus4_in; 

    // OUTPUTS: FETCHED INSTRUCTION
    assign instruction_out = instruction_in; 

    // OUTPUTS: EXECUTION RESULTS
    assign alu_result_out = alu_result;
    assign second_add_result_out = second_add_result;

    // OUTPUTS: STORE DATA
    assign store_data_out = rs2_data_in;

    // OUTPUTS: DECODED FIELDS
    assign rd_addr_out = rd_addr_in;
    assign func3_out = func3_in;
    assign opcode_out = opcode_in;

    // OUTPUTS: CONTROL SIGNALS
    assign write_back_source_out = write_back_source_in;
    assign mem_write_out = mem_write_in;
    assign reg_write_out = reg_write_in;

endmodule
