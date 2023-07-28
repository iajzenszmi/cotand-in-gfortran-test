	.file	"cotand.f"
	.text
	.section	.rodata
.LC2:
	.string	"cotand.f"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$528, %rsp
	movsd	x.1(%rip), %xmm1
	movsd	.LC0(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	_gfortran_tand_r8@PLT
	movq	%xmm0, %rax
	movq	.LC1(%rip), %xmm0
	movq	%rax, %xmm2
	xorpd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	movsd	%xmm0, x.1(%rip)
	leaq	.LC2(%rip), %rax
	movq	%rax, -520(%rbp)
	movl	$4, -512(%rbp)
	movl	$128, -528(%rbp)
	movl	$6, -524(%rbp)
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-528(%rbp), %rax
	movl	$8, %edx
	leaq	x.1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.1.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 8
	.type	x.1, @object
	.size	x.1, 8
x.1:
	.long	1374389535
	.long	1069883064
	.section	.rodata
	.align 16
	.type	options.1.0, @object
	.size	options.1.0, 28
options.1.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.align 8
.LC0:
	.long	0
	.long	1079410688
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
