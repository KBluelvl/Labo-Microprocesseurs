; 2_ascii_minVersMaj_partiel.asm

global main

section .text
main:
	nop		     ; ne fait rien

	mov al, 'd' 	     ; on charge une lettre minuscule dans al

        mov ah, al           ; à compléter de sorte que ah contienne
	and ah, 01_01_11_11b ; la même lettre que al mais en majuscule
	;........	     ; (cela doit fonctionner pour toutes les
			     ; lettres, on suppose que le contenu de 
			     ; al est bien une lettre minuscule)
  
	; fin
	mov rax, 60
	mov rdi, 0
	syscall