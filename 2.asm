
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


NOP 

MOV AL, 01h
OUT 00h, AL
OUT 01h, AL     ;Storing Demo data for check purpose

   

IN AX, 00H      ;Reading two numbers from first two memory locations using word operation            

ADD AL,AH       ; Adding First two numbers
MOV CL,AL       ;Moving the  reasult for prevent data loss

MOV AX,0F000H   
MOV DS, AX      ;storing segmentation part of last adress in DS
MOV BX, 0FFFFH  ;Storing Ofset part of last address in BX
MOV BYTE PTR DS:[BX],CL ; Storing the reasult from CL to last memory location
END
ret




