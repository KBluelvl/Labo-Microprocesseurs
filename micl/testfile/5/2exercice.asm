global _start

section .rodata
nomFichier     	 DB	`fich`, 0
message1         DB	`échec lors de l'ouverture du fichier\n`
lgrmsg1	         DQ      $ - message1	;taille de message1 en byte : 38
message2	 DB	`fichier ouvert avec succès\n`
lgrmsg2		 DQ	 $ - message2	;taille de message2 en byte : 28

section .text
_start:

;open
mov rax, 2
mov rdi, nomFichier
mov rsi, 0q
syscall

mov r8, rax

cmp rax, 0
jns si_ouvert

;si_pas_ouvert
;write
mov rax, 1
mov rdi, 1
mov rsi, message1
mov rdx, [lgrmsg1]
syscall
jmp fin

si_ouvert:
;write
mov rax, 1
mov rdi, 1
mov rsi, message2
mov rdx, [lgrmsg2]
syscall

;close
mov rax, 3
mov rdi, r8
syscall

fin:
mov rax, 60
mov rdi, 0
syscall

