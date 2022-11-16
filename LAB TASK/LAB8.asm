.MODEL SMALL 
.STACK 100H 
.DATA 

A DW 'ENTER THE NUMBER: $' 
B DW ' RESULT $' 
.CODE 
MAIN PROC 

    MOV AX,@DATA 
    MOV DS,AX 

    MOV CX,80
    MOV AH,2
    MOV DL, '*'
       TOP:
    INT 21H
    LOOP TOP 
   
      
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN