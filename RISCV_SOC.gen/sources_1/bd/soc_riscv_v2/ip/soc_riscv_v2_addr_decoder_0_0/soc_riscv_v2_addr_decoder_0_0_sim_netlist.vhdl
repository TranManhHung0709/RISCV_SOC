-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Mar 26 23:25:14 2026
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Vivado_projects/RISCV_SOC/RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ip/soc_riscv_v2_addr_decoder_0_0/soc_riscv_v2_addr_decoder_0_0_sim_netlist.vhdl
-- Design      : soc_riscv_v2_addr_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_riscv_v2_addr_decoder_0_0_addr_decoder is
  port (
    ip_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_addr : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpu_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_dout : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_riscv_v2_addr_decoder_0_0_addr_decoder : entity is "addr_decoder";
end soc_riscv_v2_addr_decoder_0_0_addr_decoder;

architecture STRUCTURE of soc_riscv_v2_addr_decoder_0_0_addr_decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cpu_read_data[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cpu_read_data[10]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cpu_read_data[11]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cpu_read_data[12]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cpu_read_data[13]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cpu_read_data[14]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cpu_read_data[15]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cpu_read_data[16]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cpu_read_data[17]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cpu_read_data[18]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cpu_read_data[19]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cpu_read_data[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cpu_read_data[20]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cpu_read_data[21]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cpu_read_data[22]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cpu_read_data[23]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cpu_read_data[24]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cpu_read_data[25]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cpu_read_data[26]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cpu_read_data[27]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cpu_read_data[28]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cpu_read_data[29]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cpu_read_data[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cpu_read_data[30]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cpu_read_data[31]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cpu_read_data[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cpu_read_data[4]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cpu_read_data[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cpu_read_data[6]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cpu_read_data[7]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cpu_read_data[8]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cpu_read_data[9]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ip_we[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ip_we[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ip_we[2]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ip_we[3]_INST_0\ : label is "soft_lutpair3";
begin
\cpu_read_data[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(0),
      I1 => cpu_addr(0),
      I2 => dmem_dout(0),
      O => cpu_read_data(0)
    );
\cpu_read_data[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(10),
      I1 => cpu_addr(0),
      I2 => dmem_dout(10),
      O => cpu_read_data(10)
    );
\cpu_read_data[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(11),
      I1 => cpu_addr(0),
      I2 => dmem_dout(11),
      O => cpu_read_data(11)
    );
\cpu_read_data[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(12),
      I1 => cpu_addr(0),
      I2 => dmem_dout(12),
      O => cpu_read_data(12)
    );
\cpu_read_data[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(13),
      I1 => cpu_addr(0),
      I2 => dmem_dout(13),
      O => cpu_read_data(13)
    );
\cpu_read_data[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(14),
      I1 => cpu_addr(0),
      I2 => dmem_dout(14),
      O => cpu_read_data(14)
    );
\cpu_read_data[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(15),
      I1 => cpu_addr(0),
      I2 => dmem_dout(15),
      O => cpu_read_data(15)
    );
\cpu_read_data[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(16),
      I1 => cpu_addr(0),
      I2 => dmem_dout(16),
      O => cpu_read_data(16)
    );
\cpu_read_data[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(17),
      I1 => cpu_addr(0),
      I2 => dmem_dout(17),
      O => cpu_read_data(17)
    );
\cpu_read_data[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(18),
      I1 => cpu_addr(0),
      I2 => dmem_dout(18),
      O => cpu_read_data(18)
    );
\cpu_read_data[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(19),
      I1 => cpu_addr(0),
      I2 => dmem_dout(19),
      O => cpu_read_data(19)
    );
\cpu_read_data[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(1),
      I1 => cpu_addr(0),
      I2 => dmem_dout(1),
      O => cpu_read_data(1)
    );
\cpu_read_data[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(20),
      I1 => cpu_addr(0),
      I2 => dmem_dout(20),
      O => cpu_read_data(20)
    );
\cpu_read_data[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(21),
      I1 => cpu_addr(0),
      I2 => dmem_dout(21),
      O => cpu_read_data(21)
    );
\cpu_read_data[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(22),
      I1 => cpu_addr(0),
      I2 => dmem_dout(22),
      O => cpu_read_data(22)
    );
\cpu_read_data[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(23),
      I1 => cpu_addr(0),
      I2 => dmem_dout(23),
      O => cpu_read_data(23)
    );
\cpu_read_data[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(24),
      I1 => cpu_addr(0),
      I2 => dmem_dout(24),
      O => cpu_read_data(24)
    );
\cpu_read_data[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(25),
      I1 => cpu_addr(0),
      I2 => dmem_dout(25),
      O => cpu_read_data(25)
    );
\cpu_read_data[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(26),
      I1 => cpu_addr(0),
      I2 => dmem_dout(26),
      O => cpu_read_data(26)
    );
\cpu_read_data[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(27),
      I1 => cpu_addr(0),
      I2 => dmem_dout(27),
      O => cpu_read_data(27)
    );
\cpu_read_data[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(28),
      I1 => cpu_addr(0),
      I2 => dmem_dout(28),
      O => cpu_read_data(28)
    );
\cpu_read_data[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(29),
      I1 => cpu_addr(0),
      I2 => dmem_dout(29),
      O => cpu_read_data(29)
    );
\cpu_read_data[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(2),
      I1 => cpu_addr(0),
      I2 => dmem_dout(2),
      O => cpu_read_data(2)
    );
\cpu_read_data[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(30),
      I1 => cpu_addr(0),
      I2 => dmem_dout(30),
      O => cpu_read_data(30)
    );
\cpu_read_data[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(31),
      I1 => cpu_addr(0),
      I2 => dmem_dout(31),
      O => cpu_read_data(31)
    );
\cpu_read_data[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(3),
      I1 => cpu_addr(0),
      I2 => dmem_dout(3),
      O => cpu_read_data(3)
    );
\cpu_read_data[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(4),
      I1 => cpu_addr(0),
      I2 => dmem_dout(4),
      O => cpu_read_data(4)
    );
\cpu_read_data[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(5),
      I1 => cpu_addr(0),
      I2 => dmem_dout(5),
      O => cpu_read_data(5)
    );
\cpu_read_data[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(6),
      I1 => cpu_addr(0),
      I2 => dmem_dout(6),
      O => cpu_read_data(6)
    );
\cpu_read_data[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(7),
      I1 => cpu_addr(0),
      I2 => dmem_dout(7),
      O => cpu_read_data(7)
    );
\cpu_read_data[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(8),
      I1 => cpu_addr(0),
      I2 => dmem_dout(8),
      O => cpu_read_data(8)
    );
\cpu_read_data[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ip_dout(9),
      I1 => cpu_addr(0),
      I2 => dmem_dout(9),
      O => cpu_read_data(9)
    );
\ip_we[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_addr(0),
      I1 => cpu_we(0),
      O => ip_we(0)
    );
\ip_we[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_addr(0),
      I1 => cpu_we(1),
      O => ip_we(1)
    );
\ip_we[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_addr(0),
      I1 => cpu_we(2),
      O => ip_we(2)
    );
\ip_we[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cpu_addr(0),
      I1 => cpu_we(3),
      O => ip_we(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_riscv_v2_addr_decoder_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_riscv_v2_addr_decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_riscv_v2_addr_decoder_0_0 : entity is "soc_riscv_v2_addr_decoder_0_0,addr_decoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_riscv_v2_addr_decoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of soc_riscv_v2_addr_decoder_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_riscv_v2_addr_decoder_0_0 : entity is "addr_decoder,Vivado 2025.1";
end soc_riscv_v2_addr_decoder_0_0;

architecture STRUCTURE of soc_riscv_v2_addr_decoder_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^cpu_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^cpu_addr\(31) <= cpu_addr(31);
  \^cpu_addr\(15 downto 0) <= cpu_addr(15 downto 0);
  dmem_real_addr(31) <= \<const0>\;
  dmem_real_addr(30) <= \<const0>\;
  dmem_real_addr(29) <= \<const0>\;
  dmem_real_addr(28) <= \<const0>\;
  dmem_real_addr(27) <= \<const0>\;
  dmem_real_addr(26) <= \<const0>\;
  dmem_real_addr(25) <= \<const0>\;
  dmem_real_addr(24) <= \<const0>\;
  dmem_real_addr(23) <= \<const0>\;
  dmem_real_addr(22) <= \<const0>\;
  dmem_real_addr(21) <= \<const0>\;
  dmem_real_addr(20) <= \<const0>\;
  dmem_real_addr(19) <= \<const0>\;
  dmem_real_addr(18) <= \<const0>\;
  dmem_real_addr(17) <= \<const0>\;
  dmem_real_addr(16) <= \<const0>\;
  dmem_real_addr(15 downto 0) <= \^cpu_addr\(15 downto 0);
  ip_en <= \^cpu_addr\(31);
  ip_real_addr(31) <= \<const0>\;
  ip_real_addr(30) <= \<const0>\;
  ip_real_addr(29) <= \<const0>\;
  ip_real_addr(28) <= \<const0>\;
  ip_real_addr(27) <= \<const0>\;
  ip_real_addr(26) <= \<const0>\;
  ip_real_addr(25) <= \<const0>\;
  ip_real_addr(24) <= \<const0>\;
  ip_real_addr(23) <= \<const0>\;
  ip_real_addr(22) <= \<const0>\;
  ip_real_addr(21) <= \<const0>\;
  ip_real_addr(20) <= \<const0>\;
  ip_real_addr(19) <= \<const0>\;
  ip_real_addr(18) <= \<const0>\;
  ip_real_addr(17) <= \<const0>\;
  ip_real_addr(16) <= \<const0>\;
  ip_real_addr(15 downto 0) <= \^cpu_addr\(15 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
dmem_en_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cpu_addr\(31),
      O => dmem_en
    );
\dmem_we[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cpu_we(0),
      I1 => \^cpu_addr\(31),
      O => dmem_we(0)
    );
\dmem_we[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cpu_we(1),
      I1 => \^cpu_addr\(31),
      O => dmem_we(1)
    );
\dmem_we[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cpu_we(2),
      I1 => \^cpu_addr\(31),
      O => dmem_we(2)
    );
\dmem_we[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cpu_we(3),
      I1 => \^cpu_addr\(31),
      O => dmem_we(3)
    );
inst: entity work.soc_riscv_v2_addr_decoder_0_0_addr_decoder
     port map (
      cpu_addr(0) => \^cpu_addr\(31),
      cpu_read_data(31 downto 0) => cpu_read_data(31 downto 0),
      cpu_we(3 downto 0) => cpu_we(3 downto 0),
      dmem_dout(31 downto 0) => dmem_dout(31 downto 0),
      ip_dout(31 downto 0) => ip_dout(31 downto 0),
      ip_we(3 downto 0) => ip_we(3 downto 0)
    );
end STRUCTURE;
