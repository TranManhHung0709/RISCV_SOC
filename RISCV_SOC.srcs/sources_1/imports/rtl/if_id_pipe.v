module if_id_pipe (
    input wire clk,
    input wire rst_n,
    input wire stall,
    input wire flush,
    input wire [31:0] pc_in,
    input wire [31:0] pc_plus4_in,
    input wire [31:0] instruction_in,

    output wire [31:0] pc_out,
    output wire [31:0] pc_plus4_out,
    output wire [31:0] instruction_out
);

    // PIPELINE STORAGE: PC CONTEXT
    reg [31:0] pc_reg;
    reg [31:0] pc_plus4_reg;

    // PIPELINE STORAGE: FETCHED INSTRUCTION
    reg [31:0] instruction_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pc_reg <= 32'b0;
            pc_plus4_reg <= 32'b0;
            instruction_reg <= 32'b0;
        end else if (flush) begin
            pc_reg <= 32'b0;
            pc_plus4_reg <= 32'b0;
            instruction_reg <= 32'b0;
        end else if (!stall) begin
            pc_reg <= pc_in;
            pc_plus4_reg <= pc_plus4_in;
            instruction_reg <= instruction_in;
        end
    end

    // OUTPUTS: PC CONTEXT
    assign pc_out = pc_reg;
    assign pc_plus4_out = pc_plus4_reg;

    // OUTPUTS: FETCHED INSTRUCTION
    assign instruction_out = instruction_reg;

endmodule
