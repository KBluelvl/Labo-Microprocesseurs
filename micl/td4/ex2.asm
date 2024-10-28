global _start

Section .data
nb 	DD 	0x123456

Section .text
_start:
mov rax, nb
mov rax, [nb]

mov rax, 60
mov rdi, 0
syscall
