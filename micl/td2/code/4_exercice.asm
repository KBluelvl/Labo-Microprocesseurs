; exercice4.asm

global main
section .text

main:
	nop 			; ne fait rien

	mov bl, 9

	mov bh, bl
	or bh, 0x30
	fin:
	mov rax, 60
	mov rdi,0
	syscall
