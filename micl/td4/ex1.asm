global _start

section .data
    var1   DB   1 
    var2   DB   2
    var3   DW   0x0304
    var4   DQ   0x000000008000FFFF
    ; la section des données occupe 16 bytes
    ; son contenu est 0xFF/0xFF/0x00/0x80/0x00/0x00/0x00/0x00/0x04/0x03/0x02/0x01
section .text
_start:
    mov rax, var1     ; rax contient l'adresse de var1
    mov al,  [var1]   ; al  contient 0x01
    mov ax,  [var1]   ; ax  contient 0x01
    mov al,  [var3]   ; al  contient 0x04
    mov ax,  [var3]   ; ax  contient 0x0304
    mov rax, -1       ; rax contient -1
    mov eax, [var4]   ; rax contient 0x80_00_FF_FF

    mov rax, 60
    mov rdi, 0
    syscall
