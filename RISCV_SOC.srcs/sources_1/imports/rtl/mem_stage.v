module mem_stage (
    input wire clk,
    input wire [31:0] pc_plus4_in,
    input wire [31:0] instruction_in,
    input wire [31:0] alu_result_in,
    input wire [31:0] second_add_result_in,
    input wire [31:0] store_data_in,
    input wire [4:0] rd_addr_in,
    input wire [2:0] func3_in,
    input wire [6:0] opcode_in,
    input wire [1:0] write_back_source_in,
    input wire mem_write_in,
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

    // MEMORY BYTE ENABLE + STORE FORMAT
    wire [3:0] mem_byte_enable;
    wire [31:0] mem_write_data;

    byte_enable_decoder be_decode (
        .alu_result_address(alu_result_in),
        .reg_read(store_data_in),
        .f3(func3_in),
        .byte_enable(mem_byte_enable),
        .data(mem_write_data)
    );

    // DATA MEMORY ACCESS
    wire [31:0] mem_read_data;

    memory data_memory (
        .clk(clk),
        .address({alu_result_in[31:2], 2'b00}),
        .write_data(mem_write_data),
        .byte_enable(mem_byte_enable),
        .write_enable(mem_write_in),
        .rst_n(1'b1),
        .read_data(mem_read_data)
    );

    // LOAD DATA FORMAT
    wire [31:0] load_data;
    wire load_valid;

    reader reader_inst (
        .mem_data(mem_read_data),
        .be_mask(mem_byte_enable),
        .f3(func3_in),
        .wb_data(load_data),
        .valid(load_valid)
    );

    // OUTPUTS: PC CONTEXT
    assign pc_plus4_out = pc_plus4_in;

    // OUTPUTS: FETCHED INSTRUCTION
    assign instruction_out = instruction_in;

    // OUTPUTS: EXECUTION RESULTS
    assign alu_result_out = alu_result_in;
    assign second_add_result_out = second_add_result_in;
    assign load_data_out = load_data;
    assign load_valid_out = load_valid;

    // OUTPUTS: DECODED FIELDS
    assign rd_addr_out = rd_addr_in;

    // OUTPUTS: CONTROL SIGNALS
    assign write_back_source_out = write_back_source_in;
    assign reg_write_out = reg_write_in;

endmodule
