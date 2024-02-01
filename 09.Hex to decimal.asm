.model
.stack 100h
.data
a db "Enter a hex between A to F: $"
b db "Converted decimal dight is: 1$"
.code


main proc
    
   mov ax,@data
   mov ds,ax
   
   
   mov ah,9
   lea dx,a
   int 21h
   
   
   mov ah,1
   int 21h
   mov bl,al
   
   
   
   sub bl,17
   
   mov ah,2
   mov dl,10
   int 21h
   mov dl,13
   int 21h
   
   
   mov ah,9
   lea dx,b
   int 21h
   
   ;mov ah,2
   ;mov dl,'1'
   ;int 21h
   
   mov ah,2
   mov dl,bl
   int 21h
   
   
   exit:
   mov ah,4ch
   main endp
end main