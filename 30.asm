

; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP    
MOV AL,2H 
MOV AH,1H;In this section we are Storing Data for Test     

ADD AL,AH

JP EVEN 

MOV DH,AL
JMP QUIT

EVEN:
MOV DL,AL
QUIT:
END
ret
