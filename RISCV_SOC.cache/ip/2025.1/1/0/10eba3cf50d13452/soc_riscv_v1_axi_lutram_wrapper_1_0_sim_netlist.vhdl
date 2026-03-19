-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Mar 14 22:09:42 2026
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_riscv_v1_axi_lutram_wrapper_1_0_sim_netlist.vhdl
-- Design      : soc_riscv_v1_axi_lutram_wrapper_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lutram_wrapper is
  port (
    cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    cpu_en : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    cpu_addr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lutram_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lutram_wrapper is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rdata0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal cpu_dout0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal p_1_in : STD_LOGIC;
  signal p_1_in2_in : STD_LOGIC_VECTOR ( 23 downto 16 );
  signal p_3_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_4_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_5_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ram_reg_r1_0_63_0_2_i_12_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_0_2_i_13_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_0_2_i_14_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_12_14_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_12_14_i_5_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_12_14_i_6_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_15_17_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_24_26_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_24_26_i_5_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_24_26_i_6_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_27_29_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_27_29_i_5_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_27_29_i_6_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_30_31_i_3_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_30_31_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_3_5_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_3_5_i_5_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_3_5_i_6_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_6_8_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_6_8_i_5_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_6_8_i_6_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_9_11_i_4_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_9_11_i_5_n_0 : STD_LOGIC;
  signal ram_reg_r1_0_63_9_11_i_6_n_0 : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_30_31_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_30_31_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r1_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_30_31_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_30_31_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r2_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_15_17_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_18_20_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_21_23_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_24_26_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_27_29_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_30_31_DOC_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_30_31_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_r3_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cpu_dout[0]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cpu_dout[10]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cpu_dout[11]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cpu_dout[12]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cpu_dout[13]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cpu_dout[14]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cpu_dout[15]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cpu_dout[16]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cpu_dout[17]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cpu_dout[18]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cpu_dout[19]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cpu_dout[1]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cpu_dout[20]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cpu_dout[21]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cpu_dout[22]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cpu_dout[23]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cpu_dout[24]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cpu_dout[25]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cpu_dout[26]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cpu_dout[27]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cpu_dout[28]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cpu_dout[29]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cpu_dout[2]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cpu_dout[30]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cpu_dout[31]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cpu_dout[3]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cpu_dout[4]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cpu_dout[5]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cpu_dout[6]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cpu_dout[7]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cpu_dout[8]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cpu_dout[9]_INST_0\ : label is "soft_lutpair22";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_0_2 : label is 2048;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_0_2 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE : string;
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_0_2 : label is "distributed";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_r1_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_r1_0_63_0_2 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_r1_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_r1_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_r1_0_63_0_2 : label is 2;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_0_2_i_12 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_0_2_i_13 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_0_2_i_14 : label is "soft_lutpair3";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_12_14 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_12_14 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_12_14 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_12_14 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_12_14 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_12_14 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_12_14 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_12_14 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_12_14 : label is 12;
  attribute ram_slice_end of ram_reg_r1_0_63_12_14 : label is 14;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_12_14_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_12_14_i_5 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_12_14_i_6 : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_15_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_15_17 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_15_17 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_15_17 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_15_17 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_15_17 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_15_17 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_15_17 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_15_17 : label is 15;
  attribute ram_slice_end of ram_reg_r1_0_63_15_17 : label is 17;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_15_17_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_15_17_i_5 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_15_17_i_6 : label is "soft_lutpair10";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_18_20 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_18_20 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_18_20 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_18_20 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_18_20 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_18_20 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_18_20 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_18_20 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_18_20 : label is 18;
  attribute ram_slice_end of ram_reg_r1_0_63_18_20 : label is 20;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_18_20_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_18_20_i_5 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_18_20_i_6 : label is "soft_lutpair12";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_21_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_21_23 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_21_23 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_21_23 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_21_23 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_21_23 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_21_23 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_21_23 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_21_23 : label is 21;
  attribute ram_slice_end of ram_reg_r1_0_63_21_23 : label is 23;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_21_23_i_4 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_21_23_i_5 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_21_23_i_6 : label is "soft_lutpair13";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_24_26 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_24_26 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_24_26 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_24_26 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_24_26 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_24_26 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_24_26 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_24_26 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_24_26 : label is 24;
  attribute ram_slice_end of ram_reg_r1_0_63_24_26 : label is 26;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_24_26_i_4 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_24_26_i_5 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_24_26_i_6 : label is "soft_lutpair15";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_27_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_27_29 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_27_29 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_27_29 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_27_29 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_27_29 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_27_29 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_27_29 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_27_29 : label is 27;
  attribute ram_slice_end of ram_reg_r1_0_63_27_29 : label is 29;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_27_29_i_4 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_27_29_i_5 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_27_29_i_6 : label is "soft_lutpair16";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_30_31 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_30_31 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_30_31 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_30_31 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_30_31 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_30_31 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_30_31 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_30_31 : label is 30;
  attribute ram_slice_end of ram_reg_r1_0_63_30_31 : label is 31;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_30_31_i_3 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_30_31_i_4 : label is "soft_lutpair17";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_3_5 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_3_5 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_3_5 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_3_5 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_3_5 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_3_5 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_3_5 : label is 3;
  attribute ram_slice_end of ram_reg_r1_0_63_3_5 : label is 5;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_3_5_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_3_5_i_5 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_3_5_i_6 : label is "soft_lutpair4";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_6_8 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_6_8 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_6_8 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_6_8 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_6_8 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_6_8 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_6_8 : label is 6;
  attribute ram_slice_end of ram_reg_r1_0_63_6_8 : label is 8;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_6_8_i_4 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_6_8_i_5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_6_8_i_6 : label is "soft_lutpair6";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r1_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r1_0_63_9_11 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r1_0_63_9_11 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r1_0_63_9_11 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r1_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r1_0_63_9_11 : label is 0;
  attribute ram_addr_end of ram_reg_r1_0_63_9_11 : label is 63;
  attribute ram_offset of ram_reg_r1_0_63_9_11 : label is 0;
  attribute ram_slice_begin of ram_reg_r1_0_63_9_11 : label is 9;
  attribute ram_slice_end of ram_reg_r1_0_63_9_11 : label is 11;
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_9_11_i_4 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_9_11_i_5 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ram_reg_r1_0_63_9_11_i_6 : label is "soft_lutpair7";
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_0_2 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_0_2 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_0_2 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_0_2 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_0_2 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_0_2 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_0_2 : label is 0;
  attribute ram_slice_end of ram_reg_r2_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_12_14 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_12_14 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_12_14 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_12_14 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_12_14 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_12_14 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_12_14 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_12_14 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_12_14 : label is 12;
  attribute ram_slice_end of ram_reg_r2_0_63_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_15_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_15_17 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_15_17 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_15_17 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_15_17 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_15_17 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_15_17 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_15_17 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_15_17 : label is 15;
  attribute ram_slice_end of ram_reg_r2_0_63_15_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_18_20 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_18_20 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_18_20 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_18_20 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_18_20 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_18_20 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_18_20 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_18_20 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_18_20 : label is 18;
  attribute ram_slice_end of ram_reg_r2_0_63_18_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_21_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_21_23 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_21_23 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_21_23 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_21_23 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_21_23 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_21_23 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_21_23 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_21_23 : label is 21;
  attribute ram_slice_end of ram_reg_r2_0_63_21_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_24_26 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_24_26 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_24_26 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_24_26 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_24_26 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_24_26 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_24_26 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_24_26 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_24_26 : label is 24;
  attribute ram_slice_end of ram_reg_r2_0_63_24_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_27_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_27_29 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_27_29 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_27_29 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_27_29 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_27_29 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_27_29 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_27_29 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_27_29 : label is 27;
  attribute ram_slice_end of ram_reg_r2_0_63_27_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_30_31 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_30_31 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_30_31 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_30_31 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_30_31 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_30_31 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_30_31 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_30_31 : label is 30;
  attribute ram_slice_end of ram_reg_r2_0_63_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_3_5 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_3_5 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_3_5 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_3_5 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_3_5 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_3_5 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_3_5 : label is 3;
  attribute ram_slice_end of ram_reg_r2_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_6_8 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_6_8 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_6_8 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_6_8 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_6_8 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_6_8 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_6_8 : label is 6;
  attribute ram_slice_end of ram_reg_r2_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r2_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r2_0_63_9_11 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r2_0_63_9_11 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r2_0_63_9_11 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r2_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r2_0_63_9_11 : label is 0;
  attribute ram_addr_end of ram_reg_r2_0_63_9_11 : label is 63;
  attribute ram_offset of ram_reg_r2_0_63_9_11 : label is 0;
  attribute ram_slice_begin of ram_reg_r2_0_63_9_11 : label is 9;
  attribute ram_slice_end of ram_reg_r2_0_63_9_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_0_2 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_0_2 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_0_2 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_0_2 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_0_2 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_0_2 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_0_2 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_0_2 : label is 0;
  attribute ram_slice_end of ram_reg_r3_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_12_14 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_12_14 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_12_14 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_12_14 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_12_14 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_12_14 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_12_14 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_12_14 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_12_14 : label is 12;
  attribute ram_slice_end of ram_reg_r3_0_63_12_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_15_17 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_15_17 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_15_17 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_15_17 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_15_17 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_15_17 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_15_17 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_15_17 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_15_17 : label is 15;
  attribute ram_slice_end of ram_reg_r3_0_63_15_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_18_20 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_18_20 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_18_20 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_18_20 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_18_20 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_18_20 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_18_20 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_18_20 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_18_20 : label is 18;
  attribute ram_slice_end of ram_reg_r3_0_63_18_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_21_23 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_21_23 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_21_23 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_21_23 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_21_23 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_21_23 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_21_23 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_21_23 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_21_23 : label is 21;
  attribute ram_slice_end of ram_reg_r3_0_63_21_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_24_26 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_24_26 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_24_26 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_24_26 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_24_26 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_24_26 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_24_26 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_24_26 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_24_26 : label is 24;
  attribute ram_slice_end of ram_reg_r3_0_63_24_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_27_29 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_27_29 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_27_29 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_27_29 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_27_29 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_27_29 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_27_29 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_27_29 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_27_29 : label is 27;
  attribute ram_slice_end of ram_reg_r3_0_63_27_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_30_31 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_30_31 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_30_31 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_30_31 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_30_31 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_30_31 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_30_31 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_30_31 : label is 30;
  attribute ram_slice_end of ram_reg_r3_0_63_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_3_5 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_3_5 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_3_5 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_3_5 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_3_5 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_3_5 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_3_5 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_3_5 : label is 3;
  attribute ram_slice_end of ram_reg_r3_0_63_3_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_6_8 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_6_8 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_6_8 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_6_8 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_6_8 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_6_8 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_6_8 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_6_8 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_6_8 : label is 6;
  attribute ram_slice_end of ram_reg_r3_0_63_6_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_r3_0_63_9_11 : label is "";
  attribute RTL_RAM_BITS of ram_reg_r3_0_63_9_11 : label is 2048;
  attribute RTL_RAM_NAME of ram_reg_r3_0_63_9_11 : label is "soc_riscv_v1_axi_lutram_wrapper_1_0/inst/ram_reg";
  attribute RTL_RAM_STYLE of ram_reg_r3_0_63_9_11 : label is "distributed";
  attribute RTL_RAM_TYPE of ram_reg_r3_0_63_9_11 : label is "RAM_SDP";
  attribute ram_addr_begin of ram_reg_r3_0_63_9_11 : label is 0;
  attribute ram_addr_end of ram_reg_r3_0_63_9_11 : label is 63;
  attribute ram_offset of ram_reg_r3_0_63_9_11 : label is 0;
  attribute ram_slice_begin of ram_reg_r3_0_63_9_11 : label is 9;
  attribute ram_slice_end of ram_reg_r3_0_63_9_11 : label is 11;
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      I3 => \^s_axi_awready\,
      I4 => S_AXI_BREADY,
      I5 => \^s_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(0),
      Q => S_AXI_RDATA(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(10),
      Q => S_AXI_RDATA(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(11),
      Q => S_AXI_RDATA(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(12),
      Q => S_AXI_RDATA(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(13),
      Q => S_AXI_RDATA(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(14),
      Q => S_AXI_RDATA(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(15),
      Q => S_AXI_RDATA(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(16),
      Q => S_AXI_RDATA(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(17),
      Q => S_AXI_RDATA(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(18),
      Q => S_AXI_RDATA(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(19),
      Q => S_AXI_RDATA(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(1),
      Q => S_AXI_RDATA(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(20),
      Q => S_AXI_RDATA(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(21),
      Q => S_AXI_RDATA(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(22),
      Q => S_AXI_RDATA(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(23),
      Q => S_AXI_RDATA(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(24),
      Q => S_AXI_RDATA(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(25),
      Q => S_AXI_RDATA(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(26),
      Q => S_AXI_RDATA(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(27),
      Q => S_AXI_RDATA(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(28),
      Q => S_AXI_RDATA(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(29),
      Q => S_AXI_RDATA(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(2),
      Q => S_AXI_RDATA(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(30),
      Q => S_AXI_RDATA(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(31),
      Q => S_AXI_RDATA(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(3),
      Q => S_AXI_RDATA(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(4),
      Q => S_AXI_RDATA(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(5),
      Q => S_AXI_RDATA(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(6),
      Q => S_AXI_RDATA(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(7),
      Q => S_AXI_RDATA(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(8),
      Q => S_AXI_RDATA(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => \axi_rdata[31]_i_1_n_0\,
      D => axi_rdata0(9),
      Q => S_AXI_RDATA(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => S_AXI_ARVALID,
      I2 => \^s_axi_rvalid\,
      I3 => S_AXI_RREADY,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => S_AXI_WVALID,
      I1 => S_AXI_AWVALID,
      I2 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\cpu_dout[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(0),
      O => cpu_dout(0)
    );
\cpu_dout[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(10),
      O => cpu_dout(10)
    );
\cpu_dout[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(11),
      O => cpu_dout(11)
    );
\cpu_dout[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(12),
      O => cpu_dout(12)
    );
\cpu_dout[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(13),
      O => cpu_dout(13)
    );
\cpu_dout[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(14),
      O => cpu_dout(14)
    );
\cpu_dout[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(15),
      O => cpu_dout(15)
    );
\cpu_dout[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(16),
      O => cpu_dout(16)
    );
\cpu_dout[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(17),
      O => cpu_dout(17)
    );
\cpu_dout[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(18),
      O => cpu_dout(18)
    );
\cpu_dout[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(19),
      O => cpu_dout(19)
    );
\cpu_dout[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(1),
      O => cpu_dout(1)
    );
\cpu_dout[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(20),
      O => cpu_dout(20)
    );
\cpu_dout[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(21),
      O => cpu_dout(21)
    );
\cpu_dout[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(22),
      O => cpu_dout(22)
    );
\cpu_dout[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(23),
      O => cpu_dout(23)
    );
\cpu_dout[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(24),
      O => cpu_dout(24)
    );
\cpu_dout[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(25),
      O => cpu_dout(25)
    );
\cpu_dout[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(26),
      O => cpu_dout(26)
    );
\cpu_dout[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(27),
      O => cpu_dout(27)
    );
\cpu_dout[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(28),
      O => cpu_dout(28)
    );
\cpu_dout[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(29),
      O => cpu_dout(29)
    );
\cpu_dout[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(2),
      O => cpu_dout(2)
    );
\cpu_dout[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(30),
      O => cpu_dout(30)
    );
\cpu_dout[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(31),
      O => cpu_dout(31)
    );
\cpu_dout[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(3),
      O => cpu_dout(3)
    );
\cpu_dout[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(4),
      O => cpu_dout(4)
    );
\cpu_dout[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(5),
      O => cpu_dout(5)
    );
\cpu_dout[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(6),
      O => cpu_dout(6)
    );
\cpu_dout[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(7),
      O => cpu_dout(7)
    );
\cpu_dout[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(8),
      O => cpu_dout(8)
    );
\cpu_dout[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_en,
      I1 => cpu_dout0(9),
      O => cpu_dout(9)
    );
ram_reg_r1_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(0),
      DIB => p_5_in(1),
      DIC => p_5_in(2),
      DID => '0',
      DOA => cpu_dout0(0),
      DOB => cpu_dout0(1),
      DOC => cpu_dout0(2),
      DOD => NLW_ram_reg_r1_0_63_0_2_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_0_2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(0),
      I1 => cpu_we(0),
      I2 => cpu_dout0(0),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_0_2_i_12_n_0,
      O => p_5_in(0)
    );
ram_reg_r1_0_63_0_2_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(0),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_AWVALID,
      I5 => cpu_addr(0),
      O => p_4_in(0)
    );
ram_reg_r1_0_63_0_2_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s_axi_wready\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      O => p_0_in_0(3)
    );
ram_reg_r1_0_63_0_2_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(0),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(0),
      O => ram_reg_r1_0_63_0_2_i_12_n_0
    );
ram_reg_r1_0_63_0_2_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(1),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(1),
      O => ram_reg_r1_0_63_0_2_i_13_n_0
    );
ram_reg_r1_0_63_0_2_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(2),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(2),
      O => ram_reg_r1_0_63_0_2_i_14_n_0
    );
ram_reg_r1_0_63_0_2_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(1),
      I1 => cpu_we(0),
      I2 => cpu_dout0(1),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_0_2_i_13_n_0,
      O => p_5_in(1)
    );
ram_reg_r1_0_63_0_2_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(2),
      I1 => cpu_we(0),
      I2 => cpu_dout0(2),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_0_2_i_14_n_0,
      O => p_5_in(2)
    );
ram_reg_r1_0_63_0_2_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => cpu_en,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      I3 => \^s_axi_wready\,
      I4 => \^s_axi_awready\,
      O => p_1_in
    );
ram_reg_r1_0_63_0_2_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(5),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_AWVALID,
      I5 => cpu_addr(5),
      O => p_4_in(5)
    );
ram_reg_r1_0_63_0_2_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(4),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_AWVALID,
      I5 => cpu_addr(4),
      O => p_4_in(4)
    );
ram_reg_r1_0_63_0_2_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(3),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_AWVALID,
      I5 => cpu_addr(3),
      O => p_4_in(3)
    );
ram_reg_r1_0_63_0_2_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(2),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_AWVALID,
      I5 => cpu_addr(2),
      O => p_4_in(2)
    );
ram_reg_r1_0_63_0_2_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => S_AXI_AWADDR(1),
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_AWVALID,
      I5 => cpu_addr(1),
      O => p_4_in(1)
    );
ram_reg_r1_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(12),
      DIB => p_5_in(13),
      DIC => p_5_in(14),
      DID => '0',
      DOA => cpu_dout0(12),
      DOB => cpu_dout0(13),
      DOC => cpu_dout0(14),
      DOD => NLW_ram_reg_r1_0_63_12_14_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_12_14_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(12),
      I1 => cpu_we(1),
      I2 => cpu_dout0(12),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_12_14_i_4_n_0,
      O => p_5_in(12)
    );
ram_reg_r1_0_63_12_14_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(13),
      I1 => cpu_we(1),
      I2 => cpu_dout0(13),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_12_14_i_5_n_0,
      O => p_5_in(13)
    );
ram_reg_r1_0_63_12_14_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(14),
      I1 => cpu_we(1),
      I2 => cpu_dout0(14),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_12_14_i_6_n_0,
      O => p_5_in(14)
    );
ram_reg_r1_0_63_12_14_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(12),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(12),
      O => ram_reg_r1_0_63_12_14_i_4_n_0
    );
ram_reg_r1_0_63_12_14_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(13),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(13),
      O => ram_reg_r1_0_63_12_14_i_5_n_0
    );
ram_reg_r1_0_63_12_14_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(14),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(14),
      O => ram_reg_r1_0_63_12_14_i_6_n_0
    );
ram_reg_r1_0_63_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(15),
      DIB => p_5_in(16),
      DIC => p_5_in(17),
      DID => '0',
      DOA => cpu_dout0(15),
      DOB => cpu_dout0(16),
      DOC => cpu_dout0(17),
      DOD => NLW_ram_reg_r1_0_63_15_17_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_15_17_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(15),
      I1 => cpu_we(1),
      I2 => cpu_dout0(15),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_15_17_i_4_n_0,
      O => p_5_in(15)
    );
ram_reg_r1_0_63_15_17_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(16),
      I1 => cpu_we(2),
      I2 => cpu_dout0(16),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(16),
      O => p_5_in(16)
    );
ram_reg_r1_0_63_15_17_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(17),
      I1 => cpu_we(2),
      I2 => cpu_dout0(17),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(17),
      O => p_5_in(17)
    );
ram_reg_r1_0_63_15_17_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(15),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(15),
      O => ram_reg_r1_0_63_15_17_i_4_n_0
    );
ram_reg_r1_0_63_15_17_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(16),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(16),
      O => p_1_in2_in(16)
    );
ram_reg_r1_0_63_15_17_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(17),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(17),
      O => p_1_in2_in(17)
    );
ram_reg_r1_0_63_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(18),
      DIB => p_5_in(19),
      DIC => p_5_in(20),
      DID => '0',
      DOA => cpu_dout0(18),
      DOB => cpu_dout0(19),
      DOC => cpu_dout0(20),
      DOD => NLW_ram_reg_r1_0_63_18_20_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_18_20_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(18),
      I1 => cpu_we(2),
      I2 => cpu_dout0(18),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(18),
      O => p_5_in(18)
    );
ram_reg_r1_0_63_18_20_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(19),
      I1 => cpu_we(2),
      I2 => cpu_dout0(19),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(19),
      O => p_5_in(19)
    );
ram_reg_r1_0_63_18_20_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(20),
      I1 => cpu_we(2),
      I2 => cpu_dout0(20),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(20),
      O => p_5_in(20)
    );
ram_reg_r1_0_63_18_20_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(18),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(18),
      O => p_1_in2_in(18)
    );
ram_reg_r1_0_63_18_20_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(19),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(19),
      O => p_1_in2_in(19)
    );
ram_reg_r1_0_63_18_20_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(20),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(20),
      O => p_1_in2_in(20)
    );
ram_reg_r1_0_63_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(21),
      DIB => p_5_in(22),
      DIC => p_5_in(23),
      DID => '0',
      DOA => cpu_dout0(21),
      DOB => cpu_dout0(22),
      DOC => cpu_dout0(23),
      DOD => NLW_ram_reg_r1_0_63_21_23_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_21_23_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(21),
      I1 => cpu_we(2),
      I2 => cpu_dout0(21),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(21),
      O => p_5_in(21)
    );
ram_reg_r1_0_63_21_23_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(22),
      I1 => cpu_we(2),
      I2 => cpu_dout0(22),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(22),
      O => p_5_in(22)
    );
ram_reg_r1_0_63_21_23_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(23),
      I1 => cpu_we(2),
      I2 => cpu_dout0(23),
      I3 => p_0_in_0(3),
      I4 => p_1_in2_in(23),
      O => p_5_in(23)
    );
ram_reg_r1_0_63_21_23_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(21),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(21),
      O => p_1_in2_in(21)
    );
ram_reg_r1_0_63_21_23_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(22),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(22),
      O => p_1_in2_in(22)
    );
ram_reg_r1_0_63_21_23_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(23),
      I1 => S_AXI_WSTRB(2),
      I2 => p_3_out(23),
      O => p_1_in2_in(23)
    );
ram_reg_r1_0_63_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(24),
      DIB => p_5_in(25),
      DIC => p_5_in(26),
      DID => '0',
      DOA => cpu_dout0(24),
      DOB => cpu_dout0(25),
      DOC => cpu_dout0(26),
      DOD => NLW_ram_reg_r1_0_63_24_26_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_24_26_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(24),
      I1 => cpu_we(3),
      I2 => cpu_dout0(24),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_24_26_i_4_n_0,
      O => p_5_in(24)
    );
ram_reg_r1_0_63_24_26_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(25),
      I1 => cpu_we(3),
      I2 => cpu_dout0(25),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_24_26_i_5_n_0,
      O => p_5_in(25)
    );
ram_reg_r1_0_63_24_26_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(26),
      I1 => cpu_we(3),
      I2 => cpu_dout0(26),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_24_26_i_6_n_0,
      O => p_5_in(26)
    );
ram_reg_r1_0_63_24_26_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(24),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(24),
      O => ram_reg_r1_0_63_24_26_i_4_n_0
    );
ram_reg_r1_0_63_24_26_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(25),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(25),
      O => ram_reg_r1_0_63_24_26_i_5_n_0
    );
ram_reg_r1_0_63_24_26_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(26),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(26),
      O => ram_reg_r1_0_63_24_26_i_6_n_0
    );
ram_reg_r1_0_63_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(27),
      DIB => p_5_in(28),
      DIC => p_5_in(29),
      DID => '0',
      DOA => cpu_dout0(27),
      DOB => cpu_dout0(28),
      DOC => cpu_dout0(29),
      DOD => NLW_ram_reg_r1_0_63_27_29_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_27_29_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(27),
      I1 => cpu_we(3),
      I2 => cpu_dout0(27),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_27_29_i_4_n_0,
      O => p_5_in(27)
    );
ram_reg_r1_0_63_27_29_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(28),
      I1 => cpu_we(3),
      I2 => cpu_dout0(28),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_27_29_i_5_n_0,
      O => p_5_in(28)
    );
ram_reg_r1_0_63_27_29_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(29),
      I1 => cpu_we(3),
      I2 => cpu_dout0(29),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_27_29_i_6_n_0,
      O => p_5_in(29)
    );
ram_reg_r1_0_63_27_29_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(27),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(27),
      O => ram_reg_r1_0_63_27_29_i_4_n_0
    );
ram_reg_r1_0_63_27_29_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(28),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(28),
      O => ram_reg_r1_0_63_27_29_i_5_n_0
    );
ram_reg_r1_0_63_27_29_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(29),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(29),
      O => ram_reg_r1_0_63_27_29_i_6_n_0
    );
ram_reg_r1_0_63_30_31: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(30),
      DIB => p_5_in(31),
      DIC => '0',
      DID => '0',
      DOA => cpu_dout0(30),
      DOB => cpu_dout0(31),
      DOC => NLW_ram_reg_r1_0_63_30_31_DOC_UNCONNECTED,
      DOD => NLW_ram_reg_r1_0_63_30_31_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_30_31_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(30),
      I1 => cpu_we(3),
      I2 => cpu_dout0(30),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_30_31_i_3_n_0,
      O => p_5_in(30)
    );
ram_reg_r1_0_63_30_31_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(31),
      I1 => cpu_we(3),
      I2 => cpu_dout0(31),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_30_31_i_4_n_0,
      O => p_5_in(31)
    );
ram_reg_r1_0_63_30_31_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(30),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(30),
      O => ram_reg_r1_0_63_30_31_i_3_n_0
    );
ram_reg_r1_0_63_30_31_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(31),
      I1 => S_AXI_WSTRB(3),
      I2 => p_3_out(31),
      O => ram_reg_r1_0_63_30_31_i_4_n_0
    );
ram_reg_r1_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(3),
      DIB => p_5_in(4),
      DIC => p_5_in(5),
      DID => '0',
      DOA => cpu_dout0(3),
      DOB => cpu_dout0(4),
      DOC => cpu_dout0(5),
      DOD => NLW_ram_reg_r1_0_63_3_5_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_3_5_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(3),
      I1 => cpu_we(0),
      I2 => cpu_dout0(3),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_3_5_i_4_n_0,
      O => p_5_in(3)
    );
ram_reg_r1_0_63_3_5_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(4),
      I1 => cpu_we(0),
      I2 => cpu_dout0(4),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_3_5_i_5_n_0,
      O => p_5_in(4)
    );
ram_reg_r1_0_63_3_5_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(5),
      I1 => cpu_we(0),
      I2 => cpu_dout0(5),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_3_5_i_6_n_0,
      O => p_5_in(5)
    );
ram_reg_r1_0_63_3_5_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(3),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(3),
      O => ram_reg_r1_0_63_3_5_i_4_n_0
    );
ram_reg_r1_0_63_3_5_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(4),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(4),
      O => ram_reg_r1_0_63_3_5_i_5_n_0
    );
ram_reg_r1_0_63_3_5_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(5),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(5),
      O => ram_reg_r1_0_63_3_5_i_6_n_0
    );
ram_reg_r1_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(6),
      DIB => p_5_in(7),
      DIC => p_5_in(8),
      DID => '0',
      DOA => cpu_dout0(6),
      DOB => cpu_dout0(7),
      DOC => cpu_dout0(8),
      DOD => NLW_ram_reg_r1_0_63_6_8_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_6_8_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(6),
      I1 => cpu_we(0),
      I2 => cpu_dout0(6),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_6_8_i_4_n_0,
      O => p_5_in(6)
    );
ram_reg_r1_0_63_6_8_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(7),
      I1 => cpu_we(0),
      I2 => cpu_dout0(7),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_6_8_i_5_n_0,
      O => p_5_in(7)
    );
ram_reg_r1_0_63_6_8_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(8),
      I1 => cpu_we(1),
      I2 => cpu_dout0(8),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_6_8_i_6_n_0,
      O => p_5_in(8)
    );
ram_reg_r1_0_63_6_8_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(6),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(6),
      O => ram_reg_r1_0_63_6_8_i_4_n_0
    );
ram_reg_r1_0_63_6_8_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(7),
      I1 => S_AXI_WSTRB(0),
      I2 => p_3_out(7),
      O => ram_reg_r1_0_63_6_8_i_5_n_0
    );
ram_reg_r1_0_63_6_8_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(8),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(8),
      O => ram_reg_r1_0_63_6_8_i_6_n_0
    );
ram_reg_r1_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => cpu_addr(5 downto 0),
      ADDRB(5 downto 0) => cpu_addr(5 downto 0),
      ADDRC(5 downto 0) => cpu_addr(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(9),
      DIB => p_5_in(10),
      DIC => p_5_in(11),
      DID => '0',
      DOA => cpu_dout0(9),
      DOB => cpu_dout0(10),
      DOC => cpu_dout0(11),
      DOD => NLW_ram_reg_r1_0_63_9_11_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r1_0_63_9_11_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(9),
      I1 => cpu_we(1),
      I2 => cpu_dout0(9),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_9_11_i_4_n_0,
      O => p_5_in(9)
    );
ram_reg_r1_0_63_9_11_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(10),
      I1 => cpu_we(1),
      I2 => cpu_dout0(10),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_9_11_i_5_n_0,
      O => p_5_in(10)
    );
ram_reg_r1_0_63_9_11_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB800B8"
    )
        port map (
      I0 => cpu_din(11),
      I1 => cpu_we(1),
      I2 => cpu_dout0(11),
      I3 => p_0_in_0(3),
      I4 => ram_reg_r1_0_63_9_11_i_6_n_0,
      O => p_5_in(11)
    );
ram_reg_r1_0_63_9_11_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(9),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(9),
      O => ram_reg_r1_0_63_9_11_i_4_n_0
    );
ram_reg_r1_0_63_9_11_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(10),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(10),
      O => ram_reg_r1_0_63_9_11_i_5_n_0
    );
ram_reg_r1_0_63_9_11_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => S_AXI_WDATA(11),
      I1 => S_AXI_WSTRB(1),
      I2 => p_3_out(11),
      O => ram_reg_r1_0_63_9_11_i_6_n_0
    );
ram_reg_r2_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(0),
      DIB => p_5_in(1),
      DIC => p_5_in(2),
      DID => '0',
      DOA => p_3_out(0),
      DOB => p_3_out(1),
      DOC => p_3_out(2),
      DOD => NLW_ram_reg_r2_0_63_0_2_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(12),
      DIB => p_5_in(13),
      DIC => p_5_in(14),
      DID => '0',
      DOA => p_3_out(12),
      DOB => p_3_out(13),
      DOC => p_3_out(14),
      DOD => NLW_ram_reg_r2_0_63_12_14_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(15),
      DIB => p_5_in(16),
      DIC => p_5_in(17),
      DID => '0',
      DOA => p_3_out(15),
      DOB => p_3_out(16),
      DOC => p_3_out(17),
      DOD => NLW_ram_reg_r2_0_63_15_17_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(18),
      DIB => p_5_in(19),
      DIC => p_5_in(20),
      DID => '0',
      DOA => p_3_out(18),
      DOB => p_3_out(19),
      DOC => p_3_out(20),
      DOD => NLW_ram_reg_r2_0_63_18_20_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(21),
      DIB => p_5_in(22),
      DIC => p_5_in(23),
      DID => '0',
      DOA => p_3_out(21),
      DOB => p_3_out(22),
      DOC => p_3_out(23),
      DOD => NLW_ram_reg_r2_0_63_21_23_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(24),
      DIB => p_5_in(25),
      DIC => p_5_in(26),
      DID => '0',
      DOA => p_3_out(24),
      DOB => p_3_out(25),
      DOC => p_3_out(26),
      DOD => NLW_ram_reg_r2_0_63_24_26_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(27),
      DIB => p_5_in(28),
      DIC => p_5_in(29),
      DID => '0',
      DOA => p_3_out(27),
      DOB => p_3_out(28),
      DOC => p_3_out(29),
      DOD => NLW_ram_reg_r2_0_63_27_29_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_30_31: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(30),
      DIB => p_5_in(31),
      DIC => '0',
      DID => '0',
      DOA => p_3_out(30),
      DOB => p_3_out(31),
      DOC => NLW_ram_reg_r2_0_63_30_31_DOC_UNCONNECTED,
      DOD => NLW_ram_reg_r2_0_63_30_31_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(3),
      DIB => p_5_in(4),
      DIC => p_5_in(5),
      DID => '0',
      DOA => p_3_out(3),
      DOB => p_3_out(4),
      DOC => p_3_out(5),
      DOD => NLW_ram_reg_r2_0_63_3_5_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(6),
      DIB => p_5_in(7),
      DIC => p_5_in(8),
      DID => '0',
      DOA => p_3_out(6),
      DOB => p_3_out(7),
      DOC => p_3_out(8),
      DOD => NLW_ram_reg_r2_0_63_6_8_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r2_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_AWADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(9),
      DIB => p_5_in(10),
      DIC => p_5_in(11),
      DID => '0',
      DOA => p_3_out(9),
      DOB => p_3_out(10),
      DOC => p_3_out(11),
      DOD => NLW_ram_reg_r2_0_63_9_11_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(0),
      DIB => p_5_in(1),
      DIC => p_5_in(2),
      DID => '0',
      DOA => axi_rdata0(0),
      DOB => axi_rdata0(1),
      DOC => axi_rdata0(2),
      DOD => NLW_ram_reg_r3_0_63_0_2_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(12),
      DIB => p_5_in(13),
      DIC => p_5_in(14),
      DID => '0',
      DOA => axi_rdata0(12),
      DOB => axi_rdata0(13),
      DOC => axi_rdata0(14),
      DOD => NLW_ram_reg_r3_0_63_12_14_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_15_17: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(15),
      DIB => p_5_in(16),
      DIC => p_5_in(17),
      DID => '0',
      DOA => axi_rdata0(15),
      DOB => axi_rdata0(16),
      DOC => axi_rdata0(17),
      DOD => NLW_ram_reg_r3_0_63_15_17_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_18_20: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(18),
      DIB => p_5_in(19),
      DIC => p_5_in(20),
      DID => '0',
      DOA => axi_rdata0(18),
      DOB => axi_rdata0(19),
      DOC => axi_rdata0(20),
      DOD => NLW_ram_reg_r3_0_63_18_20_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_21_23: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(21),
      DIB => p_5_in(22),
      DIC => p_5_in(23),
      DID => '0',
      DOA => axi_rdata0(21),
      DOB => axi_rdata0(22),
      DOC => axi_rdata0(23),
      DOD => NLW_ram_reg_r3_0_63_21_23_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_24_26: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(24),
      DIB => p_5_in(25),
      DIC => p_5_in(26),
      DID => '0',
      DOA => axi_rdata0(24),
      DOB => axi_rdata0(25),
      DOC => axi_rdata0(26),
      DOD => NLW_ram_reg_r3_0_63_24_26_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_27_29: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(27),
      DIB => p_5_in(28),
      DIC => p_5_in(29),
      DID => '0',
      DOA => axi_rdata0(27),
      DOB => axi_rdata0(28),
      DOC => axi_rdata0(29),
      DOD => NLW_ram_reg_r3_0_63_27_29_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_30_31: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(30),
      DIB => p_5_in(31),
      DIC => '0',
      DID => '0',
      DOA => axi_rdata0(30),
      DOB => axi_rdata0(31),
      DOC => NLW_ram_reg_r3_0_63_30_31_DOC_UNCONNECTED,
      DOD => NLW_ram_reg_r3_0_63_30_31_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(3),
      DIB => p_5_in(4),
      DIC => p_5_in(5),
      DID => '0',
      DOA => axi_rdata0(3),
      DOB => axi_rdata0(4),
      DOC => axi_rdata0(5),
      DOD => NLW_ram_reg_r3_0_63_3_5_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(6),
      DIB => p_5_in(7),
      DIC => p_5_in(8),
      DID => '0',
      DOA => axi_rdata0(6),
      DOB => axi_rdata0(7),
      DOC => axi_rdata0(8),
      DOD => NLW_ram_reg_r3_0_63_6_8_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
ram_reg_r3_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRB(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRC(5 downto 0) => S_AXI_ARADDR(5 downto 0),
      ADDRD(5 downto 0) => p_4_in(5 downto 0),
      DIA => p_5_in(9),
      DIB => p_5_in(10),
      DIC => p_5_in(11),
      DID => '0',
      DOA => axi_rdata0(9),
      DOB => axi_rdata0(10),
      DOC => axi_rdata0(11),
      DOD => NLW_ram_reg_r3_0_63_9_11_DOD_UNCONNECTED,
      WCLK => S_AXI_ACLK,
      WE => p_1_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    cpu_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_en : in STD_LOGIC;
    cpu_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_riscv_v1_axi_lutram_wrapper_1_0,axi_lutram_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_lutram_wrapper,Vivado 2025.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of S_AXI_ACLK : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_riscv_v1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute X_INTERFACE_MODE of S_AXI_ARESETN : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of S_AXI_AWADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN soc_riscv_v1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lutram_wrapper
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(5 downto 0) => S_AXI_ARADDR(7 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(5 downto 0) => S_AXI_AWADDR(7 downto 2),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(31 downto 0) => S_AXI_WDATA(31 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(3 downto 0) => S_AXI_WSTRB(3 downto 0),
      S_AXI_WVALID => S_AXI_WVALID,
      cpu_addr(5 downto 0) => cpu_addr(7 downto 2),
      cpu_din(31 downto 0) => cpu_din(31 downto 0),
      cpu_dout(31 downto 0) => cpu_dout(31 downto 0),
      cpu_en => cpu_en,
      cpu_we(3 downto 0) => cpu_we(3 downto 0)
    );
end STRUCTURE;
