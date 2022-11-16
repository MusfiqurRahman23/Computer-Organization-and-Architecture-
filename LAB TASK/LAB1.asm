.model small
.stack 100h
.data

.code

MAIN PROC
    
      MOV AX,CX
      CMP BX,CX
      JLE NEXT
      MOV CX,BX
     
      NEXT:
         MOV CX ,BX
     
      
     ; EXIT:
      
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN