global main
section .data
nb  DB  0

section .text
main:
  nop    ;ne fait rien

  mov al,'w' ; on charge une lettre minuscule dans al
  mov ah, al
  btr ax, 13

  mov [nb], ah

  ; write
  mov rax, 1
  mov rdi, 1
  mov rsi, nb
  mov rdx, 1
  syscall

  ;fin
  mov rax, 60
  mov rdi, 0
  syscall
