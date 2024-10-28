global _start

section .bss

nb          RESB     1
ligne	    RESB     1

section .text
_start:
mov r8, 0
mov byte [ligne], `\n`
mov byte[nb], 0
or byte[nb], 0x30

boucle:
; write
mov rax, 1
mov rdi, 1
mov rsi, nb
mov rdx, 1
syscall

; write
mov rax, 1
mov rdi, 1
mov rsi, ligne
mov rdx, 1
syscall

inc byte[nb]
inc r8
cmp r8, 10
jnz boucle

; fin
mov rax, 60
mov rdi, 0
syscall
