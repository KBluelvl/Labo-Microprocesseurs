;Ecrivez un code source complet qui stocke dans b0 le byte de rang 0 de nb, dans b1
;celui de rang 1, dans b2 celui de rang 2 et finalement dans b3 celui de rang 3.
;Comme nous n’étudions pas d’instructions permettant d’utiliser deux opérandes de
;type variable, utilisez un ou des registres intermédiaires.

global _start

section .data
b0	DB      0
b1	DB	0
b2	DB	0
b3	DB	0

section .rodata
nb	DD	0x12345678

section .text
_start:
mov bl, byte[nb]
mov byte[b0], bl
mov bl, byte[nb+1]
mov byte[b1], bl
mov bl, byte[nb+2]
mov byte[b2], bl
mov bl, byte[nb+3]
mov byte[b3], bl

fin:
mov rax, 60
mov rdi, 0
syscall
