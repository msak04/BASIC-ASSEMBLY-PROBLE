
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP
    
MOV BL, 0E3H

OR BL, 01h  ; set the lsb of BL register
OR BL, 80h  ; set the msb of BL register
END

ret




