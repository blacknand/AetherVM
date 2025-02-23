section .data
    str db 'HELLO', 0   ; Null-terminated string
    rev db 5 dup(0)     ; Allocate space for the reversed string
section .text
    global _start
_start:
    lea esi, [str]      ; Load address of the original string
    lea edi, [rev+4]    ; Load address of the last position in rev
    mov ecx, 5          ; Set loop counter to the length of the string
reverse_loop:
    mov al, [esi]       ; Load the current character
    mov [edi], al       ; Store it in the reversed string
    inc esi             ; Move to the next character in the original string
    dec edi             ; Move to the previous position in rev
    loop reverse_loop   ; Decrement ECX and repeat if not zero
    mov eax, 1          ; Exit system call
    xor ebx, ebx        ; Exit code 0
    int 0x80
