Brief Documentation of the Project. 

SDK-Application Project Files:

Not used on Pynq Board:

- si5324.c: This file is not needed for the hardware this project should be used on. 
- sfp.c: This file is not needed for the hardware this project should be used on. 
- i2c_access.c: This file is not needed for the hardware this project should be used on. 
- iic_phyreset.c: This file is not needed for the hardware this project should be used on. 
- platform_mb.c: This file contains specification, that are needed if the software runs on a MicroBlaze Soft CPU. 
  (not needed for the PYNQ-Board)
- plattform_ppc.c: This file is not needed for the hardware this project should be used on. 
- platform_zynqmp.c: ZynqMP platform specific functions. This file is used if the Project runs on a Zynq Ultrascale 
  Device.
- platform.c: Needed for Microblase Soft CPU.
  
I'll leave that in, in case the project is used on one of the mentioned plattforms (for now).


Used on Pynq Board:

- platform_zynq.c: This is setting up timers and the interrupt system for Xilinx Zynq Devices. 

- platform.h: Contains some function-prototypes to function definitions in platform_zynq.c

- platform_config.h: Defines the hardware platform the Ethernet project runs on. 


Custom stuff added to the Project:

- CustomDataTypes.h: This file contains some custom datatypes or containers for easier datahandling.

- CustomFunctions.h: Contains functions i added to the project. 

