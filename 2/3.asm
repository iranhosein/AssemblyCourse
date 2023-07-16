my_macro macro x,y, W, L
    my_macro_WS x, y, L 
    dec x
    dec y
    my_macro_ES x,y,W    
    dec x
    inc y
    my_macro_horizontal x, y, L    
    dec y
    my_macro_ES_inv x, y, W
    dec y
    inc x
    my_macro_WS_inv x, y, L 
    inc y
    inc x
    my_macro_horizontal_inv x,y,L   
endm
;------------------------------
my_macro_WS_inv macro x,y,L
mov cx, L

L9:
    mov bh,0
    mov dh, x ; row
    mov dl, y ; col
    mov ah, 02h
    int 10h ; we set the cursor
    mov dl, '.'
    mov ah, 02h
    int 21h ;write character to output
    dec x
    dec y
    loop L9
endm 
;------------------------------
my_macro_ES_inv macro x,y,W
mov cx, W

L8:
    mov bh,0
    mov dh, x ; row
    mov dl, y ; col
    mov ah, 02h
    int 10h ; we set the cursor
    mov dl, '.'
    mov ah, 02h
    int 21h ;write character to output 
    dec x
    inc y
    loop L8
endm 
;--------------------------------------
my_macro_horizontal macro x, y, L
mov cx, L
add cx, L

L2:
    mov bh,0
    mov dh, x ; row
    mov dl, y ; col
    mov ah, 02h
    int 10h ; we set the cursor
    mov dl, '.'
    mov ah, 02h
    int 21h ;write character to output
    inc y
    loop L2    
       
endm
;-----------------------------------
my_macro_horizontal_inv macro x, y, L
mov cx, L
add cx, L

L4:
    mov bh,0
    mov dh, x ; row
    mov dl, y ; col
    mov ah, 02h
    int 10h ; we set the cursor
    mov dl, '.'
    mov ah, 02h
    int 21h ;write character to output
    dec y
    loop L4    
    
endm

;-------------------------
my_macro_ES macro x,y,W
mov cx, W

L5:
    mov bh,0
    mov dh, x ; row
    mov dl, y ; col
    mov ah, 02h
    int 10h ; we set the cursor
    mov dl, '.'
    mov ah, 02h
    int 21h ;write character to output 
    inc x
    dec y
    loop L5
endm

;--------------------------------------
my_macro_WS macro x, y, L
mov cx, L

L6:
    mov bh,0
    mov dh, x ; row
    mov dl, y ; col
    mov ah, 02h
    int 10h ; we set the cursor
    mov dl, '.'
    mov ah, 02h
    int 21h ;write character to output
    inc x
    inc y
    loop L6    
    
endm

;---------------------------------- 



org 100h
mov al, 13h
mov ah, 0
int 10h ; set video mode
my_macro x,y, W, L

ret
W dw 5
L dw 5
x db 5 ; row 
y db 5 ; col  
