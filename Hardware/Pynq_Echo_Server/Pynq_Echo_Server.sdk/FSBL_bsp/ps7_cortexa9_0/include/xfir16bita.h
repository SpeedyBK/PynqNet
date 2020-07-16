// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFIR16BITA_H
#define XFIR16BITA_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfir16bita_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Bus_a_BaseAddress;
} XFir16bita_Config;
#endif

typedef struct {
    u32 Bus_a_BaseAddress;
    u32 IsReady;
} XFir16bita;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFir16bita_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFir16bita_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFir16bita_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFir16bita_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XFir16bita_Initialize(XFir16bita *InstancePtr, u16 DeviceId);
XFir16bita_Config* XFir16bita_LookupConfig(u16 DeviceId);
int XFir16bita_CfgInitialize(XFir16bita *InstancePtr, XFir16bita_Config *ConfigPtr);
#else
int XFir16bita_Initialize(XFir16bita *InstancePtr, const char* InstanceName);
int XFir16bita_Release(XFir16bita *InstancePtr);
#endif

void XFir16bita_Start(XFir16bita *InstancePtr);
u32 XFir16bita_IsDone(XFir16bita *InstancePtr);
u32 XFir16bita_IsIdle(XFir16bita *InstancePtr);
u32 XFir16bita_IsReady(XFir16bita *InstancePtr);
void XFir16bita_EnableAutoRestart(XFir16bita *InstancePtr);
void XFir16bita_DisableAutoRestart(XFir16bita *InstancePtr);

void XFir16bita_Set_a(XFir16bita *InstancePtr, u32 Data);
u32 XFir16bita_Get_a(XFir16bita *InstancePtr);
u32 XFir16bita_Get_c(XFir16bita *InstancePtr);
u32 XFir16bita_Get_c_vld(XFir16bita *InstancePtr);

void XFir16bita_InterruptGlobalEnable(XFir16bita *InstancePtr);
void XFir16bita_InterruptGlobalDisable(XFir16bita *InstancePtr);
void XFir16bita_InterruptEnable(XFir16bita *InstancePtr, u32 Mask);
void XFir16bita_InterruptDisable(XFir16bita *InstancePtr, u32 Mask);
void XFir16bita_InterruptClear(XFir16bita *InstancePtr, u32 Mask);
u32 XFir16bita_InterruptGetEnabled(XFir16bita *InstancePtr);
u32 XFir16bita_InterruptGetStatus(XFir16bita *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
