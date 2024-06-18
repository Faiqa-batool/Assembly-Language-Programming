;to print a single character on screen
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
;main procedure starts
MOV DL,'F'
MOV AH,2
;to print character F
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
;main procedure ends
END MAIN
;program ends
