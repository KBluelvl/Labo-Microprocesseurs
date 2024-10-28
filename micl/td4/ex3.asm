global _start

Section .bss

nb 	RESQ 	1

Section .text
_start:
mov qword [nb], 42

mov rax, 60
mov rdi, 0
syscall
