vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconcat_v2_1_3
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconcat_v2_1_3 modelsim_lib/msim/xlconcat_v2_1_3
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ec67/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/2d50/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"h:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_processing_system7_0_0/AES_F_processing_system7_0_0_sim_netlist.vhdl" \
"../../../bd/AES_F/VHDL IP_code/GenerateKeys.vhd" \
"../../../bd/AES_F/VHDL IP_code/ShiftRows.vhd" \
"../../../bd/AES_F/VHDL IP_code/subBytes.vhd" \
"../../../bd/AES_F/VHDL IP_code/ComputeColumn.vhd" \
"../../../bd/AES_F/VHDL IP_code/MixColumns.vhd" \
"../../../bd/AES_F/VHDL IP_code/round.vhd" \
"../../../bd/AES_F/VHDL IP_code/LastRound.vhd" \
"../../../bd/AES_F/VHDL IP_code/design.vhd" \
"../../../bd/AES_F/ipshared/1df9/hdl/AES_ENC_v1_0_S00_AXI.vhd" \
"../../../bd/AES_F/VHDL IP_code/KeySchedule.vhd" \
"../../../bd/AES_F/ipshared/1df9/hdl/AES_ENC_v1_0.vhd" \
"../../../bd/AES_F/ip/AES_F_AES_ENC_0_0/sim/AES_F_AES_ENC_0_0.vhd" \
"../../../bd/AES_F/ipshared/bf00/hdl/AES_DEC_v1_0_S00_AXI.vhd" \
"../../../bd/AES_F/ipshared/bf00/hdl/AES_DEC_v1_0.vhd" \
"../../../bd/AES_F/ip/AES_F_AES_DEC_0_1/sim/AES_F_AES_DEC_0_1.vhd" \

vlog -work xlconcat_v2_1_3 -64 -incr "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ec67/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/2d50/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ec67/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/2d50/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_F/ip/AES_F_xlconcat_0_0/sim/AES_F_xlconcat_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"h:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_xbar_0/AES_F_xbar_0_sim_netlist.vhdl" \
"h:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_auto_pc_0/AES_F_auto_pc_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AES_F/ip/AES_F_rst_ps7_0_50M_0/sim/AES_F_rst_ps7_0_50M_0.vhd" \
"../../../bd/AES_F/sim/AES_F.vhd" \

vlog -work xil_defaultlib \
"glbl.v"
