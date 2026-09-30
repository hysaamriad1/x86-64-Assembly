.intel_syntax noprefix
.global _start

.text
    _start:
        mov rax, 10

        loop:
            cmp rax, 0
            jle exit
            dex rax
            jmp loop

        exit:
            int3
            mov rax, 60
            mov rdi, 0
            syscall
        