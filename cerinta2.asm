.data
    formatPrintf: .asciz "%d\n"
    sep: .asciz " "
    instr: .space 101
    x: .space 4
    y: .space 4
.text

.global main

main:
    pushl $101
    pushl $instr
    call gets
    popl %ebx
    popl %ebx
    
    pushl $sep
    pushl $instr
    call strtok
    popl %ebx
    popl %ebx
    
    pushl %eax
    call atoi
    popl %ebx
    
    pushl %eax
    
for:
    pushl $sep
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    cmp $0, %eax
    je exit
    
    movl %eax, %esi
    
    pushl %eax
    call atoi
    popl %ebx
    
    cmp $0, %eax
    je op
    jmp nr
    
op:
    xorl %ecx, %ecx
    
    movb (%esi, %ecx, 1), %al
    
    cmp $97, %al
    je op_add
    
    cmp $115, %al
    je op_sub
    
    cmp $109, %al
    je op_mul
    
    cmp $100, %al
    je op_div
    
op_add:
    popl x
    popl y
    
    movl y, %eax
    
    addl x, %eax
    
    pushl %eax
    
    jmp for
    
op_sub:
    popl x
    popl y
    
    movl y, %eax
    
    subl x, %eax
    
    pushl %eax
    
    jmp for
    
op_mul:
    popl x
    popl y
    
    movl y, %eax
    xorl %edx, %edx
    
    mull x
    
    pushl %eax
    
    jmp for
    
op_div:
    popl x
    popl y
    
    movl y, %eax
    xorl %edx, %edx
    
    divl x
    
    pushl %eax
    
    jmp for
    
nr:
    pushl %eax
    jmp for
    
exit:
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
