;to print a name with character
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC        ;main procedure starts
MOV DL,'F'       
MOV AH,2         ;to print character F
INT 21H
MOV DL, 'A'
MOV AH,2         ;to print character A
INT 21H
MOV DL, 'I'
MOV AH,2         ;to print character I
INT 21H
MOV DL, 'Q'
MOV AH,2         ;to print character Q
INT 21H
MOV DL, 'A'
MOV AH,2         ;to print character A
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP        ;main procedure ends
END MAIN         ;program ends                    
