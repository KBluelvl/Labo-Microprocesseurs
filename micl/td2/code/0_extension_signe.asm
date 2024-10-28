; 0_extension_signe.asm

global main

section .text
main:
mov rax, 0xF0_F0_F0_F0_F0_F0_F0_F0
and rax, 0x80_00_00_00 ; attention : extensionde signe
	; rax : 0xF0_F0_F0_F0_80_00_00_00

mov rbx, 0xF0_F0_F0_F0_F0_F0_F0_F0
mov rcx, 0x80_00_00_00
and rbx, rcx
	; rbx : 0x00_00_00_00_80_00_00_00
; fin
mov rax, 60
mov rdi, 0
syscall
