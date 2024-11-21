vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/xlconcat_v2_1_3
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xlconcat_v2_1_3 activehdl/xlconcat_v2_1_3
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ec67/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/2d50/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
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

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ec67/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/2d50/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ec67/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/2d50/hdl" "+incdir+../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_F/ip/AES_F_xlconcat_0_0/sim/AES_F_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"h:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_xbar_0/AES_F_xbar_0_sim_netlist.vhdl" \
"h:/SOC_Project/SOC_AES_PROJET/SOC_AES_PROJECT/VHDL_INTR/VHDL_INTR/VHDL_INTR.srcs/sources_1/bd/AES_F/ip/AES_F_auto_pc_0/AES_F_auto_pc_0_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../VHDL_INTR.srcs/sources_1/bd/AES_F/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/AES_F/ip/AES_F_rst_ps7_0_50M_0/sim/AES_F_rst_ps7_0_50M_0.vhd" \
"../../../bd/AES_F/sim/AES_F.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

