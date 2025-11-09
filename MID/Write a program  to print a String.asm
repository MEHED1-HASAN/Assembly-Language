.model small
.stack 100h

.data
msg db 'Hello World!$'

.code
main PROC
    mov ax,@data
    mov ds,ax

    mov dx,offset msg
    mov ah,9
    int 21h

    mov ah,4Ch
    int 21h
main ENDP
END main
