global main

Section .text
main:
mov rdi, 0x8

bt rdi, 0
jnc si_pair
mov rsi, 0
jmp fin
si_pair: ; pair = multiple de 2
mov rsi, 1
bt rdi, 1
jc fin
mov rdi, 2
bt rdi, 2
jc fin
mov rdi, 3

fin:
mov rax, 60
mov rdi, 0
syscall
