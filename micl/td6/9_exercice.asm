global _start

section .rodata
ligne      DB     `\n`

section .bss
fd       RESB    1

section .text
_start:
boucle:
; read
mov rax, 0
mov rdi, 1
mov rsi, fd
mov rdx, 1
syscall

; write
mov rax, 1
mov rdi, 1
mov rsi, fd
mov rdx, 1
syscall

cmp rax, 0
js fin

jmp boucle

fin:
mov rax, 60
mov rdi, 0
syscall
