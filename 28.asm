
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.MODEL SMALL
.STACK 100H

.DATA
    N DB 'NOT EQUAL$'
    E DB 'EQUAL$'
       
.CODE
MAIN PROC
    
MOV AL,66H ;In this section we are Storing Data for Test 
MOV CL, 4
MOV BL,AL 

SHL AL, CL
SHR AL, CL

SHR BL, CL 

CMP AL, BL
JE EQUAL 

MOV AX, @DATA
MOV DS, AX
MOV AH, 9
LEA DX, N
INT 21h
JMP QUIT

EQUAL:
MOV AX, @DATA
MOV DS, AX
MOV AH, 9
LEA DX, E
INT 21h

QUIT:
END
ret




