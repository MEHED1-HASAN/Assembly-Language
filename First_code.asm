; my first assembly code
.model small
.stack 100h
.data
    msg db "This is my First program$"
    
.code
main:
    mov ax,@data
    mov ds, ax
    
    mov dx, offset msg  
    mov ah,9
    int 21h
    
    mov ah, 4Ch
    int 21h
end main                                         