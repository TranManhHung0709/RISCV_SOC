module top_pipeline (
    input wire clk,
    input wire rst_n,
    output wire [31:0] dbg_pc_out,
    output wire dbg_wb_reg_write_en_out,
    output wire [4:0] dbg_wb_rd_addr_out,
    output wire [31:0] dbg_wb_rd_data_out
);

    cpu_pipeline cpu_inst (
        .clk(clk),
        .rst_n(rst_n),
        .dbg_pc_out(dbg_pc_out),
        .dbg_wb_reg_write_en_out(dbg_wb_reg_write_en_out),
        .dbg_wb_rd_addr_out(dbg_wb_rd_addr_out),
        .dbg_wb_rd_data_out(dbg_wb_rd_data_out)
    );

endmodule
