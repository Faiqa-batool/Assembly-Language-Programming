;program to take input two numbers and add them:
dosseg
.model small
.stack 100h
.data
h1 db '----------ADDITION----------$'
h2 db 'Enter a number: $'
h3 db 'ANSWER: $'
.code
main proc
mov ax,@data
mov ds,ax
lea dx,h1
mov ah,9
int 21h
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
lea dx,h2
mov ah,9
int 21h
mov ah,1
int 21h
mov bl,al
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
lea dx,h2
mov ah,9
int 21h
mov ah,1
int 21h
mov cl,al
mov dx,10
mov ah,2
int 21h
mov dx,13
mov ah,2
int 21h
lea dx,h3
mov ah,9
int 21h
add bl,cl
sub bl,48
mov dl,bl
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
