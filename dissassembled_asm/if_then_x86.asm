; x86 Assembly basic branching for dissassembling

mov eax, $x
cmp eax, $y
jg end
inc eax
mov $x, eax
end:
