.model small
.stack 100h

.data
num1 dw 1234h
num2 dw 0020h
res_low  dw ?   ; lower 16 bits of result
res_high dw ?   ; higher 16 bits of result

.code
main PROC
    mov ax,@data
    mov ds,ax

    mov ax,num1    ; load first number
    mul num2       ; unsigned multiplication, result in DX:AX

    mov res_low,ax
    mov res_high,dx

    mov ah,4Ch
    int 21h
main ENDP
END main
