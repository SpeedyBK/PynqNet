/*
 * CustomFunction.h
 *
 *  Created on: 10.02.2020
 *      Author: benjamin
 */

#ifndef SRC_CUSTOMFUNCTION_H_
#define SRC_CUSTOMFUNCTION_H_

#include "xil_cache.h"
#include "xil_printf.h"
#include "lwip/tcp.h"

char set_MACAddress(int switches){

	switch (switches){
	case 0 : return 0x10; break;
	case 1 : return 0x11; break;
	case 2 : return 0x12; break;
	case 3 : return 0x13; break;
	default : return 0x01; break;
	}
}

void set_IPAddress (ip_addr_t* ipaddr, int switches){
	switch (switches){
	 case 0  :
		 IP4_ADDR(ipaddr, 192, 168, 1, 10);
		 xil_printf("Configuring IP 192.168.1.10\r\n");
	 	 break;
	 case 1  :
		 IP4_ADDR(ipaddr, 192, 168, 1, 11);
		 xil_printf("Configuring IP 192.168.1.11\r\n");
		 break;
	 case 2  :
		 IP4_ADDR(ipaddr, 192, 168, 1, 12);
		 xil_printf("Configuring IP 192.168.1.12\r\n");
		 break;
	 case 3  :
		 IP4_ADDR(ipaddr, 192, 168, 1, 13);
		 xil_printf("Configuring IP 192.168.1.13\r\n");
		 break;
	 default :
		 IP4_ADDR(ipaddr, 192, 168, 1, 20);
		 xil_printf("Configuring IP 192.168.1.20\r\n");
		 break;
	}
}

#endif /* SRC_CUSTOMFUNCTION_H_ */
