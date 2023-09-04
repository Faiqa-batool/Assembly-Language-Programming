;Program to compare two numbers and print whether they are equal or not &
;less than or greater than:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
I1 DB 'Enter First Number: $'     ;storing strings in variables to print
I2 DB 'Enter Second Number: $'
M1 DB 'Numbers Are Equal$'
M2 DB 'Numbers Are Not Equal$'
M3 DB ' Is Greater Than $'
M4 DB ' Is Less Than $'
.CODE
MAIN PROC
MOV AX,@DATA              ;to access data from .DATA
MOV DS,AX                 ;to access data randomly from .DATA

MOV DX,OFFSET I1          ;to print string stored in I1
MOV AH,9
INT 21H
MOV AH,1                  ;to take first input
INT 21H
MOV BL,AL                 ;to move in BL

MOV DX,10                 ;for enter key
MOV AH,2
INT 21H

MOV DX,OFFSET I2          ;to print string stored in I2
MOV AH,9
INT 21H
MOV AH,1                  ;to take second input
INT 21H
MOV CL,AL                 ;to move in CL

MOV DX,10                 ;for enter key
MOV AH,2
INT 21H
MOV DX,10
MOV AH,2
INT 21H

CMP CL,BL                 ;to compare both numbers
JNE L1                    ;jump to L1 if not equal

MOV DX,OFFSET M1          ;to print 'Numbers Are Equal'
MOV AH,9
INT 21H
MOV DX,10                 ;for enter key
MOV AH,2
INT 21H
MOV AH,4CH                ;if numbers are equal than program will stop here
INT 21H                   ;otherwise will proceed further


L1:                       ;label of chunk of code
MOV DX,OFFSET M2          ;to print 'Numbers Are Not Equal'
MOV AH,9
INT 21H
MOV DX,10                 ;for enter key
MOV AH,2
INT 21H
                          ;Hence,numbers are not equal.
                          ;Therefore, the code will proceed further

CMP CL,BL                 ;to compare both numbers
JL L2                     ;jump to L2 if CL is less than BL

MOV DL,BL
MOV AH,2                  ;to print first number
INT 21H

MOV DX,OFFSET M4          ;to print 'Is Less Than'
MOV AH,9
INT 21H
MOV DL,CL                 ;to print second number
MOV AH,2
INT 21H
MOV AH,4CH
INT 21H

L2:                       ;label of chunk of code
MOV DL,BL                 ;to print first number
MOV AH,2
INT 21H
MOV DX,OFFSET M3          ;to print 'Is Greater Than'
MOV AH,9
INT 21H
MOV DL,CL                 ;to print second number
MOV AH,2
INT 21H
MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN
