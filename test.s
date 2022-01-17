	.file	"test.cpp"
	.text
	.section	.text._ZN3FooC2Ev,"axG",@progbits,_ZN3FooC5Ev,comdat
	.align 2
	.weak	_ZN3FooC2Ev
	.type	_ZN3FooC2Ev, @function
_ZN3FooC2Ev:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV3Foo(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN3FooC2Ev, .-_ZN3FooC2Ev
	.weak	_ZN3FooC1Ev
	.set	_ZN3FooC1Ev,_ZN3FooC2Ev
	.section	.text._ZN3Foo3barEv,"axG",@progbits,_ZN3Foo3barEv,comdat
	.align 2
	.weak	_ZN3Foo3barEv
	.type	_ZN3Foo3barEv, @function
_ZN3Foo3barEv:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN3Foo3barEv, .-_ZN3Foo3barEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3FooC1Ev
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.weak	_ZTV3Foo
	.section	.data.rel.ro.local._ZTV3Foo,"awG",@progbits,_ZTV3Foo,comdat
	.align 8
	.type	_ZTV3Foo, @object
	.size	_ZTV3Foo, 24
_ZTV3Foo:
	.quad	0
	.quad	_ZTI3Foo
	.quad	_ZN3Foo3barEv
	.weak	_ZTI3Foo
	.section	.data.rel.ro._ZTI3Foo,"awG",@progbits,_ZTI3Foo,comdat
	.align 8
	.type	_ZTI3Foo, @object
	.size	_ZTI3Foo, 16
_ZTI3Foo:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS3Foo
	.weak	_ZTS3Foo
	.section	.rodata._ZTS3Foo,"aG",@progbits,_ZTS3Foo,comdat
	.type	_ZTS3Foo, @object
	.size	_ZTS3Foo, 5
_ZTS3Foo:
	.string	"3Foo"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
