// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfir16bita.h"

extern XFir16bita_Config XFir16bita_ConfigTable[];

XFir16bita_Config *XFir16bita_LookupConfig(u16 DeviceId) {
	XFir16bita_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFIR16BITA_NUM_INSTANCES; Index++) {
		if (XFir16bita_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFir16bita_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFir16bita_Initialize(XFir16bita *InstancePtr, u16 DeviceId) {
	XFir16bita_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFir16bita_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFir16bita_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

