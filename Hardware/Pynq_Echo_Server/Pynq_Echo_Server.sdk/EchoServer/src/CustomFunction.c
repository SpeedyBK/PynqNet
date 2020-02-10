/*
 * CustomFunction.c
 *
 *  Created on: 10.02.2020
 *      Author: benjamin
 */
#include "CustomFunction.h"

void send_data(u8 data){

	// Create a buffer for data to transmit
	struct pbuf *p;

	p->payload = &data;
	p->len = sizeof(data);
	p->tot_len = p->len;

	// Create a TCP Control Block


}
