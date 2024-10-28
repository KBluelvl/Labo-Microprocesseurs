global _start

section .text
_start:

push rbp
mov rbp, rsp

dec rsp
mov byte[rsp], 5
or byte[rsp], 0x30

;write
mov rax, 1
mov rdi, 1
mov rsi, rsp
mov rdx, 1
syscall

mov rsp, rbp
pop rbp

fin:
mov rax, 60
mov rdi, 0
syscall
