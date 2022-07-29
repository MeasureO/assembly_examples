global _start

_start:
;section .bss
;    array resd 1000 ; array 1000 2words
section .text
;global main
;extern printf
;main:
;    mov ecx, 1000   ; quantity of ops
;    mov esi, array  ; adress of first element
;    mov eax, 0      ; start value of sum
;lp: add eax, [esi]  ; add number to sum
;    add esi, 4      ; adress of next element
;    loop lp         ; dec counter

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
