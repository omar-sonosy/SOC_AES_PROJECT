vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_6
vlib questa_lib/msim/processing_system7_vip_v1_0_8
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_19
vlib questa_lib/msim/axi_register_slice_v2_1_20
vlib questa_lib/msim/axi_protocol_converter_v2_1_20

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 questa_lib/msim/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 questa_lib/msim/processing_system7_vip_v1_0_8
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 questa_lib/msim/axi_data_fifo_v2_1_19
vmap axi_register_slice_v2_1_20 questa_lib/msim/axi_register_slice_v2_1_20
vmap axi_protocol_converter_v2_1_20 questa_lib/msim/axi_protocol_converter_v2_1_20

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6 -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8 -64 -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_aes/ip/design_aes_processing_system7_0_0/sim/design_aes_processing_system7_0_0.v" \
"../../../bd/design_aes/ipshared/0268/hdl/AES_IP_v1_0_S00_AXI.v" \
"../../../bd/design_aes/opencore/ip-cores-crypto_core_aes/rtl/aes_128.v" \
"../../../bd/design_aes/opencore/ip-cores-crypto_core_aes/rtl/round.v" \
"../../../bd/design_aes/opencore/ip-cores-crypto_core_aes/rtl/table.v" \
"../../../bd/design_aes/ipshared/0268/hdl/AES_IP_v1_0.v" \
"../../../bd/design_aes/ip/design_aes_AES_IP_0_0/sim/design_aes_AES_IP_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_aes/ip/design_aes_rst_ps7_0_50M_0/sim/design_aes_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_20 -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/ec67/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ipshared/2d50/hdl" "+incdir+../../../../SoC_project.srcs/sources_1/bd/design_aes/ip/design_aes_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_aes/ip/design_aes_auto_pc_0/sim/design_aes_auto_pc_0.v" \
"../../../bd/design_aes/sim/design_aes.v" \

vlog -work xil_defaultlib \
"glbl.v"

