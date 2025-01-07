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
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
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
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
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
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 32]
	jae	.LBB2_6
# %bb.1:
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
	jmp	.LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
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
	jmp	.LBB2_12
.LBB2_12:
	jmp	.LBB2_13
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
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	mov	rax, qword ptr [rbp - 56]
	mov	al, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 48]
	mov	byte ptr [rcx], al
	movzx	eax, al
	cmp	eax, dword ptr [rbp - 28]
	setne	al
	mov	byte ptr [rbp - 57], al         # 1-byte Spill
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	mov	al, byte ptr [rbp - 57]         # 1-byte Reload
	test	al, 1
	jne	.LBB3_4
	jmp	.LBB3_6
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	cmp	qword ptr [rbp - 40], 0
	je	.LBB3_8
# %bb.7:
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB3_9
.LBB3_8:
	mov	qword ptr [rbp - 8], 0
.LBB3_9:
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
	je	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	mov	al, byte ptr [rbp - 33]         # 1-byte Reload
	test	al, 1
	jne	.LBB4_4
	jmp	.LBB4_6
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB4_1
.LBB4_6:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB4_8
# %bb.7:
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 48], rax       # 8-byte Spill
	jmp	.LBB4_9
.LBB4_8:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 48], rax       # 8-byte Spill
	jmp	.LBB4_9
.LBB4_9:
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
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
	je	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rcx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	mov	al, byte ptr [rbp - 41]         # 1-byte Reload
	test	al, 1
	jne	.LBB5_4
	jmp	.LBB5_6
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
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
.LBB5_6:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB5_8
# %bb.7:
	mov	rax, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rcx]
	sub	eax, ecx
	mov	dword ptr [rbp - 48], eax       # 4-byte Spill
	jmp	.LBB5_9
.LBB5_8:
	xor	eax, eax
	mov	dword ptr [rbp - 48], eax       # 4-byte Spill
	jmp	.LBB5_9
.LBB5_9:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
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
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 32]
	movzx	eax, byte ptr [rax + rcx]
	cmp	eax, dword ptr [rbp - 20]
	jne	.LBB7_4
# %bb.3:
	mov	rax, qword ptr [rbp - 40]
	add	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_1
.LBB7_5:
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	cl, al
	mov	rax, qword ptr [rbp - 32]
	mov	byte ptr [rax], cl
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	al, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	byte ptr [rcx], al
	cmp	al, 0
	je	.LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
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
	je	.LBB10_3
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movzx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	mov	al, byte ptr [rbp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB10_4
	jmp	.LBB10_6
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB10_1
.LBB10_6:
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
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 16]
	movsx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 20]
	jne	.LBB11_3
# %bb.2:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB11_6
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_4
.LBB11_4:                               #   in Loop: Header=BB11_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 16], rcx
	cmp	byte ptr [rax], 0
	jne	.LBB11_1
# %bb.5:
	mov	qword ptr [rbp - 8], 0
.LBB11_6:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	movsx	edx, byte ptr [rax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB12_3
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	setne	al
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	mov	al, byte ptr [rbp - 17]         # 1-byte Reload
	test	al, 1
	jne	.LBB12_4
	jmp	.LBB12_6
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB12_1
.LBB12_6:
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
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
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
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB14_11
.LBB14_2:
	jmp	.LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 40]
	movzx	ecx, byte ptr [rax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB14_7
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	mov	rax, qword ptr [rbp - 48]
	movzx	ecx, byte ptr [rax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB14_7
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 32], 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB14_7
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	mov	rax, qword ptr [rbp - 40]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 48]
	movzx	ecx, byte ptr [rcx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	mov	al, byte ptr [rbp - 49]         # 1-byte Reload
	test	al, 1
	jne	.LBB14_8
	jmp	.LBB14_10
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	jmp	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
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
.LBB14_10:
	mov	rax, qword ptr [rbp - 40]
	movzx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 48]
	movzx	ecx, byte ptr [rcx]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.LBB14_11:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 1
	jle	.LBB15_4
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	je	.LBB18_2
# %bb.1:
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB18_2:
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
	mov	dword ptr [rbp - 4], edi
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB19_2
# %bb.1:
	cmp	dword ptr [rbp - 4], 127
	sete	al
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB19_2:
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	je	.LBB24_2
# %bb.1:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 9
	cmp	eax, 5
	setb	al
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB24_2:
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
	mov	al, 1
	cmp	dword ptr [rbp - 4], 32
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB26_4
# %bb.1:
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 127
	mov	al, 1
	cmp	ecx, 33
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB26_4
# %bb.2:
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 8232
	mov	al, 1
	cmp	ecx, 2
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB26_4
# %bb.3:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 65529
	cmp	eax, 3
	setb	al
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB26_4:
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
	mov	dword ptr [rbp - 4], edi
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
	cmp	dword ptr [rbp - 8], 255
	jae	.LBB28_2
# %bb.1:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	and	eax, 127
	cmp	eax, 33
	setge	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB28_10
.LBB28_2:
	cmp	dword ptr [rbp - 8], 8232
	jb	.LBB28_5
# %bb.3:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 8234
	cmp	eax, 47062
	jb	.LBB28_5
# %bb.4:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 57344
	cmp	eax, 8185
	jae	.LBB28_6
.LBB28_5:
	mov	dword ptr [rbp - 4], 1
	jmp	.LBB28_10
.LBB28_6:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.LBB28_8
# %bb.7:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 65534
	cmp	eax, 65534
	jne	.LBB28_9
.LBB28_8:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB28_10
.LBB28_9:
	mov	dword ptr [rbp - 4], 1
.LBB28_10:
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
	mov	dword ptr [rbp - 4], edi
	mov	ecx, dword ptr [rbp - 4]
	sub	ecx, 48
	mov	al, 1
	cmp	ecx, 10
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	jb	.LBB29_2
# %bb.1:
	mov	eax, dword ptr [rbp - 4]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 6
	setb	al
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB29_2:
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
	mov	dword ptr [rbp - 4], edi
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
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB31_1
	jmp	.LBB31_2
.LBB31_1:
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
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB31_8
.LBB31_4:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 24]
	jbe	.LBB31_6
# %bb.5:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	subsd	xmm0, qword ptr [rbp - 24]
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB31_7
.LBB31_6:
	xorps	xmm0, xmm0
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB31_7
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
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB32_1
	jmp	.LBB32_2
.LBB32_1:
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
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB32_8
.LBB32_4:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 12]
	jbe	.LBB32_6
# %bb.5:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	subss	xmm0, dword ptr [rbp - 12]
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jmp	.LBB32_7
.LBB32_6:
	xorps	xmm0, xmm0
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jmp	.LBB32_7
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
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB33_1
	jmp	.LBB33_2
.LBB33_1:
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
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	cmp	rax, 0
	jge	.LBB33_7
# %bb.6:
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB33_8
.LBB33_7:
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
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm0      # 8-byte Spill
	jmp	.LBB33_12
.LBB33_11:
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
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB34_1
	jmp	.LBB34_2
.LBB34_1:
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
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movd	eax, xmm0
	cmp	eax, 0
	jge	.LBB34_7
# %bb.6:
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jmp	.LBB34_8
.LBB34_7:
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
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
	jmp	.LBB34_12
.LBB34_11:
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
	fld	tbyte ptr [rbp - 32]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB35_1
	jmp	.LBB35_2
.LBB35_1:
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
	movsx	rax, word ptr [rbp - 24]
	test	rax, rax
	jns	.LBB35_7
	jmp	.LBB35_6
.LBB35_6:
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 60]            # 10-byte Folded Spill
	jmp	.LBB35_8
.LBB35_7:
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
	fld	tbyte ptr [rbp - 48]
	fstp	tbyte ptr [rbp - 72]            # 10-byte Folded Spill
	jmp	.LBB35_12
.LBB35_11:
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
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB36_1
	jmp	.LBB36_2
.LBB36_1:
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
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	cmp	rax, 0
	jge	.LBB36_7
# %bb.6:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB36_8
.LBB36_7:
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
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm0      # 8-byte Spill
	jmp	.LBB36_12
.LBB36_11:
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
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB37_1
	jmp	.LBB37_2
.LBB37_1:
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
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movd	eax, xmm0
	cmp	eax, 0
	jge	.LBB37_7
# %bb.6:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jmp	.LBB37_8
.LBB37_7:
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
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
	jmp	.LBB37_12
.LBB37_11:
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
	fld	tbyte ptr [rbp - 32]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB38_1
	jmp	.LBB38_2
.LBB38_1:
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
	movsx	rax, word ptr [rbp - 24]
	test	rax, rax
	jns	.LBB38_7
	jmp	.LBB38_6
.LBB38_6:
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 60]            # 10-byte Folded Spill
	jmp	.LBB38_8
.LBB38_7:
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
	fld	tbyte ptr [rbp - 32]
	fstp	tbyte ptr [rbp - 72]            # 10-byte Folded Spill
	jmp	.LBB38_12
.LBB38_11:
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
	mov	qword ptr [rbp - 8], rdi
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 20], eax
	movabs	rax, offset l64a.s
	mov	qword ptr [rbp - 16], rax
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	je	.LBB39_4
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	mov	eax, dword ptr [rbp - 20]
	and	eax, 63
                                        # kill: def $rax killed $eax
	movabs	rcx, offset digits
	add	rax, rcx
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 16]
	mov	byte ptr [rax], cl
# %bb.3:                                #   in Loop: Header=BB39_1 Depth=1
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
	mov	dword ptr [rbp - 4], edi
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
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	cmp	qword ptr [rbp - 32], 0
	jne	.LBB42_2
# %bb.1:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rax], 0
	jmp	.LBB42_4
.LBB42_2:
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
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 16]
	cmp	qword ptr [rax], 0
	je	.LBB43_2
# %bb.1:
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
	mov	rax, qword ptr [rbp - 56]
	imul	rcx, qword ptr [rbp - 72]
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	jmp	.LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	mov	rax, qword ptr [rbp - 72]
	add	rax, 1
	mov	qword ptr [rbp - 72], rax
	jmp	.LBB44_1
.LBB44_6:
	mov	rax, qword ptr [rbp - 80]       # 8-byte Reload
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
	mov	rax, qword ptr [rbp - 56]
	imul	rcx, qword ptr [rbp - 72]
	add	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	jmp	.LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	mov	rax, qword ptr [rbp - 72]
	add	rax, 1
	mov	qword ptr [rbp - 72], rax
	jmp	.LBB45_1
.LBB45_6:
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
	cmp	dword ptr [rbp - 4], 0
	jle	.LBB46_2
# %bb.1:
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 8], eax        # 4-byte Spill
	jmp	.LBB46_3
.LBB46_2:
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
	jmp	.LBB47_13
.LBB47_13:
	mov	eax, dword ptr [rbp - 20]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB47_6
	jmp	.LBB47_4
.LBB47_4:
	mov	dword ptr [rbp - 16], 1
.LBB47_5:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.LBB47_6:
	jmp	.LBB47_7
.LBB47_7:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isdigit
	call	rax
	cmp	eax, 0
	je	.LBB47_9
# %bb.8:                                #   in Loop: Header=BB47_7 Depth=1
	imul	eax, dword ptr [rbp - 12], 10
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 8], rdx
	movsx	ecx, byte ptr [rcx]
	sub	ecx, 48
	sub	eax, ecx
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB47_7
.LBB47_9:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB47_11
# %bb.10:
	mov	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
	jmp	.LBB47_12
.LBB47_11:
	xor	eax, eax
	sub	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
.LBB47_12:
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
	jmp	.LBB48_13
.LBB48_13:
	mov	eax, dword ptr [rbp - 24]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB48_6
	jmp	.LBB48_4
.LBB48_4:
	mov	dword ptr [rbp - 20], 1
.LBB48_5:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.LBB48_6:
	jmp	.LBB48_7
.LBB48_7:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isdigit
	call	rax
	cmp	eax, 0
	je	.LBB48_9
# %bb.8:                                #   in Loop: Header=BB48_7 Depth=1
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
	jmp	.LBB48_7
.LBB48_9:
	cmp	dword ptr [rbp - 20], 0
	je	.LBB48_11
# %bb.10:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	jmp	.LBB48_12
.LBB48_11:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
.LBB48_12:
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
	jmp	.LBB49_13
.LBB49_13:
	mov	eax, dword ptr [rbp - 24]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB49_6
	jmp	.LBB49_4
.LBB49_4:
	mov	dword ptr [rbp - 20], 1
.LBB49_5:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
.LBB49_6:
	jmp	.LBB49_7
.LBB49_7:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	movabs	rax, offset isdigit
	call	rax
	cmp	eax, 0
	je	.LBB49_9
# %bb.8:                                #   in Loop: Header=BB49_7 Depth=1
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
	jmp	.LBB49_7
.LBB49_9:
	cmp	dword ptr [rbp - 20], 0
	je	.LBB49_11
# %bb.10:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	jmp	.LBB49_12
.LBB49_11:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
.LBB49_12:
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
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 32], 0
	jbe	.LBB50_9
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
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
	mov	rax, qword ptr [rbp - 32]
	shr	rax
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	cmp	dword ptr [rbp - 60], 0
	jle	.LBB50_6
# %bb.5:                                #   in Loop: Header=BB50_1 Depth=1
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
	mov	rax, qword ptr [rbp - 56]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	jmp	.LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	jmp	.LBB50_1
.LBB50_9:
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
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 64], rax
	mov	rax, qword ptr [rbp - 32]
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 68], eax
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 68], 0
	je	.LBB51_8
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
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
	mov	rax, qword ptr [rbp - 80]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	cmp	dword ptr [rbp - 72], 0
	jle	.LBB51_6
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
	mov	rax, qword ptr [rbp - 80]
	add	rax, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 64], rax
	mov	eax, dword ptr [rbp - 68]
	add	eax, -1
	mov	dword ptr [rbp - 68], eax
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	jmp	.LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	mov	eax, dword ptr [rbp - 68]
	sar	eax
	mov	dword ptr [rbp - 68], eax
	jmp	.LBB51_1
.LBB51_8:
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
	mov	dword ptr [rbp - 12], edi
	mov	dword ptr [rbp - 16], esi
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
	cmp	qword ptr [rbp - 8], 0
	jle	.LBB53_2
# %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	jmp	.LBB53_3
.LBB53_2:
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
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
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
	cmp	qword ptr [rbp - 8], 0
	jle	.LBB55_2
# %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	jmp	.LBB55_3
.LBB55_2:
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
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
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
	cmp	qword ptr [rbp - 8], 0
	jle	.LBB57_2
# %bb.1:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	jmp	.LBB57_3
.LBB57_2:
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
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
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
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbp - 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
	je	.LBB59_3
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 13], al         # 1-byte Spill
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	mov	al, byte ptr [rbp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB59_4
	jmp	.LBB59_6
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	jmp	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB59_1
.LBB59_6:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.LBB59_8
# %bb.7:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax       # 8-byte Spill
	jmp	.LBB59_9
.LBB59_8:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 24], rax       # 8-byte Spill
	jmp	.LBB59_9
.LBB59_9:
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
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 16]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rdx]
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jne	.LBB60_4
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	mov	rcx, qword ptr [rbp - 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	je	.LBB60_4
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	setne	al
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	mov	al, byte ptr [rbp - 17]         # 1-byte Reload
	test	al, 1
	jne	.LBB60_5
	jmp	.LBB60_7
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 16]
	add	rax, 4
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB60_1
.LBB60_7:
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	.LBB60_9
# %bb.8:
	mov	eax, 4294967295
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
	jmp	.LBB60_10
.LBB60_9:
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 24], eax       # 4-byte Spill
.LBB60_10:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
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
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.LBB62_4
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
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
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB63_5
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 16]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rdx]
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jne	.LBB63_5
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	mov	rcx, qword ptr [rbp - 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rcx], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB63_5
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	dword ptr [rax], 0
	setne	al
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB63_6
	jmp	.LBB63_8
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_8:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB63_13
# %bb.9:
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	.LBB63_11
# %bb.10:
	mov	eax, 4294967295
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
	jmp	.LBB63_12
.LBB63_11:
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
.LBB63_12:
	mov	eax, dword ptr [rbp - 32]       # 4-byte Reload
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
	jmp	.LBB63_14
.LBB63_13:
	xor	eax, eax
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
	jmp	.LBB63_14
.LBB63_14:
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
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB64_3
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	setne	al
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB64_4
	jmp	.LBB64_6
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	jmp	.LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, -1
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB64_1
.LBB64_6:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB64_8
# %bb.7:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
	jmp	.LBB64_9
.LBB64_8:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 40], rax       # 8-byte Spill
	jmp	.LBB64_9
.LBB64_9:
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
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 24], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB65_3
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	sete	al
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB65_4
	jmp	.LBB65_6
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	jmp	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
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
.LBB65_6:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB65_11
# %bb.7:
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	jge	.LBB65_9
# %bb.8:
	mov	eax, 4294967295
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
	jmp	.LBB65_10
.LBB65_9:
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 16]
	cmp	eax, dword ptr [rcx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 32], eax       # 4-byte Spill
.LBB65_10:
	mov	eax, dword ptr [rbp - 32]       # 4-byte Reload
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
	jmp	.LBB65_12
.LBB65_11:
	xor	eax, eax
	mov	dword ptr [rbp - 36], eax       # 4-byte Spill
	jmp	.LBB65_12
.LBB65_12:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 16]
	cmp	rax, qword ptr [rbp - 24]
	jne	.LBB67_2
# %bb.1:
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
	jmp	.LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 32], rcx
	cmp	rax, 0
	je	.LBB67_6
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
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
	jmp	.LBB67_11
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rdx
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
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 32]
	cmp	rax, qword ptr [rbp - 40]
	jae	.LBB69_6
# %bb.1:
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
	jmp	.LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	je	.LBB69_11
# %bb.9:                                #   in Loop: Header=BB69_8 Depth=1
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
	jmp	.LBB69_12
.LBB69_12:
	jmp	.LBB69_13
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
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
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
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
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
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
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
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
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
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
	mov	word ptr [rbp - 2], ax
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
	mov	dword ptr [rbp - 4], edi
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
	mov	qword ptr [rbp - 8], rdi
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
	mov	dword ptr [rbp - 12], 0
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $rax killed $eax
	cmp	rax, 32
	jae	.LBB83_6
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
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
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	jmp	.LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB83_1
.LBB83_6:
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
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB84_2
# %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB84_7
.LBB84_2:
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
	mov	eax, dword ptr [rbp - 8]
	sar	eax
	mov	dword ptr [rbp - 8], eax
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
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
	movss	dword ptr [rbp - 4], xmm0
	mov	al, 1
	movabs	rcx, offset .LCPI85_0
	movss	xmm0, dword ptr [rcx]           # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
	ja	.LBB85_2
# %bb.1:
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	movabs	rax, offset .LCPI85_1
	movss	xmm1, dword ptr [rax]           # xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	seta	al
	mov	byte ptr [rbp - 5], al          # 1-byte Spill
.LBB85_2:
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
	movsd	qword ptr [rbp - 8], xmm0
	mov	al, 1
	movabs	rcx, offset .LCPI86_0
	movsd	xmm0, qword ptr [rcx]           # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], al          # 1-byte Spill
	ja	.LBB86_2
# %bb.1:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movabs	rax, offset .LCPI86_1
	movsd	xmm1, qword ptr [rax]           # xmm1 = mem[0],zero
	ucomisd	xmm0, xmm1
	seta	al
	mov	byte ptr [rbp - 9], al          # 1-byte Spill
.LBB86_2:
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
	fstp	tbyte ptr [rbp - 16]
	fld	tbyte ptr [rbp - 16]
	mov	al, 1
	movabs	rcx, offset .LCPI87_0
	fld	tbyte ptr [rcx]
	fucompi	st, st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	ja	.LBB87_2
	jmp	.LBB87_1
.LBB87_1:
	fld	tbyte ptr [rbp - 16]
	movabs	rax, offset .LCPI87_1
	fld	tbyte ptr [rax]
	fxch	st(1)
	fucompi	st, st(1)
	fstp	st(0)
	seta	al
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB87_2:
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
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
	movss	dword ptr [rbp - 4], xmm0
	mov	dword ptr [rbp - 8], edi
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB89_9
# %bb.1:
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	addss	xmm0, dword ptr [rbp - 4]
	ucomiss	xmm0, dword ptr [rbp - 4]
	jne	.LBB89_2
	jp	.LBB89_2
	jmp	.LBB89_9
.LBB89_2:
	mov	eax, dword ptr [rbp - 8]
	movabs	rcx, offset .LCPI89_0
	movss	xmm0, dword ptr [rcx]           # xmm0 = mem[0],zero,zero,zero
	movabs	rcx, offset .LCPI89_1
	movss	xmm1, dword ptr [rcx]           # xmm1 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 20], xmm1      # 4-byte Spill
	cmp	eax, 0
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
	jl	.LBB89_11
# %bb.10:
	movss	xmm0, dword ptr [rbp - 20]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0      # 4-byte Spill
.LBB89_11:
	movss	xmm0, dword ptr [rbp - 16]      # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 12], xmm0
.LBB89_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB89_5
# %bb.4:                                #   in Loop: Header=BB89_3 Depth=1
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 4]
	movss	dword ptr [rbp - 4], xmm0
.LBB89_5:                               #   in Loop: Header=BB89_3 Depth=1
	mov	eax, dword ptr [rbp - 8]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB89_7
# %bb.6:
	jmp	.LBB89_8
.LBB89_7:                               #   in Loop: Header=BB89_3 Depth=1
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 12]
	movss	dword ptr [rbp - 12], xmm0
	jmp	.LBB89_3
.LBB89_8:
	jmp	.LBB89_9
.LBB89_9:
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
	movsd	qword ptr [rbp - 8], xmm0
	mov	dword ptr [rbp - 12], edi
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm0
	setp	al
	test	al, 1
	jne	.LBB90_9
# %bb.1:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	addsd	xmm0, qword ptr [rbp - 8]
	ucomisd	xmm0, qword ptr [rbp - 8]
	jne	.LBB90_2
	jp	.LBB90_2
	jmp	.LBB90_9
.LBB90_2:
	mov	eax, dword ptr [rbp - 12]
	movabs	rcx, offset .LCPI90_0
	movsd	xmm0, qword ptr [rcx]           # xmm0 = mem[0],zero
	movabs	rcx, offset .LCPI90_1
	movsd	xmm1, qword ptr [rcx]           # xmm1 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm1      # 8-byte Spill
	cmp	eax, 0
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jl	.LBB90_11
# %bb.10:
	movsd	xmm0, qword ptr [rbp - 40]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
.LBB90_11:
	movsd	xmm0, qword ptr [rbp - 32]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 24], xmm0
.LBB90_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB90_5
# %bb.4:                                #   in Loop: Header=BB90_3 Depth=1
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 8], xmm0
.LBB90_5:                               #   in Loop: Header=BB90_3 Depth=1
	mov	eax, dword ptr [rbp - 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 12], eax
	cmp	dword ptr [rbp - 12], 0
	jne	.LBB90_7
# %bb.6:
	jmp	.LBB90_8
.LBB90_7:                               #   in Loop: Header=BB90_3 Depth=1
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 24]
	movsd	qword ptr [rbp - 24], xmm0
	jmp	.LBB90_3
.LBB90_8:
	jmp	.LBB90_9
.LBB90_9:
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
	fstp	tbyte ptr [rbp - 16]
	mov	dword ptr [rbp - 20], edi
	fld	tbyte ptr [rbp - 16]
	fucompi	st, st(0)
	setp	al
	test	al, 1
	jne	.LBB91_9
# %bb.1:
	fld	tbyte ptr [rbp - 16]
	fld	st(0)
	fadd	st, st(1)
	fucompi	st, st(1)
	fstp	st(0)
	jne	.LBB91_2
	jp	.LBB91_2
	jmp	.LBB91_9
.LBB91_2:
	mov	eax, dword ptr [rbp - 20]
	shr	eax, 27
	and	eax, -16
	mov	ecx, eax
	movabs	rax, offset .LCPI91_0
	fld	tbyte ptr [rax + rcx]
	fstp	tbyte ptr [rbp - 48]
.LBB91_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB91_5
# %bb.4:                                #   in Loop: Header=BB91_3 Depth=1
	fld	tbyte ptr [rbp - 48]
	fld	tbyte ptr [rbp - 16]
	fmulp	st(1), st
	fstp	tbyte ptr [rbp - 16]
.LBB91_5:                               #   in Loop: Header=BB91_3 Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 20], eax
	cmp	dword ptr [rbp - 20], 0
	jne	.LBB91_7
# %bb.6:
	jmp	.LBB91_8
.LBB91_7:                               #   in Loop: Header=BB91_3 Depth=1
	fld	tbyte ptr [rbp - 48]
	fmul	st(0), st
	fstp	tbyte ptr [rbp - 48]
	jmp	.LBB91_3
.LBB91_8:
	jmp	.LBB91_9
.LBB91_9:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 24], 0
	jbe	.LBB92_4
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
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
	jbe	.LBB93_3
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	al, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 32]
	mov	byte ptr [rcx], al
	movsx	eax, al
	cmp	eax, 0
	setne	al
	mov	byte ptr [rbp - 41], al         # 1-byte Spill
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	mov	al, byte ptr [rbp - 41]         # 1-byte Reload
	test	al, 1
	jne	.LBB93_4
	jmp	.LBB93_6
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	jmp	.LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
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
.LBB93_6:
	cmp	qword ptr [rbp - 24], 0
	jne	.LBB93_8
# %bb.7:
	mov	rax, qword ptr [rbp - 32]
	mov	byte ptr [rax], 0
.LBB93_8:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], 0
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbp - 24]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	rcx, qword ptr [rbp - 16]
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jae	.LBB94_3
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 24]
	movsx	eax, byte ptr [rax + rcx]
	cmp	eax, 0
	setne	al
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB94_4
	jmp	.LBB94_6
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	jmp	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	add	rax, 1
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB94_1
.LBB94_6:
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
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	mov	rax, qword ptr [rbp - 16]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	je	.LBB95_8
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 32], rax
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rax, qword ptr [rbp - 32]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0
	je	.LBB95_7
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=2
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	jmp	.LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, 1
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB95_1
.LBB95_8:
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
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], 0
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 8]
	movsx	eax, byte ptr [rax]
	cmp	eax, dword ptr [rbp - 12]
	jne	.LBB96_3
# %bb.2:                                #   in Loop: Header=BB96_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rax
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	jmp	.LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_1 Depth=1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	cmp	byte ptr [rax], 0
	jne	.LBB96_1
# %bb.5:
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rdi, qword ptr [rbp - 24]
	movabs	rax, offset strlen
	call	rax
	mov	qword ptr [rbp - 40], rax
	cmp	qword ptr [rbp - 40], 0
	jne	.LBB97_2
# %bb.1:
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
	mov	rdi, qword ptr [rbp - 32]
	mov	rsi, qword ptr [rbp - 24]
	mov	rdx, qword ptr [rbp - 40]
	movabs	rax, offset strncmp
	call	rax
	cmp	eax, 0
	jne	.LBB97_6
# %bb.5:
	mov	rax, qword ptr [rbp - 32]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	jmp	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	mov	rax, qword ptr [rbp - 32]
	add	rax, 1
	mov	qword ptr [rbp - 32], rax
	jmp	.LBB97_3
.LBB97_8:
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
	xorps	xmm0, xmm0
	ucomisd	xmm0, qword ptr [rbp - 16]
	jbe	.LBB98_2
# %bb.1:
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	ja	.LBB98_4
.LBB98_2:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jbe	.LBB98_5
# %bb.3:
	xorps	xmm0, xmm0
	ucomisd	xmm0, qword ptr [rbp - 24]
	jbe	.LBB98_5
.LBB98_4:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movq	rax, xmm0
	movabs	rcx, -9223372036854775808
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB98_6
.LBB98_5:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 8], xmm0
.LBB98_6:
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB99_12
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
	mov	qword ptr [rbp - 8], 0
	jmp	.LBB99_12
.LBB99_4:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 48]
	cmp	rax, qword ptr [rbp - 56]
	ja	.LBB99_11
# %bb.6:                                #   in Loop: Header=BB99_5 Depth=1
	mov	rax, qword ptr [rbp - 48]
	movsx	eax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 32]
	movsx	ecx, byte ptr [rcx]
	cmp	eax, ecx
	jne	.LBB99_9
# %bb.7:                                #   in Loop: Header=BB99_5 Depth=1
	mov	rdi, qword ptr [rbp - 48]
	add	rdi, 1
	mov	rsi, qword ptr [rbp - 32]
	add	rsi, 1
	mov	rdx, qword ptr [rbp - 40]
	sub	rdx, 1
	movabs	rax, offset memcmp
	call	rax
	cmp	eax, 0
	jne	.LBB99_9
# %bb.8:
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB99_12
.LBB99_9:                               #   in Loop: Header=BB99_5 Depth=1
	jmp	.LBB99_10
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	mov	rax, qword ptr [rbp - 48]
	add	rax, 1
	mov	qword ptr [rbp - 48], rax
	jmp	.LBB99_5
.LBB99_11:
	mov	qword ptr [rbp - 8], 0
.LBB99_12:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
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
	mov	dword ptr [rbp - 24], 0
	mov	dword ptr [rbp - 20], 0
	xorps	xmm0, xmm0
	ucomisd	xmm0, qword ptr [rbp - 8]
	jbe	.LBB101_2
# %bb.1:
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
	jmp	.LBB101_4
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movabs	rax, offset .LCPI101_0
	movsd	xmm1, qword ptr [rax]           # xmm1 = mem[0],zero
	ucomisd	xmm0, xmm1
	jb	.LBB101_6
# %bb.5:                                #   in Loop: Header=BB101_4 Depth=1
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
	jmp	.LBB101_14
.LBB101_7:
	movabs	rax, offset .LCPI101_1
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 8]
	jbe	.LBB101_13
# %bb.8:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.LBB101_9
	jp	.LBB101_9
	jmp	.LBB101_13
.LBB101_9:
	jmp	.LBB101_10
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
	movabs	rax, offset .LCPI101_1
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 8]
	jbe	.LBB101_12
# %bb.11:                               #   in Loop: Header=BB101_10 Depth=1
	mov	eax, dword ptr [rbp - 24]
	sub	eax, 1
	mov	dword ptr [rbp - 24], eax
	movabs	rax, offset .LCPI101_2
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB101_10
.LBB101_12:
	jmp	.LBB101_13
.LBB101_13:
	jmp	.LBB101_14
.LBB101_14:
	mov	ecx, dword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 16]
	mov	dword ptr [rax], ecx
	cmp	dword ptr [rbp - 20], 0
	je	.LBB101_16
# %bb.15:
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	movq	rax, xmm0
	movabs	rcx, -9223372036854775808
	xor	rax, rcx
	movq	xmm0, rax
	movsd	qword ptr [rbp - 8], xmm0
.LBB101_16:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 32], 0
	je	.LBB102_5
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	mov	rax, qword ptr [rbp - 32]
	and	rax, 1
	cmp	rax, 0
	je	.LBB102_4
# %bb.3:                                #   in Loop: Header=BB102_1 Depth=1
	mov	rax, qword ptr [rbp - 16]
	add	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 24], rax
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
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
	mov	dword ptr [rbp - 28], 1
	mov	dword ptr [rbp - 32], 0
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [rbp - 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
	jae	.LBB103_4
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rbp - 28], 0
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
	je	.LBB103_4
# %bb.3:                                #   in Loop: Header=BB103_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $rax killed $eax
	movabs	rcx, 2147483648
	and	rax, rcx
	cmp	rax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 33], al         # 1-byte Spill
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	mov	al, byte ptr [rbp - 33]         # 1-byte Reload
	test	al, 1
	jne	.LBB103_5
	jmp	.LBB103_6
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	shl	eax
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 28]
	shl	eax
	mov	dword ptr [rbp - 28], eax
	jmp	.LBB103_1
.LBB103_6:
	jmp	.LBB103_7
.LBB103_7:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 28], 0
	je	.LBB103_11
# %bb.8:                                #   in Loop: Header=BB103_7 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jb	.LBB103_10
# %bb.9:                                #   in Loop: Header=BB103_7 Depth=1
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 28]
	or	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 32], eax
.LBB103_10:                             #   in Loop: Header=BB103_7 Depth=1
	mov	eax, dword ptr [rbp - 28]
	shr	eax
	mov	dword ptr [rbp - 28], eax
	mov	eax, dword ptr [rbp - 12]
	shr	eax
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB103_7
.LBB103_11:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB103_13
# %bb.12:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB103_14
.LBB103_13:
	mov	eax, dword ptr [rbp - 32]
	mov	dword ptr [rbp - 4], eax
.LBB103_14:
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
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 0
	jge	.LBB104_2
# %bb.1:
	movsx	eax, byte ptr [rbp - 5]
	xor	eax, -1
                                        # kill: def $al killed $al killed $eax
	mov	byte ptr [rbp - 5], al
.LBB104_2:
	movsx	eax, byte ptr [rbp - 5]
	cmp	eax, 0
	jne	.LBB104_4
# %bb.3:
	mov	dword ptr [rbp - 4], 7
	jmp	.LBB104_5
.LBB104_4:
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
	cmp	qword ptr [rbp - 16], 0
	jge	.LBB105_2
# %bb.1:
	mov	rax, qword ptr [rbp - 16]
	xor	rax, -1
	mov	qword ptr [rbp - 16], rax
.LBB105_2:
	cmp	qword ptr [rbp - 16], 0
	jne	.LBB105_4
# %bb.3:
	mov	dword ptr [rbp - 4], 63
	jmp	.LBB105_5
.LBB105_4:
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], 0
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 0
	je	.LBB106_5
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	and	eax, 1
	cmp	eax, 0
	je	.LBB106_4
# %bb.3:                                #   in Loop: Header=BB106_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
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
	jb	.LBB107_2
# %bb.1:
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 48]
	mov	edx, dword ptr [rbp - 20]
                                        # kill: def $rdx killed $edx
	add	rcx, rdx
	cmp	rax, rcx
	jbe	.LBB107_10
.LBB107_2:
	mov	dword ptr [rbp - 24], 0
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jae	.LBB107_6
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	rdx, qword ptr [rax + 8*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	qword ptr [rax + 8*rcx], rdx
# %bb.5:                                #   in Loop: Header=BB107_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	.LBB107_3
.LBB107_6:
	jmp	.LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 32]
	jbe	.LBB107_9
# %bb.8:                                #   in Loop: Header=BB107_7 Depth=1
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
	jmp	.LBB107_7
.LBB107_9:
	jmp	.LBB107_14
.LBB107_10:
	jmp	.LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 0
	jbe	.LBB107_13
# %bb.12:                               #   in Loop: Header=BB107_11 Depth=1
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	jmp	.LBB107_11
.LBB107_13:
	jmp	.LBB107_14
.LBB107_14:
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
	mov	eax, dword ptr [rbp - 20]
	shr	eax
	mov	dword ptr [rbp - 28], eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 40]
	cmp	rax, qword ptr [rbp - 48]
	jb	.LBB108_2
# %bb.1:
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 48]
	mov	edx, dword ptr [rbp - 20]
                                        # kill: def $rdx killed $edx
	add	rcx, rdx
	cmp	rax, rcx
	jbe	.LBB108_9
.LBB108_2:
	mov	dword ptr [rbp - 24], 0
.LBB108_3:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jae	.LBB108_6
# %bb.4:                                #   in Loop: Header=BB108_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	dx, word ptr [rax + 2*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	word ptr [rax + 2*rcx], dx
# %bb.5:                                #   in Loop: Header=BB108_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	.LBB108_3
.LBB108_6:
	mov	eax, dword ptr [rbp - 20]
	and	eax, 1
	cmp	eax, 0
	je	.LBB108_8
# %bb.7:
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
.LBB108_8:
	jmp	.LBB108_13
.LBB108_9:
	jmp	.LBB108_10
.LBB108_10:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 0
	jbe	.LBB108_12
# %bb.11:                               #   in Loop: Header=BB108_10 Depth=1
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	jmp	.LBB108_10
.LBB108_12:
	jmp	.LBB108_13
.LBB108_13:
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
	jb	.LBB109_2
# %bb.1:
	mov	rax, qword ptr [rbp - 40]
	mov	rcx, qword ptr [rbp - 48]
	mov	edx, dword ptr [rbp - 20]
                                        # kill: def $rdx killed $edx
	add	rcx, rdx
	cmp	rax, rcx
	jbe	.LBB109_10
.LBB109_2:
	mov	dword ptr [rbp - 24], 0
.LBB109_3:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 24]
	cmp	eax, dword ptr [rbp - 28]
	jae	.LBB109_6
# %bb.4:                                #   in Loop: Header=BB109_3 Depth=1
	mov	rax, qword ptr [rbp - 16]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	edx, dword ptr [rax + 4*rcx]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 24]
                                        # kill: def $rcx killed $ecx
	mov	dword ptr [rax + 4*rcx], edx
# %bb.5:                                #   in Loop: Header=BB109_3 Depth=1
	mov	eax, dword ptr [rbp - 24]
	add	eax, 1
	mov	dword ptr [rbp - 24], eax
	jmp	.LBB109_3
.LBB109_6:
	jmp	.LBB109_7
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	cmp	eax, dword ptr [rbp - 32]
	jbe	.LBB109_9
# %bb.8:                                #   in Loop: Header=BB109_7 Depth=1
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
	jmp	.LBB109_7
.LBB109_9:
	jmp	.LBB109_14
.LBB109_10:
	jmp	.LBB109_11
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 20]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 20], ecx
	cmp	eax, 0
	jbe	.LBB109_13
# %bb.12:                               #   in Loop: Header=BB109_11 Depth=1
	mov	rax, qword ptr [rbp - 48]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	dl, byte ptr [rax + rcx]
	mov	rax, qword ptr [rbp - 40]
	mov	ecx, dword ptr [rbp - 20]
                                        # kill: def $rcx killed $ecx
	mov	byte ptr [rax + rcx], dl
	jmp	.LBB109_11
.LBB109_13:
	jmp	.LBB109_14
.LBB109_14:
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	qword ptr [rbp - 8], rdi
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
	mov	qword ptr [rbp - 8], rdi
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
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
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], 0
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB116_6
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
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
	jmp	.LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	jmp	.LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
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
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], 0
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB117_6
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
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
	jmp	.LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	jmp	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
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
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movabs	rax, offset .LCPI118_0
	movss	xmm1, dword ptr [rax]           # xmm1 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	jb	.LBB118_2
# %bb.1:
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	movabs	rax, offset .LCPI118_0
	movss	xmm1, dword ptr [rax]           # xmm1 = mem[0],zero,zero,zero
	subss	xmm0, xmm1
	cvttss2si	rax, xmm0
	add	rax, 32768
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB118_3
.LBB118_2:
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
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 8], 0
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB119_6
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
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
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	jmp	.LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
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
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 12], 0
	mov	dword ptr [rbp - 8], 0
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 8], 16
	jge	.LBB120_6
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
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
	mov	eax, dword ptr [rbp - 12]
	add	eax, 1
	mov	dword ptr [rbp - 12], eax
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	jmp	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 12], 0
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 4], 0
	je	.LBB121_5
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [rbp - 4]
	and	eax, 1
	cmp	eax, 0
	je	.LBB121_4
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, dword ptr [rbp - 12]
	mov	dword ptr [rbp - 12], eax
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
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
	mov	dword ptr [rbp - 16], 0
	cmp	dword ptr [rbp - 8], 0
	jne	.LBB122_2
# %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB122_8
.LBB122_2:
	jmp	.LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 12], 0
	je	.LBB122_7
# %bb.4:                                #   in Loop: Header=BB122_3 Depth=1
	mov	eax, dword ptr [rbp - 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB122_6
# %bb.5:                                #   in Loop: Header=BB122_3 Depth=1
	mov	eax, dword ptr [rbp - 8]
	add	eax, dword ptr [rbp - 16]
	mov	dword ptr [rbp - 16], eax
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
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
	mov	dword ptr [rbp - 20], 1
	mov	dword ptr [rbp - 24], 0
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [rbp - 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [rbp - 8]
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	jae	.LBB123_4
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [rbp - 20], 0
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
	je	.LBB123_4
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
                                        # kill: def $rax killed $eax
	movabs	rcx, 2147483648
	and	rax, rcx
	cmp	rax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 25], al         # 1-byte Spill
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	mov	al, byte ptr [rbp - 25]         # 1-byte Reload
	test	al, 1
	jne	.LBB123_5
	jmp	.LBB123_6
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	mov	eax, dword ptr [rbp - 12]
	shl	eax
	mov	dword ptr [rbp - 12], eax
	mov	eax, dword ptr [rbp - 20]
	shl	eax
	mov	dword ptr [rbp - 20], eax
	jmp	.LBB123_1
.LBB123_6:
	jmp	.LBB123_7
.LBB123_7:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [rbp - 20], 0
	je	.LBB123_11
# %bb.8:                                #   in Loop: Header=BB123_7 Depth=1
	mov	eax, dword ptr [rbp - 8]
	cmp	eax, dword ptr [rbp - 12]
	jb	.LBB123_10
# %bb.9:                                #   in Loop: Header=BB123_7 Depth=1
	mov	ecx, dword ptr [rbp - 12]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, ecx
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 20]
	or	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 24], eax
.LBB123_10:                             #   in Loop: Header=BB123_7 Depth=1
	mov	eax, dword ptr [rbp - 20]
	shr	eax
	mov	dword ptr [rbp - 20], eax
	mov	eax, dword ptr [rbp - 12]
	shr	eax
	mov	dword ptr [rbp - 12], eax
	jmp	.LBB123_7
.LBB123_11:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB123_13
# %bb.12:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB123_14
.LBB123_13:
	mov	eax, dword ptr [rbp - 24]
	mov	dword ptr [rbp - 4], eax
.LBB123_14:
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
	movss	xmm1, dword ptr [rbp - 8]       # xmm1 = mem[0],zero,zero,zero
	movss	xmm0, dword ptr [rbp - 12]      # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, xmm1
	jbe	.LBB124_2
# %bb.1:
	mov	dword ptr [rbp - 4], -1
	jmp	.LBB124_5
.LBB124_2:
	movss	xmm0, dword ptr [rbp - 8]       # xmm0 = mem[0],zero,zero,zero
	ucomiss	xmm0, dword ptr [rbp - 12]
	jbe	.LBB124_4
# %bb.3:
	mov	dword ptr [rbp - 4], 1
	jmp	.LBB124_5
.LBB124_4:
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
	movsd	xmm1, qword ptr [rbp - 16]      # xmm1 = mem[0],zero
	movsd	xmm0, qword ptr [rbp - 24]      # xmm0 = mem[0],zero
	ucomisd	xmm0, xmm1
	jbe	.LBB125_2
# %bb.1:
	mov	dword ptr [rbp - 4], -1
	jmp	.LBB125_5
.LBB125_2:
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	ucomisd	xmm0, qword ptr [rbp - 24]
	jbe	.LBB125_4
# %bb.3:
	mov	dword ptr [rbp - 4], 1
	jmp	.LBB125_5
.LBB125_4:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
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
	mov	dword ptr [rbp - 16], 0
	mov	dword ptr [rbp - 20], 0
	cmp	dword ptr [rbp - 8], 0
	jge	.LBB128_2
# %bb.1:
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
	je	.LBB128_5
# %bb.4:                                #   in Loop: Header=BB128_3 Depth=1
	movsx	rax, byte ptr [rbp - 9]
	cmp	rax, 32
	setb	al
	mov	byte ptr [rbp - 21], al         # 1-byte Spill
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	mov	al, byte ptr [rbp - 21]         # 1-byte Reload
	test	al, 1
	jne	.LBB128_6
	jmp	.LBB128_10
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	mov	eax, dword ptr [rbp - 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB128_8
# %bb.7:                                #   in Loop: Header=BB128_3 Depth=1
	mov	eax, dword ptr [rbp - 4]
	add	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 20], eax
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	mov	eax, dword ptr [rbp - 4]
	shl	eax
	mov	dword ptr [rbp - 4], eax
	mov	eax, dword ptr [rbp - 8]
	sar	eax
	mov	dword ptr [rbp - 8], eax
# %bb.9:                                #   in Loop: Header=BB128_3 Depth=1
	mov	al, byte ptr [rbp - 9]
	add	al, 1
	mov	byte ptr [rbp - 9], al
	jmp	.LBB128_3
.LBB128_10:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB128_12
# %bb.11:
	xor	eax, eax
	sub	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], eax       # 4-byte Spill
	jmp	.LBB128_13
.LBB128_12:
	mov	eax, dword ptr [rbp - 20]
	mov	dword ptr [rbp - 28], eax       # 4-byte Spill
.LBB128_13:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.LBB129_2
# %bb.1:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	dword ptr [rbp - 20], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.LBB130_2
# %bb.1:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	sub	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 20], 1
.LBB130_2:
	cmp	qword ptr [rbp - 16], 0
	jge	.LBB130_4
# %bb.3:
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
	mov	word ptr [rbp - 14], 1
	mov	word ptr [rbp - 16], 0
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	movzx	ecx, word ptr [rbp - 6]
	movzx	edx, word ptr [rbp - 4]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	jge	.LBB131_4
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	movzx	ecx, word ptr [rbp - 14]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
	je	.LBB131_4
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	movzx	eax, word ptr [rbp - 6]
	and	eax, 32768
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 17], al         # 1-byte Spill
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	mov	al, byte ptr [rbp - 17]         # 1-byte Reload
	test	al, 1
	jne	.LBB131_5
	jmp	.LBB131_6
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	movzx	eax, word ptr [rbp - 6]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 6], ax
	movzx	eax, word ptr [rbp - 14]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 14], ax
	jmp	.LBB131_1
.LBB131_6:
	jmp	.LBB131_7
.LBB131_7:                              # =>This Inner Loop Header: Depth=1
	cmp	word ptr [rbp - 14], 0
	je	.LBB131_11
# %bb.8:                                #   in Loop: Header=BB131_7 Depth=1
	movzx	eax, word ptr [rbp - 4]
	movzx	ecx, word ptr [rbp - 6]
	cmp	eax, ecx
	jl	.LBB131_10
# %bb.9:                                #   in Loop: Header=BB131_7 Depth=1
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
.LBB131_10:                             #   in Loop: Header=BB131_7 Depth=1
	movzx	eax, word ptr [rbp - 14]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 14], ax
	movzx	eax, word ptr [rbp - 6]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [rbp - 6], ax
	jmp	.LBB131_7
.LBB131_11:
	cmp	dword ptr [rbp - 12], 0
	je	.LBB131_13
# %bb.12:
	mov	ax, word ptr [rbp - 4]
	mov	word ptr [rbp - 2], ax
	jmp	.LBB131_14
.LBB131_13:
	mov	ax, word ptr [rbp - 16]
	mov	word ptr [rbp - 2], ax
.LBB131_14:
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
	mov	qword ptr [rbp - 40], 1
	mov	qword ptr [rbp - 48], 0
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	mov	rcx, qword ptr [rbp - 24]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	rcx, qword ptr [rbp - 16]
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	jae	.LBB132_4
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	qword ptr [rbp - 40], 0
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
	je	.LBB132_4
# %bb.3:                                #   in Loop: Header=BB132_1 Depth=1
	movabs	rax, 2147483648
	and	rax, qword ptr [rbp - 24]
	cmp	rax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [rbp - 49], al         # 1-byte Spill
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	mov	al, byte ptr [rbp - 49]         # 1-byte Reload
	test	al, 1
	jne	.LBB132_5
	jmp	.LBB132_6
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	mov	rax, qword ptr [rbp - 24]
	shl	rax
	mov	qword ptr [rbp - 24], rax
	mov	rax, qword ptr [rbp - 40]
	shl	rax
	mov	qword ptr [rbp - 40], rax
	jmp	.LBB132_1
.LBB132_6:
	jmp	.LBB132_7
.LBB132_7:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rbp - 40], 0
	je	.LBB132_11
# %bb.8:                                #   in Loop: Header=BB132_7 Depth=1
	mov	rax, qword ptr [rbp - 16]
	cmp	rax, qword ptr [rbp - 24]
	jb	.LBB132_10
# %bb.9:                                #   in Loop: Header=BB132_7 Depth=1
	mov	rcx, qword ptr [rbp - 24]
	mov	rax, qword ptr [rbp - 16]
	sub	rax, rcx
	mov	qword ptr [rbp - 16], rax
	mov	rax, qword ptr [rbp - 40]
	or	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 48], rax
.LBB132_10:                             #   in Loop: Header=BB132_7 Depth=1
	mov	rax, qword ptr [rbp - 40]
	shr	rax
	mov	qword ptr [rbp - 40], rax
	mov	rax, qword ptr [rbp - 24]
	shr	rax
	mov	qword ptr [rbp - 24], rax
	jmp	.LBB132_7
.LBB132_11:
	cmp	dword ptr [rbp - 28], 0
	je	.LBB132_13
# %bb.12:
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB132_14
.LBB132_13:
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 8], rax
.LBB132_14:
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
	mov	dword ptr [rbp - 24], 32
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	eax, dword ptr [rbp - 20]
	and	eax, 32
	cmp	eax, 0
	je	.LBB133_2
# %bb.1:
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB133_6
.LBB133_4:
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
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB134_6
.LBB134_4:
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
	mov	dword ptr [rbp - 24], 32
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	eax, dword ptr [rbp - 20]
	and	eax, 32
	cmp	eax, 0
	je	.LBB135_2
# %bb.1:
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB135_6
.LBB135_4:
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
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB136_6
.LBB136_4:
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
	mov	qword ptr [rbp - 8], rdi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jge	.LBB141_2
# %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB141_9
.LBB141_2:
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jle	.LBB141_4
# %bb.3:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB141_9
.LBB141_4:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jae	.LBB141_6
# %bb.5:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB141_9
.LBB141_6:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jbe	.LBB141_8
# %bb.7:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB141_9
.LBB141_8:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
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
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB143_9
.LBB143_2:
	mov	rax, qword ptr [rbp - 88]
	cmp	rax, qword ptr [rbp - 104]
	jle	.LBB143_4
# %bb.3:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB143_9
.LBB143_4:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jae	.LBB143_6
# %bb.5:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB143_9
.LBB143_6:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jbe	.LBB143_8
# %bb.7:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB143_9
.LBB143_8:
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
	mov	dword ptr [rbp - 4], edi
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
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
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
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 56], rcx
	mov	qword ptr [rbp - 64], rax
	cmp	qword ptr [rbp - 64], 0
	jne	.LBB146_4
# %bb.1:
	cmp	qword ptr [rbp - 56], 0
	jne	.LBB146_3
# %bb.2:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB146_5
.LBB146_3:
	mov	rax, qword ptr [rbp - 56]
	rep		bsf	rax, rax
                                        # kill: def $eax killed $eax killed $rax
	cdqe
	add	rax, 65
                                        # kill: def $eax killed $eax killed $rax
	mov	dword ptr [rbp - 4], eax
	jmp	.LBB146_5
.LBB146_4:
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
	mov	dword ptr [rbp - 24], 32
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	eax, dword ptr [rbp - 20]
	and	eax, 32
	cmp	eax, 0
	je	.LBB147_2
# %bb.1:
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 8], rax
	jmp	.LBB147_6
.LBB147_4:
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
	mov	rax, qword ptr [rbp - 48]
	mov	rcx, qword ptr [rbp - 40]
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 16], rax
	jmp	.LBB148_6
.LBB148_4:
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
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
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
	mov	qword ptr [rbp - 24], rdi
	mov	qword ptr [rbp - 32], rsi
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
	mov	qword ptr [rbp - 8], rdi
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
	mov	qword ptr [rbp - 32], rdi
	mov	qword ptr [rbp - 24], rsi
	mov	rax, qword ptr [rbp - 32]
	mov	rcx, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rcx
	mov	qword ptr [rbp - 48], rax
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
	mov	qword ptr [rbp - 8], rdi
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
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
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
	mov	dword ptr [rbp - 4], edi
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
	mov	qword ptr [rbp - 8], rdi
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
	mov	dword ptr [rbp - 4], edi
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
	mov	qword ptr [rbp - 16], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rax, qword ptr [rbp - 16]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rcx
	mov	qword ptr [rbp - 32], rax
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
	cmp	dword ptr [rbp - 12], 0
	setl	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 16], eax
	movabs	rax, offset .LCPI161_0
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 24], xmm0
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB161_3
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
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
	jmp	.LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	movsd	xmm0, qword ptr [rbp - 8]       # xmm0 = mem[0],zero
	mulsd	xmm0, qword ptr [rbp - 8]
	movsd	qword ptr [rbp - 8], xmm0
	jmp	.LBB161_1
.LBB161_6:
	cmp	dword ptr [rbp - 16], 0
	je	.LBB161_8
# %bb.7:
	movabs	rax, offset .LCPI161_0
	movsd	xmm0, qword ptr [rax]           # xmm0 = mem[0],zero
	divsd	xmm0, qword ptr [rbp - 24]
	movsd	qword ptr [rbp - 32], xmm0      # 8-byte Spill
	jmp	.LBB161_9
.LBB161_8:
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
	cmp	dword ptr [rbp - 8], 0
	setl	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [rbp - 12], eax
	movabs	rax, offset .LCPI162_0
	movss	xmm0, dword ptr [rax]           # xmm0 = mem[0],zero,zero,zero
	movss	dword ptr [rbp - 16], xmm0
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB162_3
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
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
	jmp	.LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	movss	xmm0, dword ptr [rbp - 4]       # xmm0 = mem[0],zero,zero,zero
	mulss	xmm0, dword ptr [rbp - 4]
	movss	dword ptr [rbp - 4], xmm0
	jmp	.LBB162_1
.LBB162_6:
	cmp	dword ptr [rbp - 12], 0
	je	.LBB162_8
# %bb.7:
	movabs	rax, offset .LCPI162_0
	movss	xmm0, dword ptr [rax]           # xmm0 = mem[0],zero,zero,zero
	divss	xmm0, dword ptr [rbp - 16]
	movss	dword ptr [rbp - 20], xmm0      # 4-byte Spill
	jmp	.LBB162_9
.LBB162_8:
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
	mov	rax, qword ptr [rbp - 16]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 40], rax
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jae	.LBB163_2
# %bb.1:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB163_9
.LBB163_2:
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 36]
	jbe	.LBB163_4
# %bb.3:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB163_9
.LBB163_4:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jae	.LBB163_6
# %bb.5:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB163_9
.LBB163_6:
	mov	eax, dword ptr [rbp - 32]
	cmp	eax, dword ptr [rbp - 40]
	jbe	.LBB163_8
# %bb.7:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB163_9
.LBB163_8:
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
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
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
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB165_9
.LBB165_2:
	mov	rax, qword ptr [rbp - 88]
	cmp	rax, qword ptr [rbp - 104]
	jbe	.LBB165_4
# %bb.3:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB165_9
.LBB165_4:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jae	.LBB165_6
# %bb.5:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB165_9
.LBB165_6:
	mov	rax, qword ptr [rbp - 96]
	cmp	rax, qword ptr [rbp - 112]
	jbe	.LBB165_8
# %bb.7:
	mov	dword ptr [rbp - 4], 2
	jmp	.LBB165_9
.LBB165_8:
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
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
