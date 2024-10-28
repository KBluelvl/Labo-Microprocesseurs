global _start

section .bss

tab      RESW	     10

section .text
_start:
mov word [tab+2*2], 3
mov word [tab+2*7], 8

; fin
mov rax, 60
mov rdi, 0
syscall
