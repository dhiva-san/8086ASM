;interfacing Digital to Analog Convertor with 8086 MP
;Square Wave Generator

mov dx,00c0h    ;move the DAC port number into the dx register
mov al,0xff     
l1:mov bl,0xff
sub bl,al
mov al,bl
mov cx,0100h    ;Vary the value (here 0100h) to change the time period of the Square Wave (higher the value , higher the time period)
loop1:out dx,al
dec cx
jnz loop1
jmp l1          ;repeat the process to get periodic Square Wave
