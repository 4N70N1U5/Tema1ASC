.data
    sirB16: .space 40
    sirB2: .space 160
    indexSB2: .long 0
    formatScanf: .asciz "%s"
    formatPrintfS: .asciz "%s"
    formatPrintfD: .asciz "%d"
    formatPrintfN: .asciz "\n"
    minus: .asciz "-"
    spatiu: .asciz " "
    val: .space 4
    oplet: .asciz "let"
    opadd: .asciz "add"
    opsub: .asciz "sub"
    opmul: .asciz "mul"
    opdiv: .asciz "div"
.text

.global main

main:
    pushl $sirB16
    pushl $formatScanf
    call scanf
    popl %ebx
    popl %ebx
    
    mov $sirB16, %esi
    mov $sirB2, %edi
    
    xorl %ecx, %ecx
    xorl %edx, %edx
    
    jmp for1

cont_main:
    xorl %ecx, %ecx
    xorl %edx, %edx
    
    jmp for2
    
for1:
    movb (%esi, %ecx, 1), %al
    
    cmp $0, %al
    je cont_main
    
    cmp $48, %al
    je cif0
    
    cmp $49, %al
    je cif1
    
    cmp $50, %al
    je cif2
    
    cmp $51, %al
    je cif3
    
    cmp $52, %al
    je cif4
    
    cmp $53, %al
    je cif5
    
    cmp $54, %al
    je cif6
    
    cmp $55, %al
    je cif7
    
    cmp $56, %al
    je cif8
    
    cmp $57, %al
    je cif9
    
    cmp $65, %al
    je cifA
    
    cmp $66, %al
    je cifB
    
    cmp $67, %al
    je cifC
    
    cmp $68, %al
    je cifD
    
    cmp $69, %al
    je cifE
    
    cmp $70, %al
    je cifF
    
cont_for1:
    incl %ecx
    jmp for1
    
cif0:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1
    
cif1:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1
    
cif2:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1
    
cif3:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1
    
cif4:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1
    
cif5:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1
    
cif6:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cif7:
    mov indexSB2, %edx
    
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cif8:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cif9:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cifA:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cifB:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cifC:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cifD:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cifE:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $48, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

cifF:
    mov indexSB2, %edx
    
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    movb $49, (%edi, %edx, 1)
    incl %edx
    
    mov %edx, indexSB2
    jmp cont_for1

for2:
    cmp indexSB2, %ecx
    je exit
    
    cmp $0, %ecx
    je fara_spatiu
    
    pushl %ecx
    
    pushl $spatiu
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
fara_spatiu:
    mov %ecx, %edx
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je operand
    jg operatie
    
cont_for2:
    add $12, %ecx
    jmp for2
    
operand:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je operand_nr
    jg operand_var
    
operand_nr:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je cont_operand_nr
    
    pushl %ecx
    pushl %edx
    
    pushl $minus
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %edx
    popl %ecx
    
cont_operand_nr:
    xorl %ebx, %ebx
    
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb4a
    add $128, %ebx
    
skipb4a:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb5a
    add $64, %ebx
    
skipb5a:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb6a
    add $32, %ebx
    
skipb6a:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb7a
    add $16, %ebx

skipb7a:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb8a
    add $8, %ebx
    
skipb8a:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb9a
    add $4, %ebx
    
skipb9a:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb10a
    add $2, %ebx

skipb10a:    
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb11a
    add $1, %ebx
    
skipb11a:
    mov %ebx, val
    
    pushl %ecx
    
    pushl val
    pushl $formatPrintfD
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    jmp cont_for2
    
operand_var:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je cont_operand_var
    
    pushl %ecx
    pushl %edx
    
    pushl $minus
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %edx
    popl %ecx
    
cont_operand_var:
    xorl %ebx, %ebx
    
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb4b
    add $128, %ebx
    
skipb4b:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb5b
    add $64, %ebx
    
skipb5b:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb6b
    add $32, %ebx
    
skipb6b:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb7b
    add $16, %ebx

skipb7b:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb8b
    add $8, %ebx
    
skipb8b:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb9b
    add $4, %ebx
    
skipb9b:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb10b
    add $2, %ebx

skipb10b:    
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb11b
    add $1, %ebx
    
skipb11b:
    mov %ebx, val
    
    pushl %ecx
    
    pushl $val
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    jmp cont_for2

operatie:
    add $8, %edx
    
    xorl %ebx, %ebx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb9c
    add $4, %ebx
    
skipb9c:
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb10c
    add $2, %ebx

skipb10c:    
    incl %edx
    
    movb (%edi, %edx, 1), %al
    
    cmp $48, %al
    je skipb11c
    add $1, %ebx
    
skipb11c:
    cmp $0, %ebx
    je op_let
    
    cmp $1, %ebx
    je op_add
    
    cmp $2, %ebx
    je op_sub
    
    cmp $3, %ebx
    je op_mul
    
    cmp $4, %ebx
    je op_div
    
back_to_for:
    jmp cont_for2
    
op_let:
    pushl %ecx
    
    pushl $oplet
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    jmp back_to_for
    
op_add:
    pushl %ecx
    
    pushl $opadd
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    jmp back_to_for
    
op_sub:
    pushl %ecx
    
    pushl $opsub
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    jmp back_to_for

op_mul:
    pushl %ecx
    
    pushl $opmul
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    jmp back_to_for

op_div:
    pushl %ecx
    
    pushl $opdiv
    pushl $formatPrintfS
    call printf
    popl %ebx
    popl %ebx
    
    popl %ecx
    
    jmp back_to_for

exit:
    pushl $formatPrintfN
    call printf
    popl %ebx

    mov $1, %eax
    xorl %ebx, %ebx
    int $0x80
