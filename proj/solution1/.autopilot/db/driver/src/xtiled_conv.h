// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XTILED_CONV_H
#define XTILED_CONV_H

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
#include "xtiled_conv_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XTiled_conv_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XTiled_conv;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTiled_conv_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTiled_conv_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTiled_conv_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTiled_conv_ReadReg(BaseAddress, RegOffset) \
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
int XTiled_conv_Initialize(XTiled_conv *InstancePtr, u16 DeviceId);
XTiled_conv_Config* XTiled_conv_LookupConfig(u16 DeviceId);
int XTiled_conv_CfgInitialize(XTiled_conv *InstancePtr, XTiled_conv_Config *ConfigPtr);
#else
int XTiled_conv_Initialize(XTiled_conv *InstancePtr, const char* InstanceName);
int XTiled_conv_Release(XTiled_conv *InstancePtr);
#endif

void XTiled_conv_Start(XTiled_conv *InstancePtr);
u32 XTiled_conv_IsDone(XTiled_conv *InstancePtr);
u32 XTiled_conv_IsIdle(XTiled_conv *InstancePtr);
u32 XTiled_conv_IsReady(XTiled_conv *InstancePtr);
void XTiled_conv_EnableAutoRestart(XTiled_conv *InstancePtr);
void XTiled_conv_DisableAutoRestart(XTiled_conv *InstancePtr);

void XTiled_conv_Set_input_feature_map(XTiled_conv *InstancePtr, u64 Data);
u64 XTiled_conv_Get_input_feature_map(XTiled_conv *InstancePtr);
void XTiled_conv_Set_layer_weights(XTiled_conv *InstancePtr, u64 Data);
u64 XTiled_conv_Get_layer_weights(XTiled_conv *InstancePtr);
void XTiled_conv_Set_linear_weights(XTiled_conv *InstancePtr, u64 Data);
u64 XTiled_conv_Get_linear_weights(XTiled_conv *InstancePtr);
void XTiled_conv_Set_output_feature_map(XTiled_conv *InstancePtr, u64 Data);
u64 XTiled_conv_Get_output_feature_map(XTiled_conv *InstancePtr);

void XTiled_conv_InterruptGlobalEnable(XTiled_conv *InstancePtr);
void XTiled_conv_InterruptGlobalDisable(XTiled_conv *InstancePtr);
void XTiled_conv_InterruptEnable(XTiled_conv *InstancePtr, u32 Mask);
void XTiled_conv_InterruptDisable(XTiled_conv *InstancePtr, u32 Mask);
void XTiled_conv_InterruptClear(XTiled_conv *InstancePtr, u32 Mask);
u32 XTiled_conv_InterruptGetEnabled(XTiled_conv *InstancePtr);
u32 XTiled_conv_InterruptGetStatus(XTiled_conv *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
