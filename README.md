# PynqNet

The PynqNet project will contain IP-Cores which allow to use the ethernet port (Realtek RTL8211E) on Zynq-Devices to get data to
and from the device. 

Currenty WIP.

## ToDo

1. Figure out if it is possible to access the Ethernet chip with the EMIO-Ports. (DONE) (Not Possible)
2. Use the Ethernet MAC in the PS to establish a Networkconnection. (Done)
   Link to LwIP (Light Weight IP-Stack): https://www.nongnu.org/lwip/2_1_x/index.html
3. Unterstand the Library. (WIP)
4. Get a nice final design. 
5. PMOD Ethernet Connction. 

## Hardware and SDK-Stuff

1. MinimalEmioExample: This design should just help to understand the EMIO ports of the Zynq PS. There are no PL-Ressourses used. 
Just the PS to flash some LEDs.

2. Pynq_Echo_Server: Design to test the network connection. It echos back received Messages. To send messages a programm like Putty can be used. 

3. ZyboENet: Basicly the same as Pynq_Echo_Server, just for the Zybo-Board.

## Software

1. py/TCPClient: Python TCP Client, can be used to send TCP Messages via commadline. 

2. sh/counter: Just a shell-skript to generate numbers and call the python TCP-Client to send them to a Pynq Board. 

3. cpp/MPStream: The Idea here is to read data from a soundfile (preferably MP3) and send the which the Zynq then plays via the Audio Port (Does not work yet).

4. cpp/echoServer: Same functions than the Hardware Servers. But running on a PC or Raspberry Pi.

## Installation

toDo...

## Usage

toDo...

## Contributing

Just don't do it. ^^

## License
toDo...
