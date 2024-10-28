;Ecrivez un code source complet qui déclare une variable sur 8 bytes
;implictement initialisée à 0 puis lui assigne la valeur 42.

global _start

section .bss
nb       RESQ        1

section .text
_start:
mov qword [nb], 42


fin:
mov rax, 60
mov rdi, 0
syscall
