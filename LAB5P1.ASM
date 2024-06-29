;Program to take input a number and compare with a predefined number
;and tell it is equal or not:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
M1 DB 'Number is equal$'          ;declaring variables and storing values
M2 DB 'Number is not equal$'
M3 DB 'Enter Number: $'
.CODE
MAIN PROC
MOV AX,@DATA                ;to access data from .DATA
MOV DS,AX                   ;to access data randomly from .DATA
MOV DX,OFFSET M3            ;to print M3(string value)
MOV AH,9
INT 21H

MOV AH,1                    ;to take input a number
INT 21H
MOV DL, '3'                 ;predefined number
CMP AL,DL                   ;compare both numbers
JE L1                       ;jump to L1 if numbers are equal
MOV DX,10                   ;for enter key
MOV AH,2
INT 21H
MOV DX,OFFSET M2            ;to print M2(string value)
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H

L1:                         ;Label of chunk of code
MOV DX,10                   ;for enter key
MOV AH,2
INT 21H
MOV DX,OFFSET M1            ;to print M1(string value)
MOV AH,9
INT 21H
MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN
