global _start

section .text
_start:

push rbp
mov rbp, rsp


mov rax, 12
mov rbx, 47

push rax
mov rax, rbx
pop rbx

mov rsp, rbp
pop rbp

fin:
mov rax, 60
mov rdi, 0
syscall
