global _start

section .bss
tab	RESQ	100

section .text
_start:

mov r8, 0	;i
mov r9, 0	;i*2

boucle:
mov qword[tab+8*r8], r9
inc r8
inc r9
inc r9

cmp r8, 100
jnz boucle

fin:
mov rax, 60
mov rdi, 0
syscall
