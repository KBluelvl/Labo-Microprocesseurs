global _start

section .data

message1 	DB	`pair`
lgrMsg1		DQ	lgrMsg1 - message1
message2	DB 	`impair`
lgrMsg2		DQ	lgrMsg2 - message2


section .text
_start:
mov rcx, 1

; pair ou impair ?
bt rcx, 0
jc impair

; pair
mov rax, 1
mov rdi, 1
mov rsi, message1
mov rdx, [lgrMsg1]
syscall
jmp fin

impair:
; write
mov rax, 1
mov rdi, 1
mov rsi, message2
mov rdx, [lgrMsg2]
syscall

fin:
mov rax, 60
mov rdi, 0
syscall
