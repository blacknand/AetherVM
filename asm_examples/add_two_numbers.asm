section .data
    num1 dd 5           ; First number
    num2 dd 3           ; Second number
    result dd 0         ; Variable to store the result
section .text
    global _start
_start:
    mov eax, [num1]     ; Load num1 into EAX
    add eax, [num2]     ; Add num2 to EAX
    mov [result], eax   ; Store the result in memory
    mov eax, 1          ; Exit system call
    xor ebx, ebx        ; Exit code 0
    int 0x80
