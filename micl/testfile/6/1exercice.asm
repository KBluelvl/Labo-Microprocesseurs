global _start

section .bss
tab	RESB	10

section .text
_start:

mov byte[tab+1*2], 3
mov byte[tab+1*7], 8

fin:
mov rax,60
mov rdi, 0
syscall
