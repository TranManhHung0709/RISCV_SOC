-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Mar 26 23:26:27 2026
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_riscv_v2_cpu_0_0_stub.vhdl
-- Design      : soc_riscv_v2_cpu_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    imem_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    imem_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    imem_en : out STD_LOGIC;
    imem_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    imem_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_en : out STD_LOGIC;
    cpu_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_din : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_riscv_v2_cpu_0_0,cpu,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_riscv_v2_cpu_0_0,cpu,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=cpu,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,rst_n,imem_addr[31:0],imem_dout[31:0],imem_en,imem_we[3:0],imem_din[31:0],cpu_addr[31:0],cpu_dout[31:0],cpu_en,cpu_we[3:0],cpu_din[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_riscv_v2_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "cpu,Vivado 2025.1";
begin
end;
