.model small
.stack 100h

.data

.code
main PROC
    MOV AX, 1234h
    MOV BX, 5678h

    MOV CX, AX
    MOV AX, BX
    MOV BX, CX

 mov ah,4ch
 int 21h
END main
