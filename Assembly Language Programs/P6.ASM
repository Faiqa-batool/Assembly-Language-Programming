;Program to use AND OPERATOR while using LOOP:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV CX,3          ;to declare range of loop
MOV BL,110B       ;move 110(binary) into BL register

L1:               ;loop label, start of loop
AND BL,101B       ;applying AND OPERATOR on the value in BL and 101(binary)
ADD BL,48         ;add 48(ASCII OF ZERO) into BL
MOV DL,BL
MOV AH,2          ;to print
INT 21H

MOV DX,10         ;for line feed
MOV AH,2
INT 21H

INC BL            ;for increment in BL
LOOP L1           ;end of loop
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
