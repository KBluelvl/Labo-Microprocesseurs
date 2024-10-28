global _start

Section .rodata
nomDuFichier	 DB	 `truk`, 0
message 	 DQ 	 `echec lors de l’ouverture du fichier\n`, 0
tailleMessage 	 DQ 	 $ - message

Section .text
_start:
	; open
	mov rax, 2
	mov rdi, nomDuFichier
	mov rsi, 0q
	syscall

	cmp rax, 0
	jns fin

	; write
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, [tailleMessage]
	syscall

	fin:
	mov rax, 60
	mov rdi, 0
	syscall
