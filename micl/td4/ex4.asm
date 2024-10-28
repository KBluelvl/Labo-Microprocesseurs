global _start

Section .data
 b0	 DB	 0
 b1	 DB	 0
 b2	 DB	 0
 b3	 DB	 0

Section .rodata
 nb	 DD	 0x12345678

section .text
_start:

mov al, byte [nb]
mov [b0], al
mov al, byte [nb + 1]
mov [b1], al
mov al, byte [nb + 2]
mov [b2], al
mov al, byte [nb + 3]
mov [b3], al

mov rax, 60
mov rdi, 0
syscall
