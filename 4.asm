
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP

MOV AX, 04h
MOV DX, 00000h
OUT DX, AX  

MOV DX, 0FFFFh
OUT DX, AX      ;In this section we are Storing Data for Test 

MOV DX,0000H    ; Storing First Variable Port Address in DX
IN AL,DX        ; Storing Valu from First Variable port address in AL
MOV CH,AL       ; Storing Value From AL to CH

MOV DX,0FFFFH   ; Storing Last Variable Port Address in DX
IN AL,DX        ; Storing Valu from Last Variable port address in AL
MOV CL,AL       ; Storing Value From AL to CL

ADD CL,CH       ; Add CH & CL and Store it in CL

MOV AL,CL       ; Storing reasult from CL to AL for writing purpose

OUT 0FEH,AL     ; Writing the reasult to Last Even Fixed Port Address

END
ret




