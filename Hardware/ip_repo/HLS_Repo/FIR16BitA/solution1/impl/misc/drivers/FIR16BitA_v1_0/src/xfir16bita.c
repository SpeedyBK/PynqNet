// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfir16bita.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFir16bita_CfgInitialize(XFir16bita *InstancePtr, XFir16bita_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bus_a_BaseAddress = ConfigPtr->Bus_a_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFir16bita_Start(XFir16bita *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_AP_CTRL) & 0x80;
    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFir16bita_IsDone(XFir16bita *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFir16bita_IsIdle(XFir16bita *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFir16bita_IsReady(XFir16bita *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFir16bita_EnableAutoRestart(XFir16bita *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_AP_CTRL, 0x80);
}

void XFir16bita_DisableAutoRestart(XFir16bita *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_AP_CTRL, 0);
}

void XFir16bita_Set_a(XFir16bita *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_A_DATA, Data);
}

u32 XFir16bita_Get_a(XFir16bita *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_A_DATA);
    return Data;
}

u32 XFir16bita_Get_c(XFir16bita *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_C_DATA);
    return Data;
}

u32 XFir16bita_Get_c_vld(XFir16bita *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_C_CTRL);
    return Data & 0x1;
}

void XFir16bita_InterruptGlobalEnable(XFir16bita *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_GIE, 1);
}

void XFir16bita_InterruptGlobalDisable(XFir16bita *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_GIE, 0);
}

void XFir16bita_InterruptEnable(XFir16bita *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_IER);
    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_IER, Register | Mask);
}

void XFir16bita_InterruptDisable(XFir16bita *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_IER);
    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_IER, Register & (~Mask));
}

void XFir16bita_InterruptClear(XFir16bita *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFir16bita_WriteReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_ISR, Mask);
}

u32 XFir16bita_InterruptGetEnabled(XFir16bita *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_IER);
}

u32 XFir16bita_InterruptGetStatus(XFir16bita *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFir16bita_ReadReg(InstancePtr->Bus_a_BaseAddress, XFIR16BITA_BUS_A_ADDR_ISR);
}

