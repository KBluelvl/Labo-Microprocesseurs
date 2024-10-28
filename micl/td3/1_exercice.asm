global main

Section .text
main:
mov rax, 0

cmp rax, 0
jz fin
mov rbx, 1

fin :
mov rax, 60
mov rdi, 0
syscall
