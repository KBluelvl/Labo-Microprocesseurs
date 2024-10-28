global _start

section .data

tab        times  100   DQ   0

section .text
_start:
mov rax, 0
mov r8, 100
boucle:
mov [tab+8*rax], r8
inc rax
dec r8
cmp rax, 100
jnz boucle

mov rax, 60
mov rdi, 0
syscall
