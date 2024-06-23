;PROGRAM TO PRINT a TO z:
dosseg
.model small
.stack 100h
.data
.code
main proc
mov cx,26        ;TO DECLARE RANGE OF LOOP
mov bl,97        ;TO DECLARE INITIAL POINT OF LOOP
mov dl,bl
atoz:            ;START OF LOOP
mov ah,2         ;TO PRINT
int 21h

mov dl,10        ;FOR LINE FEED
mov ah,2
int 21h

inc bl           ;FOR INCREMENT
mov dl,bl
loop atoz        ;END OF LOOP

mov ah,4ch
int 21h

main endp
end main
