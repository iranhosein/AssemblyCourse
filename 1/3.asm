MyMacro macro x1,y1,x2,y2,color,direct
    
    while:
        mov bh, 0
        mov dh, x1
        mov dl, y1
        mov ah, 02h
        int 10h
        
	    mov ah, 09       
	    mov bl, color     
	    mov cx, 1    
	    int 10h   

	    mov dl, '.'
        mov bh, 0f1h
	    mov ah, 02h
        int 21h
        
        
        mov cl, x1
        cmp cl, x2
        jz x1x2
        jmp exit1
        x1x2:
            mov cl, y1
            cmp cl, y2
            jz exit2
            
        exit1:
        
        cmp direct, 1
        jz direct1
        
        cmp direct, 2
        jz direct2
        
        cmp direct, 3
        jz direct3
        
        cmp direct, 4
        jz direct4
        jmp exit2
        
        direct1:
            inc x1
            dec y1
            jmp exit3
            
        direct2:
            dec x1
            inc y1
            jmp exit3
            
        direct3:
            inc x1
            inc y1
            jmp exit3
            
        direct4:
            dec x1
            dec y1
                     
        exit3:
    jmp while
    exit2:
    int 10h
           
endm


org 100h
    
    mov al, 0
    mov ah, 0
    int 10h
    MyMacro x1,y1,x2,y2,color,direct

ret

x1 db 5
x2 db 15
y1 db 5
y2 db 15
color db 1h
direct db 3
