.model small
.stack 100h

.data
num dw 5       ; number to find factorial of
fact dw 1      ; factorial result

.code
main PROC
    mov ax,@data
    mov ds,ax

    mov cx,num     ; loop counter
    mov ax,1       ; initialize factorial

factorial_loop:
    mov bx,cx      ; copy counter to BX
    mul bx         ; AX = AX * BX
    loop factorial_loop ; CX decremented automatically

    mov fact,ax    ; store result

    ; terminate program
    mov ah,4Ch
    int 21h
main ENDP
END main
