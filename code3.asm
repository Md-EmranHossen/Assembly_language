.model small
.stack 100h
.data
msg1 db "Enter The Charecter$" 
msg2 db "Convert Charecter is$"
.code
main proc
    
  mov ax,@data
    mov ds , ax
    lea dx , msg1
    mov ah , 9
    int 21h
    mov ah , 4ch
    int 21h     
    
       mov ah,1
      int 21h
      add al,32  
      
         mov bl,al
      mov ah,2
      mov dl,13
      int 21h
      mov dl,10
      
      int 21h
      mov dl,bl
      int 21h
      
      mov ax,@data
      mov ds, ax
      lea dx , msg2
      mov ah , 9
      int 21h
      mov ah , 4ch
      int 21h
      
    
      
      
    main endp
end main