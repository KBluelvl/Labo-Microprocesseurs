global _start

section .data

msg1		DB	`pair\n`
lgrMsg1		DQ	lgrMsg1 - msg1
msg2		DB 	`impair\n`
lgrMsg2		DQ	lgrMsg2 - msg2
pair 		DB 	`pair`,0
impair		DB 	`impair`,0

section .bss
nb	RESB	1

section .text
_start:
; initialise rcx
mov rcx, 12

; pair ou impair ?
bt rcx, 0

jc si_Impair

; si_Pair
; open
mov rax, 2
mov rdi, pair
mov rsi, 1q
syscall

; on enregistre le fd
mov r15, rax

;write
mov rax, 1
mov rdi, r15
mov rsi, msg1
mov rdx, [lgrMsg1]
syscall
jmp fin

si_Impair:
;open
mov rax, 2
mov rdi, impair
mov rsi, 1q
syscall

; on enregistre le fd
mov r15, rax

;write
mov rax, 1
mov rdi, r15
mov rsi, msg2
mov rdx, [lgrMsg2]
syscall

fin:
mov rax, 60
mov rdi, 0
syscall
