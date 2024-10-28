global _start

section .data
a	DQ	0x123456
b	DQ	123456

section .text
_start:

push rbp
mov rbp, rsp

push qword[a]
push qword[b]

pop qword[a]
pop qword[b]

mov rsp, rbp
pop rbp
fin:
mov rax, 60
mov rdi, 0
syscall
