;program to print string using array:
dosseg
.model small
.stack 100h
.data
vowels db 'aeiou'
a1 db 'output: $'
.code
main proc
mov ax,@data
mov ds,ax
mov dx,offset a1
mov ah,9
int 21h
mov si,offset vowels
mov cx,5
l1:
mov dx,[si]
mov ah,2
int 21h
inc si
loop l1
mov ah,4ch
int 21h
main endp
end main
