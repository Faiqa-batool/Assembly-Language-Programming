;Practice of XOR operation:
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
MOV BL,101B    ;move 101(binary) into BL register
XOR BL,110B    ;apply XOR operator on value in BL and 110(binary)
ADD BL,48      ;add 48(ASCII OF ZERO) in BL
MOV DL,BL
MOV AH,2       ;to print
INT 21H

MOV AH,4CH
INT 21H

MAIN ENDP
END MAIN
