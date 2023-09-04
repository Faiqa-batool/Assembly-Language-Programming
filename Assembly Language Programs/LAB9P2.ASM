;PROGRAM TO PRINT A PATTERN USING NESTED LOOP:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
A DB '------PATTERN------$'    ;ASSIGNED VARIABLE
.CODE
MAIN PROC                    ;MAIN PROCEDURE
MOV AX,@DATA
MOV DS,AX
MOV DX,OFFSET A              ;PRINTING VARIABLE
MOV AH,9
INT 21H
MOV DX,10                    ;ENTER KEY
MOV AH,2
INT 21H
MOV BX,1                     ;MOVING 1 INTO BX
MOV CX,5                     ;SETTING COUNTER REGISTER FOR L1
L1:                          ;LOOP LABEL
PUSH CX                      ;PUSH CX INTO STACK
MOV CX,BX                    ;MOVING BX INTO CX BECAUSE WE ARE SETTING
                             ;COUNTER REGISTER FOR L2
L2:                          ;LOOP LABEL
MOV AX,CX                    ;MOVING CX INTO AX
ADD AX,48                    ;ADDING 48 INTO AX, SO THAT IT CAN PRINT INTEGER
MOV DX,AX                    ;PRINTING THE INTEGER
MOV AH,2
INT 21H
LOOP L2                      ;END OF LOOP
MOV DX,10                    ;ENTER KEY
MOV AH,2
INT 21H
INC BX                       ;INCREMENT IN BX BECAUSE NUMBER OF INTEGER IS
                             ;INCREASING IN EVERY LINE
POP CX                       ;POP VALUE FROM STACK AND MOVE TO CX BECAUSE WE
                             ;ARE IN FIRST LOOP
LOOP L1                      ;END OF LOOP
MOV AH,4CH
INT 21H
MAIN ENDP                    ;END MAIN PROCEDURE
END MAIN
