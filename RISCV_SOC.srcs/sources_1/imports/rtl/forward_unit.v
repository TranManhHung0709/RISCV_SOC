module forward_unit (
    input wire [4:0] ex_rs1_addr,
    input wire [4:0] ex_rs2_addr,

    input wire [4:0] ex_mem_rd_addr,
    input wire ex_mem_reg_write,
    input wire ex_mem_is_load,

    input wire [4:0] mem_wb_rd_addr,
    input wire mem_wb_reg_write,

    output reg [1:0] forward_a_sel,
    output reg [1:0] forward_b_sel
);

    // 2'b00: use ID/EX register value
    // 2'b10: forward from EX/MEM stage
    // 2'b01: forward from MEM/WB stage
    always @(*) begin
        forward_a_sel = 2'b00;
        forward_b_sel = 2'b00;

        if (ex_mem_reg_write && !ex_mem_is_load && (ex_mem_rd_addr != 5'b0) && (ex_mem_rd_addr == ex_rs1_addr)) begin
            forward_a_sel = 2'b10;
        end else if (mem_wb_reg_write && (mem_wb_rd_addr != 5'b0) && (mem_wb_rd_addr == ex_rs1_addr)) begin
            forward_a_sel = 2'b01;
        end

        if (ex_mem_reg_write && !ex_mem_is_load && (ex_mem_rd_addr != 5'b0) && (ex_mem_rd_addr == ex_rs2_addr)) begin
            forward_b_sel = 2'b10;
        end else if (mem_wb_reg_write && (mem_wb_rd_addr != 5'b0) && (mem_wb_rd_addr == ex_rs2_addr)) begin
            forward_b_sel = 2'b01;
        end
    end

endmodule
