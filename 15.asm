
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP

 MOV AX, 02h ; load demo data into AL ;In this section we are Storing Data for Test 
 MOV BL, 02H
 DIV BL ; AH = Quotent and AL = Reminder     
 MOV CX,AX 
 
 MOV AX, 04h
 MOV BL, 04H
 DIV BL; AH = Quotent and AL = Reminder 
 MOV DX,AX  
 
 MOV AX, 08h
 MOV BL, 08H
 DIV BL; AH = Quotent and AL = Reminder 
 MOV BX,AX
 
 MOV AX, 0fh
   
 DIV BL
 
 
END


ret











