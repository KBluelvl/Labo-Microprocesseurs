global _start

section .bss

tab        RESQ     100

section .text
_start:
mov rax, 0
mov rcx, 0

boucle:
mov [tab+8*rax], rcx
inc rax
inc rcx
inc rcx
cmp rax, 100
jnz boucle

mov rax, 60
mov rdi, 0
syscall
