global _start

section .rodata

tab       DQ       1,2,3,4,5,6,7,8,9,10

section .text
_start:
mov r15, 0
mov rax, 0

boucle:
bt qword [tab+8*rax], 0
jc suite
inc r15
suite:
inc rax
cmp rax, 10
jnz boucle

mov rax, 60
mov rdi, 0
syscall
