; Example 6.4 If AX contains a negative number, put -1 in BX; if AX contains 0, put 0 in BX; if AX contains a positive number, put 1 in BX.

org 100h

mov ax, 5

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
