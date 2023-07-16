factoriel macro x, y
    push ax
    mov y, 0
    mov cx, x
    mov ax, 1
    for:
        mul cx
    loop for
    mov y, ax
    pop ax
endm



org 100h

mov si, 0
while:
    mov ax, array[si]
    cmp ax, 0
    jz exit
    factoriel ax, y
    mov dx, y
    mov array[si], dx
    inc si
    inc si
    jmp while
exit:

ret

array dw 2, 3, 4, 0
x dw ?
y dw ?

