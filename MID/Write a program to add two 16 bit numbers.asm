.model small
.stack 100h

.data
num1 dw 1234h
num2 dw 4321h
res  dw ?

.code
main PROC
    mov ax,@data
    mov ds,ax

    mov ax,num1    ; load first number
    add ax,num2    ; add second number
    mov res,ax     ; store result

    mov ah,4Ch
    int 21h
main ENDP
END main
