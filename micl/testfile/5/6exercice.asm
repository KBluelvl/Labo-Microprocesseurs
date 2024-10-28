global _start

section .text
_start:
nop
mov rax, 1

SEEK_SET, inc 1
SEEK_CUR, 1
SEEK_END,



fin:
mov rax, 60
mov rdi, 0
syscall
