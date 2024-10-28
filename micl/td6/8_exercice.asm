global _start

section .rodata

    digits     DB         `0123456789\n`

section .text
_start:
mov r8, digits
mov r12, 0

boucle:
; write
mov rax, 1
mov rdi, 1
mov rsi, r8
mov rdx, 1
syscall

; write
mov rax, 1
mov rdi, 1
mov rsi, digits+10
mov rdx, 2
syscall

inc r8
inc r12
cmp r12, 10
jnz boucle

; fin
mov rax, 60
mov rdi,0
syscall
