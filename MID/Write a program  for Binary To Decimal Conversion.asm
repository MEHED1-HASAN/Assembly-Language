.model small
.stack 100h
.data
result db 0
.code
main proc
    mov ax, @data
    mov ds, ax

    ; Read 4 binary digits and convert to decimal
    mov cx, 4          ; Counter for 4 digits
    mov bl, 8          ; Starting weight (8 for b3)

convert_loop:
    mov ah, 1          ; Read character
    int 21h
    sub al, 30h        ; Convert ASCII to number
    
    mul bl             ; Multiply by weight (8,4,2,1)
    add result, al     ; Add to result
    
    shr bl, 1          ; Divide weight by 2 for next digit
    loop convert_loop  ; Repeat for all 4 digits

    mov ah, 4Ch
    int 21h
main endp
end main