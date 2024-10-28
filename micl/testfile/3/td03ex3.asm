;Ecrivez un code source complet qui :
;1. initialise r14 et r15 aux valeurs de votre choix ;
;2. réalise les traitements suivants :
;— assigne la valeur 0 aux registres r14 et r15 si leurs contenus sont égaux ;
;— échange les contenus des registres r14 et r15 si ils sont différents.

global main

section .text
main:
mov r14, 12
mov r15, 15

cmp r14, r15
jnz suite
mov r14, 0
mov r15, 0
jmp fin

suite:
mov r13, r14
mov r14, r15
mov r15, r13

fin:
mov rax, 60
mov rdi, 0
syscall
