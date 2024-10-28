global main

Section .text
main:
mov r14, -478
mov r15, 147

cmp r14, r15
jz egal

mov r8, r14
mov r14, r15
mov r15, r8
jmp fin
egal:
mov r14, 0
mov r15, 0

fin:
mov rax, 60
mov rdi, 0
syscall
