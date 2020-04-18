
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.DATA
    AC DB 'AUXALARY CARRY$'
    NAC DB 'NO AUXALARY CARRY$'
    
.CODE
MAIN PROC 
     
MOV AL, 88h 
MOV AH, 0Ch ; loading demo data
MOV CX, 4  
SHL AL, CX
SHL AH, CX 
ADD AL, AH
JC  O
      
MOV AX, @DATA
MOV DS, AX
MOV AH, 9
LEA DX, NAC
INT 21H
JMP QUIT

O:
MOV AX, @DATA
MOV DS, AX
MOV AH, 9
LEA DX, AC
INT 21H
QUIT:
END

ret
