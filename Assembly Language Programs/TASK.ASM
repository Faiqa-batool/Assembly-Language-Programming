;PROGRAM TO PRINT TWO STRINGS ON TWO DIFFERENT LINES
dosseg
.model small
.stack 100h
.data                  ;VARIABLE DECLARATION
msg1 db 'HI$'
msg2 db 'BYE$'
.code
main proc
mov ax,@data           ;TO ACCESS VARIABLES DECLARED IN .data
mov ds,ax              ;TO ACCESS VARIABLES RANDOMLY

mov dx,offset msg1     ;TO PRINT STRING STORED IN msg1
mov ah,9
int 21h

mov dx,10              ;FOR LINE FEED
mov ah,2
int 21h
mov dx,13              ;FOR CARRIAGE RETURN
mov ah,2
int 21h

mov dx,offset msg2     ;TO PRINT STRING STORED IN msg2
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
