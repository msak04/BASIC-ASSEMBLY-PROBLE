
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP

MOV AX, 0F000h
MOV DS, AX   
MOV BX, 0FFFFh  
MOV BYTE PTR DS:[BX], 01h ;In this section we are Storing Data for Test 

MOV AX, 0F000h
MOV DS, AX   
MOV BX, 0FFFFh  
MOV BL, BYTE PTR DS:[BX] 
 
MOV DL,0

MOV CX,8   ; save the loop count
    

@RLOOP:
ROL BL, 1   ; Storing  MSB into CF
JC SKIP    ; jump if carry is 1
INC DL      ; if carry is 1,then increase dl        

SKIP:
LOOP @RLOOP     

 
END


ret











