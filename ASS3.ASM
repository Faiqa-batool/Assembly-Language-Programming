;to take input and print on screen
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC        ;main procedure starts
MOV AH,1
INT 21H          ;to take input
MOV DL,AL
MOV AH,2
INT 21H          ;to print on screen
MOV AH,4CH
INT 21H
MAIN ENDP        ;main procedure ends
END MAIN         ;program ends
