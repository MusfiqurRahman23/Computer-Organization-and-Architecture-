.MODEL SMALL 
.STACK 100H 

.CODE 
MAIN PROC 

    MOV AX,1
    
    CMP AX,0
    JBE EVEN
    JMP EXIT
    EVEN:    
        MOV BX,1
        NEG BX
        MOV DX,BX
        JMP DISPLAY
    
    DISPLAY:
    MOV AH,2
    INT 21h  
      
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN