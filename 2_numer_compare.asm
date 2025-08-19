org 100h
 .data
msg db 'The smaller number is: $'
mov ax, 7
mov bx, 4

cmp ax, bx
jae bigger_or_equal

mov cx, ax
jmp done

bigger_or_equal:
mov cx, bx

done:
ret
