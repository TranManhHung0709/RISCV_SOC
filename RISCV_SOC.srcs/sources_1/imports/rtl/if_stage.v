module if_stage (
    input wire clk,
    input wire rst_n,
    input wire stall,
    input wire redirect_en,
    input wire [31:0] redirect_pc,

    output wire [31:0] pc_out,
    output wire [31:0] pc_plus4_out,
    output wire [31:0] instruction_out
);

    // PROGRAM COUNTER
    reg [31:0] pc;
    wire [31:0] pc_next;

    // OUTPUTS: PC CONTEXT
    assign pc_out = pc;
    assign pc_plus4_out = pc + 32'd4;

    // NEXT PC SELECT
    assign pc_next = redirect_en ? redirect_pc : pc_plus4_out;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pc <= 32'b0;
        end else if (!stall) begin
            pc <= pc_next;
        end
    end

    // OUTPUTS: FETCHED INSTRUCTION
    memory instruction_memory (
        .clk(clk),
        .address(pc),
        .write_data(32'b0),
        .byte_enable(4'b1111),
        .write_enable(1'b0),
        .rst_n(1'b1),
        .read_data(instruction_out)
    );

endmodule
