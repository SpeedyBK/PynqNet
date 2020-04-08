/*
 * send.c
 *
 *  Created on: 07.04.2020
 *      Author: benjamin
 */

#include <stdio.h>
#include <string.h>
#include "CustomDataTyps.h"
#include "xparameters.h"
#include "platform.h"
#include "platform_config.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xstatus.h"
#include "xgpio.h"

#include "lwip/err.h"
#include "lwip/tcp.h"
#if defined (__arm__) || defined (__aarch64__)
#include "xil_printf.h"
#endif

int start_send_app(){

	struct tcp_pcb *pcb;
	err_t err;
	unsigned port = 8;

	//Creating a new Connection
	pcb = tcp_new();

	//Checking if there is enough memory. If not, tcp_new() returns an Nullptr, and we can throw an errormessage.
	if (!pcb) {
		xil_printf("Error creating PCB. Out of Memory\n\r");
		return -1;
	}

	return 0;

}
