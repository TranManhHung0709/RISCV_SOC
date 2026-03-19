// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Mar 14 22:22:42 2026
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Vivado_projects/RISCV_SOC/RISCV_SOC.gen/sources_1/bd/soc_riscv_v1/ip/soc_riscv_v1_cpu_0_0/soc_riscv_v1_cpu_0_0_stub.v
// Design      : soc_riscv_v1_cpu_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "soc_riscv_v1_cpu_0_0,cpu,{}" *) (* CORE_GENERATION_INFO = "soc_riscv_v1_cpu_0_0,cpu,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=cpu,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "package_project" *) (* X_CORE_INFO = "cpu,Vivado 2025.1" *) 
module soc_riscv_v1_cpu_0_0(clk, rst_n, imem_addr, imem_dout, imem_en, imem_we, 
  imem_din, cpu_addr, cpu_dout, cpu_en, cpu_we, cpu_din)
/* synthesis syn_black_box black_box_pad_pin="rst_n,imem_addr[31:0],imem_dout[31:0],imem_en,imem_we[3:0],imem_din[31:0],cpu_addr[31:0],cpu_dout[31:0],cpu_en,cpu_we[3:0],cpu_din[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_riscv_v1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output [31:0]imem_addr;
  input [31:0]imem_dout;
  output imem_en;
  output [3:0]imem_we;
  output [31:0]imem_din;
  output [31:0]cpu_addr;
  input [31:0]cpu_dout;
  output cpu_en;
  output [3:0]cpu_we;
  output [31:0]cpu_din;
endmodule
