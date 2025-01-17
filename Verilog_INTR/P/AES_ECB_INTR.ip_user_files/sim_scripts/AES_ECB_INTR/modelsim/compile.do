vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_6
vlib modelsim_lib/msim/processing_system7_vip_v1_0_8
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_20
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_19
vlib modelsim_lib/msim/axi_crossbar_v2_1_21
vlib modelsim_lib/msim/xlconcat_v2_1_3
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_20

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 modelsim_lib/msim/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 modelsim_lib/msim/processing_system7_vip_v1_0_8
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_20 modelsim_lib/msim/axi_register_slice_v2_1_20
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 modelsim_lib/msim/axi_data_fifo_v2_1_19
vmap axi_crossbar_v2_1_21 modelsim_lib/msim/axi_crossbar_v2_1_21
vmap xlconcat_v2_1_3 modelsim_lib/msim/xlconcat_v2_1_3
vmap axi_protocol_converter_v2_1_20 modelsim_lib/msim/axi_protocol_converter_v2_1_20

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

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6 -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8 -64 -incr -sv -L axi_vip_v1_1_6 -L processing_system7_vip_v1_0_8 -L xilinx_vip "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0/sim/AES_ECB_INTR_processing_system7_0_0.v" \
"../../../bd/AES_ECB_INTR/ipshared/3871/hdl/AES_ECB_INTR_v1_0_S00_AXI.v" \
"../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_cipher_top.v" \
"../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_key_expand_128.v" \
"../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_rcon.v" \
"../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_sbox.v" \
"../../../bd/AES_ECB_INTR/ipshared/3871/hdl/AES_ECB_INTR_v1_0.v" \
"../../../bd/AES_ECB_INTR/ip/AES_ECB_INTR_AES_ECB_INTR_0_0/sim/AES_ECB_INTR_AES_ECB_INTR_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/AES_ECB_INTR/ip/AES_ECB_INTR_rst_ps7_0_50M_0/sim/AES_ECB_INTR_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_21 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/6b0d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_ECB_INTR/ip/AES_ECB_INTR_xbar_0/sim/AES_ECB_INTR_xbar_0.v" \
"../../../bd/AES_ECB_INTR/ipshared/0773/hdl/AES_ECB_INTR_DEC_v1_0_S00_AXI.v" \
"../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_inv_cipher_top.v" \
"../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_inv_sbox.v" \
"../../../bd/AES_ECB_INTR/ipshared/0773/hdl/AES_ECB_INTR_DEC_v1_0.v" \
"../../../bd/AES_ECB_INTR/ip/AES_ECB_INTR_AES_ECB_INTR_DEC_0_1/sim/AES_ECB_INTR_AES_ECB_INTR_DEC_0_1.v" \

vlog -work xlconcat_v2_1_3 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_ECB_INTR/ip/AES_ECB_INTR_xlconcat_0_0/sim/AES_ECB_INTR_xlconcat_0_0.v" \

vlog -work axi_protocol_converter_v2_1_20 -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/ec67/hdl" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/ip/AES_ECB_INTR_processing_system7_0_0" "+incdir+../../../../AES_ECB_INTR.srcs/sources_1/bd/AES_ECB_INTR/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_ECB_INTR/ip/AES_ECB_INTR_auto_pc_0/sim/AES_ECB_INTR_auto_pc_0.v" \
"../../../bd/AES_ECB_INTR/sim/AES_ECB_INTR.v" \

vlog -work xil_defaultlib \
"glbl.v"

