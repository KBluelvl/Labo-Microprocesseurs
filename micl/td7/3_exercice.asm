global _start

section .text
_start:

push rbp
mov rbp, rsp

sub rsp, 1
mov byte [rbp -1], 2
or byte [rbp -1], 0x30

; write
mov rax, 1
mov rdi, 1
mov rsi, rbp
dec rsi
mov rdx, 1
syscall

;mov rsi, rbp
pop rbp

; fin
mov rax, 60
mov rdi, 0
syscall
