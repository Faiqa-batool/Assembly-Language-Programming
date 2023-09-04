;program to use loop:
dosseg
.model small
.stack 100h
.data
.code
main proc
mov cx,10
mov bl,48
mov dl,48
l1:
mov ah,2
int 21h
inc bl
mov dl,bl
loop l1
mov ah,4ch
int 21h
main endp
end main
