;Example 6.6 : Read a character, and if it's an uppercase letter, display it.
org 100h

mov ah, 1
int 21h

cmp al, 'A'
jl end_if
cmp al, 'Z'
jg end_if

mov ah, 2
mov dl, al
int 21h

end_if:

ret
