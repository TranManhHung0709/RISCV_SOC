module calc_ip (
    input wire clk,
    input wire rst_n,

    // Giao tiếp điều khiển MMIO
    input wire [31:0] ip_real_addr,
    input wire        ip_en,
    input wire [3:0]  ip_we,

    // Giao tiếp dữ liệu
    input  wire [31:0] ip_din,  
    output reg  [31:0] ip_dout  
);

    // 1. Tập thanh ghi nội bộ
    reg [31:0] reg_A;
    reg [31:0] reg_B;
    reg [31:0] reg_Status; // Có thể dùng để báo "Tính xong" hoặc "Bị tràn"

    // 2. Logic tính toán cốt lõi (Combinational)
    wire [31:0] math_result = reg_A + reg_B;

    // 3. Quá trình GHI đồng bộ (Write)
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            reg_A      <= 32'd0;
            reg_B      <= 32'd0;
            reg_Status <= 32'd1; // Ví dụ: 1 là trạng thái Idle sẵn sàng
        end else begin
            if (ip_en && (ip_we != 4'b0000)) begin
                case (ip_real_addr[7:0])
                     8'h00: reg_A <= ip_din;
                     8'h04: reg_B <= ip_din;
                     // Status thường do phần cứng tự cập nhật, cấm CPU ghi đè nên không để vào đây
                     default: ; // Giữ nguyên giá trị
                endcase
            end
        end
    end

    // 4. Quá trình ĐỌC bất đồng bộ (Read MUX)
    always @(*) begin
        if (ip_en) begin
            case (ip_real_addr[7:0])
                8'h00: ip_dout = reg_A;
                8'h04: ip_dout = reg_B;
                8'h08: ip_dout = reg_Status;
                8'h0C: ip_dout = math_result;
                default: ip_dout = 32'd0; 
            endcase
        end else begin
            ip_dout = 32'd0; // Bắt buộc phải có để tránh Latch khi ip_en = 0
        end
    end

endmodule