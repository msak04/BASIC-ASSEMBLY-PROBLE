
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
NOP
MOV AL,0FH ;In this section we are Storing Data for Test 
MOV CX, 8

@R:
SHL AL, 1   ; get MSB into CF
RCR BL, 1   ; rotate it into BL
LOOP @R
END
ret




