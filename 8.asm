
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

NOP

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV BYTE PTR [BX], 6h
MOV BX, 00001h
MOV BYTE PTR [BX], 8h ;In this section we are Storing Data for Test 

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV AL, BYTE PTR [BX]
MOV BX, 00001h
MOV AH, BYTE PTR [BX]

CMP AL, AH 

JA LESS  ;Jump to LESS if AH is less then AL 

MOV AL, AH  
OUT 00h, AL
JMP QUIT

LESS:
OUT 00h, AL

QUIT: 
END


ret




