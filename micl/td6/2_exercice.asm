global _start

section .bss 

tab        RESQ		100

section .text
_start:
mov rax, 0

boucle:
mov [tab+8*rax], rax
inc rax
cmp rax, 100
jnz boucle

;fin
mov rax, 60
mov rdi, 0
syscall
