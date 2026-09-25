	.file	"daxpy.cc"
	.text
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.p2align 4,,15
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB3239:
	.cfi_startproc
	movq	4992(%rdi), %rdx
	movsd	.LC0(%rip), %xmm2
	pxor	%xmm0, %xmm0
	movl	$2, %r9d
	leaq	1816(%rdi), %r8
	movl	$2567483615, %ecx
	leaq	3168(%rdi), %rsi
	movsd	%xmm2, -24(%rsp)
	cmpq	$623, %rdx
	ja	.L2
.L30:
	movq	%rdx, %rax
	addq	$1, %rdx
.L3:
	movq	(%rdi,%rax,8), %rax
	movq	%rdx, 4992(%rdi)
	movq	%rax, %r10
	shrq	$11, %r10
	movl	%r10d, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$7, %r10
	andl	$2636928640, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$15, %r10
	andl	$4022730752, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	shrq	$18, %r10
	xorq	%r10, %rax
	js	.L9
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L10:
	mulsd	-24(%rsp), %xmm1
	flds	.LC2(%rip)
	fmull	-24(%rsp)
	addsd	%xmm1, %xmm0
	fstpl	-24(%rsp)
	cmpl	$1, %r9d
	jne	.L14
	divsd	-24(%rsp), %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L29
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	movl	$1, %r9d
	cmpq	$623, %rdx
	jbe	.L30
.L2:
	movq	%rdi, %rdx
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L5:
	movq	(%rax), %r10
	movq	8(%rax), %r11
	andq	$-2147483648, %r10
	andl	$2147483647, %r11d
	orq	%r11, %r10
	movq	%r10, %r11
	shrq	%r11
	xorq	3176(%rax), %r11
	andl	$1, %r10d
	je	.L4
	xorq	%rcx, %r11
.L4:
	movq	%r11, (%rax)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.L5
	.p2align 4,,10
	.p2align 3
.L7:
	movq	1816(%rdx), %rax
	movq	1824(%rdx), %r10
	andq	$-2147483648, %rax
	andl	$2147483647, %r10d
	orq	%r10, %rax
	movq	%rax, %r10
	shrq	%r10
	xorq	(%rdx), %r10
	testb	$1, %al
	je	.L6
	xorq	%rcx, %r10
.L6:
	movq	%r10, 1816(%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	jne	.L7
	movq	4984(%rdi), %rax
	movq	(%rdi), %rdx
	andq	$-2147483648, %rax
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	testb	$1, %al
	je	.L8
	xorq	%rcx, %rdx
.L8:
	movq	%rdx, 4984(%rdi)
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L9:
	movq	%rax, %r10
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%r10
	orq	%rax, %r10
	cvtsi2sdq	%r10, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L29:
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	jmp	nextafter
	.cfi_endproc
.LFE3239:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.text.unlikely,"ax",@progbits
.LCOLDB5:
	.section	.text.startup,"ax",@progbits
.LHOTB5:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2881:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2881
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$27765, %edx
	subq	$26016, %rsp
	.cfi_def_cfa_offset 26032
	leaq	18032(%rsp), %rax
	leaq	18016(%rsp), %rsi
	movq	%rsp, %rdi
	movl	$1634100580, 18032(%rsp)
	movq	%rax, 18016(%rsp)
	movw	%dx, 4(%rax)
	movb	$116, 6(%rax)
	movq	$7, 18024(%rsp)
	movb	$0, 18039(%rsp)
.LEHB0:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE0:
	movq	18016(%rsp), %rdi
	leaq	18032(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L32
	call	_ZdlPv
.L32:
	movq	%rsp, %rdi
.LEHB1:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %ecx
	movl	$1, %edx
	movq	%rcx, 5008(%rsp)
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L49:
	movq	5000(%rsp,%rdx,8), %rcx
.L34:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	addl	%edx, %eax
	movq	%rax, 5008(%rsp,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L49
	movq	$624, 10000(%rsp)
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L35:
	leaq	5008(%rsp), %rdi
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	addsd	.LC0(%rip), %xmm0
	leaq	5008(%rsp), %rdi
	movsd	%xmm0, 10016(%rsp,%rbx)
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	addsd	.LC0(%rip), %xmm0
	movsd	%xmm0, 18016(%rsp,%rbx)
	addq	$8, %rbx
	cmpq	$8000, %rbx
	jne	.L35
	movsd	.LC4(%rip), %xmm1
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L36:
	movsd	10016(%rsp,%rax), %xmm0
	mulsd	%xmm1, %xmm0
	addsd	18016(%rsp,%rax), %xmm0
	movsd	%xmm0, 18016(%rsp,%rax)
	addq	$8, %rax
	cmpq	$8000, %rax
	jne	.L36
	leaq	18016(%rsp), %rax
	leaq	26016(%rsp), %rdx
	pxor	%xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L37:
	addsd	(%rax), %xmm0
	addq	$8, %rax
	cmpq	%rax, %rdx
	jne	.L37
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
.LEHE1:
	movq	%rsp, %rdi
	call	_ZNSt13random_device7_M_finiEv
	addq	$26016, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L41:
	.cfi_restore_state
	movq	%rax, %rbx
	jmp	.L38
.L42:
	movq	%rax, %rbx
	jmp	.L40
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2881-.LLSDACSB2881
.LLSDACSB2881:
	.uleb128 .LEHB0-.LFB2881
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L41-.LFB2881
	.uleb128 0
	.uleb128 .LEHB1-.LFB2881
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L42-.LFB2881
	.uleb128 0
.LLSDACSE2881:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2881
	.type	main.cold.21, @function
main.cold.21:
.LFSB2881:
.L38:
	.cfi_def_cfa_offset 26032
	.cfi_offset 3, -16
	movq	18016(%rsp), %rdi
	leaq	18032(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L39
	call	_ZdlPv
.L39:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume
.LEHE2:
.L40:
	movq	%rsp, %rdi
	call	_ZNSt13random_device7_M_finiEv
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume
.LEHE3:
	.cfi_endproc
.LFE2881:
	.section	.gcc_except_table
.LLSDAC2881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2881-.LLSDACSBC2881
.LLSDACSBC2881:
	.uleb128 .LEHB2-.LCOLDB5
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LCOLDB5
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC2881:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold.21, .-main.cold.21
.LCOLDE5:
	.section	.text.startup
.LHOTE5:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3278:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE3278:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC2:
	.long	1333788672
	.section	.rodata.cst8
	.align 8
.LC4:
	.long	0
	.long	1071644672
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.5.0 20210514 (Red Hat 8.5.0-28.0.1)"
	.section	.note.GNU-stack,"",@progbits
