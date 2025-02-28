> [!warning]
> This VM will not be ready for production for a very long time

# AetherVM
A basic UNIX based VM capable of running Assembly programs simulating the x86 architecture.

## LC-3 opcodes to x86
The LC-3 architecture is very basic, and x86 is infinitley more complex. For every basic LC-3 opcode there are ~15 x86 opcodes. This means there only needs to be a very small subset of hundreds of LC-3 opcodes in x86 to implement AetherVM. To see the counterparts, check `x86_branching.md`.

## x86 Assembly examples
There are several x86 assembly examples for demonstration and testing inside of `\asm_examples`.

## Disassembled x86 assembly programs
There are Assembly programs implementing the core functionality that each opcode is for inside of `\dissassembled_asm` with the example C program counterpart demonstrating the functionality of the Assembly program. This is for disassembling the Assembly programs to find out the opcodes that were used. If you are unfamiliar with what this means, you can think of it as reverse engineering an x86 assembly program to find out how it was implemented.

## Reference
This VM started with this [tutorial](https://www.jmeiners.com/lc3-vm/) and then I built on top of it to implement more features, it is worth noting this tutorial implemenets the VM in the LC-3 educational architecture, but to make this a tougher challange and to make it more useful I chose the x86 architecture instead.
