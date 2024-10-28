global main

section .text
main:

nop

mov bl, 7
mov bh, bl

or bl, 0x30

mov rax, 60
mov rdi, 0
syscall
