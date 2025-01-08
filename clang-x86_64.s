	.text
	.intel_syntax noprefix
	.file	"mini-libc.c"
	.section	.ltext,"axl",@progbits
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	4, 0x90
	.type	make_ti,@function
make_ti:                                # @make_ti
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
	movabs	rax, offset .L__profc_make_ti
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
	.cfi_endproc
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	4, 0x90
	.type	make_tu,@function
make_tu:                                # @make_tu
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.1
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
	movabs	rax, offset .L__profc_make_tu
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
	.cfi_endproc
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	4, 0x90
	.type	memmove,@function
memmove:                                # @memmove
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_memmove
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 32]
	jae	.LBB2_6
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memmove+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 32], rax
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movabs	rax, offset .L__profc_memmove+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 40], rcx
	mov	cl, byte ptr [rax - 1]
	mov	rax, qword ptr [rbp - 32]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 32], rdx
	mov	byte ptr [rax - 1], cl
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB2_2
.LBB2_5:
	jmp	.LBB2_13
.LBB2_6:
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 32]
	je	.LBB2_12
# %bb.7:
	movabs	rax, offset .L__profc_memmove+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memmove+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 40], rcx
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 32]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 32], rdx
	mov	byte ptr [rax], cl
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB2_8
.LBB2_11:
	movabs	rax, offset __llvm_gcov_ctr.2+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB2_12:
	movabs	rax, offset __llvm_gcov_ctr.2+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB2_13:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
	.cfi_endproc
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	4, 0x90
	.type	memccpy,@function
memccpy:                                # @memccpy
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], edx
	mov	qword ptr [rbp - 40], rcx
	movabs	rax, offset .L__profc_memccpy
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 56], rax
	mov	eax, dword ptr [rbp - 28]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [rbp - 28], eax
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 40], 0
	mov	byte ptr [rbp - 57], al         # 1-byte Spill
	je	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memccpy+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 56]
	mov	al, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 48]
	mov	byte ptr [rcx], al
	movzx	eax, al
	cmp	eax, dword ptr [rbp - 28]
	setne	al
	mov	byte ptr [rbp - 58], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 57], al         # 1-byte Spill
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	mov	al, byte ptr [rbp - 58]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.3+8
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_memccpy+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 57], al         # 1-byte Spill
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	mov	al, byte ptr [rbp - 57]         # 1-byte Reload
	test	al, 1
	jne	.LBB3_5
	jmp	.LBB3_7
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	movabs	rax, offset .L__profc_memccpy+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	add	rax, -1
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 56]
	add	rax, 1
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
	jmp	.LBB3_1
.LBB3_7:
	cmp	qword ptr [rbp - 40], 0
	je	.LBB3_9
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.3+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memccpy+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB3_10
.LBB3_9:
	movabs	rax, offset __llvm_gcov_ctr.3+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB3_10:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
	.cfi_endproc
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	4, 0x90
	.type	memchr,@function
memchr:                                 # @memchr
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_memchr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [rbp - 12], eax
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
	je	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.4
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memchr+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 34], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
	jne	.LBB4_3
	jmp	.LBB4_4
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	mov	al, byte ptr [rbp - 34]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.4+8
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_memchr+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	mov	al, byte ptr [rbp - 33]         # 1-byte Reload
	test	al, 1
	jne	.LBB4_5
	jmp	.LBB4_7
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	movabs	rax, offset .L__profc_memchr+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB4_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.4+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB4_1
.LBB4_7:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB4_9
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.4+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memchr+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 48], rax       # 8-byte Spill
	jmp	.LBB4_10
.LBB4_9:
	movabs	rax, offset __llvm_gcov_ctr.4+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 48], rax       # 8-byte Spill
.LBB4_10:
	mov	rax, qword ptr [rbp - 48]       # 8-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
	.cfi_endproc
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	4, 0x90
	.type	memcmp,@function
memcmp:                                 # @memcmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_memcmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
	je	.LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.5
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memcmp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rcx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [rbp - 42], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
	jne	.LBB5_3
	jmp	.LBB5_4
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	mov	al, byte ptr [rbp - 42]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.5+8
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_memcmp+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	mov	al, byte ptr [rbp - 41]         # 1-byte Reload
	test	al, 1
	jne	.LBB5_5
	jmp	.LBB5_7
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	movabs	rax, offset .L__profc_memcmp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.5+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	jmp	.LBB5_1
.LBB5_7:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB5_9
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.5+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memcmp+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rcx]
	sub	eax, ecx
	mov	dword ptr [rbp - 48], eax       # 4-byte Spill
	jmp	.LBB5_10
.LBB5_9:
	movabs	rax, offset __llvm_gcov_ctr.5+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
	mov	dword ptr [rbp - 48], eax       # 4-byte Spill
.LBB5_10:
	mov	eax, dword ptr [rbp - 48]       # 4-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
	.cfi_endproc
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	4, 0x90
	.type	memcpy,@function
memcpy:                                 # @memcpy
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.6
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_memcpy
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movabs	rax, offset .L__profc_memcpy+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 40], rcx
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 32]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 32], rdx
	mov	byte ptr [rax], cl
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.6+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB6_1
.LBB6_4:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
	.cfi_endproc
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	4, 0x90
	.type	memrchr,@function
memrchr:                                # @memrchr
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	mov	qword ptr [rbp - 32], rdx
	movabs	rax, offset .L__profc_memrchr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 20]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [rbp - 20], eax
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	cmp	rax, 0
	je	.LBB7_5
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movabs	rax, offset .L__profc_memrchr+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax + rcx]
	cmp	eax, dword ptr [rbp - 20]
	jne	.LBB7_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.7
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memrchr+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	add	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.7+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB7_1
.LBB7_5:
	movabs	rax, offset __llvm_gcov_ctr.7+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB7_6:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
	.cfi_endproc
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	4, 0x90
	.type	memset,@function
memset:                                 # @memset
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_memset
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movabs	rax, offset .L__profc_memset+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	mov	cl, al
	mov	rax, qword ptr [rbp - 32]
	mov	byte ptr [rax], cl
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.8+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB8_1
.LBB8_4:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
	.cfi_endproc
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	4, 0x90
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.9
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc_stpcpy
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	al, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx], al
	cmp	al, 0
	je	.LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movabs	rax, offset .L__profc_stpcpy+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.9+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB9_1
.LBB9_4:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
	.cfi_endproc
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	4, 0x90
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.10
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc_strchrnul
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [rbp - 12], eax
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
	je	.LBB10_4
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.10+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strchrnul+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	movzx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
	jne	.LBB10_3
	jmp	.LBB10_4
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	mov	al, byte ptr [rbp - 14]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.10+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_strchrnul+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	mov	al, byte ptr [rbp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB10_5
	jmp	.LBB10_7
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	movabs	rax, offset .L__profc_strchrnul+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB10_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.10+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB10_1
.LBB10_7:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
	.cfi_endproc
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	4, 0x90
	.type	strchr,@function
strchr:                                 # @strchr
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	movabs	rax, offset .L__profc_strchr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB11_2
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.11+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strchr+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 20]
	jne	.LBB11_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.11
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strchr+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB11_7
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	jmp	.LBB11_5
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 16], rcx
	cmp	byte ptr [rax], 0
	jne	.LBB11_1
# %bb.6:
	movabs	rax, offset __llvm_gcov_ctr.11+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB11_7:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
	.cfi_endproc
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	4, 0x90
	.type	strcmp,@function
strcmp:                                 # @strcmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.12
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc_strcmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	movsx	edx, byte ptr [rax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.12+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strcmp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	setne	al
	mov	byte ptr [rbp - 18], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB12_3
	jmp	.LBB12_4
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	mov	al, byte ptr [rbp - 18]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.12+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_strcmp+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	mov	al, byte ptr [rbp - 17]         # 1-byte Reload
	test	al, 1
	jne	.LBB12_5
	jmp	.LBB12_7
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	movabs	rax, offset .L__profc_strcmp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB12_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.12+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB12_1
.LBB12_7:
	mov	rax, qword ptr [rbp - 8]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	movzx	ecx, byte ptr [rcx]
	sub	eax, ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
	.cfi_endproc
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	4, 0x90
	.type	strlen,@function
strlen:                                 # @strlen
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.13
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_strlen
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	movabs	rax, offset .L__profc_strlen+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.13+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB13_1
.LBB13_4:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	sub	rax, rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
	.cfi_endproc
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	4, 0x90
	.type	strncmp,@function
strncmp:                                # @strncmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	movabs	rax, offset .L__profc_strncmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	cmp	rax, 0
	jne	.LBB14_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.14+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strncmp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB14_14
.LBB14_2:
	movabs	rax, offset __llvm_gcov_ctr.14
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB14_10
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.14+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strncmp+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	movzx	ecx, byte ptr [rax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB14_10
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.14+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strncmp+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	movabs	rax, offset .L__profc_strncmp+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 32], 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB14_10
# %bb.7:                                #   in Loop: Header=BB14_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.14+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strncmp+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.8:                                #   in Loop: Header=BB14_3 Depth=1
	movabs	rax, offset .L__profc_strncmp+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 48]
	movzx	ecx, byte ptr [rcx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [rbp - 50], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	jne	.LBB14_9
	jmp	.LBB14_10
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	mov	al, byte ptr [rbp - 50]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.14+40
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_strncmp+32
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	mov	al, byte ptr [rbp - 49]         # 1-byte Reload
	test	al, 1
	jne	.LBB14_11
	jmp	.LBB14_13
.LBB14_11:                              #   in Loop: Header=BB14_3 Depth=1
	movabs	rax, offset .L__profc_strncmp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.12:                               #   in Loop: Header=BB14_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.14+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	add	rax, 1
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, -1
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB14_3
.LBB14_13:
	mov	rax, qword ptr [rbp - 40]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 48]
	movzx	ecx, byte ptr [rcx]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.LBB14_14:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
	.cfi_endproc
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	4, 0x90
	.type	swab,@function
swab:                                   # @swab
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.15
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_swab
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 1
	jle	.LBB15_4
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	movabs	rax, offset .L__profc_swab+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	cl, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 32]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 40]
	mov	byte ptr [rax + 1], cl
	mov	rax, qword ptr [rbp - 40]
	add	rax, 2
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, 2
	mov	qword ptr [rbp - 32], rax
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.15+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	sub	rax, 2
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB15_1
.LBB15_4:
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
	.cfi_endproc
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	4, 0x90
	.type	isalpha,@function
isalpha:                                # @isalpha
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isalpha
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 26
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
	.cfi_endproc
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	4, 0x90
	.type	isascii,@function
isascii:                                # @isascii
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.17
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isascii
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	and	eax, -128
	cmp	eax, 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
	.cfi_endproc
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	4, 0x90
	.type	isblank,@function
isblank:                                # @isblank
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.18
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isblank
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	je	.LBB18_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.18+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_isblank+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jne	.LBB18_3
# %bb.2:
	mov	al, byte ptr [rbp - 6]          # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.18+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_isblank+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB18_3:
	mov	al, byte ptr [rbp - 5]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
	.cfi_endproc
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	4, 0x90
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.19
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_iscntrl
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB19_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.19+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iscntrl+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	dword ptr [rbp - 4], 127
	sete	al
	mov	byte ptr [rbp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jne	.LBB19_3
# %bb.2:
	mov	al, byte ptr [rbp - 6]          # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.19+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_iscntrl+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB19_3:
	mov	al, byte ptr [rbp - 5]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
	.cfi_endproc
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	4, 0x90
	.type	isdigit,@function
isdigit:                                # @isdigit
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.20
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isdigit
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 48
	cmp	eax, 10
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
	.cfi_endproc
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	4, 0x90
	.type	isgraph,@function
isgraph:                                # @isgraph
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.21
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isgraph
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 33
	cmp	eax, 94
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
	.cfi_endproc
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	4, 0x90
	.type	islower,@function
islower:                                # @islower
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.22
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_islower
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 97
	cmp	eax, 26
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
	.cfi_endproc
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	4, 0x90
	.type	isprint,@function
isprint:                                # @isprint
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.23
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isprint
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 32
	cmp	eax, 95
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
	.cfi_endproc
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	4, 0x90
	.type	isspace,@function
isspace:                                # @isspace
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isspace
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	je	.LBB24_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.24+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_isspace+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 9
	cmp	eax, 5
	setb	al
	mov	byte ptr [rbp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jne	.LBB24_3
# %bb.2:
	mov	al, byte ptr [rbp - 6]          # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.24+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_isspace+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB24_3:
	mov	al, byte ptr [rbp - 5]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
	.cfi_endproc
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	4, 0x90
	.type	isupper,@function
isupper:                                # @isupper
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.25
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_isupper
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 65
	cmp	eax, 26
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
	.cfi_endproc
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	4, 0x90
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.26
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_iswcntrl
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB26_7
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.26+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswcntrl+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 127
	mov	al, 1
	cmp	ecx, 33
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB26_7
# %bb.2:
	movabs	rax, offset __llvm_gcov_ctr.26+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswcntrl+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.3:
	movabs	rax, offset .L__profc_iswcntrl+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 8232
	mov	al, 1
	cmp	ecx, 2
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB26_7
# %bb.4:
	movabs	rax, offset __llvm_gcov_ctr.26+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswcntrl+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.5:
	movabs	rax, offset .L__profc_iswcntrl+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 65529
	cmp	eax, 3
	setb	al
	mov	byte ptr [rbp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jne	.LBB26_7
# %bb.6:
	mov	al, byte ptr [rbp - 6]          # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.26+32
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_iswcntrl+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB26_7:
	mov	al, byte ptr [rbp - 5]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
	.cfi_endproc
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	4, 0x90
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.27
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_iswdigit
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 48
	cmp	eax, 10
	setb	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
	.cfi_endproc
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	4, 0x90
	.type	iswprint,@function
iswprint:                               # @iswprint
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	movabs	rax, offset .L__profc_iswprint
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	dword ptr [rbp - 8], 255
	jae	.LBB28_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.28
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswprint+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	and	eax, 127
	cmp	eax, 33
	setge	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB28_13
.LBB28_2:
	cmp	dword ptr [rbp - 8], 8232
	jb	.LBB28_7
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.28+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswprint+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 8234
	cmp	eax, 47062
	jb	.LBB28_7
# %bb.4:
	movabs	rax, offset __llvm_gcov_ctr.28+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswprint+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.5:
	movabs	rax, offset .L__profc_iswprint+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 57344
	cmp	eax, 8185
	jb	.LBB28_7
# %bb.6:
	movabs	rax, offset .L__profc_iswprint+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB28_8
.LBB28_7:
	movabs	rax, offset __llvm_gcov_ctr.28+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswprint+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.LBB28_13
.LBB28_8:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.LBB28_11
# %bb.9:
	movabs	rax, offset __llvm_gcov_ctr.28+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswprint+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	and	eax, 65534
	cmp	eax, 65534
	je	.LBB28_11
# %bb.10:
	movabs	rax, offset .L__profc_iswprint+72
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB28_12
.LBB28_11:
	movabs	rax, offset __llvm_gcov_ctr.28+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswprint+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB28_13
.LBB28_12:
	movabs	rax, offset __llvm_gcov_ctr.28+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
.LBB28_13:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
	.cfi_endproc
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	4, 0x90
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.29
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_iswxdigit
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 48
	mov	al, 1
	cmp	ecx, 10
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB29_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.29+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_iswxdigit+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 6
	setb	al
	mov	byte ptr [rbp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jne	.LBB29_3
# %bb.2:
	mov	al, byte ptr [rbp - 6]          # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.29+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_iswxdigit+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB29_3:
	mov	al, byte ptr [rbp - 5]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
	.cfi_endproc
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	4, 0x90
	.type	toascii,@function
toascii:                                # @toascii
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.30
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_toascii
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	and	eax, 127
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
	.cfi_endproc
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	4, 0x90
	.type	fdim,@function
fdim:                                   # @fdim
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 16], xmm0
	movsd	qword ptr [rbp - 24], xmm1
	movabs	rax, offset .L__profc_fdim
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB31_1
	jmp	.LBB31_2
.LBB31_1:
	movabs	rax, offset __llvm_gcov_ctr.31
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fdim+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB31_8
.LBB31_2:
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB31_3
	jmp	.LBB31_4
.LBB31_3:
	movabs	rax, offset __llvm_gcov_ctr.31+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fdim+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB31_8
.LBB31_4:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 24]
	jbe	.LBB31_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.31+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fdim+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	subsd	xmm0, qword ptr [rbp - 24]
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB31_7
.LBB31_6:
	movabs	rax, offset __llvm_gcov_ctr.31+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
.LBB31_7:
	movsd	xmm0, qword ptr [rbp - 32]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
.LBB31_8:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
	.cfi_endproc
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	4, 0x90
	.type	fdimf,@function
fdimf:                                  # @fdimf
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 8], xmm0
	movss	dword ptr [rbp - 12], xmm1
	movabs	rax, offset .L__profc_fdimf
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB32_1
	jmp	.LBB32_2
.LBB32_1:
	movabs	rax, offset __llvm_gcov_ctr.32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fdimf+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB32_8
.LBB32_2:
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB32_3
	jmp	.LBB32_4
.LBB32_3:
	movabs	rax, offset __llvm_gcov_ctr.32+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fdimf+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB32_8
.LBB32_4:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 12]
	jbe	.LBB32_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.32+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fdimf+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	subss	xmm0, dword ptr [rbp - 12]
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jmp	.LBB32_7
.LBB32_6:
	movabs	rax, offset __llvm_gcov_ctr.32+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
.LBB32_7:
	movss	xmm0, dword ptr [rbp - 16]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
.LBB32_8:
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
	.cfi_endproc
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	4, 0x90
	.type	fmax,@function
fmax:                                   # @fmax
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 16], xmm0
	movsd	qword ptr [rbp - 24], xmm1
	movabs	rax, offset .L__profc_fmax
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB33_1
	jmp	.LBB33_2
.LBB33_1:
	movabs	rax, offset __llvm_gcov_ctr.33
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmax+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB33_13
.LBB33_2:
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB33_3
	jmp	.LBB33_4
.LBB33_3:
	movabs	rax, offset __llvm_gcov_ctr.33+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmax+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB33_13
.LBB33_4:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	cmp	rax, 0
	setl	al
	and	al, 1
	movzx	eax, al
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movq	rcx, xmm0
	cmp	rcx, 0
	setl	cl
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB33_9
# %bb.5:
	movabs	rax, offset .L__profc_fmax+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	cmp	rax, 0
	jge	.LBB33_7
# %bb.6:
	movabs	rax, offset __llvm_gcov_ctr.33+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmax+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB33_8
.LBB33_7:
	movabs	rax, offset __llvm_gcov_ctr.33+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
.LBB33_8:
	movsd	xmm0, qword ptr [rbp - 32]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB33_13
.LBB33_9:
	movsd	xmm1, qword ptr [rbp - 16]      # xmm1 = mem[0],zero
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm1
	jbe	.LBB33_11
# %bb.10:
	movabs	rax, offset __llvm_gcov_ctr.33+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmax+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm0      # 8-byte Spill
	jmp	.LBB33_12
.LBB33_11:
	movabs	rax, offset __llvm_gcov_ctr.33+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm0      # 8-byte Spill
.LBB33_12:
	movsd	xmm0, qword ptr [rbp - 40]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
.LBB33_13:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
	.cfi_endproc
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	4, 0x90
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 8], xmm0
	movss	dword ptr [rbp - 12], xmm1
	movabs	rax, offset .L__profc_fmaxf
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB34_1
	jmp	.LBB34_2
.LBB34_1:
	movabs	rax, offset __llvm_gcov_ctr.34
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxf+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB34_13
.LBB34_2:
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB34_3
	jmp	.LBB34_4
.LBB34_3:
	movabs	rax, offset __llvm_gcov_ctr.34+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxf+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB34_13
.LBB34_4:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movd	eax, xmm0
	cmp	eax, 0
	setl	al
	and	al, 1
	movzx	eax, al
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movd	ecx, xmm0
	cmp	ecx, 0
	setl	cl
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB34_9
# %bb.5:
	movabs	rax, offset .L__profc_fmaxf+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movd	eax, xmm0
	cmp	eax, 0
	jge	.LBB34_7
# %bb.6:
	movabs	rax, offset __llvm_gcov_ctr.34+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxf+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jmp	.LBB34_8
.LBB34_7:
	movabs	rax, offset __llvm_gcov_ctr.34+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
.LBB34_8:
	movss	xmm0, dword ptr [rbp - 16]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB34_13
.LBB34_9:
	movss	xmm1, dword ptr [rbp - 8]       # xmm1 = mem[0],zero,zero,zero
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	jbe	.LBB34_11
# %bb.10:
	movabs	rax, offset __llvm_gcov_ctr.34+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxf+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
	jmp	.LBB34_12
.LBB34_11:
	movabs	rax, offset __llvm_gcov_ctr.34+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
.LBB34_12:
	movss	xmm0, dword ptr [rbp - 20]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
.LBB34_13:
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
	.cfi_endproc
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	4, 0x90
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	fld	tbyte ptr [rbp + 32]
	fld	tbyte ptr [rbp + 16]
	fstp	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 48]
	movabs	rax, offset .L__profc_fmaxl
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB35_1
	jmp	.LBB35_2
.LBB35_1:
	movabs	rax, offset __llvm_gcov_ctr.35
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxl+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 16]
	jmp	.LBB35_13
.LBB35_2:
	fld	tbyte ptr [rbp - 48]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB35_3
	jmp	.LBB35_4
.LBB35_3:
	movabs	rax, offset __llvm_gcov_ctr.35+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxl+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 16]
	jmp	.LBB35_13
.LBB35_4:
	movzx	eax, word ptr [rbp - 24]
	shr	eax, 15
	movzx	ecx, word ptr [rbp - 40]
	shr	ecx, 15
                                        # kill: def $cl killed $cl killed $ecx
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB35_9
# %bb.5:
	movabs	rax, offset .L__profc_fmaxl+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsx	rax, word ptr [rbp - 24]
	test	rax, rax
	jns	.LBB35_7
	jmp	.LBB35_6
.LBB35_6:
	movabs	rax, offset __llvm_gcov_ctr.35+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxl+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 60]            # 10-byte Folded Spill
	jmp	.LBB35_8
.LBB35_7:
	movabs	rax, offset __llvm_gcov_ctr.35+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 60]            # 10-byte Folded Spill
.LBB35_8:
	fld	tbyte ptr [rbp - 60]            # 10-byte Folded Reload
	fstp	tbyte ptr [rbp - 16]
	jmp	.LBB35_13
.LBB35_9:
	fld	tbyte ptr [rbp - 32]
	fld	tbyte ptr [rbp - 48]
	fucompi	st, st(1)
	fstp	st(0)
	jbe	.LBB35_11
	jmp	.LBB35_10
.LBB35_10:
	movabs	rax, offset __llvm_gcov_ctr.35+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmaxl+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 72]            # 10-byte Folded Spill
	jmp	.LBB35_12
.LBB35_11:
	movabs	rax, offset __llvm_gcov_ctr.35+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 72]            # 10-byte Folded Spill
.LBB35_12:
	fld	tbyte ptr [rbp - 72]            # 10-byte Folded Reload
	fstp	tbyte ptr [rbp - 16]
.LBB35_13:
	fld	tbyte ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
	.cfi_endproc
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	4, 0x90
	.type	fmin,@function
fmin:                                   # @fmin
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 16], xmm0
	movsd	qword ptr [rbp - 24], xmm1
	movabs	rax, offset .L__profc_fmin
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB36_1
	jmp	.LBB36_2
.LBB36_1:
	movabs	rax, offset __llvm_gcov_ctr.36
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmin+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB36_13
.LBB36_2:
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB36_3
	jmp	.LBB36_4
.LBB36_3:
	movabs	rax, offset __llvm_gcov_ctr.36+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmin+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB36_13
.LBB36_4:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	cmp	rax, 0
	setl	al
	and	al, 1
	movzx	eax, al
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movq	rcx, xmm0
	cmp	rcx, 0
	setl	cl
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB36_9
# %bb.5:
	movabs	rax, offset .L__profc_fmin+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	cmp	rax, 0
	jge	.LBB36_7
# %bb.6:
	movabs	rax, offset __llvm_gcov_ctr.36+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmin+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB36_8
.LBB36_7:
	movabs	rax, offset __llvm_gcov_ctr.36+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
.LBB36_8:
	movsd	xmm0, qword ptr [rbp - 32]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB36_13
.LBB36_9:
	movsd	xmm1, qword ptr [rbp - 16]      # xmm1 = mem[0],zero
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm1
	jbe	.LBB36_11
# %bb.10:
	movabs	rax, offset __llvm_gcov_ctr.36+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fmin+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm0      # 8-byte Spill
	jmp	.LBB36_12
.LBB36_11:
	movabs	rax, offset __llvm_gcov_ctr.36+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm0      # 8-byte Spill
.LBB36_12:
	movsd	xmm0, qword ptr [rbp - 40]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
.LBB36_13:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
	.cfi_endproc
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	4, 0x90
	.type	fminf,@function
fminf:                                  # @fminf
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 8], xmm0
	movss	dword ptr [rbp - 12], xmm1
	movabs	rax, offset .L__profc_fminf
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB37_1
	jmp	.LBB37_2
.LBB37_1:
	movabs	rax, offset __llvm_gcov_ctr.37
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminf+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB37_13
.LBB37_2:
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB37_3
	jmp	.LBB37_4
.LBB37_3:
	movabs	rax, offset __llvm_gcov_ctr.37+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminf+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB37_13
.LBB37_4:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movd	eax, xmm0
	cmp	eax, 0
	setl	al
	and	al, 1
	movzx	eax, al
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movd	ecx, xmm0
	cmp	ecx, 0
	setl	cl
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB37_9
# %bb.5:
	movabs	rax, offset .L__profc_fminf+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movd	eax, xmm0
	cmp	eax, 0
	jge	.LBB37_7
# %bb.6:
	movabs	rax, offset __llvm_gcov_ctr.37+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminf+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jmp	.LBB37_8
.LBB37_7:
	movabs	rax, offset __llvm_gcov_ctr.37+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
.LBB37_8:
	movss	xmm0, dword ptr [rbp - 16]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB37_13
.LBB37_9:
	movss	xmm1, dword ptr [rbp - 8]       # xmm1 = mem[0],zero,zero,zero
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	jbe	.LBB37_11
# %bb.10:
	movabs	rax, offset __llvm_gcov_ctr.37+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminf+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
	jmp	.LBB37_12
.LBB37_11:
	movabs	rax, offset __llvm_gcov_ctr.37+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
.LBB37_12:
	movss	xmm0, dword ptr [rbp - 20]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
.LBB37_13:
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
	.cfi_endproc
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	4, 0x90
	.type	fminl,@function
fminl:                                  # @fminl
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	fld	tbyte ptr [rbp + 32]
	fld	tbyte ptr [rbp + 16]
	fstp	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 48]
	movabs	rax, offset .L__profc_fminl
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB38_1
	jmp	.LBB38_2
.LBB38_1:
	movabs	rax, offset __llvm_gcov_ctr.38
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminl+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 16]
	jmp	.LBB38_13
.LBB38_2:
	fld	tbyte ptr [rbp - 48]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB38_3
	jmp	.LBB38_4
.LBB38_3:
	movabs	rax, offset __llvm_gcov_ctr.38+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminl+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 16]
	jmp	.LBB38_13
.LBB38_4:
	movzx	eax, word ptr [rbp - 24]
	shr	eax, 15
	movzx	ecx, word ptr [rbp - 40]
	shr	ecx, 15
                                        # kill: def $cl killed $cl killed $ecx
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB38_9
# %bb.5:
	movabs	rax, offset .L__profc_fminl+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsx	rax, word ptr [rbp - 24]
	test	rax, rax
	jns	.LBB38_7
	jmp	.LBB38_6
.LBB38_6:
	movabs	rax, offset __llvm_gcov_ctr.38+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminl+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 60]            # 10-byte Folded Spill
	jmp	.LBB38_8
.LBB38_7:
	movabs	rax, offset __llvm_gcov_ctr.38+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 60]            # 10-byte Folded Spill
.LBB38_8:
	fld	tbyte ptr [rbp - 60]            # 10-byte Folded Reload
	fstp	tbyte ptr [rbp - 16]
	jmp	.LBB38_13
.LBB38_9:
	fld	tbyte ptr [rbp - 32]
	fld	tbyte ptr [rbp - 48]
	fucompi	st, st(1)
	fstp	st(0)
	jbe	.LBB38_11
	jmp	.LBB38_10
.LBB38_10:
	movabs	rax, offset __llvm_gcov_ctr.38+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_fminl+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 72]            # 10-byte Folded Spill
	jmp	.LBB38_12
.LBB38_11:
	movabs	rax, offset __llvm_gcov_ctr.38+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 72]            # 10-byte Folded Spill
.LBB38_12:
	fld	tbyte ptr [rbp - 72]            # 10-byte Folded Reload
	fstp	tbyte ptr [rbp - 16]
.LBB38_13:
	fld	tbyte ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
	.cfi_endproc
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	4, 0x90
	.type	l64a,@function
l64a:                                   # @l64a
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.39
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_l64a
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], eax
	movabs	rax, offset l64a.s
	mov	qword ptr [rbp - 16], rax
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	je	.LBB39_4
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	movabs	rax, offset .L__profc_l64a+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	and	eax, 63
                                        # kill: def $rax killed $eax
	movabs	rcx, offset digits
	add	rax, rcx
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	byte ptr [rax], cl
# %bb.3:                                #   in Loop: Header=BB39_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.39+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 6
	mov	dword ptr [rbp - 20], eax
	jmp	.LBB39_1
.LBB39_4:
	mov	rax, qword ptr [rbp - 16]
	mov	byte ptr [rax], 0
	movabs	rax, offset l64a.s
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
	.cfi_endproc
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	4, 0x90
	.type	srand,@function
srand:                                  # @srand
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_srand
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	dec	eax
	mov	ecx, eax
	movabs	rax, offset seed
	mov	qword ptr [rax], rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
	.cfi_endproc
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	4, 0x90
	.type	rand,@function
rand:                                   # @rand
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.41
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_rand
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset seed
	mov	rcx, qword ptr [rax]
	movabs	rdx, 6364136223846793005
	imul	rcx, rdx
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rax]
	shr	rax, 33
                                        # kill: def $eax killed $eax killed $rax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
	.cfi_endproc
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	4, 0x90
	.type	insque,@function
insque:                                 # @insque
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc_insque
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	cmp	qword ptr [rbp - 32], 0
	jne	.LBB42_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.42+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_insque+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rax], 0
	jmp	.LBB42_4
.LBB42_2:
	movabs	rax, offset __llvm_gcov_ctr.42
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	cmp	qword ptr [rax], 0
	je	.LBB42_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.42+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_insque+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 24]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 8], rcx
.LBB42_4:
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
	.cfi_endproc
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	4, 0x90
	.type	remque,@function
remque:                                 # @remque
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.43
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_remque
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	cmp	qword ptr [rax], 0
	je	.LBB43_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.43+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_remque+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 8], rcx
.LBB43_2:
	mov	rax, qword ptr [rbp - 16]
	cmp	qword ptr [rax + 8], 0
	je	.LBB43_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.43+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_remque+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rax], rcx
.LBB43_4:
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
	.cfi_endproc
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	4, 0x90
	.type	lsearch,@function
lsearch:                                # @lsearch
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], r8
	movabs	rax, offset .L__profc_lsearch
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 80], rax       # 8-byte Spill
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 32]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 64], rax
	mov	qword ptr [rbp - 72], 0
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 72]
	cmp	rax, qword ptr [rbp - 64]
	jae	.LBB44_6
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	mov	rcx, qword ptr [rbp - 80]       # 8-byte Reload
	movabs	rax, offset .L__profc_lsearch+8
	mov	rdx, qword ptr [rax]
	inc	rdx
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 48]
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 56]
	imul	rcx, qword ptr [rbp - 72]
	add	rsi, rcx
	call	rax
	cmp	eax, 0
	jne	.LBB44_4
# %bb.3:
	mov	rcx, qword ptr [rbp - 80]       # 8-byte Reload
	movabs	rax, offset __llvm_gcov_ctr.44
	mov	rdx, qword ptr [rax]
	inc	rdx
	mov	qword ptr [rax], rdx
	movabs	rax, offset .L__profc_lsearch+16
	mov	rdx, qword ptr [rax]
	inc	rdx
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 56]
	imul	rcx, qword ptr [rbp - 72]
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.44+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 72]
	add	rax, 1
	mov	qword ptr [rbp - 72], rax
	jmp	.LBB44_1
.LBB44_6:
	mov	rax, qword ptr [rbp - 80]       # 8-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.44+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	rdx, qword ptr [rbp - 64]
	add	rdx, 1
	mov	rcx, qword ptr [rbp - 32]
	mov	qword ptr [rcx], rdx
	mov	rdi, qword ptr [rbp - 56]
	imul	rax, qword ptr [rbp - 64]
	add	rdi, rax
	mov	qword ptr [rbp - 88], rdi       # 8-byte Spill
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 40]
	movabs	rax, offset memcpy
	call	rax
                                        # kill: def $rcx killed $rax
	mov	rax, qword ptr [rbp - 88]       # 8-byte Reload
	mov	qword ptr [rbp - 8], rax
.LBB44_7:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 96
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
	.cfi_endproc
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	4, 0x90
	.type	lfind,@function
lfind:                                  # @lfind
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], r8
	movabs	rax, offset .L__profc_lfind
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 80], rax       # 8-byte Spill
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 32]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 64], rax
	mov	qword ptr [rbp - 72], 0
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 72]
	cmp	rax, qword ptr [rbp - 64]
	jae	.LBB45_6
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	mov	rcx, qword ptr [rbp - 80]       # 8-byte Reload
	movabs	rax, offset .L__profc_lfind+8
	mov	rdx, qword ptr [rax]
	inc	rdx
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 48]
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 56]
	imul	rcx, qword ptr [rbp - 72]
	add	rsi, rcx
	call	rax
	cmp	eax, 0
	jne	.LBB45_4
# %bb.3:
	mov	rcx, qword ptr [rbp - 80]       # 8-byte Reload
	movabs	rax, offset __llvm_gcov_ctr.45
	mov	rdx, qword ptr [rax]
	inc	rdx
	mov	qword ptr [rax], rdx
	movabs	rax, offset .L__profc_lfind+16
	mov	rdx, qword ptr [rax]
	inc	rdx
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [rbp - 56]
	imul	rcx, qword ptr [rbp - 72]
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.45+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 72]
	add	rax, 1
	mov	qword ptr [rbp - 72], rax
	jmp	.LBB45_1
.LBB45_6:
	movabs	rax, offset __llvm_gcov_ctr.45+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB45_7:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 80
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
	.cfi_endproc
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	4, 0x90
	.type	abs,@function
abs:                                    # @abs
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_abs
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	dword ptr [rbp - 4], 0
	jle	.LBB46_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.46
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_abs+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax        # 4-byte Spill
	jmp	.LBB46_3
.LBB46_2:
	movabs	rax, offset __llvm_gcov_ctr.46+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
	sub	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax        # 4-byte Spill
.LBB46_3:
	mov	eax, dword ptr [rbp - 8]        # 4-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
	.cfi_endproc
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	4, 0x90
	.type	atoi,@function
atoi:                                   # @atoi
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_atoi
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 16], 0
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isspace
	call	rax
	cmp	eax, 0
	je	.LBB47_3
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.47
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoi+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB47_1
.LBB47_3:
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbp - 20], eax       # 4-byte Spill
	sub	eax, 43
	je	.LBB47_5
	jmp	.LBB47_14
.LBB47_14:
	mov	eax, dword ptr [rbp - 20]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB47_7
	jmp	.LBB47_4
.LBB47_4:
	movabs	rax, offset __llvm_gcov_ctr.47+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoi+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 16], 1
	jmp	.LBB47_6
.LBB47_5:
	movabs	rax, offset __llvm_gcov_ctr.47+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoi+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB47_6:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.LBB47_7:
	movabs	rax, offset .L__profc_atoi+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isdigit
	call	rax
	cmp	eax, 0
	je	.LBB47_10
# %bb.9:                                #   in Loop: Header=BB47_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.47+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoi+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	imul	eax, dword ptr [rbp - 12], 10
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	movsx	ecx, byte ptr [rcx]
	sub	ecx, 48
	sub	eax, ecx
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB47_8
.LBB47_10:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB47_12
# %bb.11:
	movabs	rax, offset __llvm_gcov_ctr.47+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoi+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
	jmp	.LBB47_13
.LBB47_12:
	movabs	rax, offset __llvm_gcov_ctr.47+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
	sub	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
.LBB47_13:
	mov	eax, dword ptr [rbp - 24]       # 4-byte Reload
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
	.cfi_endproc
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	4, 0x90
	.type	atol,@function
atol:                                   # @atol
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_atol
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isspace
	call	rax
	cmp	eax, 0
	je	.LBB48_3
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atol+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB48_1
.LBB48_3:
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
	sub	eax, 43
	je	.LBB48_5
	jmp	.LBB48_14
.LBB48_14:
	mov	eax, dword ptr [rbp - 24]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB48_7
	jmp	.LBB48_4
.LBB48_4:
	movabs	rax, offset __llvm_gcov_ctr.48+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atol+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 20], 1
	jmp	.LBB48_6
.LBB48_5:
	movabs	rax, offset __llvm_gcov_ctr.48+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atol+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB48_6:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.LBB48_7:
	movabs	rax, offset .L__profc_atol+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB48_8:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isdigit
	call	rax
	cmp	eax, 0
	je	.LBB48_10
# %bb.9:                                #   in Loop: Header=BB48_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.48+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atol+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	imul	rax, qword ptr [rbp - 16], 10
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	movsx	ecx, byte ptr [rcx]
	sub	ecx, 48
	movsxd	rcx, ecx
	sub	rax, rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB48_8
.LBB48_10:
	cmp	dword ptr [rbp - 20], 0
	je	.LBB48_12
# %bb.11:
	movabs	rax, offset __llvm_gcov_ctr.48+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atol+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	jmp	.LBB48_13
.LBB48_12:
	movabs	rax, offset __llvm_gcov_ctr.48+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
.LBB48_13:
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
	.cfi_endproc
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	4, 0x90
	.type	atoll,@function
atoll:                                  # @atoll
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_atoll
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isspace
	call	rax
	cmp	eax, 0
	je	.LBB49_3
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.49
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoll+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB49_1
.LBB49_3:
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
	sub	eax, 43
	je	.LBB49_5
	jmp	.LBB49_14
.LBB49_14:
	mov	eax, dword ptr [rbp - 24]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB49_7
	jmp	.LBB49_4
.LBB49_4:
	movabs	rax, offset __llvm_gcov_ctr.49+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoll+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 20], 1
	jmp	.LBB49_6
.LBB49_5:
	movabs	rax, offset __llvm_gcov_ctr.49+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoll+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB49_6:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.LBB49_7:
	movabs	rax, offset .L__profc_atoll+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB49_8:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isdigit
	call	rax
	cmp	eax, 0
	je	.LBB49_10
# %bb.9:                                #   in Loop: Header=BB49_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.49+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoll+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	imul	rax, qword ptr [rbp - 16], 10
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	movsx	ecx, byte ptr [rcx]
	sub	ecx, 48
	movsxd	rcx, ecx
	sub	rax, rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB49_8
.LBB49_10:
	cmp	dword ptr [rbp - 20], 0
	je	.LBB49_12
# %bb.11:
	movabs	rax, offset __llvm_gcov_ctr.49+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_atoll+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	jmp	.LBB49_13
.LBB49_12:
	movabs	rax, offset __llvm_gcov_ctr.49+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
.LBB49_13:
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
	.cfi_endproc
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	4, 0x90
	.type	bsearch,@function
bsearch:                                # @bsearch
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], r8
	movabs	rax, offset .L__profc_bsearch
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 32], 0
	jbe	.LBB50_9
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	movabs	rax, offset .L__profc_bsearch+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 40]
	mov	rdx, qword ptr [rbp - 32]
	shr	rdx
	imul	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 48]
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 56]
	call	rax
	mov	dword ptr [rbp - 60], eax
	cmp	dword ptr [rbp - 60], 0
	jge	.LBB50_4
# %bb.3:                                #   in Loop: Header=BB50_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.50+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_bsearch+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	shr	rax
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	cmp	dword ptr [rbp - 60], 0
	jle	.LBB50_6
# %bb.5:                                #   in Loop: Header=BB50_1 Depth=1
	movabs	rax, offset .L__profc_bsearch+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 56]
	add	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 24], rax
	mov	rcx, qword ptr [rbp - 32]
	shr	rcx
	add	rcx, 1
	mov	rax, qword ptr [rbp - 32]
	sub	rax, rcx
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB50_7
.LBB50_6:
	movabs	rax, offset __llvm_gcov_ctr.50+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.50+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	jmp	.LBB50_1
.LBB50_9:
	movabs	rax, offset __llvm_gcov_ctr.50
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB50_10:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 64
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
	.cfi_endproc
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	4, 0x90
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], r8
	mov	qword ptr [rbp - 56], r9
	movabs	rax, offset .L__profc_bsearch_r
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 32]
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 68], eax
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 68], 0
	je	.LBB51_8
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	movabs	rax, offset .L__profc_bsearch_r+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 64]
	mov	ecx, dword ptr [rbp - 68]
	sar	ecx
	movsxd	rcx, ecx
	imul	rcx, qword ptr [rbp - 40]
	add	rax, rcx
	mov	qword ptr [rbp - 80], rax
	mov	rax, qword ptr [rbp - 48]
	mov	rdi, qword ptr [rbp - 16]
	mov	rsi, qword ptr [rbp - 80]
	mov	rdx, qword ptr [rbp - 56]
	call	rax
	mov	dword ptr [rbp - 72], eax
	cmp	dword ptr [rbp - 72], 0
	jne	.LBB51_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.51
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_bsearch_r+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	cmp	dword ptr [rbp - 72], 0
	jle	.LBB51_6
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.51+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_bsearch_r+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 64], rax
	mov	eax, dword ptr [rbp - 68]
	add	eax, -1
	mov	dword ptr [rbp - 68], eax
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.51+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 68]
	sar	eax
	mov	dword ptr [rbp - 68], eax
	jmp	.LBB51_1
.LBB51_8:
	movabs	rax, offset __llvm_gcov_ctr.51+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB51_9:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 80
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
	.cfi_endproc
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	4, 0x90
	.type	div,@function
div:                                    # @div
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.52
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], edi
	mov	dword ptr [rbp - 16], esi
	movabs	rax, offset .L__profc_div
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	cdq
	idiv	dword ptr [rbp - 16]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	cdq
	idiv	dword ptr [rbp - 16]
	mov	dword ptr [rbp - 4], edx
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
	.cfi_endproc
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	4, 0x90
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_imaxabs
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	qword ptr [rbp - 8], 0
	jle	.LBB53_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.53
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_imaxabs+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	jmp	.LBB53_3
.LBB53_2:
	movabs	rax, offset __llvm_gcov_ctr.53+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
.LBB53_3:
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
	.cfi_endproc
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	4, 0x90
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.54
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
	movabs	rax, offset .L__profc_imaxdiv
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 8], rdx
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
	.cfi_endproc
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	4, 0x90
	.type	labs,@function
labs:                                   # @labs
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_labs
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	qword ptr [rbp - 8], 0
	jle	.LBB55_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.55
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_labs+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	jmp	.LBB55_3
.LBB55_2:
	movabs	rax, offset __llvm_gcov_ctr.55+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
.LBB55_3:
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
	.cfi_endproc
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	4, 0x90
	.type	ldiv,@function
ldiv:                                   # @ldiv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
	movabs	rax, offset .L__profc_ldiv
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 8], rdx
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
	.cfi_endproc
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	4, 0x90
	.type	llabs,@function
llabs:                                  # @llabs
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_llabs
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	qword ptr [rbp - 8], 0
	jle	.LBB57_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.57
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_llabs+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	jmp	.LBB57_3
.LBB57_2:
	movabs	rax, offset __llvm_gcov_ctr.57+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
.LBB57_3:
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
	.cfi_endproc
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	4, 0x90
	.type	lldiv,@function
lldiv:                                  # @lldiv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.58
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
	movabs	rax, offset .L__profc_lldiv
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	cqo
	idiv	rcx
	mov	qword ptr [rbp - 8], rdx
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
	.cfi_endproc
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	4, 0x90
	.type	wcschr,@function
wcschr:                                 # @wcschr
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc_wcschr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbp - 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
	je	.LBB59_4
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.59
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcschr+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
	jne	.LBB59_3
	jmp	.LBB59_4
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	mov	al, byte ptr [rbp - 14]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.59+8
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_wcschr+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	mov	al, byte ptr [rbp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB59_5
	jmp	.LBB59_7
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	movabs	rax, offset .L__profc_wcschr+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB59_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.59+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB59_1
.LBB59_7:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.LBB59_9
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.59+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcschr+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax       # 8-byte Spill
	jmp	.LBB59_10
.LBB59_9:
	movabs	rax, offset __llvm_gcov_ctr.59+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 24], rax       # 8-byte Spill
.LBB59_10:
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
	.cfi_endproc
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	4, 0x90
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc_wcscmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 16]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rdx]
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB60_6
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.60
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcscmp+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	je	.LBB60_6
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.60+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcscmp+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.4:                                #   in Loop: Header=BB60_1 Depth=1
	movabs	rax, offset .L__profc_wcscmp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	setne	al
	mov	byte ptr [rbp - 18], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB60_5
	jmp	.LBB60_6
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	mov	al, byte ptr [rbp - 18]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.60+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_wcscmp+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	mov	al, byte ptr [rbp - 17]         # 1-byte Reload
	test	al, 1
	jne	.LBB60_7
	jmp	.LBB60_9
.LBB60_7:                               #   in Loop: Header=BB60_1 Depth=1
	movabs	rax, offset .L__profc_wcscmp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.8:                                #   in Loop: Header=BB60_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.60+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB60_1
.LBB60_9:
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	.LBB60_11
# %bb.10:
	movabs	rax, offset __llvm_gcov_ctr.60+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcscmp+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, 4294967295
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
	jmp	.LBB60_12
.LBB60_11:
	movabs	rax, offset __llvm_gcov_ctr.60+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
.LBB60_12:
	mov	eax, dword ptr [rbp - 24]       # 4-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
	.cfi_endproc
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	4, 0x90
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.61
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc_wcscpy
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 16], rcx
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, 4
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rcx], eax
	cmp	eax, 0
	je	.LBB61_3
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.61+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcscpy+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB61_1
.LBB61_3:
	mov	rax, qword ptr [rbp - 24]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
	.cfi_endproc
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	4, 0x90
	.type	wcslen,@function
wcslen:                                 # @wcslen
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.62
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_wcslen
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.LBB62_4
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	movabs	rax, offset .L__profc_wcslen+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.62+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB62_1
.LBB62_4:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	sub	rax, rcx
	sar	rax, 2
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
	.cfi_endproc
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	4, 0x90
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_wcsncmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB63_8
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.63
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcsncmp+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 16]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rdx]
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jne	.LBB63_8
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.63+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcsncmp+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	movabs	rax, offset .L__profc_wcsncmp+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB63_8
# %bb.5:                                #   in Loop: Header=BB63_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.63+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcsncmp+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB63_1 Depth=1
	movabs	rax, offset .L__profc_wcsncmp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	setne	al
	mov	byte ptr [rbp - 26], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jne	.LBB63_7
	jmp	.LBB63_8
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	mov	al, byte ptr [rbp - 26]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.63+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_wcsncmp+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB63_9
	jmp	.LBB63_11
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
	movabs	rax, offset .L__profc_wcsncmp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.10:                               #   in Loop: Header=BB63_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.63+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB63_1
.LBB63_11:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB63_16
# %bb.12:
	movabs	rax, offset .L__profc_wcsncmp+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	.LBB63_14
# %bb.13:
	movabs	rax, offset __llvm_gcov_ctr.63+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wcsncmp+72
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, 4294967295
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
	jmp	.LBB63_15
.LBB63_14:
	movabs	rax, offset __llvm_gcov_ctr.63+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
.LBB63_15:
	mov	eax, dword ptr [rbp - 32]       # 4-byte Reload
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
	jmp	.LBB63_17
.LBB63_16:
	movabs	rax, offset __llvm_gcov_ctr.63+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
.LBB63_17:
	mov	eax, dword ptr [rbp - 36]       # 4-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
	.cfi_endproc
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	4, 0x90
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_wmemchr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB64_4
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemchr+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 26], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jne	.LBB64_3
	jmp	.LBB64_4
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	mov	al, byte ptr [rbp - 26]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.64+8
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_wmemchr+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB64_5
	jmp	.LBB64_7
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	movabs	rax, offset .L__profc_wmemchr+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB64_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.64+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB64_1
.LBB64_7:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB64_9
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.64+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemchr+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
	jmp	.LBB64_10
.LBB64_9:
	movabs	rax, offset __llvm_gcov_ctr.64+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
.LBB64_10:
	mov	rax, qword ptr [rbp - 40]       # 8-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
	.cfi_endproc
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	4, 0x90
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_wmemcmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB65_4
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.65
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemcmp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	sete	al
	mov	byte ptr [rbp - 26], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jne	.LBB65_3
	jmp	.LBB65_4
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	mov	al, byte ptr [rbp - 26]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.65+8
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_wmemcmp+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB65_5
	jmp	.LBB65_7
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	movabs	rax, offset .L__profc_wmemcmp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB65_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.65+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB65_1
.LBB65_7:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB65_12
# %bb.8:
	movabs	rax, offset .L__profc_wmemcmp+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	.LBB65_10
# %bb.9:
	movabs	rax, offset __llvm_gcov_ctr.65+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemcmp+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, 4294967295
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
	jmp	.LBB65_11
.LBB65_10:
	movabs	rax, offset __llvm_gcov_ctr.65+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
.LBB65_11:
	mov	eax, dword ptr [rbp - 32]       # 4-byte Reload
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
	jmp	.LBB65_13
.LBB65_12:
	movabs	rax, offset __llvm_gcov_ctr.65+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
.LBB65_13:
	mov	eax, dword ptr [rbp - 36]       # 4-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
	.cfi_endproc
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	4, 0x90
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.66
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_wmemcpy
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 24], rcx
	cmp	rax, 0
	je	.LBB66_3
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.66+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemcpy+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 16], rcx
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rax], ecx
	jmp	.LBB66_1
.LBB66_3:
	mov	rax, qword ptr [rbp - 32]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
	.cfi_endproc
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	4, 0x90
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	movabs	rax, offset .L__profc_wmemmove
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 16]
	cmp	rax, qword ptr [rbp - 24]
	jne	.LBB67_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.67
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemmove+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB67_12
.LBB67_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 24]
	sub	rax, rcx
	mov	rcx, qword ptr [rbp - 32]
	shl	rcx, 2
	cmp	rax, rcx
	jae	.LBB67_7
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.67+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemmove+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	cmp	rax, 0
	je	.LBB67_6
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.67+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemmove+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, qword ptr [rbp - 32]
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 32]
	mov	dword ptr [rax + 4*rcx], edx
	jmp	.LBB67_4
.LBB67_6:
	jmp	.LBB67_11
.LBB67_7:
	jmp	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	cmp	rax, 0
	je	.LBB67_10
# %bb.9:                                #   in Loop: Header=BB67_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.67+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemmove+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, 4
	mov	qword ptr [rbp - 24], rcx
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 16], rdx
	mov	dword ptr [rax], ecx
	jmp	.LBB67_8
.LBB67_10:
	movabs	rax, offset __llvm_gcov_ctr.67+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB67_11:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
.LBB67_12:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
	.cfi_endproc
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	4, 0x90
	.type	wmemset,@function
wmemset:                                # @wmemset
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.68
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_wmemset
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 24], rcx
	cmp	rax, 0
	je	.LBB68_3
# %bb.2:                                #   in Loop: Header=BB68_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.68+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_wmemset+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 8], rdx
	mov	dword ptr [rax], ecx
	jmp	.LBB68_1
.LBB68_3:
	mov	rax, qword ptr [rbp - 32]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
	.cfi_endproc
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	4, 0x90
	.type	bcopy,@function
bcopy:                                  # @bcopy
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_bcopy
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 40]
	jae	.LBB69_6
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.69
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_bcopy+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 40], rax
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB69_5
# %bb.3:                                #   in Loop: Header=BB69_2 Depth=1
	movabs	rax, offset .L__profc_bcopy+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	mov	cl, byte ptr [rax - 1]
	mov	rax, qword ptr [rbp - 40]
	mov	rdx, rax
	add	rdx, -1
	mov	qword ptr [rbp - 40], rdx
	mov	byte ptr [rax - 1], cl
# %bb.4:                                #   in Loop: Header=BB69_2 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.69+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB69_2
.LBB69_5:
	jmp	.LBB69_13
.LBB69_6:
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 40]
	je	.LBB69_12
# %bb.7:
	movabs	rax, offset .L__profc_bcopy+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB69_11
# %bb.9:                                #   in Loop: Header=BB69_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.69+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_bcopy+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 32], rcx
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 40]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 40], rdx
	mov	byte ptr [rax], cl
# %bb.10:                               #   in Loop: Header=BB69_8 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB69_8
.LBB69_11:
	movabs	rax, offset __llvm_gcov_ctr.69+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB69_12:
	movabs	rax, offset __llvm_gcov_ctr.69+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB69_13:
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
	.cfi_endproc
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	4, 0x90
	.type	rotl64,@function
rotl64:                                 # @rotl64
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.70
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc_rotl64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, 64
	sub	ecx, dword ptr [rbp - 12]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rdx
	or	rax, rcx
	and	rax, -1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
	.cfi_endproc
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	4, 0x90
	.type	rotr64,@function
rotr64:                                 # @rotr64
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.71
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc_rotr64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rdx, qword ptr [rbp - 8]
	mov	ecx, 64
	sub	ecx, dword ptr [rbp - 12]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rcx, rdx
	or	rax, rcx
	and	rax, -1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
	.cfi_endproc
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	4, 0x90
	.type	rotl32,@function
rotl32:                                 # @rotl32
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.72
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc_rotl32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [rbp - 4]
	mov	ecx, 32
	sub	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, -1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
	.cfi_endproc
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	4, 0x90
	.type	rotr32,@function
rotr32:                                 # @rotr32
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.73
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc_rotr32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	edx, dword ptr [rbp - 4]
	mov	ecx, 32
	sub	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, -1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
	.cfi_endproc
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	4, 0x90
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.74
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc_rotl_sz
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 12]
	mov	ecx, 64
	sub	rcx, rsi
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rdx
	or	rax, rcx
	and	rax, -1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
	.cfi_endproc
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	4, 0x90
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.75
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc_rotr_sz
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rsi, dword ptr [rbp - 12]
	mov	ecx, 64
	sub	rcx, rsi
                                        # kill: def $cl killed $rcx
	shl	rdx, cl
	mov	rcx, rdx
	or	rax, rcx
	and	rax, -1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
	.cfi_endproc
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	4, 0x90
	.type	rotl16,@function
rotl16:                                 # @rotl16
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, di
	movabs	rcx, offset __llvm_gcov_ctr.76
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc_rotl16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	movzx	edx, word ptr [rbp - 2]
	mov	ecx, 16
	sub	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 65535
                                        # kill: def $ax killed $ax killed $eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
	.cfi_endproc
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	4, 0x90
	.type	rotr16,@function
rotr16:                                 # @rotr16
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, di
	movabs	rcx, offset __llvm_gcov_ctr.77
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc_rotr16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	movzx	edx, word ptr [rbp - 2]
	mov	ecx, 16
	sub	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 65535
                                        # kill: def $ax killed $ax killed $eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
	.cfi_endproc
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	4, 0x90
	.type	rotl8,@function
rotl8:                                  # @rotl8
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	movabs	rcx, offset __llvm_gcov_ctr.78
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc_rotl8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	movzx	edx, byte ptr [rbp - 1]
	mov	ecx, 8
	sub	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 255
                                        # kill: def $al killed $al killed $eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
	.cfi_endproc
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	4, 0x90
	.type	rotr8,@function
rotr8:                                  # @rotr8
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	movabs	rcx, offset __llvm_gcov_ctr.79
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc_rotr8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	movzx	edx, byte ptr [rbp - 1]
	mov	ecx, 8
	sub	ecx, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 255
                                        # kill: def $al killed $al killed $eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
	.cfi_endproc
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	4, 0x90
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, di
	movabs	rcx, offset __llvm_gcov_ctr.80
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	word ptr [rbp - 2], ax
	movabs	rax, offset .L__profc_bswap_16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	word ptr [rbp - 4], 255
	movzx	eax, word ptr [rbp - 2]
	movzx	ecx, word ptr [rbp - 4]
	shl	ecx, 8
	and	eax, ecx
	sar	eax, 8
	movzx	ecx, word ptr [rbp - 2]
	movzx	edx, word ptr [rbp - 4]
	shl	edx, 0
	and	ecx, edx
	shl	ecx, 8
	or	eax, ecx
                                        # kill: def $ax killed $ax killed $eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
	.cfi_endproc
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	4, 0x90
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.81
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc_bswap_32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 8], 255
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	ecx, 24
	and	eax, ecx
	shr	eax, 24
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	shl	edx, 16
	and	ecx, edx
	shr	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	shl	edx, 8
	and	ecx, edx
	shl	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	shl	edx, 0
	and	ecx, edx
	shl	ecx, 24
	or	eax, ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
	.cfi_endproc
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	4, 0x90
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.82
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc_bswap_64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 16], 255
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 16]
	shl	rcx, 56
	and	rax, rcx
	shr	rax, 56
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 48
	and	rcx, rdx
	shr	rcx, 40
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 40
	and	rcx, rdx
	shr	rcx, 24
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 32
	and	rcx, rdx
	shr	rcx, 8
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 24
	and	rcx, rdx
	shl	rcx, 8
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 16
	and	rcx, rdx
	shl	rcx, 24
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 8
	and	rcx, rdx
	shl	rcx, 40
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 16]
	shl	rdx, 0
	and	rcx, rdx
	shl	rcx, 56
	or	rax, rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
	.cfi_endproc
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	4, 0x90
	.type	ffs,@function
ffs:                                    # @ffs
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	movabs	rax, offset .L__profc_ffs
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], 0
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $rax killed $eax
	cmp	rax, 32
	jae	.LBB83_6
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	movabs	rax, offset .L__profc_ffs+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB83_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.83
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ffs+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	jmp	.LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.83+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB83_1
.LBB83_6:
	movabs	rax, offset __llvm_gcov_ctr.83+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
.LBB83_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
	.cfi_endproc
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	4, 0x90
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	movabs	rax, offset .L__profc_libiberty_ffs
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB84_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.84+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_libiberty_ffs+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB84_7
.LBB84_2:
	movabs	rax, offset __llvm_gcov_ctr.84
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], 1
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	and	eax, 1
	cmp	eax, 0
	setne	al
	xor	al, -1
	test	al, 1
	jne	.LBB84_4
	jmp	.LBB84_6
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	movabs	rax, offset .L__profc_libiberty_ffs+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	sar	eax
	mov	dword ptr [rbp - 8], eax
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.84+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB84_3
.LBB84_6:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 4], eax
.LBB84_7:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gl_isinff
.LCPI85_0:
	.long	0xff7fffff                      # float -3.40282347E+38
.LCPI85_1:
	.long	0x7f7fffff                      # float 3.40282347E+38
	.section	.ltext,"axl",@progbits
	.globl	gl_isinff
	.p2align	4, 0x90
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.85
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	dword ptr [rbp - 4], xmm0
	movabs	rax, offset .L__profc_gl_isinff
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	al, 1
	movabs	rcx, offset .LCPI85_0
	movss	xmm0, dword ptr [rcx]           # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	ja	.LBB85_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.85+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_gl_isinff+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	movabs	rax, offset .LCPI85_1
	movss	xmm1, dword ptr [rax]           # xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	seta	al
	mov	byte ptr [rbp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jne	.LBB85_3
# %bb.2:
	mov	al, byte ptr [rbp - 6]          # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.85+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_gl_isinff+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB85_3:
	mov	al, byte ptr [rbp - 5]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gl_isinfd
.LCPI86_0:
	.quad	0xffefffffffffffff              # double -1.7976931348623157E+308
.LCPI86_1:
	.quad	0x7fefffffffffffff              # double 1.7976931348623157E+308
	.section	.ltext,"axl",@progbits
	.globl	gl_isinfd
	.p2align	4, 0x90
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.86
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	qword ptr [rbp - 8], xmm0
	movabs	rax, offset .L__profc_gl_isinfd
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	al, 1
	movabs	rcx, offset .LCPI86_0
	movsd	xmm0, qword ptr [rcx]           # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], al          # 1-byte Spill
	ja	.LBB86_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.86+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_gl_isinfd+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movabs	rax, offset .LCPI86_1
	movsd	xmm1, qword ptr [rax]           # xmm1 = mem[0],zero
	ucomisd	xmm0, xmm1
	seta	al
	mov	byte ptr [rbp - 10], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 9], al          # 1-byte Spill
	jne	.LBB86_3
# %bb.2:
	mov	al, byte ptr [rbp - 10]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.86+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_gl_isinfd+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 9], al          # 1-byte Spill
.LBB86_3:
	mov	al, byte ptr [rbp - 9]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function gl_isinfl
.LCPI87_0:
	.quad	0xffffffffffffffff              # x86_fp80 -1.18973149535723176502E+4932
	.short	0xfffe
	.zero	6
.LCPI87_1:
	.quad	0xffffffffffffffff              # x86_fp80 1.18973149535723176502E+4932
	.short	0x7ffe
	.zero	6
	.section	.ltext,"axl",@progbits
	.globl	gl_isinfl
	.p2align	4, 0x90
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	fld	tbyte ptr [rbp + 16]
	movabs	rax, offset __llvm_gcov_ctr.87
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fstp	tbyte ptr [rbp - 16]
	movabs	rax, offset .L__profc_gl_isinfl
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 16]
	mov	al, 1
	movabs	rcx, offset .LCPI87_0
	fld	tbyte ptr [rcx]
	fucompi	st, st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	ja	.LBB87_3
	jmp	.LBB87_1
.LBB87_1:
	movabs	rax, offset __llvm_gcov_ctr.87+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_gl_isinfl+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 16]
	movabs	rax, offset .LCPI87_1
	fld	tbyte ptr [rax]
	fxch	st(1)
	fucompi	st, st(1)
	fstp	st(0)
	seta	al
	mov	byte ptr [rbp - 18], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB87_3
# %bb.2:
	mov	al, byte ptr [rbp - 18]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.87+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_gl_isinfl+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB87_3:
	mov	al, byte ptr [rbp - 17]         # 1-byte Reload
	and	al, 1
	movzx	eax, al
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
	.cfi_endproc
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	4, 0x90
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.88
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc__Qp_itoq
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cvtsi2sd	xmm0, dword ptr [rbp - 12]
	movsd	qword ptr [rbp - 24], xmm0
	fld	qword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 8]
	fstp	tbyte ptr [rax]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function ldexpf
.LCPI89_0:
	.long	0x3f000000                      # float 0.5
.LCPI89_1:
	.long	0x40000000                      # float 2
	.section	.ltext,"axl",@progbits
	.globl	ldexpf
	.p2align	4, 0x90
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.89
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	dword ptr [rbp - 4], xmm0
	mov	dword ptr [rbp - 8], edi
	movabs	rax, offset .L__profc_ldexpf
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB89_10
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.89+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexpf+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 4]
	ucomiss	xmm0, dword ptr [rbp - 4]
	jne	.LBB89_2
	jp	.LBB89_2
	jmp	.LBB89_10
.LBB89_2:
	movabs	rax, offset __llvm_gcov_ctr.89+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexpf+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.3:
	movabs	rax, offset .L__profc_ldexpf+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	ecx, 31
	mov	esi, ecx
	movabs	rcx, offset .L__profc_ldexpf+32
	mov	rdx, qword ptr [rcx]
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .LCPI89_0
	movss	xmm0, dword ptr [rcx]           # xmm0 = mem[0],zero,zero,zero
	movabs	rcx, offset .LCPI89_1
	movss	xmm1, dword ptr [rcx]           # xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm1      # 4-byte Spill
	cmp	eax, 0
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jl	.LBB89_12
# %bb.11:
	movss	xmm0, dword ptr [rbp - 20]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
.LBB89_12:
	movss	xmm0, dword ptr [rbp - 16]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 12], xmm0
.LBB89_4:                               # =>This Inner Loop Header: Depth=1
	movabs	rax, offset .L__profc_ldexpf+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB89_6
# %bb.5:                                #   in Loop: Header=BB89_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.89+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexpf+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 4]
	movss	dword ptr [rbp - 4], xmm0
.LBB89_6:                               #   in Loop: Header=BB89_4 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB89_8
# %bb.7:
	movabs	rax, offset .L__profc_ldexpf+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB89_9
.LBB89_8:                               #   in Loop: Header=BB89_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.89+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 12]
	movss	dword ptr [rbp - 12], xmm0
	jmp	.LBB89_4
.LBB89_9:
	jmp	.LBB89_10
.LBB89_10:
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ldexp
.LCPI90_0:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI90_1:
	.quad	0x4000000000000000              # double 2
	.section	.ltext,"axl",@progbits
	.globl	ldexp
	.p2align	4, 0x90
	.type	ldexp,@function
ldexp:                                  # @ldexp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.90
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	qword ptr [rbp - 8], xmm0
	mov	dword ptr [rbp - 12], edi
	movabs	rax, offset .L__profc_ldexp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB90_10
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.90+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	addsd	xmm0, qword ptr [rbp - 8]
	ucomisd	xmm0, qword ptr [rbp - 8]
	jne	.LBB90_2
	jp	.LBB90_2
	jmp	.LBB90_10
.LBB90_2:
	movabs	rax, offset __llvm_gcov_ctr.90+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexp+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.3:
	movabs	rax, offset .L__profc_ldexp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, eax
	shr	ecx, 31
	mov	esi, ecx
	movabs	rcx, offset .L__profc_ldexp+32
	mov	rdx, qword ptr [rcx]
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .LCPI90_0
	movsd	xmm0, qword ptr [rcx]           # xmm0 = mem[0],zero
	movabs	rcx, offset .LCPI90_1
	movsd	xmm1, qword ptr [rcx]           # xmm1 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm1      # 8-byte Spill
	cmp	eax, 0
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jl	.LBB90_12
# %bb.11:
	movsd	xmm0, qword ptr [rbp - 40]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
.LBB90_12:
	movsd	xmm0, qword ptr [rbp - 32]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 24], xmm0
.LBB90_4:                               # =>This Inner Loop Header: Depth=1
	movabs	rax, offset .L__profc_ldexp+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB90_6
# %bb.5:                                #   in Loop: Header=BB90_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.90+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexp+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 8], xmm0
.LBB90_6:                               #   in Loop: Header=BB90_4 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], eax
	cmp	dword ptr [rbp - 12], 0
	jne	.LBB90_8
# %bb.7:
	movabs	rax, offset .L__profc_ldexp+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB90_9
.LBB90_8:                               #   in Loop: Header=BB90_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.90+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 24]
	movsd	qword ptr [rbp - 24], xmm0
	jmp	.LBB90_4
.LBB90_9:
	jmp	.LBB90_10
.LBB90_10:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0                          # -- Begin function ldexpl
.LCPI91_0:
	.quad	0x8000000000000000              # x86_fp80 2
	.short	0x4000
	.zero	6
	.quad	0x8000000000000000              # x86_fp80 0.5
	.short	0x3ffe
	.zero	6
	.section	.ltext,"axl",@progbits
	.globl	ldexpl
	.p2align	4, 0x90
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	fld	tbyte ptr [rbp + 16]
	movabs	rax, offset __llvm_gcov_ctr.91
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fstp	tbyte ptr [rbp - 16]
	mov	dword ptr [rbp - 20], edi
	movabs	rax, offset .L__profc_ldexpl
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 16]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB91_10
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.91+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexpl+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 16]
	fld	st(0)
	fadd	st, st(1)
	fucompi	st, st(1)
	fstp	st(0)
	jne	.LBB91_2
	jp	.LBB91_2
	jmp	.LBB91_10
.LBB91_2:
	movabs	rax, offset __llvm_gcov_ctr.91+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexpl+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.3:
	movabs	rax, offset .L__profc_ldexpl+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	shr	ecx, 31
	mov	esi, ecx
	movabs	rcx, offset .L__profc_ldexpl+32
	mov	rdx, qword ptr [rcx]
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	shr	eax, 27
	and	eax, -16
	mov	ecx, eax
	movabs	rax, offset .LCPI91_0
	fld	tbyte ptr [rax + rcx]
	fstp	tbyte ptr [rbp - 48]
.LBB91_4:                               # =>This Inner Loop Header: Depth=1
	movabs	rax, offset .L__profc_ldexpl+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB91_6
# %bb.5:                                #   in Loop: Header=BB91_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.91+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_ldexpl+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fld	tbyte ptr [rbp - 16]
	fmulp	st(1), st
	fstp	tbyte ptr [rbp - 16]
.LBB91_6:                               #   in Loop: Header=BB91_4 Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 20], eax
	cmp	dword ptr [rbp - 20], 0
	jne	.LBB91_8
# %bb.7:
	movabs	rax, offset .L__profc_ldexpl+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB91_9
.LBB91_8:                               #   in Loop: Header=BB91_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.91+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	fld	tbyte ptr [rbp - 48]
	fmul	st(0), st
	fstp	tbyte ptr [rbp - 48]
	jmp	.LBB91_4
.LBB91_9:
	jmp	.LBB91_10
.LBB91_10:
	fld	tbyte ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
	.cfi_endproc
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	4, 0x90
	.type	memxor,@function
memxor:                                 # @memxor
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.92
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_memxor
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	jbe	.LBB92_4
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	movabs	rax, offset .L__profc_memxor+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 32], rcx
	movsx	edx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 40], rcx
	movsx	ecx, byte ptr [rax]
	xor	ecx, edx
                                        # kill: def $cl killed $cl killed $ecx
	mov	byte ptr [rax], cl
# %bb.3:                                #   in Loop: Header=BB92_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.92+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB92_1
.LBB92_4:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
	.cfi_endproc
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	4, 0x90
	.type	strncat,@function
strncat:                                # @strncat
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_strncat
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
	mov	rdi, qword ptr [rbp - 8]
	movabs	rax, offset strlen
	call	rax
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 40]       # 8-byte Reload
	add	rax, rcx
	mov	qword ptr [rbp - 32], rax
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
	jbe	.LBB93_4
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.93
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strncat+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	al, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 32]
	mov	byte ptr [rcx], al
	movsx	eax, al
	cmp	eax, 0
	setne	al
	mov	byte ptr [rbp - 42], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
	jne	.LBB93_3
	jmp	.LBB93_4
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	mov	al, byte ptr [rbp - 42]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.93+8
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_strncat+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	mov	al, byte ptr [rbp - 41]         # 1-byte Reload
	test	al, 1
	jne	.LBB93_5
	jmp	.LBB93_7
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
	movabs	rax, offset .L__profc_strncat+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB93_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.93+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB93_1
.LBB93_7:
	movabs	rax, offset __llvm_gcov_ctr.93+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	qword ptr [rbp - 24], 0
	jne	.LBB93_9
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.93+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strncat+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	byte ptr [rax], 0
.LBB93_9:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
	.cfi_endproc
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	4, 0x90
	.type	strnlen,@function
strnlen:                                # @strnlen
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.94
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc_strnlen
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], 0
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbp - 24]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	rcx, qword ptr [rbp - 16]
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jae	.LBB94_4
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.94+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strnlen+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rax + rcx]
	cmp	eax, 0
	setne	al
	mov	byte ptr [rbp - 26], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jne	.LBB94_3
	jmp	.LBB94_4
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	mov	al, byte ptr [rbp - 26]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.94+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_strnlen+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB94_5
	jmp	.LBB94_7
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	movabs	rax, offset .L__profc_strnlen+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.6:                                #   in Loop: Header=BB94_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.94+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB94_1
.LBB94_7:
	mov	rax, qword ptr [rbp - 24]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
	.cfi_endproc
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	4, 0x90
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	movabs	rax, offset .L__profc_strpbrk
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	mov	rax, qword ptr [rbp - 16]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	je	.LBB95_8
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	movabs	rax, offset .L__profc_strpbrk+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 32], rax
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 32]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	je	.LBB95_7
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=2
	movabs	rax, offset .L__profc_strpbrk+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 32], rcx
	movsx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	movsx	ecx, byte ptr [rcx]
	cmp	eax, ecx
	jne	.LBB95_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.95+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strpbrk+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	movabs	rax, offset __llvm_gcov_ctr.95+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.95+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB95_1
.LBB95_8:
	movabs	rax, offset __llvm_gcov_ctr.95
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB95_9:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
	.cfi_endproc
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	4, 0x90
	.type	strrchr,@function
strrchr:                                # @strrchr
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.96
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc_strrchr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], 0
	jmp	.LBB96_2
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.96+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strrchr+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	jne	.LBB96_4
# %bb.3:                                #   in Loop: Header=BB96_2 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.96+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strrchr+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	jmp	.LBB96_5
.LBB96_5:                               #   in Loop: Header=BB96_2 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	cmp	byte ptr [rax], 0
	jne	.LBB96_1
# %bb.6:
	mov	rax, qword ptr [rbp - 24]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
	.cfi_endproc
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	4, 0x90
	.type	strstr,@function
strstr:                                 # @strstr
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	movabs	rax, offset .L__profc_strstr
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rdi, qword ptr [rbp - 24]
	movabs	rax, offset strlen
	call	rax
	mov	qword ptr [rbp - 40], rax
	cmp	qword ptr [rbp - 40], 0
	jne	.LBB97_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.97
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strstr+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB97_9
.LBB97_2:
	jmp	.LBB97_3
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rbp - 32]
	mov	rax, qword ptr [rbp - 24]
	movsx	esi, byte ptr [rax]
	movabs	rax, offset strchr
	call	rax
	mov	qword ptr [rbp - 32], rax
	cmp	rax, 0
	je	.LBB97_8
# %bb.4:                                #   in Loop: Header=BB97_3 Depth=1
	movabs	rax, offset .L__profc_strstr+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rdi, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 40]
	movabs	rax, offset strncmp
	call	rax
	cmp	eax, 0
	jne	.LBB97_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.97+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_strstr+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	jmp	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.97+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB97_3
.LBB97_8:
	movabs	rax, offset __llvm_gcov_ctr.97+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB97_9:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
	.cfi_endproc
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	4, 0x90
	.type	copysign,@function
copysign:                               # @copysign
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 16], xmm0
	movsd	qword ptr [rbp - 24], xmm1
	movabs	rax, offset .L__profc_copysign
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xorps	xmm0, xmm0
	ucomisd	xmm0, qword ptr [rbp - 16]
	jbe	.LBB98_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.98
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_copysign+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jbe	.LBB98_3
# %bb.2:
	movabs	rax, offset __llvm_gcov_ctr.98+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_copysign+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB98_6
.LBB98_3:
	movabs	rax, offset .L__profc_copysign+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jbe	.LBB98_7
# %bb.4:
	movabs	rax, offset __llvm_gcov_ctr.98+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_copysign+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xorps	xmm0, xmm0
	ucomisd	xmm0, qword ptr [rbp - 24]
	jbe	.LBB98_7
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.98+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_copysign+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB98_6:
	movabs	rax, offset .L__profc_copysign+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	movabs	rcx, -9223372036854775808
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB98_8
.LBB98_7:
	movabs	rax, offset __llvm_gcov_ctr.98+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
.LBB98_8:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
	.cfi_endproc
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	4, 0x90
	.type	memmem,@function
memmem:                                 # @memmem
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	qword ptr [rbp - 32], rdx
	mov	qword ptr [rbp - 40], rcx
	movabs	rax, offset .L__profc_memmem
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	add	rax, qword ptr [rbp - 24]
	xor	ecx, ecx
                                        # kill: def $rcx killed $ecx
	sub	rcx, qword ptr [rbp - 40]
	add	rax, rcx
	mov	qword ptr [rbp - 56], rax
	cmp	qword ptr [rbp - 40], 0
	jne	.LBB99_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.99
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memmem+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB99_13
.LBB99_2:
	mov	rax, qword ptr [rbp - 24]
	cmp	rax, qword ptr [rbp - 40]
	setb	al
	and	al, 1
	movzx	eax, al
	cdqe
	cmp	rax, 0
	je	.LBB99_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.99+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memmem+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
	jmp	.LBB99_13
.LBB99_4:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 48]
	cmp	rax, qword ptr [rbp - 56]
	ja	.LBB99_12
# %bb.6:                                #   in Loop: Header=BB99_5 Depth=1
	movabs	rax, offset .L__profc_memmem+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	movsx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 32]
	movsx	ecx, byte ptr [rcx]
	cmp	eax, ecx
	jne	.LBB99_10
# %bb.7:                                #   in Loop: Header=BB99_5 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.99+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memmem+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rdi, qword ptr [rbp - 48]
	add	rdi, 1
	mov	rsi, qword ptr [rbp - 32]
	add	rsi, 1
	mov	rdx, qword ptr [rbp - 40]
	sub	rdx, 1
	movabs	rax, offset memcmp
	call	rax
	cmp	eax, 0
	jne	.LBB99_10
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.99+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_memmem+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.9:
	movabs	rax, offset .L__profc_memmem+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB99_13
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	jmp	.LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_5 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.99+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
	jmp	.LBB99_5
.LBB99_12:
	movabs	rax, offset __llvm_gcov_ctr.99+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], 0
.LBB99_13:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 64
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
	.cfi_endproc
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	4, 0x90
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	movabs	rax, offset __llvm_gcov_ctr.100
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_mempcpy
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rdi       # 8-byte Spill
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 24]
	movabs	rax, offset memcpy
	call	rax
                                        # kill: def $rcx killed $rax
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	add	rax, qword ptr [rbp - 24]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function frexp
.LCPI101_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI101_1:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI101_2:
	.quad	0x4000000000000000              # double 2
	.section	.ltext,"axl",@progbits
	.globl	frexp
	.p2align	4, 0x90
	.type	frexp,@function
frexp:                                  # @frexp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 8], xmm0
	mov	qword ptr [rbp - 16], rdi
	movabs	rax, offset .L__profc_frexp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 20], 0
	xorps	xmm0, xmm0
	ucomisd	xmm0, qword ptr [rbp - 8]
	jbe	.LBB101_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.101
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_frexp+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movq	rax, xmm0
	movabs	rcx, -9223372036854775808
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 8], xmm0
	mov	dword ptr [rbp - 20], 1
.LBB101_2:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movabs	rax, offset .LCPI101_0
	movsd	xmm1, qword ptr [rax]           # xmm1 = mem[0],zero
	ucomisd	xmm0, xmm1
	jb	.LBB101_7
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.101+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_frexp+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movabs	rax, offset .LCPI101_0
	movsd	xmm1, qword ptr [rax]           # xmm1 = mem[0],zero
	ucomisd	xmm0, xmm1
	jb	.LBB101_6
# %bb.5:                                #   in Loop: Header=BB101_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.101+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_frexp+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movabs	rax, offset .LCPI101_2
	movsd	xmm1, qword ptr [rax]           # xmm1 = mem[0],zero
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB101_4
.LBB101_6:
	jmp	.LBB101_15
.LBB101_7:
	movabs	rax, offset .LCPI101_1
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 8]
	jbe	.LBB101_14
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.101+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_frexp+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.LBB101_9
	jp	.LBB101_9
	jmp	.LBB101_14
.LBB101_9:
	movabs	rax, offset .L__profc_frexp+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.10:
	movabs	rax, offset .L__profc_frexp+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	movabs	rax, offset .LCPI101_1
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 8]
	jbe	.LBB101_13
# %bb.12:                               #   in Loop: Header=BB101_11 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.101+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_frexp+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 24]
	sub	eax, 1
	mov	dword ptr [rbp - 24], eax
	movabs	rax, offset .LCPI101_2
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB101_11
.LBB101_13:
	movabs	rax, offset __llvm_gcov_ctr.101+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB101_14:
	movabs	rax, offset __llvm_gcov_ctr.101+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB101_15:
	mov	ecx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
	cmp	dword ptr [rbp - 20], 0
	je	.LBB101_17
# %bb.16:
	movabs	rax, offset __llvm_gcov_ctr.101+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_frexp+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movq	rax, xmm0
	movabs	rcx, -9223372036854775808
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 8], xmm0
.LBB101_17:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	4, 0x90
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.102
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___muldi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 32], 0
	je	.LBB102_5
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	movabs	rax, offset .L__profc___muldi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	and	rax, 1
	cmp	rax, 0
	je	.LBB102_4
# %bb.3:                                #   in Loop: Header=BB102_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.102+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___muldi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	add	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 24], rax
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.102+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	shl	rax
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 32]
	shr	rax
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB102_1
.LBB102_5:
	mov	rax, qword ptr [rbp - 24]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
	.cfi_endproc
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	4, 0x90
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	movabs	rax, offset .L__profc_udivmodsi4
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 28], 1
	mov	dword ptr [rbp - 32], 0
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [rbp - 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
	jae	.LBB103_6
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.103
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_udivmodsi4+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rbp - 28], 0
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
	je	.LBB103_6
# %bb.3:                                #   in Loop: Header=BB103_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.103+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_udivmodsi4+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.4:                                #   in Loop: Header=BB103_1 Depth=1
	movabs	rax, offset .L__profc_udivmodsi4+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $rax killed $eax
	movabs	rcx, 2147483648
	and	rax, rcx
	cmp	rax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 34], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
	jne	.LBB103_5
	jmp	.LBB103_6
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	mov	al, byte ptr [rbp - 34]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.103+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc_udivmodsi4+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	mov	al, byte ptr [rbp - 33]         # 1-byte Reload
	test	al, 1
	jne	.LBB103_7
	jmp	.LBB103_8
.LBB103_7:                              #   in Loop: Header=BB103_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.103+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_udivmodsi4+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	shl	eax
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 28]
	shl	eax
	mov	dword ptr [rbp - 28], eax
	jmp	.LBB103_1
.LBB103_8:
	jmp	.LBB103_9
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 28], 0
	je	.LBB103_13
# %bb.10:                               #   in Loop: Header=BB103_9 Depth=1
	movabs	rax, offset .L__profc_udivmodsi4+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jb	.LBB103_12
# %bb.11:                               #   in Loop: Header=BB103_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.103+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_udivmodsi4+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 28]
	or	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 32], eax
.LBB103_12:                             #   in Loop: Header=BB103_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.103+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 28]
	shr	eax
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 12]
	shr	eax
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB103_9
.LBB103_13:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB103_15
# %bb.14:
	movabs	rax, offset __llvm_gcov_ctr.103+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc_udivmodsi4+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB103_16
.LBB103_15:
	movabs	rax, offset __llvm_gcov_ctr.103+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 4], eax
.LBB103_16:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	4, 0x90
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movabs	rax, offset .L__profc___clrsbqi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 0
	jge	.LBB104_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.104
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___clrsbqi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsx	eax, byte ptr [rbp - 5]
	xor	eax, -1
                                        # kill: def $al killed $al killed $eax
	mov	byte ptr [rbp - 5], al
.LBB104_2:
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 0
	jne	.LBB104_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.104+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___clrsbqi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 7
	jmp	.LBB104_5
.LBB104_4:
	movabs	rax, offset __llvm_gcov_ctr.104+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsx	eax, byte ptr [rbp - 5]
	shl	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 12]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
.LBB104_5:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	4, 0x90
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	movabs	rax, offset .L__profc___clrsbdi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	qword ptr [rbp - 16], 0
	jge	.LBB105_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.105
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___clrsbdi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	xor	rax, -1
	mov	qword ptr [rbp - 16], rax
.LBB105_2:
	cmp	qword ptr [rbp - 16], 0
	jne	.LBB105_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.105+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___clrsbdi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 63
	jmp	.LBB105_5
.LBB105_4:
	movabs	rax, offset __llvm_gcov_ctr.105+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	bsr	rax, rax
	xor	rax, 63
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	sub	eax, 1
	mov	dword ptr [rbp - 4], eax
.LBB105_5:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	4, 0x90
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.106
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc___mulsi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], 0
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 0
	je	.LBB106_5
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	movabs	rax, offset .L__profc___mulsi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	and	eax, 1
	cmp	eax, 0
	je	.LBB106_4
# %bb.3:                                #   in Loop: Header=BB106_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.106+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulsi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.106+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	shr	eax
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 8]
	shl	eax
	mov	dword ptr [rbp - 8], eax
	jmp	.LBB106_1
.LBB106_5:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
	.cfi_endproc
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	4, 0x90
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	movabs	rax, offset .L__profc___cmovd
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 3
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 20]
	and	eax, -8
	mov	dword ptr [rbp - 32], eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 48]
	jb	.LBB107_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.107
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovd+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 48]
	mov	edx, dword ptr [rbp - 20]
                                        # kill: def $rdx killed $edx
	add	rcx, rdx
	cmp	rax, rcx
	ja	.LBB107_3
# %bb.2:
	movabs	rax, offset .L__profc___cmovd+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB107_11
.LBB107_3:
	movabs	rax, offset .L__profc___cmovd+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 24], 0
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jae	.LBB107_7
# %bb.5:                                #   in Loop: Header=BB107_4 Depth=1
	movabs	rax, offset .L__profc___cmovd+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	rdx, qword ptr [rax + 8*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	qword ptr [rax + 8*rcx], rdx
# %bb.6:                                #   in Loop: Header=BB107_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.107+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	.LBB107_4
.LBB107_7:
	jmp	.LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 32]
	jbe	.LBB107_10
# %bb.9:                                #   in Loop: Header=BB107_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.107+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovd+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 32]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 32]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	.LBB107_8
.LBB107_10:
	movabs	rax, offset __llvm_gcov_ctr.107+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB107_15
.LBB107_11:
	jmp	.LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 0
	jbe	.LBB107_14
# %bb.13:                               #   in Loop: Header=BB107_12 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.107+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovd+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	jmp	.LBB107_12
.LBB107_14:
	movabs	rax, offset __llvm_gcov_ctr.107+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB107_15:
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
	.cfi_endproc
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	4, 0x90
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	movabs	rax, offset .L__profc___cmovh
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	shr	eax
	mov	dword ptr [rbp - 28], eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 48]
	jb	.LBB108_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.108
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovh+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 48]
	mov	edx, dword ptr [rbp - 20]
                                        # kill: def $rdx killed $edx
	add	rcx, rdx
	cmp	rax, rcx
	ja	.LBB108_3
# %bb.2:
	movabs	rax, offset .L__profc___cmovh+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB108_10
.LBB108_3:
	movabs	rax, offset .L__profc___cmovh+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 24], 0
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jae	.LBB108_7
# %bb.5:                                #   in Loop: Header=BB108_4 Depth=1
	movabs	rax, offset .L__profc___cmovh+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	dx, word ptr [rax + 2*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	word ptr [rax + 2*rcx], dx
# %bb.6:                                #   in Loop: Header=BB108_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.108+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	.LBB108_4
.LBB108_7:
	mov	eax, dword ptr [rbp - 20]
	and	eax, 1
	cmp	eax, 0
	je	.LBB108_9
# %bb.8:
	movabs	rax, offset __llvm_gcov_ctr.108+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovh+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 1
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
.LBB108_9:
	movabs	rax, offset __llvm_gcov_ctr.108+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB108_14
.LBB108_10:
	jmp	.LBB108_11
.LBB108_11:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 0
	jbe	.LBB108_13
# %bb.12:                               #   in Loop: Header=BB108_11 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.108+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovh+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	jmp	.LBB108_11
.LBB108_13:
	movabs	rax, offset __llvm_gcov_ctr.108+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB108_14:
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
	.cfi_endproc
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	4, 0x90
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], edx
	movabs	rax, offset .L__profc___cmovw
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 2
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 20]
	and	eax, -4
	mov	dword ptr [rbp - 32], eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 48]
	jb	.LBB109_3
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.109
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovw+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 48]
	mov	edx, dword ptr [rbp - 20]
                                        # kill: def $rdx killed $edx
	add	rcx, rdx
	cmp	rax, rcx
	ja	.LBB109_3
# %bb.2:
	movabs	rax, offset .L__profc___cmovw+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB109_11
.LBB109_3:
	movabs	rax, offset .L__profc___cmovw+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 24], 0
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jae	.LBB109_7
# %bb.5:                                #   in Loop: Header=BB109_4 Depth=1
	movabs	rax, offset .L__profc___cmovw+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	dword ptr [rax + 4*rcx], edx
# %bb.6:                                #   in Loop: Header=BB109_4 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.109+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	.LBB109_4
.LBB109_7:
	jmp	.LBB109_8
.LBB109_8:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 32]
	jbe	.LBB109_10
# %bb.9:                                #   in Loop: Header=BB109_8 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.109+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovw+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 32]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 32]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	mov	eax, dword ptr [rbp - 32]
	add	eax, 1
	mov	dword ptr [rbp - 32], eax
	jmp	.LBB109_8
.LBB109_10:
	movabs	rax, offset __llvm_gcov_ctr.109+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB109_15
.LBB109_11:
	jmp	.LBB109_12
.LBB109_12:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 0
	jbe	.LBB109_14
# %bb.13:                               #   in Loop: Header=BB109_12 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.109+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmovw+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	jmp	.LBB109_12
.LBB109_14:
	movabs	rax, offset __llvm_gcov_ctr.109+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB109_15:
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
	.cfi_endproc
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	4, 0x90
	.type	__modi,@function
__modi:                                 # @__modi
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.110
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc___modi
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	cdq
	idiv	dword ptr [rbp - 8]
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
	.cfi_endproc
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	4, 0x90
	.type	__uitod,@function
__uitod:                                # @__uitod
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.111
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc___uitod
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
                                        # kill: def $rax killed $eax
	cvtsi2sd	xmm0, rax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
	.cfi_endproc
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	4, 0x90
	.type	__uitof,@function
__uitof:                                # @__uitof
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.112
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc___uitof
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
                                        # kill: def $rax killed $eax
	cvtsi2ss	xmm0, rax
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function __ulltod
.LCPI113_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI113_1:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.section	.ltext,"axl",@progbits
	.globl	__ulltod
	.p2align	4, 0x90
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.113
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc___ulltod
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .LCPI113_0
	movaps	xmm1, xmmword ptr [rax]
	movq	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	punpckldq	xmm0, xmm1              # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movabs	rax, offset .LCPI113_1
	movapd	xmm1, xmmword ptr [rax]
	subpd	xmm0, xmm1
	movaps	xmm1, xmm0
	unpckhpd	xmm0, xmm0                      # xmm0 = xmm0[1,1]
	addsd	xmm0, xmm1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
	.cfi_endproc
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	4, 0x90
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.114
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc___ulltof
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, rax
	shr	rdx
	mov	ecx, eax
	and	ecx, 1
                                        # kill: def $rcx killed $ecx
	or	rcx, rdx
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	movss	dword ptr [rbp - 16], xmm1      # 4-byte Spill
	test	rax, rax
	movss	dword ptr [rbp - 12], xmm0      # 4-byte Spill
	js	.LBB114_2
# %bb.1:
	movss	xmm0, dword ptr [rbp - 16]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 12], xmm0      # 4-byte Spill
.LBB114_2:
	movss	xmm0, dword ptr [rbp - 12]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
	.cfi_endproc
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	4, 0x90
	.type	__umodi,@function
__umodi:                                # @__umodi
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.115
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc___umodi
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	xor	edx, edx
	div	dword ptr [rbp - 8]
	mov	eax, edx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
	.cfi_endproc
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	4, 0x90
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, di
	movabs	rcx, offset __llvm_gcov_ctr.116
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	word ptr [rbp - 2], ax
	movabs	rax, offset .L__profc___clzhi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 8], 0
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB116_6
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
	movabs	rax, offset .L__profc___clzhi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 2]
	mov	ecx, 15
	sub	ecx, dword ptr [rbp - 8]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB116_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.116+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___clzhi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	jmp	.LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.116+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.LBB116_1
.LBB116_6:
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
	.cfi_endproc
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	4, 0x90
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, di
	movabs	rcx, offset __llvm_gcov_ctr.117
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	word ptr [rbp - 2], ax
	movabs	rax, offset .L__profc___ctzhi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 8], 0
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB117_6
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	movabs	rax, offset .L__profc___ctzhi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB117_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.117+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ctzhi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	jmp	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.117+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.LBB117_1
.LBB117_6:
	mov	eax, dword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function __fixunssfsi
.LCPI118_0:
	.long	0x47000000                      # float 32768
	.section	.ltext,"axl",@progbits
	.globl	__fixunssfsi
	.p2align	4, 0x90
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 12], xmm0
	movabs	rax, offset .L__profc___fixunssfsi
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movabs	rax, offset .LCPI118_0
	movss	xmm1, dword ptr [rax]           # xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	jb	.LBB118_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.118
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___fixunssfsi+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movabs	rax, offset .LCPI118_0
	movss	xmm1, dword ptr [rax]           # xmm1 = mem[0],zero,zero,zero
	subss	xmm0, xmm1
	cvttss2si	rax, xmm0
	add	rax, 32768
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB118_3
.LBB118_2:
	movabs	rax, offset __llvm_gcov_ctr.118+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cvttss2si	rax, dword ptr [rbp - 12]
	mov	qword ptr [rbp - 8], rax
.LBB118_3:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
	.cfi_endproc
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	4, 0x90
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, di
	movabs	rcx, offset __llvm_gcov_ctr.119
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	word ptr [rbp - 2], ax
	movabs	rax, offset .L__profc___parityhi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 8], 0
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB119_6
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	movabs	rax, offset .L__profc___parityhi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB119_4
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.119+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___parityhi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	jmp	.LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.119+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.LBB119_1
.LBB119_6:
	mov	eax, dword ptr [rbp - 12]
	and	eax, 1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	4, 0x90
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, di
	movabs	rcx, offset __llvm_gcov_ctr.120
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	word ptr [rbp - 2], ax
	movabs	rax, offset .L__profc___popcounthi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 8], 0
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB120_6
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
	movabs	rax, offset .L__profc___popcounthi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB120_4
# %bb.3:                                #   in Loop: Header=BB120_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.120+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___popcounthi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	jmp	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.120+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.LBB120_1
.LBB120_6:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	4, 0x90
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.121
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc___mulsi3_iq2000
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 12], 0
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 0
	je	.LBB121_5
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	movabs	rax, offset .L__profc___mulsi3_iq2000+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	and	eax, 1
	cmp	eax, 0
	je	.LBB121_4
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.121+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulsi3_iq2000+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.121+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	shr	eax
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 8]
	shl	eax
	mov	dword ptr [rbp - 8], eax
	jmp	.LBB121_1
.LBB121_5:
	mov	eax, dword ptr [rbp - 12]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	4, 0x90
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	movabs	rax, offset .L__profc___mulsi3_lm32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 16], 0
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB122_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.122+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulsi3_lm32+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB122_8
.LBB122_2:
	movabs	rax, offset __llvm_gcov_ctr.122
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 0
	je	.LBB122_7
# %bb.4:                                #   in Loop: Header=BB122_3 Depth=1
	movabs	rax, offset .L__profc___mulsi3_lm32+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB122_6
# %bb.5:                                #   in Loop: Header=BB122_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.122+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulsi3_lm32+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.122+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	shl	eax
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	shr	eax
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB122_3
.LBB122_7:
	mov	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 4], eax
.LBB122_8:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	4, 0x90
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	movabs	rax, offset .L__profc___udivmodsi4
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 20], 1
	mov	dword ptr [rbp - 24], 0
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [rbp - 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jae	.LBB123_6
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.123
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rbp - 20], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB123_6
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.123+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.4:                                #   in Loop: Header=BB123_1 Depth=1
	movabs	rax, offset .L__profc___udivmodsi4+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $rax killed $eax
	movabs	rcx, 2147483648
	and	rax, rcx
	cmp	rax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 26], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jne	.LBB123_5
	jmp	.LBB123_6
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	mov	al, byte ptr [rbp - 26]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.123+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc___udivmodsi4+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB123_7
	jmp	.LBB123_8
.LBB123_7:                              #   in Loop: Header=BB123_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.123+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	shl	eax
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 20]
	shl	eax
	mov	dword ptr [rbp - 20], eax
	jmp	.LBB123_1
.LBB123_8:
	jmp	.LBB123_9
.LBB123_9:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	je	.LBB123_13
# %bb.10:                               #   in Loop: Header=BB123_9 Depth=1
	movabs	rax, offset .L__profc___udivmodsi4+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jb	.LBB123_12
# %bb.11:                               #   in Loop: Header=BB123_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.123+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 20]
	or	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 24], eax
.LBB123_12:                             #   in Loop: Header=BB123_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.123+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	shr	eax
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 12]
	shr	eax
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB123_9
.LBB123_13:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB123_15
# %bb.14:
	movabs	rax, offset __llvm_gcov_ctr.123+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB123_16
.LBB123_15:
	movabs	rax, offset __llvm_gcov_ctr.123+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 4], eax
.LBB123_16:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	4, 0x90
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 8], xmm0
	movss	dword ptr [rbp - 12], xmm1
	movabs	rax, offset .L__profc___mspabi_cmpf
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm1, dword ptr [rbp - 8]       # xmm1 = mem[0],zero,zero,zero
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	jbe	.LBB124_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.124
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mspabi_cmpf+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], -1
	jmp	.LBB124_5
.LBB124_2:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 12]
	jbe	.LBB124_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.124+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mspabi_cmpf+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.LBB124_5
.LBB124_4:
	movabs	rax, offset __llvm_gcov_ctr.124+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
.LBB124_5:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	4, 0x90
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 16], xmm0
	movsd	qword ptr [rbp - 24], xmm1
	movabs	rax, offset .L__profc___mspabi_cmpd
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm1, qword ptr [rbp - 16]      # xmm1 = mem[0],zero
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm1
	jbe	.LBB125_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.125
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mspabi_cmpd+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], -1
	jmp	.LBB125_5
.LBB125_2:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 24]
	jbe	.LBB125_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.125+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mspabi_cmpd+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.LBB125_5
.LBB125_4:
	movabs	rax, offset __llvm_gcov_ctr.125+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
.LBB125_5:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	4, 0x90
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.126
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___mspabi_mpysll
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	4, 0x90
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.127
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___mspabi_mpyull
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
	.cfi_endproc
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	4, 0x90
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc___mulhi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
	cmp	dword ptr [rbp - 8], 0
	jge	.LBB128_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.128
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulhi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
	sub	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	dword ptr [rbp - 16], 1
.LBB128_2:
	mov	byte ptr [rbp - 9], 0
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rbp - 8], 0
	mov	byte ptr [rbp - 21], al         # 1-byte Spill
	je	.LBB128_6
# %bb.4:                                #   in Loop: Header=BB128_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.128+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulhi3+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsx	rax, byte ptr [rbp - 9]
	cmp	rax, 32
	setb	al
	mov	byte ptr [rbp - 22], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 21], al         # 1-byte Spill
	jne	.LBB128_5
	jmp	.LBB128_6
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	mov	al, byte ptr [rbp - 22]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.128+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc___mulhi3+32
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 21], al         # 1-byte Spill
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	mov	al, byte ptr [rbp - 21]         # 1-byte Reload
	test	al, 1
	jne	.LBB128_7
	jmp	.LBB128_11
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	movabs	rax, offset .L__profc___mulhi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB128_9
# %bb.8:                                #   in Loop: Header=BB128_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.128+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulhi3+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	add	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	mov	eax, dword ptr [rbp - 4]
	shl	eax
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 8]
	sar	eax
	mov	dword ptr [rbp - 8], eax
# %bb.10:                               #   in Loop: Header=BB128_3 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.128+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	al, byte ptr [rbp - 9]
	add	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.LBB128_3
.LBB128_11:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB128_13
# %bb.12:
	movabs	rax, offset __llvm_gcov_ctr.128+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___mulhi3+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
	sub	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], eax       # 4-byte Spill
	jmp	.LBB128_14
.LBB128_13:
	movabs	rax, offset __llvm_gcov_ctr.128+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], eax       # 4-byte Spill
.LBB128_14:
	mov	eax, dword ptr [rbp - 28]       # 4-byte Reload
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
	.cfi_endproc
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	4, 0x90
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	movabs	rax, offset __llvm_gcov_ctr.129
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___divsi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 20], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.LBB129_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.129+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___divsi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	cmp	dword ptr [rbp - 20], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 20], eax
.LBB129_2:
	cmp	qword ptr [rbp - 16], 0
	jge	.LBB129_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.129+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___divsi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rax
	cmp	dword ptr [rbp - 20], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 20], eax
.LBB129_4:
	mov	rax, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rax, qword ptr [rbp - 16]
	mov	esi, eax
	xor	eax, eax
	movabs	rax, offset __udivmodsi4
	xor	edx, edx
	call	rax
	mov	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 32], rax
	cmp	dword ptr [rbp - 20], 0
	je	.LBB129_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.129+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___divsi3+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 32], rax
.LBB129_6:
	mov	rax, qword ptr [rbp - 32]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
	.cfi_endproc
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	4, 0x90
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	movabs	rax, offset __llvm_gcov_ctr.130
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___modsi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 20], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.LBB130_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.130+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___modsi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 20], 1
.LBB130_2:
	cmp	qword ptr [rbp - 16], 0
	jge	.LBB130_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.130+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___modsi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 16], rax
.LBB130_4:
	mov	rax, qword ptr [rbp - 8]
	mov	edi, eax
	mov	rax, qword ptr [rbp - 16]
	mov	esi, eax
	movabs	rax, offset __udivmodsi4
	mov	edx, 1
	call	rax
	mov	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 32], rax
	cmp	dword ptr [rbp - 20], 0
	je	.LBB130_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.130+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___modsi3+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 32], rax
.LBB130_6:
	mov	rax, qword ptr [rbp - 32]
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	4, 0x90
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	ax, si
	mov	cx, di
	mov	word ptr [rbp - 4], cx
	mov	word ptr [rbp - 6], ax
	mov	dword ptr [rbp - 12], edx
	movabs	rax, offset .L__profc___udivmodhi4
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	word ptr [rbp - 14], 1
	mov	word ptr [rbp - 16], 0
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	movzx	ecx, word ptr [rbp - 6]
	movzx	edx, word ptr [rbp - 4]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jge	.LBB131_6
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.131
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodhi4+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	ecx, word ptr [rbp - 14]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	je	.LBB131_6
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.131+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodhi4+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.4:                                #   in Loop: Header=BB131_1 Depth=1
	movabs	rax, offset .L__profc___udivmodhi4+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 6]
	and	eax, 32768
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 18], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB131_5
	jmp	.LBB131_6
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	mov	al, byte ptr [rbp - 18]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.131+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc___udivmodhi4+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	mov	al, byte ptr [rbp - 17]         # 1-byte Reload
	test	al, 1
	jne	.LBB131_7
	jmp	.LBB131_8
.LBB131_7:                              #   in Loop: Header=BB131_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.131+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodhi4+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 6]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 6], ax
	movzx	eax, word ptr [rbp - 14]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 14], ax
	jmp	.LBB131_1
.LBB131_8:
	jmp	.LBB131_9
.LBB131_9:                              # =>This Inner Loop Header: Depth=1
	cmp	word ptr [rbp - 14], 0
	je	.LBB131_13
# %bb.10:                               #   in Loop: Header=BB131_9 Depth=1
	movabs	rax, offset .L__profc___udivmodhi4+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 4]
	movzx	ecx, word ptr [rbp - 6]
	cmp	eax, ecx
	jl	.LBB131_12
# %bb.11:                               #   in Loop: Header=BB131_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.131+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodhi4+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	ecx, word ptr [rbp - 6]
	movzx	eax, word ptr [rbp - 4]
	sub	eax, ecx
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 4], ax
	movzx	ecx, word ptr [rbp - 14]
	movzx	eax, word ptr [rbp - 16]
	or	eax, ecx
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 16], ax
.LBB131_12:                             #   in Loop: Header=BB131_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.131+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movzx	eax, word ptr [rbp - 14]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 14], ax
	movzx	eax, word ptr [rbp - 6]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 6], ax
	jmp	.LBB131_9
.LBB131_13:
	cmp	dword ptr [rbp - 12], 0
	je	.LBB131_15
# %bb.14:
	movabs	rax, offset __llvm_gcov_ctr.131+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodhi4+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ax, word ptr [rbp - 4]
	mov	word ptr [rbp - 2], ax
	jmp	.LBB131_16
.LBB131_15:
	movabs	rax, offset __llvm_gcov_ctr.131+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	ax, word ptr [rbp - 16]
	mov	word ptr [rbp - 2], ax
.LBB131_16:
	mov	ax, word ptr [rbp - 2]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	4, 0x90
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], edx
	movabs	rax, offset .L__profc___udivmodsi4_libgcc
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 40], 1
	mov	qword ptr [rbp - 48], 0
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbp - 24]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	rcx, qword ptr [rbp - 16]
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	jae	.LBB132_6
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.132
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4_libgcc+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 40], 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB132_6
# %bb.3:                                #   in Loop: Header=BB132_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.132+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4_libgcc+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
# %bb.4:                                #   in Loop: Header=BB132_1 Depth=1
	movabs	rax, offset .L__profc___udivmodsi4_libgcc+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, 2147483648
	and	rax, qword ptr [rbp - 24]
	cmp	rax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 50], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	jne	.LBB132_5
	jmp	.LBB132_6
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	mov	al, byte ptr [rbp - 50]         # 1-byte Reload
	movabs	rcx, offset __llvm_gcov_ctr.132+16
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	movabs	rcx, offset .L__profc___udivmodsi4_libgcc+24
	mov	rdx, qword ptr [rcx]
	inc	rdx
	mov	qword ptr [rcx], rdx
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	mov	al, byte ptr [rbp - 49]         # 1-byte Reload
	test	al, 1
	jne	.LBB132_7
	jmp	.LBB132_8
.LBB132_7:                              #   in Loop: Header=BB132_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.132+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4_libgcc+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 24]
	shl	rax
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 40]
	shl	rax
	mov	qword ptr [rbp - 40], rax
	jmp	.LBB132_1
.LBB132_8:
	jmp	.LBB132_9
.LBB132_9:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 40], 0
	je	.LBB132_13
# %bb.10:                               #   in Loop: Header=BB132_9 Depth=1
	movabs	rax, offset .L__profc___udivmodsi4_libgcc+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	cmp	rax, qword ptr [rbp - 24]
	jb	.LBB132_12
# %bb.11:                               #   in Loop: Header=BB132_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.132+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4_libgcc+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 16]
	sub	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 40]
	or	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 48], rax
.LBB132_12:                             #   in Loop: Header=BB132_9 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.132+40
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 40]
	shr	rax
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 24]
	shr	rax
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB132_9
.LBB132_13:
	cmp	dword ptr [rbp - 28], 0
	je	.LBB132_15
# %bb.14:
	movabs	rax, offset __llvm_gcov_ctr.132+48
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___udivmodsi4_libgcc+64
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB132_16
.LBB132_15:
	movabs	rax, offset __llvm_gcov_ctr.132+56
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 8], rax
.LBB132_16:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
	.cfi_endproc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	4, 0x90
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	movabs	rax, offset .L__profc___ashldi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 24], 32
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	eax, dword ptr [rbp - 20]
	and	eax, 32
	cmp	eax, 0
	je	.LBB133_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.133
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashldi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 40], 0
	mov	eax, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 32
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	dword ptr [rbp - 36], eax
	jmp	.LBB133_5
.LBB133_2:
	cmp	dword ptr [rbp - 20], 0
	jne	.LBB133_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.133+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashldi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB133_6
.LBB133_4:
	movabs	rax, offset __llvm_gcov_ctr.133+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	dword ptr [rbp - 40], eax
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, 32
	sub	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	mov	dword ptr [rbp - 36], eax
.LBB133_5:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
.LBB133_6:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
	.cfi_endproc
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	4, 0x90
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], edx
	movabs	rax, offset .L__profc___ashlti3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 56], 64
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 72], rcx
	mov	qword ptr [rbp - 80], rax
	mov	eax, dword ptr [rbp - 52]
	and	eax, 64
	cmp	eax, 0
	je	.LBB134_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.134
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashlti3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 96], 0
	mov	rax, qword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp - 52]
	sub	ecx, 64
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	qword ptr [rbp - 88], rax
	jmp	.LBB134_5
.LBB134_2:
	cmp	dword ptr [rbp - 52], 0
	jne	.LBB134_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.134+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashlti3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB134_6
.LBB134_4:
	movabs	rax, offset __llvm_gcov_ctr.134+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp - 52]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	qword ptr [rbp - 96], rax
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, dword ptr [rbp - 52]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rdx, qword ptr [rbp - 80]
	mov	ecx, 64
	sub	ecx, dword ptr [rbp - 52]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rdx
	or	rax, rcx
	mov	qword ptr [rbp - 88], rax
.LBB134_5:
	mov	rax, qword ptr [rbp - 96]
	mov	rcx, qword ptr [rbp - 88]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
.LBB134_6:
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
	.cfi_endproc
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	4, 0x90
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	movabs	rax, offset .L__profc___ashrdi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 24], 32
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	eax, dword ptr [rbp - 20]
	and	eax, 32
	cmp	eax, 0
	je	.LBB135_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.135
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashrdi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 28]
	sar	eax, 31
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 32
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	mov	dword ptr [rbp - 40], eax
	jmp	.LBB135_5
.LBB135_2:
	cmp	dword ptr [rbp - 20], 0
	jne	.LBB135_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.135+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashrdi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB135_6
.LBB135_4:
	movabs	rax, offset __llvm_gcov_ctr.135+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, 32
	sub	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	mov	dword ptr [rbp - 40], eax
.LBB135_5:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
.LBB135_6:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
	.cfi_endproc
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	4, 0x90
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], edx
	movabs	rax, offset .L__profc___ashrti3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 56], 64
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 72], rcx
	mov	qword ptr [rbp - 80], rax
	mov	eax, dword ptr [rbp - 52]
	and	eax, 64
	cmp	eax, 0
	je	.LBB136_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.136
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashrti3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 72]
	sar	rax, 63
	mov	qword ptr [rbp - 88], rax
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, dword ptr [rbp - 52]
	sub	ecx, 64
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	sar	rax, cl
	mov	qword ptr [rbp - 96], rax
	jmp	.LBB136_5
.LBB136_2:
	cmp	dword ptr [rbp - 52], 0
	jne	.LBB136_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.136+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ashrti3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB136_6
.LBB136_4:
	movabs	rax, offset __llvm_gcov_ctr.136+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, dword ptr [rbp - 52]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	sar	rax, cl
	mov	qword ptr [rbp - 88], rax
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, 64
	sub	ecx, dword ptr [rbp - 52]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rdx, qword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp - 52]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rdx
	or	rax, rcx
	mov	qword ptr [rbp - 96], rax
.LBB136_5:
	mov	rax, qword ptr [rbp - 96]
	mov	rcx, qword ptr [rbp - 88]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
.LBB136_6:
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
	.cfi_endproc
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	4, 0x90
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.137
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc___bswapdi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, -72057594037927936
	and	rax, qword ptr [rbp - 8]
	shr	rax, 56
	movabs	rcx, 71776119061217280
	and	rcx, qword ptr [rbp - 8]
	shr	rcx, 40
	or	rax, rcx
	movabs	rcx, 280375465082880
	and	rcx, qword ptr [rbp - 8]
	shr	rcx, 24
	or	rax, rcx
	movabs	rcx, 1095216660480
	and	rcx, qword ptr [rbp - 8]
	shr	rcx, 8
	or	rax, rcx
	movabs	rcx, 4278190080
	and	rcx, qword ptr [rbp - 8]
	shl	rcx, 8
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, 16711680
	shl	rcx, 24
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, 65280
	shl	rcx, 40
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	and	rcx, 255
	shl	rcx, 56
	or	rax, rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
	.cfi_endproc
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	4, 0x90
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.138
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc___bswapsi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	and	eax, -16777216
	shr	eax, 24
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 16711680
	shr	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 65280
	shl	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 255
	shl	ecx, 24
	or	eax, ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
	.cfi_endproc
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	4, 0x90
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.139
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc___clzsi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, -65536
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 4
	mov	dword ptr [rbp - 12], eax
	mov	ecx, 16
	sub	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 65280
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 3
	mov	dword ptr [rbp - 12], eax
	mov	ecx, 8
	sub	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 240
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 2
	mov	dword ptr [rbp - 12], eax
	mov	ecx, 4
	sub	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 12
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax
	mov	dword ptr [rbp - 12], eax
	mov	ecx, 2
	sub	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	mov	ecx, 2
	sub	ecx, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 8]
	and	edx, 2
	cmp	edx, 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	xor	edx, edx
	sub	edx, esi
	and	ecx, edx
	add	eax, ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
	.cfi_endproc
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	4, 0x90
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.140
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
	movabs	rax, offset .L__profc___clzti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	cmp	qword ptr [rbp - 40], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	xor	eax, eax
	sub	eax, ecx
	cdqe
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 56]
	xor	rcx, -1
	and	rax, rcx
	mov	rcx, qword ptr [rbp - 48]
	and	rcx, qword ptr [rbp - 56]
	or	rax, rcx
	bsr	rax, rax
	xor	rax, 63
                                        # kill: def $eax killed $eax killed $rax
	mov	rcx, qword ptr [rbp - 56]
                                        # kill: def $ecx killed $ecx killed $rcx
	and	ecx, 64
	add	eax, ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
	.cfi_endproc
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	4, 0x90
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	movabs	rax, offset .L__profc___cmpdi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jge	.LBB141_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.141
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpdi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB141_9
.LBB141_2:
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jle	.LBB141_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.141+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpdi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB141_9
.LBB141_4:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jae	.LBB141_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.141+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpdi2+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB141_9
.LBB141_6:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jbe	.LBB141_8
# %bb.7:
	movabs	rax, offset __llvm_gcov_ctr.141+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpdi2+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB141_9
.LBB141_8:
	movabs	rax, offset __llvm_gcov_ctr.141+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
.LBB141_9:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	4, 0x90
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movabs	rax, offset __llvm_gcov_ctr.142
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___aeabi_lcmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	movabs	rax, offset __cmpdi2
	call	rax
	sub	eax, 1
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
	.cfi_endproc
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	4, 0x90
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, rdx
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rdx, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax
	mov	qword ptr [rbp - 40], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 56], rsi
	mov	qword ptr [rbp - 64], rdx
	mov	qword ptr [rbp - 72], rcx
	mov	qword ptr [rbp - 80], rax
	movabs	rax, offset .L__profc___cmpti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 64]
	mov	rcx, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 88], rcx
	mov	qword ptr [rbp - 96], rax
	mov	rax, qword ptr [rbp - 80]
	mov	rcx, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 104], rcx
	mov	qword ptr [rbp - 112], rax
	mov	rax, qword ptr [rbp - 88]
	cmp	rax, qword ptr [rbp - 104]
	jge	.LBB143_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.143
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpti2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB143_9
.LBB143_2:
	mov	rax, qword ptr [rbp - 88]
	cmp	rax, qword ptr [rbp - 104]
	jle	.LBB143_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.143+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpti2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB143_9
.LBB143_4:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jae	.LBB143_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.143+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpti2+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB143_9
.LBB143_6:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jbe	.LBB143_8
# %bb.7:
	movabs	rax, offset __llvm_gcov_ctr.143+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___cmpti2+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB143_9
.LBB143_8:
	movabs	rax, offset __llvm_gcov_ctr.143+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
.LBB143_9:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
	.cfi_endproc
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	4, 0x90
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.144
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc___ctzsi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 65535
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 4
	mov	dword ptr [rbp - 12], eax
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 255
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 3
	mov	dword ptr [rbp - 12], eax
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 15
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 2
	mov	dword ptr [rbp - 12], eax
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 3
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax
	mov	dword ptr [rbp - 12], eax
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	and	eax, 3
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 12]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	mov	edx, dword ptr [rbp - 8]
	shr	edx
	mov	ecx, 2
	sub	ecx, edx
	mov	edx, dword ptr [rbp - 8]
	and	edx, 1
	cmp	edx, 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	xor	edx, edx
	sub	edx, esi
	and	ecx, edx
	add	eax, ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
	.cfi_endproc
                                        # -- End function
	.globl	__ctzti2                        # -- Begin function __ctzti2
	.p2align	4, 0x90
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.145
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
	movabs	rax, offset .L__profc___ctzti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	cmp	qword ptr [rbp - 48], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	xor	eax, eax
	sub	eax, ecx
	cdqe
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 40]
	and	rax, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rbp - 48]
	mov	rdx, qword ptr [rbp - 56]
	xor	rdx, -1
	and	rcx, rdx
	or	rax, rcx
	rep		bsf	rax, rax
                                        # kill: def $eax killed $eax killed $rax
	mov	rcx, qword ptr [rbp - 56]
                                        # kill: def $ecx killed $ecx killed $rcx
	and	ecx, 64
	add	eax, ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
	.cfi_endproc
                                        # -- End function
	.globl	__ffsti2                        # -- Begin function __ffsti2
	.p2align	4, 0x90
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	movabs	rax, offset .L__profc___ffsti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 56], rcx
	mov	qword ptr [rbp - 64], rax
	cmp	qword ptr [rbp - 64], 0
	jne	.LBB146_4
# %bb.1:
	movabs	rax, offset .L__profc___ffsti2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	qword ptr [rbp - 56], 0
	jne	.LBB146_3
# %bb.2:
	movabs	rax, offset __llvm_gcov_ctr.146+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ffsti2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB146_5
.LBB146_3:
	movabs	rax, offset __llvm_gcov_ctr.146+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 56]
	rep		bsf	rax, rax
                                        # kill: def $eax killed $eax killed $rax
	cdqe
	add	rax, 65
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB146_5
.LBB146_4:
	movabs	rax, offset __llvm_gcov_ctr.146
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 64]
	rep		bsf	rax, rax
                                        # kill: def $eax killed $eax killed $rax
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.LBB146_5:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
	.cfi_endproc
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	4, 0x90
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	dword ptr [rbp - 20], esi
	movabs	rax, offset .L__profc___lshrdi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 24], 32
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	eax, dword ptr [rbp - 20]
	and	eax, 32
	cmp	eax, 0
	je	.LBB147_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.147
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___lshrdi3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 36], 0
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
	sub	ecx, 32
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 40], eax
	jmp	.LBB147_5
.LBB147_2:
	cmp	dword ptr [rbp - 20], 0
	jne	.LBB147_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.147+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___lshrdi3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB147_6
.LBB147_4:
	movabs	rax, offset __llvm_gcov_ctr.147+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [rbp - 36], eax
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, 32
	sub	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	mov	dword ptr [rbp - 40], eax
.LBB147_5:
	mov	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rax
.LBB147_6:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
	.cfi_endproc
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	4, 0x90
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	mov	dword ptr [rbp - 52], edx
	movabs	rax, offset .L__profc___lshrti3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 56], 64
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 72], rcx
	mov	qword ptr [rbp - 80], rax
	mov	eax, dword ptr [rbp - 52]
	and	eax, 64
	cmp	eax, 0
	je	.LBB148_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.148
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___lshrti3+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 88], 0
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, dword ptr [rbp - 52]
	sub	ecx, 64
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	qword ptr [rbp - 96], rax
	jmp	.LBB148_5
.LBB148_2:
	cmp	dword ptr [rbp - 52], 0
	jne	.LBB148_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.148+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___lshrti3+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB148_6
.LBB148_4:
	movabs	rax, offset __llvm_gcov_ctr.148+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, dword ptr [rbp - 52]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rax, cl
	mov	qword ptr [rbp - 88], rax
	mov	rax, qword ptr [rbp - 72]
	mov	ecx, 64
	sub	ecx, dword ptr [rbp - 52]
	mov	ecx, ecx
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shl	rax, cl
	mov	rdx, qword ptr [rbp - 80]
	mov	ecx, dword ptr [rbp - 52]
                                        # kill: def $rcx killed $ecx
                                        # kill: def $cl killed $rcx
	shr	rdx, cl
	mov	rcx, rdx
	or	rax, rcx
	mov	qword ptr [rbp - 96], rax
.LBB148_5:
	mov	rax, qword ptr [rbp - 96]
	mov	rcx, qword ptr [rbp - 88]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
.LBB148_6:
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
	.cfi_endproc
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	4, 0x90
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.149
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	movabs	rax, offset .L__profc___muldsi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 20], 16
	mov	dword ptr [rbp - 24], 65535
	mov	eax, dword ptr [rbp - 4]
	and	eax, 65535
	mov	ecx, dword ptr [rbp - 8]
	and	ecx, 65535
	imul	eax, ecx
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 16]
	shr	eax, 16
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 16]
	and	eax, 65535
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 4]
	shr	eax, 16
	mov	ecx, dword ptr [rbp - 8]
	and	ecx, 65535
	imul	eax, ecx
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	and	eax, 65535
	shl	eax, 16
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 28]
	shr	eax, 16
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 16]
	shr	eax, 16
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 16]
	and	eax, 65535
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 8]
	shr	eax, 16
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 65535
	imul	eax, ecx
	add	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 28]
	and	eax, 65535
	shl	eax, 16
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
	mov	eax, dword ptr [rbp - 28]
	shr	eax, 16
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 4]
	shr	eax, 16
	mov	ecx, dword ptr [rbp - 8]
	shr	ecx, 16
	imul	eax, ecx
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
	mov	rax, qword ptr [rbp - 16]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	4, 0x90
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	movabs	rax, offset __llvm_gcov_ctr.150
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___muldi3_compiler_rt
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	edi, dword ptr [rbp - 24]
	mov	esi, dword ptr [rbp - 32]
	movabs	rax, offset __muldsi3
	call	rax
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 20]
	imul	eax, dword ptr [rbp - 32]
	mov	ecx, dword ptr [rbp - 24]
	imul	ecx, dword ptr [rbp - 28]
	add	eax, ecx
	add	eax, dword ptr [rbp - 36]
	mov	dword ptr [rbp - 36], eax
	mov	rax, qword ptr [rbp - 40]
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
	.cfi_endproc
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	4, 0x90
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.151
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
	movabs	rax, offset .L__profc___mulddi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 52], 32
	mov	eax, 4294967295
	mov	qword ptr [rbp - 64], rax
	mov	eax, dword ptr [rbp - 24]
                                        # kill: def $rax killed $eax
	mov	ecx, dword ptr [rbp - 32]
                                        # kill: def $rcx killed $ecx
	imul	rax, rcx
	mov	qword ptr [rbp - 48], rax
	mov	eax, dword ptr [rbp - 44]
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 72], rax
	mov	dword ptr [rbp - 44], 0
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 32]
                                        # kill: def $rax killed $eax
	imul	rcx, rax
	mov	rax, qword ptr [rbp - 72]
	add	rax, rcx
	mov	qword ptr [rbp - 72], rax
	mov	rcx, qword ptr [rbp - 72]
	shl	rcx, 32
	mov	rax, qword ptr [rbp - 48]
	add	rax, rcx
	mov	qword ptr [rbp - 48], rax
	mov	eax, dword ptr [rbp - 68]
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 44]
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 72], rax
	mov	dword ptr [rbp - 44], 0
	mov	eax, dword ptr [rbp - 28]
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 24]
                                        # kill: def $rax killed $eax
	imul	rcx, rax
	mov	rax, qword ptr [rbp - 72]
	add	rax, rcx
	mov	qword ptr [rbp - 72], rax
	mov	rcx, qword ptr [rbp - 72]
	shl	rcx, 32
	mov	rax, qword ptr [rbp - 48]
	add	rax, rcx
	mov	qword ptr [rbp - 48], rax
	mov	eax, dword ptr [rbp - 68]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 40]
	add	rax, rcx
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 28]
                                        # kill: def $rax killed $eax
	imul	rcx, rax
	mov	rax, qword ptr [rbp - 40]
	add	rax, rcx
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
	.cfi_endproc
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	4, 0x90
	.type	__multi3,@function
__multi3:                               # @__multi3
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 144
	mov	rax, rdx
	movabs	rdx, offset __llvm_gcov_ctr.152
	mov	r8, qword ptr [rdx]
	inc	r8
	mov	qword ptr [rdx], r8
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rdx, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax
	mov	qword ptr [rbp - 40], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 56], rsi
	mov	qword ptr [rbp - 64], rdx
	mov	qword ptr [rbp - 72], rcx
	mov	qword ptr [rbp - 80], rax
	movabs	rax, offset .L__profc___multi3
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 64]
	mov	rcx, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 88], rcx
	mov	qword ptr [rbp - 96], rax
	mov	rax, qword ptr [rbp - 80]
	mov	rcx, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 104], rcx
	mov	qword ptr [rbp - 112], rax
	mov	rdi, qword ptr [rbp - 96]
	mov	rsi, qword ptr [rbp - 112]
	movabs	rax, offset __mulddi3
	call	rax
	mov	qword ptr [rbp - 144], rax
	mov	qword ptr [rbp - 136], rdx
	mov	rax, qword ptr [rbp - 144]
	mov	rcx, qword ptr [rbp - 136]
	mov	qword ptr [rbp - 120], rcx
	mov	qword ptr [rbp - 128], rax
	mov	rax, qword ptr [rbp - 96]
	mov	rcx, qword ptr [rbp - 88]
	mov	rsi, qword ptr [rbp - 112]
	mov	rdx, qword ptr [rbp - 104]
	imul	rcx, rsi
	imul	rax, rdx
	add	rcx, rax
	mov	rax, qword ptr [rbp - 120]
	add	rax, rcx
	mov	qword ptr [rbp - 120], rax
	mov	rax, qword ptr [rbp - 128]
	mov	rcx, qword ptr [rbp - 120]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 144
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
	.cfi_endproc
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	4, 0x90
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.153
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc___negdi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
	.cfi_endproc
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	4, 0x90
	.type	__negti2,@function
__negti2:                               # @__negti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.154
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	movabs	rax, offset .L__profc___negti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 48]
	mov	rdx, qword ptr [rbp - 40]
	xor	eax, eax
	neg	rcx
                                        # kill: def $rax killed $eax
	sbb	rax, rdx
	mov	qword ptr [rbp - 16], rcx
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
	.cfi_endproc
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	4, 0x90
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.155
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc___paritydi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
	mov	eax, dword ptr [rbp - 12]
	xor	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 16
	xor	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 8
	xor	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 4
	xor	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
	mov	ecx, dword ptr [rbp - 20]
	and	ecx, 15
	mov	eax, 27030
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	and	eax, 1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
	.cfi_endproc
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	4, 0x90
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.156
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
	movabs	rax, offset .L__profc___parityti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 40]
	xor	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 56], rax
	mov	eax, dword ptr [rbp - 52]
	xor	eax, dword ptr [rbp - 56]
	mov	dword ptr [rbp - 60], eax
	mov	eax, dword ptr [rbp - 60]
	shr	eax, 16
	xor	eax, dword ptr [rbp - 60]
	mov	dword ptr [rbp - 60], eax
	mov	eax, dword ptr [rbp - 60]
	shr	eax, 8
	xor	eax, dword ptr [rbp - 60]
	mov	dword ptr [rbp - 60], eax
	mov	eax, dword ptr [rbp - 60]
	shr	eax, 4
	xor	eax, dword ptr [rbp - 60]
	mov	dword ptr [rbp - 60], eax
	mov	ecx, dword ptr [rbp - 60]
	and	ecx, 15
	mov	eax, 27030
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	and	eax, 1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
	.cfi_endproc
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	4, 0x90
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.157
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc___paritysi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	shr	eax, 16
	xor	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	shr	eax, 8
	xor	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	shr	eax, 4
	xor	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 8], eax
	mov	ecx, dword ptr [rbp - 8]
	and	ecx, 15
	mov	eax, 27030
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	and	eax, 1
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	4, 0x90
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.158
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	movabs	rax, offset .L__profc___popcountdi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 16]
	shr	rcx
	movabs	rdx, 6148914691236517205
	and	rcx, rdx
	sub	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	shr	rax, 2
	movabs	rcx, 3689348814741910323
	and	rax, rcx
	movabs	rcx, 3689348814741910323
	and	rcx, qword ptr [rbp - 16]
	add	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 16]
	shr	rcx, 4
	add	rax, rcx
	movabs	rcx, 1085102592571150095
	and	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 16]
	shr	rcx, 32
	add	rax, rcx
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 20]
	shr	ecx, 16
	add	eax, ecx
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, dword ptr [rbp - 20]
	shr	ecx, 8
	add	eax, ecx
	and	eax, 127
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	4, 0x90
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.159
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], edi
	movabs	rax, offset .L__profc___popcountsi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	shr	ecx
	and	ecx, 1431655765
	sub	eax, ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	shr	eax, 2
	and	eax, 858993459
	mov	ecx, dword ptr [rbp - 8]
	and	ecx, 858993459
	add	eax, ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	shr	ecx, 4
	add	eax, ecx
	and	eax, 252645135
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	shr	ecx, 16
	add	eax, ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 8]
	shr	ecx, 8
	add	eax, ecx
	and	eax, 63
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	4, 0x90
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr.160
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
	movabs	rax, offset .L__profc___popcountti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	mov	rcx, qword ptr [rbp - 48]
	mov	rax, qword ptr [rbp - 40]
	mov	rsi, rcx
	shr	rsi
	mov	rdx, rax
	shr	rdx
	movabs	rdi, 6148914691236517205
	and	rdx, rdi
	and	rsi, rdi
	sub	rcx, rsi
	sbb	rax, rdx
	mov	qword ptr [rbp - 48], rcx
	mov	qword ptr [rbp - 40], rax
	mov	rsi, qword ptr [rbp - 48]
	mov	rdx, qword ptr [rbp - 40]
	mov	rax, rsi
	shr	rax, 2
	mov	rcx, rdx
	shr	rcx, 2
	movabs	rdi, 3689348814741910323
	and	rcx, rdi
	and	rax, rdi
	and	rdx, rdi
	and	rsi, rdi
	add	rax, rsi
	add	rcx, rdx
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
	mov	rcx, qword ptr [rbp - 48]
	mov	rax, qword ptr [rbp - 40]
	mov	rdx, rax
	shr	rdx, 4
	mov	rsi, rax
	shld	rsi, rcx, 60
	add	rcx, rsi
	adc	rax, rdx
	movabs	rdx, 1085102592571150095
	and	rax, rdx
	and	rcx, rdx
	mov	qword ptr [rbp - 48], rcx
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	add	rax, rcx
	mov	qword ptr [rbp - 56], rax
	mov	rax, qword ptr [rbp - 56]
	mov	rcx, qword ptr [rbp - 56]
	shr	rcx, 32
	add	rax, rcx
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 60], eax
	mov	eax, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp - 60]
	shr	ecx, 16
	add	eax, ecx
	mov	dword ptr [rbp - 60], eax
	mov	eax, dword ptr [rbp - 60]
	mov	ecx, dword ptr [rbp - 60]
	shr	ecx, 8
	add	eax, ecx
	and	eax, 255
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __powidf2
.LCPI161_0:
	.quad	0x3ff0000000000000              # double 1
	.section	.ltext,"axl",@progbits
	.globl	__powidf2
	.p2align	4, 0x90
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movsd	qword ptr [rbp - 8], xmm0
	mov	dword ptr [rbp - 12], edi
	movabs	rax, offset .L__profc___powidf2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	dword ptr [rbp - 12], 0
	setl	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 16], eax
	movabs	rax, offset .LCPI161_0
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 24], xmm0
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	movabs	rax, offset .L__profc___powidf2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB161_3
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.161
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___powidf2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 24]
	movsd	qword ptr [rbp - 24], xmm0
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], eax
	cmp	dword ptr [rbp - 12], 0
	jne	.LBB161_5
# %bb.4:
	movabs	rax, offset .L__profc___powidf2+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.161+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB161_1
.LBB161_6:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB161_8
# %bb.7:
	movabs	rax, offset __llvm_gcov_ctr.161+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___powidf2+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .LCPI161_0
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	divsd	xmm0, qword ptr [rbp - 24]
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB161_9
.LBB161_8:
	movabs	rax, offset __llvm_gcov_ctr.161+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
.LBB161_9:
	movsd	xmm0, qword ptr [rbp - 32]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function __powisf2
.LCPI162_0:
	.long	0x3f800000                      # float 1
	.section	.ltext,"axl",@progbits
	.globl	__powisf2
	.p2align	4, 0x90
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movss	dword ptr [rbp - 4], xmm0
	mov	dword ptr [rbp - 8], edi
	movabs	rax, offset .L__profc___powisf2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	cmp	dword ptr [rbp - 8], 0
	setl	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 12], eax
	movabs	rax, offset .LCPI162_0
	movss	xmm0, dword ptr [rax]           # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	movabs	rax, offset .L__profc___powisf2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	eax, dword ptr [rbp - 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB162_3
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.162
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___powisf2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 16], xmm0
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB162_5
# %bb.4:
	movabs	rax, offset .L__profc___powisf2+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	jmp	.LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	movabs	rax, offset __llvm_gcov_ctr.162+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 4]
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB162_1
.LBB162_6:
	cmp	dword ptr [rbp - 12], 0
	je	.LBB162_8
# %bb.7:
	movabs	rax, offset __llvm_gcov_ctr.162+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___powisf2+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .LCPI162_0
	movss	xmm0, dword ptr [rax]           # xmm0 = mem[0],zero,zero,zero
	divss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
	jmp	.LBB162_9
.LBB162_8:
	movabs	rax, offset __llvm_gcov_ctr.162+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movss	xmm0, dword ptr [rbp - 16]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
.LBB162_9:
	movss	xmm0, dword ptr [rbp - 20]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	4, 0x90
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 24], rsi
	movabs	rax, offset .L__profc___ucmpdi2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jae	.LBB163_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.163
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpdi2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB163_9
.LBB163_2:
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jbe	.LBB163_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.163+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpdi2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB163_9
.LBB163_4:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jae	.LBB163_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.163+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpdi2+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB163_9
.LBB163_6:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jbe	.LBB163_8
# %bb.7:
	movabs	rax, offset __llvm_gcov_ctr.163+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpdi2+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB163_9
.LBB163_8:
	movabs	rax, offset __llvm_gcov_ctr.163+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
.LBB163_9:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	4, 0x90
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	movabs	rax, offset __llvm_gcov_ctr.164
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	movabs	rax, offset .L__profc___aeabi_ulcmp
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	movabs	rax, offset __ucmpdi2
	call	rax
	sub	eax, 1
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	4, 0x90
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	rax, rdx
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rdx, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 48], rax
	mov	qword ptr [rbp - 40], rcx
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 56], rsi
	mov	qword ptr [rbp - 64], rdx
	mov	qword ptr [rbp - 72], rcx
	mov	qword ptr [rbp - 80], rax
	movabs	rax, offset .L__profc___ucmpti2
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	rax, qword ptr [rbp - 64]
	mov	rcx, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 88], rcx
	mov	qword ptr [rbp - 96], rax
	mov	rax, qword ptr [rbp - 80]
	mov	rcx, qword ptr [rbp - 72]
	mov	qword ptr [rbp - 104], rcx
	mov	qword ptr [rbp - 112], rax
	mov	rax, qword ptr [rbp - 88]
	cmp	rax, qword ptr [rbp - 104]
	jae	.LBB165_2
# %bb.1:
	movabs	rax, offset __llvm_gcov_ctr.165
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpti2+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB165_9
.LBB165_2:
	mov	rax, qword ptr [rbp - 88]
	cmp	rax, qword ptr [rbp - 104]
	jbe	.LBB165_4
# %bb.3:
	movabs	rax, offset __llvm_gcov_ctr.165+8
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpti2+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB165_9
.LBB165_4:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jae	.LBB165_6
# %bb.5:
	movabs	rax, offset __llvm_gcov_ctr.165+16
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpti2+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB165_9
.LBB165_6:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jbe	.LBB165_8
# %bb.7:
	movabs	rax, offset __llvm_gcov_ctr.165+24
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	movabs	rax, offset .L__profc___ucmpti2+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB165_9
.LBB165_8:
	movabs	rax, offset __llvm_gcov_ctr.165+32
	mov	rcx, qword ptr [rax]
	inc	rcx
	mov	qword ptr [rax], rcx
	mov	dword ptr [rbp - 4], 1
.LBB165_9:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	.cfi_def_cfa rsp, 8
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edi, edi
	xor	edx, edx
	xor	esi, esi
	xor	r8d, r8d
	xor	r9d, r9d
	xor	r10d, r10d
	xor	r11d, r11d
	pxor	xmm0, xmm0
	pxor	xmm1, xmm1
	pxor	xmm2, xmm2
	pxor	xmm3, xmm3
	pxor	xmm4, xmm4
	pxor	xmm5, xmm5
	pxor	xmm6, xmm6
	pxor	xmm7, xmm7
	pxor	xmm8, xmm8
	pxor	xmm9, xmm9
	pxor	xmm10, xmm10
	pxor	xmm11, xmm11
	pxor	xmm12, xmm12
	pxor	xmm13, xmm13
	pxor	xmm14, xmm14
	pxor	xmm15, xmm15
	ret
	int3
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	xor	eax, eax
	mov	dword ptr [rbp - 4], eax        # 4-byte Spill
	jmp	.LBB166_1
.LBB166_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB166_2 Depth 2
	mov	eax, dword ptr [rbp - 4]        # 4-byte Reload
	mov	dword ptr [rbp - 44], eax       # 4-byte Spill
	cdqe
	lea	rcx, [rax + 4*rax]
	movabs	rax, offset __llvm_internal_gcov_emit_file_info
	lea	rax, [rax + 8*rcx]
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
	mov	rdi, qword ptr [rax]
	mov	esi, dword ptr [rax + 8]
	mov	edx, dword ptr [rax + 12]
	movabs	rax, offset llvm_gcda_start_file
	call	rax
	mov	rax, qword ptr [rbp - 40]       # 8-byte Reload
	mov	ecx, dword ptr [rax + 16]
	mov	dword ptr [rbp - 28], ecx       # 4-byte Spill
	mov	rdx, qword ptr [rax + 24]
	mov	qword ptr [rbp - 24], rdx       # 8-byte Spill
	mov	rax, qword ptr [rax + 32]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	xor	eax, eax
	cmp	eax, ecx
	mov	dword ptr [rbp - 8], eax        # 4-byte Spill
	jge	.LBB166_3
.LBB166_2:                              #   Parent Loop BB166_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	ecx, dword ptr [rbp - 8]        # 4-byte Reload
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	mov	dword ptr [rbp - 48], ecx       # 4-byte Spill
	movsxd	rcx, ecx
	imul	rcx, rcx, 12
	add	rax, rcx
	mov	edi, dword ptr [rax]
	mov	esi, dword ptr [rax + 4]
	mov	edx, dword ptr [rax + 8]
	movabs	rax, offset llvm_gcda_emit_function
	call	rax
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	mov	ecx, dword ptr [rbp - 48]       # 4-byte Reload
	movsxd	rcx, ecx
	shl	rcx, 4
	add	rax, rcx
	mov	edi, dword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
	movabs	rax, offset llvm_gcda_emit_arcs
	call	rax
	mov	eax, dword ptr [rbp - 48]       # 4-byte Reload
	mov	ecx, dword ptr [rbp - 28]       # 4-byte Reload
	add	eax, 1
	cmp	eax, ecx
	mov	dword ptr [rbp - 8], eax        # 4-byte Spill
	jl	.LBB166_2
.LBB166_3:                              #   in Loop: Header=BB166_1 Depth=1
	movabs	rax, offset llvm_gcda_summary_info
	call	rax
	movabs	rax, offset llvm_gcda_end_file
	call	rax
	mov	eax, dword ptr [rbp - 44]       # 4-byte Reload
	add	eax, 1
	cmp	eax, 1
	mov	dword ptr [rbp - 4], eax        # 4-byte Spill
	jl	.LBB166_1
# %bb.4:
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
	int3
.Lfunc_end166:
	.size	__llvm_gcov_writeout, .Lfunc_end166-__llvm_gcov_writeout
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
__llvm_gcov_reset:                      # @__llvm_gcov_reset
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rax, offset __llvm_gcov_ctr
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.1
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.2+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.2
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.2+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.3+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.3
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.3+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.4+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.4
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.4+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.5+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.5
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.5+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.6
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.7
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.7+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.8
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.9
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.10+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.10
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.11
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.11+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.12+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.12
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.13
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.14+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.14+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.14
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.14+48
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.15
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.17
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.18
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.18+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.19
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.19+16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.20
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.21
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.22
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.23
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.24
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.24+16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.25
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.26+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.26
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.26+32
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.27
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.28+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.28+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.28
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.28+48
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.29
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.29+16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.30
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.31+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.31
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.32+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.32
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.33+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.33+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.33
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.34+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.34+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.34
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.35+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.35+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.35
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.36+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.36+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.36
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.37+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.37+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.37
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.38+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.38+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.38
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.39
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.40
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.41
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.42
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.42+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.43
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.43+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.44
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.44+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.45
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.45+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.46
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.47+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.47+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.47
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.48+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.48+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.48
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.49+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.49+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.49
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.50+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.50
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.51+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.51
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.52
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.53
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.54
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.55
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.56
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.57
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.58
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.59+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.59
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.59+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.60+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.60+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.60
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.61
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.62
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.63+48
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.63+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.63+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.63
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.64+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.64
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.64+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.65+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.65+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.65
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.66
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.67+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.67
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.67+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.68
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.69+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.69
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.69+32
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.70
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.71
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.72
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.73
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.74
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.75
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.76
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.77
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.78
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.79
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.80
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.81
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.82
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.83
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.83+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.84
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.84+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.85
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.85+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.86
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.86+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.87
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.87+16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.88
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.89+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.89
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.89+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.90+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.90
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.90+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.91+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.91
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.91+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.92
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.93+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.93
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.93+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.94+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.94
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.95+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.95
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.96
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.96+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.97+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.97
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.98+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.98
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.98+32
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.99+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.99+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.99
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.100
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.101+48
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.101+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.101+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.101
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.102
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.102+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.103+48
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.103+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.103+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.103
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.104
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.104+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.105
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.105+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.106
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.106+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.107+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.107+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.107
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.108+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.108+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.108
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.109+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.109+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.109
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.110
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.111
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.112
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.113
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.114
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.115
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.116
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.116+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.117
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.117+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.118
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.119
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.119+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.120
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.120+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.121
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.121+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.122+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.122
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.123+48
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.123+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.123+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.123
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.124
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.124+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.125
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.125+16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.126
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.127
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.128+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.128+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.128
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.128+48
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.129+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.129
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.130+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.130
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.131+48
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.131+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.131+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.131
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.132+48
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.132+32
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.132+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.132
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.133
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.133+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.134
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.134+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.135
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.135+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.136
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.136+16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.137
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.138
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.139
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.140
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.141+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.141
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.141+32
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.142
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.143+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.143
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.143+32
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.144
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.145
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.146
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.146+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.147
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.147+16
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.148
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.148+16
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.149
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.150
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.151
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.152
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.153
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.154
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.155
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.156
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.157
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.158
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.159
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.160
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.161+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.161
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.162+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.162
	movups	xmmword ptr [rax], xmm0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.163+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.163
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.163+32
	mov	qword ptr [rax], 0
	movabs	rax, offset __llvm_gcov_ctr.164
	mov	qword ptr [rax], 0
	xorps	xmm0, xmm0
	movabs	rax, offset __llvm_gcov_ctr.165+16
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.165
	movups	xmmword ptr [rax], xmm0
	movabs	rax, offset __llvm_gcov_ctr.165+32
	mov	qword ptr [rax], 0
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
	int3
.Lfunc_end167:
	.size	__llvm_gcov_reset, .Lfunc_end167-__llvm_gcov_reset
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
__llvm_gcov_init:                       # @__llvm_gcov_init
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	movabs	rdi, offset __llvm_gcov_writeout
	movabs	rsi, offset __llvm_gcov_reset
	movabs	rax, offset llvm_gcov_init
	call	rax
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
	int3
.Lfunc_end168:
	.size	__llvm_gcov_init, .Lfunc_end168-__llvm_gcov_init
	.cfi_endproc
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.section	.lbss,"awl",@nobits
l64a.s:
	.zero	7
	.size	l64a.s, 7

	.type	digits,@object                  # @digits
	.section	.lrodata,"al",@progbits
	.p2align	4, 0x0
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.section	.lbss,"awl",@nobits
	.p2align	3, 0x0
seed:
	.quad	0                               # 0x0
	.size	seed, 8

	.type	__llvm_gcov_ctr,@object         # @__llvm_gcov_ctr
	.p2align	3, 0x0
__llvm_gcov_ctr:
	.zero	8
	.size	__llvm_gcov_ctr, 8

	.type	__llvm_gcov_ctr.1,@object       # @__llvm_gcov_ctr.1
	.p2align	3, 0x0
__llvm_gcov_ctr.1:
	.zero	8
	.size	__llvm_gcov_ctr.1, 8

	.type	__llvm_gcov_ctr.2,@object       # @__llvm_gcov_ctr.2
	.p2align	4, 0x0
__llvm_gcov_ctr.2:
	.zero	40
	.size	__llvm_gcov_ctr.2, 40

	.type	__llvm_gcov_ctr.3,@object       # @__llvm_gcov_ctr.3
	.p2align	4, 0x0
__llvm_gcov_ctr.3:
	.zero	40
	.size	__llvm_gcov_ctr.3, 40

	.type	__llvm_gcov_ctr.4,@object       # @__llvm_gcov_ctr.4
	.p2align	4, 0x0
__llvm_gcov_ctr.4:
	.zero	40
	.size	__llvm_gcov_ctr.4, 40

	.type	__llvm_gcov_ctr.5,@object       # @__llvm_gcov_ctr.5
	.p2align	4, 0x0
__llvm_gcov_ctr.5:
	.zero	40
	.size	__llvm_gcov_ctr.5, 40

	.type	__llvm_gcov_ctr.6,@object       # @__llvm_gcov_ctr.6
	.p2align	3, 0x0
__llvm_gcov_ctr.6:
	.zero	16
	.size	__llvm_gcov_ctr.6, 16

	.type	__llvm_gcov_ctr.7,@object       # @__llvm_gcov_ctr.7
	.p2align	4, 0x0
__llvm_gcov_ctr.7:
	.zero	24
	.size	__llvm_gcov_ctr.7, 24

	.type	__llvm_gcov_ctr.8,@object       # @__llvm_gcov_ctr.8
	.p2align	3, 0x0
__llvm_gcov_ctr.8:
	.zero	16
	.size	__llvm_gcov_ctr.8, 16

	.type	__llvm_gcov_ctr.9,@object       # @__llvm_gcov_ctr.9
	.p2align	3, 0x0
__llvm_gcov_ctr.9:
	.zero	16
	.size	__llvm_gcov_ctr.9, 16

	.type	__llvm_gcov_ctr.10,@object      # @__llvm_gcov_ctr.10
	.p2align	4, 0x0
__llvm_gcov_ctr.10:
	.zero	32
	.size	__llvm_gcov_ctr.10, 32

	.type	__llvm_gcov_ctr.11,@object      # @__llvm_gcov_ctr.11
	.p2align	4, 0x0
__llvm_gcov_ctr.11:
	.zero	24
	.size	__llvm_gcov_ctr.11, 24

	.type	__llvm_gcov_ctr.12,@object      # @__llvm_gcov_ctr.12
	.p2align	4, 0x0
__llvm_gcov_ctr.12:
	.zero	32
	.size	__llvm_gcov_ctr.12, 32

	.type	__llvm_gcov_ctr.13,@object      # @__llvm_gcov_ctr.13
	.p2align	3, 0x0
__llvm_gcov_ctr.13:
	.zero	16
	.size	__llvm_gcov_ctr.13, 16

	.type	__llvm_gcov_ctr.14,@object      # @__llvm_gcov_ctr.14
	.p2align	4, 0x0
__llvm_gcov_ctr.14:
	.zero	56
	.size	__llvm_gcov_ctr.14, 56

	.type	__llvm_gcov_ctr.15,@object      # @__llvm_gcov_ctr.15
	.p2align	3, 0x0
__llvm_gcov_ctr.15:
	.zero	16
	.size	__llvm_gcov_ctr.15, 16

	.type	__llvm_gcov_ctr.16,@object      # @__llvm_gcov_ctr.16
	.p2align	3, 0x0
__llvm_gcov_ctr.16:
	.zero	8
	.size	__llvm_gcov_ctr.16, 8

	.type	__llvm_gcov_ctr.17,@object      # @__llvm_gcov_ctr.17
	.p2align	3, 0x0
__llvm_gcov_ctr.17:
	.zero	8
	.size	__llvm_gcov_ctr.17, 8

	.type	__llvm_gcov_ctr.18,@object      # @__llvm_gcov_ctr.18
	.p2align	4, 0x0
__llvm_gcov_ctr.18:
	.zero	24
	.size	__llvm_gcov_ctr.18, 24

	.type	__llvm_gcov_ctr.19,@object      # @__llvm_gcov_ctr.19
	.p2align	4, 0x0
__llvm_gcov_ctr.19:
	.zero	24
	.size	__llvm_gcov_ctr.19, 24

	.type	__llvm_gcov_ctr.20,@object      # @__llvm_gcov_ctr.20
	.p2align	3, 0x0
__llvm_gcov_ctr.20:
	.zero	8
	.size	__llvm_gcov_ctr.20, 8

	.type	__llvm_gcov_ctr.21,@object      # @__llvm_gcov_ctr.21
	.p2align	3, 0x0
__llvm_gcov_ctr.21:
	.zero	8
	.size	__llvm_gcov_ctr.21, 8

	.type	__llvm_gcov_ctr.22,@object      # @__llvm_gcov_ctr.22
	.p2align	3, 0x0
__llvm_gcov_ctr.22:
	.zero	8
	.size	__llvm_gcov_ctr.22, 8

	.type	__llvm_gcov_ctr.23,@object      # @__llvm_gcov_ctr.23
	.p2align	3, 0x0
__llvm_gcov_ctr.23:
	.zero	8
	.size	__llvm_gcov_ctr.23, 8

	.type	__llvm_gcov_ctr.24,@object      # @__llvm_gcov_ctr.24
	.p2align	4, 0x0
__llvm_gcov_ctr.24:
	.zero	24
	.size	__llvm_gcov_ctr.24, 24

	.type	__llvm_gcov_ctr.25,@object      # @__llvm_gcov_ctr.25
	.p2align	3, 0x0
__llvm_gcov_ctr.25:
	.zero	8
	.size	__llvm_gcov_ctr.25, 8

	.type	__llvm_gcov_ctr.26,@object      # @__llvm_gcov_ctr.26
	.p2align	4, 0x0
__llvm_gcov_ctr.26:
	.zero	40
	.size	__llvm_gcov_ctr.26, 40

	.type	__llvm_gcov_ctr.27,@object      # @__llvm_gcov_ctr.27
	.p2align	3, 0x0
__llvm_gcov_ctr.27:
	.zero	8
	.size	__llvm_gcov_ctr.27, 8

	.type	__llvm_gcov_ctr.28,@object      # @__llvm_gcov_ctr.28
	.p2align	4, 0x0
__llvm_gcov_ctr.28:
	.zero	56
	.size	__llvm_gcov_ctr.28, 56

	.type	__llvm_gcov_ctr.29,@object      # @__llvm_gcov_ctr.29
	.p2align	4, 0x0
__llvm_gcov_ctr.29:
	.zero	24
	.size	__llvm_gcov_ctr.29, 24

	.type	__llvm_gcov_ctr.30,@object      # @__llvm_gcov_ctr.30
	.p2align	3, 0x0
__llvm_gcov_ctr.30:
	.zero	8
	.size	__llvm_gcov_ctr.30, 8

	.type	__llvm_gcov_ctr.31,@object      # @__llvm_gcov_ctr.31
	.p2align	4, 0x0
__llvm_gcov_ctr.31:
	.zero	32
	.size	__llvm_gcov_ctr.31, 32

	.type	__llvm_gcov_ctr.32,@object      # @__llvm_gcov_ctr.32
	.p2align	4, 0x0
__llvm_gcov_ctr.32:
	.zero	32
	.size	__llvm_gcov_ctr.32, 32

	.type	__llvm_gcov_ctr.33,@object      # @__llvm_gcov_ctr.33
	.p2align	4, 0x0
__llvm_gcov_ctr.33:
	.zero	48
	.size	__llvm_gcov_ctr.33, 48

	.type	__llvm_gcov_ctr.34,@object      # @__llvm_gcov_ctr.34
	.p2align	4, 0x0
__llvm_gcov_ctr.34:
	.zero	48
	.size	__llvm_gcov_ctr.34, 48

	.type	__llvm_gcov_ctr.35,@object      # @__llvm_gcov_ctr.35
	.p2align	4, 0x0
__llvm_gcov_ctr.35:
	.zero	48
	.size	__llvm_gcov_ctr.35, 48

	.type	__llvm_gcov_ctr.36,@object      # @__llvm_gcov_ctr.36
	.p2align	4, 0x0
__llvm_gcov_ctr.36:
	.zero	48
	.size	__llvm_gcov_ctr.36, 48

	.type	__llvm_gcov_ctr.37,@object      # @__llvm_gcov_ctr.37
	.p2align	4, 0x0
__llvm_gcov_ctr.37:
	.zero	48
	.size	__llvm_gcov_ctr.37, 48

	.type	__llvm_gcov_ctr.38,@object      # @__llvm_gcov_ctr.38
	.p2align	4, 0x0
__llvm_gcov_ctr.38:
	.zero	48
	.size	__llvm_gcov_ctr.38, 48

	.type	__llvm_gcov_ctr.39,@object      # @__llvm_gcov_ctr.39
	.p2align	3, 0x0
__llvm_gcov_ctr.39:
	.zero	16
	.size	__llvm_gcov_ctr.39, 16

	.type	__llvm_gcov_ctr.40,@object      # @__llvm_gcov_ctr.40
	.p2align	3, 0x0
__llvm_gcov_ctr.40:
	.zero	8
	.size	__llvm_gcov_ctr.40, 8

	.type	__llvm_gcov_ctr.41,@object      # @__llvm_gcov_ctr.41
	.p2align	3, 0x0
__llvm_gcov_ctr.41:
	.zero	8
	.size	__llvm_gcov_ctr.41, 8

	.type	__llvm_gcov_ctr.42,@object      # @__llvm_gcov_ctr.42
	.p2align	4, 0x0
__llvm_gcov_ctr.42:
	.zero	24
	.size	__llvm_gcov_ctr.42, 24

	.type	__llvm_gcov_ctr.43,@object      # @__llvm_gcov_ctr.43
	.p2align	4, 0x0
__llvm_gcov_ctr.43:
	.zero	24
	.size	__llvm_gcov_ctr.43, 24

	.type	__llvm_gcov_ctr.44,@object      # @__llvm_gcov_ctr.44
	.p2align	4, 0x0
__llvm_gcov_ctr.44:
	.zero	24
	.size	__llvm_gcov_ctr.44, 24

	.type	__llvm_gcov_ctr.45,@object      # @__llvm_gcov_ctr.45
	.p2align	4, 0x0
__llvm_gcov_ctr.45:
	.zero	24
	.size	__llvm_gcov_ctr.45, 24

	.type	__llvm_gcov_ctr.46,@object      # @__llvm_gcov_ctr.46
	.p2align	3, 0x0
__llvm_gcov_ctr.46:
	.zero	16
	.size	__llvm_gcov_ctr.46, 16

	.type	__llvm_gcov_ctr.47,@object      # @__llvm_gcov_ctr.47
	.p2align	4, 0x0
__llvm_gcov_ctr.47:
	.zero	48
	.size	__llvm_gcov_ctr.47, 48

	.type	__llvm_gcov_ctr.48,@object      # @__llvm_gcov_ctr.48
	.p2align	4, 0x0
__llvm_gcov_ctr.48:
	.zero	48
	.size	__llvm_gcov_ctr.48, 48

	.type	__llvm_gcov_ctr.49,@object      # @__llvm_gcov_ctr.49
	.p2align	4, 0x0
__llvm_gcov_ctr.49:
	.zero	48
	.size	__llvm_gcov_ctr.49, 48

	.type	__llvm_gcov_ctr.50,@object      # @__llvm_gcov_ctr.50
	.p2align	4, 0x0
__llvm_gcov_ctr.50:
	.zero	32
	.size	__llvm_gcov_ctr.50, 32

	.type	__llvm_gcov_ctr.51,@object      # @__llvm_gcov_ctr.51
	.p2align	4, 0x0
__llvm_gcov_ctr.51:
	.zero	32
	.size	__llvm_gcov_ctr.51, 32

	.type	__llvm_gcov_ctr.52,@object      # @__llvm_gcov_ctr.52
	.p2align	3, 0x0
__llvm_gcov_ctr.52:
	.zero	8
	.size	__llvm_gcov_ctr.52, 8

	.type	__llvm_gcov_ctr.53,@object      # @__llvm_gcov_ctr.53
	.p2align	3, 0x0
__llvm_gcov_ctr.53:
	.zero	16
	.size	__llvm_gcov_ctr.53, 16

	.type	__llvm_gcov_ctr.54,@object      # @__llvm_gcov_ctr.54
	.p2align	3, 0x0
__llvm_gcov_ctr.54:
	.zero	8
	.size	__llvm_gcov_ctr.54, 8

	.type	__llvm_gcov_ctr.55,@object      # @__llvm_gcov_ctr.55
	.p2align	3, 0x0
__llvm_gcov_ctr.55:
	.zero	16
	.size	__llvm_gcov_ctr.55, 16

	.type	__llvm_gcov_ctr.56,@object      # @__llvm_gcov_ctr.56
	.p2align	3, 0x0
__llvm_gcov_ctr.56:
	.zero	8
	.size	__llvm_gcov_ctr.56, 8

	.type	__llvm_gcov_ctr.57,@object      # @__llvm_gcov_ctr.57
	.p2align	3, 0x0
__llvm_gcov_ctr.57:
	.zero	16
	.size	__llvm_gcov_ctr.57, 16

	.type	__llvm_gcov_ctr.58,@object      # @__llvm_gcov_ctr.58
	.p2align	3, 0x0
__llvm_gcov_ctr.58:
	.zero	8
	.size	__llvm_gcov_ctr.58, 8

	.type	__llvm_gcov_ctr.59,@object      # @__llvm_gcov_ctr.59
	.p2align	4, 0x0
__llvm_gcov_ctr.59:
	.zero	40
	.size	__llvm_gcov_ctr.59, 40

	.type	__llvm_gcov_ctr.60,@object      # @__llvm_gcov_ctr.60
	.p2align	4, 0x0
__llvm_gcov_ctr.60:
	.zero	48
	.size	__llvm_gcov_ctr.60, 48

	.type	__llvm_gcov_ctr.61,@object      # @__llvm_gcov_ctr.61
	.p2align	3, 0x0
__llvm_gcov_ctr.61:
	.zero	16
	.size	__llvm_gcov_ctr.61, 16

	.type	__llvm_gcov_ctr.62,@object      # @__llvm_gcov_ctr.62
	.p2align	3, 0x0
__llvm_gcov_ctr.62:
	.zero	16
	.size	__llvm_gcov_ctr.62, 16

	.type	__llvm_gcov_ctr.63,@object      # @__llvm_gcov_ctr.63
	.p2align	4, 0x0
__llvm_gcov_ctr.63:
	.zero	64
	.size	__llvm_gcov_ctr.63, 64

	.type	__llvm_gcov_ctr.64,@object      # @__llvm_gcov_ctr.64
	.p2align	4, 0x0
__llvm_gcov_ctr.64:
	.zero	40
	.size	__llvm_gcov_ctr.64, 40

	.type	__llvm_gcov_ctr.65,@object      # @__llvm_gcov_ctr.65
	.p2align	4, 0x0
__llvm_gcov_ctr.65:
	.zero	48
	.size	__llvm_gcov_ctr.65, 48

	.type	__llvm_gcov_ctr.66,@object      # @__llvm_gcov_ctr.66
	.p2align	3, 0x0
__llvm_gcov_ctr.66:
	.zero	16
	.size	__llvm_gcov_ctr.66, 16

	.type	__llvm_gcov_ctr.67,@object      # @__llvm_gcov_ctr.67
	.p2align	4, 0x0
__llvm_gcov_ctr.67:
	.zero	40
	.size	__llvm_gcov_ctr.67, 40

	.type	__llvm_gcov_ctr.68,@object      # @__llvm_gcov_ctr.68
	.p2align	3, 0x0
__llvm_gcov_ctr.68:
	.zero	16
	.size	__llvm_gcov_ctr.68, 16

	.type	__llvm_gcov_ctr.69,@object      # @__llvm_gcov_ctr.69
	.p2align	4, 0x0
__llvm_gcov_ctr.69:
	.zero	40
	.size	__llvm_gcov_ctr.69, 40

	.type	__llvm_gcov_ctr.70,@object      # @__llvm_gcov_ctr.70
	.p2align	3, 0x0
__llvm_gcov_ctr.70:
	.zero	8
	.size	__llvm_gcov_ctr.70, 8

	.type	__llvm_gcov_ctr.71,@object      # @__llvm_gcov_ctr.71
	.p2align	3, 0x0
__llvm_gcov_ctr.71:
	.zero	8
	.size	__llvm_gcov_ctr.71, 8

	.type	__llvm_gcov_ctr.72,@object      # @__llvm_gcov_ctr.72
	.p2align	3, 0x0
__llvm_gcov_ctr.72:
	.zero	8
	.size	__llvm_gcov_ctr.72, 8

	.type	__llvm_gcov_ctr.73,@object      # @__llvm_gcov_ctr.73
	.p2align	3, 0x0
__llvm_gcov_ctr.73:
	.zero	8
	.size	__llvm_gcov_ctr.73, 8

	.type	__llvm_gcov_ctr.74,@object      # @__llvm_gcov_ctr.74
	.p2align	3, 0x0
__llvm_gcov_ctr.74:
	.zero	8
	.size	__llvm_gcov_ctr.74, 8

	.type	__llvm_gcov_ctr.75,@object      # @__llvm_gcov_ctr.75
	.p2align	3, 0x0
__llvm_gcov_ctr.75:
	.zero	8
	.size	__llvm_gcov_ctr.75, 8

	.type	__llvm_gcov_ctr.76,@object      # @__llvm_gcov_ctr.76
	.p2align	3, 0x0
__llvm_gcov_ctr.76:
	.zero	8
	.size	__llvm_gcov_ctr.76, 8

	.type	__llvm_gcov_ctr.77,@object      # @__llvm_gcov_ctr.77
	.p2align	3, 0x0
__llvm_gcov_ctr.77:
	.zero	8
	.size	__llvm_gcov_ctr.77, 8

	.type	__llvm_gcov_ctr.78,@object      # @__llvm_gcov_ctr.78
	.p2align	3, 0x0
__llvm_gcov_ctr.78:
	.zero	8
	.size	__llvm_gcov_ctr.78, 8

	.type	__llvm_gcov_ctr.79,@object      # @__llvm_gcov_ctr.79
	.p2align	3, 0x0
__llvm_gcov_ctr.79:
	.zero	8
	.size	__llvm_gcov_ctr.79, 8

	.type	__llvm_gcov_ctr.80,@object      # @__llvm_gcov_ctr.80
	.p2align	3, 0x0
__llvm_gcov_ctr.80:
	.zero	8
	.size	__llvm_gcov_ctr.80, 8

	.type	__llvm_gcov_ctr.81,@object      # @__llvm_gcov_ctr.81
	.p2align	3, 0x0
__llvm_gcov_ctr.81:
	.zero	8
	.size	__llvm_gcov_ctr.81, 8

	.type	__llvm_gcov_ctr.82,@object      # @__llvm_gcov_ctr.82
	.p2align	3, 0x0
__llvm_gcov_ctr.82:
	.zero	8
	.size	__llvm_gcov_ctr.82, 8

	.type	__llvm_gcov_ctr.83,@object      # @__llvm_gcov_ctr.83
	.p2align	4, 0x0
__llvm_gcov_ctr.83:
	.zero	24
	.size	__llvm_gcov_ctr.83, 24

	.type	__llvm_gcov_ctr.84,@object      # @__llvm_gcov_ctr.84
	.p2align	4, 0x0
__llvm_gcov_ctr.84:
	.zero	24
	.size	__llvm_gcov_ctr.84, 24

	.type	__llvm_gcov_ctr.85,@object      # @__llvm_gcov_ctr.85
	.p2align	4, 0x0
__llvm_gcov_ctr.85:
	.zero	24
	.size	__llvm_gcov_ctr.85, 24

	.type	__llvm_gcov_ctr.86,@object      # @__llvm_gcov_ctr.86
	.p2align	4, 0x0
__llvm_gcov_ctr.86:
	.zero	24
	.size	__llvm_gcov_ctr.86, 24

	.type	__llvm_gcov_ctr.87,@object      # @__llvm_gcov_ctr.87
	.p2align	4, 0x0
__llvm_gcov_ctr.87:
	.zero	24
	.size	__llvm_gcov_ctr.87, 24

	.type	__llvm_gcov_ctr.88,@object      # @__llvm_gcov_ctr.88
	.p2align	3, 0x0
__llvm_gcov_ctr.88:
	.zero	8
	.size	__llvm_gcov_ctr.88, 8

	.type	__llvm_gcov_ctr.89,@object      # @__llvm_gcov_ctr.89
	.p2align	4, 0x0
__llvm_gcov_ctr.89:
	.zero	40
	.size	__llvm_gcov_ctr.89, 40

	.type	__llvm_gcov_ctr.90,@object      # @__llvm_gcov_ctr.90
	.p2align	4, 0x0
__llvm_gcov_ctr.90:
	.zero	40
	.size	__llvm_gcov_ctr.90, 40

	.type	__llvm_gcov_ctr.91,@object      # @__llvm_gcov_ctr.91
	.p2align	4, 0x0
__llvm_gcov_ctr.91:
	.zero	40
	.size	__llvm_gcov_ctr.91, 40

	.type	__llvm_gcov_ctr.92,@object      # @__llvm_gcov_ctr.92
	.p2align	3, 0x0
__llvm_gcov_ctr.92:
	.zero	16
	.size	__llvm_gcov_ctr.92, 16

	.type	__llvm_gcov_ctr.93,@object      # @__llvm_gcov_ctr.93
	.p2align	4, 0x0
__llvm_gcov_ctr.93:
	.zero	40
	.size	__llvm_gcov_ctr.93, 40

	.type	__llvm_gcov_ctr.94,@object      # @__llvm_gcov_ctr.94
	.p2align	4, 0x0
__llvm_gcov_ctr.94:
	.zero	32
	.size	__llvm_gcov_ctr.94, 32

	.type	__llvm_gcov_ctr.95,@object      # @__llvm_gcov_ctr.95
	.p2align	4, 0x0
__llvm_gcov_ctr.95:
	.zero	32
	.size	__llvm_gcov_ctr.95, 32

	.type	__llvm_gcov_ctr.96,@object      # @__llvm_gcov_ctr.96
	.p2align	4, 0x0
__llvm_gcov_ctr.96:
	.zero	24
	.size	__llvm_gcov_ctr.96, 24

	.type	__llvm_gcov_ctr.97,@object      # @__llvm_gcov_ctr.97
	.p2align	4, 0x0
__llvm_gcov_ctr.97:
	.zero	32
	.size	__llvm_gcov_ctr.97, 32

	.type	__llvm_gcov_ctr.98,@object      # @__llvm_gcov_ctr.98
	.p2align	4, 0x0
__llvm_gcov_ctr.98:
	.zero	40
	.size	__llvm_gcov_ctr.98, 40

	.type	__llvm_gcov_ctr.99,@object      # @__llvm_gcov_ctr.99
	.p2align	4, 0x0
__llvm_gcov_ctr.99:
	.zero	48
	.size	__llvm_gcov_ctr.99, 48

	.type	__llvm_gcov_ctr.100,@object     # @__llvm_gcov_ctr.100
	.p2align	3, 0x0
__llvm_gcov_ctr.100:
	.zero	8
	.size	__llvm_gcov_ctr.100, 8

	.type	__llvm_gcov_ctr.101,@object     # @__llvm_gcov_ctr.101
	.p2align	4, 0x0
__llvm_gcov_ctr.101:
	.zero	64
	.size	__llvm_gcov_ctr.101, 64

	.type	__llvm_gcov_ctr.102,@object     # @__llvm_gcov_ctr.102
	.p2align	4, 0x0
__llvm_gcov_ctr.102:
	.zero	24
	.size	__llvm_gcov_ctr.102, 24

	.type	__llvm_gcov_ctr.103,@object     # @__llvm_gcov_ctr.103
	.p2align	4, 0x0
__llvm_gcov_ctr.103:
	.zero	64
	.size	__llvm_gcov_ctr.103, 64

	.type	__llvm_gcov_ctr.104,@object     # @__llvm_gcov_ctr.104
	.p2align	4, 0x0
__llvm_gcov_ctr.104:
	.zero	24
	.size	__llvm_gcov_ctr.104, 24

	.type	__llvm_gcov_ctr.105,@object     # @__llvm_gcov_ctr.105
	.p2align	4, 0x0
__llvm_gcov_ctr.105:
	.zero	24
	.size	__llvm_gcov_ctr.105, 24

	.type	__llvm_gcov_ctr.106,@object     # @__llvm_gcov_ctr.106
	.p2align	4, 0x0
__llvm_gcov_ctr.106:
	.zero	24
	.size	__llvm_gcov_ctr.106, 24

	.type	__llvm_gcov_ctr.107,@object     # @__llvm_gcov_ctr.107
	.p2align	4, 0x0
__llvm_gcov_ctr.107:
	.zero	48
	.size	__llvm_gcov_ctr.107, 48

	.type	__llvm_gcov_ctr.108,@object     # @__llvm_gcov_ctr.108
	.p2align	4, 0x0
__llvm_gcov_ctr.108:
	.zero	48
	.size	__llvm_gcov_ctr.108, 48

	.type	__llvm_gcov_ctr.109,@object     # @__llvm_gcov_ctr.109
	.p2align	4, 0x0
__llvm_gcov_ctr.109:
	.zero	48
	.size	__llvm_gcov_ctr.109, 48

	.type	__llvm_gcov_ctr.110,@object     # @__llvm_gcov_ctr.110
	.p2align	3, 0x0
__llvm_gcov_ctr.110:
	.zero	8
	.size	__llvm_gcov_ctr.110, 8

	.type	__llvm_gcov_ctr.111,@object     # @__llvm_gcov_ctr.111
	.p2align	3, 0x0
__llvm_gcov_ctr.111:
	.zero	8
	.size	__llvm_gcov_ctr.111, 8

	.type	__llvm_gcov_ctr.112,@object     # @__llvm_gcov_ctr.112
	.p2align	3, 0x0
__llvm_gcov_ctr.112:
	.zero	8
	.size	__llvm_gcov_ctr.112, 8

	.type	__llvm_gcov_ctr.113,@object     # @__llvm_gcov_ctr.113
	.p2align	3, 0x0
__llvm_gcov_ctr.113:
	.zero	8
	.size	__llvm_gcov_ctr.113, 8

	.type	__llvm_gcov_ctr.114,@object     # @__llvm_gcov_ctr.114
	.p2align	3, 0x0
__llvm_gcov_ctr.114:
	.zero	8
	.size	__llvm_gcov_ctr.114, 8

	.type	__llvm_gcov_ctr.115,@object     # @__llvm_gcov_ctr.115
	.p2align	3, 0x0
__llvm_gcov_ctr.115:
	.zero	8
	.size	__llvm_gcov_ctr.115, 8

	.type	__llvm_gcov_ctr.116,@object     # @__llvm_gcov_ctr.116
	.p2align	4, 0x0
__llvm_gcov_ctr.116:
	.zero	24
	.size	__llvm_gcov_ctr.116, 24

	.type	__llvm_gcov_ctr.117,@object     # @__llvm_gcov_ctr.117
	.p2align	4, 0x0
__llvm_gcov_ctr.117:
	.zero	24
	.size	__llvm_gcov_ctr.117, 24

	.type	__llvm_gcov_ctr.118,@object     # @__llvm_gcov_ctr.118
	.p2align	3, 0x0
__llvm_gcov_ctr.118:
	.zero	16
	.size	__llvm_gcov_ctr.118, 16

	.type	__llvm_gcov_ctr.119,@object     # @__llvm_gcov_ctr.119
	.p2align	4, 0x0
__llvm_gcov_ctr.119:
	.zero	24
	.size	__llvm_gcov_ctr.119, 24

	.type	__llvm_gcov_ctr.120,@object     # @__llvm_gcov_ctr.120
	.p2align	4, 0x0
__llvm_gcov_ctr.120:
	.zero	24
	.size	__llvm_gcov_ctr.120, 24

	.type	__llvm_gcov_ctr.121,@object     # @__llvm_gcov_ctr.121
	.p2align	4, 0x0
__llvm_gcov_ctr.121:
	.zero	24
	.size	__llvm_gcov_ctr.121, 24

	.type	__llvm_gcov_ctr.122,@object     # @__llvm_gcov_ctr.122
	.p2align	4, 0x0
__llvm_gcov_ctr.122:
	.zero	32
	.size	__llvm_gcov_ctr.122, 32

	.type	__llvm_gcov_ctr.123,@object     # @__llvm_gcov_ctr.123
	.p2align	4, 0x0
__llvm_gcov_ctr.123:
	.zero	64
	.size	__llvm_gcov_ctr.123, 64

	.type	__llvm_gcov_ctr.124,@object     # @__llvm_gcov_ctr.124
	.p2align	4, 0x0
__llvm_gcov_ctr.124:
	.zero	24
	.size	__llvm_gcov_ctr.124, 24

	.type	__llvm_gcov_ctr.125,@object     # @__llvm_gcov_ctr.125
	.p2align	4, 0x0
__llvm_gcov_ctr.125:
	.zero	24
	.size	__llvm_gcov_ctr.125, 24

	.type	__llvm_gcov_ctr.126,@object     # @__llvm_gcov_ctr.126
	.p2align	3, 0x0
__llvm_gcov_ctr.126:
	.zero	8
	.size	__llvm_gcov_ctr.126, 8

	.type	__llvm_gcov_ctr.127,@object     # @__llvm_gcov_ctr.127
	.p2align	3, 0x0
__llvm_gcov_ctr.127:
	.zero	8
	.size	__llvm_gcov_ctr.127, 8

	.type	__llvm_gcov_ctr.128,@object     # @__llvm_gcov_ctr.128
	.p2align	4, 0x0
__llvm_gcov_ctr.128:
	.zero	56
	.size	__llvm_gcov_ctr.128, 56

	.type	__llvm_gcov_ctr.129,@object     # @__llvm_gcov_ctr.129
	.p2align	4, 0x0
__llvm_gcov_ctr.129:
	.zero	32
	.size	__llvm_gcov_ctr.129, 32

	.type	__llvm_gcov_ctr.130,@object     # @__llvm_gcov_ctr.130
	.p2align	4, 0x0
__llvm_gcov_ctr.130:
	.zero	32
	.size	__llvm_gcov_ctr.130, 32

	.type	__llvm_gcov_ctr.131,@object     # @__llvm_gcov_ctr.131
	.p2align	4, 0x0
__llvm_gcov_ctr.131:
	.zero	64
	.size	__llvm_gcov_ctr.131, 64

	.type	__llvm_gcov_ctr.132,@object     # @__llvm_gcov_ctr.132
	.p2align	4, 0x0
__llvm_gcov_ctr.132:
	.zero	64
	.size	__llvm_gcov_ctr.132, 64

	.type	__llvm_gcov_ctr.133,@object     # @__llvm_gcov_ctr.133
	.p2align	4, 0x0
__llvm_gcov_ctr.133:
	.zero	24
	.size	__llvm_gcov_ctr.133, 24

	.type	__llvm_gcov_ctr.134,@object     # @__llvm_gcov_ctr.134
	.p2align	4, 0x0
__llvm_gcov_ctr.134:
	.zero	24
	.size	__llvm_gcov_ctr.134, 24

	.type	__llvm_gcov_ctr.135,@object     # @__llvm_gcov_ctr.135
	.p2align	4, 0x0
__llvm_gcov_ctr.135:
	.zero	24
	.size	__llvm_gcov_ctr.135, 24

	.type	__llvm_gcov_ctr.136,@object     # @__llvm_gcov_ctr.136
	.p2align	4, 0x0
__llvm_gcov_ctr.136:
	.zero	24
	.size	__llvm_gcov_ctr.136, 24

	.type	__llvm_gcov_ctr.137,@object     # @__llvm_gcov_ctr.137
	.p2align	3, 0x0
__llvm_gcov_ctr.137:
	.zero	8
	.size	__llvm_gcov_ctr.137, 8

	.type	__llvm_gcov_ctr.138,@object     # @__llvm_gcov_ctr.138
	.p2align	3, 0x0
__llvm_gcov_ctr.138:
	.zero	8
	.size	__llvm_gcov_ctr.138, 8

	.type	__llvm_gcov_ctr.139,@object     # @__llvm_gcov_ctr.139
	.p2align	3, 0x0
__llvm_gcov_ctr.139:
	.zero	8
	.size	__llvm_gcov_ctr.139, 8

	.type	__llvm_gcov_ctr.140,@object     # @__llvm_gcov_ctr.140
	.p2align	3, 0x0
__llvm_gcov_ctr.140:
	.zero	8
	.size	__llvm_gcov_ctr.140, 8

	.type	__llvm_gcov_ctr.141,@object     # @__llvm_gcov_ctr.141
	.p2align	4, 0x0
__llvm_gcov_ctr.141:
	.zero	40
	.size	__llvm_gcov_ctr.141, 40

	.type	__llvm_gcov_ctr.142,@object     # @__llvm_gcov_ctr.142
	.p2align	3, 0x0
__llvm_gcov_ctr.142:
	.zero	8
	.size	__llvm_gcov_ctr.142, 8

	.type	__llvm_gcov_ctr.143,@object     # @__llvm_gcov_ctr.143
	.p2align	4, 0x0
__llvm_gcov_ctr.143:
	.zero	40
	.size	__llvm_gcov_ctr.143, 40

	.type	__llvm_gcov_ctr.144,@object     # @__llvm_gcov_ctr.144
	.p2align	3, 0x0
__llvm_gcov_ctr.144:
	.zero	8
	.size	__llvm_gcov_ctr.144, 8

	.type	__llvm_gcov_ctr.145,@object     # @__llvm_gcov_ctr.145
	.p2align	3, 0x0
__llvm_gcov_ctr.145:
	.zero	8
	.size	__llvm_gcov_ctr.145, 8

	.type	__llvm_gcov_ctr.146,@object     # @__llvm_gcov_ctr.146
	.p2align	4, 0x0
__llvm_gcov_ctr.146:
	.zero	24
	.size	__llvm_gcov_ctr.146, 24

	.type	__llvm_gcov_ctr.147,@object     # @__llvm_gcov_ctr.147
	.p2align	4, 0x0
__llvm_gcov_ctr.147:
	.zero	24
	.size	__llvm_gcov_ctr.147, 24

	.type	__llvm_gcov_ctr.148,@object     # @__llvm_gcov_ctr.148
	.p2align	4, 0x0
__llvm_gcov_ctr.148:
	.zero	24
	.size	__llvm_gcov_ctr.148, 24

	.type	__llvm_gcov_ctr.149,@object     # @__llvm_gcov_ctr.149
	.p2align	3, 0x0
__llvm_gcov_ctr.149:
	.zero	8
	.size	__llvm_gcov_ctr.149, 8

	.type	__llvm_gcov_ctr.150,@object     # @__llvm_gcov_ctr.150
	.p2align	3, 0x0
__llvm_gcov_ctr.150:
	.zero	8
	.size	__llvm_gcov_ctr.150, 8

	.type	__llvm_gcov_ctr.151,@object     # @__llvm_gcov_ctr.151
	.p2align	3, 0x0
__llvm_gcov_ctr.151:
	.zero	8
	.size	__llvm_gcov_ctr.151, 8

	.type	__llvm_gcov_ctr.152,@object     # @__llvm_gcov_ctr.152
	.p2align	3, 0x0
__llvm_gcov_ctr.152:
	.zero	8
	.size	__llvm_gcov_ctr.152, 8

	.type	__llvm_gcov_ctr.153,@object     # @__llvm_gcov_ctr.153
	.p2align	3, 0x0
__llvm_gcov_ctr.153:
	.zero	8
	.size	__llvm_gcov_ctr.153, 8

	.type	__llvm_gcov_ctr.154,@object     # @__llvm_gcov_ctr.154
	.p2align	3, 0x0
__llvm_gcov_ctr.154:
	.zero	8
	.size	__llvm_gcov_ctr.154, 8

	.type	__llvm_gcov_ctr.155,@object     # @__llvm_gcov_ctr.155
	.p2align	3, 0x0
__llvm_gcov_ctr.155:
	.zero	8
	.size	__llvm_gcov_ctr.155, 8

	.type	__llvm_gcov_ctr.156,@object     # @__llvm_gcov_ctr.156
	.p2align	3, 0x0
__llvm_gcov_ctr.156:
	.zero	8
	.size	__llvm_gcov_ctr.156, 8

	.type	__llvm_gcov_ctr.157,@object     # @__llvm_gcov_ctr.157
	.p2align	3, 0x0
__llvm_gcov_ctr.157:
	.zero	8
	.size	__llvm_gcov_ctr.157, 8

	.type	__llvm_gcov_ctr.158,@object     # @__llvm_gcov_ctr.158
	.p2align	3, 0x0
__llvm_gcov_ctr.158:
	.zero	8
	.size	__llvm_gcov_ctr.158, 8

	.type	__llvm_gcov_ctr.159,@object     # @__llvm_gcov_ctr.159
	.p2align	3, 0x0
__llvm_gcov_ctr.159:
	.zero	8
	.size	__llvm_gcov_ctr.159, 8

	.type	__llvm_gcov_ctr.160,@object     # @__llvm_gcov_ctr.160
	.p2align	3, 0x0
__llvm_gcov_ctr.160:
	.zero	8
	.size	__llvm_gcov_ctr.160, 8

	.type	__llvm_gcov_ctr.161,@object     # @__llvm_gcov_ctr.161
	.p2align	4, 0x0
__llvm_gcov_ctr.161:
	.zero	32
	.size	__llvm_gcov_ctr.161, 32

	.type	__llvm_gcov_ctr.162,@object     # @__llvm_gcov_ctr.162
	.p2align	4, 0x0
__llvm_gcov_ctr.162:
	.zero	32
	.size	__llvm_gcov_ctr.162, 32

	.type	__llvm_gcov_ctr.163,@object     # @__llvm_gcov_ctr.163
	.p2align	4, 0x0
__llvm_gcov_ctr.163:
	.zero	40
	.size	__llvm_gcov_ctr.163, 40

	.type	__llvm_gcov_ctr.164,@object     # @__llvm_gcov_ctr.164
	.p2align	3, 0x0
__llvm_gcov_ctr.164:
	.zero	8
	.size	__llvm_gcov_ctr.164, 8

	.type	__llvm_gcov_ctr.165,@object     # @__llvm_gcov_ctr.165
	.p2align	4, 0x0
__llvm_gcov_ctr.165:
	.zero	40
	.size	__llvm_gcov_ctr.165, 40

	.type	.L__unnamed_1,@object           # @0
	.section	.lrodata.str1.1,"aMSl",@progbits,1
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-x86_64.gcda"
	.size	.L__unnamed_1, 50

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.lrodata,"al",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.long	0                               # 0x0
	.long	3759012176                      # 0xe00df950
	.long	2102079853                      # 0x7d4b316d
	.long	1                               # 0x1
	.long	3518812481                      # 0xd1bcd141
	.long	2102079853                      # 0x7d4b316d
	.long	2                               # 0x2
	.long	560687177                       # 0x216b6849
	.long	2102079853                      # 0x7d4b316d
	.long	3                               # 0x3
	.long	1589591758                      # 0x5ebf3ece
	.long	2102079853                      # 0x7d4b316d
	.long	4                               # 0x4
	.long	2176136383                      # 0x81b534bf
	.long	2102079853                      # 0x7d4b316d
	.long	5                               # 0x5
	.long	3586625172                      # 0xd5c78e94
	.long	2102079853                      # 0x7d4b316d
	.long	6                               # 0x6
	.long	2323119728                      # 0x8a77fe70
	.long	2102079853                      # 0x7d4b316d
	.long	7                               # 0x7
	.long	2314569740                      # 0x89f5880c
	.long	2102079853                      # 0x7d4b316d
	.long	8                               # 0x8
	.long	2833673551                      # 0xa8e66d4f
	.long	2102079853                      # 0x7d4b316d
	.long	9                               # 0x9
	.long	1458633189                      # 0x56f0f9e5
	.long	2102079853                      # 0x7d4b316d
	.long	10                              # 0xa
	.long	1190300833                      # 0x46f28ca1
	.long	2102079853                      # 0x7d4b316d
	.long	11                              # 0xb
	.long	758327989                       # 0x2d332ab5
	.long	2102079853                      # 0x7d4b316d
	.long	12                              # 0xc
	.long	1651479037                      # 0x626f91fd
	.long	2102079853                      # 0x7d4b316d
	.long	13                              # 0xd
	.long	4132343275                      # 0xf64e8deb
	.long	2102079853                      # 0x7d4b316d
	.long	14                              # 0xe
	.long	734262523                       # 0x2bc3f4fb
	.long	2102079853                      # 0x7d4b316d
	.long	15                              # 0xf
	.long	2463424677                      # 0x92d4e0a5
	.long	2102079853                      # 0x7d4b316d
	.long	16                              # 0x10
	.long	1419026334                      # 0x54949f9e
	.long	2102079853                      # 0x7d4b316d
	.long	17                              # 0x11
	.long	3154471370                      # 0xbc0569ca
	.long	2102079853                      # 0x7d4b316d
	.long	18                              # 0x12
	.long	2077973487                      # 0x7bdb5bef
	.long	2102079853                      # 0x7d4b316d
	.long	19                              # 0x13
	.long	1474691227                      # 0x57e6009b
	.long	2102079853                      # 0x7d4b316d
	.long	20                              # 0x14
	.long	3710986016                      # 0xdd312720
	.long	2102079853                      # 0x7d4b316d
	.long	21                              # 0x15
	.long	1305101473                      # 0x4dca44a1
	.long	2102079853                      # 0x7d4b316d
	.long	22                              # 0x16
	.long	3762036564                      # 0xe03c1f54
	.long	2102079853                      # 0x7d4b316d
	.long	23                              # 0x17
	.long	477914433                       # 0x1c7c6541
	.long	2102079853                      # 0x7d4b316d
	.long	24                              # 0x18
	.long	3923035234                      # 0xe9d4c462
	.long	2102079853                      # 0x7d4b316d
	.long	25                              # 0x19
	.long	951651702                       # 0x38b90d76
	.long	2102079853                      # 0x7d4b316d
	.long	26                              # 0x1a
	.long	4206925919                      # 0xfac0985f
	.long	2102079853                      # 0x7d4b316d
	.long	27                              # 0x1b
	.long	32773942                        # 0x1f41736
	.long	2102079853                      # 0x7d4b316d
	.long	28                              # 0x1c
	.long	2877267246                      # 0xab7f9d2e
	.long	2102079853                      # 0x7d4b316d
	.long	29                              # 0x1d
	.long	860405771                       # 0x3348c00b
	.long	2102079853                      # 0x7d4b316d
	.long	30                              # 0x1e
	.long	815674877                       # 0x309e35fd
	.long	2102079853                      # 0x7d4b316d
	.long	31                              # 0x1f
	.long	1778838753                      # 0x6a06ece1
	.long	2102079853                      # 0x7d4b316d
	.long	32                              # 0x20
	.long	2718307199                      # 0xa206137f
	.long	2102079853                      # 0x7d4b316d
	.long	33                              # 0x21
	.long	856224820                       # 0x3308f434
	.long	2102079853                      # 0x7d4b316d
	.long	34                              # 0x22
	.long	1111195143                      # 0x423b7e07
	.long	2102079853                      # 0x7d4b316d
	.long	35                              # 0x23
	.long	1178414519                      # 0x463d2db7
	.long	2102079853                      # 0x7d4b316d
	.long	36                              # 0x24
	.long	3477640633                      # 0xcf4895b9
	.long	2102079853                      # 0x7d4b316d
	.long	37                              # 0x25
	.long	4294770115                      # 0xfffcfdc3
	.long	2102079853                      # 0x7d4b316d
	.long	38                              # 0x26
	.long	3650660234                      # 0xd998a78a
	.long	2102079853                      # 0x7d4b316d
	.long	39                              # 0x27
	.long	289327647                       # 0x113eca1f
	.long	2102079853                      # 0x7d4b316d
	.long	40                              # 0x28
	.long	2093612798                      # 0x7cc9fefe
	.long	2102079853                      # 0x7d4b316d
	.long	41                              # 0x29
	.long	4177956716                      # 0xf9068f6c
	.long	2102079853                      # 0x7d4b316d
	.long	42                              # 0x2a
	.long	3434808461                      # 0xccbb048d
	.long	2102079853                      # 0x7d4b316d
	.long	43                              # 0x2b
	.long	3206497114                      # 0xbf1f435a
	.long	2102079853                      # 0x7d4b316d
	.long	44                              # 0x2c
	.long	1537257434                      # 0x5ba0afda
	.long	2102079853                      # 0x7d4b316d
	.long	45                              # 0x2d
	.long	3028077325                      # 0xb47ccb0d
	.long	2102079853                      # 0x7d4b316d
	.long	46                              # 0x2e
	.long	1369848209                      # 0x51a63991
	.long	2102079853                      # 0x7d4b316d
	.long	47                              # 0x2f
	.long	938831176                       # 0x37f56d48
	.long	2102079853                      # 0x7d4b316d
	.long	48                              # 0x30
	.long	1663146323                      # 0x63219953
	.long	2102079853                      # 0x7d4b316d
	.long	49                              # 0x31
	.long	4111410217                      # 0xf50f2429
	.long	2102079853                      # 0x7d4b316d
	.long	50                              # 0x32
	.long	1475378556                      # 0x57f07d7c
	.long	2102079853                      # 0x7d4b316d
	.long	51                              # 0x33
	.long	3356195547                      # 0xc80b7adb
	.long	2102079853                      # 0x7d4b316d
	.long	52                              # 0x34
	.long	514931786                       # 0x1eb13c4a
	.long	2102079853                      # 0x7d4b316d
	.long	53                              # 0x35
	.long	2854034444                      # 0xaa1d1c0c
	.long	2102079853                      # 0x7d4b316d
	.long	54                              # 0x36
	.long	2747937306                      # 0xa3ca321a
	.long	2102079853                      # 0x7d4b316d
	.long	55                              # 0x37
	.long	4192776208                      # 0xf9e8b010
	.long	2102079853                      # 0x7d4b316d
	.long	56                              # 0x38
	.long	984436227                       # 0x3aad4e03
	.long	2102079853                      # 0x7d4b316d
	.long	57                              # 0x39
	.long	1477657574                      # 0x581343e6
	.long	2102079853                      # 0x7d4b316d
	.long	58                              # 0x3a
	.long	1339127973                      # 0x4fd178a5
	.long	2102079853                      # 0x7d4b316d
	.long	59                              # 0x3b
	.long	2960567906                      # 0xb076ae62
	.long	2102079853                      # 0x7d4b316d
	.long	60                              # 0x3c
	.long	3390076872                      # 0xca1077c8
	.long	2102079853                      # 0x7d4b316d
	.long	61                              # 0x3d
	.long	1543282230                      # 0x5bfc9e36
	.long	2102079853                      # 0x7d4b316d
	.long	62                              # 0x3e
	.long	2934101789                      # 0xaee2d71d
	.long	2102079853                      # 0x7d4b316d
	.long	63                              # 0x3f
	.long	3737986119                      # 0xdecd2447
	.long	2102079853                      # 0x7d4b316d
	.long	64                              # 0x40
	.long	49556427                        # 0x2f42bcb
	.long	2102079853                      # 0x7d4b316d
	.long	65                              # 0x41
	.long	234051526                       # 0xdf357c6
	.long	2102079853                      # 0x7d4b316d
	.long	66                              # 0x42
	.long	2341800126                      # 0x8b9508be
	.long	2102079853                      # 0x7d4b316d
	.long	67                              # 0x43
	.long	3256799948                      # 0xc21ed2cc
	.long	2102079853                      # 0x7d4b316d
	.long	68                              # 0x44
	.long	777295480                       # 0x2e549678
	.long	2102079853                      # 0x7d4b316d
	.long	69                              # 0x45
	.long	14040531                        # 0xd63dd3
	.long	2102079853                      # 0x7d4b316d
	.long	70                              # 0x46
	.long	8047973                         # 0x7acd65
	.long	2102079853                      # 0x7d4b316d
	.long	71                              # 0x47
	.long	719459161                       # 0x2ae21359
	.long	2102079853                      # 0x7d4b316d
	.long	72                              # 0x48
	.long	243358501                       # 0xe815b25
	.long	2102079853                      # 0x7d4b316d
	.long	73                              # 0x49
	.long	3262173932                      # 0xc270d2ec
	.long	2102079853                      # 0x7d4b316d
	.long	74                              # 0x4a
	.long	398910553                       # 0x17c6e459
	.long	2102079853                      # 0x7d4b316d
	.long	75                              # 0x4b
	.long	3354219739                      # 0xc7ed54db
	.long	2102079853                      # 0x7d4b316d
	.long	76                              # 0x4c
	.long	2570308788                      # 0x9933ccb4
	.long	2102079853                      # 0x7d4b316d
	.long	77                              # 0x4d
	.long	982429111                       # 0x3a8eadb7
	.long	2102079853                      # 0x7d4b316d
	.long	78                              # 0x4e
	.long	211491241                       # 0xc9b19a9
	.long	2102079853                      # 0x7d4b316d
	.long	79                              # 0x4f
	.long	1075683319                      # 0x401d9ff7
	.long	2102079853                      # 0x7d4b316d
	.long	80                              # 0x50
	.long	1886352651                      # 0x706f750b
	.long	2102079853                      # 0x7d4b316d
	.long	81                              # 0x51
	.long	248637203                       # 0xed1e713
	.long	2102079853                      # 0x7d4b316d
	.long	82                              # 0x52
	.long	703327087                       # 0x29ebeb6f
	.long	2102079853                      # 0x7d4b316d
	.long	83                              # 0x53
	.long	3690160730                      # 0xdbf3625a
	.long	2102079853                      # 0x7d4b316d
	.long	84                              # 0x54
	.long	787048238                       # 0x2ee9672e
	.long	2102079853                      # 0x7d4b316d
	.long	85                              # 0x55
	.long	1937497967                      # 0x737bdf6f
	.long	2102079853                      # 0x7d4b316d
	.long	86                              # 0x56
	.long	4205062514                      # 0xfaa42972
	.long	2102079853                      # 0x7d4b316d
	.long	87                              # 0x57
	.long	694462539                       # 0x2964a84b
	.long	2102079853                      # 0x7d4b316d
	.long	88                              # 0x58
	.long	85970907                        # 0x51fcfdb
	.long	2102079853                      # 0x7d4b316d
	.long	89                              # 0x59
	.long	3681984728                      # 0xdb76a0d8
	.long	2102079853                      # 0x7d4b316d
	.long	90                              # 0x5a
	.long	3620297642                      # 0xd7c95baa
	.long	2102079853                      # 0x7d4b316d
	.long	91                              # 0x5b
	.long	3394804480                      # 0xca589b00
	.long	2102079853                      # 0x7d4b316d
	.long	92                              # 0x5c
	.long	2119330183                      # 0x7e526987
	.long	2102079853                      # 0x7d4b316d
	.long	93                              # 0x5d
	.long	1963040266                      # 0x75019e0a
	.long	2102079853                      # 0x7d4b316d
	.long	94                              # 0x5e
	.long	1603391838                      # 0x5f91d15e
	.long	2102079853                      # 0x7d4b316d
	.long	95                              # 0x5f
	.long	2340921237                      # 0x8b879f95
	.long	2102079853                      # 0x7d4b316d
	.long	96                              # 0x60
	.long	3028177438                      # 0xb47e521e
	.long	2102079853                      # 0x7d4b316d
	.long	97                              # 0x61
	.long	2265525308                      # 0x87092c3c
	.long	2102079853                      # 0x7d4b316d
	.long	98                              # 0x62
	.long	2598903994                      # 0x9ae820ba
	.long	2102079853                      # 0x7d4b316d
	.long	99                              # 0x63
	.long	139524705                       # 0x850fa61
	.long	2102079853                      # 0x7d4b316d
	.long	100                             # 0x64
	.long	1076410600                      # 0x4028b8e8
	.long	2102079853                      # 0x7d4b316d
	.long	101                             # 0x65
	.long	220237413                       # 0xd208e65
	.long	2102079853                      # 0x7d4b316d
	.long	102                             # 0x66
	.long	3913623866                      # 0xe945293a
	.long	2102079853                      # 0x7d4b316d
	.long	103                             # 0x67
	.long	3453026372                      # 0xcdd10044
	.long	2102079853                      # 0x7d4b316d
	.long	104                             # 0x68
	.long	2321387380                      # 0x8a5d8f74
	.long	2102079853                      # 0x7d4b316d
	.long	105                             # 0x69
	.long	3319939363                      # 0xc5e24123
	.long	2102079853                      # 0x7d4b316d
	.long	106                             # 0x6a
	.long	398991913                       # 0x17c82229
	.long	2102079853                      # 0x7d4b316d
	.long	107                             # 0x6b
	.long	333429647                       # 0x13dfbb8f
	.long	2102079853                      # 0x7d4b316d
	.long	108                             # 0x6c
	.long	3927133990                      # 0xea134f26
	.long	2102079853                      # 0x7d4b316d
	.long	109                             # 0x6d
	.long	1797971294                      # 0x6b2add5e
	.long	2102079853                      # 0x7d4b316d
	.long	110                             # 0x6e
	.long	1622314776                      # 0x60b28f18
	.long	2102079853                      # 0x7d4b316d
	.long	111                             # 0x6f
	.long	1092862330                      # 0x4123c17a
	.long	2102079853                      # 0x7d4b316d
	.long	112                             # 0x70
	.long	2568657322                      # 0x991a99aa
	.long	2102079853                      # 0x7d4b316d
	.long	113                             # 0x71
	.long	2168129897                      # 0x813b0969
	.long	2102079853                      # 0x7d4b316d
	.long	114                             # 0x72
	.long	2890303119                      # 0xac46868f
	.long	2102079853                      # 0x7d4b316d
	.long	115                             # 0x73
	.long	1713332582                      # 0x661f6166
	.long	2102079853                      # 0x7d4b316d
	.long	116                             # 0x74
	.long	2375727721                      # 0x8d9aba69
	.long	2102079853                      # 0x7d4b316d
	.long	117                             # 0x75
	.long	3586767156                      # 0xd5c9b934
	.long	2102079853                      # 0x7d4b316d
	.long	118                             # 0x76
	.long	2191348475                      # 0x829d52fb
	.long	2102079853                      # 0x7d4b316d
	.long	119                             # 0x77
	.long	3910023869                      # 0xe90e3abd
	.long	2102079853                      # 0x7d4b316d
	.long	120                             # 0x78
	.long	4189915105                      # 0xf9bd07e1
	.long	2102079853                      # 0x7d4b316d
	.long	121                             # 0x79
	.long	2527353334                      # 0x96a459f6
	.long	2102079853                      # 0x7d4b316d
	.long	122                             # 0x7a
	.long	3429265923                      # 0xcc667203
	.long	2102079853                      # 0x7d4b316d
	.long	123                             # 0x7b
	.long	1283962724                      # 0x4c87b764
	.long	2102079853                      # 0x7d4b316d
	.long	124                             # 0x7c
	.long	1970290990                      # 0x7570412e
	.long	2102079853                      # 0x7d4b316d
	.long	125                             # 0x7d
	.long	2615950861                      # 0x9bec3e0d
	.long	2102079853                      # 0x7d4b316d
	.long	126                             # 0x7e
	.long	3338450337                      # 0xc6fcb5a1
	.long	2102079853                      # 0x7d4b316d
	.long	127                             # 0x7f
	.long	3971836509                      # 0xecbd6a5d
	.long	2102079853                      # 0x7d4b316d
	.long	128                             # 0x80
	.long	4260339231                      # 0xfdef9e1f
	.long	2102079853                      # 0x7d4b316d
	.long	129                             # 0x81
	.long	4160738226                      # 0xf7ffd3b2
	.long	2102079853                      # 0x7d4b316d
	.long	130                             # 0x82
	.long	1309372079                      # 0x4e0b6eaf
	.long	2102079853                      # 0x7d4b316d
	.long	131                             # 0x83
	.long	3151575564                      # 0xbbd93a0c
	.long	2102079853                      # 0x7d4b316d
	.long	132                             # 0x84
	.long	3938977714                      # 0xeac807b2
	.long	2102079853                      # 0x7d4b316d
	.long	133                             # 0x85
	.long	3228738087                      # 0xc072a227
	.long	2102079853                      # 0x7d4b316d
	.long	134                             # 0x86
	.long	2262837051                      # 0x86e0273b
	.long	2102079853                      # 0x7d4b316d
	.long	135                             # 0x87
	.long	3135705803                      # 0xbae712cb
	.long	2102079853                      # 0x7d4b316d
	.long	136                             # 0x88
	.long	990447104                       # 0x3b090600
	.long	2102079853                      # 0x7d4b316d
	.long	137                             # 0x89
	.long	4061147315                      # 0xf21030b3
	.long	2102079853                      # 0x7d4b316d
	.long	138                             # 0x8a
	.long	2783543715                      # 0xa5e981a3
	.long	2102079853                      # 0x7d4b316d
	.long	139                             # 0x8b
	.long	2471046843                      # 0x93492ebb
	.long	2102079853                      # 0x7d4b316d
	.long	140                             # 0x8c
	.long	403058134                       # 0x18062dd6
	.long	2102079853                      # 0x7d4b316d
	.long	141                             # 0x8d
	.long	260073473                       # 0xf806801
	.long	2102079853                      # 0x7d4b316d
	.long	142                             # 0x8e
	.long	1259876295                      # 0x4b182fc7
	.long	2102079853                      # 0x7d4b316d
	.long	143                             # 0x8f
	.long	2975678116                      # 0xb15d3ea4
	.long	2102079853                      # 0x7d4b316d
	.long	144                             # 0x90
	.long	2579807359                      # 0x99c4bc7f
	.long	2102079853                      # 0x7d4b316d
	.long	145                             # 0x91
	.long	863102422                       # 0x3371e5d6
	.long	2102079853                      # 0x7d4b316d
	.long	146                             # 0x92
	.long	650832017                       # 0x26cae891
	.long	2102079853                      # 0x7d4b316d
	.long	147                             # 0x93
	.long	90061610                        # 0x55e3b2a
	.long	2102079853                      # 0x7d4b316d
	.long	148                             # 0x94
	.long	2446954539                      # 0x91d9902b
	.long	2102079853                      # 0x7d4b316d
	.long	149                             # 0x95
	.long	3598610789                      # 0xd67e7165
	.long	2102079853                      # 0x7d4b316d
	.long	150                             # 0x96
	.long	2351688191                      # 0x8c2be9ff
	.long	2102079853                      # 0x7d4b316d
	.long	151                             # 0x97
	.long	1743478091                      # 0x67eb5d4b
	.long	2102079853                      # 0x7d4b316d
	.long	152                             # 0x98
	.long	2798805217                      # 0xa6d260e1
	.long	2102079853                      # 0x7d4b316d
	.long	153                             # 0x99
	.long	1438161982                      # 0x55b89c3e
	.long	2102079853                      # 0x7d4b316d
	.long	154                             # 0x9a
	.long	273416875                       # 0x104c02ab
	.long	2102079853                      # 0x7d4b316d
	.long	155                             # 0x9b
	.long	2438880600                      # 0x915e5d58
	.long	2102079853                      # 0x7d4b316d
	.long	156                             # 0x9c
	.long	1284541841                      # 0x4c908d91
	.long	2102079853                      # 0x7d4b316d
	.long	157                             # 0x9d
	.long	3593193962                      # 0xd62bc9ea
	.long	2102079853                      # 0x7d4b316d
	.long	158                             # 0x9e
	.long	1755082314                      # 0x689c6e4a
	.long	2102079853                      # 0x7d4b316d
	.long	159                             # 0x9f
	.long	3432612426                      # 0xcc99824a
	.long	2102079853                      # 0x7d4b316d
	.long	160                             # 0xa0
	.long	1404964820                      # 0x53be0fd4
	.long	2102079853                      # 0x7d4b316d
	.long	161                             # 0xa1
	.long	3374828335                      # 0xc927cb2f
	.long	2102079853                      # 0x7d4b316d
	.long	162                             # 0xa2
	.long	3311814731                      # 0xc566484b
	.long	2102079853                      # 0x7d4b316d
	.long	163                             # 0xa3
	.long	413908966                       # 0x18abbfe6
	.long	2102079853                      # 0x7d4b316d
	.long	164                             # 0xa4
	.long	3027808697                      # 0xb478b1b9
	.long	2102079853                      # 0x7d4b316d
	.long	165                             # 0xa5
	.long	540762785                       # 0x203b62a1
	.long	2102079853                      # 0x7d4b316d
	.size	__llvm_internal_gcov_emit_function_args.0, 1992

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object # @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.1
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.2
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.3
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.4
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.5
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.6
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.7
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.8
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.9
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.10
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.11
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.12
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.13
	.long	7                               # 0x7
	.zero	4
	.quad	__llvm_gcov_ctr.14
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.15
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.16
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.17
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.18
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.19
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.20
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.21
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.22
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.23
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.24
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.25
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.26
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.27
	.long	7                               # 0x7
	.zero	4
	.quad	__llvm_gcov_ctr.28
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.29
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.30
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.31
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.32
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.33
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.34
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.35
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.36
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.37
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.38
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.39
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.40
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.41
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.42
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.43
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.44
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.45
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.46
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.47
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.48
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.49
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.50
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.51
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.52
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.53
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.54
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.55
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.56
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.57
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.58
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.59
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.60
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.61
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.62
	.long	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.63
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.64
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.65
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.66
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.67
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.68
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.69
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.70
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.71
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.72
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.73
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.74
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.75
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.76
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.77
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.78
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.79
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.80
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.81
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.82
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.83
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.84
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.85
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.86
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.87
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.88
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.89
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.90
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.91
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.92
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.93
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.94
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.95
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.96
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.97
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.98
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.99
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.100
	.long	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.101
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.102
	.long	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.103
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.104
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.105
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.106
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.107
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.108
	.long	6                               # 0x6
	.zero	4
	.quad	__llvm_gcov_ctr.109
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.110
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.111
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.112
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.113
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.114
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.115
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.116
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.117
	.long	2                               # 0x2
	.zero	4
	.quad	__llvm_gcov_ctr.118
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.119
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.120
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.121
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.122
	.long	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.123
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.124
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.125
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.126
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.127
	.long	7                               # 0x7
	.zero	4
	.quad	__llvm_gcov_ctr.128
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.129
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.130
	.long	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.131
	.long	8                               # 0x8
	.zero	4
	.quad	__llvm_gcov_ctr.132
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.133
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.134
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.135
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.136
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.137
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.138
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.139
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.140
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.141
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.142
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.143
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.144
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.145
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.146
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.147
	.long	3                               # 0x3
	.zero	4
	.quad	__llvm_gcov_ctr.148
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.149
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.150
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.151
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.152
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.153
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.154
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.155
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.156
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.157
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.158
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.159
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.160
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.161
	.long	4                               # 0x4
	.zero	4
	.quad	__llvm_gcov_ctr.162
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.163
	.long	1                               # 0x1
	.zero	4
	.quad	__llvm_gcov_ctr.164
	.long	5                               # 0x5
	.zero	4
	.quad	__llvm_gcov_ctr.165
	.size	__llvm_internal_gcov_emit_arcs_args.0, 2656

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.quad	.L__unnamed_1
	.long	875575338                       # 0x3430382a
	.long	2102079853                      # 0x7d4b316d
	.long	166                             # 0xa6
	.zero	4
	.quad	__llvm_internal_gcov_emit_function_args.0
	.quad	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 40

	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x0
	.quad	__llvm_gcov_init
	.hidden	__llvm_profile_runtime
	.type	.L__profc_make_ti,@object       # @__profc_make_ti
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profc_make_ti:
	.zero	8
	.size	.L__profc_make_ti, 8

	.type	.L__profd_make_ti,@object       # @__profd_make_ti
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profd_make_ti:
	.quad	-5001490222628474638            # 0xba9723243ca3f0f2
	.quad	24                              # 0x18
	.quad	.L__profc_make_ti-.L__profd_make_ti
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_make_ti, 64

	.type	.L__profc_make_tu,@object       # @__profc_make_tu
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profc_make_tu:
	.zero	8
	.size	.L__profc_make_tu, 8

	.type	.L__profd_make_tu,@object       # @__profd_make_tu
	.section	__llvm_prf_data,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profd_make_tu:
	.quad	-8857068571906375875            # 0x85155f0f843e7f3d
	.quad	24                              # 0x18
	.quad	.L__profc_make_tu-.L__profd_make_tu
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_make_tu, 64

	.type	.L__profc_memmove,@object       # @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.zero	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       # @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.quad	-306081897096246147             # 0xfbc09422e3668c7d
	.quad	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.quad	.L__profc_memmove-.L__profd_memmove
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memmove, 64

	.type	.L__profc_memccpy,@object       # @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.zero	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       # @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.quad	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.quad	1189690007454808                # 0x43a044a498458
	.quad	.L__profc_memccpy-.L__profd_memccpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memccpy, 64

	.type	.L__profc_memchr,@object        # @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.zero	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        # @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.quad	5708666158622859656             # 0x4f3941a01e026188
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_memchr-.L__profd_memchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memchr, 64

	.type	.L__profc_memcmp,@object        # @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.zero	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        # @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.quad	-4679550853048924350            # 0xbf0ee54adfa48742
	.quad	4538045965                      # 0x10e7d160d
	.quad	.L__profc_memcmp-.L__profd_memcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memcmp, 64

	.type	.L__profc_memcpy,@object        # @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.zero	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        # @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.quad	3893303423671325810             # 0x3607cad612bdd472
	.quad	17496                           # 0x4458
	.quad	.L__profc_memcpy-.L__profd_memcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memcpy, 64

	.type	.L__profc_memrchr,@object       # @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.zero	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       # @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.quad	-548334422562728352             # 0xf863ecbf75079660
	.quad	9516882138200                   # 0x8a7d2611458
	.quad	.L__profc_memrchr-.L__profd_memrchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memrchr, 64

	.type	.L__profc_memset,@object        # @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.zero	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        # @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.quad	-2741574704065975695            # 0xd9f3f85506f36a71
	.quad	17496                           # 0x4458
	.quad	.L__profc_memset-.L__profd_memset
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memset, 64

	.type	.L__profc_stpcpy,@object        # @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.zero	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        # @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.quad	4454833295779690053             # 0x3dd2bf47a087f645
	.quad	17496                           # 0x4458
	.quad	.L__profc_stpcpy-.L__profd_stpcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_stpcpy, 64

	.type	.L__profc_strchrnul,@object     # @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.zero	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     # @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.quad	5039208642683934005             # 0x45eedd8fc8411535
	.quad	70911064                        # 0x43a0458
	.quad	.L__profc_strchrnul-.L__profd_strchrnul
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strchrnul, 64

	.type	.L__profc_strchr,@object        # @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.zero	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        # @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.quad	-5671522429266412413            # 0xb14ab4664bea3c83
	.quad	13914928649304                  # 0xca7d2611458
	.quad	.L__profc_strchr-.L__profd_strchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strchr, 64

	.type	.L__profc_strcmp,@object        # @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.zero	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        # @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.quad	1013198891307352868             # 0xe0f9b060331c324
	.quad	70906968                        # 0x439f458
	.quad	.L__profc_strcmp-.L__profd_strcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strcmp, 64

	.type	.L__profc_strlen,@object        # @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.zero	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        # @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.quad	2965136410638013299             # 0x292647db02a7d373
	.quad	17496                           # 0x4458
	.quad	.L__profc_strlen-.L__profd_strlen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strlen, 64

	.type	.L__profc_strncmp,@object       # @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.zero	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       # @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.quad	-6058495834680104774            # 0xabebe6233cb568ba
	.quad	7207353986825238351             # 0x6405aa43cb36b74f
	.quad	.L__profc_strncmp-.L__profd_strncmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strncmp, 64

	.type	.L__profc_swab,@object          # @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.zero	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          # @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.quad	-1619950660557759641            # 0xe984c77503cb9b67
	.quad	18193                           # 0x4711
	.quad	.L__profc_swab-.L__profd_swab
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_swab, 64

	.type	.L__profc_isalpha,@object       # @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.zero	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       # @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.quad	-1429966999967671460            # 0xec27bc96fe655b5c
	.quad	1563                            # 0x61b
	.quad	.L__profc_isalpha-.L__profd_isalpha
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isalpha, 64

	.type	.L__profc_isascii,@object       # @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.zero	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       # @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.quad	-4792250000779744687            # 0xbd7e8203c4a86a51
	.quad	1562                            # 0x61a
	.quad	.L__profc_isascii-.L__profd_isascii
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isascii, 64

	.type	.L__profc_isblank,@object       # @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.zero	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       # @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.quad	2465200613623135234             # 0x223626e59b14fc02
	.quad	6354911                         # 0x60f7df
	.quad	.L__profc_isblank-.L__profd_isblank
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isblank, 64

	.type	.L__profc_iscntrl,@object       # @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.zero	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       # @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.quad	8897732069425577183             # 0x7b7b182cc8b67cdf
	.quad	6354655                         # 0x60f6df
	.quad	.L__profc_iscntrl-.L__profd_iscntrl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iscntrl, 64

	.type	.L__profc_isdigit,@object       # @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.zero	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       # @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.quad	3483985654529092453             # 0x30599a7e6cc36b65
	.quad	1563                            # 0x61b
	.quad	.L__profc_isdigit-.L__profd_isdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isdigit, 64

	.type	.L__profc_isgraph,@object       # @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.zero	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       # @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.quad	-127227288456547236             # 0xfe3bff7489cfb45c
	.quad	1563                            # 0x61b
	.quad	.L__profc_isgraph-.L__profd_isgraph
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isgraph, 64

	.type	.L__profc_islower,@object       # @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.zero	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       # @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.quad	7501983819047161697             # 0x681c66894508cf61
	.quad	1563                            # 0x61b
	.quad	.L__profc_islower-.L__profd_islower
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_islower, 64

	.type	.L__profc_isprint,@object       # @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.zero	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       # @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.quad	-7275761640889424986            # 0x9b074d56145f63a6
	.quad	1563                            # 0x61b
	.quad	.L__profc_isprint-.L__profd_isprint
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isprint, 64

	.type	.L__profc_isspace,@object       # @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.zero	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       # @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.quad	9032360604355461395             # 0x7d59641d39d70113
	.quad	6354907                         # 0x60f7db
	.quad	.L__profc_isspace-.L__profd_isspace
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isspace, 64

	.type	.L__profc_isupper,@object       # @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.zero	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       # @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.quad	4174714232255583053             # 0x39ef9079c45c934d
	.quad	1563                            # 0x61b
	.quad	.L__profc_isupper-.L__profd_isupper
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isupper, 64

	.type	.L__profc_iswcntrl,@object      # @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.zero	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      # @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.quad	7000259844681188668             # 0x6125eb3d61a7453c
	.quad	106600273393371                 # 0x60f3cf6db6db
	.quad	.L__profc_iswcntrl-.L__profd_iswcntrl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswcntrl, 64

	.type	.L__profc_iswdigit,@object      # @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.zero	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      # @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.quad	8583753245428091608             # 0x771f9e1919590ad8
	.quad	1563                            # 0x61b
	.quad	.L__profc_iswdigit-.L__profd_iswdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswdigit, 64

	.type	.L__profc_iswprint,@object      # @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.zero	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      # @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.quad	-719555261641779946             # 0xf603a04d49941516
	.quad	-2566119187471392224            # 0xdc635031e3742220
	.quad	.L__profc_iswprint-.L__profd_iswprint
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	10                              # 0xa
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswprint, 64

	.type	.L__profc_iswxdigit,@object     # @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.zero	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     # @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.quad	624771703830219826              # 0x8aba28df0840c32
	.quad	6354651                         # 0x60f6db
	.quad	.L__profc_iswxdigit-.L__profd_iswxdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswxdigit, 64

	.type	.L__profc_toascii,@object       # @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.zero	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       # @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.quad	4548159975983457080             # 0x3f1e4f66a624a338
	.quad	24                              # 0x18
	.quad	.L__profc_toascii-.L__profd_toascii
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_toascii, 64

	.type	.L__profc_fdim,@object          # @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.zero	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          # @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.quad	-3545869933759497925            # 0xceca8a150286f93b
	.quad	7369846577040809592             # 0x6646f46a29a55e78
	.quad	.L__profc_fdim-.L__profd_fdim
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fdim, 64

	.type	.L__profc_fdimf,@object         # @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.zero	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         # @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.quad	-1547869627280940664            # 0xea84dcc6634da188
	.quad	7369846577040809592             # 0x6646f46a29a55e78
	.quad	.L__profc_fdimf-.L__profd_fdimf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fdimf, 64

	.type	.L__profc_fmax,@object          # @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.zero	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          # @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.quad	-2423801789625842334            # 0xde5ced1d3b654562
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmax-.L__profd_fmax
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmax, 64

	.type	.L__profc_fmaxf,@object         # @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.zero	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         # @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.quad	-5134209104457391460            # 0xb8bfa0058e3da29c
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmaxf-.L__profd_fmaxf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxf, 64

	.type	.L__profc_fmaxl,@object         # @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.zero	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         # @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.quad	-3138580006960380340            # 0xd471861cd1fbc64c
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmaxl-.L__profd_fmaxl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxl, 64

	.type	.L__profc_fmin,@object          # @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.zero	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          # @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.quad	965427315610335377              # 0xd65e3074b69b891
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmin-.L__profd_fmin
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmin, 64

	.type	.L__profc_fminf,@object         # @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.zero	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         # @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.quad	7710199602704325723             # 0x6b0021b0328c9c5b
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fminf-.L__profd_fminf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fminf, 64

	.type	.L__profc_fminl,@object         # @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.zero	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         # @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.quad	2487418697363824514             # 0x2285162058091f82
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fminl-.L__profd_fminl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fminl, 64

	.type	.L__profc_l64a,@object          # @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.zero	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          # @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.quad	-6158745991357604691            # 0xaa87bd26bb44dcad
	.quad	17496                           # 0x4458
	.quad	.L__profc_l64a-.L__profd_l64a
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_l64a, 64

	.type	.L__profc_srand,@object         # @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.zero	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         # @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.quad	-2085616837322687880            # 0xe30e668959ceba78
	.quad	0                               # 0x0
	.quad	.L__profc_srand-.L__profd_srand
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_srand, 64

	.type	.L__profc_rand,@object          # @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.zero	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          # @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.quad	7206085285791387956             # 0x6401286350c3d134
	.quad	24                              # 0x18
	.quad	.L__profc_rand-.L__profd_rand
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rand, 64

	.type	.L__profc_insque,@object        # @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.zero	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        # @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.quad	-5080349535175464041            # 0xb97ef903bd0bab97
	.quad	45786906010769                  # 0x29a49844a491
	.quad	.L__profc_insque-.L__profd_insque
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_insque, 64

	.type	.L__profc_remque,@object        # @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.zero	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        # @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.quad	-7214219538753974334            # 0x9be1f18d54e30fc2
	.quad	11043906705                     # 0x29244a491
	.quad	.L__profc_remque-.L__profd_remque
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_remque, 64

	.type	.L__profc_lsearch,@object       # @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.zero	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       # @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.quad	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.quad	1245367951758424                # 0x46ca7d2611458
	.quad	.L__profc_lsearch-.L__profd_lsearch
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_lsearch, 64

	.type	.L__profc_lfind,@object         # @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.zero	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         # @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.quad	-6350214982902907667            # 0xa7df811e30b57ced
	.quad	1245367951758424                # 0x46ca7d2611458
	.quad	.L__profc_lfind-.L__profd_lfind
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_lfind, 64

	.type	.L__profc_abs,@object           # @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.zero	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           # @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.quad	-238465663743841031             # 0xfcb0ccbe056bacf9
	.quad	99164                           # 0x1835c
	.quad	.L__profc_abs-.L__profd_abs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_abs, 64

	.type	.L__profc_atoi,@object          # @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.zero	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          # @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.quad	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atoi-.L__profd_atoi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atoi, 64

	.type	.L__profc_atol,@object          # @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.zero	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          # @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.quad	8236175749196770609             # 0x724cc634ee8f6d31
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atol-.L__profd_atol
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atol, 64

	.type	.L__profc_atoll,@object         # @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.zero	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         # @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.quad	3653807471789013357             # 0x32b4ee8971a6f96d
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atoll-.L__profd_atoll
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atoll, 64

	.type	.L__profc_bsearch,@object       # @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.zero	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       # @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.quad	8750110911118262334             # 0x796ea3837a79403e
	.quad	-852542619444921222             # 0xf42b29012c1abc7a
	.quad	.L__profc_bsearch-.L__profd_bsearch
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch, 64

	.type	.L__profc_bsearch_r,@object     # @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.zero	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     # @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.quad	1417097008757763708             # 0x13aa8a38ab466e7c
	.quad	1259382983000112142             # 0x117a3a2689e4bc0e
	.quad	.L__profc_bsearch_r-.L__profd_bsearch_r
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch_r, 64

	.type	.L__profc_div,@object           # @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.zero	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           # @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.quad	5497092892325669176             # 0x4c4998dc58656938
	.quad	24                              # 0x18
	.quad	.L__profc_div-.L__profd_div
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_div, 64

	.type	.L__profc_imaxabs,@object       # @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.zero	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       # @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.quad	8946668544180752025             # 0x7c28f3a3b30e0e99
	.quad	99164                           # 0x1835c
	.quad	.L__profc_imaxabs-.L__profd_imaxabs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_imaxabs, 64

	.type	.L__profc_imaxdiv,@object       # @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.zero	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       # @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.quad	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.quad	24                              # 0x18
	.quad	.L__profc_imaxdiv-.L__profd_imaxdiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_imaxdiv, 64

	.type	.L__profc_labs,@object          # @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.zero	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          # @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.quad	-7118441263952323418            # 0x9d363762b3a39ca6
	.quad	99164                           # 0x1835c
	.quad	.L__profc_labs-.L__profd_labs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_labs, 64

	.type	.L__profc_ldiv,@object          # @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.zero	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          # @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.quad	7149836041034155625             # 0x633951ff74204669
	.quad	24                              # 0x18
	.quad	.L__profc_ldiv-.L__profd_ldiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldiv, 64

	.type	.L__profc_llabs,@object         # @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.zero	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         # @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.quad	7684789126781046466             # 0x6aa5dafebb918ec2
	.quad	99164                           # 0x1835c
	.quad	.L__profc_llabs-.L__profd_llabs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_llabs, 64

	.type	.L__profc_lldiv,@object         # @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.zero	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         # @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.quad	-5329156747615108898            # 0xb60b082c520680de
	.quad	24                              # 0x18
	.quad	.L__profc_lldiv-.L__profd_lldiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_lldiv, 64

	.type	.L__profc_wcschr,@object        # @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.zero	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        # @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.quad	-2279810736707830048            # 0xe05c7c36c3687ee0
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_wcschr-.L__profd_wcschr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcschr, 64

	.type	.L__profc_wcscmp,@object        # @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.zero	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        # @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.quad	-3710185595167438704            # 0xcc82c5dbcd460890
	.quad	1188468208228060                # 0x438e7d160d6dc
	.quad	.L__profc_wcscmp-.L__profd_wcscmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcscmp, 64

	.type	.L__profc_wcscpy,@object        # @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.zero	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        # @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.quad	-8381368184235816342            # 0x8baf660af6dd0a6a
	.quad	9304                            # 0x2458
	.quad	.L__profc_wcscpy-.L__profd_wcscpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcscpy, 64

	.type	.L__profc_wcslen,@object        # @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.zero	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        # @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.quad	3988408974905483574             # 0x3759acd4c838a136
	.quad	17496                           # 0x4458
	.quad	.L__profc_wcslen-.L__profd_wcslen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcslen, 64

	.type	.L__profc_wcsncmp,@object       # @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.zero	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       # @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.quad	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.quad	6710790269995215964             # 0x5d218431fd366c5c
	.quad	.L__profc_wcsncmp-.L__profd_wcsncmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	10                              # 0xa
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcsncmp, 64

	.type	.L__profc_wmemchr,@object       # @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.zero	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       # @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.quad	-150916099757221660             # 0xfde7d69b5b1558e4
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_wmemchr-.L__profd_wmemchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemchr, 64

	.type	.L__profc_wmemcmp,@object       # @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.zero	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       # @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.quad	5386172057678365784             # 0x4abf86f3050dc458
	.quad	1189621521503964                # 0x439f45834d6dc
	.quad	.L__profc_wmemcmp-.L__profd_wmemcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcmp, 64

	.type	.L__profc_wmemcpy,@object       # @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.zero	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       # @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.quad	7326050423799855187             # 0x65ab5c0b9d30b853
	.quad	9304                            # 0x2458
	.quad	.L__profc_wmemcpy-.L__profd_wmemcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcpy, 64

	.type	.L__profc_wmemmove,@object      # @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.zero	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      # @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.quad	-4659407939446788683            # 0xbf56752a69a3adb5
	.quad	-1500206092990891740            # 0xeb2e3281c166b924
	.quad	.L__profc_wmemmove-.L__profd_wmemmove
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemmove, 64

	.type	.L__profc_wmemset,@object       # @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.zero	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       # @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.quad	-8291142148468431281            # 0x8ceff224f245264f
	.quad	9304                            # 0x2458
	.quad	.L__profc_wmemset-.L__profd_wmemset
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemset, 64

	.type	.L__profc_bcopy,@object         # @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.zero	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         # @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.quad	-8407331144368071880            # 0x8b5328de3edcdb38
	.quad	5234109875325077019             # 0x48a34b333a1d861b
	.quad	.L__profc_bcopy-.L__profd_bcopy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bcopy, 64

	.type	.L__profc_rotl64,@object        # @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.zero	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        # @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.quad	4714666614722164144             # 0x416ddc4e84e875b0
	.quad	24                              # 0x18
	.quad	.L__profc_rotl64-.L__profd_rotl64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl64, 64

	.type	.L__profc_rotr64,@object        # @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.zero	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        # @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.quad	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.quad	24                              # 0x18
	.quad	.L__profc_rotr64-.L__profd_rotr64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr64, 64

	.type	.L__profc_rotl32,@object        # @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.zero	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        # @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.quad	6417704780586152324             # 0x5910447ed829f184
	.quad	24                              # 0x18
	.quad	.L__profc_rotl32-.L__profd_rotl32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl32, 64

	.type	.L__profc_rotr32,@object        # @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.zero	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        # @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.quad	-5668908084823466940            # 0xb153fe21cbc1dc44
	.quad	24                              # 0x18
	.quad	.L__profc_rotr32-.L__profd_rotr32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr32, 64

	.type	.L__profc_rotl_sz,@object       # @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.zero	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       # @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.quad	-3686623714176605670            # 0xccd67b43b7f8e21a
	.quad	24                              # 0x18
	.quad	.L__profc_rotl_sz-.L__profd_rotl_sz
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl_sz, 64

	.type	.L__profc_rotr_sz,@object       # @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.zero	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       # @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.quad	3415499704483829380             # 0x2f664ae29835d684
	.quad	24                              # 0x18
	.quad	.L__profc_rotr_sz-.L__profd_rotr_sz
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr_sz, 64

	.type	.L__profc_rotl16,@object        # @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.zero	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        # @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.quad	7327166975465201445             # 0x65af538b0e939f25
	.quad	24                              # 0x18
	.quad	.L__profc_rotl16-.L__profd_rotl16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl16, 64

	.type	.L__profc_rotr16,@object        # @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.zero	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        # @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.quad	5274763753728838268             # 0x4933b9afe71d0a7c
	.quad	24                              # 0x18
	.quad	.L__profc_rotr16-.L__profd_rotr16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr16, 64

	.type	.L__profc_rotl8,@object         # @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.zero	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         # @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.quad	4408423234350850624             # 0x3d2ddd93270fa240
	.quad	24                              # 0x18
	.quad	.L__profc_rotl8-.L__profd_rotl8
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl8, 64

	.type	.L__profc_rotr8,@object         # @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.zero	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         # @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.quad	-6535801773217052896            # 0xa54c2aea59078720
	.quad	24                              # 0x18
	.quad	.L__profc_rotr8-.L__profd_rotr8
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr8, 64

	.type	.L__profc_bswap_16,@object      # @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.zero	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      # @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.quad	-8870828063230114195            # 0x84e47ce04b9a466d
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_16-.L__profd_bswap_16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_16, 64

	.type	.L__profc_bswap_32,@object      # @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.zero	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      # @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.quad	7304833549461180700             # 0x655ffb691afd511c
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_32-.L__profd_bswap_32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_32, 64

	.type	.L__profc_bswap_64,@object      # @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.zero	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      # @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.quad	2873856403134720854             # 0x27e1fd2c1c53ab56
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_64-.L__profd_bswap_64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_64, 64

	.type	.L__profc_ffs,@object           # @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.zero	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           # @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.quad	9222170723057548859             # 0x7ffbbb6955da3e3b
	.quad	19458657686616                  # 0x11b292611458
	.quad	.L__profc_ffs-.L__profd_ffs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ffs, 64

	.type	.L__profc_libiberty_ffs,@object # @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.zero	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object # @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.quad	65216057573358521               # 0xe7b1a8a94fbbb9
	.quad	2952352215704664                # 0xa7d261111a458
	.quad	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 64

	.type	.L__profc_gl_isinff,@object     # @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.zero	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     # @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.quad	6535010584615638394             # 0x5ab10580b36ed57a
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinff-.L__profd_gl_isinff
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinff, 64

	.type	.L__profc_gl_isinfd,@object     # @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.zero	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     # @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.quad	-9165907066207032774            # 0x80cc28161a7caa3a
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfd, 64

	.type	.L__profc_gl_isinfl,@object     # @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.zero	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     # @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.quad	4731159788068304891             # 0x41a874c2af6c77fb
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfl, 64

	.type	.L__profc__Qp_itoq,@object      # @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.zero	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      # @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.quad	-3858125999267273921            # 0xca752ed84af9a33f
	.quad	0                               # 0x0
	.quad	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd__Qp_itoq, 64

	.type	.L__profc_ldexpf,@object        # @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.zero	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        # @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.quad	-2560632889718296859            # 0xdc76cdf42028aee5
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexpf-.L__profd_ldexpf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	8                               # 0x8
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpf, 64

	.type	.L__profc_ldexp,@object         # @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.zero	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         # @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.quad	-240549059163932437             # 0xfca965e7b97ab8eb
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexp-.L__profd_ldexp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	8                               # 0x8
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldexp, 64

	.type	.L__profc_ldexpl,@object        # @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.zero	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        # @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.quad	-5097262943286299417            # 0xb942e25c0aa874e7
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexpl-.L__profd_ldexpl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	8                               # 0x8
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpl, 64

	.type	.L__profc_memxor,@object        # @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.zero	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        # @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.quad	-8368025376422999318            # 0x8bdecd417eda4aea
	.quad	1164376                         # 0x11c458
	.quad	.L__profc_memxor-.L__profd_memxor
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memxor, 64

	.type	.L__profc_strncat,@object       # @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.zero	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       # @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.quad	-3582483947543505905            # 0xce4875d49d21540f
	.quad	76123606467028056               # 0x10e72044a7d2458
	.quad	.L__profc_strncat-.L__profd_strncat
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strncat, 64

	.type	.L__profc_strnlen,@object       # @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.zero	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       # @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.quad	517590790318988421              # 0x72eda14dbfa1c85
	.quad	4537021528                      # 0x10e6d7458
	.quad	.L__profc_strnlen-.L__profd_strnlen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strnlen, 64

	.type	.L__profc_strpbrk,@object       # @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.zero	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       # @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.quad	-6867074718569872870            # 0xa0b33fed4193c21a
	.quad	-4444802448421279214            # 0xc250e3b905102a12
	.quad	.L__profc_strpbrk-.L__profd_strpbrk
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strpbrk, 64

	.type	.L__profc_strrchr,@object       # @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.zero	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       # @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.quad	5307837722043833871             # 0x49a93a493bd75e0f
	.quad	217420731480                    # 0x329f491458
	.quad	.L__profc_strrchr-.L__profd_strrchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strrchr, 64

	.type	.L__profc_strstr,@object        # @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.zero	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        # @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.quad	3560562421867190603             # 0x3169a8a873ff994b
	.quad	-7798267876297541628            # 0x93c6fcaef9f1f804
	.quad	.L__profc_strstr-.L__profd_strstr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strstr, 64

	.type	.L__profc_copysign,@object      # @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.zero	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      # @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.quad	-9076603418344796971            # 0x82096d47ea764cd5
	.quad	4200982705386070127             # 0x3a4ce3834618a06f
	.quad	.L__profc_copysign-.L__profd_copysign
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_copysign, 64

	.type	.L__profc_memmem,@object        # @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.zero	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        # @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.quad	-7485463843177831536            # 0x981e4a4b585ae390
	.quad	5508063777036862020             # 0x4c7092d27e7a8244
	.quad	.L__profc_memmem-.L__profd_memmem
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memmem, 64

	.type	.L__profc_mempcpy,@object       # @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.zero	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       # @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.quad	-722907995699078206             # 0xf5f7b7020f111bc2
	.quad	24                              # 0x18
	.quad	.L__profc_mempcpy-.L__profd_mempcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_mempcpy, 64

	.type	.L__profc_frexp,@object         # @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.zero	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         # @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.quad	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.quad	-2373782428686282824            # 0xdf0ea1753c170fb8
	.quad	.L__profc_frexp-.L__profd_frexp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_frexp, 64

	.type	.L__profc___muldi3,@object      # @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.zero	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      # @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.quad	3987271357918321816             # 0x3755a22cafcf9c98
	.quad	2320045144                      # 0x8a491458
	.quad	.L__profc___muldi3-.L__profd___muldi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3, 64

	.type	.L__profc_udivmodsi4,@object    # @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.zero	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    # @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.quad	4670832108574850701             # 0x40d2210e3d17be8d
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_udivmodsi4, 64

	.type	.L__profc___clrsbqi2,@object    # @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.zero	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    # @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.quad	-7858138078702729622            # 0x92f2490d36f4066a
	.quad	187824153796641880              # 0x29b49129f498458
	.quad	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbqi2, 64

	.type	.L__profc___clrsbdi2,@object    # @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.zero	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    # @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.quad	-1533375985051215657            # 0xeab85aaa6fe858d7
	.quad	187824153796641880              # 0x29b49129f498458
	.quad	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbdi2, 64

	.type	.L__profc___mulsi3,@object      # @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.zero	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      # @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.quad	5127670123023436031             # 0x472924cf303208ff
	.quad	2320045144                      # 0x8a491458
	.quad	.L__profc___mulsi3-.L__profd___mulsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3, 64

	.type	.L__profc___cmovd,@object       # @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.zero	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       # @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.quad	1458405851566781960             # 0x143d4c6520fd3608
	.quad	-6411111704588201945            # 0xa70727df48abd027
	.quad	.L__profc___cmovd-.L__profd___cmovd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovd, 64

	.type	.L__profc___cmovh,@object       # @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.zero	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       # @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.quad	-1240290101804783090            # 0xeec99ab9477e2a0e
	.quad	3130117398598530023             # 0x2b706930a0bc33e7
	.quad	.L__profc___cmovh-.L__profd___cmovh
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovh, 64

	.type	.L__profc___cmovw,@object       # @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.zero	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       # @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.quad	-6631700889337257300            # 0xa3f7772d6a6922ac
	.quad	-6411111704588201945            # 0xa70727df48abd027
	.quad	.L__profc___cmovw-.L__profd___cmovw
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovw, 64

	.type	.L__profc___modi,@object        # @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.zero	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        # @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.quad	4130297501716739761             # 0x3951c3b1ce8276b1
	.quad	24                              # 0x18
	.quad	.L__profc___modi-.L__profd___modi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___modi, 64

	.type	.L__profc___uitod,@object       # @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.zero	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       # @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.quad	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.quad	24                              # 0x18
	.quad	.L__profc___uitod-.L__profd___uitod
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___uitod, 64

	.type	.L__profc___uitof,@object       # @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.zero	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       # @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.quad	2684105554667313846             # 0x253fdbc7ed991ab6
	.quad	24                              # 0x18
	.quad	.L__profc___uitof-.L__profd___uitof
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___uitof, 64

	.type	.L__profc___ulltod,@object      # @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.zero	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      # @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.quad	3995277539005434566             # 0x377213c0fb840ac6
	.quad	24                              # 0x18
	.quad	.L__profc___ulltod-.L__profd___ulltod
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ulltod, 64

	.type	.L__profc___ulltof,@object      # @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.zero	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      # @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.quad	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.quad	24                              # 0x18
	.quad	.L__profc___ulltof-.L__profd___ulltof
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ulltof, 64

	.type	.L__profc___umodi,@object       # @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.zero	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       # @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.quad	6154071623751134202             # 0x5567a7893fff6bfa
	.quad	24                              # 0x18
	.quad	.L__profc___umodi-.L__profd___umodi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___umodi, 64

	.type	.L__profc___clzhi2,@object      # @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.zero	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      # @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.quad	-9221703320275173474            # 0x8005edb05af53f9e
	.quad	19458657162328                  # 0x11b292591458
	.quad	.L__profc___clzhi2-.L__profd___clzhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzhi2, 64

	.type	.L__profc___ctzhi2,@object      # @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.zero	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      # @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.quad	-1569202989881991136            # 0xea391231d79a6020
	.quad	19458657162328                  # 0x11b292591458
	.quad	.L__profc___ctzhi2-.L__profd___ctzhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzhi2, 64

	.type	.L__profc___fixunssfsi,@object  # @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.zero	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  # @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.quad	-7800469359816066749            # 0x93bf2a7226d83943
	.quad	11245552728                     # 0x29e498458
	.quad	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___fixunssfsi, 64

	.type	.L__profc___parityhi2,@object   # @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.zero	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   # @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.quad	1203893203113466329             # 0x10b5167d5f15d9d9
	.quad	304041497688                    # 0x46ca491458
	.quad	.L__profc___parityhi2-.L__profd___parityhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___parityhi2, 64

	.type	.L__profc___popcounthi2,@object # @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.zero	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object # @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.quad	3943219574947026310             # 0x36b9214fb4159586
	.quad	304041497688                    # 0x46ca491458
	.quad	.L__profc___popcounthi2-.L__profd___popcounthi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcounthi2, 64

	.type	.L__profc___mulsi3_iq2000,@object # @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.zero	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object # @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.quad	-3976353352410196972            # 0xc8d127b190281414
	.quad	171971253336                    # 0x280a491458
	.quad	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 64

	.type	.L__profc___mulsi3_lm32,@object # @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.zero	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object # @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.quad	2775651425054705869             # 0x26851843dab148cd
	.quad	-6210685127595396365            # 0xa9cf36c835dff2f3
	.quad	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 64

	.type	.L__profc___udivmodsi4,@object  # @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.zero	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  # @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.quad	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4, 64

	.type	.L__profc___mspabi_cmpf,@object # @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.zero	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object # @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.quad	6399771733438470391             # 0x58d08e7bef2f98f7
	.quad	1352614535537600836             # 0x12c573c0ecbfa944
	.quad	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpf, 64

	.type	.L__profc___mspabi_cmpd,@object # @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.zero	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object # @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.quad	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.quad	1352614535537600836             # 0x12c573c0ecbfa944
	.quad	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpd, 64

	.type	.L__profc___mspabi_mpysll,@object # @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.zero	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object # @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.quad	-359228324547500507             # 0xfb03c3bdfa166625
	.quad	24                              # 0x18
	.quad	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 64

	.type	.L__profc___mspabi_mpyull,@object # @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.zero	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object # @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.quad	6629829186354316853             # 0x5c01e284c62a8635
	.quad	24                              # 0x18
	.quad	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 64

	.type	.L__profc___mulhi3,@object      # @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.zero	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      # @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.quad	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.quad	-5374843387156864121            # 0xb568b86aa1286387
	.quad	.L__profc___mulhi3-.L__profd___mulhi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulhi3, 64

	.type	.L__profc___divsi3,@object      # @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.zero	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      # @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.quad	5631431475223784324             # 0x4e26dd1711aaeb84
	.quad	510575534943447681              # 0x715edbe6f4f2a81
	.quad	.L__profc___divsi3-.L__profd___divsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___divsi3, 64

	.type	.L__profc___modsi3,@object      # @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.zero	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      # @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.quad	-8995696579390192574            # 0x8328dd9f4e404442
	.quad	2121116644152358499             # 0x1d6fb85985deb663
	.quad	.L__profc___modsi3-.L__profd___modsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___modsi3, 64

	.type	.L__profc___udivmodhi4,@object  # @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.zero	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  # @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.quad	2241631039268115874             # 0x1f1bdf8db510d5a2
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodhi4, 64

	.type	.L__profc___udivmodsi4_libgcc,@object # @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.zero	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object # @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.quad	-1484205535638993157            # 0xeb670aedd291c6fb
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 64

	.type	.L__profc___ashldi3,@object     # @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.zero	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     # @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.quad	3719210884952086607             # 0x339d4a983a55d84f
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashldi3-.L__profd___ashldi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashldi3, 64

	.type	.L__profc___ashlti3,@object     # @__profc___ashlti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profc___ashlti3:
	.zero	24
	.size	.L__profc___ashlti3, 24

	.type	.L__profd___ashlti3,@object     # @__profd___ashlti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profd___ashlti3:
	.quad	8422580559269035854             # 0x74e30464d7577f4e
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashlti3-.L__profd___ashlti3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashlti3, 64

	.type	.L__profc___ashrdi3,@object     # @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.zero	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     # @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.quad	-1855717345837424946            # 0xe63f2ae7edd45ece
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashrdi3-.L__profd___ashrdi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashrdi3, 64

	.type	.L__profc___ashrti3,@object     # @__profc___ashrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profc___ashrti3:
	.zero	24
	.size	.L__profc___ashrti3, 24

	.type	.L__profd___ashrti3,@object     # @__profd___ashrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profd___ashrti3:
	.quad	-1576641649180751463            # 0xea1ea4c6027ec999
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashrti3-.L__profd___ashrti3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashrti3, 64

	.type	.L__profc___bswapdi2,@object    # @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.zero	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    # @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.quad	9149352740892555196             # 0x7ef907d7ada5b7bc
	.quad	24                              # 0x18
	.quad	.L__profc___bswapdi2-.L__profd___bswapdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___bswapdi2, 64

	.type	.L__profc___bswapsi2,@object    # @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.zero	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    # @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.quad	-3374945843358245974            # 0xd129c8a2fe735baa
	.quad	24                              # 0x18
	.quad	.L__profc___bswapsi2-.L__profd___bswapsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___bswapsi2, 64

	.type	.L__profc___clzsi2,@object      # @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.zero	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      # @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.quad	1382681549752930563             # 0x1330458b32829103
	.quad	33814345247                     # 0x7df7df61f
	.quad	.L__profc___clzsi2-.L__profd___clzsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzsi2, 64

	.type	.L__profc___clzti2,@object      # @__profc___clzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profc___clzti2:
	.zero	8
	.size	.L__profc___clzti2, 8

	.type	.L__profd___clzti2,@object      # @__profd___clzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profd___clzti2:
	.quad	-1806615119558762125            # 0xe6ed9d1ee0d9a173
	.quad	2008                            # 0x7d8
	.quad	.L__profc___clzti2-.L__profd___clzti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzti2, 64

	.type	.L__profc___cmpdi2,@object      # @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.zero	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      # @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.quad	-5499644794300757496            # 0xb3ad5632ace08a08
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___cmpdi2-.L__profd___cmpdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmpdi2, 64

	.type	.L__profc___aeabi_lcmp,@object  # @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.zero	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  # @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.quad	7067747365298492588             # 0x6215aec83ed1d4ac
	.quad	24                              # 0x18
	.quad	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 64

	.type	.L__profc___cmpti2,@object      # @__profc___cmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profc___cmpti2:
	.zero	40
	.size	.L__profc___cmpti2, 40

	.type	.L__profd___cmpti2,@object      # @__profd___cmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profd___cmpti2:
	.quad	-8389943187845644472            # 0x8b90ef1f5ac07f48
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___cmpti2-.L__profd___cmpti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmpti2, 64

	.type	.L__profc___ctzsi2,@object      # @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.zero	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      # @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.quad	-5501728155980453225            # 0xb3a5ef643c052a97
	.quad	33814345247                     # 0x7df7df61f
	.quad	.L__profc___ctzsi2-.L__profd___ctzsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzsi2, 64

	.type	.L__profc___ctzti2,@object      # @__profc___ctzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profc___ctzti2:
	.zero	8
	.size	.L__profc___ctzti2, 8

	.type	.L__profd___ctzti2,@object      # @__profd___ctzti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profd___ctzti2:
	.quad	7226039699906943586             # 0x64480cd265d2da62
	.quad	2008                            # 0x7d8
	.quad	.L__profc___ctzti2-.L__profd___ctzti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzti2, 64

	.type	.L__profc___ffsti2,@object      # @__profc___ffsti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profc___ffsti2:
	.zero	24
	.size	.L__profc___ffsti2, 24

	.type	.L__profd___ffsti2,@object      # @__profd___ffsti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profd___ffsti2:
	.quad	7347651670313848928             # 0x65f81a43be5cd060
	.quad	-6109625065311516695            # 0xab36405f8f48c7e9
	.quad	.L__profc___ffsti2-.L__profd___ffsti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ffsti2, 64

	.type	.L__profc___lshrdi3,@object     # @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.zero	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     # @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.quad	10441766047587925               # 0x2518bb1c181e55
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___lshrdi3-.L__profd___lshrdi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___lshrdi3, 64

	.type	.L__profc___lshrti3,@object     # @__profc___lshrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profc___lshrti3:
	.zero	24
	.size	.L__profc___lshrti3, 24

	.type	.L__profd___lshrti3,@object     # @__profd___lshrti3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profd___lshrti3:
	.quad	-8202552090810439010            # 0x8e2aae55179b2a9e
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___lshrti3-.L__profd___lshrti3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___lshrti3, 64

	.type	.L__profc___muldsi3,@object     # @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.zero	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     # @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.quad	4756674255824047264             # 0x42031a08a2a34ca0
	.quad	24                              # 0x18
	.quad	.L__profc___muldsi3-.L__profd___muldsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldsi3, 64

	.type	.L__profc___muldi3_compiler_rt,@object # @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.zero	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object # @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.quad	-737717619142303851             # 0xf5c319bbe679df95
	.quad	24                              # 0x18
	.quad	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 64

	.type	.L__profc___mulddi3,@object     # @__profc___mulddi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profc___mulddi3:
	.zero	8
	.size	.L__profc___mulddi3, 8

	.type	.L__profd___mulddi3,@object     # @__profd___mulddi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profd___mulddi3:
	.quad	373830907859946247              # 0x5301d3ae50dcb07
	.quad	24                              # 0x18
	.quad	.L__profc___mulddi3-.L__profd___mulddi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulddi3, 64

	.type	.L__profc___multi3,@object      # @__profc___multi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profc___multi3:
	.zero	8
	.size	.L__profc___multi3, 8

	.type	.L__profd___multi3,@object      # @__profd___multi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profd___multi3:
	.quad	8967568818272694478             # 0x7c733453f80370ce
	.quad	24                              # 0x18
	.quad	.L__profc___multi3-.L__profd___multi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___multi3, 64

	.type	.L__profc___negdi2,@object      # @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.zero	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      # @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.quad	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.quad	24                              # 0x18
	.quad	.L__profc___negdi2-.L__profd___negdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___negdi2, 64

	.type	.L__profc___negti2,@object      # @__profc___negti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profc___negti2:
	.zero	8
	.size	.L__profc___negti2, 8

	.type	.L__profd___negti2,@object      # @__profd___negti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profd___negti2:
	.quad	8691511294418398176             # 0x789e7379011aabe0
	.quad	24                              # 0x18
	.quad	.L__profc___negti2-.L__profd___negti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___negti2, 64

	.type	.L__profc___paritydi2,@object   # @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.zero	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   # @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.quad	-5102883611502574357            # 0xb92eea643e3a04eb
	.quad	24                              # 0x18
	.quad	.L__profc___paritydi2-.L__profd___paritydi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___paritydi2, 64

	.type	.L__profc___parityti2,@object   # @__profc___parityti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profc___parityti2:
	.zero	8
	.size	.L__profc___parityti2, 8

	.type	.L__profd___parityti2,@object   # @__profd___parityti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profd___parityti2:
	.quad	-7527016531061130461            # 0x978aaa58479bbb23
	.quad	24                              # 0x18
	.quad	.L__profc___parityti2-.L__profd___parityti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___parityti2, 64

	.type	.L__profc___paritysi2,@object   # @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.zero	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   # @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.quad	8495812714014201054             # 0x75e730a6911054de
	.quad	24                              # 0x18
	.quad	.L__profc___paritysi2-.L__profd___paritysi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___paritysi2, 64

	.type	.L__profc___popcountdi2,@object # @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.zero	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object # @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.quad	4342496508124198892             # 0x3c43a5910d1df7ec
	.quad	24                              # 0x18
	.quad	.L__profc___popcountdi2-.L__profd___popcountdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountdi2, 64

	.type	.L__profc___popcountsi2,@object # @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.zero	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object # @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.quad	-2149276146439341705            # 0xe22c3cbb6f433977
	.quad	24                              # 0x18
	.quad	.L__profc___popcountsi2-.L__profd___popcountsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountsi2, 64

	.type	.L__profc___popcountti2,@object # @__profc___popcountti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profc___popcountti2:
	.zero	8
	.size	.L__profc___popcountti2, 8

	.type	.L__profd___popcountti2,@object # @__profd___popcountti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profd___popcountti2:
	.quad	-26294454666068629              # 0xffa295553210fd6b
	.quad	24                              # 0x18
	.quad	.L__profc___popcountti2-.L__profd___popcountti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountti2, 64

	.type	.L__profc___powidf2,@object     # @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.zero	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     # @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.quad	-1752541073601039051            # 0xe7adb92dcdba7535
	.quad	-4868838055443737378            # 0xbc6e6995b45f54de
	.quad	.L__profc___powidf2-.L__profd___powidf2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___powidf2, 64

	.type	.L__profc___powisf2,@object     # @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.zero	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     # @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.quad	-3807360110918407144            # 0xcb298a26c0b76c18
	.quad	-4868838055443737378            # 0xbc6e6995b45f54de
	.quad	.L__profc___powisf2-.L__profd___powisf2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___powisf2, 64

	.type	.L__profc___ucmpdi2,@object     # @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.zero	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     # @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.quad	-2044349310657886323            # 0xe3a10322256c078d
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpdi2, 64

	.type	.L__profc___aeabi_ulcmp,@object # @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.zero	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object # @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.quad	448670595368434735              # 0x639ff8782193c2f
	.quad	24                              # 0x18
	.quad	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_ulcmp, 64

	.type	.L__profc___ucmpti2,@object     # @__profc___ucmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.zero	40
	.size	.L__profc___ucmpti2, 40

	.type	.L__profd___ucmpti2,@object     # @__profd___ucmpti2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profd___ucmpti2:
	.quad	2719998967855154749             # 0x25bf60a66c6f863d
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___ucmpti2-.L__profd___ucmpti2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"aRl",@progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\247\013\315\004x\332]\223\013n\343 \020\206\305\215\272MU\365\032{\002\013\033\210G\035\f\001\\\222\236~\347\201\363X)\342\373\347\347\345\031&\321~\373\251\201\211\302\335D\037c\372\361\314e\3117\341Z\0041\013\324,\303\255\276\231\3322\273\265\261\271\3558\224\2006\021\320o\214M\302ng\003\325b^-\263.\000\304\031\355\366M\\6ZNtp\206F<\027\233W\"\246\356\0131\027\330\330\257\331.\236\270\347,~?6\366cg?\226\366\253Z-\351e\301A\224!\230\020\355U\006\225H#l2\004\031\321\340\347\2075\265\330\315\031\031`\253\227\335\233\342#\003\253\267\224\253\301\0004g\347jlK\300\003\312\200f\036+\006\247b\034\374\030\240\313x5\223c\344\000E\251\024\335\227\312udP\341\030Tf\002\227\223 \345\354\343\205\372x\242>\336\250\037/\331\307+\315K\"\273\244F\0311\212\002O\357\022)p\252\277\022\016\342\237O\t\025\370%\301\027%\323m\236\310TA{U\320\221!\320\327\303\f\263/\3556qt\306\t*\0254\334\225\273+4\323\337<AK\027\312\336_sP\350\210\334`\327T\264ul\023\216V\312s\371f\036\215F?\303\tV8o\322\304>2\2441C\341#\247)\356T\325\223\331\251\2641\271\n\037\344-X\352|\201\367C:\221\264\262\322J\362\250\204np\035\354\274 9 \354\364\345n00\021\207\301B\234\261r\301\337UoiC\004\270\356[\255\241\362t\266\005\332M'r\312K\332\267\266>}\312\004\227\367\267\267\267G\214\361\304\263/\271D\372O\314@\337\230\303K\344\036Q\244\nQS>\307\273\306;\256\2221\035\250\251\313\261\247\307\035\253\334\361\270p\242W>/\013y\266\256RXU\355P\345\356\025\365\244G\264\300\"\353(\373\357]4\025q\254\262\236\277\021\271\255\305mG\005\353!\324\241.S\201\367[\361~+\277z\275+*\335\222b\006\364e*m\230\356\230\326\035\233?\353\375$\364\\}\036\367\244\237\375\372\362l\356%z\235\033\273R\007\027\016UE\355\377%\275\217\254wM\373\037[\370\006\333"
	.size	.L__llvm_prf_nm, 593

	.ident	"clang version 19.1.5 (Fedora 19.1.5-1.fc41)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcmp
	.addrsig_sym strchr
	.addrsig_sym strlen
	.addrsig_sym strncmp
	.addrsig_sym isdigit
	.addrsig_sym isspace
	.addrsig_sym __udivmodsi4
	.addrsig_sym __cmpdi2
	.addrsig_sym __muldsi3
	.addrsig_sym __mulddi3
	.addrsig_sym __ucmpdi2
	.addrsig_sym llvm_gcda_start_file
	.addrsig_sym llvm_gcda_emit_function
	.addrsig_sym llvm_gcda_emit_arcs
	.addrsig_sym llvm_gcda_summary_info
	.addrsig_sym llvm_gcda_end_file
	.addrsig_sym llvm_gcov_init
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
	.addrsig_sym __llvm_gcov_ctr
	.addrsig_sym __llvm_gcov_ctr.1
	.addrsig_sym __llvm_gcov_ctr.2
	.addrsig_sym __llvm_gcov_ctr.3
	.addrsig_sym __llvm_gcov_ctr.4
	.addrsig_sym __llvm_gcov_ctr.5
	.addrsig_sym __llvm_gcov_ctr.6
	.addrsig_sym __llvm_gcov_ctr.7
	.addrsig_sym __llvm_gcov_ctr.8
	.addrsig_sym __llvm_gcov_ctr.9
	.addrsig_sym __llvm_gcov_ctr.10
	.addrsig_sym __llvm_gcov_ctr.11
	.addrsig_sym __llvm_gcov_ctr.12
	.addrsig_sym __llvm_gcov_ctr.13
	.addrsig_sym __llvm_gcov_ctr.14
	.addrsig_sym __llvm_gcov_ctr.15
	.addrsig_sym __llvm_gcov_ctr.16
	.addrsig_sym __llvm_gcov_ctr.17
	.addrsig_sym __llvm_gcov_ctr.18
	.addrsig_sym __llvm_gcov_ctr.19
	.addrsig_sym __llvm_gcov_ctr.20
	.addrsig_sym __llvm_gcov_ctr.21
	.addrsig_sym __llvm_gcov_ctr.22
	.addrsig_sym __llvm_gcov_ctr.23
	.addrsig_sym __llvm_gcov_ctr.24
	.addrsig_sym __llvm_gcov_ctr.25
	.addrsig_sym __llvm_gcov_ctr.26
	.addrsig_sym __llvm_gcov_ctr.27
	.addrsig_sym __llvm_gcov_ctr.28
	.addrsig_sym __llvm_gcov_ctr.29
	.addrsig_sym __llvm_gcov_ctr.30
	.addrsig_sym __llvm_gcov_ctr.31
	.addrsig_sym __llvm_gcov_ctr.32
	.addrsig_sym __llvm_gcov_ctr.33
	.addrsig_sym __llvm_gcov_ctr.34
	.addrsig_sym __llvm_gcov_ctr.35
	.addrsig_sym __llvm_gcov_ctr.36
	.addrsig_sym __llvm_gcov_ctr.37
	.addrsig_sym __llvm_gcov_ctr.38
	.addrsig_sym __llvm_gcov_ctr.39
	.addrsig_sym __llvm_gcov_ctr.40
	.addrsig_sym __llvm_gcov_ctr.41
	.addrsig_sym __llvm_gcov_ctr.42
	.addrsig_sym __llvm_gcov_ctr.43
	.addrsig_sym __llvm_gcov_ctr.44
	.addrsig_sym __llvm_gcov_ctr.45
	.addrsig_sym __llvm_gcov_ctr.46
	.addrsig_sym __llvm_gcov_ctr.47
	.addrsig_sym __llvm_gcov_ctr.48
	.addrsig_sym __llvm_gcov_ctr.49
	.addrsig_sym __llvm_gcov_ctr.50
	.addrsig_sym __llvm_gcov_ctr.51
	.addrsig_sym __llvm_gcov_ctr.52
	.addrsig_sym __llvm_gcov_ctr.53
	.addrsig_sym __llvm_gcov_ctr.54
	.addrsig_sym __llvm_gcov_ctr.55
	.addrsig_sym __llvm_gcov_ctr.56
	.addrsig_sym __llvm_gcov_ctr.57
	.addrsig_sym __llvm_gcov_ctr.58
	.addrsig_sym __llvm_gcov_ctr.59
	.addrsig_sym __llvm_gcov_ctr.60
	.addrsig_sym __llvm_gcov_ctr.61
	.addrsig_sym __llvm_gcov_ctr.62
	.addrsig_sym __llvm_gcov_ctr.63
	.addrsig_sym __llvm_gcov_ctr.64
	.addrsig_sym __llvm_gcov_ctr.65
	.addrsig_sym __llvm_gcov_ctr.66
	.addrsig_sym __llvm_gcov_ctr.67
	.addrsig_sym __llvm_gcov_ctr.68
	.addrsig_sym __llvm_gcov_ctr.69
	.addrsig_sym __llvm_gcov_ctr.70
	.addrsig_sym __llvm_gcov_ctr.71
	.addrsig_sym __llvm_gcov_ctr.72
	.addrsig_sym __llvm_gcov_ctr.73
	.addrsig_sym __llvm_gcov_ctr.74
	.addrsig_sym __llvm_gcov_ctr.75
	.addrsig_sym __llvm_gcov_ctr.76
	.addrsig_sym __llvm_gcov_ctr.77
	.addrsig_sym __llvm_gcov_ctr.78
	.addrsig_sym __llvm_gcov_ctr.79
	.addrsig_sym __llvm_gcov_ctr.80
	.addrsig_sym __llvm_gcov_ctr.81
	.addrsig_sym __llvm_gcov_ctr.82
	.addrsig_sym __llvm_gcov_ctr.83
	.addrsig_sym __llvm_gcov_ctr.84
	.addrsig_sym __llvm_gcov_ctr.85
	.addrsig_sym __llvm_gcov_ctr.86
	.addrsig_sym __llvm_gcov_ctr.87
	.addrsig_sym __llvm_gcov_ctr.88
	.addrsig_sym __llvm_gcov_ctr.89
	.addrsig_sym __llvm_gcov_ctr.90
	.addrsig_sym __llvm_gcov_ctr.91
	.addrsig_sym __llvm_gcov_ctr.92
	.addrsig_sym __llvm_gcov_ctr.93
	.addrsig_sym __llvm_gcov_ctr.94
	.addrsig_sym __llvm_gcov_ctr.95
	.addrsig_sym __llvm_gcov_ctr.96
	.addrsig_sym __llvm_gcov_ctr.97
	.addrsig_sym __llvm_gcov_ctr.98
	.addrsig_sym __llvm_gcov_ctr.99
	.addrsig_sym __llvm_gcov_ctr.100
	.addrsig_sym __llvm_gcov_ctr.101
	.addrsig_sym __llvm_gcov_ctr.102
	.addrsig_sym __llvm_gcov_ctr.103
	.addrsig_sym __llvm_gcov_ctr.104
	.addrsig_sym __llvm_gcov_ctr.105
	.addrsig_sym __llvm_gcov_ctr.106
	.addrsig_sym __llvm_gcov_ctr.107
	.addrsig_sym __llvm_gcov_ctr.108
	.addrsig_sym __llvm_gcov_ctr.109
	.addrsig_sym __llvm_gcov_ctr.110
	.addrsig_sym __llvm_gcov_ctr.111
	.addrsig_sym __llvm_gcov_ctr.112
	.addrsig_sym __llvm_gcov_ctr.113
	.addrsig_sym __llvm_gcov_ctr.114
	.addrsig_sym __llvm_gcov_ctr.115
	.addrsig_sym __llvm_gcov_ctr.116
	.addrsig_sym __llvm_gcov_ctr.117
	.addrsig_sym __llvm_gcov_ctr.118
	.addrsig_sym __llvm_gcov_ctr.119
	.addrsig_sym __llvm_gcov_ctr.120
	.addrsig_sym __llvm_gcov_ctr.121
	.addrsig_sym __llvm_gcov_ctr.122
	.addrsig_sym __llvm_gcov_ctr.123
	.addrsig_sym __llvm_gcov_ctr.124
	.addrsig_sym __llvm_gcov_ctr.125
	.addrsig_sym __llvm_gcov_ctr.126
	.addrsig_sym __llvm_gcov_ctr.127
	.addrsig_sym __llvm_gcov_ctr.128
	.addrsig_sym __llvm_gcov_ctr.129
	.addrsig_sym __llvm_gcov_ctr.130
	.addrsig_sym __llvm_gcov_ctr.131
	.addrsig_sym __llvm_gcov_ctr.132
	.addrsig_sym __llvm_gcov_ctr.133
	.addrsig_sym __llvm_gcov_ctr.134
	.addrsig_sym __llvm_gcov_ctr.135
	.addrsig_sym __llvm_gcov_ctr.136
	.addrsig_sym __llvm_gcov_ctr.137
	.addrsig_sym __llvm_gcov_ctr.138
	.addrsig_sym __llvm_gcov_ctr.139
	.addrsig_sym __llvm_gcov_ctr.140
	.addrsig_sym __llvm_gcov_ctr.141
	.addrsig_sym __llvm_gcov_ctr.142
	.addrsig_sym __llvm_gcov_ctr.143
	.addrsig_sym __llvm_gcov_ctr.144
	.addrsig_sym __llvm_gcov_ctr.145
	.addrsig_sym __llvm_gcov_ctr.146
	.addrsig_sym __llvm_gcov_ctr.147
	.addrsig_sym __llvm_gcov_ctr.148
	.addrsig_sym __llvm_gcov_ctr.149
	.addrsig_sym __llvm_gcov_ctr.150
	.addrsig_sym __llvm_gcov_ctr.151
	.addrsig_sym __llvm_gcov_ctr.152
	.addrsig_sym __llvm_gcov_ctr.153
	.addrsig_sym __llvm_gcov_ctr.154
	.addrsig_sym __llvm_gcov_ctr.155
	.addrsig_sym __llvm_gcov_ctr.156
	.addrsig_sym __llvm_gcov_ctr.157
	.addrsig_sym __llvm_gcov_ctr.158
	.addrsig_sym __llvm_gcov_ctr.159
	.addrsig_sym __llvm_gcov_ctr.160
	.addrsig_sym __llvm_gcov_ctr.161
	.addrsig_sym __llvm_gcov_ctr.162
	.addrsig_sym __llvm_gcov_ctr.163
	.addrsig_sym __llvm_gcov_ctr.164
	.addrsig_sym __llvm_gcov_ctr.165
	.addrsig_sym __llvm_profile_runtime
	.addrsig_sym .L__profc_make_ti
	.addrsig_sym .L__profd_make_ti
	.addrsig_sym .L__profc_make_tu
	.addrsig_sym .L__profd_make_tu
	.addrsig_sym .L__profc_memmove
	.addrsig_sym .L__profd_memmove
	.addrsig_sym .L__profc_memccpy
	.addrsig_sym .L__profd_memccpy
	.addrsig_sym .L__profc_memchr
	.addrsig_sym .L__profd_memchr
	.addrsig_sym .L__profc_memcmp
	.addrsig_sym .L__profd_memcmp
	.addrsig_sym .L__profc_memcpy
	.addrsig_sym .L__profd_memcpy
	.addrsig_sym .L__profc_memrchr
	.addrsig_sym .L__profd_memrchr
	.addrsig_sym .L__profc_memset
	.addrsig_sym .L__profd_memset
	.addrsig_sym .L__profc_stpcpy
	.addrsig_sym .L__profd_stpcpy
	.addrsig_sym .L__profc_strchrnul
	.addrsig_sym .L__profd_strchrnul
	.addrsig_sym .L__profc_strchr
	.addrsig_sym .L__profd_strchr
	.addrsig_sym .L__profc_strcmp
	.addrsig_sym .L__profd_strcmp
	.addrsig_sym .L__profc_strlen
	.addrsig_sym .L__profd_strlen
	.addrsig_sym .L__profc_strncmp
	.addrsig_sym .L__profd_strncmp
	.addrsig_sym .L__profc_swab
	.addrsig_sym .L__profd_swab
	.addrsig_sym .L__profc_isalpha
	.addrsig_sym .L__profd_isalpha
	.addrsig_sym .L__profc_isascii
	.addrsig_sym .L__profd_isascii
	.addrsig_sym .L__profc_isblank
	.addrsig_sym .L__profd_isblank
	.addrsig_sym .L__profc_iscntrl
	.addrsig_sym .L__profd_iscntrl
	.addrsig_sym .L__profc_isdigit
	.addrsig_sym .L__profd_isdigit
	.addrsig_sym .L__profc_isgraph
	.addrsig_sym .L__profd_isgraph
	.addrsig_sym .L__profc_islower
	.addrsig_sym .L__profd_islower
	.addrsig_sym .L__profc_isprint
	.addrsig_sym .L__profd_isprint
	.addrsig_sym .L__profc_isspace
	.addrsig_sym .L__profd_isspace
	.addrsig_sym .L__profc_isupper
	.addrsig_sym .L__profd_isupper
	.addrsig_sym .L__profc_iswcntrl
	.addrsig_sym .L__profd_iswcntrl
	.addrsig_sym .L__profc_iswdigit
	.addrsig_sym .L__profd_iswdigit
	.addrsig_sym .L__profc_iswprint
	.addrsig_sym .L__profd_iswprint
	.addrsig_sym .L__profc_iswxdigit
	.addrsig_sym .L__profd_iswxdigit
	.addrsig_sym .L__profc_toascii
	.addrsig_sym .L__profd_toascii
	.addrsig_sym .L__profc_fdim
	.addrsig_sym .L__profd_fdim
	.addrsig_sym .L__profc_fdimf
	.addrsig_sym .L__profd_fdimf
	.addrsig_sym .L__profc_fmax
	.addrsig_sym .L__profd_fmax
	.addrsig_sym .L__profc_fmaxf
	.addrsig_sym .L__profd_fmaxf
	.addrsig_sym .L__profc_fmaxl
	.addrsig_sym .L__profd_fmaxl
	.addrsig_sym .L__profc_fmin
	.addrsig_sym .L__profd_fmin
	.addrsig_sym .L__profc_fminf
	.addrsig_sym .L__profd_fminf
	.addrsig_sym .L__profc_fminl
	.addrsig_sym .L__profd_fminl
	.addrsig_sym .L__profc_l64a
	.addrsig_sym .L__profd_l64a
	.addrsig_sym .L__profc_srand
	.addrsig_sym .L__profd_srand
	.addrsig_sym .L__profc_rand
	.addrsig_sym .L__profd_rand
	.addrsig_sym .L__profc_insque
	.addrsig_sym .L__profd_insque
	.addrsig_sym .L__profc_remque
	.addrsig_sym .L__profd_remque
	.addrsig_sym .L__profc_lsearch
	.addrsig_sym .L__profd_lsearch
	.addrsig_sym .L__profc_lfind
	.addrsig_sym .L__profd_lfind
	.addrsig_sym .L__profc_abs
	.addrsig_sym .L__profd_abs
	.addrsig_sym .L__profc_atoi
	.addrsig_sym .L__profd_atoi
	.addrsig_sym .L__profc_atol
	.addrsig_sym .L__profd_atol
	.addrsig_sym .L__profc_atoll
	.addrsig_sym .L__profd_atoll
	.addrsig_sym .L__profc_bsearch
	.addrsig_sym .L__profd_bsearch
	.addrsig_sym .L__profc_bsearch_r
	.addrsig_sym .L__profd_bsearch_r
	.addrsig_sym .L__profc_div
	.addrsig_sym .L__profd_div
	.addrsig_sym .L__profc_imaxabs
	.addrsig_sym .L__profd_imaxabs
	.addrsig_sym .L__profc_imaxdiv
	.addrsig_sym .L__profd_imaxdiv
	.addrsig_sym .L__profc_labs
	.addrsig_sym .L__profd_labs
	.addrsig_sym .L__profc_ldiv
	.addrsig_sym .L__profd_ldiv
	.addrsig_sym .L__profc_llabs
	.addrsig_sym .L__profd_llabs
	.addrsig_sym .L__profc_lldiv
	.addrsig_sym .L__profd_lldiv
	.addrsig_sym .L__profc_wcschr
	.addrsig_sym .L__profd_wcschr
	.addrsig_sym .L__profc_wcscmp
	.addrsig_sym .L__profd_wcscmp
	.addrsig_sym .L__profc_wcscpy
	.addrsig_sym .L__profd_wcscpy
	.addrsig_sym .L__profc_wcslen
	.addrsig_sym .L__profd_wcslen
	.addrsig_sym .L__profc_wcsncmp
	.addrsig_sym .L__profd_wcsncmp
	.addrsig_sym .L__profc_wmemchr
	.addrsig_sym .L__profd_wmemchr
	.addrsig_sym .L__profc_wmemcmp
	.addrsig_sym .L__profd_wmemcmp
	.addrsig_sym .L__profc_wmemcpy
	.addrsig_sym .L__profd_wmemcpy
	.addrsig_sym .L__profc_wmemmove
	.addrsig_sym .L__profd_wmemmove
	.addrsig_sym .L__profc_wmemset
	.addrsig_sym .L__profd_wmemset
	.addrsig_sym .L__profc_bcopy
	.addrsig_sym .L__profd_bcopy
	.addrsig_sym .L__profc_rotl64
	.addrsig_sym .L__profd_rotl64
	.addrsig_sym .L__profc_rotr64
	.addrsig_sym .L__profd_rotr64
	.addrsig_sym .L__profc_rotl32
	.addrsig_sym .L__profd_rotl32
	.addrsig_sym .L__profc_rotr32
	.addrsig_sym .L__profd_rotr32
	.addrsig_sym .L__profc_rotl_sz
	.addrsig_sym .L__profd_rotl_sz
	.addrsig_sym .L__profc_rotr_sz
	.addrsig_sym .L__profd_rotr_sz
	.addrsig_sym .L__profc_rotl16
	.addrsig_sym .L__profd_rotl16
	.addrsig_sym .L__profc_rotr16
	.addrsig_sym .L__profd_rotr16
	.addrsig_sym .L__profc_rotl8
	.addrsig_sym .L__profd_rotl8
	.addrsig_sym .L__profc_rotr8
	.addrsig_sym .L__profd_rotr8
	.addrsig_sym .L__profc_bswap_16
	.addrsig_sym .L__profd_bswap_16
	.addrsig_sym .L__profc_bswap_32
	.addrsig_sym .L__profd_bswap_32
	.addrsig_sym .L__profc_bswap_64
	.addrsig_sym .L__profd_bswap_64
	.addrsig_sym .L__profc_ffs
	.addrsig_sym .L__profd_ffs
	.addrsig_sym .L__profc_libiberty_ffs
	.addrsig_sym .L__profd_libiberty_ffs
	.addrsig_sym .L__profc_gl_isinff
	.addrsig_sym .L__profd_gl_isinff
	.addrsig_sym .L__profc_gl_isinfd
	.addrsig_sym .L__profd_gl_isinfd
	.addrsig_sym .L__profc_gl_isinfl
	.addrsig_sym .L__profd_gl_isinfl
	.addrsig_sym .L__profc__Qp_itoq
	.addrsig_sym .L__profd__Qp_itoq
	.addrsig_sym .L__profc_ldexpf
	.addrsig_sym .L__profd_ldexpf
	.addrsig_sym .L__profc_ldexp
	.addrsig_sym .L__profd_ldexp
	.addrsig_sym .L__profc_ldexpl
	.addrsig_sym .L__profd_ldexpl
	.addrsig_sym .L__profc_memxor
	.addrsig_sym .L__profd_memxor
	.addrsig_sym .L__profc_strncat
	.addrsig_sym .L__profd_strncat
	.addrsig_sym .L__profc_strnlen
	.addrsig_sym .L__profd_strnlen
	.addrsig_sym .L__profc_strpbrk
	.addrsig_sym .L__profd_strpbrk
	.addrsig_sym .L__profc_strrchr
	.addrsig_sym .L__profd_strrchr
	.addrsig_sym .L__profc_strstr
	.addrsig_sym .L__profd_strstr
	.addrsig_sym .L__profc_copysign
	.addrsig_sym .L__profd_copysign
	.addrsig_sym .L__profc_memmem
	.addrsig_sym .L__profd_memmem
	.addrsig_sym .L__profc_mempcpy
	.addrsig_sym .L__profd_mempcpy
	.addrsig_sym .L__profc_frexp
	.addrsig_sym .L__profd_frexp
	.addrsig_sym .L__profc___muldi3
	.addrsig_sym .L__profd___muldi3
	.addrsig_sym .L__profc_udivmodsi4
	.addrsig_sym .L__profd_udivmodsi4
	.addrsig_sym .L__profc___clrsbqi2
	.addrsig_sym .L__profd___clrsbqi2
	.addrsig_sym .L__profc___clrsbdi2
	.addrsig_sym .L__profd___clrsbdi2
	.addrsig_sym .L__profc___mulsi3
	.addrsig_sym .L__profd___mulsi3
	.addrsig_sym .L__profc___cmovd
	.addrsig_sym .L__profd___cmovd
	.addrsig_sym .L__profc___cmovh
	.addrsig_sym .L__profd___cmovh
	.addrsig_sym .L__profc___cmovw
	.addrsig_sym .L__profd___cmovw
	.addrsig_sym .L__profc___modi
	.addrsig_sym .L__profd___modi
	.addrsig_sym .L__profc___uitod
	.addrsig_sym .L__profd___uitod
	.addrsig_sym .L__profc___uitof
	.addrsig_sym .L__profd___uitof
	.addrsig_sym .L__profc___ulltod
	.addrsig_sym .L__profd___ulltod
	.addrsig_sym .L__profc___ulltof
	.addrsig_sym .L__profd___ulltof
	.addrsig_sym .L__profc___umodi
	.addrsig_sym .L__profd___umodi
	.addrsig_sym .L__profc___clzhi2
	.addrsig_sym .L__profd___clzhi2
	.addrsig_sym .L__profc___ctzhi2
	.addrsig_sym .L__profd___ctzhi2
	.addrsig_sym .L__profc___fixunssfsi
	.addrsig_sym .L__profd___fixunssfsi
	.addrsig_sym .L__profc___parityhi2
	.addrsig_sym .L__profd___parityhi2
	.addrsig_sym .L__profc___popcounthi2
	.addrsig_sym .L__profd___popcounthi2
	.addrsig_sym .L__profc___mulsi3_iq2000
	.addrsig_sym .L__profd___mulsi3_iq2000
	.addrsig_sym .L__profc___mulsi3_lm32
	.addrsig_sym .L__profd___mulsi3_lm32
	.addrsig_sym .L__profc___udivmodsi4
	.addrsig_sym .L__profd___udivmodsi4
	.addrsig_sym .L__profc___mspabi_cmpf
	.addrsig_sym .L__profd___mspabi_cmpf
	.addrsig_sym .L__profc___mspabi_cmpd
	.addrsig_sym .L__profd___mspabi_cmpd
	.addrsig_sym .L__profc___mspabi_mpysll
	.addrsig_sym .L__profd___mspabi_mpysll
	.addrsig_sym .L__profc___mspabi_mpyull
	.addrsig_sym .L__profd___mspabi_mpyull
	.addrsig_sym .L__profc___mulhi3
	.addrsig_sym .L__profd___mulhi3
	.addrsig_sym .L__profc___divsi3
	.addrsig_sym .L__profd___divsi3
	.addrsig_sym .L__profc___modsi3
	.addrsig_sym .L__profd___modsi3
	.addrsig_sym .L__profc___udivmodhi4
	.addrsig_sym .L__profd___udivmodhi4
	.addrsig_sym .L__profc___udivmodsi4_libgcc
	.addrsig_sym .L__profd___udivmodsi4_libgcc
	.addrsig_sym .L__profc___ashldi3
	.addrsig_sym .L__profd___ashldi3
	.addrsig_sym .L__profc___ashlti3
	.addrsig_sym .L__profd___ashlti3
	.addrsig_sym .L__profc___ashrdi3
	.addrsig_sym .L__profd___ashrdi3
	.addrsig_sym .L__profc___ashrti3
	.addrsig_sym .L__profd___ashrti3
	.addrsig_sym .L__profc___bswapdi2
	.addrsig_sym .L__profd___bswapdi2
	.addrsig_sym .L__profc___bswapsi2
	.addrsig_sym .L__profd___bswapsi2
	.addrsig_sym .L__profc___clzsi2
	.addrsig_sym .L__profd___clzsi2
	.addrsig_sym .L__profc___clzti2
	.addrsig_sym .L__profd___clzti2
	.addrsig_sym .L__profc___cmpdi2
	.addrsig_sym .L__profd___cmpdi2
	.addrsig_sym .L__profc___aeabi_lcmp
	.addrsig_sym .L__profd___aeabi_lcmp
	.addrsig_sym .L__profc___cmpti2
	.addrsig_sym .L__profd___cmpti2
	.addrsig_sym .L__profc___ctzsi2
	.addrsig_sym .L__profd___ctzsi2
	.addrsig_sym .L__profc___ctzti2
	.addrsig_sym .L__profd___ctzti2
	.addrsig_sym .L__profc___ffsti2
	.addrsig_sym .L__profd___ffsti2
	.addrsig_sym .L__profc___lshrdi3
	.addrsig_sym .L__profd___lshrdi3
	.addrsig_sym .L__profc___lshrti3
	.addrsig_sym .L__profd___lshrti3
	.addrsig_sym .L__profc___muldsi3
	.addrsig_sym .L__profd___muldsi3
	.addrsig_sym .L__profc___muldi3_compiler_rt
	.addrsig_sym .L__profd___muldi3_compiler_rt
	.addrsig_sym .L__profc___mulddi3
	.addrsig_sym .L__profd___mulddi3
	.addrsig_sym .L__profc___multi3
	.addrsig_sym .L__profd___multi3
	.addrsig_sym .L__profc___negdi2
	.addrsig_sym .L__profd___negdi2
	.addrsig_sym .L__profc___negti2
	.addrsig_sym .L__profd___negti2
	.addrsig_sym .L__profc___paritydi2
	.addrsig_sym .L__profd___paritydi2
	.addrsig_sym .L__profc___parityti2
	.addrsig_sym .L__profd___parityti2
	.addrsig_sym .L__profc___paritysi2
	.addrsig_sym .L__profd___paritysi2
	.addrsig_sym .L__profc___popcountdi2
	.addrsig_sym .L__profd___popcountdi2
	.addrsig_sym .L__profc___popcountsi2
	.addrsig_sym .L__profd___popcountsi2
	.addrsig_sym .L__profc___popcountti2
	.addrsig_sym .L__profd___popcountti2
	.addrsig_sym .L__profc___powidf2
	.addrsig_sym .L__profd___powidf2
	.addrsig_sym .L__profc___powisf2
	.addrsig_sym .L__profd___powisf2
	.addrsig_sym .L__profc___ucmpdi2
	.addrsig_sym .L__profd___ucmpdi2
	.addrsig_sym .L__profc___aeabi_ulcmp
	.addrsig_sym .L__profd___aeabi_ulcmp
	.addrsig_sym .L__profc___ucmpti2
	.addrsig_sym .L__profd___ucmpti2
	.addrsig_sym .L__llvm_prf_nm
