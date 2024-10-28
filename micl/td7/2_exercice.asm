global _start

section .data
nb1      DQ       48
nb2      DQ       76

section .text
_start:

push rbp

push qword [nb1]
push qword [nb2]

pop qword [nb1]
pop qword [nb2]

mov rsp, rbp
pop rbp
; fin
mov rax, 60
mov rdi, 0
syscall
