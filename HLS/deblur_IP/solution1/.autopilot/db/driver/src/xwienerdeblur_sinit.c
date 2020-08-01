// ==============================================================
// File generated on Sat Aug 01 17:20:58 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xwienerdeblur.h"

extern XWienerdeblur_Config XWienerdeblur_ConfigTable[];

XWienerdeblur_Config *XWienerdeblur_LookupConfig(u16 DeviceId) {
	XWienerdeblur_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWIENERDEBLUR_NUM_INSTANCES; Index++) {
		if (XWienerdeblur_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWienerdeblur_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWienerdeblur_Initialize(XWienerdeblur *InstancePtr, u16 DeviceId) {
	XWienerdeblur_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWienerdeblur_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWienerdeblur_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

