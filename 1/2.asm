isTheSame macro x, y, number
    cld
    lea si, x
    lea di, y
    mov cx, number
    repz cmpsb
endm

org 100h

mov cx, 15
for:
   mov si, 15
   sub si, cx
   mov bl, str1[si]
   while:
        cmp bl, ' '
        jz exit
        mov [x]si, bl
   exit:
loop for

ret

str db 50 dup(?)
str1 db 'i am am student'
str2 db 12 dup (?)
number db ?
x db ?
y db ?