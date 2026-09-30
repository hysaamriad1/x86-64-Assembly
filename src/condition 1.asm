.intel_syntax noprefix
.global _start

.text
    _start:
        mov r11, -67

        loop:
            cmp r11, 399
            jg exit
            inc r11
            jmp loop
        exit:
            int3
            mov rax, 60
            mov rdi, 0
            syscall
        