# Dissassembling Assembly and C programs
Dissassembling is best done on Unix based systems (and Linux in general is just the only viable option for OS development). On the GNU/Linux system this is all packaged neatly in the `build-essential` meta-package. If you happen to be on Windows then using WSL (preferrebly V2) then is the only option.
## Recognising function prologues and epilogues
Every functin in compiled C code (and C++) set up a stack frame and clean it up before returning. Here is a snippet of the dissassembled `main` function inside of `branching_x86` 


```
(gdb) disas main
Dump of assembler code for function main:
   0x0000000000001129 <+0>:     push   %rbp
   0x000000000000112a <+1>:     mov    %rsp,%rbp
   0x000000000000112d <+4>:     mov    $0x0,%eax
   0x0000000000001132 <+9>:     call   0x113e <if_then>
   0x0000000000001137 <+14>:    mov    $0x0,%eax
   0x000000000000113c <+19>:    pop    %rbp
   0x000000000000113d <+20>:    ret
End of assembler dump.
```

### Function prologue (setting up the stack frame)
The first two instructions set up a stack frame

```
0x0000000000001129 <+0>:     push   %rbp
0x000000000000112a <+1>:     mov    %rsp,%rbppush
```

This does the following:
1. The line `push   %rbp` saves the old base pointer for setting up the stack frame
2. The second line `mov    %rsp,%rbppush` sets up the new stack frame base pointer

This setups up a stack frame so the local variables can be accessed as offsets from `%rbp`
### Function epilogue (cleaning up the stack frame)
At the end of both functions:
```
pop    %rbp        ; Restore previous base pointer
ret               ; Return to the caller
```
This restores the stack so execution returns to the caller function correctly


## Compile and debugging 16 bit C commands
- To compile a C file


```
gcc <file>.c -o <file>
```


- To dissassemble using `gdb`


```
gdb <file>.out
```

## GDB dissassembled C file output
Youl will see a dump of the assembler file for each function, along with their binary opcodes and the assembly opcodes. An example output is from the `if_then` function in `branching_x86.c`

```
(gdb) disas if_then
Dump of assembler code for function if_then:
   0x000000000000115d <+0>:     push   %rbp
   0x000000000000115e <+1>:     mov    %rsp,%rbp
   0x0000000000001161 <+4>:     movl   $0x0,-0x4(%rbp)
   0x0000000000001168 <+11>:    cmpl   $0x0,-0x4(%rbp)
   0x000000000000116c <+15>:    jne    0x1175 <if_then+24>
   0x000000000000116e <+17>:    movl   $0x1,-0x4(%rbp)
   0x0000000000001175 <+24>:    addl   $0x1,-0x4(%rbp)
   0x0000000000001179 <+28>:    nop
   0x000000000000117a <+29>:    pop    %rbp
   0x000000000000117b <+30>:    ret
End of assembler dump.
```


### Requirements
- `gcc` compiler
- `gdb` debugger
- `nasm` assembler and dissassembler
