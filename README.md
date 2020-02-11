# PynqNet

The PynqNet project will contain IP-Cores which allow to use the ethernet port (Realtek RTL8211E) on Zynq-Devices to get data to
and from the device. In the first place it will be a hardware solution, which can be configured by the Zynq-Processing-System via 
an Axi-Lite-Port or hardcoded by generics. The final desicion how the data will be handled is not made yet.

The Realtek RTL8211E will be accessed through the EMIO ports of the Zynq device. They should allow to get a signal from the PL to the 
Ethernet Chip an Backwards, without using the PS to much.  

Currenty it is not working and WIP.

## ToDo

1. Figure out if it is possible to access the Ethernet chip with the EMIO-Ports. (DONE)
2. Build an Ethernet-MAC to establish a conntection between the Transportlayer and the PHY. (In Progress)
  - CRC Module: (Done)
  - FiFos to cross clockdomains: (In Progress)
  - Controlunit, basicly a statemachine which controls the MAC (ToDo)
3. Use the EMIO Ports to establisch a connection between the Ethernet Chip and the PL of the Zynq Device. 
4. Find a testmethode to verify if there is a connection. 
5. Figure out, how to access the Ethernet Chip correctly.
6. Link to LwIP: https://www.nongnu.org/lwip/2_1_x/index.html

## IP-Cores or Sub-Designs

1. MinimalEmioExample: This design should just help to understand the EMIO ports of the Zynq PS. There are no PL-Ressourses used. 
Just the PS to flash some LEDs.

2. CRC-Module: Which takes a Byte per Clockcycle and computes the CRC Checkvalue.

## Installation

toDo...

## Usage

toDo...

## Contributing

Just don't do it. ^^

## License
toDo...
