
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA
    NP DB 'NOT PALINDROME$'
    YP DB 'PALINDROME$'
    
.CODE
MAIN PROC

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV BYTE PTR DS:[BX], 0fh ;In this section we are Storing Data for Test 

MOV AX, 00000h
MOV DS, AX   
MOV BX, 00000h  
MOV AL, BYTE PTR DS:[BX] 
 
MOV DL,AL

MOV CX, 8   ; save the loop count
    
@REVERSE:
SHL AL, 1   ; get MSB into CF
RCR BL, 1   ; rotate it into BL
LOOP @REVERSE

CMP DL,BL
JZ PALINDROME

MOV AX, @DATA
MOV DS, AX
LEA DX, NP ;display not palindrome
MOV AH, 9
INT 21H
JMP QUIT:

PALINDROME:
MOV AX, @DATA
MOV DS, AX
LEA DX,YP ;display Palindrome
MOV AH, 9
INT 21H     

QUIT: 
END


ret











