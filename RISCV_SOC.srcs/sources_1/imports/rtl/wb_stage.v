module wb_stage (
    input wire [31:0] pc_plus4_in,
    input wire [31:0] alu_result_in,
    input wire [31:0] second_add_result_in,
    input wire [31:0] load_data_in,
    input wire load_valid_in,
    input wire [4:0] rd_addr_in,
    input wire [1:0] write_back_source_in,
    input wire reg_write_in,

    output wire wb_reg_write_en_out,
    output wire [4:0] wb_rd_addr_out,
    output wire [31:0] wb_rd_data_out
);

    // WRITE BACK MUX
    reg wb_valid;
    reg [31:0] wb_data;

    always @(*) begin
        wb_valid = 1'b0;
        wb_data = 32'b0;

        case (write_back_source_in)
            2'b00: begin
                wb_valid = 1'b1;
                wb_data = alu_result_in;
            end
            2'b01: begin
                wb_valid = load_valid_in;
                wb_data = load_data_in;
            end
            2'b10: begin
                wb_valid = 1'b1;
                wb_data = pc_plus4_in;
            end
            2'b11: begin
                wb_valid = 1'b1;
                wb_data = second_add_result_in;
            end
            default: begin
                wb_valid = 1'b0;
                wb_data = 32'b0;
            end
        endcase
    end

    // WB enables register writes only when selected data is valid.
    // OUTPUTS: WRITE-BACK CONTROL
    assign wb_reg_write_en_out = reg_write_in & wb_valid;

    // OUTPUTS: REGISTER ADDRESS
    assign wb_rd_addr_out = rd_addr_in;

    // OUTPUTS: WRITE-BACK DATA
    assign wb_rd_data_out = wb_data;

endmodule
