
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, number
mov cnumber, ax
mov bx, 10
mov ax, number
while:
mov dx, 0
div bx
inc count
cmp ax, 0
jz exit
jmp while
exit:
mov cl, count
cmp cl, 1
jz is
jmp for
is:
mov isArmstrong, 1
jmp exit3

for:
mov ax, number
mov dx, 0
div bx
dec cl
mov number, ax

mov ax, dx
mov var, dx
mov ccl, cl
mov cl, count
dec cl
forf:
mul var
dec cl
cmp cl, 0
jz forg
jmp forf
forg:
mov cl, ccl
add sum, ax

cmp cl, 0
jz exit2
jmp for


exit2:
mov ax, cnumber
cmp ax, sum
jz is2
jmp exit3
is2:
mov isArmstrong, 1


exit3:
ret

ccl db ?
cnumber dw ?
number dw 1634
count db ?
isArmstrong db ?
sum dw ?
var dw ?