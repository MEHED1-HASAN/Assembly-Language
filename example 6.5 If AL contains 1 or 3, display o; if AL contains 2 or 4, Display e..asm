;If AL contains 1 or 3, display "o"; if AL contains 2 or 4, Display "e". 
org 100h

mov al, 3       
mov ah, 2       

cmp al, 1
je display_o
cmp al, 3
je display_o
cmp al, 2
je display_e
cmp al, 4
je display_e

jmp end_if

display_o:
mov dl, 'o'
int 21h
jmp end_if

display_e:
mov dl, 'e'
int 21h

end_if:

ret
