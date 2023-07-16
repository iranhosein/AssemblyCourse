
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx, x
;mov dx, y
cmp cx, y
jb LABEL1
mov ax, x
mov bx, y
jmp while
LABEL1:
mov ax, y
mov bx, x
while:
    mov dx, 0
    div bx
    cmp dx, 0
    jz finish
    mov ax, bx
    mov bx, dx
    jmp while
    finish:
mov bmm, bx
mov ax, 0
mov bx, 0
mov ax, x
mul y
div bmm
mov kmm, ax

ret

x dw 10
y dw 4
bmm dw ?
kmm dw ?
