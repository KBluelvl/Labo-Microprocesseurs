;Ecrivez un code source complet qui d´eclare trois variables dont deux sont
;constantes et explicitement initialisées mais pas la troisième. Le contenu de cette dernière
;est calculé. Il est égal au minimum des deux autres.

global _start

section .rodata
nb1	DB	54
nb2	DB      64

section .bss
nb3	RESB	1

section .text
_start:
mov al, byte[nb2]
cmp byte[nb1], al
js suite
mov byte[nb3], al
jmp fin

suite:
mov al, byte[nb1]
mov byte[nb3], al

fin:
mov rax, 60
mov rdi, 0
syscall
