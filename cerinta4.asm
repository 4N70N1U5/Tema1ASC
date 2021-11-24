.data
    printfD: .asciz "%d"
    printfS: .asciz "%s"
    printfN: .asciz "\n"
    spatiu: .asciz " "
    instr: .space 101
    a: .space 1601
    n: .space 4
    m: .space 4
    d: .space 4
    o: .space 4
.text

.global main

main:
    pushl $101
    pushl $instr
    call gets
    popl %ebx
    popl %ebx
    
    pushl $spatiu
    
    pushl $instr
    call strtok
    popl %ebx
    
    pushl $0
    
    call strtok
    
    pushl %eax
    call atoi
    popl %ebx
    
    movl %eax, n
    
    call strtok
    
    pushl %eax
    call atoi
    popl %ebx
    
    movl %eax, m
    
    popl %ebx
    
    popl %ebx
    
    movl n, %eax
    mull m
    movl %eax, d
    
    xorl %ecx, %ecx
    
    lea a, %esi
    
    jmp for_citire
    
cont_main_citire:
    pushl $spatiu
    pushl $0
    call strtok
    call strtok
    popl %ebx
    popl %ebx
    
    pushl %eax
    call atoi
    popl %ebx
    
    xorl %ecx, %ecx
    
    cmp $0, %eax
    //je op_rot90d
    
    movl %eax, o
    
    pushl $spatiu
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    xorl %ecx, %ecx
    
    movl %eax, %edi
    
    movb (%edi, %ecx, 1), %al

    cmp $97, %al
    je op_add
    
    cmp $115, %al
    je op_sub
    
    cmp $109, %al
    je op_mul
    
    cmp $100, %al
    je op_div
    
cont_main_procesare:
    pushl n
    pushl $printfD
    call printf
    popl %ebx
    popl %ebx
    
    pushl $spatiu
    pushl $printfS
    call printf
    popl %ebx
    popl %ebx
    
    pushl m
    pushl $printfD
    call printf
    popl %ebx
    popl %ebx
    
    xorl %ecx, %ecx
    
    jmp for_afisare
    
op_add:
    cmp d, %ecx
    je cont_main_procesare
    
    movl (%esi, %ecx, 4), %eax
    
    addl o, %eax
    
    movl %eax, (%esi, %ecx, 4)
    
    incl %ecx
    
    jmp op_add
    
op_sub:
    cmp d, %ecx
    je cont_main_procesare
    
    movl (%esi, %ecx, 4), %eax
    
    subl o, %eax
    
    movl %eax, (%esi, %ecx, 4)
    
    incl %ecx
    
    jmp op_sub
    
op_mul:
    cmp d, %ecx
    je cont_main_procesare
    
    movl (%esi, %ecx, 4), %eax
    
    imull o
    
    movl %eax, (%esi, %ecx, 4)
    
    incl %ecx
    
    jmp op_mul
    
op_div:
    cmp d, %ecx
    je cont_main_procesare
    
    movl (%esi, %ecx, 4), %eax
    
    xorl %edx, %edx
    
    idivl o, %eax
    
    movl %eax, (%esi, %ecx, 4)
    
    incl %ecx
    
    jmp op_div
    
for_citire:
    cmp d, %ecx
    je cont_main_citire
    
    pushl %ecx
    
    pushl $spatiu
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    pushl %eax
    call atoi
    popl %ebx
    
    popl %ecx
    
    movl %eax, (%esi, %ecx, 4)
    
    incl %ecx
    
    jmp for_citire
    
for_afisare:
    cmp d, %ecx
    je exit
    
    pushl %ecx
    
    pushl $spatiu
    pushl $printfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx

    movl (%esi, %ecx, 4), %eax
    
    pushl %ecx
    
    pushl %eax
    pushl $printfD
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    incl %ecx
    
    jmp for_afisare

exit:
    pushl $printfN
    call printf
    popl %ebx
    
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
