
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

MOV BX, 00002h          ; Storing Third Memory Location Offset Part In BX
MOV AL,BYTE PTR [BX]    ; Adding the Third Memory Location value with previous result 

CMP CH, CL
JG @GREATER1 ; jump if first is greater than second
    
CMP CL, AL
JG @SG  ; second is the greatest  
    
    MOV DL, AL  ; third is the greatest
    JMP @END
    
    @GREATER1:
        CMP CH, AL
        JG @FG  ; first is the greatest
        
        MOV DL, AL  ; third is the greatest
        JMP QUIT
    
    @FG:
        MOV DL, CH
        JMP QUIT  
    @SG:
        MOV DL, CL                                                               
    

                                                                  

QUIT:          
END
RET
