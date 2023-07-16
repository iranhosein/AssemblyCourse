
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, x
for:
    mov dx, 0
    div i
    cmp dx, 0
    jz noPrime
    inc i
    mov ax, x
    cmp i, ax
    jz prime
    jmp for
noPrime:
mov y, 0
jmp exit
prime:
mov y, 1
exit:
ret

x dw 23
i dw 2
y dw 0  
