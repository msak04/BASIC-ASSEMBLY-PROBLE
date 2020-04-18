
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
NOP
MOV AL,26H ;In this section we are Storing Data for Test 
MOV CL, 4
ROL AL, CL
END
ret




