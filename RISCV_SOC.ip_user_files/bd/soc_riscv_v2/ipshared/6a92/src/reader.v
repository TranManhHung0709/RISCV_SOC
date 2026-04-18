module reader (
    input  [31:0] mem_data,
    input  [3:0]  be_mask,
    input  [2:0]  f3,

    output reg [31:0] wb_data,
    output reg valid
);

// -------------------------
// Internal signals
// -------------------------
wire sign_extend;
assign sign_extend = ~f3[2]; // UNSIGNED OR SIGNED

reg [31:0] masked_data;
reg [31:0] raw_data;

// -------------------------
// MASK APPLY (kh�ng d�ng slicing ki?u SV)
// -------------------------
always @(*) begin
    // default
    masked_data = 32'd0;

    // byte 0
    if (be_mask[0])
        masked_data[7:0] = mem_data[7:0];
    else
        masked_data[7:0] = 8'h00;

    // byte 1
    if (be_mask[1])
        masked_data[15:8] = mem_data[15:8];
    else
        masked_data[15:8] = 8'h00;

    // byte 2
    if (be_mask[2])
        masked_data[23:16] = mem_data[23:16];
    else
        masked_data[23:16] = 8'h00;

    // byte 3
    if (be_mask[3])
        masked_data[31:24] = mem_data[31:24];
    else
        masked_data[31:24] = 8'h00;
end

// -------------------------
// RAW DATA SHIFTING
// -------------------------
always @(*) begin
    case (f3)
        // LW
        3'b010: raw_data = masked_data;

        // LB, LBU
        3'b000, 3'b100: begin
            case (be_mask)
                4'b0001: raw_data = masked_data;
                4'b0010: raw_data = masked_data >> 8;
                4'b0100: raw_data = masked_data >> 16;
                4'b1000: raw_data = masked_data >> 24;
                default: raw_data = 32'd0;
            endcase
        end

        // LH, LHU
        3'b001, 3'b101: begin
            case (be_mask)
                4'b0011: raw_data = masked_data;
                4'b1100: raw_data = masked_data >> 16;
                default: raw_data = 32'd0;
            endcase
        end

        default: raw_data = 32'd0;
    endcase
end

// -------------------------
// SIGN EXTENSION + VALID
// -------------------------
always @(*) begin
    case (f3)
        // LW
        3'b010: wb_data = raw_data;

        // LB, LBU
        3'b000, 3'b100:
            wb_data = sign_extend ?
                      {{24{raw_data[7]}}, raw_data[7:0]} :
                      raw_data;

        // LH, LHU
        3'b001, 3'b101:
            wb_data = sign_extend ?
                      {{16{raw_data[15]}}, raw_data[15:0]} :
                      raw_data;

        default:
            wb_data = 32'd0;
    endcase

    // h?p l? n?u c� �t nh?t 1 byte ???c ??c
    valid = |be_mask;
end

endmodule

