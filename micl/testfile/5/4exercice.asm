global _start

section .data
pair	        DB	`pair\n`, 0
taille_pair	DQ	 $ - pair     ;taille de paire en byte : 6
impair          DQ	`impair\n`, 0
taille_impair   DQ	 $ - impair   ;taille de impair en byte : 8
nb		DQ       0

section .text
_start:

;read
mov rax, 0
mov rdi, 0
mov rsi, nb
mov rdx, 8
syscall

mov r8, 64

mov rcx, qword[nb]
bt rcx, 0
jc si_impair

;si_pair
mov rax, 1	;write
mov rdi, 1
mov rsi, pair
mov rdx, [taille_pair]
syscall
jmp fin

si_impair:
mov rax, 1	;write
mov rdi, 1
mov rsi, impair
mov rdx, [taille_impair]
syscall

fin:
mov rax, 60
mov rdi, 0
syscall
