; exercice 1 td03
;Ecrivez un code source complet qui :
;1. initialise rax à la valeur de votre choix ;
;2. met rbx à 1 si le contenu de rax est non nul.
global _start

section .text
_start:
mov rax, 0
cmp rax, 0
jz fin
mov rbx, 1

fin:
mov rax, 60
mov rdi, 0
syscall
