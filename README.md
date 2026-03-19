The file is Vivado, you can access all the verilog file in RISCV_SOC.srcs
The riscv cpu design follow the HOLY_CORE_RISCV design to gain deeper understanding of how everything work and build up

There are 2 wrapper
+ v1 consist of the cpu design on SoC, which we can input the assembly using vitis
+ v2 consists of the v1 but integrated a simple add IP and an addr_decoder to redirect the data to the correct place (DMEM/IP). I did this for better understanding of how multiple IP work togother

There are 2 vitis file for 2 wrapper accordingly (v1/v2)
