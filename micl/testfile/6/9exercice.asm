global _start

section .bss
fd	RESB	1

section .text
_start:

mov rsi, fd
mov rdx, 1

boucle:
;read
mov rax, 0
mov rdi, 0
syscall

cmp rax, 1
jnz fin

;write
mov rax, 1
mov rdi, 1
syscall

jmp boucle

fin:
mov rax, 60
mov rdi, 0
syscall
