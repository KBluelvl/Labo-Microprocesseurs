global _start

section .data
nomFichier	DB	`file`, 0
message		DB	`impossible d'ouvrir le fichier`
taille_message	DQ	$ - message
string		DB	0

section .text
_start:

;open
mov rax, 2
mov rdi, nomFichier
mov rsi, 0q
syscall

; on enregistre le fd
mov r8, rax

cmp r8, 0
jns ouvert

;pas_ouvert
;write
mov rax, 1
mov rdi, 1
mov rsi, message
mov rdx, [taille_message]
syscall

ouvert:
boucle:
;read
mov rax, 0
mov rdi, r8
mov rsi, string
mov rdx, 1
syscall

cmp rax, 0
jz fin

;write
mov rax, 1
mov rdi, 1
mov rsi, string
mov rdx, 1
syscall

jmp boucle

fin:
mov rax, 60
mov rdi, 0
syscall
