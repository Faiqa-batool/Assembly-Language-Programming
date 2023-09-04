;Practice of OR operation:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV BL,101B     ;move 101(binary value) store in BL register
OR BL,110B      ;applying OR operator on the value in BL and 110(binary)
ADD BL,48       ;to add 48(ASCII OF ZERO) in BL
MOV DL,BL
MOV AH,2        ;to print
INT 21H

MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN
