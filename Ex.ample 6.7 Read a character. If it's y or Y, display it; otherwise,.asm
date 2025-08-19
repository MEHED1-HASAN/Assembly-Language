;Example 6.7 Read a character. If it's "y" or "Y", display it; otherwise, terminate the program.
org 100h

mov ah, 1
int 21h

cmp al, 'y'
je display_char
cmp al, 'Y'
je display_char

jmp end_program
display_char:
mov ah, 2
mov dl, al 
int 21h

end_program:
ret
