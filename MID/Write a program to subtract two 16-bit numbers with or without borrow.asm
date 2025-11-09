.model small
.stack 100h

.data
    num1 dw 1234h
    num2 dw 4321h
    res  dw ?
    borrow db ?

.code
main PROC
    mov ax, @data
    mov ds, ax

    mov ax, num1
    sub ax, num2
    mov res, ax

    ; Store borrow using conditional moves (more efficient)
    mov borrow, 0       ; Assume no borrow first
    jnc no_borrow2      ; If no carry, skip next instruction
    mov borrow, 1       ; Set borrow to 1 if carry occurred
no_borrow2:

    mov ah, 4Ch
    int 21h
main ENDP
END main