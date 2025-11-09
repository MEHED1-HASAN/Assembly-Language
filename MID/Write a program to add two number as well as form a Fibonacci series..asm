.model small
.stack 100h

.data

.code
main PROC
    mov ax,1
    mov bx,1
    mov dx,1
    mov cx,5

repeat:
    mov ax,dx
    add dx,bx
    mov bx,ax
    loop repeat

    mov ah,4Ch
    int 21h
main ENDP
END main
