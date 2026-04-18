// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Mar 26 23:25:14 2026
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/Vivado_projects/RISCV_SOC/RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ip/soc_riscv_v2_addr_decoder_0_0/soc_riscv_v2_addr_decoder_0_0_stub.v
// Design      : soc_riscv_v2_addr_decoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "soc_riscv_v2_addr_decoder_0_0,addr_decoder,{}" *) (* CORE_GENERATION_INFO = "soc_riscv_v2_addr_decoder_0_0,addr_decoder,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=addr_decoder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "addr_decoder,Vivado 2025.1" *) 
module soc_riscv_v2_addr_decoder_0_0(cpu_addr, cpu_we, dmem_dout, ip_dout, 
  cpu_read_data, dmem_real_addr, dmem_en, dmem_we, ip_real_addr, ip_en, ip_we)
/* synthesis syn_black_box black_box_pad_pin="cpu_addr[31:0],cpu_we[3:0],dmem_dout[31:0],ip_dout[31:0],cpu_read_data[31:0],dmem_real_addr[31:0],dmem_en,dmem_we[3:0],ip_real_addr[31:0],ip_en,ip_we[3:0]" */;
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
endmodule
