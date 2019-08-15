	.file	"stats.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movb	$34, -48(%rbp)
	movb	$48, -47(%rbp)
	movb	$125, -46(%rbp)
	movb	$126, -45(%rbp)
	movb	$127, -44(%rbp)
	movb	$-128, -43(%rbp)
	movb	$-127, -42(%rbp)
	movb	$-89, -41(%rbp)
	movb	$114, -40(%rbp)
	movb	$88, -39(%rbp)
	movb	$45, -38(%rbp)
	movb	$76, -37(%rbp)
	movb	$123, -36(%rbp)
	movb	$87, -35(%rbp)
	movb	$25, -34(%rbp)
	movb	$23, -33(%rbp)
	movb	$-56, -32(%rbp)
	movb	$122, -31(%rbp)
	movb	$-106, -30(%rbp)
	movb	$90, -29(%rbp)
	movb	$92, -28(%rbp)
	movb	$87, -27(%rbp)
	movb	$-79, -26(%rbp)
	movb	$-12, -25(%rbp)
	movb	$-55, -24(%rbp)
	movb	$6, -23(%rbp)
	movb	$12, -22(%rbp)
	movb	$60, -21(%rbp)
	movb	$8, -20(%rbp)
	movb	$2, -19(%rbp)
	movb	$5, -18(%rbp)
	movb	$67, -17(%rbp)
	movb	$7, -16(%rbp)
	movb	$87, -15(%rbp)
	movb	$-6, -14(%rbp)
	movb	$-26, -13(%rbp)
	movb	$99, -12(%rbp)
	movb	$3, -11(%rbp)
	movb	$100, -10(%rbp)
	movb	$90, -9(%rbp)
	leaq	-48(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	print_array
	leaq	-48(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	print_statistics
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.string	"Maximum value in the array: %u\n"
	.align 8
.LC1:
	.string	"Minimum value in the array: %u\n"
.LC2:
	.string	"Mean value of the array: %u\n"
	.align 8
.LC3:
	.string	"Median value of the  array: %u\n"
.LC4:
	.string	"Sorted array: "
	.text
	.globl	print_statistics
	.type	print_statistics, @function
print_statistics:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	find_maximum
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	find_minimum
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	find_mean
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	find_median
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	print_array
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	print_statistics, .-print_statistics
	.globl	find_median
	.type	find_median, @function
find_median:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movzbl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	sort_array
	movzbl	-28(%rbp), %eax
	andl	$1, %eax
	testb	%al, %al
	je	.L5
	movzbl	-28(%rbp), %eax
	shrb	%al
	movzbl	%al, %eax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	jmp	.L6
.L5:
	movzbl	-28(%rbp), %eax
	shrb	%al
	movzbl	%al, %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	movzbl	-28(%rbp), %eax
	shrb	%al
	movzbl	%al, %eax
	leaq	-1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%edx, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
.L6:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	find_median, .-find_median
	.globl	find_mean
	.type	find_mean, @function
find_mean:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movl	$0, -4(%rbp)
	movb	$0, -5(%rbp)
	jmp	.L8
.L9:
	movzbl	-5(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	addl	%eax, -4(%rbp)
	movzbl	-5(%rbp), %eax
	addl	$1, %eax
	movb	%al, -5(%rbp)
.L8:
	movzbl	-5(%rbp), %eax
	cmpb	-28(%rbp), %al
	jb	.L9
	movzbl	-28(%rbp), %ecx
	movl	-4(%rbp), %eax
	cltd
	idivl	%ecx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	find_mean, .-find_mean
	.globl	find_minimum
	.type	find_minimum, @function
find_minimum:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	movb	$1, -1(%rbp)
	jmp	.L12
.L14:
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -2(%rbp)
	jbe	.L13
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
.L13:
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
.L12:
	movzbl	-1(%rbp), %eax
	cmpb	-28(%rbp), %al
	jb	.L14
	movzbl	-2(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	find_minimum, .-find_minimum
	.section	.rodata
.LC5:
	.string	"Array values:"
.LC6:
	.string	"%u "
	.text
	.globl	print_array
	.type	print_array, @function
print_array:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movb	$0, -1(%rbp)
	jmp	.L17
.L18:
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
.L17:
	movzbl	-1(%rbp), %eax
	cmpb	-28(%rbp), %al
	jb	.L18
	movl	$10, %edi
	call	putchar@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	print_array, .-print_array
	.globl	find_maximum
	.type	find_maximum, @function
find_maximum:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
	movb	$1, -1(%rbp)
	jmp	.L20
.L22:
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, -2(%rbp)
	jnb	.L21
	movzbl	-1(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -2(%rbp)
.L21:
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
.L20:
	movzbl	-1(%rbp), %eax
	cmpb	-28(%rbp), %al
	jb	.L22
	movzbl	-2(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	find_maximum, .-find_maximum
	.globl	sort_array
	.type	sort_array, @function
sort_array:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, %eax
	movb	%al, -28(%rbp)
	movb	$1, -3(%rbp)
	jmp	.L25
.L29:
	movb	$0, -2(%rbp)
	jmp	.L26
.L28:
	movzbl	-2(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movzbl	-2(%rbp), %eax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jnb	.L27
	movzbl	-2(%rbp), %edx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -1(%rbp)
	movzbl	-2(%rbp), %eax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	-2(%rbp), %ecx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	movzbl	-2(%rbp), %eax
	leaq	1(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	-1(%rbp), %eax
	movb	%al, (%rdx)
.L27:
	movzbl	-2(%rbp), %eax
	addl	$1, %eax
	movb	%al, -2(%rbp)
.L26:
	movzbl	-2(%rbp), %eax
	cmpb	-28(%rbp), %al
	jb	.L28
	movzbl	-3(%rbp), %eax
	addl	$1, %eax
	movb	%al, -3(%rbp)
.L25:
	movzbl	-3(%rbp), %eax
	cmpb	-28(%rbp), %al
	jb	.L29
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	sort_array, .-sort_array
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1~18.10.1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
