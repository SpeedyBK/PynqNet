/*
 * mainFunctions.h
 *
 * 	This file contains functions which are used in the main.c file.
 *
 *  Created on: 19.04.2020
 *      Author: benjamin
 */

#ifndef SRC_MAINFUNCTIONS_H_
#define SRC_MAINFUNCTIONS_H_

#include "xil_cache.h"
#include "xil_printf.h"
#include "lwip/tcp.h"


/*!
 * This function is used to set a custom MAC-Address for each board via the to onboard switches.
 * It can easily be replaced by hardcoding a MAC-Address for each board seperately. MAC-Addresses
 * must be unique!
 */
char set_MACAddress(int switches){

	switch (switches){
	case 0 : return 0x10; break;
	case 1 : return 0x11; break;
	case 2 : return 0x12; break;
	case 3 : return 0x13; break;
	default : return 0x01; break;
	}
}

/*!
 * This function is used to set the IP-Address of the boards via switches if IP-Addresses are not
 * provided by a DHCP-Server. DHCP ist the standard way to assign an IP-Address to a board.
 */
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
		 IP4_ADDR(ipaddr, 192, 168, 1, 21);
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

/*!
 * This block checks if IPv6 or IPv4 is used and contains functions to print out the IP-Settings
 * via Serial Port.
 */
#if LWIP_IPV6==1
void print_ip6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %x:%x:%x:%x:%x:%x:%x:%x\n\r",
			IP6_ADDR_BLOCK1(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK2(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK3(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK4(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK5(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK6(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK7(&ip->u_addr.ip6),
			IP6_ADDR_BLOCK8(&ip->u_addr.ip6));

}
#else
void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}
#endif

/*!
 * Checks the configuration of the used Board and does something which isn't relevant for
 * the Pynq Board.
 */
#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

/*!
 * Checks if IPv6 and DHCP is used.
 */
#if LWIP_IPV6==0
#if LWIP_DHCP==1
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#endif

/*!
 * Initialisations of global variables.
 */
extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;
static struct netif server_netif;
struct netif *echo_netif;

XGpio Gpio;

#endif /* SRC_MAINFUNCTIONS_H_ */
