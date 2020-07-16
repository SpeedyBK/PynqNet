-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Echo_Server/ip/Echo_Server_processing_system7_0_0/sim/Echo_Server_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Echo_Server/ip/Echo_Server_rst_ps7_0_100M_0/sim/Echo_Server_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Echo_Server/ip/Echo_Server_xbar_0/sim/Echo_Server_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Echo_Server/ipshared/48bd/hdl/DisplayController.vhd" \
  "../../../bd/Echo_Server/ipshared/48bd/hdl/SixDigitHexDisplay_v1_0_S00_AXI.vhd" \
  "../../../bd/Echo_Server/ipshared/48bd/hdl/SixDigitHexDisplay_v1_0.vhd" \
  "../../../bd/Echo_Server/ip/Echo_Server_SixDigitHexDisplay_0_0/sim/Echo_Server_SixDigitHexDisplay_0_0.vhd" \
  "../../../bd/Echo_Server/ipshared/8a9a/hdl/ManInput.vhd" \
  "../../../bd/Echo_Server/ipshared/8a9a/hdl/ManInput_v1_0_S00_AXI.vhd" \
  "../../../bd/Echo_Server/ipshared/8a9a/hdl/ManInput_v1_0.vhd" \
  "../../../bd/Echo_Server/ip/Echo_Server_ManInput_0_0/sim/Echo_Server_ManInput_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_21 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/9c6e/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Echo_Server/ip/Echo_Server_axi_gpio_1_0/sim/Echo_Server_axi_gpio_1_0.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_15 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_8 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/vhdl/FIR16BitA_BUS_A_s_axi.vhd" \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/vhdl/FIR16BitA_fmul_32ns_32ns_32_4_max_dsp_1.vhd" \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/vhdl/FIR16BitA_m_filterArray.vhd" \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/vhdl/FIR16BitA_sitofp_32s_32_6_1.vhd" \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/vhdl/p_hls_fptosi_float_i.vhd" \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/vhdl/FIR16BitA.vhd" \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/ip/FIR16BitA_ap_fmul_2_max_dsp_32.vhd" \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/75a9/hdl/ip/FIR16BitA_ap_sitofp_4_no_dsp_32.vhd" \
  "../../../bd/Echo_Server/ip/Echo_Server_FIR16BitA_0_0/sim/Echo_Server_FIR16BitA_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../Pynq_Echo_Server.srcs/sources_1/bd/Echo_Server/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Echo_Server/ip/Echo_Server_auto_pc_0/sim/Echo_Server_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Echo_Server/sim/Echo_Server.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

