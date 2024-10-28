global _start

section .rodata
tab		DQ	11,24,3,4,5,6,7,8,9,10

section .text
_start:

boucle:
mov r9, [tab+8*r8]
bt r9, 0
jc suite
inc r15
suite:
inc r8
cmp r8, 10
jnz boucle

fin:
mov rax, 60
mov rdi, 0
syscall
