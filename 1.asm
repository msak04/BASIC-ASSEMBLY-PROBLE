
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP
MOV AX,0000H
MOV DS, AX
MOV BX, 0000H
MOV AL, BYTE PTR DS:[BX]
MOV CL, AL

MOV AX, 0F000H
MOV DS, AX
MOV BX, 0FFFFH
MOV AH, BYTE PTR DS:[BX]
MOV CH, AH

ADD CL, CH

MOV AX,0F000H
MOV DS, AX
MOV BX, 0FFFEH
MOV BYTE PTR DS:[BX],CL

END

ret




