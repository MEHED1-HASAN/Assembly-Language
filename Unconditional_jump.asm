
org    100h

mov    ax, 5        
mov    bx, 2         

jmp    calc          

back:  jmp stop       

calc:
add    ax, bx       
jmp    back           

stop:

ret     