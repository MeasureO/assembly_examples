org 100h
mov dl, 8Ah

; load adresss of data table in bx, for xlat instruction:
lea bx, table

; xlat does the following:
; al = ds:[bx + usigned al]

mov al, dl
shr al, 4 ; leave high part only
xlat ; get hex digit
mov ah, 0eh ; teletype sub-function
in 10h

mov al, dl
and al, 0fh ; leave low part only
xlat ; get hex digit
mov ah, 0eh ; teletype sub-function
int 10h

; wait fo any key press:
mov ah, 0
int 10h

ret

table db '0123456789abcdef'
