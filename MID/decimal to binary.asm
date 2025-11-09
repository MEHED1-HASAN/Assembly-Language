.MODEL SMALL
.STACK 100H
.DATA
    d1 dw 16
.CODE
MAIN PROC
    mov ax,@data
    mov ds,ax

    mov ax,d1
    mov bx,2       ; divisor
    xor cx,cx      ; clear counter

again:
    xor dx,dx      ; clear remainder
    div bx         ; AX ? 2 ? AX=quotient, DX=remainder
    push dx        ; store remainder
    inc cx         ; count digits
    cmp ax,0
    jne again

print_loop:
    pop dx
    add dl,'0'     
    mov ah,02h
    int 21h
    loop print_loop

    mov ah,4Ch
    int 21h
MAIN ENDP
END MAIN