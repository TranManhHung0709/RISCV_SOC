module addr_decoder (
    // Từ CPU đưa tới
    input  [31:0] cpu_addr,
    input  [3:0]  cpu_we,
    // input cpu_en (nếu CPU của bạn có tín hiệu en tổng, giả sử luôn bằng 1)

    // Từ các thiết bị trar về
    input  [31:0] dmem_dout,
    input  [31:0] ip_dout,

    // Trả ngược lại cho CPU
    output reg [31:0] cpu_read_data,

    // Xuất ra DMEM
    output [31:0] dmem_real_addr,
    output        dmem_en, 
    output [3:0]  dmem_we,

    // Xuất ra IP Kế toán
    output [31:0] ip_real_addr,
    output        ip_en,
    output [3:0]  ip_we
);

    // 1. Giải mã địa chỉ (Address Decoding)
    // Giả sử: 0x0000_XXXX là RAM, 0x8000_XXXX là IP
    wire is_dmem = (cpu_addr[31] == 1'b0); 
    wire is_ip   = (cpu_addr[31] == 1'b1);

    // 2. Cấp phát Enable và lọc Write Enable 
    assign dmem_en = is_dmem;
    assign dmem_we = is_dmem ? cpu_we : 4'b0000;

    assign ip_en   = is_ip;
    assign ip_we   = is_ip ? cpu_we : 4'b0000;

    // 3. Tính Real Address (lược bỏ base)
    assign dmem_real_addr = {16'h0000, cpu_addr[15:0]};
    assign ip_real_addr   = {16'h0000, cpu_addr[15:0]};

    // 4. MUX dữ liệu trả về CPU 
    always @(*) begin
        if (is_dmem)
            cpu_read_data = dmem_dout;
        else if (is_ip)
            cpu_read_data = ip_dout;
        else
            cpu_read_data = 32'h0000_0000; // Default an toàn 
    end

endmodule