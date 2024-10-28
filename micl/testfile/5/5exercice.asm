global _start

section .rodata
pair	DB	`pair`, 0
impair	DB	`impair`, 0

section .text
_start:
mov rcx, 77

bt rcx, 0
jc si_impair

;pair
;open
mov rax, 2
mov rdi, pair
mov rsi, 1q
syscall

jmp suite

si_impair:
;open
mov rax, 2
mov rdi, impair
mov rsi, 1q
syscall

suite:
; on enregistre le fd
mov r8, rax

bt rcx, 0
jc impair2

;pair
;write
mov rax, 1
mov rdi, r8
mov rsi, pair
mov rdx, 4
syscall

jmp fin

impair2:
;write
mov rax, 1
mov rdi, r8
mov rsi, impair
mov rdx, 6
syscall

fin:
mov rax, 60
mov rdi, 0
syscall
