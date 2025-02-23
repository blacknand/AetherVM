; https://medium.com/@aleksej.gudkov/x86-assembly-examples-a-beginners-guide-to-low-level-programming-822b200e08ae
; UNTESTED - DO NOT EXECUTE

section .data
    msg db 'Hello, World!', 0xA  ; Message string with newline
    len equ $ - msg              ; Length of the string
section .text
    global _start
_start:
    mov eax, 4          ; System call number for sys_write
    mov ebx, 1          ; File descriptor (stdout)
    mov ecx, msg        ; Pointer to the message
    mov edx, len        ; Length of the message
    int 0x80            ; Call kernel
    mov eax, 1          ; System call number for sys_exit
    xor ebx, ebx        ; Exit code 0
    int 0x80            ; Call kernel
