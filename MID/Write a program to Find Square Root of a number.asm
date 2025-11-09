.model small
.stack 100h

.data
num dw 144
sqrt_res dw 0

.code
main PROC
    mov ax,@data
    mov ds,ax

    mov bx,1
find_sqrt:
    mov ax,bx
    mul bx
    cmp ax,num
    ja done
    mov sqrt_res,bx
    inc bx
    jmp find_sqrt

done:
    mov ah,4Ch
    int 21h
main ENDP
END main
                                                                        