global _start

section .bss
tab	RESQ	100

section .text
_start:

mov r8, 99
mov r9, 0

boucle:
mov qword[tab+8*r9], r8
dec r8
inc r9
cmp r9, 100
jnz boucle

fin:
mov rax, 60
mov rdi, 0
syscall
