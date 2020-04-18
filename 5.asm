
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

NOP

MOV AX, 00000h
MOV DS, AX
   
MOV BX, 00000h  
MOV BYTE PTR [BX], 1h

MOV BX, 00001h
MOV BYTE PTR [BX], 1h

MOV BX, 00002h
MOV BYTE PTR [BX], 1h   ;In this section we are Storing Data for Test 

MOV AX, 00000h
MOV DS, AX              ; Storing First Memory Location Segment Part In DS 

MOV BX, 00000h          ; Storing First Memory Location Offset Part In BX
MOV CH,BYTE PTR [BX]    ; Taking the Value From First MEmory Location Into CH

MOV BX, 00001h          ; Storing Second Memory Location Offset Part In BX
MOV CL, BYTE PTR [BX]   ; Taking the Value From First MEmory Location Into CL 

ADD CH,CL               ; Adding CH,CL and storing the result in CH

MOV BX, 00002h          ; Storing Third Memory Location Offset Part In BX
ADD CH,BYTE PTR [BX]    ; Adding the Third Memory Location value with previous result 

MOV AL, CH              ; Storing the reasult fron CH to AL for writing purpose
MOV DX, 0FFFFh          ; Storing a random variable port address in DX
OUT DX, AL              ; Writing the reasult in a random variable port 
    
END
RET
