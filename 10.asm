
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA
    e DB 'EVEN$'
    o DB 'ODD$'
    
.CODE
MAIN PROC

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV BYTE PTR [BX], 7h ;In this section we are Storing Data for Test 

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV CL, BYTE PTR [BX] 

TEST CL, 01h ;Testing LSB is 0 or 1
JZ EVEN ;Jump if Zero 

MOV AX, @DATA
MOV DS, AX
LEA DX, o ;display odd
MOV AH, 9
INT 21H
JMP QUIT:

EVEN:
MOV AX, @DATA
MOV DS, AX
LEA DX, e ;display even
MOV AH, 9
INT 21H     

QUIT: 
END


ret







