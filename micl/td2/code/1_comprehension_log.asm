; 1_comprehension_log.asm

global main

section .text
main:
	mov al, 10011101b
	not al			; al = 01100010, zf = 0, sf = 1

	mov al, 11100101b
	mov ah, 00101010b
	and al, ah		; al = 00100000, zf = 0, sf = 0

	mov al, 11100101b
	mov ah, 00001010b
	and al, ah		; al = 00000000, zf = 1, sf = 0

	mov al, 01100101b
	mov ah, 01010101b
	or al, ah		; al = 01110101, zf = 0, sf = 0

	mov dx, 1100010011100101b
	mov si, 0011000001100010b
	xor dx, si		; al = 1111010010000111
				; zf = 0, sf = 1

	mov al, 11100101b
	mov ah, 11100101b
	xor al, ah		; al = 00000000, zf = 1, sf = 0

	;fin
	mov rax, 60
	mov rdi, 0
	syscall
