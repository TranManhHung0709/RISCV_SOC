// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Mar 26 23:25:14 2026
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/Vivado_projects/RISCV_SOC/RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ip/soc_riscv_v2_calc_ip_0_0/soc_riscv_v2_calc_ip_0_0_sim_netlist.v
// Design      : soc_riscv_v2_calc_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "soc_riscv_v2_calc_ip_0_0,calc_ip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "calc_ip,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module soc_riscv_v2_calc_ip_0_0
   (clk,
    rst_n,
    ip_real_addr,
    ip_en,
    ip_we,
    ip_din,
    ip_dout);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_riscv_v2_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [31:0]ip_real_addr;
  input ip_en;
  input [3:0]ip_we;
  input [31:0]ip_din;
  output [31:0]ip_dout;

  wire clk;
  wire [31:0]ip_din;
  wire [31:0]ip_dout;
  wire ip_en;
  wire [31:0]ip_real_addr;
  wire [3:0]ip_we;
  wire rst_n;

  soc_riscv_v2_calc_ip_0_0_calc_ip inst
       (.clk(clk),
        .ip_din(ip_din),
        .ip_dout(ip_dout),
        .ip_en(ip_en),
        .ip_real_addr(ip_real_addr[7:0]),
        .ip_we(ip_we),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "calc_ip" *) 
module soc_riscv_v2_calc_ip_0_0_calc_ip
   (ip_dout,
    ip_din,
    clk,
    ip_real_addr,
    ip_en,
    ip_we,
    rst_n);
  output [31:0]ip_dout;
  input [31:0]ip_din;
  input clk;
  input [7:0]ip_real_addr;
  input ip_en;
  input [3:0]ip_we;
  input rst_n;

  wire clk;
  wire [31:0]data3;
  wire [31:0]ip_din;
  wire [31:0]ip_dout;
  wire \ip_dout[0]_INST_0_i_1_n_0 ;
  wire \ip_dout[31]_INST_0_i_1_n_0 ;
  wire \ip_dout[31]_INST_0_i_2_n_0 ;
  wire \ip_dout[31]_INST_0_i_3_n_0 ;
  wire \ip_dout[31]_INST_0_i_4_n_0 ;
  wire ip_en;
  wire [7:0]ip_real_addr;
  wire [3:0]ip_we;
  wire math_result_carry__0_i_1_n_0;
  wire math_result_carry__0_i_2_n_0;
  wire math_result_carry__0_i_3_n_0;
  wire math_result_carry__0_i_4_n_0;
  wire math_result_carry__0_i_5_n_0;
  wire math_result_carry__0_i_6_n_0;
  wire math_result_carry__0_i_7_n_0;
  wire math_result_carry__0_i_8_n_0;
  wire math_result_carry__0_n_0;
  wire math_result_carry__0_n_1;
  wire math_result_carry__0_n_2;
  wire math_result_carry__0_n_3;
  wire math_result_carry__0_n_4;
  wire math_result_carry__0_n_5;
  wire math_result_carry__0_n_6;
  wire math_result_carry__0_n_7;
  wire math_result_carry__1_i_1_n_0;
  wire math_result_carry__1_i_2_n_0;
  wire math_result_carry__1_i_3_n_0;
  wire math_result_carry__1_i_4_n_0;
  wire math_result_carry__1_i_5_n_0;
  wire math_result_carry__1_i_6_n_0;
  wire math_result_carry__1_i_7_n_0;
  wire math_result_carry__1_i_8_n_0;
  wire math_result_carry__1_n_0;
  wire math_result_carry__1_n_1;
  wire math_result_carry__1_n_2;
  wire math_result_carry__1_n_3;
  wire math_result_carry__1_n_4;
  wire math_result_carry__1_n_5;
  wire math_result_carry__1_n_6;
  wire math_result_carry__1_n_7;
  wire math_result_carry__2_i_1_n_0;
  wire math_result_carry__2_i_2_n_0;
  wire math_result_carry__2_i_3_n_0;
  wire math_result_carry__2_i_4_n_0;
  wire math_result_carry__2_i_5_n_0;
  wire math_result_carry__2_i_6_n_0;
  wire math_result_carry__2_i_7_n_0;
  wire math_result_carry__2_i_8_n_0;
  wire math_result_carry__2_n_1;
  wire math_result_carry__2_n_2;
  wire math_result_carry__2_n_3;
  wire math_result_carry__2_n_4;
  wire math_result_carry__2_n_5;
  wire math_result_carry__2_n_6;
  wire math_result_carry__2_n_7;
  wire math_result_carry_i_1_n_0;
  wire math_result_carry_i_2_n_0;
  wire math_result_carry_i_3_n_0;
  wire math_result_carry_i_4_n_0;
  wire math_result_carry_i_5_n_0;
  wire math_result_carry_i_6_n_0;
  wire math_result_carry_i_7_n_0;
  wire math_result_carry_i_8_n_0;
  wire math_result_carry_n_0;
  wire math_result_carry_n_1;
  wire math_result_carry_n_2;
  wire math_result_carry_n_3;
  wire math_result_carry_n_4;
  wire math_result_carry_n_5;
  wire math_result_carry_n_6;
  wire math_result_carry_n_7;
  wire [31:0]reg_A;
  wire \reg_A[31]_i_2_n_0 ;
  wire reg_A_1;
  wire [31:0]reg_B;
  wire reg_B_0;
  wire rst_n;
  wire [7:7]NLW_math_result_carry__2_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hB0F0B030B0C0B000)) 
    \ip_dout[0]_INST_0 
       (.I0(data3[0]),
        .I1(ip_real_addr[2]),
        .I2(\ip_dout[0]_INST_0_i_1_n_0 ),
        .I3(ip_real_addr[3]),
        .I4(reg_B[0]),
        .I5(reg_A[0]),
        .O(ip_dout[0]));
  LUT4 #(
    .INIT(16'h0400)) 
    \ip_dout[0]_INST_0_i_1 
       (.I0(ip_real_addr[7]),
        .I1(ip_en),
        .I2(ip_real_addr[0]),
        .I3(\ip_dout[31]_INST_0_i_4_n_0 ),
        .O(\ip_dout[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[10]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[10]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[10]),
        .I4(data3[10]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[11]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[11]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[11]),
        .I4(data3[11]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[12]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[12]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[12]),
        .I4(data3[12]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[13]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[13]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[13]),
        .I4(data3[13]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[14]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[14]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[14]),
        .I4(data3[14]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[15]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[15]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[15]),
        .I4(data3[15]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[16]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[16]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[16]),
        .I4(data3[16]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[17]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[17]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[17]),
        .I4(data3[17]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[18]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[18]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[18]),
        .I4(data3[18]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[19]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[19]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[19]),
        .I4(data3[19]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[1]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[1]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[1]),
        .I4(data3[1]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[20]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[20]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[20]),
        .I4(data3[20]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[21]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[21]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[21]),
        .I4(data3[21]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[22]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[22]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[22]),
        .I4(data3[22]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[23]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[23]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[23]),
        .I4(data3[23]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[24]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[24]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[24]),
        .I4(data3[24]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[25]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[25]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[25]),
        .I4(data3[25]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[26]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[26]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[26]),
        .I4(data3[26]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[27]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[27]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[27]),
        .I4(data3[27]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[28]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[28]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[28]),
        .I4(data3[28]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[29]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[29]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[29]),
        .I4(data3[29]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[2]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[2]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[2]),
        .I4(data3[2]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[30]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[30]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[30]),
        .I4(data3[30]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[31]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[31]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[31]),
        .I4(data3[31]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[31]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ip_dout[31]_INST_0_i_1 
       (.I0(ip_real_addr[3]),
        .I1(ip_real_addr[7]),
        .I2(ip_en),
        .I3(ip_real_addr[0]),
        .I4(\ip_dout[31]_INST_0_i_4_n_0 ),
        .I5(ip_real_addr[2]),
        .O(\ip_dout[31]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \ip_dout[31]_INST_0_i_2 
       (.I0(ip_real_addr[3]),
        .I1(ip_real_addr[7]),
        .I2(ip_en),
        .I3(ip_real_addr[0]),
        .I4(\ip_dout[31]_INST_0_i_4_n_0 ),
        .I5(ip_real_addr[2]),
        .O(\ip_dout[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    \ip_dout[31]_INST_0_i_3 
       (.I0(ip_real_addr[3]),
        .I1(ip_real_addr[7]),
        .I2(ip_en),
        .I3(ip_real_addr[0]),
        .I4(\ip_dout[31]_INST_0_i_4_n_0 ),
        .I5(ip_real_addr[2]),
        .O(\ip_dout[31]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \ip_dout[31]_INST_0_i_4 
       (.I0(ip_real_addr[6]),
        .I1(ip_real_addr[5]),
        .I2(ip_real_addr[4]),
        .I3(ip_real_addr[1]),
        .O(\ip_dout[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[3]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[3]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[3]),
        .I4(data3[3]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[4]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[4]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[4]),
        .I4(data3[4]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[5]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[5]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[5]),
        .I4(data3[5]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[6]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[6]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[6]),
        .I4(data3[6]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[7]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[7]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[7]),
        .I4(data3[7]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[8]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[8]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[8]),
        .I4(data3[8]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \ip_dout[9]_INST_0 
       (.I0(\ip_dout[31]_INST_0_i_1_n_0 ),
        .I1(reg_B[9]),
        .I2(\ip_dout[31]_INST_0_i_2_n_0 ),
        .I3(reg_A[9]),
        .I4(data3[9]),
        .I5(\ip_dout[31]_INST_0_i_3_n_0 ),
        .O(ip_dout[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 math_result_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({math_result_carry_n_0,math_result_carry_n_1,math_result_carry_n_2,math_result_carry_n_3,math_result_carry_n_4,math_result_carry_n_5,math_result_carry_n_6,math_result_carry_n_7}),
        .DI(reg_A[7:0]),
        .O(data3[7:0]),
        .S({math_result_carry_i_1_n_0,math_result_carry_i_2_n_0,math_result_carry_i_3_n_0,math_result_carry_i_4_n_0,math_result_carry_i_5_n_0,math_result_carry_i_6_n_0,math_result_carry_i_7_n_0,math_result_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 math_result_carry__0
       (.CI(math_result_carry_n_0),
        .CI_TOP(1'b0),
        .CO({math_result_carry__0_n_0,math_result_carry__0_n_1,math_result_carry__0_n_2,math_result_carry__0_n_3,math_result_carry__0_n_4,math_result_carry__0_n_5,math_result_carry__0_n_6,math_result_carry__0_n_7}),
        .DI(reg_A[15:8]),
        .O(data3[15:8]),
        .S({math_result_carry__0_i_1_n_0,math_result_carry__0_i_2_n_0,math_result_carry__0_i_3_n_0,math_result_carry__0_i_4_n_0,math_result_carry__0_i_5_n_0,math_result_carry__0_i_6_n_0,math_result_carry__0_i_7_n_0,math_result_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_1
       (.I0(reg_A[15]),
        .I1(reg_B[15]),
        .O(math_result_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_2
       (.I0(reg_A[14]),
        .I1(reg_B[14]),
        .O(math_result_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_3
       (.I0(reg_A[13]),
        .I1(reg_B[13]),
        .O(math_result_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_4
       (.I0(reg_A[12]),
        .I1(reg_B[12]),
        .O(math_result_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_5
       (.I0(reg_A[11]),
        .I1(reg_B[11]),
        .O(math_result_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_6
       (.I0(reg_A[10]),
        .I1(reg_B[10]),
        .O(math_result_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_7
       (.I0(reg_A[9]),
        .I1(reg_B[9]),
        .O(math_result_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__0_i_8
       (.I0(reg_A[8]),
        .I1(reg_B[8]),
        .O(math_result_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 math_result_carry__1
       (.CI(math_result_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({math_result_carry__1_n_0,math_result_carry__1_n_1,math_result_carry__1_n_2,math_result_carry__1_n_3,math_result_carry__1_n_4,math_result_carry__1_n_5,math_result_carry__1_n_6,math_result_carry__1_n_7}),
        .DI(reg_A[23:16]),
        .O(data3[23:16]),
        .S({math_result_carry__1_i_1_n_0,math_result_carry__1_i_2_n_0,math_result_carry__1_i_3_n_0,math_result_carry__1_i_4_n_0,math_result_carry__1_i_5_n_0,math_result_carry__1_i_6_n_0,math_result_carry__1_i_7_n_0,math_result_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_1
       (.I0(reg_A[23]),
        .I1(reg_B[23]),
        .O(math_result_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_2
       (.I0(reg_A[22]),
        .I1(reg_B[22]),
        .O(math_result_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_3
       (.I0(reg_A[21]),
        .I1(reg_B[21]),
        .O(math_result_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_4
       (.I0(reg_A[20]),
        .I1(reg_B[20]),
        .O(math_result_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_5
       (.I0(reg_A[19]),
        .I1(reg_B[19]),
        .O(math_result_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_6
       (.I0(reg_A[18]),
        .I1(reg_B[18]),
        .O(math_result_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_7
       (.I0(reg_A[17]),
        .I1(reg_B[17]),
        .O(math_result_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__1_i_8
       (.I0(reg_A[16]),
        .I1(reg_B[16]),
        .O(math_result_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 math_result_carry__2
       (.CI(math_result_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_math_result_carry__2_CO_UNCONNECTED[7],math_result_carry__2_n_1,math_result_carry__2_n_2,math_result_carry__2_n_3,math_result_carry__2_n_4,math_result_carry__2_n_5,math_result_carry__2_n_6,math_result_carry__2_n_7}),
        .DI({1'b0,reg_A[30:24]}),
        .O(data3[31:24]),
        .S({math_result_carry__2_i_1_n_0,math_result_carry__2_i_2_n_0,math_result_carry__2_i_3_n_0,math_result_carry__2_i_4_n_0,math_result_carry__2_i_5_n_0,math_result_carry__2_i_6_n_0,math_result_carry__2_i_7_n_0,math_result_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_1
       (.I0(reg_A[31]),
        .I1(reg_B[31]),
        .O(math_result_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_2
       (.I0(reg_A[30]),
        .I1(reg_B[30]),
        .O(math_result_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_3
       (.I0(reg_A[29]),
        .I1(reg_B[29]),
        .O(math_result_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_4
       (.I0(reg_A[28]),
        .I1(reg_B[28]),
        .O(math_result_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_5
       (.I0(reg_A[27]),
        .I1(reg_B[27]),
        .O(math_result_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_6
       (.I0(reg_A[26]),
        .I1(reg_B[26]),
        .O(math_result_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_7
       (.I0(reg_A[25]),
        .I1(reg_B[25]),
        .O(math_result_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry__2_i_8
       (.I0(reg_A[24]),
        .I1(reg_B[24]),
        .O(math_result_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_1
       (.I0(reg_A[7]),
        .I1(reg_B[7]),
        .O(math_result_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_2
       (.I0(reg_A[6]),
        .I1(reg_B[6]),
        .O(math_result_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_3
       (.I0(reg_A[5]),
        .I1(reg_B[5]),
        .O(math_result_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_4
       (.I0(reg_A[4]),
        .I1(reg_B[4]),
        .O(math_result_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_5
       (.I0(reg_A[3]),
        .I1(reg_B[3]),
        .O(math_result_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_6
       (.I0(reg_A[2]),
        .I1(reg_B[2]),
        .O(math_result_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_7
       (.I0(reg_A[1]),
        .I1(reg_B[1]),
        .O(math_result_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    math_result_carry_i_8
       (.I0(reg_A[0]),
        .I1(reg_B[0]),
        .O(math_result_carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \reg_A[31]_i_1 
       (.I0(ip_we[2]),
        .I1(ip_we[3]),
        .I2(ip_we[0]),
        .I3(ip_we[1]),
        .I4(\ip_dout[31]_INST_0_i_2_n_0 ),
        .O(reg_A_1));
  LUT1 #(
    .INIT(2'h1)) 
    \reg_A[31]_i_2 
       (.I0(rst_n),
        .O(\reg_A[31]_i_2_n_0 ));
  FDCE \reg_A_reg[0] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[0]),
        .Q(reg_A[0]));
  FDCE \reg_A_reg[10] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[10]),
        .Q(reg_A[10]));
  FDCE \reg_A_reg[11] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[11]),
        .Q(reg_A[11]));
  FDCE \reg_A_reg[12] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[12]),
        .Q(reg_A[12]));
  FDCE \reg_A_reg[13] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[13]),
        .Q(reg_A[13]));
  FDCE \reg_A_reg[14] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[14]),
        .Q(reg_A[14]));
  FDCE \reg_A_reg[15] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[15]),
        .Q(reg_A[15]));
  FDCE \reg_A_reg[16] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[16]),
        .Q(reg_A[16]));
  FDCE \reg_A_reg[17] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[17]),
        .Q(reg_A[17]));
  FDCE \reg_A_reg[18] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[18]),
        .Q(reg_A[18]));
  FDCE \reg_A_reg[19] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[19]),
        .Q(reg_A[19]));
  FDCE \reg_A_reg[1] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[1]),
        .Q(reg_A[1]));
  FDCE \reg_A_reg[20] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[20]),
        .Q(reg_A[20]));
  FDCE \reg_A_reg[21] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[21]),
        .Q(reg_A[21]));
  FDCE \reg_A_reg[22] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[22]),
        .Q(reg_A[22]));
  FDCE \reg_A_reg[23] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[23]),
        .Q(reg_A[23]));
  FDCE \reg_A_reg[24] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[24]),
        .Q(reg_A[24]));
  FDCE \reg_A_reg[25] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[25]),
        .Q(reg_A[25]));
  FDCE \reg_A_reg[26] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[26]),
        .Q(reg_A[26]));
  FDCE \reg_A_reg[27] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[27]),
        .Q(reg_A[27]));
  FDCE \reg_A_reg[28] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[28]),
        .Q(reg_A[28]));
  FDCE \reg_A_reg[29] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[29]),
        .Q(reg_A[29]));
  FDCE \reg_A_reg[2] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[2]),
        .Q(reg_A[2]));
  FDCE \reg_A_reg[30] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[30]),
        .Q(reg_A[30]));
  FDCE \reg_A_reg[31] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[31]),
        .Q(reg_A[31]));
  FDCE \reg_A_reg[3] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[3]),
        .Q(reg_A[3]));
  FDCE \reg_A_reg[4] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[4]),
        .Q(reg_A[4]));
  FDCE \reg_A_reg[5] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[5]),
        .Q(reg_A[5]));
  FDCE \reg_A_reg[6] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[6]),
        .Q(reg_A[6]));
  FDCE \reg_A_reg[7] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[7]),
        .Q(reg_A[7]));
  FDCE \reg_A_reg[8] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[8]),
        .Q(reg_A[8]));
  FDCE \reg_A_reg[9] 
       (.C(clk),
        .CE(reg_A_1),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[9]),
        .Q(reg_A[9]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \reg_B[31]_i_1 
       (.I0(ip_we[2]),
        .I1(ip_we[3]),
        .I2(ip_we[0]),
        .I3(ip_we[1]),
        .I4(\ip_dout[31]_INST_0_i_1_n_0 ),
        .O(reg_B_0));
  FDCE \reg_B_reg[0] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[0]),
        .Q(reg_B[0]));
  FDCE \reg_B_reg[10] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[10]),
        .Q(reg_B[10]));
  FDCE \reg_B_reg[11] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[11]),
        .Q(reg_B[11]));
  FDCE \reg_B_reg[12] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[12]),
        .Q(reg_B[12]));
  FDCE \reg_B_reg[13] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[13]),
        .Q(reg_B[13]));
  FDCE \reg_B_reg[14] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[14]),
        .Q(reg_B[14]));
  FDCE \reg_B_reg[15] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[15]),
        .Q(reg_B[15]));
  FDCE \reg_B_reg[16] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[16]),
        .Q(reg_B[16]));
  FDCE \reg_B_reg[17] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[17]),
        .Q(reg_B[17]));
  FDCE \reg_B_reg[18] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[18]),
        .Q(reg_B[18]));
  FDCE \reg_B_reg[19] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[19]),
        .Q(reg_B[19]));
  FDCE \reg_B_reg[1] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[1]),
        .Q(reg_B[1]));
  FDCE \reg_B_reg[20] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[20]),
        .Q(reg_B[20]));
  FDCE \reg_B_reg[21] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[21]),
        .Q(reg_B[21]));
  FDCE \reg_B_reg[22] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[22]),
        .Q(reg_B[22]));
  FDCE \reg_B_reg[23] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[23]),
        .Q(reg_B[23]));
  FDCE \reg_B_reg[24] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[24]),
        .Q(reg_B[24]));
  FDCE \reg_B_reg[25] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[25]),
        .Q(reg_B[25]));
  FDCE \reg_B_reg[26] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[26]),
        .Q(reg_B[26]));
  FDCE \reg_B_reg[27] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[27]),
        .Q(reg_B[27]));
  FDCE \reg_B_reg[28] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[28]),
        .Q(reg_B[28]));
  FDCE \reg_B_reg[29] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[29]),
        .Q(reg_B[29]));
  FDCE \reg_B_reg[2] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[2]),
        .Q(reg_B[2]));
  FDCE \reg_B_reg[30] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[30]),
        .Q(reg_B[30]));
  FDCE \reg_B_reg[31] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[31]),
        .Q(reg_B[31]));
  FDCE \reg_B_reg[3] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[3]),
        .Q(reg_B[3]));
  FDCE \reg_B_reg[4] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[4]),
        .Q(reg_B[4]));
  FDCE \reg_B_reg[5] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[5]),
        .Q(reg_B[5]));
  FDCE \reg_B_reg[6] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[6]),
        .Q(reg_B[6]));
  FDCE \reg_B_reg[7] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[7]),
        .Q(reg_B[7]));
  FDCE \reg_B_reg[8] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[8]),
        .Q(reg_B[8]));
  FDCE \reg_B_reg[9] 
       (.C(clk),
        .CE(reg_B_0),
        .CLR(\reg_A[31]_i_2_n_0 ),
        .D(ip_din[9]),
        .Q(reg_B[9]));
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
