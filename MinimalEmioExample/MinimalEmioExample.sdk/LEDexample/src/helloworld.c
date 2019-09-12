/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "xparameters.h"
#include "xgpiops.h"

static XGpioPs mio_emio_pmod2;

#define LED_DELAY 	12000000
#define EMIO_54 	54
#define EMIO_55 	55
#define EMIO_56 	56
#define EMIO_57 	57
#define BANK2 		2

int main(void)
{
	int number = 0;
	int count = 0;
	int a[4] = { 0 };
	int Delay;
	XGpioPs_Config *ConfigPtrPS;

    xil_printf("Hello Zynq MIO EMIO AXI GPIO\n\r");

	ConfigPtrPS = XGpioPs_LookupConfig(0);
	XGpioPs_CfgInitialize(&mio_emio_pmod2, ConfigPtrPS,
					ConfigPtrPS->BaseAddr);

    XGpioPs_SetDirectionPin(&mio_emio_pmod2, EMIO_54, 1);
    XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, EMIO_54, 1);
    XGpioPs_SetDirectionPin(&mio_emio_pmod2, EMIO_55, 1);
    XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, EMIO_55, 1);
    XGpioPs_SetDirectionPin(&mio_emio_pmod2, EMIO_56, 1);
    XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, EMIO_56, 1);
    XGpioPs_SetDirectionPin(&mio_emio_pmod2, EMIO_57, 1);
    XGpioPs_SetOutputEnablePin(&mio_emio_pmod2, EMIO_57, 1);

    while (1) {

    		number = count;
    		for (int i = 0; i < 4; i++){
    			a[i] = number % 2;
    			number = number >> 1;
    		}

    		if (count < 15 ){
    			count++;
    		}else {
    			count = 0;
    		}

    		// EMIO

    		XGpioPs_WritePin(&mio_emio_pmod2, EMIO_54, 0x0);
    		for (Delay = 0; Delay < LED_DELAY; Delay++);
			XGpioPs_WritePin(&mio_emio_pmod2, EMIO_54, a[0]);
			for (Delay = 0; Delay < LED_DELAY; Delay++);

    		XGpioPs_WritePin(&mio_emio_pmod2, EMIO_55, 0x0);
    		for (Delay = 0; Delay < LED_DELAY; Delay++);
			XGpioPs_WritePin(&mio_emio_pmod2, EMIO_55, a[1]);
			for (Delay = 0; Delay < LED_DELAY; Delay++);

    		XGpioPs_WritePin(&mio_emio_pmod2, EMIO_56, 0x0);
    		for (Delay = 0; Delay < LED_DELAY; Delay++);
			XGpioPs_WritePin(&mio_emio_pmod2, EMIO_56, a[2]);
			for (Delay = 0; Delay < LED_DELAY; Delay++);

    		XGpioPs_WritePin(&mio_emio_pmod2, EMIO_57, 0x0);
    		for (Delay = 0; Delay < LED_DELAY; Delay++);
			XGpioPs_WritePin(&mio_emio_pmod2, EMIO_57, a[3]);
			for (Delay = 0; Delay < LED_DELAY; Delay++);

    }
    return 0;
}
