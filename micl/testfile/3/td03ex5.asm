;1. initialise rdi à la valeur de votre choix ;
;2. met rsi :
;— à 0 si le contenu de rdi est impair ;
;— à 1 si le contenu de rdi est multiple de 2, sans être multiple d’une plus grande
;puissance de 2 ;
;— à 2 si le contenu de rdi est multiple de 4, sans être multiple d’une plus grande
;puissance de 2 ;
;— à 3 si le contenu de rdi est multiple de 8 ou d’une plus grande puissance de 2.

global _start

section .text
_start:
mov rdi, 12

bt rdi, 0
jc _si_impair
bt rdi, 1
jc _si_multiple_de_2
bt rdi, 2
jc _si_multiple_de_4

mov rsi, 3
jmp fin

_si_multiple_de_4:
mov rsi, 2

_si_multiple_de_2:
mov rsi, 1

_si_impair:
mov rsi, 0

fin:
mov rax, 60
mov rdi, 0
syscall
