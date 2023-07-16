
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 1
mov bl, 0
while:
mov si, ax
add bl, Barcode3[si]
cmp al, 11
jz exit:
add ax, 2
jmp while
exit:
mov ax, 0
mov al, 3
mul bl
mov evenSum, ax

mov ax, 0
mov bl, 0
while2:
mov si, ax
add bl, Barcode3[si]
cmp al, 10
jz exit2:
add ax, 2
jmp while2
exit2:
mov ax, 0
mov al, 1
mul bl

add ax, evenSum
mov dx, 0
mov cl, 10
div cl

cmp ah, 0
jz end
sub cl, ah
mov thirteen, cl
end: 

ret

evenSum dw ? 
oddSum dw ?
thirteen db ?

Barcode1 db 6, 2, 6, 5, 5, 8, 9, 9, 3, 1, 4, 0 ; evenSum = 75  -----  ax = 33    -> 108     -> 8
Barcode2 db 9, 4, 4, 1, 7, 8, 4, 9, 2, 5, 0, 9 ; evenSum = 108 -----  ax = 26    -> 134     -> 4
Barcode3 db 6, 2, 6, 7, 4, 0, 0, 7, 5, 4, 1, 8 ; evenSum = 84  -----  ax = 22    -> 106     -> 6
