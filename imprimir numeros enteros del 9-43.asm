.model small
.stack 100h
.data
    num db 9
    newline db 13, 10, '$'
.code
main proc
    mov ax, @data
    mov ds, ax

print_loop:
    mov al, num
    add al, '0'
    mov ah, 02h
    int 21h

    lea dx, newline
    mov ah, 09h
    int 21h

    inc num
    cmp num, 44
    jne print_loop

    mov ah, 4Ch
    int 21h
main endp
end main
