global _start

section .rodata

tab        DQ       1,2,3,4,5,6,7,8,9,10

section .text
_start:
mov r8, [tab]
mov r10, [tab]
mov rax, 1

boucle:
cmp r8, [tab+8*rax]
js suite
mov r8, [tab+8*rax]
suite:
cmp r10, [tab+8*rax]
jns ensuite
mov r10, [tab+8*rax]
ensuite:
inc rax
cmp rax, 10
jnz boucle

; fin
mov rax, 60
mov rdi, 0
syscall
