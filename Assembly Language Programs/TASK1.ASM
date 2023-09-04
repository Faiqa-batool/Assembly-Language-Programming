;PROGRAM TO TAKE INPUT TWO NUMBERS ON TWO DIFFERENT LINES AND ADD THEM:
dosseg
.model small
.stack 100h
.data                       ;VARIABLES DECLARATION
num1 db ?                   ;DECLARE VARIABLE num1
a1 db 'First number: $'     ;TO STORE STRING IN VARIABLES
a2 db 'Second number: $'
a3 db 'Answer: $'
a4 db 'Addition$'
.code
main proc                   ;MAIN PROCEDURE STARTS
mov ax,@data                ;TO ACCESS VARIABLES DECLARED IN .data
mov ds,ax                   ;TO ACCESS RANDOM VARIABLES

mov dx,offset a4            ;TO PRINT STRING STORED IN a4
mov ah,9
int 21h

mov dx,10                   ;FOR LINE FEED
mov ah,2                    
int 21h
mov dx,13                   ;FOR CARRIAGE RETURN
mov ah,2
int 21h

mov dx,offset a1            ;TO PRINT STRING STORED IN a1
mov ah,9
int 21h

mov ah,1                    ;TO TAKE 1ST INPUT
int 21h
mov num1,al                 ;TO MOVE INPUT VALUE IN VARIABLE num1

mov dx,10                   ;FOR LINE FEED
mov ah,2
int 21h
mov dx,13                   ;FOR CARRIAGE RETURN
mov ah,2
int 21h

mov dx,offset a2            ;TO PRINT STRING STORED IN a2
mov ah,9
int 21h

mov ah,1                    ;TO TAKE 2ND INPUT
int 21h
mov bl,al                   ;TO MOVE INPUT VALUE IN REGISTER bl

mov dx,10                   ;FOR LINE FEED
mov ah,2
int 21h
mov dx,13                   ;FOR CARRIAGE RETURN
mov ah,2
int 21h

mov dx,offset a3            ;TO PRINT STRING STORED IN a3
mov ah,9
int 21h

add num1,bl                 ;TO ADD VALUES STORED IN num1 AND bl
sub num1,48                 ;TO SUBTRACT 48(ASCII OF 0) FROM num1
mov dl,num1                 ;TO MOVE VALUE FROM num1 TO dl
mov ah,2                    ;TO PRINT THE VALUE
int 21h

mov ah,4ch
int 21h

main endp                   ;MAIN PROCEDURE ENDS
end main


