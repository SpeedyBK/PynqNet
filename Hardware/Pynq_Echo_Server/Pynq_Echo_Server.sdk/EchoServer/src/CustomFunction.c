/*
 * CustomFunction.c
 *
 *  Created on: 10.02.2020
 *      Author: benjamin
 */


#include "CustomFunction.h"

void send_byte(u8 Data, struct tcp_pcb *tpcb){

	tcp_write(tpcb, &Data, 1, 1);

	//tcp_sent(tpcb, err_t (* sent)(void *arg, struct tcp_pcb *tpcb, u16_t len))
}
