global _start

section .text
_start:

push rbp
mov rbp, rsp

mov r8, 0
mov r10, 0
sub rsp, 12

; initialise 0 à 9 sur la pile
debut:
mov byte[rbp + r8], r10b
or byte [rbp + r8], 0x30

dec r8
inc r10
cmp r10, 10
jnz debut

mov word[rsp], `\n`

mov r12, 0
mov r10, 10
boucle2:
mov r8, 0

; write
mov rax, 1
mov rdi, 1
mov rsi, rbp
boucle:
cmp r8, r12
jz suite
dec rsi
inc r8
jmp boucle
suite:
mov rdx, 1
syscall

; write passer à la ligne
mov rax, 1
mov rdi, 1
mov rsi, rsp
mov rdx, 2
syscall

inc r12
cmp r12, r10
jnz boucle2

mov rsp, rbp
pop rbp

; fin
mov rax, 60
mov rdi, 0
syscall
