;interfacing Digital to Analog Convertor with 8086 MP
;Triangular Wave Generator


mov dx,00c0h     ;move the DAC port number into dx register
l1:mov cl,00h   
loop1:mov al,cl
out dx,al
inc cl
cmp cl,0xff
jne loop1
loop2:mov al,cl
out dx,al
dec cl
jnz loop2
jmp l1           ;repeat the process to get the periodic Triangular Wave
