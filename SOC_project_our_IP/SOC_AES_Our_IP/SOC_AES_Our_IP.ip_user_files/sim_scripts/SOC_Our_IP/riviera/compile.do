vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

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

vlog -work xpm  -sv2k12 "+incdir+../../../../SOC_AES_Our_IP.srcs/sources_1/bd/SOC_Our_IP/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_Our_IP.srcs/sources_1/bd/SOC_Our_IP/ipshared/2d50/hdl" "+incdir+../../../../SOC_AES_Our_IP.srcs/sources_1/bd/SOC_Our_IP/ip/SOC_Our_IP_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/SOC_Our_IP/ip/SOC_Our_IP_processing_system7_0_0/SOC_Our_IP_processing_system7_0_0_sim_netlist.vhdl" \
"../../../bd/SOC_Our_IP/ipshared/2174/hdl/AES_Our_IP_v1_0_S00_AXI.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/computeColumn.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/design.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/keySchedule.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/mixColumns.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/rcon.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/sbox.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/shiftRows.vhd" \
"../../../bd/SOC_Our_IP/Our_AES_IP/subBytes.vhd" \
"../../../bd/SOC_Our_IP/ipshared/2174/hdl/AES_Our_IP_v1_0.vhd" \
"../../../bd/SOC_Our_IP/ip/SOC_Our_IP_AES_Our_IP_0_0/sim/SOC_Our_IP_AES_Our_IP_0_0.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../SOC_AES_Our_IP.srcs/sources_1/bd/SOC_Our_IP/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../SOC_AES_Our_IP.srcs/sources_1/bd/SOC_Our_IP/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/SOC_Our_IP/ip/SOC_Our_IP_rst_ps7_0_50M_0/sim/SOC_Our_IP_rst_ps7_0_50M_0.vhd" \
"../../../bd/SOC_Our_IP/ip/SOC_Our_IP_auto_pc_0/SOC_Our_IP_auto_pc_0_sim_netlist.vhdl" \
"../../../bd/SOC_Our_IP/sim/SOC_Our_IP.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

