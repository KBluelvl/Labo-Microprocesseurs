global _start

section .text
_start:

push rbp
mov rbp, rsp

mov r8, 0
mov r9, 0
debut:
dec rsp
mov byte[rbp + r8], r9b
or byte[rbp + r8], 0x30
dec r8
inc r9
cmp r9, 10
jnz debut

sub rsp, 2
mov word[rsp], `\n`
mov r9, 0
mov rdx, 1
boucle2:
mov r8, 0
;write
mov rax, 1
mov rdi, 1
mov rsi, rbp
boucle:
cmp r8, r9
jz suite
dec rsi
inc r8
jmp boucle
suite:
syscall

;write passe à la ligne
mov rax, 1
mov rdi, 1
mov rsi, rsp
syscall

inc r9
cmp r9, 10
jnz boucle2

mov rsp, rbp
pop rbp

fin:
mov rax, 60
mov rdi, 0
syscall

