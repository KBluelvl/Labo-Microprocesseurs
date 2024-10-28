global _start

section .bss
nb	RESB	1

section .rodata
msg	DB	`\n`

section .text
_start:
;read
mov rax, 0
mov rdi, 0
mov rsi, nb
mov rdx, 1
syscall

;write
mov rax, 1
mov rdi, 1
mov rsi, nb
mov rdx, 1
syscall

;write
mov rax, 1
mov rdi, 1
mov rsi, msg
mov rdx, 1
syscall

fin:
mov rax, 60
mov rdi, 0
syscall
