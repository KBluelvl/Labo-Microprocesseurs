global _start

section .bss
nb   RESB    1

section .text
_start:

mov bl, 6      ;on mets dans bl un entier [0,9]
mov bh, bl
or bh, 0x30
mov [nb], bh

;write
mov rax, 1
mov rdi, 1
mov rsi, nb
mov rdx, 1
syscall

;fin
mov rax, 60
mov rdi, 0
syscall
