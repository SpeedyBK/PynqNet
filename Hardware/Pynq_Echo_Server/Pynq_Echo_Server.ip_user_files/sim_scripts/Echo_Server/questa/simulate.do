onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Echo_Server_opt

do {wave.do}

view wave
view structure
view signals

do {Echo_Server.udo}

run -all

quit -force
