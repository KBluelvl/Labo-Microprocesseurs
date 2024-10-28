global main 

Section .text
main:

mov rax, -478

bt rax, 0
jc impair 
mov rax, 0
jmp fin
impair :
mov rax, 1
fin:
mov rax, 60
mov rdi, 0
syscall
