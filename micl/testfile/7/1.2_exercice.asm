global _start

section .text
_start:

mov rax, 0x4856
mov rbx, 0x7949

push rbp
mov rbp, rsp

push rax
push rbx

pop rax
pop rbx

pop rbp
fin:
mov rax, 60
mov rdi, 0
syscall
