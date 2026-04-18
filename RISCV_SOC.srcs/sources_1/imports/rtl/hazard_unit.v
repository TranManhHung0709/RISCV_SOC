module hazard_unit (
    input wire [31:0] if_id_instruction,

    input wire [4:0] id_ex_rd_addr,
    input wire [1:0] id_ex_write_back_source,
    input wire id_ex_reg_write,

    input wire ex_redirect_en,

    output wire if_stage_stall,
    output wire if_id_stall,
    output wire if_id_flush,
    output wire id_ex_flush
);

    wire [6:0] id_opcode;
    wire [4:0] id_rs1_addr;
    wire [4:0] id_rs2_addr;

    reg id_uses_rs1;
    reg id_uses_rs2;

    wire id_ex_is_load;
    wire load_use_hazard;

    assign id_opcode = if_id_instruction[6:0];
    assign id_rs1_addr = if_id_instruction[19:15];
    assign id_rs2_addr = if_id_instruction[24:20];

    // Detect source register usage by opcode to avoid false load-use stalls.
    always @(*) begin
        id_uses_rs1 = 1'b0;
        id_uses_rs2 = 1'b0;

        case (id_opcode)
            // LOAD, STORE, BRANCH, JALR, R-TYPE, I-TYPE ALU
            7'b0000011,
            7'b0100011,
            7'b1100011,
            7'b1100111,
            7'b0110011,
            7'b0010011: id_uses_rs1 = 1'b1;
            default: id_uses_rs1 = 1'b0;
        endcase

        case (id_opcode)
            // STORE, BRANCH, R-TYPE
            7'b0100011,
            7'b1100011,
            7'b0110011: id_uses_rs2 = 1'b1;
            default: id_uses_rs2 = 1'b0;
        endcase
    end

    assign id_ex_is_load = id_ex_reg_write && (id_ex_write_back_source == 2'b01);

    assign load_use_hazard = id_ex_is_load && (id_ex_rd_addr != 5'b0) &&
        ((id_uses_rs1 && (id_rs1_addr == id_ex_rd_addr)) ||
         (id_uses_rs2 && (id_rs2_addr == id_ex_rd_addr)));

    // Stall IF + IF/ID when load-use hazard occurs.
    assign if_stage_stall = load_use_hazard;
    assign if_id_stall = load_use_hazard;

    // Flush IF/ID on redirect, and flush ID/EX on redirect or load-use bubble.
    assign if_id_flush = ex_redirect_en;
    assign id_ex_flush = ex_redirect_en | load_use_hazard;

endmodule
