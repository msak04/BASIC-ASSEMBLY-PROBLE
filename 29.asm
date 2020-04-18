

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP    
MOV AL,66H 
MOV AH,-66H;In this section we are Storing Data for Test 
ADD AL,AH
JZ ZERO 

MOV DH,AL
JMP QUIT

ZERO:
MOV DL,AL
QUIT:
END
ret
