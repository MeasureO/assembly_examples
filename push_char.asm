global _start

_start:

section .text

global main
main:
    push 0x21       ; '!'
    mov eax, 4     ; sys_write call number
    mov ebx, 1      ; write to stdout (fd = 1)
    mov ecx, esp    ; use char on stack
    mov edx, 1      ; write 1 char
    int 0x80
    mov eax, 1
    int 0x80
    add esp, 4      ; restore sp
