.model small
.stack 100h
.data
    count_1 db ?
    count_0 db ?
    sos db 0ah,0dh,'$'
   
.code
     main proc
     
     mov ax,@data
     mov ds,ax
     
     mov count_1,30h
     mov count_0,30h
     
     mov ah,1
     int 21h
     mov bl,al
     
     
     cmp bl,65
     jge hex
     
     sub bl,48
     jmp doit:
     
     hex:
     sub bl,55
     
     doit:
     mov ah,9
     lea dx,sos
     int 21h
     
     mov cl,0
             
     rotate:        
     rol bl,1
     
     jnc zero
     jc one
     
     zero:
     inc count_0
     
     cmp cl,4
     jl do1
     
     mov ah,2
     mov dl,'0'
     int 21h
     
     do1:
     jmp looper
     
     one:
     inc count_1
     
     cmp cl,4
     
     jl do2
     mov ah,2
     mov dl,'1'
     int 21h
     do2:
     jmp looper
     
     
     looper:
     inc cl
     cmp cl,8
     jl rotate
     
     
     exit:
     mov ah,9
     lea dx,sos
     int 21h
     
     
     mov ah,2
     mov dl,count_0
     int 21h
     

     main endp
end main