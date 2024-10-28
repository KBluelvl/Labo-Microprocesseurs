;Ecrivez un code source complet qui :
;1. déclare deux variables initialisées aux valeurs de votre choix
;2. échange les contenus de ces variables.

global _start

section .data
nb1       DB      15
nb2       DB      22

section .text
_start:
mov al, byte[nb1]
mov bl, byte[nb2]
mov [nb1], bl
mov [nb2], al

fin:
mov rax, 60
mov rdi, 0
syscall
