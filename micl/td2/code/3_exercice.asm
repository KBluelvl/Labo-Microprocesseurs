; exercice 3.asm

global main

section .text
main:
	nop			; ne fait rien

	mov al, 'r'		; on charge une lettre minuscule dans al

	mov ah, al
	btr ax, 13

	; fin
	mov rax,60
	mov rdi, 0
	syscall
