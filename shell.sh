as -g condition.asm -o condition.o
ld condition.o -o condition
./condition

gdb -tui ./condition

# (gdb)
set disassembly-flavor intel
layout regs
break _start
run
si
q