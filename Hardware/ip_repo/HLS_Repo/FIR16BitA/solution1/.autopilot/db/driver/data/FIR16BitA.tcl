# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XFir16bita" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_BUS_A_BASEADDR" \
        "C_S_AXI_BUS_A_HIGHADDR"

    xdefine_config_file $drv_handle "xfir16bita_g.c" "XFir16bita" \
        "DEVICE_ID" \
        "C_S_AXI_BUS_A_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XFir16bita" \
        "DEVICE_ID" \
        "C_S_AXI_BUS_A_BASEADDR" \
        "C_S_AXI_BUS_A_HIGHADDR"
}

