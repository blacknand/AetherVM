# The LC-3 instructions mapped to their x86 counterpart instructions
The base tutorial for this VM is for the LC-3 architecture, it uses 16 op codes and has 10 registers so we will need to implement the x86 counterparts of this. It introduces a lot of complexity however because x86 is CISC and LC-3 is RISC.
## LC-3 registers
The LC-3 has 10 total registers, each of which is 16 bits. Most of them are general purpose, but a few have designated roles. - 8 general purpose registers (R0-R7) - 1 program counter (PC) register - 1 condition flags (COND) register
```
enum
{
    R_R0 = 0,
    R_R1,
    R_R2,
    R_R3,
    R_R4,
    R_R5,
    R_R6,
    R_R7,
    R_PC, /* program counter */
    R_COND,
    R_COUNT
};
```

## LC-3 instructions (subset used for this VM)
There are 16 opcodes used in this VM so each of these LC-3 opcodes wil need to be converted to their x86 counterpart
```
enum
{
    OP_BR = 0, /* branch */
    OP_ADD,    /* add  */
    OP_LD,     /* load */
    OP_ST,     /* store */
    OP_JSR,    /* jump register */
    OP_AND,    /* bitwise and */
    OP_LDR,    /* load register */
    OP_STR,    /* store register */
    OP_RTI,    /* unused */
    OP_NOT,    /* bitwise not */
    OP_LDI,    /* load indirect */
    OP_STI,    /* store indirect */
    OP_JMP,    /* jump */
    OP_RES,    /* reserved (unused) */
    OP_LEA,    /* load effective address */
    OP_TRAP    /* execute trap */
};
```

## x86 instructions
x86 has several op-codes for each LC-3 instruction
### Branching/jumping
-   LC-3 counterpart: OP_BR 
```
    
```
