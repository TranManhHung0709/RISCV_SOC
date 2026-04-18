// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Mar 26 23:25:14 2026
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_riscv_v2_axi_lutram_wrapper_0_0_sim_netlist.v
// Design      : soc_riscv_v2_axi_lutram_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lutram_wrapper
   (cpu_dout,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_BVALID,
    cpu_en,
    S_AXI_ACLK,
    cpu_addr,
    S_AXI_AWADDR,
    S_AXI_ARADDR,
    cpu_din,
    cpu_we,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output [31:0]cpu_dout;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  input cpu_en;
  input S_AXI_ACLK;
  input [5:0]cpu_addr;
  input [5:0]S_AXI_AWADDR;
  input [5:0]S_AXI_ARADDR;
  input [31:0]cpu_din;
  input [3:0]cpu_we;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [5:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [5:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire [31:0]axi_rdata0;
  wire \axi_rdata[31]_i_1_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [5:0]cpu_addr;
  wire [31:0]cpu_din;
  wire [31:0]cpu_dout;
  wire [31:0]cpu_dout0;
  wire cpu_en;
  wire [3:0]cpu_we;
  wire p_0_in;
  wire [3:3]p_0_in_0;
  wire p_1_in;
  wire [23:16]p_1_in2_in;
  wire [31:0]p_3_out;
  wire [5:0]p_4_in;
  wire [31:0]p_5_in;
  wire ram_reg_r1_0_63_0_6_i_16_n_0;
  wire ram_reg_r1_0_63_0_6_i_17_n_0;
  wire ram_reg_r1_0_63_0_6_i_18_n_0;
  wire ram_reg_r1_0_63_0_6_i_19_n_0;
  wire ram_reg_r1_0_63_0_6_i_20_n_0;
  wire ram_reg_r1_0_63_0_6_i_21_n_0;
  wire ram_reg_r1_0_63_0_6_i_22_n_0;
  wire ram_reg_r1_0_63_14_20_i_8_n_0;
  wire ram_reg_r1_0_63_14_20_i_9_n_0;
  wire ram_reg_r1_0_63_21_27_i_11_n_0;
  wire ram_reg_r1_0_63_21_27_i_12_n_0;
  wire ram_reg_r1_0_63_21_27_i_13_n_0;
  wire ram_reg_r1_0_63_21_27_i_14_n_0;
  wire ram_reg_r1_0_63_28_31_i_5_n_0;
  wire ram_reg_r1_0_63_28_31_i_6_n_0;
  wire ram_reg_r1_0_63_28_31_i_7_n_0;
  wire ram_reg_r1_0_63_28_31_i_8_n_0;
  wire ram_reg_r1_0_63_7_13_i_10_n_0;
  wire ram_reg_r1_0_63_7_13_i_11_n_0;
  wire ram_reg_r1_0_63_7_13_i_12_n_0;
  wire ram_reg_r1_0_63_7_13_i_13_n_0;
  wire ram_reg_r1_0_63_7_13_i_14_n_0;
  wire ram_reg_r1_0_63_7_13_i_8_n_0;
  wire ram_reg_r1_0_63_7_13_i_9_n_0;
  wire NLW_ram_reg_r1_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_ram_reg_r1_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_ram_reg_r1_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_ram_reg_r1_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_ram_reg_r1_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_ram_reg_r1_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_ram_reg_r1_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_ram_reg_r1_0_63_7_13_DOH_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_ram_reg_r2_0_63_7_13_DOH_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_0_6_DOH_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_14_20_DOH_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_21_27_DOH_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_28_31_DOE_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_28_31_DOF_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_28_31_DOG_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_28_31_DOH_UNCONNECTED;
  wire NLW_ram_reg_r3_0_63_7_13_DOH_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_AWREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(\axi_rdata[31]_i_1_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[0]),
        .Q(S_AXI_RDATA[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[10]),
        .Q(S_AXI_RDATA[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[11]),
        .Q(S_AXI_RDATA[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[12]),
        .Q(S_AXI_RDATA[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[13]),
        .Q(S_AXI_RDATA[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[14]),
        .Q(S_AXI_RDATA[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[15]),
        .Q(S_AXI_RDATA[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[16]),
        .Q(S_AXI_RDATA[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[17]),
        .Q(S_AXI_RDATA[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[18]),
        .Q(S_AXI_RDATA[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[19]),
        .Q(S_AXI_RDATA[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[1]),
        .Q(S_AXI_RDATA[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[20]),
        .Q(S_AXI_RDATA[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[21]),
        .Q(S_AXI_RDATA[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[22]),
        .Q(S_AXI_RDATA[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[23]),
        .Q(S_AXI_RDATA[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[24]),
        .Q(S_AXI_RDATA[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[25]),
        .Q(S_AXI_RDATA[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[26]),
        .Q(S_AXI_RDATA[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[27]),
        .Q(S_AXI_RDATA[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[28]),
        .Q(S_AXI_RDATA[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[29]),
        .Q(S_AXI_RDATA[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[2]),
        .Q(S_AXI_RDATA[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[30]),
        .Q(S_AXI_RDATA[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[31]),
        .Q(S_AXI_RDATA[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[3]),
        .Q(S_AXI_RDATA[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[4]),
        .Q(S_AXI_RDATA[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[5]),
        .Q(S_AXI_RDATA[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[6]),
        .Q(S_AXI_RDATA[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[7]),
        .Q(S_AXI_RDATA[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[8]),
        .Q(S_AXI_RDATA[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\axi_rdata[31]_i_1_n_0 ),
        .D(axi_rdata0[9]),
        .Q(S_AXI_RDATA[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[0]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[0]),
        .O(cpu_dout[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[10]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[10]),
        .O(cpu_dout[10]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[11]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[11]),
        .O(cpu_dout[11]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[12]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[12]),
        .O(cpu_dout[12]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[13]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[13]),
        .O(cpu_dout[13]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[14]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[14]),
        .O(cpu_dout[14]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[15]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[15]),
        .O(cpu_dout[15]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[16]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[16]),
        .O(cpu_dout[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[17]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[17]),
        .O(cpu_dout[17]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[18]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[18]),
        .O(cpu_dout[18]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[19]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[19]),
        .O(cpu_dout[19]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[1]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[1]),
        .O(cpu_dout[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[20]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[20]),
        .O(cpu_dout[20]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[21]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[21]),
        .O(cpu_dout[21]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[22]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[22]),
        .O(cpu_dout[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[23]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[23]),
        .O(cpu_dout[23]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[24]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[24]),
        .O(cpu_dout[24]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[25]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[25]),
        .O(cpu_dout[25]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[26]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[26]),
        .O(cpu_dout[26]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[27]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[27]),
        .O(cpu_dout[27]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[28]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[28]),
        .O(cpu_dout[28]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[29]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[29]),
        .O(cpu_dout[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[2]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[2]),
        .O(cpu_dout[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[30]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[30]),
        .O(cpu_dout[30]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[31]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[31]),
        .O(cpu_dout[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[3]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[3]),
        .O(cpu_dout[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[4]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[4]),
        .O(cpu_dout[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[5]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[5]),
        .O(cpu_dout[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[6]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[6]),
        .O(cpu_dout[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[7]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[7]),
        .O(cpu_dout[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[8]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[8]),
        .O(cpu_dout[8]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpu_dout[9]_INST_0 
       (.I0(cpu_en),
        .I1(cpu_dout0[9]),
        .O(cpu_dout[9]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 ram_reg_r1_0_63_0_6
       (.ADDRA(cpu_addr),
        .ADDRB(cpu_addr),
        .ADDRC(cpu_addr),
        .ADDRD(cpu_addr),
        .ADDRE(cpu_addr),
        .ADDRF(cpu_addr),
        .ADDRG(cpu_addr),
        .ADDRH(p_4_in),
        .DIA(p_5_in[0]),
        .DIB(p_5_in[1]),
        .DIC(p_5_in[2]),
        .DID(p_5_in[3]),
        .DIE(p_5_in[4]),
        .DIF(p_5_in[5]),
        .DIG(p_5_in[6]),
        .DIH(1'b0),
        .DOA(cpu_dout0[0]),
        .DOB(cpu_dout0[1]),
        .DOC(cpu_dout0[2]),
        .DOD(cpu_dout0[3]),
        .DOE(cpu_dout0[4]),
        .DOF(cpu_dout0[5]),
        .DOG(cpu_dout0[6]),
        .DOH(NLW_ram_reg_r1_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_0_6_i_1
       (.I0(cpu_din[0]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[0]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_0_6_i_16_n_0),
        .O(p_5_in[0]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    ram_reg_r1_0_63_0_6_i_10
       (.I0(S_AXI_AWADDR[3]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(cpu_addr[3]),
        .O(p_4_in[3]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    ram_reg_r1_0_63_0_6_i_11
       (.I0(S_AXI_AWADDR[2]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(cpu_addr[2]),
        .O(p_4_in[2]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    ram_reg_r1_0_63_0_6_i_12
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(cpu_addr[1]),
        .O(p_4_in[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    ram_reg_r1_0_63_0_6_i_13
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(cpu_addr[0]),
        .O(p_4_in[0]));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    ram_reg_r1_0_63_0_6_i_14
       (.I0(cpu_en),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_AWREADY),
        .O(p_1_in));
  LUT4 #(
    .INIT(16'h8000)) 
    ram_reg_r1_0_63_0_6_i_15
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_0_6_i_16
       (.I0(S_AXI_WDATA[0]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[0]),
        .O(ram_reg_r1_0_63_0_6_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_0_6_i_17
       (.I0(S_AXI_WDATA[1]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[1]),
        .O(ram_reg_r1_0_63_0_6_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_0_6_i_18
       (.I0(S_AXI_WDATA[2]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[2]),
        .O(ram_reg_r1_0_63_0_6_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_0_6_i_19
       (.I0(S_AXI_WDATA[3]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[3]),
        .O(ram_reg_r1_0_63_0_6_i_19_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_0_6_i_2
       (.I0(cpu_din[1]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[1]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_0_6_i_17_n_0),
        .O(p_5_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_0_6_i_20
       (.I0(S_AXI_WDATA[4]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[4]),
        .O(ram_reg_r1_0_63_0_6_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_0_6_i_21
       (.I0(S_AXI_WDATA[5]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[5]),
        .O(ram_reg_r1_0_63_0_6_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_0_6_i_22
       (.I0(S_AXI_WDATA[6]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[6]),
        .O(ram_reg_r1_0_63_0_6_i_22_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_0_6_i_3
       (.I0(cpu_din[2]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[2]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_0_6_i_18_n_0),
        .O(p_5_in[2]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_0_6_i_4
       (.I0(cpu_din[3]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[3]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_0_6_i_19_n_0),
        .O(p_5_in[3]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_0_6_i_5
       (.I0(cpu_din[4]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[4]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_0_6_i_20_n_0),
        .O(p_5_in[4]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_0_6_i_6
       (.I0(cpu_din[5]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[5]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_0_6_i_21_n_0),
        .O(p_5_in[5]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_0_6_i_7
       (.I0(cpu_din[6]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[6]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_0_6_i_22_n_0),
        .O(p_5_in[6]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    ram_reg_r1_0_63_0_6_i_8
       (.I0(S_AXI_AWADDR[5]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(cpu_addr[5]),
        .O(p_4_in[5]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    ram_reg_r1_0_63_0_6_i_9
       (.I0(S_AXI_AWADDR[4]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .I5(cpu_addr[4]),
        .O(p_4_in[4]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 ram_reg_r1_0_63_14_20
       (.ADDRA(cpu_addr),
        .ADDRB(cpu_addr),
        .ADDRC(cpu_addr),
        .ADDRD(cpu_addr),
        .ADDRE(cpu_addr),
        .ADDRF(cpu_addr),
        .ADDRG(cpu_addr),
        .ADDRH(p_4_in),
        .DIA(p_5_in[14]),
        .DIB(p_5_in[15]),
        .DIC(p_5_in[16]),
        .DID(p_5_in[17]),
        .DIE(p_5_in[18]),
        .DIF(p_5_in[19]),
        .DIG(p_5_in[20]),
        .DIH(1'b0),
        .DOA(cpu_dout0[14]),
        .DOB(cpu_dout0[15]),
        .DOC(cpu_dout0[16]),
        .DOD(cpu_dout0[17]),
        .DOE(cpu_dout0[18]),
        .DOF(cpu_dout0[19]),
        .DOG(cpu_dout0[20]),
        .DOH(NLW_ram_reg_r1_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_14_20_i_1
       (.I0(cpu_din[14]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[14]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_14_20_i_8_n_0),
        .O(p_5_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_14_20_i_10
       (.I0(S_AXI_WDATA[16]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[16]),
        .O(p_1_in2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_14_20_i_11
       (.I0(S_AXI_WDATA[17]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[17]),
        .O(p_1_in2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_14_20_i_12
       (.I0(S_AXI_WDATA[18]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[18]),
        .O(p_1_in2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_14_20_i_13
       (.I0(S_AXI_WDATA[19]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[19]),
        .O(p_1_in2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_14_20_i_14
       (.I0(S_AXI_WDATA[20]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[20]),
        .O(p_1_in2_in[20]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_14_20_i_2
       (.I0(cpu_din[15]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[15]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_14_20_i_9_n_0),
        .O(p_5_in[15]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_14_20_i_3
       (.I0(cpu_din[16]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[16]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[16]),
        .O(p_5_in[16]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_14_20_i_4
       (.I0(cpu_din[17]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[17]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[17]),
        .O(p_5_in[17]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_14_20_i_5
       (.I0(cpu_din[18]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[18]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[18]),
        .O(p_5_in[18]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_14_20_i_6
       (.I0(cpu_din[19]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[19]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[19]),
        .O(p_5_in[19]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_14_20_i_7
       (.I0(cpu_din[20]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[20]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[20]),
        .O(p_5_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_14_20_i_8
       (.I0(S_AXI_WDATA[14]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[14]),
        .O(ram_reg_r1_0_63_14_20_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_14_20_i_9
       (.I0(S_AXI_WDATA[15]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[15]),
        .O(ram_reg_r1_0_63_14_20_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "27" *) 
  RAM64M8 ram_reg_r1_0_63_21_27
       (.ADDRA(cpu_addr),
        .ADDRB(cpu_addr),
        .ADDRC(cpu_addr),
        .ADDRD(cpu_addr),
        .ADDRE(cpu_addr),
        .ADDRF(cpu_addr),
        .ADDRG(cpu_addr),
        .ADDRH(p_4_in),
        .DIA(p_5_in[21]),
        .DIB(p_5_in[22]),
        .DIC(p_5_in[23]),
        .DID(p_5_in[24]),
        .DIE(p_5_in[25]),
        .DIF(p_5_in[26]),
        .DIG(p_5_in[27]),
        .DIH(1'b0),
        .DOA(cpu_dout0[21]),
        .DOB(cpu_dout0[22]),
        .DOC(cpu_dout0[23]),
        .DOD(cpu_dout0[24]),
        .DOE(cpu_dout0[25]),
        .DOF(cpu_dout0[26]),
        .DOG(cpu_dout0[27]),
        .DOH(NLW_ram_reg_r1_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_21_27_i_1
       (.I0(cpu_din[21]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[21]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[21]),
        .O(p_5_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_21_27_i_10
       (.I0(S_AXI_WDATA[23]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[23]),
        .O(p_1_in2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_21_27_i_11
       (.I0(S_AXI_WDATA[24]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[24]),
        .O(ram_reg_r1_0_63_21_27_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_21_27_i_12
       (.I0(S_AXI_WDATA[25]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[25]),
        .O(ram_reg_r1_0_63_21_27_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_21_27_i_13
       (.I0(S_AXI_WDATA[26]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[26]),
        .O(ram_reg_r1_0_63_21_27_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_21_27_i_14
       (.I0(S_AXI_WDATA[27]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[27]),
        .O(ram_reg_r1_0_63_21_27_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_21_27_i_2
       (.I0(cpu_din[22]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[22]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[22]),
        .O(p_5_in[22]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_21_27_i_3
       (.I0(cpu_din[23]),
        .I1(cpu_we[2]),
        .I2(cpu_dout0[23]),
        .I3(p_0_in_0),
        .I4(p_1_in2_in[23]),
        .O(p_5_in[23]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_21_27_i_4
       (.I0(cpu_din[24]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[24]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_21_27_i_11_n_0),
        .O(p_5_in[24]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_21_27_i_5
       (.I0(cpu_din[25]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[25]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_21_27_i_12_n_0),
        .O(p_5_in[25]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_21_27_i_6
       (.I0(cpu_din[26]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[26]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_21_27_i_13_n_0),
        .O(p_5_in[26]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_21_27_i_7
       (.I0(cpu_din[27]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[27]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_21_27_i_14_n_0),
        .O(p_5_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_21_27_i_8
       (.I0(S_AXI_WDATA[21]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[21]),
        .O(p_1_in2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_21_27_i_9
       (.I0(S_AXI_WDATA[22]),
        .I1(S_AXI_WSTRB[2]),
        .I2(p_3_out[22]),
        .O(p_1_in2_in[22]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM64M8 ram_reg_r1_0_63_28_31
       (.ADDRA(cpu_addr),
        .ADDRB(cpu_addr),
        .ADDRC(cpu_addr),
        .ADDRD(cpu_addr),
        .ADDRE(cpu_addr),
        .ADDRF(cpu_addr),
        .ADDRG(cpu_addr),
        .ADDRH(p_4_in),
        .DIA(p_5_in[28]),
        .DIB(p_5_in[29]),
        .DIC(p_5_in[30]),
        .DID(p_5_in[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(cpu_dout0[28]),
        .DOB(cpu_dout0[29]),
        .DOC(cpu_dout0[30]),
        .DOD(cpu_dout0[31]),
        .DOE(NLW_ram_reg_r1_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_ram_reg_r1_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_ram_reg_r1_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_ram_reg_r1_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_28_31_i_1
       (.I0(cpu_din[28]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[28]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_28_31_i_5_n_0),
        .O(p_5_in[28]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_28_31_i_2
       (.I0(cpu_din[29]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[29]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_28_31_i_6_n_0),
        .O(p_5_in[29]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_28_31_i_3
       (.I0(cpu_din[30]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[30]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_28_31_i_7_n_0),
        .O(p_5_in[30]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_28_31_i_4
       (.I0(cpu_din[31]),
        .I1(cpu_we[3]),
        .I2(cpu_dout0[31]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_28_31_i_8_n_0),
        .O(p_5_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_28_31_i_5
       (.I0(S_AXI_WDATA[28]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[28]),
        .O(ram_reg_r1_0_63_28_31_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_28_31_i_6
       (.I0(S_AXI_WDATA[29]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[29]),
        .O(ram_reg_r1_0_63_28_31_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_28_31_i_7
       (.I0(S_AXI_WDATA[30]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[30]),
        .O(ram_reg_r1_0_63_28_31_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_28_31_i_8
       (.I0(S_AXI_WDATA[31]),
        .I1(S_AXI_WSTRB[3]),
        .I2(p_3_out[31]),
        .O(ram_reg_r1_0_63_28_31_i_8_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 ram_reg_r1_0_63_7_13
       (.ADDRA(cpu_addr),
        .ADDRB(cpu_addr),
        .ADDRC(cpu_addr),
        .ADDRD(cpu_addr),
        .ADDRE(cpu_addr),
        .ADDRF(cpu_addr),
        .ADDRG(cpu_addr),
        .ADDRH(p_4_in),
        .DIA(p_5_in[7]),
        .DIB(p_5_in[8]),
        .DIC(p_5_in[9]),
        .DID(p_5_in[10]),
        .DIE(p_5_in[11]),
        .DIF(p_5_in[12]),
        .DIG(p_5_in[13]),
        .DIH(1'b0),
        .DOA(cpu_dout0[7]),
        .DOB(cpu_dout0[8]),
        .DOC(cpu_dout0[9]),
        .DOD(cpu_dout0[10]),
        .DOE(cpu_dout0[11]),
        .DOF(cpu_dout0[12]),
        .DOG(cpu_dout0[13]),
        .DOH(NLW_ram_reg_r1_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_7_13_i_1
       (.I0(cpu_din[7]),
        .I1(cpu_we[0]),
        .I2(cpu_dout0[7]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_7_13_i_8_n_0),
        .O(p_5_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_7_13_i_10
       (.I0(S_AXI_WDATA[9]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[9]),
        .O(ram_reg_r1_0_63_7_13_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_7_13_i_11
       (.I0(S_AXI_WDATA[10]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[10]),
        .O(ram_reg_r1_0_63_7_13_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_7_13_i_12
       (.I0(S_AXI_WDATA[11]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[11]),
        .O(ram_reg_r1_0_63_7_13_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_7_13_i_13
       (.I0(S_AXI_WDATA[12]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[12]),
        .O(ram_reg_r1_0_63_7_13_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_7_13_i_14
       (.I0(S_AXI_WDATA[13]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[13]),
        .O(ram_reg_r1_0_63_7_13_i_14_n_0));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_7_13_i_2
       (.I0(cpu_din[8]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[8]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_7_13_i_9_n_0),
        .O(p_5_in[8]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_7_13_i_3
       (.I0(cpu_din[9]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[9]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_7_13_i_10_n_0),
        .O(p_5_in[9]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_7_13_i_4
       (.I0(cpu_din[10]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[10]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_7_13_i_11_n_0),
        .O(p_5_in[10]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_7_13_i_5
       (.I0(cpu_din[11]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[11]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_7_13_i_12_n_0),
        .O(p_5_in[11]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_7_13_i_6
       (.I0(cpu_din[12]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[12]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_7_13_i_13_n_0),
        .O(p_5_in[12]));
  LUT5 #(
    .INIT(32'hFFB800B8)) 
    ram_reg_r1_0_63_7_13_i_7
       (.I0(cpu_din[13]),
        .I1(cpu_we[1]),
        .I2(cpu_dout0[13]),
        .I3(p_0_in_0),
        .I4(ram_reg_r1_0_63_7_13_i_14_n_0),
        .O(p_5_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_7_13_i_8
       (.I0(S_AXI_WDATA[7]),
        .I1(S_AXI_WSTRB[0]),
        .I2(p_3_out[7]),
        .O(ram_reg_r1_0_63_7_13_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ram_reg_r1_0_63_7_13_i_9
       (.I0(S_AXI_WDATA[8]),
        .I1(S_AXI_WSTRB[1]),
        .I2(p_3_out[8]),
        .O(ram_reg_r1_0_63_7_13_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 ram_reg_r2_0_63_0_6
       (.ADDRA(S_AXI_AWADDR),
        .ADDRB(S_AXI_AWADDR),
        .ADDRC(S_AXI_AWADDR),
        .ADDRD(S_AXI_AWADDR),
        .ADDRE(S_AXI_AWADDR),
        .ADDRF(S_AXI_AWADDR),
        .ADDRG(S_AXI_AWADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[0]),
        .DIB(p_5_in[1]),
        .DIC(p_5_in[2]),
        .DID(p_5_in[3]),
        .DIE(p_5_in[4]),
        .DIF(p_5_in[5]),
        .DIG(p_5_in[6]),
        .DIH(1'b0),
        .DOA(p_3_out[0]),
        .DOB(p_3_out[1]),
        .DOC(p_3_out[2]),
        .DOD(p_3_out[3]),
        .DOE(p_3_out[4]),
        .DOF(p_3_out[5]),
        .DOG(p_3_out[6]),
        .DOH(NLW_ram_reg_r2_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 ram_reg_r2_0_63_14_20
       (.ADDRA(S_AXI_AWADDR),
        .ADDRB(S_AXI_AWADDR),
        .ADDRC(S_AXI_AWADDR),
        .ADDRD(S_AXI_AWADDR),
        .ADDRE(S_AXI_AWADDR),
        .ADDRF(S_AXI_AWADDR),
        .ADDRG(S_AXI_AWADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[14]),
        .DIB(p_5_in[15]),
        .DIC(p_5_in[16]),
        .DID(p_5_in[17]),
        .DIE(p_5_in[18]),
        .DIF(p_5_in[19]),
        .DIG(p_5_in[20]),
        .DIH(1'b0),
        .DOA(p_3_out[14]),
        .DOB(p_3_out[15]),
        .DOC(p_3_out[16]),
        .DOD(p_3_out[17]),
        .DOE(p_3_out[18]),
        .DOF(p_3_out[19]),
        .DOG(p_3_out[20]),
        .DOH(NLW_ram_reg_r2_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "27" *) 
  RAM64M8 ram_reg_r2_0_63_21_27
       (.ADDRA(S_AXI_AWADDR),
        .ADDRB(S_AXI_AWADDR),
        .ADDRC(S_AXI_AWADDR),
        .ADDRD(S_AXI_AWADDR),
        .ADDRE(S_AXI_AWADDR),
        .ADDRF(S_AXI_AWADDR),
        .ADDRG(S_AXI_AWADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[21]),
        .DIB(p_5_in[22]),
        .DIC(p_5_in[23]),
        .DID(p_5_in[24]),
        .DIE(p_5_in[25]),
        .DIF(p_5_in[26]),
        .DIG(p_5_in[27]),
        .DIH(1'b0),
        .DOA(p_3_out[21]),
        .DOB(p_3_out[22]),
        .DOC(p_3_out[23]),
        .DOD(p_3_out[24]),
        .DOE(p_3_out[25]),
        .DOF(p_3_out[26]),
        .DOG(p_3_out[27]),
        .DOH(NLW_ram_reg_r2_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM64M8 ram_reg_r2_0_63_28_31
       (.ADDRA(S_AXI_AWADDR),
        .ADDRB(S_AXI_AWADDR),
        .ADDRC(S_AXI_AWADDR),
        .ADDRD(S_AXI_AWADDR),
        .ADDRE(S_AXI_AWADDR),
        .ADDRF(S_AXI_AWADDR),
        .ADDRG(S_AXI_AWADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[28]),
        .DIB(p_5_in[29]),
        .DIC(p_5_in[30]),
        .DID(p_5_in[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(p_3_out[28]),
        .DOB(p_3_out[29]),
        .DOC(p_3_out[30]),
        .DOD(p_3_out[31]),
        .DOE(NLW_ram_reg_r2_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_ram_reg_r2_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_ram_reg_r2_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_ram_reg_r2_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 ram_reg_r2_0_63_7_13
       (.ADDRA(S_AXI_AWADDR),
        .ADDRB(S_AXI_AWADDR),
        .ADDRC(S_AXI_AWADDR),
        .ADDRD(S_AXI_AWADDR),
        .ADDRE(S_AXI_AWADDR),
        .ADDRF(S_AXI_AWADDR),
        .ADDRG(S_AXI_AWADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[7]),
        .DIB(p_5_in[8]),
        .DIC(p_5_in[9]),
        .DID(p_5_in[10]),
        .DIE(p_5_in[11]),
        .DIF(p_5_in[12]),
        .DIG(p_5_in[13]),
        .DIH(1'b0),
        .DOA(p_3_out[7]),
        .DOB(p_3_out[8]),
        .DOC(p_3_out[9]),
        .DOD(p_3_out[10]),
        .DOE(p_3_out[11]),
        .DOF(p_3_out[12]),
        .DOG(p_3_out[13]),
        .DOH(NLW_ram_reg_r2_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "6" *) 
  RAM64M8 ram_reg_r3_0_63_0_6
       (.ADDRA(S_AXI_ARADDR),
        .ADDRB(S_AXI_ARADDR),
        .ADDRC(S_AXI_ARADDR),
        .ADDRD(S_AXI_ARADDR),
        .ADDRE(S_AXI_ARADDR),
        .ADDRF(S_AXI_ARADDR),
        .ADDRG(S_AXI_ARADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[0]),
        .DIB(p_5_in[1]),
        .DIC(p_5_in[2]),
        .DID(p_5_in[3]),
        .DIE(p_5_in[4]),
        .DIF(p_5_in[5]),
        .DIG(p_5_in[6]),
        .DIH(1'b0),
        .DOA(axi_rdata0[0]),
        .DOB(axi_rdata0[1]),
        .DOC(axi_rdata0[2]),
        .DOD(axi_rdata0[3]),
        .DOE(axi_rdata0[4]),
        .DOF(axi_rdata0[5]),
        .DOG(axi_rdata0[6]),
        .DOH(NLW_ram_reg_r3_0_63_0_6_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "20" *) 
  RAM64M8 ram_reg_r3_0_63_14_20
       (.ADDRA(S_AXI_ARADDR),
        .ADDRB(S_AXI_ARADDR),
        .ADDRC(S_AXI_ARADDR),
        .ADDRD(S_AXI_ARADDR),
        .ADDRE(S_AXI_ARADDR),
        .ADDRF(S_AXI_ARADDR),
        .ADDRG(S_AXI_ARADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[14]),
        .DIB(p_5_in[15]),
        .DIC(p_5_in[16]),
        .DID(p_5_in[17]),
        .DIE(p_5_in[18]),
        .DIF(p_5_in[19]),
        .DIG(p_5_in[20]),
        .DIH(1'b0),
        .DOA(axi_rdata0[14]),
        .DOB(axi_rdata0[15]),
        .DOC(axi_rdata0[16]),
        .DOD(axi_rdata0[17]),
        .DOE(axi_rdata0[18]),
        .DOF(axi_rdata0[19]),
        .DOG(axi_rdata0[20]),
        .DOH(NLW_ram_reg_r3_0_63_14_20_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "27" *) 
  RAM64M8 ram_reg_r3_0_63_21_27
       (.ADDRA(S_AXI_ARADDR),
        .ADDRB(S_AXI_ARADDR),
        .ADDRC(S_AXI_ARADDR),
        .ADDRD(S_AXI_ARADDR),
        .ADDRE(S_AXI_ARADDR),
        .ADDRF(S_AXI_ARADDR),
        .ADDRG(S_AXI_ARADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[21]),
        .DIB(p_5_in[22]),
        .DIC(p_5_in[23]),
        .DID(p_5_in[24]),
        .DIE(p_5_in[25]),
        .DIF(p_5_in[26]),
        .DIG(p_5_in[27]),
        .DIH(1'b0),
        .DOA(axi_rdata0[21]),
        .DOB(axi_rdata0[22]),
        .DOC(axi_rdata0[23]),
        .DOD(axi_rdata0[24]),
        .DOE(axi_rdata0[25]),
        .DOF(axi_rdata0[26]),
        .DOG(axi_rdata0[27]),
        .DOH(NLW_ram_reg_r3_0_63_21_27_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "31" *) 
  RAM64M8 ram_reg_r3_0_63_28_31
       (.ADDRA(S_AXI_ARADDR),
        .ADDRB(S_AXI_ARADDR),
        .ADDRC(S_AXI_ARADDR),
        .ADDRD(S_AXI_ARADDR),
        .ADDRE(S_AXI_ARADDR),
        .ADDRF(S_AXI_ARADDR),
        .ADDRG(S_AXI_ARADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[28]),
        .DIB(p_5_in[29]),
        .DIC(p_5_in[30]),
        .DID(p_5_in[31]),
        .DIE(1'b0),
        .DIF(1'b0),
        .DIG(1'b0),
        .DIH(1'b0),
        .DOA(axi_rdata0[28]),
        .DOB(axi_rdata0[29]),
        .DOC(axi_rdata0[30]),
        .DOD(axi_rdata0[31]),
        .DOE(NLW_ram_reg_r3_0_63_28_31_DOE_UNCONNECTED),
        .DOF(NLW_ram_reg_r3_0_63_28_31_DOF_UNCONNECTED),
        .DOG(NLW_ram_reg_r3_0_63_28_31_DOG_UNCONNECTED),
        .DOH(NLW_ram_reg_r3_0_63_28_31_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "soc_riscv_v2_axi_lutram_wrapper_0_0/inst/ram_reg" *) 
  (* RTL_RAM_STYLE = "distributed" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "63" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "13" *) 
  RAM64M8 ram_reg_r3_0_63_7_13
       (.ADDRA(S_AXI_ARADDR),
        .ADDRB(S_AXI_ARADDR),
        .ADDRC(S_AXI_ARADDR),
        .ADDRD(S_AXI_ARADDR),
        .ADDRE(S_AXI_ARADDR),
        .ADDRF(S_AXI_ARADDR),
        .ADDRG(S_AXI_ARADDR),
        .ADDRH(p_4_in),
        .DIA(p_5_in[7]),
        .DIB(p_5_in[8]),
        .DIC(p_5_in[9]),
        .DID(p_5_in[10]),
        .DIE(p_5_in[11]),
        .DIF(p_5_in[12]),
        .DIG(p_5_in[13]),
        .DIH(1'b0),
        .DOA(axi_rdata0[7]),
        .DOB(axi_rdata0[8]),
        .DOC(axi_rdata0[9]),
        .DOD(axi_rdata0[10]),
        .DOE(axi_rdata0[11]),
        .DOF(axi_rdata0[12]),
        .DOG(axi_rdata0[13]),
        .DOH(NLW_ram_reg_r3_0_63_7_13_DOH_UNCONNECTED),
        .WCLK(S_AXI_ACLK),
        .WE(p_1_in));
endmodule

(* CHECK_LICENSE_TYPE = "soc_riscv_v2_axi_lutram_wrapper_0_0,axi_lutram_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axi_lutram_wrapper,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (cpu_addr,
    cpu_dout,
    cpu_en,
    cpu_we,
    cpu_din,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  input [31:0]cpu_addr;
  output [31:0]cpu_dout;
  input cpu_en;
  input [3:0]cpu_we;
  input [31:0]cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_riscv_v2_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN soc_riscv_v2_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [31:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [31:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [31:0]cpu_addr;
  wire [31:0]cpu_din;
  wire [31:0]cpu_dout;
  wire cpu_en;
  wire [3:0]cpu_we;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lutram_wrapper inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[7:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[7:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .cpu_addr(cpu_addr[7:2]),
        .cpu_din(cpu_din),
        .cpu_dout(cpu_dout),
        .cpu_en(cpu_en),
        .cpu_we(cpu_we));
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
