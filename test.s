			# This code was produced by the CERI Compiler
.data
FormatString1:	.string "%llu"	# used by printf to display 64-bit unsigned integers
FormatString2:	.string "%lf"	# used by printf to display 64-bit floating point numbers
FormatString3:	.string "%c"	# used by printf to display a 8-bit single character
TrueString:	.string "TRUE"	# used by printf to display the boolean value TRUE
FalseString:	.string "FALSE"	# used by printf to display the boolean value FALSE
j:	.quad 0
E:	.byte 0
div:	.double 0.0
i:	.double 0.0
	.align 8
	.text		# The following lines contain the program
	.globl main	# The main function must be visible from outside
main:			# The main function body :
	movq %rsp, %rbp	# Save the position of the stack's top
	subq $8,%rsp			# allocate 8 bytes on stack's top
	movl	$0, (%rsp)	# Conversion of 0 (32 bit high part)
	movl	$0, 4(%rsp)	# Conversion of 0 (32 bit low part)
	pop i
	push $10
	pop j
	subq $8,%rsp			# allocate 8 bytes on stack's top
	movl	$0, (%rsp)	# Conversion of 10 (32 bit high part)
	movl	$1076101120, 4(%rsp)	# Conversion of 10 (32 bit low part)
	pop div
	movq $0, %rax
	movb $'d',%al
	push %rax	# push a 64-bit version of 'd'
	pop %rax
	movb %al,E
	movq $0, %rax
	movb $'W',%al
	push %rax	# push a 64-bit version of 'W'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'H',%al
	push %rax	# push a 64-bit version of 'H'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'I',%al
	push %rax	# push a 64-bit version of 'I'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'L',%al
	push %rax	# push a 64-bit version of 'L'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'E',%al
	push %rax	# push a 64-bit version of 'E'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
While6:
	push i
	subq $8,%rsp			# allocate 8 bytes on stack's top
	movl	$0, (%rsp)	# Conversion of 5 (32 bit high part)
	movl	$1075052544, 4(%rsp)	# Conversion of 5 (32 bit low part)
	fldl	(%rsp)	
	fldl	8(%rsp)	# first operand -> %st(0) ; second operand -> %st(1)
	 addq $16, %rsp	# 2x pop nothing
	fcomip %st(1)		# compare op1 and op2 -> %RFLAGS and pop
	faddp %st(1)	# pop nothing
	jb Vrai8	# If below
	push $0		# False
	jmp Suite8
Vrai8:	push $0xFFFFFFFFFFFFFFFF		# True
Suite8:
	pop %rax	# Get the result of expression
	cmpq $0, %rax
	je EndWhile6	# if FALSE, jump out of the loop6
	push E
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'=',%al
	push %rax	# push a 64-bit version of '='
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push div
	movsd	(%rsp), %xmm0		# &stack top -> %xmm0
	subq	$16, %rsp		# allocation for 3 additional doubles
	movsd %xmm0, 8(%rsp)
	movq $FormatString2, %rdi	# "%lf\n"
	movq	$1, %rax
	call	printf
nop
	addq $24, %rsp			# pop nothing
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'i',%al
	push %rax	# push a 64-bit version of 'i'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'=',%al
	push %rax	# push a 64-bit version of '='
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push i
	movsd	(%rsp), %xmm0		# &stack top -> %xmm0
	subq	$16, %rsp		# allocation for 3 additional doubles
	movsd %xmm0, 8(%rsp)
	movq $FormatString2, %rdi	# "%lf\n"
	movq	$1, %rax
	call	printf
nop
	addq $24, %rsp			# pop nothing
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push i
	subq $8,%rsp			# allocate 8 bytes on stack's top
	movl	$0, (%rsp)	# Conversion of 1 (32 bit high part)
	movl	$1072693248, 4(%rsp)	# Conversion of 1 (32 bit low part)
	fldl	8(%rsp)	
	fldl	(%rsp)	# first operand -> %st(0) ; second operand -> %st(1)
	faddp	%st(0),%st(1)	# %st(0) <- op1 + op2 ; %st(1)=null
	fstpl 8(%rsp)
	addq	$8, %rsp	# result on stack's top
	pop i
	push div
	push i
	fldl	(%rsp)	
	fldl	8(%rsp)	# first operand -> %st(0) ; second operand -> %st(1)
	fdivp	%st(0),%st(1)	# %st(0) <- op1 + op2 ; %st(1)=null
	fstpl 8(%rsp)
	addq	$8, %rsp	# result on stack's top
	pop div
	jmp While6
EndWhile6:
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'F',%al
	push %rax	# push a 64-bit version of 'F'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'O',%al
	push %rax	# push a 64-bit version of 'O'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'R',%al
	push %rax	# push a 64-bit version of 'R'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $' ',%al
	push %rax	# push a 64-bit version of ' '
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'+',%al
	push %rax	# push a 64-bit version of '+'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push $1
	pop j
For23:
	push $5
	pop %rax	# Get the result of expression
	cmpq j, %rax
	jb EndFor23	# si FALSE, sortir de la boucle23
	push j
	pop %rsi	# The value to be displayed
	movq $FormatString1, %rdi	# "%llu\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push j
	push $1
	pop %rbx
	pop %rax
	addq	%rbx, %rax	# ADD
	push %rax
	pop j
	jmp For23
EndFor23:
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'F',%al
	push %rax	# push a 64-bit version of 'F'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'O',%al
	push %rax	# push a 64-bit version of 'O'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'R',%al
	push %rax	# push a 64-bit version of 'R'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $' ',%al
	push %rax	# push a 64-bit version of ' '
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'-',%al
	push %rax	# push a 64-bit version of '-'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push $10
	pop j
For33:
	push $6
	pop %rax	# Get the result of expression
	cmpq j, %rax
	ja EndFor33	# if FALSE, sortir de la boucle33
	push j
	pop %rsi	# The value to be displayed
	movq $FormatString1, %rdi	# "%llu\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push j
	push $1
	pop %rbx
	pop %rax
	subq	%rbx, %rax	# ADD
	push %rax
	pop j
	jmp For33
EndFor33:
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push j
	push $2
	pop %rbx
	pop %rax
	subq	%rbx, %rax	# ADD
	push %rax
	pop j
	movq $0, %rax
	movb $'C',%al
	push %rax	# push a 64-bit version of 'C'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'A',%al
	push %rax	# push a 64-bit version of 'A'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'R',%al
	push %rax	# push a 64-bit version of 'R'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'R',%al
	push %rax	# push a 64-bit version of 'R'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'E',%al
	push %rax	# push a 64-bit version of 'E'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push j
	movq (%rsp), %rax 	# Charger la valeur de l'expression dans le registre %rax
	imul %rax, %rax 	# Multiplier la valeur par elle-même pour obtenir le carré
	movq %rax, (%rsp) 	# Stocker le carré de la valeur sur la pile
	push j
	pop %rsi	# The value to be displayed
	movq $FormatString1, %rdi	# "%llu\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'C',%al
	push %rax	# push a 64-bit version of 'C'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'A',%al
	push %rax	# push a 64-bit version of 'A'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'S',%al
	push %rax	# push a 64-bit version of 'S'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'E',%al
	push %rax	# push a 64-bit version of 'E'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $' ',%al
	push %rax	# push a 64-bit version of ' '
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'j',%al
	push %rax	# push a 64-bit version of 'j'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	push j
	pop %rax	# Obtenir le résultat de l'expression
	movq %rax, %r12	# doit enregistrer la valeur returned
652:
	pop %r12	# Obtenir le résultat du registre
	push %rax	# stocker le résultat
	cmpq 6, %rax
	jne EndCase1	# if FALSE, saute à la fin Case52
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'j',%al
	push %rax	# push a 64-bit version of 'j'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'=',%al
	push %rax	# push a 64-bit version of '='
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'6',%al
	push %rax	# push a 64-bit version of '6'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
EndCase1:
757:
	pop %r12	# Obtenir le résultat du registre
	push %rax	# stocker le résultat
	cmpq 7, %rax
	jne EndCase2	# if FALSE, saute à la fin Case57
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'j',%al
	push %rax	# push a 64-bit version of 'j'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'=',%al
	push %rax	# push a 64-bit version of '='
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq $0, %rax
	movb $'7',%al
	push %rax	# push a 64-bit version of '7'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
EndCase2:
	movq $0, %rax
	movb $'\n',%al
	push %rax	# push a 64-bit version of '\n'
	pop %rsi			# get character in the 8 lowest bits of %si
	movq $FormatString3, %rdi	# "%c\n"
	movl	$0, %eax
	call	printf@PLT
	movq %rbp, %rsp		# Restore the position of the stack's top
	ret			# Return from main function
