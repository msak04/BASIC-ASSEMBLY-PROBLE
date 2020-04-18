
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP    
MOV AX,0FFFFH 
MOV BX,0FFFFH;In this section we are Storing Data for Test     

ADD AX,BX

JC UO 

MOV CX,AX
JMP QUIT

UO:
MOV DX,AX 

QUIT:
END  

ret
