
org 100h

mov cx, 18
for:
mov si, 18
sub si, cx
mov bl, str1[si]
cmp bl, 91
jb maybeBig
jmp noBig
maybeBig:
cmp bl, 64
ja Big
jmp noSmall
Big:
add bl, 32
jmp noSmall
noBig:
cmp bl, 96
ja maybeSmall
jmp noSmall
maybeSmall:
cmp bl, 123
jb Small
Small:
sub bl, 32
noSmall:
mov str2[si], bl
loop for

ret

str1 db 'I Am 20 Years Old.'
str2 db 18 dup (?)
number db ?
