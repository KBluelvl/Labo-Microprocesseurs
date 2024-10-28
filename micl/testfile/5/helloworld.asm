global _start

section .rodata
msg	DB	`Hello World\n`, 0
lgrMsg  DQ	$ - msg

section .text
_start:

;write
mov rax, 1
mov rdi, 1
mov rsi, msg
mov rdx, [lgrMsg]
syscall

fin:
mov rax, 60
mov rdi, 0
syscall
