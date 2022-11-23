.MODEL SMALL
.STACK 100h
.DATA


.CODE
     
     
MAIN PROC
    XOR BX,BX
    
    MOV AH,1
    INT  21H  
    
    WHILE:
    CMP AH,0DH
    JE End_while
    AND AL,0FH
    SHL BX,1
    OR BL,AL
    INT 21H
    JMP WHILE
    
    End_while:
    MOV AH,2
    MOV DX,0AH
    INT 21H
    
    MOV DX,0DH
    INT 21H
    MOV CX,16
    
    Output:
    RCL BX,1
    JC Display_1
    JNC Display_0
    
    Display_1: 
    MOV AH,2
    MOV DX,31H
    INT 21H
    JMP DO
    
    Display_0:
    MOV AH,2
    MOV DX,30H
    INT 21H
    
    DO:
    LOOP Output
    
    END:
    MOV AH,4CH
    INT 21H   
    
    MAIN ENDP
END MAIN