global _start

section .data
nomFichier	DB	`file`, 0
nomFichier2	DB	`file2`, 0
lettre		DB	 0

section .text
_start:

;open
mov rax, 2
mov rdi, nomFichier
mov rsi, 0q
syscall

; on enregistre le fd du premier fichier
mov r8, rax

;open
mov rax, 2
mov rdi, nomFichier2
mov rsi, 1q
syscall

; on enregistre le fd du deuxième fichier
mov r9, rax

boucle:
;read
mov rax, 0
mov rdi, r8
mov rsi, lettre
mov rdx, 1
syscall

cmp rax, 0
jz fin

;write
mov rax, 1
mov rdi, r9
mov rsi, lettre
mov rdx, 1
syscall

jmp boucle

fin:
mov rax, 60
mov rdi, 0
syscall
