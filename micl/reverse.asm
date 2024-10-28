global main

section .data
error	DB	`I/O error`, 0
input	DQ	`to_reverse.txt`, 0
output	DQ	`result.txt`, 0

section .bss
fd	RESB	1

section .text
main:

;open1
mov rax, 2
mov rdi, input
mov rsi, 0q
syscall

cmp rax, 0
js erreur

mov r8, rax

;open2
mov rax, 2
mov rdi, output
mov rsi, 1q | 100q
mov rdx, 0q | 1q
syscall

cmp rax, 0
js erreur

mov r11, rax

mov r9, 0
mov r11, input

boucle:
;read
mov rax, 0
mov rdi, r8
mov rsi, fd
mov rdx, 1
syscall

cmp rax, 1
jnz fin

;write
mov rax, 1
mov rdi, 1
mov rsi, r9
sub rsi, r11
mov rdx, 1
syscall

add rsi, r11
inc r11
jmp boucle

erreur:
;write
mov rax, 1
mov rdi, 1
mov rsi, error
mov rdx, 1
syscall

fin:
mov rax, 60
mov rdi, 0
syscall
