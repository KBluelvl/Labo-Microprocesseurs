;Ex. 2 Ecrivez un code source complet qui :
;1. initialise rax à la valeur de votre choix ;
;2. met r8 :
;— à 1 si le contenu de rax est impair ;
;— à 2 si le contenu de rax est pair.


global main

section .text
main:
mov rax, 8

bt rax, 0
jnc suite
mov r8, 1
jmp fin

suite:
mov r8, 2

fin:
mov rax, 60
mov rdi, 0
syscall
