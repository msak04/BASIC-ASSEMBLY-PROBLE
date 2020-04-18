
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.MODEL SMALL
.STACK 100H

.DATA
    prompt DB 'Enter a number between 0-9 :$'
    
.CODE
MAIN PROC 
     
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, prompt  ; display the prompt
    INT 21h
    
    MOV AH, 1
    INT 21h         ; read a character
    
    MOV DL, AL
    SUB DL, 30h     ; converts to numerical value
    
    MOV AH, 4CH ; return control to DOS
    INT 21H
    
MAIN ENDP
END MAIN

ret




