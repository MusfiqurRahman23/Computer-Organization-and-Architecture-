.MODEL SMALL 
.STACK 100H 
.DATA 

A DW 'ENTER THE NUMBER: $' 
B DW ' RESULT $' 
.CODE 
MAIN PROC 

    MOV AX,@DATA 
    MOV DS,AX 

    MOV AH,9 
    LEA DX,A 
    INT 21H 
    
    MOV AH,1
    INT 21H 
    
    
    MOV AH,9 
    LEA DX,B 
    INT 21H  
    
    CMP DL,1 
    JE ODD
    CMP CL,3
    JE ODD
    CMP CL,2
    JE EVEN
    CMP CL,4
    JE EVEN 
     
    ODD:
        MOV DL,'o'
        JMP DISPLAY  
     
    EVEN:
        MOV DL,'e'
        JMP DISPLAY
    
    DISPLAY:
    MOV AH,2
    INT 21h  
      
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN