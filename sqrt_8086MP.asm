      mov bx,49d             ;move any perfect square number into the bx register
      mov cx,0000h          
loop1:mov ax,cx
      mul cx
      inc cx
      cmp ax,bx
      jne loop1
      dec cx 
      mov [1500h],cx         ;the square root can be found in the address 1500h in hexadecimal number system
      hlt
