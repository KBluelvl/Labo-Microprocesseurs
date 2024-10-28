global _start

section .data
nb 	DB	0

section .text
_start:

push rbp
mov rsp, rbp

mov byte[rbp - 1], 0x34


sub rsp, 1
lea rsi, [rbp - 1]

;write
mov rax, 1
mov rdi, 1
mov rdx, 1
syscall

;fin
mov rax, 60
mov rdi, 0
syscall
