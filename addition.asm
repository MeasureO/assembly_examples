.movel small
.data
  num1 db 22h
  num2 db 11h
.code
.startup

main:
  mov ax, @data
  mov ds, ax
  mov al, num1
  add all, num2
.exit
end
