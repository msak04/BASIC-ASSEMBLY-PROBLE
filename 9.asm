
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA
    n DB 'negative$'
    p DB 'positive$'
    
.CODE
MAIN PROC

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV BYTE PTR [BX], 6h ;In this section we are Storing Data for Test 

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV AL, BYTE PTR [BX] 

TEST AL, 80h ;Testing MSB is 0 or 1
JZ POSI ;Jump if Zero 

MOV AX, @DATA
MOV DS, AX
LEA DX, n ;display negative
MOV AH, 9
INT 21H
JMP QUIT:

POSI:
MOV AX, @DATA
MOV DS, AX
LEA DX, p ;display positive
MOV AH, 9
INT 21H     

QUIT: 
END


ret






