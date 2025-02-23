section .data
    num1 dd 10
    num2 dd 20
    larger dd 0
section .text
    global _start
_start:
    mov eax, [num1]     ; Load num1 into EAX
    mov ebx, [num2]     ; Load num2 into EBX
    cmp eax, ebx        ; Compare EAX and EBX
    jge store_eax       ; If EAX >= EBX, jump to store_eax
    mov eax, ebx        ; Otherwise, move EBX into EAX
store_eax:
    mov [larger], eax   ; Store the larger value in memory
    mov eax, 1          ; Exit system call
    xor ebx, ebx        ; Exit code 0
    int 0x80
