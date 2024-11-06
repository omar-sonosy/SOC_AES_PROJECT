onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib AES_Improved_opt

do {wave.do}

view wave
view structure
view signals

do {AES_Improved.udo}

run -all

quit -force
