global _start

section .text
_start:

push    rbp
mov     rbp, rsp

sub     rsp, 1
mov     rsi, rbp
dec     rsi
mov     rdx, 1
boucle:
mov     rax, 0
mov     rdi, 0
syscall

cmp rax, 1
jnz fin_boucle

mov     rax, 1
mov 	rdi, 1
syscall

jmp boucle

fin_boucle:
mov rsp, rbp
pop rbp

fin:
mov rax, 60
mov rdi, 0
syscall
