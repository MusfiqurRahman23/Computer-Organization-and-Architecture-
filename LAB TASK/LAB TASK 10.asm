.model small
.stack 100h
.data

.code

main proc
    
    
      MOV AH,1
      REPEAT:
      INT 21H
      CMP AL, ' '
      JNE REPEAT
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN