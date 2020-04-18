
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP
    
MOV BL, 13H

XOR BL, 80h  ; change the sign bit of BL

END

ret




