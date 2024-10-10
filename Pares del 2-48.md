section .data
    msg db "Numero: ", 0

section .bss
    num resb 4

section .text
    global _start

_start:
    mov ecx, 2

loop_start:
    mov eax, ecx
    add eax, '0'
    mov [num], eax
    mov eax, 4
    mov ebx, 1
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 8
    int 0x80

    add ecx, 2
    cmp ecx, 50
    jl loop_start

    mov eax, 1
    xor ebx, ebx
    int 0x80
