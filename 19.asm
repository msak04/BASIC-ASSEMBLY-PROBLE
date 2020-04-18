
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP
    
MOV CL, 0E3H

AND CL, 0FEh  ; set the lsb  of BL register
AND CL, 7Fh  ; set theof BL register
END

ret




