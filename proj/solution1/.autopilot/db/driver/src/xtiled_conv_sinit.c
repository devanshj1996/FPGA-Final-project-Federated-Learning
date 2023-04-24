// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xtiled_conv.h"

extern XTiled_conv_Config XTiled_conv_ConfigTable[];

XTiled_conv_Config *XTiled_conv_LookupConfig(u16 DeviceId) {
	XTiled_conv_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTILED_CONV_NUM_INSTANCES; Index++) {
		if (XTiled_conv_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTiled_conv_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTiled_conv_Initialize(XTiled_conv *InstancePtr, u16 DeviceId) {
	XTiled_conv_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTiled_conv_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTiled_conv_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

