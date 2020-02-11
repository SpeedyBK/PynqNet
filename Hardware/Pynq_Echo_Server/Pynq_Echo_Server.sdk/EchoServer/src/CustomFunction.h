/*
 * CustomFunction.h
 *
 *  Created on: 10.02.2020
 *      Author: benjamin
 */

#ifndef SRC_CUSTOMFUNCTION_H_
#define SRC_CUSTOMFUNCTION_H_

#include "xil_cache.h"
#include "lwip/tcp.h"

void send_byte(u8 Data, struct tcp_pcb *tpcb);

#endif /* SRC_CUSTOMFUNCTION_H_ */
