global _start

section .text
_start:
mov rax, 5
mov rbx, 21
mov r8, 0

push rbp
push rax
pop r8

mov rax, rbx
mov rbx, r8

mov rsp, rbp
pop rbp

; fin
mov rax, 60
mov rdi, 0
syscall
