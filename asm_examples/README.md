# Example x86 Assembly programs
The basic structure of an Assemby program consits of three sections
1. *Data segment*: defines the variables and constants
2. *BSS segment*: declares the unititalised data
3. *Text segment*: contains the executable code 
A generic example program would look like


```
section .data
    ; Define initialized data
    msg db 'Hello, x86!', 0
section .bss
    ; Define uninitialized variables
section .text
    global _start
_start:
    ; Code instructions go here
    mov eax, 1          ; System call for exit
    xor ebx, ebx        ; Exit code 0
    int 0x80            ; Call kernel
```


### References
This directory contains x86 assembly example programs from [this medium article] (https://medium.com/@aleksej.gudkov/x86-assembly-examples-a-beginners-guide-to-low-level-programming-822b200e08ae) 
