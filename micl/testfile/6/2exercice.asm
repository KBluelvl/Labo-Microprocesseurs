global _start

section .bss
tab	RESQ	100

section .text
_start:

mov r8, 0

boucle:
mov [tab+8*r8], r8
inc r8

cmp r8, 99
jnz boucle

fin:
mov rax, 60
mov rdi, 0
syscall
