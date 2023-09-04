;PROGRAM TO PRINT PYRAMID OF '*':
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
A DB '----------PYRAMID----------$'    ;ASSIGNED VARIABLE
.CODE
MAIN PROC                   ;MAIN PROCEDURE
MOV AX,@DATA
MOV DS,AX
MOV DX,OFFSET A             ;PRINTING THE VARIABLE
MOV AH,9
INT 21H
MOV DX,10                   ;ENTER KEY
MOV AH,2
INT 21H
MOV BX,1                    ;MOVING 1 IN BX
MOV CX,5                    ;SETTING COUNTER REGISTER FOR LOOP L1
L1:                         ;LOOP LABEL
PUSH CX                     ;PUSH CX IN STACK BECAUSE WE WILL USE NEW VALUE
                            ;OF CX FOR SECOND LOOP(NESTED LOOP)
MOV CX,BX                   ;MOVING BX INTO CX SO THAT '*' WILL PRINT
                            ;CX TIMES IN A SINGLE LINE
L2:                         ;LOOP LABEL
MOV DX,'*'                  ;PRINTING '*'
MOV AH,2
INT 21H
LOOP L2                     ;END OF SECOND LOOP
MOV DX,10                   ;ENTER KEY
MOV AH,2
INT 21H
INC BX                      ;INCREMENT IN BX BECAUSE IN EVERY LINE NUMBER OF
                            ;ESTERIK IS INCREASING
POP CX                      ;POP CX FROM STACK BECAUSE WE ARE IN FIRST LOOP
LOOP L1                     ;END OF FIRST LOOP
MOV AH,4CH
INT 21H
MAIN ENDP                   ;END MAIN PROCEDURE
END MAIN

