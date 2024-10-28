global main

Section .text
main:
mov rax, 444
mov rbx, 78

cmp rax, rbx
js plus_Petit
mov r8, rax
mov r9, rbx
jmp  fin
plus_Petit:
mov r8, rbx
mov r9, rax

fin:
mov rax, 60
mov rdi, 0
syscall
