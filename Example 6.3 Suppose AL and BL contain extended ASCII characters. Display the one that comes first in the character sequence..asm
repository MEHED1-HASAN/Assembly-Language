org 100h

mov al, 'G'
mov bl, 'A'

mov ah, 2

cmp al, bl
jnbe else_

mov dl, al
jmp display

else_:
mov dl, bl

display:
int 21h

ret
