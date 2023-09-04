;Program to print 0 to 9
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV CX,10     ;to declare range of loop
MOV BL,48     ;to declare 1st number print in loop
MOV DL,BL
L1:           ;start of loop
MOV AH,2      ;to print
INT 21H

MOV DL,10     ;for line feed
MOV AH,2
INT 21H

INC BL      ;for increment
MOV DL,BL
LOOP L1       ;end of loop
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
