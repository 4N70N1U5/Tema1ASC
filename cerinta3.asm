.data
    formatPrintf: .asciz "%d\n"
    sep: .asciz " "
    instr: .space 101
    x: .space 4
    y: .space 4
    v: .long 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
.text

.global main

main:
    pushl $101
    pushl $instr
    call gets
    popl %ebx
    popl %ebx
    
    lea v, %edi
    
    pushl $sep
    pushl $instr
    call strtok
    popl %ebx
    popl %ebx
    
for:
    cmp $0, %eax
    je exit
    
    movl %eax, %esi
    
    pushl %eax
    call atoi
    popl %ebx
    
    cmp $0, %eax
    jne nr
    jmp lit
    
cont_for:
    pushl $sep
    pushl $0
    call strtok
    popl %ebx
    popl %ebx
    
    jmp for
    
nr:
    pushl %eax
    jmp cont_for
    
lit:
    pushl %esi
    call strlen
    popl %ebx
    
    xorl %ecx, %ecx
    
    movl %eax, %ebx
    
    movb (%esi, %ecx, 1), %al
    
    cmp $3, %ebx
    je op
    jmp var
    
op:
    cmp $97, %al
    je op_add
    
    cmp $115, %al
    je op_sub
    
    cmp $109, %al
    je op_mul
    
    cmp $100, %al
    je op_div
    
    cmp $108, %al
    je op_let
    
op_add:
    popl x
    popl y
    
    movl y, %eax
    
    addl x, %eax
    
    pushl %eax
    
    jmp cont_for
    
op_sub:
    popl x
    popl y
    
    movl y, %eax
    
    subl x, %eax
    
    pushl %eax
    
    jmp cont_for
    
op_mul:
    popl x
    popl y
    
    movl y, %eax
    xorl %edx, %edx
    
    mull x
    
    pushl %eax
    
    jmp cont_for
    
op_div:
    popl x
    popl y
    
    movl y, %eax
    xorl %edx, %edx
    
    divl x
    
    pushl %eax
    
    jmp cont_for
    
op_let:
    popl %eax
    popl %edx
    
    movl %eax, (%edi, %edx, 4)

    jmp cont_for
    
var:
    cmp $97, %al
    je var_a
    
    cmp $98, %al
    je var_b
    
    cmp $99, %al
    je var_c
    
    cmp $100, %al
    je var_d
    
    cmp $101, %al
    je var_e
    
    cmp $102, %al
    je var_f
    
    cmp $103, %al
    je var_g
    
    cmp $104, %al
    je var_h
    
    cmp $105, %al
    je var_i
    
    cmp $106, %al
    je var_j
    
    cmp $107, %al
    je var_k
    
    cmp $108, %al
    je var_l
    
    cmp $109, %al
    je var_m
    
    cmp $110, %al
    je var_n
    
    cmp $111, %al
    je var_o
    
    cmp $112, %al
    je var_p
    
    cmp $113, %al
    je var_q
    
    cmp $114, %al
    je var_r
    
    cmp $115, %al
    je var_s
    
    cmp $116, %al
    je var_t
    
    cmp $117, %al
    je var_u
    
    cmp $118, %al
    je var_v
    
    cmp $119, %al
    je var_w
    
    cmp $120, %al
    je var_x
    
    cmp $121, %al
    je var_y
    
    cmp $122, %al
    je var_z
    
var_a:
    movl $0, %eax
    jmp cont_var

var_b:
    movl $1, %eax
    jmp cont_var
    
var_c:
    movl $2, %eax
    jmp cont_var
    
var_d:
    movl $3, %eax
    jmp cont_var
    
var_e:
    movl $4, %eax
    jmp cont_var
    
var_f:
    movl $5, %eax
    jmp cont_var
      
var_g:
    movl $6, %eax
    jmp cont_var
    
var_h:
    movl $7, %eax
    jmp cont_var
    
var_i:
    movl $8, %eax
    jmp cont_var
    
var_j:
    movl $9, %eax
    jmp cont_var
    
var_k:
    movl $10, %eax
    jmp cont_var
    
var_l:
    movl $11, %eax
    jmp cont_var
    
var_m:
    movl $12, %eax
    jmp cont_var
    
var_n:
    movl $13, %eax
    jmp cont_var
    
var_o:
    movl $14, %eax
    jmp cont_var
    
var_p:
    movl $15, %eax
    jmp cont_var
    
var_q:
    movl $16, %eax
    jmp cont_var
    
var_r:
    movl $17, %eax
    jmp cont_var
    
var_s:
    movl $18, %eax
    jmp cont_var
    
var_t:
    movl $19, %eax
    jmp cont_var
    
var_u:
    movl $20, %eax
    jmp cont_var
    
var_v:
    movl $21, %eax
    jmp cont_var
    
var_w:
    movl $22, %eax
    jmp cont_var
    
var_x:
    movl $23, %eax
    jmp cont_var
    
var_y:
    movl $24, %eax
    jmp cont_var
    
var_z:
    movl $25, %eax
    jmp cont_var
    
cont_var:
    movl (%edi, %eax, 4), %edx
    
    cmp $0, %edx
    je nul
    jmp nenul
    
nul:
    pushl %eax
    jmp cont_for
    
nenul:
    pushl (%edi, %eax, 4)
    jmp cont_for
    
exit:
    pushl $formatPrintf
    call printf
    popl %ebx
    popl %ebx
    
    movl $1, %eax
    xorl %ebx, %ebx
    int $0x80
