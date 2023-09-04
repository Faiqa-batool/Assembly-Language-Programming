;PROGRAM TO PRINT AN ARRAY USING LOOP:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
VOWELS DB 'A','E','I','O','U'    ;INITIALIZING ARRAY
VAR1 DB 'VOWELS: $'
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
MOV DX,OFFSET VAR1               ;TO PRINT 'VOWELS: '
MOV AH,9
INT 21H

MOV SI,OFFSET VOWELS             ;MOVE ARRAY OF VOWELS INTO SI

MOV CX,5                         ;INITIALIZING LOOP
L1:                              ;LOOP LABEL
MOV DX,[SI]
MOV AH,2                         ;PRINT VALUES
INT 21H
MOV DX,32                        ;FOR SPACE
MOV AH,2
INT 21H
INC SI                           ;INCREMENT SI
LOOP L1                          ;END OF LOOP

MOV AH,4CH                                    
INT 21H
MAIN ENDP
END MAIN













MAIN ENDP
END MAIN
