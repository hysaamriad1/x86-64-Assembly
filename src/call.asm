.intel_syntax noprefix
.global _start

.data
    a: .ascii "a\n"
    a_len = . - a
    b: .ascii "b\n"
    b_len = . - b
    c: .ascii "c\n"
    c_len = . - c
    d: .ascii "d\n"
    d_len = . - d

.text
    _start:
        call aW
        call bW
        call cW
        call dW
        jmp exit

        dW:
            mov rax, 1
            mov rdi, 1
            lea rsi, d
            mov rdx, d_len
            syscall
            ret
        cW:
            mov rax, 1
            mov rdi, 1
            lea rsi, c
            mov rdx, c_len
            syscall
            ret
        bW:
            mov rax, 1
            mov rdi, 1
            lea rsi, b
            mov rdx, b_len
            syscall
            ret
        aW:
            mov rax, 1
            mov rdi, 1
            lea rsi, a
            mov rdx, a_len
            syscall
            ret
        exit:
            mov rax, 60
            mov rdi, 0
            syscall
        