%include "stud_io.inc"
global _start

_start:
section .bss
    array resb 256  ; array 256 byte
section .text
    mov ecx, 256   ; count of elements -> ecx
    mov edi, array  ; adress of array -> edi
    mov al, '@'     ; code -> 1 byte al
again:
    PRINT "Added"
    PUTCHAR 10
    mov [edi], al   ; code -> element
    inc edi         ; inc adress
    dec ecx         ; dec counter
    jnz again       ; if not 0, repeat cycle
FINISH
