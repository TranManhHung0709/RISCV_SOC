module mem_wb_pipe (
    input wire clk,
    input wire rst_n,
    input wire stall,
    input wire flush,

    input wire [31:0] pc_plus4_in,
    input wire [31:0] instruction_in,
    input wire [31:0] alu_result_in,
    input wire [31:0] second_add_result_in,
    input wire [31:0] load_data_in,
    input wire load_valid_in,
    input wire [4:0] rd_addr_in,
    input wire [1:0] write_back_source_in,
    input wire reg_write_in,

    output wire [31:0] pc_plus4_out,
    output wire [31:0] instruction_out,
    output wire [31:0] alu_result_out,
    output wire [31:0] second_add_result_out,
    output wire [31:0] load_data_out,
    output wire load_valid_out,
    output wire [4:0] rd_addr_out,
    output wire [1:0] write_back_source_out,
    output wire reg_write_out
);

    // PIPELINE STORAGE: PC CONTEXT
    reg [31:0] pc_plus4_reg;

    // PIPELINE STORAGE: FETCHED INSTRUCTION
    reg [31:0] instruction_reg;

    // PIPELINE STORAGE: EXECUTION / MEMORY RESULTS
    reg [31:0] alu_result_reg;
    reg [31:0] second_add_result_reg;
    reg [31:0] load_data_reg;
    reg load_valid_reg;

    // PIPELINE STORAGE: DECODED FIELDS
    reg [4:0] rd_addr_reg;

    // PIPELINE STORAGE: CONTROL SIGNALS
    reg [1:0] write_back_source_reg;
    reg reg_write_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pc_plus4_reg <= 32'b0;
            instruction_reg <= 32'b0;
            alu_result_reg <= 32'b0;
            second_add_result_reg <= 32'b0;
            load_data_reg <= 32'b0;
            load_valid_reg <= 1'b0;
            rd_addr_reg <= 5'b0;
            write_back_source_reg <= 2'b0;
            reg_write_reg <= 1'b0;
        end else if (flush) begin
            pc_plus4_reg <= 32'b0;
            instruction_reg <= 32'b0;
            alu_result_reg <= 32'b0;
            second_add_result_reg <= 32'b0;
            load_data_reg <= 32'b0;
            load_valid_reg <= 1'b0;
            rd_addr_reg <= 5'b0;
            write_back_source_reg <= 2'b0;
            reg_write_reg <= 1'b0;
        end else if (!stall) begin
            pc_plus4_reg <= pc_plus4_in;
            instruction_reg <= instruction_in;
            alu_result_reg <= alu_result_in;
            second_add_result_reg <= second_add_result_in;
            load_data_reg <= load_data_in;
            load_valid_reg <= load_valid_in;
            rd_addr_reg <= rd_addr_in;
            write_back_source_reg <= write_back_source_in;
            reg_write_reg <= reg_write_in;
        end
    end

    // OUTPUTS: PC CONTEXT
    assign pc_plus4_out = pc_plus4_reg;

    // OUTPUTS: FETCHED INSTRUCTION
    assign instruction_out = instruction_reg;

    // OUTPUTS: EXECUTION / MEMORY RESULTS
    assign alu_result_out = alu_result_reg;
    assign second_add_result_out = second_add_result_reg;
    assign load_data_out = load_data_reg;
    assign load_valid_out = load_valid_reg;

    // OUTPUTS: DECODED FIELDS
    assign rd_addr_out = rd_addr_reg;

    // OUTPUTS: CONTROL SIGNALS
    assign write_back_source_out = write_back_source_reg;
    assign reg_write_out = reg_write_reg;

endmodule
