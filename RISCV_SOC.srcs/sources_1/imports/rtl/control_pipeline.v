module control_pipeline (
    input [6:0] op,
    input [2:0] func3,
    input [6:0] func7,

    output reg [3:0] alu_control,
    output reg [2:0] imm_source,
    output reg mem_write,
    output reg reg_write,
    output reg alu_source,
    output reg [1:0] write_back_source,
    output reg [1:0] second_add_source
);

// INTERNAL SIGNALS
reg [1:0] alu_op;

// MAIN DECODER
always @(*) begin
    reg_write = 1'b0;
    imm_source = 3'b000;
    alu_source = 1'b0;
    mem_write = 1'b0;
    alu_op = 2'b00;
    write_back_source = 2'b00;
    second_add_source = 2'b00;

    case (op)
        // LOAD
        7'b0000011: begin
            reg_write = 1'b1;
            alu_source = 1'b1;
            write_back_source = 2'b01;
        end
        // STORE
        7'b0100011: begin
            imm_source = 3'b001;
            alu_source = 1'b1;
            mem_write = 1'b1;
        end
        // R-TYPE ALU
        7'b0110011: begin
            reg_write = 1'b1;
            alu_op = 2'b10;
            write_back_source = 2'b00;
        end
        // BRANCH
        7'b1100011: begin
            imm_source = 3'b010;
            alu_op = 2'b01;
        end
        // JAL / JALR
        7'b1101111, 7'b1100111: begin
            reg_write = 1'b1;
            mem_write = 1'b0;
            write_back_source = 2'b10;
            if (op[3]) begin
                imm_source = 3'b011;
                second_add_source = 2'b00;
            end else begin
                imm_source = 3'b000;
                second_add_source = 2'b10;
            end
        end
        // I-TYPE ALU
        7'b0010011: begin
            reg_write = 1'b1;
            alu_source = 1'b1;
            alu_op = 2'b10;
            write_back_source = 2'b00;
        end
        // U-TYPE
        7'b0110111, 7'b0010111: begin
            reg_write = 1'b1;
            imm_source = 3'b100;
            write_back_source = 2'b11;
            if (op[5]) begin
                second_add_source = 2'b01;
            end else begin
                second_add_source = 2'b00;
            end
        end
        default: begin
            // keep defaults
        end
    endcase
end

// ALU DECODER
always @(*) begin
    alu_control = 4'b1111;
    case (alu_op)
        2'b00: alu_control = 4'b0000;
        2'b10: begin
            case (func3)
                // ADD / SUB
                3'b000: begin
                    if (op == 7'b0110011) begin
                        alu_control = func7[5] ? 4'b0001 : 4'b0000;
                    end else begin
                        alu_control = 4'b0000;
                    end
                end
                // AND / OR / XOR
                3'b111: alu_control = 4'b0010;
                3'b110: alu_control = 4'b0011;
                3'b100: alu_control = 4'b1000;
                // SLT / SLTU
                3'b010: alu_control = 4'b0101;
                3'b011: alu_control = 4'b0111;
                // SHIFTS
                3'b001: alu_control = 4'b1001;
                3'b101: begin
                    alu_control = func7[5] ? 4'b1011 : 4'b1010;
                end
                default: alu_control = 4'b1111;
            endcase
        end
        2'b01: begin
            case (func3)
                // BRANCH COMPARE
                3'b000, 3'b001: alu_control = 4'b0001;
                3'b100, 3'b101: alu_control = 4'b0101;
                3'b110, 3'b111: alu_control = 4'b0111;
                default: alu_control = 4'b1111;
            endcase
        end
        default: alu_control = 4'b1111;
    endcase
end

endmodule
