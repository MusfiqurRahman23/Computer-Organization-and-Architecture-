.MODEL SMALL
.STACK 100h
.DATA
.CODE

MAIN PROC
    XOR BX,BX
    
    MOV AH,1
    INT  21H  
    
    while:
    CMP al,0dh
    je end_while
    and al,0fh
    SHL BX,1
    or bl,al
    int 21h
    jmp while
    
    end_while:
    mov ah,2
    mov DX,0ah
    int 21h
    
    mov dx,0DH
    int 21h
    mov cx,16
    
    output:
    RCL BX,1
    jc display1
    jnc display0
    
    display1: 
    mov ah,2
    mov dx,31h
    int 21h
    jmp do
    
    display0:
    mov ah,2
    mov dx,30h
    int 21h
    
    do:
    loop output
    
    END:
    mov ah,4CH
    int 21h   
    
    MAIN ENDP
END MAIN