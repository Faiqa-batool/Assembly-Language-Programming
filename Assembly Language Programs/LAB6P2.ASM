;PROGRA TO REVERSE A STRING:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
STRING DB 'ASSEMBLY$'           ;VARIABLE DECLARATION
A DB 'STRING: $'
B DB 'REVERSE STRING: $'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV DX,OFFSET A                 ;IT WILL PRINT STRING "STRING: "
MOV AH,9
INT 21H
MOV DX,OFFSET STRING            ;IT WILL PRINT THE ORIGINAL STRING
MOV AH,9
INT 21H
MOV SI,OFFSET STRING            ;IT WILL MOVE THE ORIGINAL STRING TO SI
                                
MOV CX,8                        ;LOOP WILL EXECUTE 8 TIMES
L1:                             ;LOOP LABEL
MOV BX,[SI]                     ;MOVE VALUE OF SI IN BX
PUSH BX                         ;PUSH INTO STACK
INC SI                          ;INCREMENT IN SI
LOOP L1                         ;LOOP END

MOV DX,10                       ;NEXT LINE
MOV AH,2
INT 21H

MOV DX,OFFSET B                 ;IT WILL PRINT STRING "REVERSE STRING: "
MOV AH,9
INT 21H

MOV CX,8                        ;LOOP WILL EXECUTE 8 TIMES
L2:                             ;LOOP LABEL
POP DX                          ;VALUE POP FROM STACK AND STORE INTO DX
MOV AH,2                        ;TO PRINT
INT 21H
LOOP L2                          ;LOOP ENDS
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
