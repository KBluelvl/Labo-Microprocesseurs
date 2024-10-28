;Ecrivez un code source complet qui déclare une variable  nb de taille 4 bytes.
;Il place ensuite l’adresse de cette variable dans rax et son contenu dans rbx.
;Testez dans KDbg avec des valeurs de variable de bits de signe différents.

global _start

section .data
nb       DD         12

section .text
_start:
mov rax, nb
mov rbx, [nb]


fin:
mov rax, 60
mov rdi, 0
syscall
