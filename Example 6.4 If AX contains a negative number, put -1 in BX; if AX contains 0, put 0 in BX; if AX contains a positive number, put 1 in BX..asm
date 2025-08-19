org 100h

mov ax, -25

cmp ax, 0
jl negative
je zero

mov bx, 1
jmp end_if

negative:
mov bx, -1
jmp end_if

zero:
mov bx, 0

end_if:

ret
