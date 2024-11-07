vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_6
vlib riviera/processing_system7_vip_v1_0_8
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_19
vlib riviera/axi_register_slice_v2_1_20
vlib riviera/axi_protocol_converter_v2_1_20
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 riviera/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 riviera/processing_system7_vip_v1_0_8
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 riviera/axi_data_fifo_v2_1_19
vmap axi_register_slice_v2_1_20 riviera/axi_register_slice_v2_1_20
vmap axi_protocol_converter_v2_1_20 riviera/axi_protocol_converter_v2_1_20
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

vlog -work xpm  -sv2k12 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_ECB/ip/AES_ECB_processing_system7_0_0/sim/AES_ECB_processing_system7_0_0.v" \
"../../../bd/AES_ECB/ipshared/fdc6/hdl/AES_ECB_2_version2_v1_0_S00_AXI.v" \
"../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_cipher_top.v" \
"../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_key_expand_128.v" \
"../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_rcon.v" \
"../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_sbox.v" \
"../../../bd/AES_ECB/ipshared/fdc6/hdl/AES_ECB_2_version2_v1_0.v" \
"../../../bd/AES_ECB/ip/AES_ECB_AES_ECB_2_version2_0_0/sim/AES_ECB_AES_ECB_2_version2_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_ECB/ip/AES_ECB_auto_pc_0/sim/AES_ECB_auto_pc_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/AES_ECB/ip/AES_ECB_rst_ps7_0_50M_0/sim/AES_ECB_rst_ps7_0_50M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/ec67/hdl" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ipshared/2d50/hdl" "+incdir+../../../bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/ip/AES_ECB_processing_system7_0_0" "+incdir+../../../../SOC_AES_ECB_2_version2.srcs/sources_1/bd/AES_ECB/AES_IP_CORE/AES_IP_CORE/rtl/verilog" "+incdir+C:/Xilinx/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/AES_ECB/sim/AES_ECB.v" \

vlog -work xil_defaultlib \
"glbl.v"

