// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Mar 14 23:02:48 2026
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Vivado_projects/RISCV_SOC/RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ip/soc_riscv_v2_addr_decoder_0_0/soc_riscv_v2_addr_decoder_0_0_sim_netlist.v
// Design      : soc_riscv_v2_addr_decoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_riscv_v2_addr_decoder_0_0,addr_decoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "addr_decoder,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module soc_riscv_v2_addr_decoder_0_0
   (cpu_addr,
    cpu_we,
    dmem_dout,
    ip_dout,
    cpu_read_data,
    dmem_real_addr,
    dmem_en,
    dmem_we,
    ip_real_addr,
    ip_en,
    ip_we);
  input [31:0]cpu_addr;
  input [3:0]cpu_we;
  input [31:0]dmem_dout;
  input [31:0]ip_dout;
  output [31:0]cpu_read_data;
  output [31:0]dmem_real_addr;
  output dmem_en;
  output [3:0]dmem_we;
  output [31:0]ip_real_addr;
  output ip_en;
  output [3:0]ip_we;

  wire \<const0> ;
  wire [31:0]cpu_addr;
  wire [31:0]cpu_read_data;
  wire [3:0]cpu_we;
  wire [31:0]dmem_dout;
  wire dmem_en;
  wire [3:0]dmem_we;
  wire [31:0]ip_dout;
  wire [3:0]ip_we;

  assign dmem_real_addr[31] = \<const0> ;
  assign dmem_real_addr[30] = \<const0> ;
  assign dmem_real_addr[29] = \<const0> ;
  assign dmem_real_addr[28] = \<const0> ;
  assign dmem_real_addr[27] = \<const0> ;
  assign dmem_real_addr[26] = \<const0> ;
  assign dmem_real_addr[25] = \<const0> ;
  assign dmem_real_addr[24] = \<const0> ;
  assign dmem_real_addr[23] = \<const0> ;
  assign dmem_real_addr[22] = \<const0> ;
  assign dmem_real_addr[21] = \<const0> ;
  assign dmem_real_addr[20] = \<const0> ;
  assign dmem_real_addr[19] = \<const0> ;
  assign dmem_real_addr[18] = \<const0> ;
  assign dmem_real_addr[17] = \<const0> ;
  assign dmem_real_addr[16] = \<const0> ;
  assign dmem_real_addr[15:0] = cpu_addr[15:0];
  assign ip_en = cpu_addr[31];
  assign ip_real_addr[31] = \<const0> ;
  assign ip_real_addr[30] = \<const0> ;
  assign ip_real_addr[29] = \<const0> ;
  assign ip_real_addr[28] = \<const0> ;
  assign ip_real_addr[27] = \<const0> ;
  assign ip_real_addr[26] = \<const0> ;
  assign ip_real_addr[25] = \<const0> ;
  assign ip_real_addr[24] = \<const0> ;
  assign ip_real_addr[23] = \<const0> ;
  assign ip_real_addr[22] = \<const0> ;
  assign ip_real_addr[21] = \<const0> ;
  assign ip_real_addr[20] = \<const0> ;
  assign ip_real_addr[19] = \<const0> ;
  assign ip_real_addr[18] = \<const0> ;
  assign ip_real_addr[17] = \<const0> ;
  assign ip_real_addr[16] = \<const0> ;
  assign ip_real_addr[15:0] = cpu_addr[15:0];
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    dmem_en_INST_0
       (.I0(cpu_addr[31]),
        .O(dmem_en));
  LUT2 #(
    .INIT(4'h2)) 
    \dmem_we[0]_INST_0 
       (.I0(cpu_we[0]),
        .I1(cpu_addr[31]),
        .O(dmem_we[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \dmem_we[1]_INST_0 
       (.I0(cpu_we[1]),
        .I1(cpu_addr[31]),
        .O(dmem_we[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \dmem_we[2]_INST_0 
       (.I0(cpu_we[2]),
        .I1(cpu_addr[31]),
        .O(dmem_we[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \dmem_we[3]_INST_0 
       (.I0(cpu_we[3]),
        .I1(cpu_addr[31]),
        .O(dmem_we[3]));
  soc_riscv_v2_addr_decoder_0_0_addr_decoder inst
       (.cpu_addr(cpu_addr[31]),
        .cpu_read_data(cpu_read_data),
        .cpu_we(cpu_we),
        .dmem_dout(dmem_dout),
        .ip_dout(ip_dout),
        .ip_we(ip_we));
endmodule

(* ORIG_REF_NAME = "addr_decoder" *) 
module soc_riscv_v2_addr_decoder_0_0_addr_decoder
   (ip_we,
    cpu_read_data,
    cpu_addr,
    cpu_we,
    ip_dout,
    dmem_dout);
  output [3:0]ip_we;
  output [31:0]cpu_read_data;
  input [0:0]cpu_addr;
  input [3:0]cpu_we;
  input [31:0]ip_dout;
  input [31:0]dmem_dout;

  wire [0:0]cpu_addr;
  wire [31:0]cpu_read_data;
  wire [3:0]cpu_we;
  wire [31:0]dmem_dout;
  wire [31:0]ip_dout;
  wire [3:0]ip_we;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[0]_INST_0 
       (.I0(ip_dout[0]),
        .I1(cpu_addr),
        .I2(dmem_dout[0]),
        .O(cpu_read_data[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[10]_INST_0 
       (.I0(ip_dout[10]),
        .I1(cpu_addr),
        .I2(dmem_dout[10]),
        .O(cpu_read_data[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[11]_INST_0 
       (.I0(ip_dout[11]),
        .I1(cpu_addr),
        .I2(dmem_dout[11]),
        .O(cpu_read_data[11]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[12]_INST_0 
       (.I0(ip_dout[12]),
        .I1(cpu_addr),
        .I2(dmem_dout[12]),
        .O(cpu_read_data[12]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[13]_INST_0 
       (.I0(ip_dout[13]),
        .I1(cpu_addr),
        .I2(dmem_dout[13]),
        .O(cpu_read_data[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[14]_INST_0 
       (.I0(ip_dout[14]),
        .I1(cpu_addr),
        .I2(dmem_dout[14]),
        .O(cpu_read_data[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[15]_INST_0 
       (.I0(ip_dout[15]),
        .I1(cpu_addr),
        .I2(dmem_dout[15]),
        .O(cpu_read_data[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[16]_INST_0 
       (.I0(ip_dout[16]),
        .I1(cpu_addr),
        .I2(dmem_dout[16]),
        .O(cpu_read_data[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[17]_INST_0 
       (.I0(ip_dout[17]),
        .I1(cpu_addr),
        .I2(dmem_dout[17]),
        .O(cpu_read_data[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[18]_INST_0 
       (.I0(ip_dout[18]),
        .I1(cpu_addr),
        .I2(dmem_dout[18]),
        .O(cpu_read_data[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[19]_INST_0 
       (.I0(ip_dout[19]),
        .I1(cpu_addr),
        .I2(dmem_dout[19]),
        .O(cpu_read_data[19]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[1]_INST_0 
       (.I0(ip_dout[1]),
        .I1(cpu_addr),
        .I2(dmem_dout[1]),
        .O(cpu_read_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[20]_INST_0 
       (.I0(ip_dout[20]),
        .I1(cpu_addr),
        .I2(dmem_dout[20]),
        .O(cpu_read_data[20]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[21]_INST_0 
       (.I0(ip_dout[21]),
        .I1(cpu_addr),
        .I2(dmem_dout[21]),
        .O(cpu_read_data[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[22]_INST_0 
       (.I0(ip_dout[22]),
        .I1(cpu_addr),
        .I2(dmem_dout[22]),
        .O(cpu_read_data[22]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[23]_INST_0 
       (.I0(ip_dout[23]),
        .I1(cpu_addr),
        .I2(dmem_dout[23]),
        .O(cpu_read_data[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[24]_INST_0 
       (.I0(ip_dout[24]),
        .I1(cpu_addr),
        .I2(dmem_dout[24]),
        .O(cpu_read_data[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[25]_INST_0 
       (.I0(ip_dout[25]),
        .I1(cpu_addr),
        .I2(dmem_dout[25]),
        .O(cpu_read_data[25]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[26]_INST_0 
       (.I0(ip_dout[26]),
        .I1(cpu_addr),
        .I2(dmem_dout[26]),
        .O(cpu_read_data[26]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[27]_INST_0 
       (.I0(ip_dout[27]),
        .I1(cpu_addr),
        .I2(dmem_dout[27]),
        .O(cpu_read_data[27]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[28]_INST_0 
       (.I0(ip_dout[28]),
        .I1(cpu_addr),
        .I2(dmem_dout[28]),
        .O(cpu_read_data[28]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[29]_INST_0 
       (.I0(ip_dout[29]),
        .I1(cpu_addr),
        .I2(dmem_dout[29]),
        .O(cpu_read_data[29]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[2]_INST_0 
       (.I0(ip_dout[2]),
        .I1(cpu_addr),
        .I2(dmem_dout[2]),
        .O(cpu_read_data[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[30]_INST_0 
       (.I0(ip_dout[30]),
        .I1(cpu_addr),
        .I2(dmem_dout[30]),
        .O(cpu_read_data[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[31]_INST_0 
       (.I0(ip_dout[31]),
        .I1(cpu_addr),
        .I2(dmem_dout[31]),
        .O(cpu_read_data[31]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[3]_INST_0 
       (.I0(ip_dout[3]),
        .I1(cpu_addr),
        .I2(dmem_dout[3]),
        .O(cpu_read_data[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[4]_INST_0 
       (.I0(ip_dout[4]),
        .I1(cpu_addr),
        .I2(dmem_dout[4]),
        .O(cpu_read_data[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[5]_INST_0 
       (.I0(ip_dout[5]),
        .I1(cpu_addr),
        .I2(dmem_dout[5]),
        .O(cpu_read_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[6]_INST_0 
       (.I0(ip_dout[6]),
        .I1(cpu_addr),
        .I2(dmem_dout[6]),
        .O(cpu_read_data[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[7]_INST_0 
       (.I0(ip_dout[7]),
        .I1(cpu_addr),
        .I2(dmem_dout[7]),
        .O(cpu_read_data[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[8]_INST_0 
       (.I0(ip_dout[8]),
        .I1(cpu_addr),
        .I2(dmem_dout[8]),
        .O(cpu_read_data[8]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \cpu_read_data[9]_INST_0 
       (.I0(ip_dout[9]),
        .I1(cpu_addr),
        .I2(dmem_dout[9]),
        .O(cpu_read_data[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip_we[0]_INST_0 
       (.I0(cpu_addr),
        .I1(cpu_we[0]),
        .O(ip_we[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip_we[1]_INST_0 
       (.I0(cpu_addr),
        .I1(cpu_we[1]),
        .O(ip_we[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip_we[2]_INST_0 
       (.I0(cpu_addr),
        .I1(cpu_we[2]),
        .O(ip_we[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ip_we[3]_INST_0 
       (.I0(cpu_addr),
        .I1(cpu_we[3]),
        .O(ip_we[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
