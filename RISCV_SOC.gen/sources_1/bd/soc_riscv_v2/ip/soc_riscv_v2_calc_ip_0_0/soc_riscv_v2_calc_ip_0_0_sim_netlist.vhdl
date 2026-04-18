-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Mar 26 23:25:14 2026
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/Vivado_projects/RISCV_SOC/RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ip/soc_riscv_v2_calc_ip_0_0/soc_riscv_v2_calc_ip_0_0_sim_netlist.vhdl
-- Design      : soc_riscv_v2_calc_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_riscv_v2_calc_ip_0_0_calc_ip is
  port (
    ip_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    ip_real_addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ip_en : in STD_LOGIC;
    ip_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_riscv_v2_calc_ip_0_0_calc_ip : entity is "calc_ip";
end soc_riscv_v2_calc_ip_0_0_calc_ip;

architecture STRUCTURE of soc_riscv_v2_calc_ip_0_0_calc_ip is
  signal data3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ip_dout[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ip_dout[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ip_dout[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ip_dout[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \ip_dout[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_n_0\ : STD_LOGIC;
  signal \math_result_carry__0_n_1\ : STD_LOGIC;
  signal \math_result_carry__0_n_2\ : STD_LOGIC;
  signal \math_result_carry__0_n_3\ : STD_LOGIC;
  signal \math_result_carry__0_n_4\ : STD_LOGIC;
  signal \math_result_carry__0_n_5\ : STD_LOGIC;
  signal \math_result_carry__0_n_6\ : STD_LOGIC;
  signal \math_result_carry__0_n_7\ : STD_LOGIC;
  signal \math_result_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_n_0\ : STD_LOGIC;
  signal \math_result_carry__1_n_1\ : STD_LOGIC;
  signal \math_result_carry__1_n_2\ : STD_LOGIC;
  signal \math_result_carry__1_n_3\ : STD_LOGIC;
  signal \math_result_carry__1_n_4\ : STD_LOGIC;
  signal \math_result_carry__1_n_5\ : STD_LOGIC;
  signal \math_result_carry__1_n_6\ : STD_LOGIC;
  signal \math_result_carry__1_n_7\ : STD_LOGIC;
  signal \math_result_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \math_result_carry__2_n_1\ : STD_LOGIC;
  signal \math_result_carry__2_n_2\ : STD_LOGIC;
  signal \math_result_carry__2_n_3\ : STD_LOGIC;
  signal \math_result_carry__2_n_4\ : STD_LOGIC;
  signal \math_result_carry__2_n_5\ : STD_LOGIC;
  signal \math_result_carry__2_n_6\ : STD_LOGIC;
  signal \math_result_carry__2_n_7\ : STD_LOGIC;
  signal math_result_carry_i_1_n_0 : STD_LOGIC;
  signal math_result_carry_i_2_n_0 : STD_LOGIC;
  signal math_result_carry_i_3_n_0 : STD_LOGIC;
  signal math_result_carry_i_4_n_0 : STD_LOGIC;
  signal math_result_carry_i_5_n_0 : STD_LOGIC;
  signal math_result_carry_i_6_n_0 : STD_LOGIC;
  signal math_result_carry_i_7_n_0 : STD_LOGIC;
  signal math_result_carry_i_8_n_0 : STD_LOGIC;
  signal math_result_carry_n_0 : STD_LOGIC;
  signal math_result_carry_n_1 : STD_LOGIC;
  signal math_result_carry_n_2 : STD_LOGIC;
  signal math_result_carry_n_3 : STD_LOGIC;
  signal math_result_carry_n_4 : STD_LOGIC;
  signal math_result_carry_n_5 : STD_LOGIC;
  signal math_result_carry_n_6 : STD_LOGIC;
  signal math_result_carry_n_7 : STD_LOGIC;
  signal reg_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg_A[31]_i_2_n_0\ : STD_LOGIC;
  signal reg_A_1 : STD_LOGIC;
  signal reg_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_B_0 : STD_LOGIC;
  signal \NLW_math_result_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of math_result_carry : label is 35;
  attribute ADDER_THRESHOLD of \math_result_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \math_result_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \math_result_carry__2\ : label is 35;
begin
\ip_dout[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0F0B030B0C0B000"
    )
        port map (
      I0 => data3(0),
      I1 => ip_real_addr(2),
      I2 => \ip_dout[0]_INST_0_i_1_n_0\,
      I3 => ip_real_addr(3),
      I4 => reg_B(0),
      I5 => reg_A(0),
      O => ip_dout(0)
    );
\ip_dout[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => ip_real_addr(7),
      I1 => ip_en,
      I2 => ip_real_addr(0),
      I3 => \ip_dout[31]_INST_0_i_4_n_0\,
      O => \ip_dout[0]_INST_0_i_1_n_0\
    );
\ip_dout[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(10),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(10),
      I4 => data3(10),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(10)
    );
\ip_dout[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(11),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(11),
      I4 => data3(11),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(11)
    );
\ip_dout[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(12),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(12),
      I4 => data3(12),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(12)
    );
\ip_dout[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(13),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(13),
      I4 => data3(13),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(13)
    );
\ip_dout[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(14),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(14),
      I4 => data3(14),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(14)
    );
\ip_dout[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(15),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(15),
      I4 => data3(15),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(15)
    );
\ip_dout[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(16),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(16),
      I4 => data3(16),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(16)
    );
\ip_dout[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(17),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(17),
      I4 => data3(17),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(17)
    );
\ip_dout[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(18),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(18),
      I4 => data3(18),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(18)
    );
\ip_dout[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(19),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(19),
      I4 => data3(19),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(19)
    );
\ip_dout[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(1),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(1),
      I4 => data3(1),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(1)
    );
\ip_dout[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(20),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(20),
      I4 => data3(20),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(20)
    );
\ip_dout[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(21),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(21),
      I4 => data3(21),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(21)
    );
\ip_dout[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(22),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(22),
      I4 => data3(22),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(22)
    );
\ip_dout[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(23),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(23),
      I4 => data3(23),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(23)
    );
\ip_dout[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(24),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(24),
      I4 => data3(24),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(24)
    );
\ip_dout[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(25),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(25),
      I4 => data3(25),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(25)
    );
\ip_dout[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(26),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(26),
      I4 => data3(26),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(26)
    );
\ip_dout[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(27),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(27),
      I4 => data3(27),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(27)
    );
\ip_dout[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(28),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(28),
      I4 => data3(28),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(28)
    );
\ip_dout[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(29),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(29),
      I4 => data3(29),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(29)
    );
\ip_dout[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(2),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(2),
      I4 => data3(2),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(2)
    );
\ip_dout[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(30),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(30),
      I4 => data3(30),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(30)
    );
\ip_dout[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(31),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(31),
      I4 => data3(31),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(31)
    );
\ip_dout[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => ip_real_addr(3),
      I1 => ip_real_addr(7),
      I2 => ip_en,
      I3 => ip_real_addr(0),
      I4 => \ip_dout[31]_INST_0_i_4_n_0\,
      I5 => ip_real_addr(2),
      O => \ip_dout[31]_INST_0_i_1_n_0\
    );
\ip_dout[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => ip_real_addr(3),
      I1 => ip_real_addr(7),
      I2 => ip_en,
      I3 => ip_real_addr(0),
      I4 => \ip_dout[31]_INST_0_i_4_n_0\,
      I5 => ip_real_addr(2),
      O => \ip_dout[31]_INST_0_i_2_n_0\
    );
\ip_dout[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => ip_real_addr(3),
      I1 => ip_real_addr(7),
      I2 => ip_en,
      I3 => ip_real_addr(0),
      I4 => \ip_dout[31]_INST_0_i_4_n_0\,
      I5 => ip_real_addr(2),
      O => \ip_dout[31]_INST_0_i_3_n_0\
    );
\ip_dout[31]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ip_real_addr(6),
      I1 => ip_real_addr(5),
      I2 => ip_real_addr(4),
      I3 => ip_real_addr(1),
      O => \ip_dout[31]_INST_0_i_4_n_0\
    );
\ip_dout[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(3),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(3),
      I4 => data3(3),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(3)
    );
\ip_dout[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(4),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(4),
      I4 => data3(4),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(4)
    );
\ip_dout[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(5),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(5),
      I4 => data3(5),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(5)
    );
\ip_dout[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(6),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(6),
      I4 => data3(6),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(6)
    );
\ip_dout[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(7),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(7),
      I4 => data3(7),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(7)
    );
\ip_dout[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(8),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(8),
      I4 => data3(8),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(8)
    );
\ip_dout[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \ip_dout[31]_INST_0_i_1_n_0\,
      I1 => reg_B(9),
      I2 => \ip_dout[31]_INST_0_i_2_n_0\,
      I3 => reg_A(9),
      I4 => data3(9),
      I5 => \ip_dout[31]_INST_0_i_3_n_0\,
      O => ip_dout(9)
    );
math_result_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => math_result_carry_n_0,
      CO(6) => math_result_carry_n_1,
      CO(5) => math_result_carry_n_2,
      CO(4) => math_result_carry_n_3,
      CO(3) => math_result_carry_n_4,
      CO(2) => math_result_carry_n_5,
      CO(1) => math_result_carry_n_6,
      CO(0) => math_result_carry_n_7,
      DI(7 downto 0) => reg_A(7 downto 0),
      O(7 downto 0) => data3(7 downto 0),
      S(7) => math_result_carry_i_1_n_0,
      S(6) => math_result_carry_i_2_n_0,
      S(5) => math_result_carry_i_3_n_0,
      S(4) => math_result_carry_i_4_n_0,
      S(3) => math_result_carry_i_5_n_0,
      S(2) => math_result_carry_i_6_n_0,
      S(1) => math_result_carry_i_7_n_0,
      S(0) => math_result_carry_i_8_n_0
    );
\math_result_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => math_result_carry_n_0,
      CI_TOP => '0',
      CO(7) => \math_result_carry__0_n_0\,
      CO(6) => \math_result_carry__0_n_1\,
      CO(5) => \math_result_carry__0_n_2\,
      CO(4) => \math_result_carry__0_n_3\,
      CO(3) => \math_result_carry__0_n_4\,
      CO(2) => \math_result_carry__0_n_5\,
      CO(1) => \math_result_carry__0_n_6\,
      CO(0) => \math_result_carry__0_n_7\,
      DI(7 downto 0) => reg_A(15 downto 8),
      O(7 downto 0) => data3(15 downto 8),
      S(7) => \math_result_carry__0_i_1_n_0\,
      S(6) => \math_result_carry__0_i_2_n_0\,
      S(5) => \math_result_carry__0_i_3_n_0\,
      S(4) => \math_result_carry__0_i_4_n_0\,
      S(3) => \math_result_carry__0_i_5_n_0\,
      S(2) => \math_result_carry__0_i_6_n_0\,
      S(1) => \math_result_carry__0_i_7_n_0\,
      S(0) => \math_result_carry__0_i_8_n_0\
    );
\math_result_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(15),
      I1 => reg_B(15),
      O => \math_result_carry__0_i_1_n_0\
    );
\math_result_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(14),
      I1 => reg_B(14),
      O => \math_result_carry__0_i_2_n_0\
    );
\math_result_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(13),
      I1 => reg_B(13),
      O => \math_result_carry__0_i_3_n_0\
    );
\math_result_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(12),
      I1 => reg_B(12),
      O => \math_result_carry__0_i_4_n_0\
    );
\math_result_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(11),
      I1 => reg_B(11),
      O => \math_result_carry__0_i_5_n_0\
    );
\math_result_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(10),
      I1 => reg_B(10),
      O => \math_result_carry__0_i_6_n_0\
    );
\math_result_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(9),
      I1 => reg_B(9),
      O => \math_result_carry__0_i_7_n_0\
    );
\math_result_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(8),
      I1 => reg_B(8),
      O => \math_result_carry__0_i_8_n_0\
    );
\math_result_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \math_result_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \math_result_carry__1_n_0\,
      CO(6) => \math_result_carry__1_n_1\,
      CO(5) => \math_result_carry__1_n_2\,
      CO(4) => \math_result_carry__1_n_3\,
      CO(3) => \math_result_carry__1_n_4\,
      CO(2) => \math_result_carry__1_n_5\,
      CO(1) => \math_result_carry__1_n_6\,
      CO(0) => \math_result_carry__1_n_7\,
      DI(7 downto 0) => reg_A(23 downto 16),
      O(7 downto 0) => data3(23 downto 16),
      S(7) => \math_result_carry__1_i_1_n_0\,
      S(6) => \math_result_carry__1_i_2_n_0\,
      S(5) => \math_result_carry__1_i_3_n_0\,
      S(4) => \math_result_carry__1_i_4_n_0\,
      S(3) => \math_result_carry__1_i_5_n_0\,
      S(2) => \math_result_carry__1_i_6_n_0\,
      S(1) => \math_result_carry__1_i_7_n_0\,
      S(0) => \math_result_carry__1_i_8_n_0\
    );
\math_result_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(23),
      I1 => reg_B(23),
      O => \math_result_carry__1_i_1_n_0\
    );
\math_result_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(22),
      I1 => reg_B(22),
      O => \math_result_carry__1_i_2_n_0\
    );
\math_result_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(21),
      I1 => reg_B(21),
      O => \math_result_carry__1_i_3_n_0\
    );
\math_result_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(20),
      I1 => reg_B(20),
      O => \math_result_carry__1_i_4_n_0\
    );
\math_result_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(19),
      I1 => reg_B(19),
      O => \math_result_carry__1_i_5_n_0\
    );
\math_result_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(18),
      I1 => reg_B(18),
      O => \math_result_carry__1_i_6_n_0\
    );
\math_result_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(17),
      I1 => reg_B(17),
      O => \math_result_carry__1_i_7_n_0\
    );
\math_result_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(16),
      I1 => reg_B(16),
      O => \math_result_carry__1_i_8_n_0\
    );
\math_result_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \math_result_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_math_result_carry__2_CO_UNCONNECTED\(7),
      CO(6) => \math_result_carry__2_n_1\,
      CO(5) => \math_result_carry__2_n_2\,
      CO(4) => \math_result_carry__2_n_3\,
      CO(3) => \math_result_carry__2_n_4\,
      CO(2) => \math_result_carry__2_n_5\,
      CO(1) => \math_result_carry__2_n_6\,
      CO(0) => \math_result_carry__2_n_7\,
      DI(7) => '0',
      DI(6 downto 0) => reg_A(30 downto 24),
      O(7 downto 0) => data3(31 downto 24),
      S(7) => \math_result_carry__2_i_1_n_0\,
      S(6) => \math_result_carry__2_i_2_n_0\,
      S(5) => \math_result_carry__2_i_3_n_0\,
      S(4) => \math_result_carry__2_i_4_n_0\,
      S(3) => \math_result_carry__2_i_5_n_0\,
      S(2) => \math_result_carry__2_i_6_n_0\,
      S(1) => \math_result_carry__2_i_7_n_0\,
      S(0) => \math_result_carry__2_i_8_n_0\
    );
\math_result_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(31),
      I1 => reg_B(31),
      O => \math_result_carry__2_i_1_n_0\
    );
\math_result_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(30),
      I1 => reg_B(30),
      O => \math_result_carry__2_i_2_n_0\
    );
\math_result_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(29),
      I1 => reg_B(29),
      O => \math_result_carry__2_i_3_n_0\
    );
\math_result_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(28),
      I1 => reg_B(28),
      O => \math_result_carry__2_i_4_n_0\
    );
\math_result_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(27),
      I1 => reg_B(27),
      O => \math_result_carry__2_i_5_n_0\
    );
\math_result_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(26),
      I1 => reg_B(26),
      O => \math_result_carry__2_i_6_n_0\
    );
\math_result_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(25),
      I1 => reg_B(25),
      O => \math_result_carry__2_i_7_n_0\
    );
\math_result_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(24),
      I1 => reg_B(24),
      O => \math_result_carry__2_i_8_n_0\
    );
math_result_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(7),
      I1 => reg_B(7),
      O => math_result_carry_i_1_n_0
    );
math_result_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(6),
      I1 => reg_B(6),
      O => math_result_carry_i_2_n_0
    );
math_result_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(5),
      I1 => reg_B(5),
      O => math_result_carry_i_3_n_0
    );
math_result_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(4),
      I1 => reg_B(4),
      O => math_result_carry_i_4_n_0
    );
math_result_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(3),
      I1 => reg_B(3),
      O => math_result_carry_i_5_n_0
    );
math_result_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(2),
      I1 => reg_B(2),
      O => math_result_carry_i_6_n_0
    );
math_result_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(1),
      I1 => reg_B(1),
      O => math_result_carry_i_7_n_0
    );
math_result_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_A(0),
      I1 => reg_B(0),
      O => math_result_carry_i_8_n_0
    );
\reg_A[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => ip_we(2),
      I1 => ip_we(3),
      I2 => ip_we(0),
      I3 => ip_we(1),
      I4 => \ip_dout[31]_INST_0_i_2_n_0\,
      O => reg_A_1
    );
\reg_A[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \reg_A[31]_i_2_n_0\
    );
\reg_A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(0),
      Q => reg_A(0)
    );
\reg_A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(10),
      Q => reg_A(10)
    );
\reg_A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(11),
      Q => reg_A(11)
    );
\reg_A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(12),
      Q => reg_A(12)
    );
\reg_A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(13),
      Q => reg_A(13)
    );
\reg_A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(14),
      Q => reg_A(14)
    );
\reg_A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(15),
      Q => reg_A(15)
    );
\reg_A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(16),
      Q => reg_A(16)
    );
\reg_A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(17),
      Q => reg_A(17)
    );
\reg_A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(18),
      Q => reg_A(18)
    );
\reg_A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(19),
      Q => reg_A(19)
    );
\reg_A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(1),
      Q => reg_A(1)
    );
\reg_A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(20),
      Q => reg_A(20)
    );
\reg_A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(21),
      Q => reg_A(21)
    );
\reg_A_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(22),
      Q => reg_A(22)
    );
\reg_A_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(23),
      Q => reg_A(23)
    );
\reg_A_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(24),
      Q => reg_A(24)
    );
\reg_A_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(25),
      Q => reg_A(25)
    );
\reg_A_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(26),
      Q => reg_A(26)
    );
\reg_A_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(27),
      Q => reg_A(27)
    );
\reg_A_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(28),
      Q => reg_A(28)
    );
\reg_A_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(29),
      Q => reg_A(29)
    );
\reg_A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(2),
      Q => reg_A(2)
    );
\reg_A_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(30),
      Q => reg_A(30)
    );
\reg_A_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(31),
      Q => reg_A(31)
    );
\reg_A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(3),
      Q => reg_A(3)
    );
\reg_A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(4),
      Q => reg_A(4)
    );
\reg_A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(5),
      Q => reg_A(5)
    );
\reg_A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(6),
      Q => reg_A(6)
    );
\reg_A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(7),
      Q => reg_A(7)
    );
\reg_A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(8),
      Q => reg_A(8)
    );
\reg_A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_A_1,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(9),
      Q => reg_A(9)
    );
\reg_B[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => ip_we(2),
      I1 => ip_we(3),
      I2 => ip_we(0),
      I3 => ip_we(1),
      I4 => \ip_dout[31]_INST_0_i_1_n_0\,
      O => reg_B_0
    );
\reg_B_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(0),
      Q => reg_B(0)
    );
\reg_B_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(10),
      Q => reg_B(10)
    );
\reg_B_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(11),
      Q => reg_B(11)
    );
\reg_B_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(12),
      Q => reg_B(12)
    );
\reg_B_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(13),
      Q => reg_B(13)
    );
\reg_B_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(14),
      Q => reg_B(14)
    );
\reg_B_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(15),
      Q => reg_B(15)
    );
\reg_B_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(16),
      Q => reg_B(16)
    );
\reg_B_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(17),
      Q => reg_B(17)
    );
\reg_B_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(18),
      Q => reg_B(18)
    );
\reg_B_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(19),
      Q => reg_B(19)
    );
\reg_B_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(1),
      Q => reg_B(1)
    );
\reg_B_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(20),
      Q => reg_B(20)
    );
\reg_B_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(21),
      Q => reg_B(21)
    );
\reg_B_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(22),
      Q => reg_B(22)
    );
\reg_B_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(23),
      Q => reg_B(23)
    );
\reg_B_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(24),
      Q => reg_B(24)
    );
\reg_B_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(25),
      Q => reg_B(25)
    );
\reg_B_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(26),
      Q => reg_B(26)
    );
\reg_B_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(27),
      Q => reg_B(27)
    );
\reg_B_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(28),
      Q => reg_B(28)
    );
\reg_B_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(29),
      Q => reg_B(29)
    );
\reg_B_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(2),
      Q => reg_B(2)
    );
\reg_B_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(30),
      Q => reg_B(30)
    );
\reg_B_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(31),
      Q => reg_B(31)
    );
\reg_B_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(3),
      Q => reg_B(3)
    );
\reg_B_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(4),
      Q => reg_B(4)
    );
\reg_B_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(5),
      Q => reg_B(5)
    );
\reg_B_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(6),
      Q => reg_B(6)
    );
\reg_B_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(7),
      Q => reg_B(7)
    );
\reg_B_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(8),
      Q => reg_B(8)
    );
\reg_B_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => reg_B_0,
      CLR => \reg_A[31]_i_2_n_0\,
      D => ip_din(9),
      Q => reg_B(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_riscv_v2_calc_ip_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    ip_real_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_en : in STD_LOGIC;
    ip_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_riscv_v2_calc_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_riscv_v2_calc_ip_0_0 : entity is "soc_riscv_v2_calc_ip_0_0,calc_ip,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_riscv_v2_calc_ip_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of soc_riscv_v2_calc_ip_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_riscv_v2_calc_ip_0_0 : entity is "calc_ip,Vivado 2025.1";
end soc_riscv_v2_calc_ip_0_0;

architecture STRUCTURE of soc_riscv_v2_calc_ip_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN soc_riscv_v2_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.soc_riscv_v2_calc_ip_0_0_calc_ip
     port map (
      clk => clk,
      ip_din(31 downto 0) => ip_din(31 downto 0),
      ip_dout(31 downto 0) => ip_dout(31 downto 0),
      ip_en => ip_en,
      ip_real_addr(7 downto 0) => ip_real_addr(7 downto 0),
      ip_we(3 downto 0) => ip_we(3 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
