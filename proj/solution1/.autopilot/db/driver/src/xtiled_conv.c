// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1.2 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xtiled_conv.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTiled_conv_CfgInitialize(XTiled_conv *InstancePtr, XTiled_conv_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTiled_conv_Start(XTiled_conv *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTiled_conv_IsDone(XTiled_conv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTiled_conv_IsIdle(XTiled_conv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTiled_conv_IsReady(XTiled_conv *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTiled_conv_EnableAutoRestart(XTiled_conv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTiled_conv_DisableAutoRestart(XTiled_conv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_AP_CTRL, 0);
}

void XTiled_conv_Set_input_feature_map(XTiled_conv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA, (u32)(Data));
    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XTiled_conv_Get_input_feature_map(XTiled_conv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA);
    Data += (u64)XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_INPUT_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XTiled_conv_Set_layer_weights(XTiled_conv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LAYER_WEIGHTS_DATA, (u32)(Data));
    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LAYER_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XTiled_conv_Get_layer_weights(XTiled_conv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LAYER_WEIGHTS_DATA);
    Data += (u64)XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LAYER_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XTiled_conv_Set_linear_weights(XTiled_conv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LINEAR_WEIGHTS_DATA, (u32)(Data));
    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LINEAR_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XTiled_conv_Get_linear_weights(XTiled_conv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LINEAR_WEIGHTS_DATA);
    Data += (u64)XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_LINEAR_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XTiled_conv_Set_output_feature_map(XTiled_conv *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA, (u32)(Data));
    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA + 4, (u32)(Data >> 32));
}

u64 XTiled_conv_Get_output_feature_map(XTiled_conv *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA);
    Data += (u64)XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_OUTPUT_FEATURE_MAP_DATA + 4) << 32;
    return Data;
}

void XTiled_conv_InterruptGlobalEnable(XTiled_conv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_GIE, 1);
}

void XTiled_conv_InterruptGlobalDisable(XTiled_conv *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_GIE, 0);
}

void XTiled_conv_InterruptEnable(XTiled_conv *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_IER);
    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_IER, Register | Mask);
}

void XTiled_conv_InterruptDisable(XTiled_conv *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_IER);
    XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTiled_conv_InterruptClear(XTiled_conv *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    //XTiled_conv_WriteReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_ISR, Mask);
}

u32 XTiled_conv_InterruptGetEnabled(XTiled_conv *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_IER);
}

u32 XTiled_conv_InterruptGetStatus(XTiled_conv *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    // Current Interrupt Clear Behavior is Clear on Read(COR).
    return XTiled_conv_ReadReg(InstancePtr->Control_BaseAddress, XTILED_CONV_CONTROL_ADDR_ISR);
}

