;interfacing Digital to Analog Convertor with 8086 MP
;Sawtooth Generator


mov dx,00c0h          ;move the port number into the dx register (i.e 00c0h)
l1:mov cx,0000h     
loop1:mov al,cl       
out dx,al             ;transmitting data from 8086 to DAC
inc cl
cmp cx,0100h
jne loop1
jmp l1                ;repeat the process to get periodic Sawtooth wave
