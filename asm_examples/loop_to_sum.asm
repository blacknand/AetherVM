section .data
    sum dd 0            ; Variable to store the sum
section .text
    global _start
_start:
    mov ecx, 5          ; Counter set to 5
    xor eax, eax        ; Initialize sum to 0
loop_start:
    add eax, ecx        ; Add counter to sum
    dec ecx             ; Decrement counter
    jnz loop_start      ; Repeat loop until ECX == 0
    mov [sum], eax      ; Store the sum in memory
    mov eax, 1          ; Exit system call
    xor ebx, ebx        ; Exit code 0
    int 0x80
