.model small
.stack 100h

.data
num1 db 25h
num2 db 10h
res  db ?

.code
main PROC
    mov ax,@data
    mov ds,ax

    mov al,num1
    sub al,num2
    das
    mov res,al

    mov ah,4Ch
    int 21h
main ENDP
END main
