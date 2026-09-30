.intel_syntax noprefix
.global _start
.text
_start:

#r 11 for first num
#r 12 for second num
#r 13 for sum

mov r11, 0
mov r12, 1

mov r13, r11 # seq 3 = 1
add r13, r12
mov r11, r12
mov r12, r13

mov r13, r11 # seq 4 = 2
add r13, r12
mov r11, r12
mov r12, r13

mov r13, r11 # seq 5 = 3
add r13, r12
mov r11, r12
mov r12, r13

mov r13, r11 # seq 6 = 5
add r13, r12
mov r11, r12
mov r12, r13

mov r13, r11 # seq 7 = 8
add r13, r12
mov r11, r12
mov r12, r13

mov r13, r11 # seq 8 = 13
add r13, r12
mov r11, r12
mov r12, r13

mov r13, r11 # seq 9 = 21
add r13, r12
mov r11, r12
mov r12, r13

mov r13, r11 # seq 10 = 34
add r13, r12
mov r11, r12
mov r12, r13
