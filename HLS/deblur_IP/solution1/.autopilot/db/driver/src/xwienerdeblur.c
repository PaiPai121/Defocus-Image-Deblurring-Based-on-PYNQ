// ==============================================================
// File generated on Sat Aug 01 17:20:58 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xwienerdeblur.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWienerdeblur_CfgInitialize(XWienerdeblur *InstancePtr, XWienerdeblur_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWienerdeblur_Start(XWienerdeblur *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWienerdeblur_IsDone(XWienerdeblur *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWienerdeblur_IsIdle(XWienerdeblur *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWienerdeblur_IsReady(XWienerdeblur *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWienerdeblur_EnableAutoRestart(XWienerdeblur *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XWienerdeblur_DisableAutoRestart(XWienerdeblur *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XWienerdeblur_Set_rows_V(XWienerdeblur *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_ROWS_V_DATA, Data);
}

u32 XWienerdeblur_Get_rows_V(XWienerdeblur *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_ROWS_V_DATA);
    return Data;
}

void XWienerdeblur_Set_cols_V(XWienerdeblur *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_COLS_V_DATA, Data);
}

u32 XWienerdeblur_Get_cols_V(XWienerdeblur *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_COLS_V_DATA);
    return Data;
}

void XWienerdeblur_InterruptGlobalEnable(XWienerdeblur *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_GIE, 1);
}

void XWienerdeblur_InterruptGlobalDisable(XWienerdeblur *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_GIE, 0);
}

void XWienerdeblur_InterruptEnable(XWienerdeblur *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_IER);
    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XWienerdeblur_InterruptDisable(XWienerdeblur *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_IER);
    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XWienerdeblur_InterruptClear(XWienerdeblur *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWienerdeblur_WriteReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XWienerdeblur_InterruptGetEnabled(XWienerdeblur *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_IER);
}

u32 XWienerdeblur_InterruptGetStatus(XWienerdeblur *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWienerdeblur_ReadReg(InstancePtr->Control_bus_BaseAddress, XWIENERDEBLUR_CONTROL_BUS_ADDR_ISR);
}

