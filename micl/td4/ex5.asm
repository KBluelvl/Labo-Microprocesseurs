global _start

Section .data
var1	DB	1
var2	DB	2

Section .text
_start:

mov al, [var1]
mov ah, [var2]
mov [var1], ah
mov [var2], al

mov rax, 60
mov rdi, 0
syscall
