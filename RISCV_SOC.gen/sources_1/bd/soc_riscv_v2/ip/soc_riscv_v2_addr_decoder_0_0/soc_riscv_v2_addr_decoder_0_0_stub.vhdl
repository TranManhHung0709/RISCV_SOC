-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Mar 26 23:25:14 2026
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/Vivado_projects/RISCV_SOC/RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ip/soc_riscv_v2_addr_decoder_0_0/soc_riscv_v2_addr_decoder_0_0_stub.vhdl
-- Design      : soc_riscv_v2_addr_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity soc_riscv_v2_addr_decoder_0_0 is
  Port ( 
    cpu_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dmem_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_real_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_en : out STD_LOGIC;
    dmem_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_real_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_en : out STD_LOGIC;
    ip_we : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_riscv_v2_addr_decoder_0_0 : entity is "soc_riscv_v2_addr_decoder_0_0,addr_decoder,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of soc_riscv_v2_addr_decoder_0_0 : entity is "soc_riscv_v2_addr_decoder_0_0,addr_decoder,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=addr_decoder,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_riscv_v2_addr_decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of soc_riscv_v2_addr_decoder_0_0 : entity is "module_ref";
end soc_riscv_v2_addr_decoder_0_0;

architecture stub of soc_riscv_v2_addr_decoder_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "cpu_addr[31:0],cpu_we[3:0],dmem_dout[31:0],ip_dout[31:0],cpu_read_data[31:0],dmem_real_addr[31:0],dmem_en,dmem_we[3:0],ip_real_addr[31:0],ip_en,ip_we[3:0]";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "addr_decoder,Vivado 2025.1";
begin
end;
