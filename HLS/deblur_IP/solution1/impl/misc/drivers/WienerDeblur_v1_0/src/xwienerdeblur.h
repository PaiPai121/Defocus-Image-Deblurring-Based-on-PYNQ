// ==============================================================
// File generated on Sat Aug 01 17:20:58 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XWIENERDEBLUR_H
#define XWIENERDEBLUR_H

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
#include "xwienerdeblur_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XWienerdeblur_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XWienerdeblur;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWienerdeblur_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWienerdeblur_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWienerdeblur_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWienerdeblur_ReadReg(BaseAddress, RegOffset) \
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
int XWienerdeblur_Initialize(XWienerdeblur *InstancePtr, u16 DeviceId);
XWienerdeblur_Config* XWienerdeblur_LookupConfig(u16 DeviceId);
int XWienerdeblur_CfgInitialize(XWienerdeblur *InstancePtr, XWienerdeblur_Config *ConfigPtr);
#else
int XWienerdeblur_Initialize(XWienerdeblur *InstancePtr, const char* InstanceName);
int XWienerdeblur_Release(XWienerdeblur *InstancePtr);
#endif

void XWienerdeblur_Start(XWienerdeblur *InstancePtr);
u32 XWienerdeblur_IsDone(XWienerdeblur *InstancePtr);
u32 XWienerdeblur_IsIdle(XWienerdeblur *InstancePtr);
u32 XWienerdeblur_IsReady(XWienerdeblur *InstancePtr);
void XWienerdeblur_EnableAutoRestart(XWienerdeblur *InstancePtr);
void XWienerdeblur_DisableAutoRestart(XWienerdeblur *InstancePtr);

void XWienerdeblur_Set_rows_V(XWienerdeblur *InstancePtr, u32 Data);
u32 XWienerdeblur_Get_rows_V(XWienerdeblur *InstancePtr);
void XWienerdeblur_Set_cols_V(XWienerdeblur *InstancePtr, u32 Data);
u32 XWienerdeblur_Get_cols_V(XWienerdeblur *InstancePtr);

void XWienerdeblur_InterruptGlobalEnable(XWienerdeblur *InstancePtr);
void XWienerdeblur_InterruptGlobalDisable(XWienerdeblur *InstancePtr);
void XWienerdeblur_InterruptEnable(XWienerdeblur *InstancePtr, u32 Mask);
void XWienerdeblur_InterruptDisable(XWienerdeblur *InstancePtr, u32 Mask);
void XWienerdeblur_InterruptClear(XWienerdeblur *InstancePtr, u32 Mask);
u32 XWienerdeblur_InterruptGetEnabled(XWienerdeblur *InstancePtr);
u32 XWienerdeblur_InterruptGetStatus(XWienerdeblur *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
