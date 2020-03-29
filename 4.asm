
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP

MOV DX,0000H
IN AL,DX
MOV CH,AL

MOV DX,0FFFFH
IN AL,DX
MOV CL,AL

ADD CL,CH

MOV AL,CL  

OUT 0FEH,AL 

END
ret




