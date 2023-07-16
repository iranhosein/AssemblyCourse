
org 100h

mov al, 0
mov ah, 0
int 10h

; giving number from user

mov x, 0
mov cx, N
L1:
    mov bh, 0
    mov dh, x
    mov dl, 0
    mov ah, 02h
    int 10h
    push cx
    mov cx, 0
    mov cl, x
    add cx, 1
    L2:
    mov dl, cl
    int 21h
    loop L2
    pop cx
    inc x
    loop L1

ret

N dw 10
x db ?

