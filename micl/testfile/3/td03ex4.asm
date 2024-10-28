global _start

section .text
_start:
mov rax, 45
mov rbx, 322

cmp rax, rbx
js suite
mov r8, rax
mov r9, rbx
jmp fin

suite:
mov r8, rbx
mov r9, rax

fin:
mov rax, 60
mov rdi, 0
syscall
