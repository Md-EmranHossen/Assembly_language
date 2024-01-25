.model small
.stack 100h
.data
.code

main proc  
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
      
    main endp
end main
                      