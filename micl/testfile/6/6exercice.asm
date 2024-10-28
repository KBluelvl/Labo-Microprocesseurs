global _start

section .rodata
tab	DQ	52,48,63,12,70,50,90,42,15,58

section .text
_start:

;rax = indice
;r10 = max
;r8 = min
mov r8, [tab]
mov r10, [tab]
mov rax, 1

boucle:
cmp r10, [tab+8*rax]
jns suite
;max ?
mov r10, [tab+8*rax]

suite:
cmp r8, [tab+8*rax]
js suite2
;min ?
mov r8, [tab+8*rax]

suite2:
inc rax
cmp rax, 10
jnz boucle

fin:
mov rax,60
mov rdi, 0
syscall
