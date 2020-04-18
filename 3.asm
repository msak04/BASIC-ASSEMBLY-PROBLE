
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP

L0:MOV AX, 00000h
L2:MOV DS, AX   
L3:MOV BX, 00000h  
L4:MOV BYTE PTR [BX], 2h
    
L5:MOV AX, 0F000h
L6:MOV DS, AX
L7:MOV BX, 0FFFFh
L8:MOV BYTE PTR [BX], 3h   ;In this section we are Storing Data for Test    
        
L9:MOV AX,0000H            
L10:MOV DS,AX               ; Storing First Memory Location Segment Part In DS 
L11:MOV BX,0000H            ; Storing First Memory Location Offset Part In BX 
L12:MOV AL,BYTE PTR DS:[BX] ; Taking the Value From First MEmory Location Into AL 
L13:MOV CL,AL               ; Storing the value from AL to CL for preventing Data loss

L14:MOV AX,0F000H 
L15:MOV DS,AX               ; Storing LAST Memory Location Segment Part In DS
L16:MOV BX,0FFFFH           ; Storing Last Memory Location Offset Part In BX
L17:MOV AL,BYTE PTR DS:[BX] ; Taking the Value From Last Memory Location Into AL
L18:MOV CH,AL               ; Storing the value from AL to CH for preventing Data loss

L19:ADD CH,CL               ; Adding CH and Cl and storing it in CH

L20:MOV AL,CH               ; Storing the reasult in AL from CL for storing purpose

L21:OUT 0FEH,AL             ; Storing the reasult in Last Fixed Address from AL

END
ret