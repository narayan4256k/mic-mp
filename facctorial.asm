section .data
    n dw 5                                ; n is the number to find factorial for

section .text
    global _start

_start:
    mov cx, [n]                           ; move the value of n into cx
    mov ax, 1                             ; initialize ax to 1 (factorial starts from 1)
loop_start:
    mul cx                                ; multiply ax by cx
    loop loop_start                       ; decrement cx and loop until it is 0
    mov bx, ax                            ; move the result into bx

exit:
    mov eax, 1                            ; exit syscall
    xor ebx, ebx                          ; return value of 0
    int 0x80                              ; invoke the syscall
