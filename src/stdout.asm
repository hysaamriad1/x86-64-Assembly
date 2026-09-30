.intel_syntax noprefix
.global _start

.data
    text: .ascii "abcd\nefgh\n"
    lengh = . - text

.text
    _start:
        mov rax, 1
        mov rdi, 1
        lea rsi, text
        mov rdx, lengh
        syscall

        mov rax, 60
        mov rdi, 0
        syscall
        