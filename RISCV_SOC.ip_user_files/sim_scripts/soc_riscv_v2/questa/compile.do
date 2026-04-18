vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_21
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_21
vlib questa_lib/msim/xlconstant_v1_1_10
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 questa_lib/msim/axi_vip_v1_1_21
vmap zynq_ultra_ps_e_vip_v1_0_21 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_21
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"E:/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37  -93  \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_gpio_0_0/sim/soc_riscv_v2_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ipshared/48dd/src/axi_lutram_wrapper.v" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_lutram_wrapper_0_0/sim/soc_riscv_v2_axi_lutram_wrapper_0_0.v" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_lutram_wrapper_1_0/sim/soc_riscv_v2_axi_lutram_wrapper_1_0.v" \
"../../../bd/soc_riscv_v2/ipshared/6a92/src/alu.v" \
"../../../bd/soc_riscv_v2/ipshared/6a92/src/byte_enable_decoder.v" \
"../../../bd/soc_riscv_v2/ipshared/6a92/src/control.v" \
"../../../bd/soc_riscv_v2/ipshared/6a92/src/reader.v" \
"../../../bd/soc_riscv_v2/ipshared/6a92/src/regfile.v" \
"../../../bd/soc_riscv_v2/ipshared/6a92/src/signext.v" \
"../../../bd/soc_riscv_v2/ipshared/6a92/src/cpu.v" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_cpu_0_0/sim/soc_riscv_v2_cpu_0_0.v" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_calc_ip_0_0/sim/soc_riscv_v2_calc_ip_0_0.v" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_addr_decoder_0_0/sim/soc_riscv_v2_addr_decoder_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_21  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_zynq_ultra_ps_e_0_0/sim/soc_riscv_v2_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work xlconstant_v1_1_10  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_0/sim/bd_8c31_one_0.v" \

vcom -work proc_sys_reset_v5_0_17  -93  \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_1/sim/bd_8c31_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_2/sim/bd_8c31_arinsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_3/sim/bd_8c31_rinsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_4/sim/bd_8c31_awinsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_5/sim/bd_8c31_winsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_6/sim/bd_8c31_binsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_7/sim/bd_8c31_aroutsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_8/sim/bd_8c31_routsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_9/sim/bd_8c31_awoutsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_10/sim/bd_8c31_woutsw_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_11/sim/bd_8c31_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_12/sim/bd_8c31_arni_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_13/sim/bd_8c31_rni_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_14/sim/bd_8c31_awni_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_15/sim/bd_8c31_wni_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_16/sim/bd_8c31_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_17/sim/bd_8c31_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_18/sim/bd_8c31_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_19/sim/bd_8c31_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_20/sim/bd_8c31_s00a2s_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_21/sim/bd_8c31_sarn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_22/sim/bd_8c31_srn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_23/sim/bd_8c31_sawn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_24/sim/bd_8c31_swn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_25/sim/bd_8c31_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_26/sim/bd_8c31_m00s2a_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_27/sim/bd_8c31_m00arn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_28/sim/bd_8c31_m00rn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_29/sim/bd_8c31_m00awn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_30/sim/bd_8c31_m00wn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_31/sim/bd_8c31_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_32/sim/bd_8c31_m00e_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_33/sim/bd_8c31_m01s2a_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_34/sim/bd_8c31_m01arn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_35/sim/bd_8c31_m01rn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_36/sim/bd_8c31_m01awn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_37/sim/bd_8c31_m01wn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_38/sim/bd_8c31_m01bn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_39/sim/bd_8c31_m01e_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_40/sim/bd_8c31_m02s2a_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_41/sim/bd_8c31_m02arn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_42/sim/bd_8c31_m02rn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_43/sim/bd_8c31_m02awn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_44/sim/bd_8c31_m02wn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_45/sim/bd_8c31_m02bn_0.sv" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/ip/ip_46/sim/bd_8c31_m02e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/bd_0/sim/bd_8c31.v" \

vlog -work axi_register_slice_v2_1_35  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_21 -L xilinx_vip "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_axi_smc_3/sim/soc_riscv_v2_axi_smc_3.sv" \

vcom -work xil_defaultlib  -93  \
"../../../bd/soc_riscv_v2/ip/soc_riscv_v2_rst_ps8_0_99M_0/sim/soc_riscv_v2_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/ec67/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/7711/hdl" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/f0b6/hdl/verilog" "+incdir+../../../../RISCV_SOC.gen/sources_1/bd/soc_riscv_v2/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../Xilinx/2025.1/Vivado/data/rsb/busdef" "+incdir+E:/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/soc_riscv_v2/sim/soc_riscv_v2.v" \

vlog -work xil_defaultlib \
"glbl.v"

