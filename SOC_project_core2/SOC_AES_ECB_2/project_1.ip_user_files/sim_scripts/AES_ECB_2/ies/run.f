-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_6 -sv \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_8 -sv \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/AES_ECB_2/ip/AES_ECB_2_processing_system7_0_0/sim/AES_ECB_2_processing_system7_0_0.v" \
  "../../../bd/AES_ECB_2/ipshared/4d18/hdl/AES_ECB_ENCRYPT_2_v1_0_S00_AXI.v" \
  "../../../bd/AES_ECB_2/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_cipher_top.v" \
  "../../../bd/AES_ECB_2/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_key_expand_128.v" \
  "../../../bd/AES_ECB_2/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_rcon.v" \
  "../../../bd/AES_ECB_2/AES_IP_CORE/AES_IP_CORE/rtl/verilog/aes_sbox.v" \
  "../../../bd/AES_ECB_2/ipshared/4d18/hdl/AES_ECB_ENCRYPT_2_v1_0.v" \
  "../../../bd/AES_ECB_2/ip/AES_ECB_2_AES_ECB_ENCRYPT_2_0_0/sim/AES_ECB_2_AES_ECB_ENCRYPT_2_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/AES_ECB_2/ip/AES_ECB_2_rst_ps7_0_50M_0/sim/AES_ECB_2_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_19 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_20 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_20 \
  "../../../../project_1.srcs/sources_1/bd/AES_ECB_2/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/AES_ECB_2/ip/AES_ECB_2_auto_pc_0/sim/AES_ECB_2_auto_pc_0.v" \
  "../../../bd/AES_ECB_2/sim/AES_ECB_2.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

