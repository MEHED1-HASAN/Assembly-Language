;Example 6.8 Write a count-controlled loop to display a row of 80 stars.       
org 100h

mov cx, 80
mov ah, 2
mov dl, '*'

display_loop:
int 21h
loop display_loop

ret
