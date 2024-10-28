global _start

section .rodata
fichier DB      'loremipsum.txt',0
message DB      'erreur'
lgr     DB      $-message

section .bss
fd      RESB    1
fd1     RESQ    1

section .text
_start:
push rbp
mov r14, 0
mov rbp, rsp
sub rsp, 1

; open
mov rax, 2
mov rdi, fichier
mov rsi, 0q
syscall

cmp rax, 0
js fin2
mov r15, rax

boucle:
; read
mov rax, 0
mov rdi, r15
mov rsi, fd
mov rdx, 1
syscall

cmp rax, 0
jz fin2

cmp byte[fd], 0x61
js boucle
cmp byte[fd], 0x5A
js boucle

; write
mov rax, 1
mov rdi, 1
mov rsi, fd
mov rdx, 1
syscall

; write
mov rax, 1
mov rdi, 1
mov rsi, '\n'
mov rdx, 2
syscall

inc r14
mov byte[rbp-1], 14
jmp boucle

fin2:
; close
mov rax, 3
mov rdi, 15
syscall

; fin
mov rax,60
mov rdi, 0
syscall
