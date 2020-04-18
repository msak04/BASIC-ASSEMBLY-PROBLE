
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP

 MOV AL, 02h ;In this section we are Storing Data for Test 
 MOV BL, 02H
 MUL BL     
 MOV CX,AX
 MOV AL, 02h
 
 MOV BL, 04H
 MUL BL
 MOV DX,AX
 MOV AL, 02h
 
 MOV BL, 08H
 MUL BL
 MOV BX,AX
 MOV AL, 02h
 
 MOV AH, 0fH   
 MUL AH
 
 
END


ret











