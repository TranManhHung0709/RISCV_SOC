`timescale 1ns / 1ps

module axi_lutram_wrapper (
    // ==========================================================
    // PORT A: GIAO TIẾP VỚI RISC-V CPU (Đọc Bất Đồng Bộ - Asynchronous)
    // ==========================================================
    input  wire [31:0] cpu_addr,
    output wire [31:0] cpu_dout,
    input  wire        cpu_en,
    input  wire [3:0]  cpu_we,
    input  wire [31:0] cpu_din,

    // ==========================================================
    // PORT B: GIAO TIẾP VỚI ZYNQ PS (AXI4-Lite Slave - Đồng Bộ)
    // ==========================================================
    input  wire        S_AXI_ACLK,
    input  wire        S_AXI_ARESETN,

    // Kênh Write Address (AW)
    input  wire [31:0] S_AXI_AWADDR,
    input  wire        S_AXI_AWVALID,
    output wire        S_AXI_AWREADY,

    // Kênh Write Data (W)
    input  wire [31:0] S_AXI_WDATA,
    input  wire [3:0]  S_AXI_WSTRB,
    input  wire        S_AXI_WVALID,
    output wire        S_AXI_WREADY,

    // Kênh Write Response (B)
    output wire [1:0]  S_AXI_BRESP,
    output wire        S_AXI_BVALID,
    input  wire        S_AXI_BREADY,

    // Kênh Read Address (AR)
    input  wire [31:0] S_AXI_ARADDR,
    input  wire        S_AXI_ARVALID,
    output wire        S_AXI_ARREADY,

    // Kênh Read Data (R)
    output wire [31:0] S_AXI_RDATA,
    output wire [1:0]  S_AXI_RRESP,
    output wire        S_AXI_RVALID,
    input  wire        S_AXI_RREADY
);

    // ==========================================================
    // LÕI BỘ NHỚ: TRUE DUAL-PORT LUTRAM (64 Words x 32 Bits)
    // ==========================================================
    (* ram_style = "distributed" *) // Ép Vivado dùng LUTs thay vì BRAM để tránh trễ 1 clock
    reg [31:0] ram [0:63]; 
    integer i;

    // ----------------------------------------------------------
    // ĐIỀU KHIỂN CỔNG A (DÀNH CHO RISC-V)
    // ----------------------------------------------------------
    // Đọc bất đồng bộ: Dữ liệu tuôn ra ngay lập tức y hệt mạch tổ hợp
    assign cpu_dout = (cpu_en) ? ram[cpu_addr[7:2]] : 32'b0;

    // ==========================================================
    // ĐIỀU KHIỂN CỔNG B (GIAO THỨC AXI4-LITE DÀNH CHO ZYNQ ARM)
    // ==========================================================
    // Các thanh ghi quản lý trạng thái AXI
    reg axi_awready;
    reg axi_wready;
    reg axi_bvalid;
    reg axi_arready;
    reg axi_rvalid;
    reg [31:0] axi_rdata;

    // Gán tín hiệu ngõ ra AXI
    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = 2'b00; // Phản hồi OK
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RDATA   = axi_rdata;
    assign S_AXI_RRESP   = 2'b00; // Phản hồi OK
    assign S_AXI_RVALID  = axi_rvalid;

    // Điều kiện thực hiện Ghi / Đọc
    wire slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
    wire slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

    // Logic điều khiển Kênh GHI (Write Handshake)
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awready <= 1'b0;
            axi_wready  <= 1'b0;
            axi_bvalid  <= 1'b0;
        end else begin
            // Sẵn sàng nhận Địa chỉ Ghi
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
                axi_awready <= 1'b1;
            else
                axi_awready <= 1'b0;

            // Sẵn sàng nhận Dữ liệu Ghi
            if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
                axi_wready <= 1'b1;
            else
                axi_wready <= 1'b0;

            // Báo cáo hoàn tất Ghi (Response)
            if (axi_awready && S_AXI_AWVALID && axi_wready && S_AXI_WVALID && ~axi_bvalid)
                axi_bvalid <= 1'b1;
            else if (S_AXI_BREADY && axi_bvalid) // Zynq đã nhận được báo cáo
                axi_bvalid <= 1'b0; 
        end
    end

    // ==========================================================
    // KHỐI GHI HỢP NHẤT (SINGLE WRITE PORT MULTIPLEXING)
    // ==========================================================
    always @(posedge S_AXI_ACLK) begin
        // Ưu tiên 1: Giao tiếp AXI (Zynq nạp code vào RAM)
        if (slv_reg_wren) begin
            for (i = 0; i <= 3; i = i + 1) begin
                if (S_AXI_WSTRB[i]) begin
                    ram[S_AXI_AWADDR[7:2]][(i*8) +: 8] <= S_AXI_WDATA[(i*8) +: 8];
                end
            end
        end
        // Ưu tiên 2: CPU RISC-V ghi dữ liệu (Lệnh Store)
        else if (cpu_en) begin
            for (i = 0; i <= 3; i = i + 1) begin
                if (cpu_we[i]) begin
                    ram[cpu_addr[7:2]][(i*8) +: 8] <= cpu_din[(i*8) +: 8];
                end
            end
        end
    end

    // Logic điều khiển Kênh ĐỌC (Read Handshake)
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_arready <= 1'b0;
            axi_rvalid  <= 1'b0;
            axi_rdata   <= 32'b0;
        end else begin
            // Sẵn sàng nhận Địa chỉ Đọc
            if (~axi_arready && S_AXI_ARVALID)
                axi_arready <= 1'b1;
            else
                axi_arready <= 1'b0;

            // Trả Dữ liệu ra và Báo hiệu Valid
            if (slv_reg_rden) begin
                axi_rvalid <= 1'b1;
                // Đọc dữ liệu từ RAM. Chú ý: Cắt lấy 6 bit địa chỉ [7:2]
                axi_rdata  <= ram[S_AXI_ARADDR[7:2]]; 
            end else if (axi_rvalid && S_AXI_RREADY) begin // Zynq đã lấy xong dữ liệu
                axi_rvalid <= 1'b0;
            end
        end
    end

endmodule