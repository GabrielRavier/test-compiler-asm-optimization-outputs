	.text
	.intel_syntax noprefix
	.file	"mini-libc.c"
	.globl	memmove                         # -- Begin function memmove
	.p2align	4, 0x90
	.type	memmove,@function
memmove:                                # @memmove
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memmove]
	add	eax, 1
	adc	dword ptr [.L__profc_memmove+4], 0
	mov	dword ptr [.L__profc_memmove], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 8]
	cmp	eax, dword ptr [ebp - 4]
	jae	.LBB0_6
# %bb.1:
	mov	eax, dword ptr [.L__profc_memmove+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memmove+12], 0
	mov	dword ptr [.L__profc_memmove+8], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 4], eax
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	mov	eax, dword ptr [.L__profc_memmove+16]
	add	eax, 1
	adc	dword ptr [.L__profc_memmove+20], 0
	mov	dword ptr [.L__profc_memmove+16], eax
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp - 8], ecx
	mov	cl, byte ptr [eax - 1]
	mov	eax, dword ptr [ebp - 4]
	mov	edx, eax
	add	edx, -1
	mov	dword ptr [ebp - 4], edx
	mov	byte ptr [eax - 1], cl
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB0_2
.LBB0_5:
	jmp	.LBB0_13
.LBB0_6:
	mov	eax, dword ptr [ebp - 8]
	cmp	eax, dword ptr [ebp - 4]
	je	.LBB0_12
# %bb.7:
	mov	eax, dword ptr [.L__profc_memmove+24]
	add	eax, 1
	adc	dword ptr [.L__profc_memmove+28], 0
	mov	dword ptr [.L__profc_memmove+24], eax
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	mov	eax, dword ptr [.L__profc_memmove+32]
	add	eax, 1
	adc	dword ptr [.L__profc_memmove+36], 0
	mov	dword ptr [.L__profc_memmove+32], eax
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp - 8], ecx
	mov	cl, byte ptr [eax]
	mov	eax, dword ptr [ebp - 4]
	mov	edx, eax
	add	edx, 1
	mov	dword ptr [ebp - 4], edx
	mov	byte ptr [eax], cl
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB0_8
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	mov	eax, dword ptr [ebp + 8]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
	.cfi_endproc
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	4, 0x90
	.type	memccpy,@function
memccpy:                                # @memccpy
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 20]
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memccpy]
	add	eax, 1
	adc	dword ptr [.L__profc_memccpy+4], 0
	mov	dword ptr [.L__profc_memccpy], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [ebp + 16], eax
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 20], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB1_4
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [.L__profc_memccpy+16]
	add	eax, 1
	adc	dword ptr [.L__profc_memccpy+20], 0
	mov	dword ptr [.L__profc_memccpy+16], eax
	mov	eax, dword ptr [ebp - 12]
	mov	al, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 8]
	mov	byte ptr [ecx], al
	movzx	eax, al
	cmp	eax, dword ptr [ebp + 16]
	setne	al
	mov	byte ptr [ebp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jne	.LBB1_3
	jmp	.LBB1_4
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [ebp - 14]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_memccpy+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_memccpy+28], 0
	mov	dword ptr [.L__profc_memccpy+24], ecx
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB1_5
	jmp	.LBB1_7
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [.L__profc_memccpy+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memccpy+12], 0
	mov	dword ptr [.L__profc_memccpy+8], eax
# %bb.6:                                #   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [ebp + 20]
	add	eax, -1
	mov	dword ptr [ebp + 20], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, 1
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB1_1
.LBB1_7:
	cmp	dword ptr [ebp + 20], 0
	je	.LBB1_9
# %bb.8:
	mov	eax, dword ptr [.L__profc_memccpy+32]
	add	eax, 1
	adc	dword ptr [.L__profc_memccpy+36], 0
	mov	dword ptr [.L__profc_memccpy+32], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB1_10
.LBB1_9:
	mov	dword ptr [ebp - 4], 0
.LBB1_10:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
	.cfi_endproc
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	4, 0x90
	.type	memchr,@function
memchr:                                 # @memchr
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 12
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memchr]
	add	eax, 1
	adc	dword ptr [.L__profc_memchr+4], 0
	mov	dword ptr [.L__profc_memchr], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [ebp + 12], eax
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
	je	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [.L__profc_memchr+16]
	add	eax, 1
	adc	dword ptr [.L__profc_memchr+20], 0
	mov	dword ptr [.L__profc_memchr+16], eax
	mov	eax, dword ptr [ebp - 4]
	movzx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
	jne	.LBB2_3
	jmp	.LBB2_4
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	mov	al, byte ptr [ebp - 6]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_memchr+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_memchr+28], 0
	mov	dword ptr [.L__profc_memchr+24], ecx
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	mov	al, byte ptr [ebp - 5]          # 1-byte Reload
	test	al, 1
	jne	.LBB2_5
	jmp	.LBB2_7
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [.L__profc_memchr+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memchr+12], 0
	mov	dword ptr [.L__profc_memchr+8], eax
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB2_1
.LBB2_7:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB2_9
# %bb.8:
	mov	eax, dword ptr [.L__profc_memchr+32]
	add	eax, 1
	adc	dword ptr [.L__profc_memchr+36], 0
	mov	dword ptr [.L__profc_memchr+32], eax
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB2_10
.LBB2_9:
	xor	eax, eax
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB2_10
.LBB2_10:
	mov	eax, dword ptr [ebp - 12]       # 4-byte Reload
	add	esp, 12
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
	.cfi_endproc
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	4, 0x90
	.type	memcmp,@function
memcmp:                                 # @memcmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memcmp]
	add	eax, 1
	adc	dword ptr [.L__profc_memcmp+4], 0
	mov	dword ptr [.L__profc_memcmp], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
	je	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [.L__profc_memcmp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_memcmp+20], 0
	mov	dword ptr [.L__profc_memcmp+16], eax
	mov	eax, dword ptr [ebp - 4]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 8]
	movzx	ecx, byte ptr [ecx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [ebp - 10], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
	jne	.LBB3_3
	jmp	.LBB3_4
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	mov	al, byte ptr [ebp - 10]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_memcmp+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_memcmp+28], 0
	mov	dword ptr [.L__profc_memcmp+24], ecx
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	mov	al, byte ptr [ebp - 9]          # 1-byte Reload
	test	al, 1
	jne	.LBB3_5
	jmp	.LBB3_7
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [.L__profc_memcmp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memcmp+12], 0
	mov	dword ptr [.L__profc_memcmp+8], eax
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB3_1
.LBB3_7:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB3_9
# %bb.8:
	mov	eax, dword ptr [.L__profc_memcmp+32]
	add	eax, 1
	adc	dword ptr [.L__profc_memcmp+36], 0
	mov	dword ptr [.L__profc_memcmp+32], eax
	mov	eax, dword ptr [ebp - 4]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 8]
	movzx	ecx, byte ptr [ecx]
	sub	eax, ecx
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB3_10
.LBB3_9:
	xor	eax, eax
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB3_10
.LBB3_10:
	mov	eax, dword ptr [ebp - 16]       # 4-byte Reload
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
	.cfi_endproc
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	4, 0x90
	.type	memcpy,@function
memcpy:                                 # @memcpy
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memcpy]
	add	eax, 1
	adc	dword ptr [.L__profc_memcpy+4], 0
	mov	dword ptr [.L__profc_memcpy], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [.L__profc_memcpy+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memcpy+12], 0
	mov	dword ptr [.L__profc_memcpy+8], eax
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp - 8], ecx
	mov	cl, byte ptr [eax]
	mov	eax, dword ptr [ebp - 4]
	mov	edx, eax
	add	edx, 1
	mov	dword ptr [ebp - 4], edx
	mov	byte ptr [eax], cl
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB4_1
.LBB4_4:
	mov	eax, dword ptr [ebp + 8]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
	.cfi_endproc
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	4, 0x90
	.type	memrchr,@function
memrchr:                                # @memrchr
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memrchr]
	add	eax, 1
	adc	dword ptr [.L__profc_memrchr+4], 0
	mov	dword ptr [.L__profc_memrchr], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [ebp + 12], eax
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	je	.LBB5_5
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	mov	eax, dword ptr [.L__profc_memrchr+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memrchr+12], 0
	mov	dword ptr [.L__profc_memrchr+8], eax
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, dword ptr [ebp + 16]
	movzx	eax, byte ptr [eax + ecx]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB5_4
# %bb.3:
	mov	eax, dword ptr [.L__profc_memrchr+16]
	add	eax, 1
	adc	dword ptr [.L__profc_memrchr+20], 0
	mov	dword ptr [.L__profc_memrchr+16], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, dword ptr [ebp + 16]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB5_6
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_1
.LBB5_5:
	mov	dword ptr [ebp - 4], 0
.LBB5_6:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
	.cfi_endproc
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	4, 0x90
	.type	memset,@function
memset:                                 # @memset
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memset]
	add	eax, 1
	adc	dword ptr [.L__profc_memset+4], 0
	mov	dword ptr [.L__profc_memset], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [.L__profc_memset+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memset+12], 0
	mov	dword ptr [.L__profc_memset+8], eax
	mov	eax, dword ptr [ebp + 12]
	mov	cl, al
	mov	eax, dword ptr [ebp - 4]
	mov	byte ptr [eax], cl
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB6_1
.LBB6_4:
	mov	eax, dword ptr [ebp + 8]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
	.cfi_endproc
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	4, 0x90
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_stpcpy]
	add	eax, 1
	adc	dword ptr [.L__profc_stpcpy+4], 0
	mov	dword ptr [.L__profc_stpcpy], eax
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	al, byte ptr [eax]
	mov	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ecx], al
	cmp	al, 0
	je	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	mov	eax, dword ptr [.L__profc_stpcpy+8]
	add	eax, 1
	adc	dword ptr [.L__profc_stpcpy+12], 0
	mov	dword ptr [.L__profc_stpcpy+8], eax
# %bb.3:                                #   in Loop: Header=BB7_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	add	eax, 1
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB7_1
.LBB7_4:
	mov	eax, dword ptr [ebp + 8]
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
	.cfi_endproc
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	4, 0x90
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strchrnul]
	add	eax, 1
	adc	dword ptr [.L__profc_strchrnul+4], 0
	mov	dword ptr [.L__profc_strchrnul], eax
	mov	eax, dword ptr [ebp + 12]
                                        # kill: def $al killed $al killed $eax
	movzx	eax, al
	mov	dword ptr [ebp + 12], eax
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	ecx, byte ptr [eax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [.L__profc_strchrnul+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strchrnul+20], 0
	mov	dword ptr [.L__profc_strchrnul+16], eax
	mov	eax, dword ptr [ebp + 8]
	movzx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB8_3
	jmp	.LBB8_4
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_strchrnul+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_strchrnul+28], 0
	mov	dword ptr [.L__profc_strchrnul+24], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB8_5
	jmp	.LBB8_7
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [.L__profc_strchrnul+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strchrnul+12], 0
	mov	dword ptr [.L__profc_strchrnul+8], eax
# %bb.6:                                #   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB8_1
.LBB8_7:
	mov	eax, dword ptr [ebp + 8]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
	.cfi_endproc
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	4, 0x90
	.type	strchr,@function
strchr:                                 # @strchr
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strchr]
	add	eax, 1
	adc	dword ptr [.L__profc_strchr+4], 0
	mov	dword ptr [.L__profc_strchr], eax
	jmp	.LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	mov	eax, dword ptr [.L__profc_strchr+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strchr+12], 0
	mov	dword ptr [.L__profc_strchr+8], eax
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB9_4
# %bb.3:
	mov	eax, dword ptr [.L__profc_strchr+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strchr+20], 0
	mov	dword ptr [.L__profc_strchr+16], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB9_7
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	jmp	.LBB9_5
.LBB9_5:                                #   in Loop: Header=BB9_2 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp + 8], ecx
	cmp	byte ptr [eax], 0
	jne	.LBB9_1
# %bb.6:
	mov	dword ptr [ebp - 4], 0
.LBB9_7:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
	.cfi_endproc
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	4, 0x90
	.type	strcmp,@function
strcmp:                                 # @strcmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strcmp]
	add	eax, 1
	adc	dword ptr [.L__profc_strcmp+4], 0
	mov	dword ptr [.L__profc_strcmp], eax
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	ecx, byte ptr [eax]
	mov	eax, dword ptr [ebp + 12]
	movsx	edx, byte ptr [eax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB10_4
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [.L__profc_strcmp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strcmp+20], 0
	mov	dword ptr [.L__profc_strcmp+16], eax
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, 0
	setne	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB10_3
	jmp	.LBB10_4
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_strcmp+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_strcmp+28], 0
	mov	dword ptr [.L__profc_strcmp+24], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB10_5
	jmp	.LBB10_7
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [.L__profc_strcmp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strcmp+12], 0
	mov	dword ptr [.L__profc_strcmp+8], eax
# %bb.6:                                #   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, 1
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB10_1
.LBB10_7:
	mov	eax, dword ptr [ebp + 8]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	movzx	ecx, byte ptr [ecx]
	sub	eax, ecx
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
	.cfi_endproc
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	4, 0x90
	.type	strlen,@function
strlen:                                 # @strlen
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strlen]
	add	eax, 1
	adc	dword ptr [.L__profc_strlen+4], 0
	mov	dword ptr [.L__profc_strlen], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	cmp	byte ptr [eax], 0
	je	.LBB11_4
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	mov	eax, dword ptr [.L__profc_strlen+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strlen+12], 0
	mov	dword ptr [.L__profc_strlen+8], eax
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB11_1
.LBB11_4:
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	sub	eax, ecx
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
	.cfi_endproc
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	4, 0x90
	.type	strncmp,@function
strncmp:                                # @strncmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strncmp]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+4], 0
	mov	dword ptr [.L__profc_strncmp], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	jne	.LBB12_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_strncmp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+12], 0
	mov	dword ptr [.L__profc_strncmp+8], eax
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB12_14
.LBB12_2:
	jmp	.LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 8]
	movzx	ecx, byte ptr [eax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB12_10
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [.L__profc_strncmp+56]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+60], 0
	mov	dword ptr [.L__profc_strncmp+56], eax
	mov	eax, dword ptr [ebp - 12]
	movzx	ecx, byte ptr [eax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB12_10
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [.L__profc_strncmp+64]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+68], 0
	mov	dword ptr [.L__profc_strncmp+64], eax
# %bb.6:                                #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [.L__profc_strncmp+40]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+44], 0
	mov	dword ptr [.L__profc_strncmp+40], eax
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB12_10
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [.L__profc_strncmp+48]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+52], 0
	mov	dword ptr [.L__profc_strncmp+48], eax
# %bb.8:                                #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [.L__profc_strncmp+24]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+28], 0
	mov	dword ptr [.L__profc_strncmp+24], eax
	mov	eax, dword ptr [ebp - 8]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 12]
	movzx	ecx, byte ptr [ecx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [ebp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jne	.LBB12_9
	jmp	.LBB12_10
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
	mov	al, byte ptr [ebp - 14]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_strncmp+32]
	add	ecx, 1
	adc	dword ptr [.L__profc_strncmp+36], 0
	mov	dword ptr [.L__profc_strncmp+32], ecx
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB12_10:                              #   in Loop: Header=BB12_3 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB12_11
	jmp	.LBB12_13
.LBB12_11:                              #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [.L__profc_strncmp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strncmp+20], 0
	mov	dword ptr [.L__profc_strncmp+16], eax
# %bb.12:                               #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, 1
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB12_3
.LBB12_13:
	mov	eax, dword ptr [ebp - 8]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 12]
	movzx	ecx, byte ptr [ecx]
	sub	eax, ecx
	mov	dword ptr [ebp - 4], eax
.LBB12_14:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
	.cfi_endproc
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	4, 0x90
	.type	swab,@function
swab:                                   # @swab
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_swab]
	add	eax, 1
	adc	dword ptr [.L__profc_swab+4], 0
	mov	dword ptr [.L__profc_swab], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 1
	jle	.LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	mov	eax, dword ptr [.L__profc_swab+8]
	add	eax, 1
	adc	dword ptr [.L__profc_swab+12], 0
	mov	dword ptr [.L__profc_swab+8], eax
	mov	eax, dword ptr [ebp - 4]
	mov	cl, byte ptr [eax + 1]
	mov	eax, dword ptr [ebp - 8]
	mov	byte ptr [eax], cl
	mov	eax, dword ptr [ebp - 4]
	mov	cl, byte ptr [eax]
	mov	eax, dword ptr [ebp - 8]
	mov	byte ptr [eax + 1], cl
	mov	eax, dword ptr [ebp - 8]
	add	eax, 2
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 4]
	add	eax, 2
	mov	dword ptr [ebp - 4], eax
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	sub	eax, 2
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB13_1
.LBB13_4:
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
	.cfi_endproc
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	4, 0x90
	.type	isalpha,@function
isalpha:                                # @isalpha
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isalpha]
	add	eax, 1
	adc	dword ptr [.L__profc_isalpha+4], 0
	mov	dword ptr [.L__profc_isalpha], eax
	mov	eax, dword ptr [ebp + 8]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 26
	setb	al
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
	.cfi_endproc
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	4, 0x90
	.type	isascii,@function
isascii:                                # @isascii
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isascii]
	add	eax, 1
	adc	dword ptr [.L__profc_isascii+4], 0
	mov	dword ptr [.L__profc_isascii], eax
	mov	eax, dword ptr [ebp + 8]
	and	eax, -128
	cmp	eax, 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
	.cfi_endproc
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	4, 0x90
	.type	isblank,@function
isblank:                                # @isblank
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isblank]
	add	eax, 1
	adc	dword ptr [.L__profc_isblank+4], 0
	mov	dword ptr [.L__profc_isblank], eax
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB16_3
# %bb.1:
	mov	eax, dword ptr [.L__profc_isblank+8]
	add	eax, 1
	adc	dword ptr [.L__profc_isblank+12], 0
	mov	dword ptr [.L__profc_isblank+8], eax
	cmp	dword ptr [ebp + 8], 9
	sete	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB16_3
# %bb.2:
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_isblank+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_isblank+20], 0
	mov	dword ptr [.L__profc_isblank+16], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB16_3:
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
	.cfi_endproc
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	4, 0x90
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_iscntrl]
	add	eax, 1
	adc	dword ptr [.L__profc_iscntrl+4], 0
	mov	dword ptr [.L__profc_iscntrl], eax
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB17_3
# %bb.1:
	mov	eax, dword ptr [.L__profc_iscntrl+8]
	add	eax, 1
	adc	dword ptr [.L__profc_iscntrl+12], 0
	mov	dword ptr [.L__profc_iscntrl+8], eax
	cmp	dword ptr [ebp + 8], 127
	sete	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB17_3
# %bb.2:
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_iscntrl+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_iscntrl+20], 0
	mov	dword ptr [.L__profc_iscntrl+16], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB17_3:
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
	.cfi_endproc
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	4, 0x90
	.type	isdigit,@function
isdigit:                                # @isdigit
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isdigit]
	add	eax, 1
	adc	dword ptr [.L__profc_isdigit+4], 0
	mov	dword ptr [.L__profc_isdigit], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 48
	cmp	eax, 10
	setb	al
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
	.cfi_endproc
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	4, 0x90
	.type	isgraph,@function
isgraph:                                # @isgraph
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isgraph]
	add	eax, 1
	adc	dword ptr [.L__profc_isgraph+4], 0
	mov	dword ptr [.L__profc_isgraph], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 33
	cmp	eax, 94
	setb	al
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
	.cfi_endproc
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	4, 0x90
	.type	islower,@function
islower:                                # @islower
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_islower]
	add	eax, 1
	adc	dword ptr [.L__profc_islower+4], 0
	mov	dword ptr [.L__profc_islower], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 97
	cmp	eax, 26
	setb	al
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
	.cfi_endproc
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	4, 0x90
	.type	isprint,@function
isprint:                                # @isprint
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isprint]
	add	eax, 1
	adc	dword ptr [.L__profc_isprint+4], 0
	mov	dword ptr [.L__profc_isprint], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 32
	cmp	eax, 95
	setb	al
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
	.cfi_endproc
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	4, 0x90
	.type	isspace,@function
isspace:                                # @isspace
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isspace]
	add	eax, 1
	adc	dword ptr [.L__profc_isspace+4], 0
	mov	dword ptr [.L__profc_isspace], eax
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB22_3
# %bb.1:
	mov	eax, dword ptr [.L__profc_isspace+8]
	add	eax, 1
	adc	dword ptr [.L__profc_isspace+12], 0
	mov	dword ptr [.L__profc_isspace+8], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 9
	cmp	eax, 5
	setb	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB22_3
# %bb.2:
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_isspace+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_isspace+20], 0
	mov	dword ptr [.L__profc_isspace+16], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB22_3:
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
	.cfi_endproc
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	4, 0x90
	.type	isupper,@function
isupper:                                # @isupper
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_isupper]
	add	eax, 1
	adc	dword ptr [.L__profc_isupper+4], 0
	mov	dword ptr [.L__profc_isupper], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 65
	cmp	eax, 26
	setb	al
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
	.cfi_endproc
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	4, 0x90
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_iswcntrl]
	add	eax, 1
	adc	dword ptr [.L__profc_iswcntrl+4], 0
	mov	dword ptr [.L__profc_iswcntrl], eax
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB24_7
# %bb.1:
	mov	eax, dword ptr [.L__profc_iswcntrl+40]
	add	eax, 1
	adc	dword ptr [.L__profc_iswcntrl+44], 0
	mov	dword ptr [.L__profc_iswcntrl+40], eax
	mov	ecx, dword ptr [ebp + 8]
	sub	ecx, 127
	mov	al, 1
	cmp	ecx, 33
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB24_7
# %bb.2:
	mov	eax, dword ptr [.L__profc_iswcntrl+48]
	add	eax, 1
	adc	dword ptr [.L__profc_iswcntrl+52], 0
	mov	dword ptr [.L__profc_iswcntrl+48], eax
# %bb.3:
	mov	eax, dword ptr [.L__profc_iswcntrl+24]
	add	eax, 1
	adc	dword ptr [.L__profc_iswcntrl+28], 0
	mov	dword ptr [.L__profc_iswcntrl+24], eax
	mov	ecx, dword ptr [ebp + 8]
	sub	ecx, 8232
	mov	al, 1
	cmp	ecx, 2
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB24_7
# %bb.4:
	mov	eax, dword ptr [.L__profc_iswcntrl+32]
	add	eax, 1
	adc	dword ptr [.L__profc_iswcntrl+36], 0
	mov	dword ptr [.L__profc_iswcntrl+32], eax
# %bb.5:
	mov	eax, dword ptr [.L__profc_iswcntrl+8]
	add	eax, 1
	adc	dword ptr [.L__profc_iswcntrl+12], 0
	mov	dword ptr [.L__profc_iswcntrl+8], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 65529
	cmp	eax, 3
	setb	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB24_7
# %bb.6:
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_iswcntrl+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_iswcntrl+20], 0
	mov	dword ptr [.L__profc_iswcntrl+16], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB24_7:
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
	.cfi_endproc
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	4, 0x90
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_iswdigit]
	add	eax, 1
	adc	dword ptr [.L__profc_iswdigit+4], 0
	mov	dword ptr [.L__profc_iswdigit], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 48
	cmp	eax, 10
	setb	al
	and	al, 1
	movzx	eax, al
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
	.cfi_endproc
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	4, 0x90
	.type	iswprint,@function
iswprint:                               # @iswprint
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_iswprint]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+4], 0
	mov	dword ptr [.L__profc_iswprint], eax
	cmp	dword ptr [ebp + 8], 255
	jae	.LBB26_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_iswprint+8]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+12], 0
	mov	dword ptr [.L__profc_iswprint+8], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	and	eax, 127
	cmp	eax, 33
	setge	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB26_13
.LBB26_2:
	cmp	dword ptr [ebp + 8], 8232
	jb	.LBB26_7
# %bb.3:
	mov	eax, dword ptr [.L__profc_iswprint+40]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+44], 0
	mov	dword ptr [.L__profc_iswprint+40], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 8234
	cmp	eax, 47062
	jb	.LBB26_7
# %bb.4:
	mov	eax, dword ptr [.L__profc_iswprint+48]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+52], 0
	mov	dword ptr [.L__profc_iswprint+48], eax
# %bb.5:
	mov	eax, dword ptr [.L__profc_iswprint+24]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+28], 0
	mov	dword ptr [.L__profc_iswprint+24], eax
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 57344
	cmp	eax, 8185
	jb	.LBB26_7
# %bb.6:
	mov	eax, dword ptr [.L__profc_iswprint+32]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+36], 0
	mov	dword ptr [.L__profc_iswprint+32], eax
	jmp	.LBB26_8
.LBB26_7:
	mov	eax, dword ptr [.L__profc_iswprint+16]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+20], 0
	mov	dword ptr [.L__profc_iswprint+16], eax
	mov	dword ptr [ebp - 4], 1
	jmp	.LBB26_13
.LBB26_8:
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.LBB26_11
# %bb.9:
	mov	eax, dword ptr [.L__profc_iswprint+64]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+68], 0
	mov	dword ptr [.L__profc_iswprint+64], eax
	mov	eax, dword ptr [ebp + 8]
	and	eax, 65534
	cmp	eax, 65534
	je	.LBB26_11
# %bb.10:
	mov	eax, dword ptr [.L__profc_iswprint+72]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+76], 0
	mov	dword ptr [.L__profc_iswprint+72], eax
	jmp	.LBB26_12
.LBB26_11:
	mov	eax, dword ptr [.L__profc_iswprint+56]
	add	eax, 1
	adc	dword ptr [.L__profc_iswprint+60], 0
	mov	dword ptr [.L__profc_iswprint+56], eax
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB26_13
.LBB26_12:
	mov	dword ptr [ebp - 4], 1
.LBB26_13:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
	.cfi_endproc
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	4, 0x90
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_iswxdigit]
	add	eax, 1
	adc	dword ptr [.L__profc_iswxdigit+4], 0
	mov	dword ptr [.L__profc_iswxdigit], eax
	mov	ecx, dword ptr [ebp + 8]
	sub	ecx, 48
	mov	al, 1
	cmp	ecx, 10
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB27_3
# %bb.1:
	mov	eax, dword ptr [.L__profc_iswxdigit+8]
	add	eax, 1
	adc	dword ptr [.L__profc_iswxdigit+12], 0
	mov	dword ptr [.L__profc_iswxdigit+8], eax
	mov	eax, dword ptr [ebp + 8]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 6
	setb	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB27_3
# %bb.2:
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_iswxdigit+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_iswxdigit+20], 0
	mov	dword ptr [.L__profc_iswxdigit+16], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB27_3:
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
	.cfi_endproc
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	4, 0x90
	.type	toascii,@function
toascii:                                # @toascii
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_toascii]
	add	eax, 1
	adc	dword ptr [.L__profc_toascii+4], 0
	mov	dword ptr [.L__profc_toascii], eax
	mov	eax, dword ptr [ebp + 8]
	and	eax, 127
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
	.cfi_endproc
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	4, 0x90
	.type	fdim,@function
fdim:                                   # @fdim
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 32
	fld	qword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 16]
	fstp	qword ptr [esp + 8]
	mov	eax, dword ptr [.L__profc_fdim]
	add	eax, 1
	adc	dword ptr [.L__profc_fdim+4], 0
	mov	dword ptr [.L__profc_fdim], eax
	fld	qword ptr [esp + 16]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB29_1
	jmp	.LBB29_2
.LBB29_1:
	mov	eax, dword ptr [.L__profc_fdim+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fdim+12], 0
	mov	dword ptr [.L__profc_fdim+8], eax
	fld	qword ptr [esp + 16]
	fstp	qword ptr [esp + 24]
	jmp	.LBB29_8
.LBB29_2:
	fld	qword ptr [esp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB29_3
	jmp	.LBB29_4
.LBB29_3:
	mov	eax, dword ptr [.L__profc_fdim+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fdim+20], 0
	mov	dword ptr [.L__profc_fdim+16], eax
	fld	qword ptr [esp + 8]
	fstp	qword ptr [esp + 24]
	jmp	.LBB29_8
.LBB29_4:
	fld	qword ptr [esp + 16]
	fld	qword ptr [esp + 8]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB29_6
	jmp	.LBB29_5
.LBB29_5:
	mov	eax, dword ptr [.L__profc_fdim+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fdim+28], 0
	mov	dword ptr [.L__profc_fdim+24], eax
	fld	qword ptr [esp + 16]
	fld	qword ptr [esp + 8]
	fsubp	st(1), st
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
	jmp	.LBB29_7
.LBB29_6:
	fldz
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
	jmp	.LBB29_7
.LBB29_7:
	fld	qword ptr [esp]                 # 8-byte Folded Reload
	fstp	qword ptr [esp + 24]
.LBB29_8:
	fld	qword ptr [esp + 24]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
	.cfi_endproc
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	4, 0x90
	.type	fdimf,@function
fdimf:                                  # @fdimf
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	fld	dword ptr [ebp + 12]
	fstp	st(0)
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc_fdimf]
	add	eax, 1
	adc	dword ptr [.L__profc_fdimf+4], 0
	mov	dword ptr [.L__profc_fdimf], eax
	fld	dword ptr [ebp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB30_1
	jmp	.LBB30_2
.LBB30_1:
	mov	eax, dword ptr [.L__profc_fdimf+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fdimf+12], 0
	mov	dword ptr [.L__profc_fdimf+8], eax
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 4]
	jmp	.LBB30_8
.LBB30_2:
	fld	dword ptr [ebp + 12]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB30_3
	jmp	.LBB30_4
.LBB30_3:
	mov	eax, dword ptr [.L__profc_fdimf+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fdimf+20], 0
	mov	dword ptr [.L__profc_fdimf+16], eax
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 4]
	jmp	.LBB30_8
.LBB30_4:
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp + 12]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB30_6
	jmp	.LBB30_5
.LBB30_5:
	mov	eax, dword ptr [.L__profc_fdimf+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fdimf+28], 0
	mov	dword ptr [.L__profc_fdimf+24], eax
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp + 12]
	fsubp	st(1), st
	fstp	dword ptr [ebp - 8]             # 4-byte Folded Spill
	jmp	.LBB30_7
.LBB30_6:
	fldz
	fstp	dword ptr [ebp - 8]             # 4-byte Folded Spill
	jmp	.LBB30_7
.LBB30_7:
	fld	dword ptr [ebp - 8]             # 4-byte Folded Reload
	fstp	dword ptr [ebp - 4]
.LBB30_8:
	fld	dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
	.cfi_endproc
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	4, 0x90
	.type	fmax,@function
fmax:                                   # @fmax
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 40
	fld	qword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 24]
	fstp	qword ptr [esp + 16]
	mov	eax, dword ptr [.L__profc_fmax]
	add	eax, 1
	adc	dword ptr [.L__profc_fmax+4], 0
	mov	dword ptr [.L__profc_fmax], eax
	fld	qword ptr [esp + 24]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB31_1
	jmp	.LBB31_2
.LBB31_1:
	mov	eax, dword ptr [.L__profc_fmax+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fmax+12], 0
	mov	dword ptr [.L__profc_fmax+8], eax
	fld	qword ptr [esp + 16]
	fstp	qword ptr [esp + 32]
	jmp	.LBB31_13
.LBB31_2:
	fld	qword ptr [esp + 16]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB31_3
	jmp	.LBB31_4
.LBB31_3:
	mov	eax, dword ptr [.L__profc_fmax+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fmax+20], 0
	mov	dword ptr [.L__profc_fmax+16], eax
	fld	qword ptr [esp + 24]
	fstp	qword ptr [esp + 32]
	jmp	.LBB31_13
.LBB31_4:
	mov	eax, dword ptr [esp + 28]
	shr	eax, 31
	mov	ecx, dword ptr [esp + 20]
	shr	ecx, 31
                                        # kill: def $cl killed $cl killed $ecx
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB31_9
# %bb.5:
	mov	eax, dword ptr [.L__profc_fmax+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fmax+28], 0
	mov	dword ptr [.L__profc_fmax+24], eax
	mov	eax, dword ptr [esp + 28]
	test	eax, eax
	jns	.LBB31_7
	jmp	.LBB31_6
.LBB31_6:
	mov	eax, dword ptr [.L__profc_fmax+32]
	add	eax, 1
	adc	dword ptr [.L__profc_fmax+36], 0
	mov	dword ptr [.L__profc_fmax+32], eax
	fld	qword ptr [esp + 16]
	fstp	qword ptr [esp + 8]             # 8-byte Folded Spill
	jmp	.LBB31_8
.LBB31_7:
	fld	qword ptr [esp + 24]
	fstp	qword ptr [esp + 8]             # 8-byte Folded Spill
.LBB31_8:
	fld	qword ptr [esp + 8]             # 8-byte Folded Reload
	fstp	qword ptr [esp + 32]
	jmp	.LBB31_13
.LBB31_9:
	fld	qword ptr [esp + 24]
	fld	qword ptr [esp + 16]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB31_11
	jmp	.LBB31_10
.LBB31_10:
	mov	eax, dword ptr [.L__profc_fmax+40]
	add	eax, 1
	adc	dword ptr [.L__profc_fmax+44], 0
	mov	dword ptr [.L__profc_fmax+40], eax
	fld	qword ptr [esp + 16]
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
	jmp	.LBB31_12
.LBB31_11:
	fld	qword ptr [esp + 24]
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
.LBB31_12:
	fld	qword ptr [esp]                 # 8-byte Folded Reload
	fstp	qword ptr [esp + 32]
.LBB31_13:
	fld	qword ptr [esp + 32]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
	.cfi_endproc
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	4, 0x90
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	fld	dword ptr [ebp + 12]
	fstp	st(0)
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc_fmaxf]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxf+4], 0
	mov	dword ptr [.L__profc_fmaxf], eax
	fld	dword ptr [ebp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB32_1
	jmp	.LBB32_2
.LBB32_1:
	mov	eax, dword ptr [.L__profc_fmaxf+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxf+12], 0
	mov	dword ptr [.L__profc_fmaxf+8], eax
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 4]
	jmp	.LBB32_13
.LBB32_2:
	fld	dword ptr [ebp + 12]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB32_3
	jmp	.LBB32_4
.LBB32_3:
	mov	eax, dword ptr [.L__profc_fmaxf+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxf+20], 0
	mov	dword ptr [.L__profc_fmaxf+16], eax
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 4]
	jmp	.LBB32_13
.LBB32_4:
	mov	eax, dword ptr [ebp + 8]
	shr	eax, 31
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 8]
	mov	ecx, dword ptr [ebp - 8]
	cmp	ecx, 0
	setl	cl
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB32_9
# %bb.5:
	mov	eax, dword ptr [.L__profc_fmaxf+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxf+28], 0
	mov	dword ptr [.L__profc_fmaxf+24], eax
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, 0
	jge	.LBB32_7
# %bb.6:
	mov	eax, dword ptr [.L__profc_fmaxf+32]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxf+36], 0
	mov	dword ptr [.L__profc_fmaxf+32], eax
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 16]            # 4-byte Folded Spill
	jmp	.LBB32_8
.LBB32_7:
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 16]            # 4-byte Folded Spill
.LBB32_8:
	fld	dword ptr [ebp - 16]            # 4-byte Folded Reload
	fstp	dword ptr [ebp - 4]
	jmp	.LBB32_13
.LBB32_9:
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp + 12]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB32_11
	jmp	.LBB32_10
.LBB32_10:
	mov	eax, dword ptr [.L__profc_fmaxf+40]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxf+44], 0
	mov	dword ptr [.L__profc_fmaxf+40], eax
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 20]            # 4-byte Folded Spill
	jmp	.LBB32_12
.LBB32_11:
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 20]            # 4-byte Folded Spill
.LBB32_12:
	fld	dword ptr [ebp - 20]            # 4-byte Folded Reload
	fstp	dword ptr [ebp - 4]
.LBB32_13:
	fld	dword ptr [ebp - 4]
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
	.cfi_endproc
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	4, 0x90
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 60
	fld	tbyte ptr [ebp + 20]
	fld	tbyte ptr [ebp + 8]
	fstp	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 36]
	mov	eax, dword ptr [.L__profc_fmaxl]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxl+4], 0
	mov	dword ptr [.L__profc_fmaxl], eax
	fld	tbyte ptr [ebp - 24]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB33_1
	jmp	.LBB33_2
.LBB33_1:
	mov	eax, dword ptr [.L__profc_fmaxl+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxl+12], 0
	mov	dword ptr [.L__profc_fmaxl+8], eax
	fld	tbyte ptr [ebp - 36]
	fstp	tbyte ptr [ebp - 12]
	jmp	.LBB33_13
.LBB33_2:
	fld	tbyte ptr [ebp - 36]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB33_3
	jmp	.LBB33_4
.LBB33_3:
	mov	eax, dword ptr [.L__profc_fmaxl+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxl+20], 0
	mov	dword ptr [.L__profc_fmaxl+16], eax
	fld	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 12]
	jmp	.LBB33_13
.LBB33_4:
	movzx	eax, word ptr [ebp - 16]
	shr	eax, 15
	movzx	ecx, word ptr [ebp - 28]
	shr	ecx, 15
                                        # kill: def $cl killed $cl killed $ecx
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB33_9
# %bb.5:
	mov	eax, dword ptr [.L__profc_fmaxl+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxl+28], 0
	mov	dword ptr [.L__profc_fmaxl+24], eax
	movzx	eax, word ptr [ebp - 16]
	test	eax, 32768
	je	.LBB33_7
	jmp	.LBB33_6
.LBB33_6:
	mov	eax, dword ptr [.L__profc_fmaxl+32]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxl+36], 0
	mov	dword ptr [.L__profc_fmaxl+32], eax
	fld	tbyte ptr [ebp - 36]
	fstp	tbyte ptr [ebp - 48]            # 10-byte Folded Spill
	jmp	.LBB33_8
.LBB33_7:
	fld	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 48]            # 10-byte Folded Spill
.LBB33_8:
	fld	tbyte ptr [ebp - 48]            # 10-byte Folded Reload
	fstp	tbyte ptr [ebp - 12]
	jmp	.LBB33_13
.LBB33_9:
	fld	tbyte ptr [ebp - 24]
	fld	tbyte ptr [ebp - 36]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB33_11
	jmp	.LBB33_10
.LBB33_10:
	mov	eax, dword ptr [.L__profc_fmaxl+40]
	add	eax, 1
	adc	dword ptr [.L__profc_fmaxl+44], 0
	mov	dword ptr [.L__profc_fmaxl+40], eax
	fld	tbyte ptr [ebp - 36]
	fstp	tbyte ptr [ebp - 60]            # 10-byte Folded Spill
	jmp	.LBB33_12
.LBB33_11:
	fld	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 60]            # 10-byte Folded Spill
.LBB33_12:
	fld	tbyte ptr [ebp - 60]            # 10-byte Folded Reload
	fstp	tbyte ptr [ebp - 12]
.LBB33_13:
	fld	tbyte ptr [ebp - 12]
	add	esp, 60
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
	.cfi_endproc
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	4, 0x90
	.type	fmin,@function
fmin:                                   # @fmin
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 40
	fld	qword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 24]
	fstp	qword ptr [esp + 16]
	mov	eax, dword ptr [.L__profc_fmin]
	add	eax, 1
	adc	dword ptr [.L__profc_fmin+4], 0
	mov	dword ptr [.L__profc_fmin], eax
	fld	qword ptr [esp + 24]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB34_1
	jmp	.LBB34_2
.LBB34_1:
	mov	eax, dword ptr [.L__profc_fmin+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fmin+12], 0
	mov	dword ptr [.L__profc_fmin+8], eax
	fld	qword ptr [esp + 16]
	fstp	qword ptr [esp + 32]
	jmp	.LBB34_13
.LBB34_2:
	fld	qword ptr [esp + 16]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB34_3
	jmp	.LBB34_4
.LBB34_3:
	mov	eax, dword ptr [.L__profc_fmin+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fmin+20], 0
	mov	dword ptr [.L__profc_fmin+16], eax
	fld	qword ptr [esp + 24]
	fstp	qword ptr [esp + 32]
	jmp	.LBB34_13
.LBB34_4:
	mov	eax, dword ptr [esp + 28]
	shr	eax, 31
	mov	ecx, dword ptr [esp + 20]
	shr	ecx, 31
                                        # kill: def $cl killed $cl killed $ecx
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB34_9
# %bb.5:
	mov	eax, dword ptr [.L__profc_fmin+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fmin+28], 0
	mov	dword ptr [.L__profc_fmin+24], eax
	mov	eax, dword ptr [esp + 28]
	test	eax, eax
	jns	.LBB34_7
	jmp	.LBB34_6
.LBB34_6:
	mov	eax, dword ptr [.L__profc_fmin+32]
	add	eax, 1
	adc	dword ptr [.L__profc_fmin+36], 0
	mov	dword ptr [.L__profc_fmin+32], eax
	fld	qword ptr [esp + 24]
	fstp	qword ptr [esp + 8]             # 8-byte Folded Spill
	jmp	.LBB34_8
.LBB34_7:
	fld	qword ptr [esp + 16]
	fstp	qword ptr [esp + 8]             # 8-byte Folded Spill
.LBB34_8:
	fld	qword ptr [esp + 8]             # 8-byte Folded Reload
	fstp	qword ptr [esp + 32]
	jmp	.LBB34_13
.LBB34_9:
	fld	qword ptr [esp + 24]
	fld	qword ptr [esp + 16]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB34_11
	jmp	.LBB34_10
.LBB34_10:
	mov	eax, dword ptr [.L__profc_fmin+40]
	add	eax, 1
	adc	dword ptr [.L__profc_fmin+44], 0
	mov	dword ptr [.L__profc_fmin+40], eax
	fld	qword ptr [esp + 24]
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
	jmp	.LBB34_12
.LBB34_11:
	fld	qword ptr [esp + 16]
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
.LBB34_12:
	fld	qword ptr [esp]                 # 8-byte Folded Reload
	fstp	qword ptr [esp + 32]
.LBB34_13:
	fld	qword ptr [esp + 32]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
	.cfi_endproc
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	4, 0x90
	.type	fminf,@function
fminf:                                  # @fminf
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	fld	dword ptr [ebp + 12]
	fstp	st(0)
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc_fminf]
	add	eax, 1
	adc	dword ptr [.L__profc_fminf+4], 0
	mov	dword ptr [.L__profc_fminf], eax
	fld	dword ptr [ebp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB35_1
	jmp	.LBB35_2
.LBB35_1:
	mov	eax, dword ptr [.L__profc_fminf+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fminf+12], 0
	mov	dword ptr [.L__profc_fminf+8], eax
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 4]
	jmp	.LBB35_13
.LBB35_2:
	fld	dword ptr [ebp + 12]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB35_3
	jmp	.LBB35_4
.LBB35_3:
	mov	eax, dword ptr [.L__profc_fminf+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fminf+20], 0
	mov	dword ptr [.L__profc_fminf+16], eax
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 4]
	jmp	.LBB35_13
.LBB35_4:
	mov	eax, dword ptr [ebp + 8]
	shr	eax, 31
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 8]
	mov	ecx, dword ptr [ebp - 8]
	cmp	ecx, 0
	setl	cl
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB35_9
# %bb.5:
	mov	eax, dword ptr [.L__profc_fminf+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fminf+28], 0
	mov	dword ptr [.L__profc_fminf+24], eax
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, 0
	jge	.LBB35_7
# %bb.6:
	mov	eax, dword ptr [.L__profc_fminf+32]
	add	eax, 1
	adc	dword ptr [.L__profc_fminf+36], 0
	mov	dword ptr [.L__profc_fminf+32], eax
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 16]            # 4-byte Folded Spill
	jmp	.LBB35_8
.LBB35_7:
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 16]            # 4-byte Folded Spill
.LBB35_8:
	fld	dword ptr [ebp - 16]            # 4-byte Folded Reload
	fstp	dword ptr [ebp - 4]
	jmp	.LBB35_13
.LBB35_9:
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp + 12]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB35_11
	jmp	.LBB35_10
.LBB35_10:
	mov	eax, dword ptr [.L__profc_fminf+40]
	add	eax, 1
	adc	dword ptr [.L__profc_fminf+44], 0
	mov	dword ptr [.L__profc_fminf+40], eax
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 20]            # 4-byte Folded Spill
	jmp	.LBB35_12
.LBB35_11:
	fld	dword ptr [ebp + 12]
	fstp	dword ptr [ebp - 20]            # 4-byte Folded Spill
.LBB35_12:
	fld	dword ptr [ebp - 20]            # 4-byte Folded Reload
	fstp	dword ptr [ebp - 4]
.LBB35_13:
	fld	dword ptr [ebp - 4]
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
	.cfi_endproc
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	4, 0x90
	.type	fminl,@function
fminl:                                  # @fminl
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 60
	fld	tbyte ptr [ebp + 20]
	fld	tbyte ptr [ebp + 8]
	fstp	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 36]
	mov	eax, dword ptr [.L__profc_fminl]
	add	eax, 1
	adc	dword ptr [.L__profc_fminl+4], 0
	mov	dword ptr [.L__profc_fminl], eax
	fld	tbyte ptr [ebp - 24]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB36_1
	jmp	.LBB36_2
.LBB36_1:
	mov	eax, dword ptr [.L__profc_fminl+8]
	add	eax, 1
	adc	dword ptr [.L__profc_fminl+12], 0
	mov	dword ptr [.L__profc_fminl+8], eax
	fld	tbyte ptr [ebp - 36]
	fstp	tbyte ptr [ebp - 12]
	jmp	.LBB36_13
.LBB36_2:
	fld	tbyte ptr [ebp - 36]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB36_3
	jmp	.LBB36_4
.LBB36_3:
	mov	eax, dword ptr [.L__profc_fminl+16]
	add	eax, 1
	adc	dword ptr [.L__profc_fminl+20], 0
	mov	dword ptr [.L__profc_fminl+16], eax
	fld	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 12]
	jmp	.LBB36_13
.LBB36_4:
	movzx	eax, word ptr [ebp - 16]
	shr	eax, 15
	movzx	ecx, word ptr [ebp - 28]
	shr	ecx, 15
                                        # kill: def $cl killed $cl killed $ecx
	and	cl, 1
	movzx	ecx, cl
	cmp	eax, ecx
	je	.LBB36_9
# %bb.5:
	mov	eax, dword ptr [.L__profc_fminl+24]
	add	eax, 1
	adc	dword ptr [.L__profc_fminl+28], 0
	mov	dword ptr [.L__profc_fminl+24], eax
	movzx	eax, word ptr [ebp - 16]
	test	eax, 32768
	je	.LBB36_7
	jmp	.LBB36_6
.LBB36_6:
	mov	eax, dword ptr [.L__profc_fminl+32]
	add	eax, 1
	adc	dword ptr [.L__profc_fminl+36], 0
	mov	dword ptr [.L__profc_fminl+32], eax
	fld	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 48]            # 10-byte Folded Spill
	jmp	.LBB36_8
.LBB36_7:
	fld	tbyte ptr [ebp - 36]
	fstp	tbyte ptr [ebp - 48]            # 10-byte Folded Spill
.LBB36_8:
	fld	tbyte ptr [ebp - 48]            # 10-byte Folded Reload
	fstp	tbyte ptr [ebp - 12]
	jmp	.LBB36_13
.LBB36_9:
	fld	tbyte ptr [ebp - 24]
	fld	tbyte ptr [ebp - 36]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB36_11
	jmp	.LBB36_10
.LBB36_10:
	mov	eax, dword ptr [.L__profc_fminl+40]
	add	eax, 1
	adc	dword ptr [.L__profc_fminl+44], 0
	mov	dword ptr [.L__profc_fminl+40], eax
	fld	tbyte ptr [ebp - 24]
	fstp	tbyte ptr [ebp - 60]            # 10-byte Folded Spill
	jmp	.LBB36_12
.LBB36_11:
	fld	tbyte ptr [ebp - 36]
	fstp	tbyte ptr [ebp - 60]            # 10-byte Folded Spill
.LBB36_12:
	fld	tbyte ptr [ebp - 60]            # 10-byte Folded Reload
	fstp	tbyte ptr [ebp - 12]
.LBB36_13:
	fld	tbyte ptr [ebp - 12]
	add	esp, 60
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
	.cfi_endproc
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	4, 0x90
	.type	l64a,@function
l64a:                                   # @l64a
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_l64a]
	add	eax, 1
	adc	dword ptr [.L__profc_l64a+4], 0
	mov	dword ptr [.L__profc_l64a], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	lea	eax, [l64a.s]
	mov	dword ptr [ebp - 4], eax
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB37_4
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
	mov	eax, dword ptr [.L__profc_l64a+8]
	add	eax, 1
	adc	dword ptr [.L__profc_l64a+12], 0
	mov	dword ptr [.L__profc_l64a+8], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 63
	mov	cl, byte ptr [1*eax + digits]
	mov	eax, dword ptr [ebp - 4]
	mov	byte ptr [eax], cl
# %bb.3:                                #   in Loop: Header=BB37_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 8]
	shr	eax, 6
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB37_1
.LBB37_4:
	mov	eax, dword ptr [ebp - 4]
	mov	byte ptr [eax], 0
	lea	eax, [l64a.s]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
	.cfi_endproc
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	4, 0x90
	.type	srand,@function
srand:                                  # @srand
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_srand]
	add	eax, 1
	adc	dword ptr [.L__profc_srand+4], 0
	mov	dword ptr [.L__profc_srand], eax
	mov	eax, dword ptr [ebp + 8]
	dec	eax
	mov	dword ptr [seed], eax
	mov	dword ptr [seed+4], 0
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
	.cfi_endproc
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	4, 0x90
	.type	rand,@function
rand:                                   # @rand
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	push	eax
	.cfi_offset esi, -12
	mov	eax, dword ptr [.L__profc_rand]
	add	eax, 1
	adc	dword ptr [.L__profc_rand+4], 0
	mov	dword ptr [.L__profc_rand], eax
	mov	eax, dword ptr [seed+4]
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	mov	esi, dword ptr [seed]
	mov	ecx, 1284865837
	mov	eax, esi
	mul	ecx
	mov	ecx, eax
	mov	eax, edx
	mov	edx, dword ptr [ebp - 8]        # 4-byte Reload
	imul	esi, esi, 1481765933
	add	eax, esi
	imul	edx, edx, 1284865837
	add	ecx, 1
	adc	eax, edx
	mov	dword ptr [seed], ecx
	mov	dword ptr [seed+4], eax
	mov	eax, dword ptr [seed+4]
	shr	eax
	add	esp, 4
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
	.cfi_endproc
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	4, 0x90
	.type	insque,@function
insque:                                 # @insque
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_insque]
	add	eax, 1
	adc	dword ptr [.L__profc_insque+4], 0
	mov	dword ptr [.L__profc_insque], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
	cmp	dword ptr [ebp - 8], 0
	jne	.LBB40_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_insque+8]
	add	eax, 1
	adc	dword ptr [.L__profc_insque+12], 0
	mov	dword ptr [.L__profc_insque+8], eax
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [eax + 4], 0
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [eax], 0
	jmp	.LBB40_4
.LBB40_2:
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, dword ptr [eax]
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [eax], ecx
	mov	ecx, dword ptr [ebp - 8]
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [eax + 4], ecx
	mov	ecx, dword ptr [ebp - 4]
	mov	eax, dword ptr [ebp - 8]
	mov	dword ptr [eax], ecx
	mov	eax, dword ptr [ebp - 4]
	cmp	dword ptr [eax], 0
	je	.LBB40_4
# %bb.3:
	mov	eax, dword ptr [.L__profc_insque+16]
	add	eax, 1
	adc	dword ptr [.L__profc_insque+20], 0
	mov	dword ptr [.L__profc_insque+16], eax
	mov	ecx, dword ptr [ebp - 4]
	mov	eax, dword ptr [ebp - 4]
	mov	eax, dword ptr [eax]
	mov	dword ptr [eax + 4], ecx
.LBB40_4:
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
	.cfi_endproc
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	4, 0x90
	.type	remque,@function
remque:                                 # @remque
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_remque]
	add	eax, 1
	adc	dword ptr [.L__profc_remque+4], 0
	mov	dword ptr [.L__profc_remque], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	cmp	dword ptr [eax], 0
	je	.LBB41_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_remque+8]
	add	eax, 1
	adc	dword ptr [.L__profc_remque+12], 0
	mov	dword ptr [.L__profc_remque+8], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, dword ptr [eax + 4]
	mov	eax, dword ptr [ebp - 4]
	mov	eax, dword ptr [eax]
	mov	dword ptr [eax + 4], ecx
.LBB41_2:
	mov	eax, dword ptr [ebp - 4]
	cmp	dword ptr [eax + 4], 0
	je	.LBB41_4
# %bb.3:
	mov	eax, dword ptr [.L__profc_remque+16]
	add	eax, 1
	adc	dword ptr [.L__profc_remque+20], 0
	mov	dword ptr [.L__profc_remque+16], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, dword ptr [eax]
	mov	eax, dword ptr [ebp - 4]
	mov	eax, dword ptr [eax + 4]
	mov	dword ptr [eax], ecx
.LBB41_4:
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
	.cfi_endproc
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	4, 0x90
	.type	lsearch,@function
lsearch:                                # @lsearch
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 36
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 24]
	mov	eax, dword ptr [ebp + 20]
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_lsearch]
	add	eax, 1
	adc	dword ptr [.L__profc_lsearch+4], 0
	mov	dword ptr [.L__profc_lsearch], eax
	mov	eax, dword ptr [ebp + 20]
	mov	dword ptr [ebp - 24], eax       # 4-byte Spill
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [eax]
	mov	dword ptr [ebp - 16], eax
	mov	dword ptr [ebp - 20], 0
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 20]
	cmp	eax, dword ptr [ebp - 16]
	jae	.LBB42_6
# %bb.2:                                #   in Loop: Header=BB42_1 Depth=1
	mov	esi, dword ptr [ebp - 24]       # 4-byte Reload
	mov	eax, dword ptr [.L__profc_lsearch+8]
	add	eax, 1
	adc	dword ptr [.L__profc_lsearch+12], 0
	mov	dword ptr [.L__profc_lsearch+8], eax
	mov	eax, dword ptr [ebp + 24]
	mov	edx, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 12]
	imul	esi, dword ptr [ebp - 20]
	add	ecx, esi
	mov	dword ptr [esp], edx
	mov	dword ptr [esp + 4], ecx
	call	eax
	cmp	eax, 0
	jne	.LBB42_4
# %bb.3:
	mov	ecx, dword ptr [ebp - 24]       # 4-byte Reload
	mov	eax, dword ptr [.L__profc_lsearch+16]
	add	eax, 1
	adc	dword ptr [.L__profc_lsearch+20], 0
	mov	dword ptr [.L__profc_lsearch+16], eax
	mov	eax, dword ptr [ebp - 12]
	imul	ecx, dword ptr [ebp - 20]
	add	eax, ecx
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB42_7
.LBB42_4:                               #   in Loop: Header=BB42_1 Depth=1
	jmp	.LBB42_5
.LBB42_5:                               #   in Loop: Header=BB42_1 Depth=1
	mov	eax, dword ptr [ebp - 20]
	add	eax, 1
	mov	dword ptr [ebp - 20], eax
	jmp	.LBB42_1
.LBB42_6:
	mov	eax, dword ptr [ebp - 24]       # 4-byte Reload
	mov	edx, dword ptr [ebp - 16]
	add	edx, 1
	mov	ecx, dword ptr [ebp + 16]
	mov	dword ptr [ecx], edx
	mov	edx, dword ptr [ebp - 12]
	imul	eax, dword ptr [ebp - 16]
	add	edx, eax
	mov	dword ptr [ebp - 28], edx       # 4-byte Spill
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 20]
	mov	dword ptr [esp], edx
	mov	dword ptr [esp + 4], ecx
	mov	dword ptr [esp + 8], eax
	call	memcpy
	mov	eax, dword ptr [ebp - 28]       # 4-byte Reload
	mov	dword ptr [ebp - 8], eax
.LBB42_7:
	mov	eax, dword ptr [ebp - 8]
	add	esp, 36
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
	.cfi_endproc
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	4, 0x90
	.type	lfind,@function
lfind:                                  # @lfind
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 28
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 24]
	mov	eax, dword ptr [ebp + 20]
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_lfind]
	add	eax, 1
	adc	dword ptr [.L__profc_lfind+4], 0
	mov	dword ptr [.L__profc_lfind], eax
	mov	eax, dword ptr [ebp + 20]
	mov	dword ptr [ebp - 24], eax       # 4-byte Spill
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [eax]
	mov	dword ptr [ebp - 16], eax
	mov	dword ptr [ebp - 20], 0
.LBB43_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 20]
	cmp	eax, dword ptr [ebp - 16]
	jae	.LBB43_6
# %bb.2:                                #   in Loop: Header=BB43_1 Depth=1
	mov	esi, dword ptr [ebp - 24]       # 4-byte Reload
	mov	eax, dword ptr [.L__profc_lfind+8]
	add	eax, 1
	adc	dword ptr [.L__profc_lfind+12], 0
	mov	dword ptr [.L__profc_lfind+8], eax
	mov	eax, dword ptr [ebp + 24]
	mov	edx, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 12]
	imul	esi, dword ptr [ebp - 20]
	add	ecx, esi
	mov	dword ptr [esp], edx
	mov	dword ptr [esp + 4], ecx
	call	eax
	cmp	eax, 0
	jne	.LBB43_4
# %bb.3:
	mov	ecx, dword ptr [ebp - 24]       # 4-byte Reload
	mov	eax, dword ptr [.L__profc_lfind+16]
	add	eax, 1
	adc	dword ptr [.L__profc_lfind+20], 0
	mov	dword ptr [.L__profc_lfind+16], eax
	mov	eax, dword ptr [ebp - 12]
	imul	ecx, dword ptr [ebp - 20]
	add	eax, ecx
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB43_7
.LBB43_4:                               #   in Loop: Header=BB43_1 Depth=1
	jmp	.LBB43_5
.LBB43_5:                               #   in Loop: Header=BB43_1 Depth=1
	mov	eax, dword ptr [ebp - 20]
	add	eax, 1
	mov	dword ptr [ebp - 20], eax
	jmp	.LBB43_1
.LBB43_6:
	mov	dword ptr [ebp - 8], 0
.LBB43_7:
	mov	eax, dword ptr [ebp - 8]
	add	esp, 28
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
	.cfi_endproc
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	4, 0x90
	.type	abs,@function
abs:                                    # @abs
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_abs]
	add	eax, 1
	adc	dword ptr [.L__profc_abs+4], 0
	mov	dword ptr [.L__profc_abs], eax
	cmp	dword ptr [ebp + 8], 0
	jle	.LBB44_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_abs+8]
	add	eax, 1
	adc	dword ptr [.L__profc_abs+12], 0
	mov	dword ptr [.L__profc_abs+8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax        # 4-byte Spill
	jmp	.LBB44_3
.LBB44_2:
	xor	eax, eax
	sub	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax        # 4-byte Spill
.LBB44_3:
	mov	eax, dword ptr [ebp - 4]        # 4-byte Reload
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
	.cfi_endproc
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	4, 0x90
	.type	atoi,@function
atoi:                                   # @atoi
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_atoi]
	add	eax, 1
	adc	dword ptr [.L__profc_atoi+4], 0
	mov	dword ptr [.L__profc_atoi], eax
	mov	dword ptr [ebp - 4], 0
	mov	dword ptr [ebp - 8], 0
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isspace
	cmp	eax, 0
	je	.LBB45_3
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	mov	eax, dword ptr [.L__profc_atoi+8]
	add	eax, 1
	adc	dword ptr [.L__profc_atoi+12], 0
	mov	dword ptr [.L__profc_atoi+8], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB45_1
.LBB45_3:
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	sub	eax, 43
	je	.LBB45_5
	jmp	.LBB45_14
.LBB45_14:
	mov	eax, dword ptr [ebp - 12]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB45_7
	jmp	.LBB45_4
.LBB45_4:
	mov	eax, dword ptr [.L__profc_atoi+24]
	add	eax, 1
	adc	dword ptr [.L__profc_atoi+28], 0
	mov	dword ptr [.L__profc_atoi+24], eax
	mov	dword ptr [ebp - 8], 1
	jmp	.LBB45_6
.LBB45_5:
	mov	eax, dword ptr [.L__profc_atoi+32]
	add	eax, 1
	adc	dword ptr [.L__profc_atoi+36], 0
	mov	dword ptr [.L__profc_atoi+32], eax
.LBB45_6:
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
.LBB45_7:
	mov	eax, dword ptr [.L__profc_atoi+16]
	add	eax, 1
	adc	dword ptr [.L__profc_atoi+20], 0
	mov	dword ptr [.L__profc_atoi+16], eax
.LBB45_8:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isdigit
	cmp	eax, 0
	je	.LBB45_10
# %bb.9:                                #   in Loop: Header=BB45_8 Depth=1
	mov	eax, dword ptr [.L__profc_atoi+40]
	add	eax, 1
	adc	dword ptr [.L__profc_atoi+44], 0
	mov	dword ptr [.L__profc_atoi+40], eax
	imul	eax, dword ptr [ebp - 4], 10
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [ebp + 8], edx
	movsx	ecx, byte ptr [ecx]
	sub	ecx, 48
	sub	eax, ecx
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB45_8
.LBB45_10:
	cmp	dword ptr [ebp - 8], 0
	je	.LBB45_12
# %bb.11:
	mov	eax, dword ptr [.L__profc_atoi+48]
	add	eax, 1
	adc	dword ptr [.L__profc_atoi+52], 0
	mov	dword ptr [.L__profc_atoi+48], eax
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB45_13
.LBB45_12:
	xor	eax, eax
	sub	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
.LBB45_13:
	mov	eax, dword ptr [ebp - 16]       # 4-byte Reload
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
	.cfi_endproc
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	4, 0x90
	.type	atol,@function
atol:                                   # @atol
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_atol]
	add	eax, 1
	adc	dword ptr [.L__profc_atol+4], 0
	mov	dword ptr [.L__profc_atol], eax
	mov	dword ptr [ebp - 4], 0
	mov	dword ptr [ebp - 8], 0
.LBB46_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isspace
	cmp	eax, 0
	je	.LBB46_3
# %bb.2:                                #   in Loop: Header=BB46_1 Depth=1
	mov	eax, dword ptr [.L__profc_atol+8]
	add	eax, 1
	adc	dword ptr [.L__profc_atol+12], 0
	mov	dword ptr [.L__profc_atol+8], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB46_1
.LBB46_3:
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	sub	eax, 43
	je	.LBB46_5
	jmp	.LBB46_14
.LBB46_14:
	mov	eax, dword ptr [ebp - 12]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB46_7
	jmp	.LBB46_4
.LBB46_4:
	mov	eax, dword ptr [.L__profc_atol+24]
	add	eax, 1
	adc	dword ptr [.L__profc_atol+28], 0
	mov	dword ptr [.L__profc_atol+24], eax
	mov	dword ptr [ebp - 8], 1
	jmp	.LBB46_6
.LBB46_5:
	mov	eax, dword ptr [.L__profc_atol+32]
	add	eax, 1
	adc	dword ptr [.L__profc_atol+36], 0
	mov	dword ptr [.L__profc_atol+32], eax
.LBB46_6:
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
.LBB46_7:
	mov	eax, dword ptr [.L__profc_atol+16]
	add	eax, 1
	adc	dword ptr [.L__profc_atol+20], 0
	mov	dword ptr [.L__profc_atol+16], eax
.LBB46_8:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isdigit
	cmp	eax, 0
	je	.LBB46_10
# %bb.9:                                #   in Loop: Header=BB46_8 Depth=1
	mov	eax, dword ptr [.L__profc_atol+40]
	add	eax, 1
	adc	dword ptr [.L__profc_atol+44], 0
	mov	dword ptr [.L__profc_atol+40], eax
	imul	eax, dword ptr [ebp - 4], 10
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [ebp + 8], edx
	movsx	ecx, byte ptr [ecx]
	sub	ecx, 48
	sub	eax, ecx
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB46_8
.LBB46_10:
	cmp	dword ptr [ebp - 8], 0
	je	.LBB46_12
# %bb.11:
	mov	eax, dword ptr [.L__profc_atol+48]
	add	eax, 1
	adc	dword ptr [.L__profc_atol+52], 0
	mov	dword ptr [.L__profc_atol+48], eax
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB46_13
.LBB46_12:
	xor	eax, eax
	sub	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
.LBB46_13:
	mov	eax, dword ptr [ebp - 16]       # 4-byte Reload
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
	.cfi_endproc
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	4, 0x90
	.type	atoll,@function
atoll:                                  # @atoll
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	and	esp, -8
	sub	esp, 40
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_atoll]
	add	eax, 1
	adc	dword ptr [.L__profc_atoll+4], 0
	mov	dword ptr [.L__profc_atoll], eax
	mov	dword ptr [esp + 28], 0
	mov	dword ptr [esp + 24], 0
	mov	dword ptr [esp + 20], 0
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isspace
	cmp	eax, 0
	je	.LBB47_3
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	mov	eax, dword ptr [.L__profc_atoll+8]
	add	eax, 1
	adc	dword ptr [.L__profc_atoll+12], 0
	mov	dword ptr [.L__profc_atoll+8], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB47_1
.LBB47_3:
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp + 16], eax       # 4-byte Spill
	sub	eax, 43
	je	.LBB47_5
	jmp	.LBB47_14
.LBB47_14:
	mov	eax, dword ptr [esp + 16]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB47_7
	jmp	.LBB47_4
.LBB47_4:
	mov	eax, dword ptr [.L__profc_atoll+24]
	add	eax, 1
	adc	dword ptr [.L__profc_atoll+28], 0
	mov	dword ptr [.L__profc_atoll+24], eax
	mov	dword ptr [esp + 20], 1
	jmp	.LBB47_6
.LBB47_5:
	mov	eax, dword ptr [.L__profc_atoll+32]
	add	eax, 1
	adc	dword ptr [.L__profc_atoll+36], 0
	mov	dword ptr [.L__profc_atoll+32], eax
.LBB47_6:
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
.LBB47_7:
	mov	eax, dword ptr [.L__profc_atoll+16]
	add	eax, 1
	adc	dword ptr [.L__profc_atoll+20], 0
	mov	dword ptr [.L__profc_atoll+16], eax
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isdigit
	cmp	eax, 0
	je	.LBB47_10
# %bb.9:                                #   in Loop: Header=BB47_8 Depth=1
	mov	eax, dword ptr [.L__profc_atoll+40]
	add	eax, 1
	adc	dword ptr [.L__profc_atoll+44], 0
	mov	dword ptr [.L__profc_atoll+40], eax
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 12], ecx       # 4-byte Spill
	mov	ecx, 10
	mul	ecx
	mov	ecx, eax
	mov	eax, dword ptr [esp + 12]       # 4-byte Reload
	lea	eax, [eax + 4*eax]
	lea	eax, [edx + 2*eax]
	mov	edx, dword ptr [ebp + 8]
	mov	esi, edx
	inc	esi
	mov	dword ptr [ebp + 8], esi
	movsx	esi, byte ptr [edx]
	add	esi, -48
	mov	edx, esi
	sar	edx, 31
	sub	ecx, esi
	sbb	eax, edx
	mov	dword ptr [esp + 24], ecx
	mov	dword ptr [esp + 28], eax
	jmp	.LBB47_8
.LBB47_10:
	cmp	dword ptr [esp + 20], 0
	je	.LBB47_12
# %bb.11:
	mov	eax, dword ptr [.L__profc_atoll+48]
	add	eax, 1
	adc	dword ptr [.L__profc_atoll+52], 0
	mov	dword ptr [.L__profc_atoll+48], eax
	mov	ecx, dword ptr [esp + 24]
	mov	eax, dword ptr [esp + 28]
	mov	dword ptr [esp + 4], ecx        # 4-byte Spill
	mov	dword ptr [esp + 8], eax        # 4-byte Spill
	jmp	.LBB47_13
.LBB47_12:
	mov	ecx, dword ptr [esp + 24]
	mov	edx, dword ptr [esp + 28]
	xor	eax, eax
	neg	ecx
	sbb	eax, edx
	mov	dword ptr [esp + 4], ecx        # 4-byte Spill
	mov	dword ptr [esp + 8], eax        # 4-byte Spill
	jmp	.LBB47_13
.LBB47_13:
	mov	eax, dword ptr [esp + 4]        # 4-byte Reload
	mov	edx, dword ptr [esp + 8]        # 4-byte Reload
	lea	esp, [ebp - 4]
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
	.cfi_endproc
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	4, 0x90
	.type	bsearch,@function
bsearch:                                # @bsearch
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 24]
	mov	eax, dword ptr [ebp + 20]
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_bsearch]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch+4], 0
	mov	dword ptr [.L__profc_bsearch], eax
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	jbe	.LBB48_9
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	mov	eax, dword ptr [.L__profc_bsearch+8]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch+12], 0
	mov	dword ptr [.L__profc_bsearch+8], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp + 20]
	mov	edx, dword ptr [ebp + 16]
	shr	edx
	imul	ecx, edx
	add	eax, ecx
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 24]
	mov	edx, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 8]
	mov	dword ptr [esp], edx
	mov	dword ptr [esp + 4], ecx
	call	eax
	mov	dword ptr [ebp - 12], eax
	cmp	dword ptr [ebp - 12], 0
	jge	.LBB48_4
# %bb.3:                                #   in Loop: Header=BB48_1 Depth=1
	mov	eax, dword ptr [.L__profc_bsearch+16]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch+20], 0
	mov	dword ptr [.L__profc_bsearch+16], eax
	mov	eax, dword ptr [ebp + 16]
	shr	eax
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB48_8
.LBB48_4:                               #   in Loop: Header=BB48_1 Depth=1
	cmp	dword ptr [ebp - 12], 0
	jle	.LBB48_6
# %bb.5:                                #   in Loop: Header=BB48_1 Depth=1
	mov	eax, dword ptr [.L__profc_bsearch+24]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch+28], 0
	mov	dword ptr [.L__profc_bsearch+24], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, dword ptr [ebp + 20]
	mov	dword ptr [ebp + 12], eax
	mov	ecx, dword ptr [ebp + 16]
	shr	ecx
	add	ecx, 1
	mov	eax, dword ptr [ebp + 16]
	sub	eax, ecx
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB48_7
.LBB48_6:
	mov	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB48_10
.LBB48_7:                               #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_8
.LBB48_8:                               #   in Loop: Header=BB48_1 Depth=1
	jmp	.LBB48_1
.LBB48_9:
	mov	dword ptr [ebp - 4], 0
.LBB48_10:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
	.cfi_endproc
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	4, 0x90
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 32
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 28]
	mov	eax, dword ptr [ebp + 24]
	mov	eax, dword ptr [ebp + 20]
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_bsearch_r]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch_r+4], 0
	mov	dword ptr [.L__profc_bsearch_r], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
	mov	dword ptr [ebp - 16], eax
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 16], 0
	je	.LBB49_8
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	mov	eax, dword ptr [.L__profc_bsearch_r+8]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch_r+12], 0
	mov	dword ptr [.L__profc_bsearch_r+8], eax
	mov	eax, dword ptr [ebp - 12]
	mov	ecx, dword ptr [ebp - 16]
	sar	ecx
	imul	ecx, dword ptr [ebp + 20]
	add	eax, ecx
	mov	dword ptr [ebp - 24], eax
	mov	eax, dword ptr [ebp + 24]
	mov	esi, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp - 24]
	mov	ecx, dword ptr [ebp + 28]
	mov	dword ptr [esp], esi
	mov	dword ptr [esp + 4], edx
	mov	dword ptr [esp + 8], ecx
	call	eax
	mov	dword ptr [ebp - 20], eax
	cmp	dword ptr [ebp - 20], 0
	jne	.LBB49_4
# %bb.3:
	mov	eax, dword ptr [.L__profc_bsearch_r+16]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch_r+20], 0
	mov	dword ptr [.L__profc_bsearch_r+16], eax
	mov	eax, dword ptr [ebp - 24]
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	cmp	dword ptr [ebp - 20], 0
	jle	.LBB49_6
# %bb.5:                                #   in Loop: Header=BB49_1 Depth=1
	mov	eax, dword ptr [.L__profc_bsearch_r+24]
	add	eax, 1
	adc	dword ptr [.L__profc_bsearch_r+28], 0
	mov	dword ptr [.L__profc_bsearch_r+24], eax
	mov	eax, dword ptr [ebp - 24]
	add	eax, dword ptr [ebp + 20]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp - 16]
	add	eax, -1
	mov	dword ptr [ebp - 16], eax
.LBB49_6:                               #   in Loop: Header=BB49_1 Depth=1
	jmp	.LBB49_7
.LBB49_7:                               #   in Loop: Header=BB49_1 Depth=1
	mov	eax, dword ptr [ebp - 16]
	sar	eax
	mov	dword ptr [ebp - 16], eax
	jmp	.LBB49_1
.LBB49_8:
	mov	dword ptr [ebp - 8], 0
.LBB49_9:
	mov	eax, dword ptr [ebp - 8]
	add	esp, 32
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
	.cfi_endproc
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	4, 0x90
	.type	div,@function
div:                                    # @div
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, ecx
	mov	dword ptr [ebp - 4], eax        # 4-byte Spill
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [.L__profc_div]
	add	eax, 1
	adc	dword ptr [.L__profc_div+4], 0
	mov	dword ptr [.L__profc_div], eax
	mov	eax, dword ptr [ebp + 12]
	cdq
	idiv	dword ptr [ebp + 16]
	mov	dword ptr [ecx], eax
	mov	eax, dword ptr [ebp + 12]
	cdq
	idiv	dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp - 4]        # 4-byte Reload
	mov	dword ptr [ecx + 4], edx
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	ret	4
	int3
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
	.cfi_endproc
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	4, 0x90
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 16
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 8], ecx
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [.L__profc_imaxabs]
	add	eax, 1
	adc	dword ptr [.L__profc_imaxabs+4], 0
	mov	dword ptr [.L__profc_imaxabs], eax
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	sub	ecx, 1
	sbb	eax, 0
	jl	.LBB51_2
	jmp	.LBB51_1
.LBB51_1:
	mov	eax, dword ptr [.L__profc_imaxabs+8]
	add	eax, 1
	adc	dword ptr [.L__profc_imaxabs+12], 0
	mov	dword ptr [.L__profc_imaxabs+8], eax
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	mov	dword ptr [esp], ecx            # 4-byte Spill
	mov	dword ptr [esp + 4], eax        # 4-byte Spill
	jmp	.LBB51_3
.LBB51_2:
	mov	ecx, dword ptr [esp + 8]
	mov	edx, dword ptr [esp + 12]
	xor	eax, eax
	neg	ecx
	sbb	eax, edx
	mov	dword ptr [esp], ecx            # 4-byte Spill
	mov	dword ptr [esp + 4], eax        # 4-byte Spill
	jmp	.LBB51_3
.LBB51_3:
	mov	eax, dword ptr [esp]            # 4-byte Reload
	mov	edx, dword ptr [esp + 4]        # 4-byte Reload
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
	.cfi_endproc
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	4, 0x90
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	edi
	push	esi
	and	esp, -8
	sub	esp, 48
	.cfi_offset esi, -16
	.cfi_offset edi, -12
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [esp + 20], eax       # 4-byte Spill
	mov	dword ptr [esp + 24], eax       # 4-byte Spill
	mov	eax, dword ptr [ebp + 20]
	mov	ecx, dword ptr [ebp + 24]
	mov	esi, dword ptr [ebp + 12]
	mov	edx, dword ptr [ebp + 16]
	mov	dword ptr [esp + 40], esi
	mov	dword ptr [esp + 44], edx
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
	mov	eax, dword ptr [.L__profc_imaxdiv]
	add	eax, 1
	adc	dword ptr [.L__profc_imaxdiv+4], 0
	mov	dword ptr [.L__profc_imaxdiv], eax
	mov	ecx, dword ptr [esp + 40]
	mov	edx, dword ptr [esp + 44]
	mov	esi, dword ptr [esp + 32]
	mov	edi, dword ptr [esp + 36]
	mov	eax, esp
	mov	dword ptr [eax + 12], edi
	mov	dword ptr [eax + 8], esi
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	__divdi3
	mov	ecx, eax
	mov	eax, dword ptr [esp + 20]       # 4-byte Reload
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	mov	ecx, dword ptr [esp + 40]
	mov	edx, dword ptr [esp + 44]
	mov	esi, dword ptr [esp + 32]
	mov	edi, dword ptr [esp + 36]
	mov	eax, esp
	mov	dword ptr [eax + 12], edi
	mov	dword ptr [eax + 8], esi
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	__moddi3
	mov	ecx, dword ptr [esp + 20]       # 4-byte Reload
	mov	esi, eax
	mov	eax, dword ptr [esp + 24]       # 4-byte Reload
	mov	dword ptr [esp + 28], esi       # 4-byte Spill
	mov	esi, edx
	mov	edx, dword ptr [esp + 28]       # 4-byte Reload
	mov	dword ptr [ecx + 12], esi
	mov	dword ptr [ecx + 8], edx
	lea	esp, [ebp - 8]
	pop	esi
	pop	edi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	ret	4
	int3
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
	.cfi_endproc
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	4, 0x90
	.type	labs,@function
labs:                                   # @labs
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_labs]
	add	eax, 1
	adc	dword ptr [.L__profc_labs+4], 0
	mov	dword ptr [.L__profc_labs], eax
	cmp	dword ptr [ebp + 8], 0
	jle	.LBB53_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_labs+8]
	add	eax, 1
	adc	dword ptr [.L__profc_labs+12], 0
	mov	dword ptr [.L__profc_labs+8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax        # 4-byte Spill
	jmp	.LBB53_3
.LBB53_2:
	xor	eax, eax
	sub	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax        # 4-byte Spill
.LBB53_3:
	mov	eax, dword ptr [ebp - 4]        # 4-byte Reload
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
	.cfi_endproc
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	4, 0x90
	.type	ldiv,@function
ldiv:                                   # @ldiv
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, ecx
	mov	dword ptr [ebp - 4], eax        # 4-byte Spill
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [.L__profc_ldiv]
	add	eax, 1
	adc	dword ptr [.L__profc_ldiv+4], 0
	mov	dword ptr [.L__profc_ldiv], eax
	mov	eax, dword ptr [ebp + 12]
	cdq
	idiv	dword ptr [ebp + 16]
	mov	dword ptr [ecx], eax
	mov	eax, dword ptr [ebp + 12]
	cdq
	idiv	dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp - 4]        # 4-byte Reload
	mov	dword ptr [ecx + 4], edx
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	ret	4
	int3
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
	.cfi_endproc
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	4, 0x90
	.type	llabs,@function
llabs:                                  # @llabs
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 16
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 8], ecx
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [.L__profc_llabs]
	add	eax, 1
	adc	dword ptr [.L__profc_llabs+4], 0
	mov	dword ptr [.L__profc_llabs], eax
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	sub	ecx, 1
	sbb	eax, 0
	jl	.LBB55_2
	jmp	.LBB55_1
.LBB55_1:
	mov	eax, dword ptr [.L__profc_llabs+8]
	add	eax, 1
	adc	dword ptr [.L__profc_llabs+12], 0
	mov	dword ptr [.L__profc_llabs+8], eax
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	mov	dword ptr [esp], ecx            # 4-byte Spill
	mov	dword ptr [esp + 4], eax        # 4-byte Spill
	jmp	.LBB55_3
.LBB55_2:
	mov	ecx, dword ptr [esp + 8]
	mov	edx, dword ptr [esp + 12]
	xor	eax, eax
	neg	ecx
	sbb	eax, edx
	mov	dword ptr [esp], ecx            # 4-byte Spill
	mov	dword ptr [esp + 4], eax        # 4-byte Spill
	jmp	.LBB55_3
.LBB55_3:
	mov	eax, dword ptr [esp]            # 4-byte Reload
	mov	edx, dword ptr [esp + 4]        # 4-byte Reload
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
	.cfi_endproc
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	4, 0x90
	.type	lldiv,@function
lldiv:                                  # @lldiv
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	edi
	push	esi
	and	esp, -8
	sub	esp, 48
	.cfi_offset esi, -16
	.cfi_offset edi, -12
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [esp + 20], eax       # 4-byte Spill
	mov	dword ptr [esp + 24], eax       # 4-byte Spill
	mov	eax, dword ptr [ebp + 20]
	mov	ecx, dword ptr [ebp + 24]
	mov	esi, dword ptr [ebp + 12]
	mov	edx, dword ptr [ebp + 16]
	mov	dword ptr [esp + 40], esi
	mov	dword ptr [esp + 44], edx
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
	mov	eax, dword ptr [.L__profc_lldiv]
	add	eax, 1
	adc	dword ptr [.L__profc_lldiv+4], 0
	mov	dword ptr [.L__profc_lldiv], eax
	mov	ecx, dword ptr [esp + 40]
	mov	edx, dword ptr [esp + 44]
	mov	esi, dword ptr [esp + 32]
	mov	edi, dword ptr [esp + 36]
	mov	eax, esp
	mov	dword ptr [eax + 12], edi
	mov	dword ptr [eax + 8], esi
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	__divdi3
	mov	ecx, eax
	mov	eax, dword ptr [esp + 20]       # 4-byte Reload
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	mov	ecx, dword ptr [esp + 40]
	mov	edx, dword ptr [esp + 44]
	mov	esi, dword ptr [esp + 32]
	mov	edi, dword ptr [esp + 36]
	mov	eax, esp
	mov	dword ptr [eax + 12], edi
	mov	dword ptr [eax + 8], esi
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	__moddi3
	mov	ecx, dword ptr [esp + 20]       # 4-byte Reload
	mov	esi, eax
	mov	eax, dword ptr [esp + 24]       # 4-byte Reload
	mov	dword ptr [esp + 28], esi       # 4-byte Spill
	mov	esi, edx
	mov	edx, dword ptr [esp + 28]       # 4-byte Reload
	mov	dword ptr [ecx + 12], esi
	mov	dword ptr [ecx + 8], edx
	lea	esp, [ebp - 8]
	pop	esi
	pop	edi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	ret	4
	int3
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
	.cfi_endproc
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	4, 0x90
	.type	wcschr,@function
wcschr:                                 # @wcschr
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wcschr]
	add	eax, 1
	adc	dword ptr [.L__profc_wcschr+4], 0
	mov	dword ptr [.L__profc_wcschr], eax
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ecx], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB57_4
# %bb.2:                                #   in Loop: Header=BB57_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcschr+16]
	add	eax, 1
	adc	dword ptr [.L__profc_wcschr+20], 0
	mov	dword ptr [.L__profc_wcschr+16], eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB57_3
	jmp	.LBB57_4
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_wcschr+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_wcschr+28], 0
	mov	dword ptr [.L__profc_wcschr+24], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB57_5
	jmp	.LBB57_7
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcschr+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wcschr+12], 0
	mov	dword ptr [.L__profc_wcschr+8], eax
# %bb.6:                                #   in Loop: Header=BB57_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB57_1
.LBB57_7:
	mov	eax, dword ptr [ebp + 8]
	cmp	dword ptr [eax], 0
	je	.LBB57_9
# %bb.8:
	mov	eax, dword ptr [.L__profc_wcschr+32]
	add	eax, 1
	adc	dword ptr [.L__profc_wcschr+36], 0
	mov	dword ptr [.L__profc_wcschr+32], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB57_10
.LBB57_9:
	xor	eax, eax
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB57_10
.LBB57_10:
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
	.cfi_endproc
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	4, 0x90
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wcscmp]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscmp+4], 0
	mov	dword ptr [.L__profc_wcscmp], eax
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax]
	mov	edx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [edx]
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB58_6
# %bb.2:                                #   in Loop: Header=BB58_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcscmp+32]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscmp+36], 0
	mov	dword ptr [.L__profc_wcscmp+32], eax
	mov	ecx, dword ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ecx], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB58_6
# %bb.3:                                #   in Loop: Header=BB58_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcscmp+40]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscmp+44], 0
	mov	dword ptr [.L__profc_wcscmp+40], eax
# %bb.4:                                #   in Loop: Header=BB58_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcscmp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscmp+20], 0
	mov	dword ptr [.L__profc_wcscmp+16], eax
	mov	eax, dword ptr [ebp + 12]
	cmp	dword ptr [eax], 0
	setne	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB58_5
	jmp	.LBB58_6
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_wcscmp+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_wcscmp+28], 0
	mov	dword ptr [.L__profc_wcscmp+24], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB58_7
	jmp	.LBB58_9
.LBB58_7:                               #   in Loop: Header=BB58_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcscmp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscmp+12], 0
	mov	dword ptr [.L__profc_wcscmp+8], eax
# %bb.8:                                #   in Loop: Header=BB58_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, 4
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB58_1
.LBB58_9:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	jge	.LBB58_11
# %bb.10:
	mov	eax, dword ptr [.L__profc_wcscmp+48]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscmp+52], 0
	mov	dword ptr [.L__profc_wcscmp+48], eax
	mov	eax, 4294967295
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB58_12
.LBB58_11:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
.LBB58_12:
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
	.cfi_endproc
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	4, 0x90
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wcscpy]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscpy+4], 0
	mov	dword ptr [.L__profc_wcscpy], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, eax
	add	ecx, 4
	mov	dword ptr [ebp + 12], ecx
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, ecx
	add	edx, 4
	mov	dword ptr [ebp + 8], edx
	mov	dword ptr [ecx], eax
	cmp	eax, 0
	je	.LBB59_3
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcscpy+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wcscpy+12], 0
	mov	dword ptr [.L__profc_wcscpy+8], eax
	jmp	.LBB59_1
.LBB59_3:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
	.cfi_endproc
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	4, 0x90
	.type	wcslen,@function
wcslen:                                 # @wcslen
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wcslen]
	add	eax, 1
	adc	dword ptr [.L__profc_wcslen+4], 0
	mov	dword ptr [.L__profc_wcslen], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	cmp	dword ptr [eax], 0
	je	.LBB60_4
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcslen+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wcslen+12], 0
	mov	dword ptr [.L__profc_wcslen+8], eax
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB60_1
.LBB60_4:
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	sub	eax, ecx
	sar	eax, 2
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
	.cfi_endproc
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	4, 0x90
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 12
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wcsncmp]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+4], 0
	mov	dword ptr [.L__profc_wcsncmp], eax
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB61_8
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcsncmp+48]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+52], 0
	mov	dword ptr [.L__profc_wcsncmp+48], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax]
	mov	edx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [edx]
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB61_8
# %bb.3:                                #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcsncmp+56]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+60], 0
	mov	dword ptr [.L__profc_wcsncmp+56], eax
# %bb.4:                                #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcsncmp+32]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+36], 0
	mov	dword ptr [.L__profc_wcsncmp+32], eax
	mov	ecx, dword ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ecx], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB61_8
# %bb.5:                                #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcsncmp+40]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+44], 0
	mov	dword ptr [.L__profc_wcsncmp+40], eax
# %bb.6:                                #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcsncmp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+20], 0
	mov	dword ptr [.L__profc_wcsncmp+16], eax
	mov	eax, dword ptr [ebp + 12]
	cmp	dword ptr [eax], 0
	setne	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB61_7
	jmp	.LBB61_8
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_wcsncmp+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_wcsncmp+28], 0
	mov	dword ptr [.L__profc_wcsncmp+24], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB61_8:                               #   in Loop: Header=BB61_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB61_9
	jmp	.LBB61_11
.LBB61_9:                               #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [.L__profc_wcsncmp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+12], 0
	mov	dword ptr [.L__profc_wcsncmp+8], eax
# %bb.10:                               #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, 4
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB61_1
.LBB61_11:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB61_16
# %bb.12:
	mov	eax, dword ptr [.L__profc_wcsncmp+64]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+68], 0
	mov	dword ptr [.L__profc_wcsncmp+64], eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	jge	.LBB61_14
# %bb.13:
	mov	eax, dword ptr [.L__profc_wcsncmp+72]
	add	eax, 1
	adc	dword ptr [.L__profc_wcsncmp+76], 0
	mov	dword ptr [.L__profc_wcsncmp+72], eax
	mov	eax, 4294967295
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB61_15
.LBB61_14:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
.LBB61_15:
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB61_17
.LBB61_16:
	xor	eax, eax
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB61_17
.LBB61_17:
	mov	eax, dword ptr [ebp - 12]       # 4-byte Reload
	add	esp, 12
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
	.cfi_endproc
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	4, 0x90
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wmemchr]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemchr+4], 0
	mov	dword ptr [.L__profc_wmemchr], eax
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB62_4
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	mov	eax, dword ptr [.L__profc_wmemchr+16]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemchr+20], 0
	mov	dword ptr [.L__profc_wmemchr+16], eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB62_3
	jmp	.LBB62_4
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_wmemchr+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_wmemchr+28], 0
	mov	dword ptr [.L__profc_wmemchr+24], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB62_5
	jmp	.LBB62_7
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
	mov	eax, dword ptr [.L__profc_wmemchr+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemchr+12], 0
	mov	dword ptr [.L__profc_wmemchr+8], eax
# %bb.6:                                #   in Loop: Header=BB62_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB62_1
.LBB62_7:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB62_9
# %bb.8:
	mov	eax, dword ptr [.L__profc_wmemchr+32]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemchr+36], 0
	mov	dword ptr [.L__profc_wmemchr+32], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB62_10
.LBB62_9:
	xor	eax, eax
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB62_10
.LBB62_10:
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
	.cfi_endproc
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	4, 0x90
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 12
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wmemcmp]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemcmp+4], 0
	mov	dword ptr [.L__profc_wmemcmp], eax
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB63_4
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	mov	eax, dword ptr [.L__profc_wmemcmp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemcmp+20], 0
	mov	dword ptr [.L__profc_wmemcmp+16], eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	sete	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB63_3
	jmp	.LBB63_4
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_wmemcmp+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_wmemcmp+28], 0
	mov	dword ptr [.L__profc_wmemcmp+24], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB63_5
	jmp	.LBB63_7
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	mov	eax, dword ptr [.L__profc_wmemcmp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemcmp+12], 0
	mov	dword ptr [.L__profc_wmemcmp+8], eax
# %bb.6:                                #   in Loop: Header=BB63_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, 4
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB63_1
.LBB63_7:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB63_12
# %bb.8:
	mov	eax, dword ptr [.L__profc_wmemcmp+32]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemcmp+36], 0
	mov	dword ptr [.L__profc_wmemcmp+32], eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	jge	.LBB63_10
# %bb.9:
	mov	eax, dword ptr [.L__profc_wmemcmp+40]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemcmp+44], 0
	mov	dword ptr [.L__profc_wmemcmp+40], eax
	mov	eax, 4294967295
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB63_11
.LBB63_10:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
.LBB63_11:
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB63_13
.LBB63_12:
	xor	eax, eax
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB63_13
.LBB63_13:
	mov	eax, dword ptr [ebp - 12]       # 4-byte Reload
	add	esp, 12
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
	.cfi_endproc
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	4, 0x90
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wmemcpy]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemcpy+4], 0
	mov	dword ptr [.L__profc_wmemcpy], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	je	.LBB64_3
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	mov	eax, dword ptr [.L__profc_wmemcpy+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemcpy+12], 0
	mov	dword ptr [.L__profc_wmemcpy+8], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, eax
	add	ecx, 4
	mov	dword ptr [ebp + 12], ecx
	mov	ecx, dword ptr [eax]
	mov	eax, dword ptr [ebp + 8]
	mov	edx, eax
	add	edx, 4
	mov	dword ptr [ebp + 8], edx
	mov	dword ptr [eax], ecx
	jmp	.LBB64_1
.LBB64_3:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
	.cfi_endproc
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	4, 0x90
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wmemmove]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemmove+4], 0
	mov	dword ptr [.L__profc_wmemmove], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB65_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_wmemmove+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemmove+12], 0
	mov	dword ptr [.L__profc_wmemmove+8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB65_12
.LBB65_2:
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
	sub	eax, ecx
	mov	ecx, dword ptr [ebp + 16]
	shl	ecx, 2
	cmp	eax, ecx
	jae	.LBB65_7
# %bb.3:
	mov	eax, dword ptr [.L__profc_wmemmove+16]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemmove+20], 0
	mov	dword ptr [.L__profc_wmemmove+16], eax
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	je	.LBB65_6
# %bb.5:                                #   in Loop: Header=BB65_4 Depth=1
	mov	eax, dword ptr [.L__profc_wmemmove+24]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemmove+28], 0
	mov	dword ptr [.L__profc_wmemmove+24], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp + 16]
	mov	edx, dword ptr [eax + 4*ecx]
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 16]
	mov	dword ptr [eax + 4*ecx], edx
	jmp	.LBB65_4
.LBB65_6:
	jmp	.LBB65_11
.LBB65_7:
	jmp	.LBB65_8
.LBB65_8:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	je	.LBB65_10
# %bb.9:                                #   in Loop: Header=BB65_8 Depth=1
	mov	eax, dword ptr [.L__profc_wmemmove+32]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemmove+36], 0
	mov	dword ptr [.L__profc_wmemmove+32], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, eax
	add	ecx, 4
	mov	dword ptr [ebp + 12], ecx
	mov	ecx, dword ptr [eax]
	mov	eax, dword ptr [ebp + 8]
	mov	edx, eax
	add	edx, 4
	mov	dword ptr [ebp + 8], edx
	mov	dword ptr [eax], ecx
	jmp	.LBB65_8
.LBB65_10:
	jmp	.LBB65_11
.LBB65_11:
	mov	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 4], eax
.LBB65_12:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
	.cfi_endproc
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	4, 0x90
	.type	wmemset,@function
wmemset:                                # @wmemset
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_wmemset]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemset+4], 0
	mov	dword ptr [.L__profc_wmemset], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	je	.LBB66_3
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	mov	eax, dword ptr [.L__profc_wmemset+8]
	add	eax, 1
	adc	dword ptr [.L__profc_wmemset+12], 0
	mov	dword ptr [.L__profc_wmemset+8], eax
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	edx, eax
	add	edx, 4
	mov	dword ptr [ebp + 8], edx
	mov	dword ptr [eax], ecx
	jmp	.LBB66_1
.LBB66_3:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
	.cfi_endproc
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	4, 0x90
	.type	bcopy,@function
bcopy:                                  # @bcopy
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_bcopy]
	add	eax, 1
	adc	dword ptr [.L__profc_bcopy+4], 0
	mov	dword ptr [.L__profc_bcopy], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 4]
	cmp	eax, dword ptr [ebp - 8]
	jae	.LBB67_6
# %bb.1:
	mov	eax, dword ptr [.L__profc_bcopy+8]
	add	eax, 1
	adc	dword ptr [.L__profc_bcopy+12], 0
	mov	dword ptr [.L__profc_bcopy+8], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 8], eax
.LBB67_2:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB67_5
# %bb.3:                                #   in Loop: Header=BB67_2 Depth=1
	mov	eax, dword ptr [.L__profc_bcopy+16]
	add	eax, 1
	adc	dword ptr [.L__profc_bcopy+20], 0
	mov	dword ptr [.L__profc_bcopy+16], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp - 4], ecx
	mov	cl, byte ptr [eax - 1]
	mov	eax, dword ptr [ebp - 8]
	mov	edx, eax
	add	edx, -1
	mov	dword ptr [ebp - 8], edx
	mov	byte ptr [eax - 1], cl
# %bb.4:                                #   in Loop: Header=BB67_2 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB67_2
.LBB67_5:
	jmp	.LBB67_13
.LBB67_6:
	mov	eax, dword ptr [ebp - 4]
	cmp	eax, dword ptr [ebp - 8]
	je	.LBB67_12
# %bb.7:
	mov	eax, dword ptr [.L__profc_bcopy+24]
	add	eax, 1
	adc	dword ptr [.L__profc_bcopy+28], 0
	mov	dword ptr [.L__profc_bcopy+24], eax
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB67_11
# %bb.9:                                #   in Loop: Header=BB67_8 Depth=1
	mov	eax, dword ptr [.L__profc_bcopy+32]
	add	eax, 1
	adc	dword ptr [.L__profc_bcopy+36], 0
	mov	dword ptr [.L__profc_bcopy+32], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp - 4], ecx
	mov	cl, byte ptr [eax]
	mov	eax, dword ptr [ebp - 8]
	mov	edx, eax
	add	edx, 1
	mov	dword ptr [ebp - 8], edx
	mov	byte ptr [eax], cl
# %bb.10:                               #   in Loop: Header=BB67_8 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB67_8
.LBB67_11:
	jmp	.LBB67_12
.LBB67_12:
	jmp	.LBB67_13
.LBB67_13:
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
	.cfi_endproc
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	4, 0x90
	.type	rotl64,@function
rotl64:                                 # @rotl64
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	ebx
	push	edi
	push	esi
	and	esp, -8
	sub	esp, 72
	.cfi_offset esi, -20
	.cfi_offset edi, -16
	.cfi_offset ebx, -12
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	edx, dword ptr [ebp + 16]
	mov	dword ptr [esp + 56], ecx
	mov	dword ptr [esp + 60], eax
	mov	eax, dword ptr [.L__profc_rotl64]
	add	eax, 1
	adc	dword ptr [.L__profc_rotl64+4], 0
	mov	dword ptr [.L__profc_rotl64], eax
	mov	esi, dword ptr [esp + 56]
	mov	dword ptr [esp + 24], esi       # 4-byte Spill
	mov	eax, dword ptr [esp + 60]
	mov	dword ptr [esp + 28], eax       # 4-byte Spill
	mov	dl, byte ptr [ebp + 16]
	mov	byte ptr [esp + 35], dl         # 1-byte Spill
	mov	cl, dl
	mov	edi, esi
	shl	edi, cl
	mov	dword ptr [esp + 36], edi       # 4-byte Spill
	mov	cl, dl
	shld	eax, esi, cl
	mov	ecx, dword ptr [esp + 36]       # 4-byte Reload
	mov	dword ptr [esp + 40], eax       # 4-byte Spill
	xor	eax, eax
	mov	dword ptr [esp + 44], eax       # 4-byte Spill
	test	dl, 32
	mov	dword ptr [esp + 48], ecx       # 4-byte Spill
	mov	dword ptr [esp + 52], eax       # 4-byte Spill
	jne	.LBB68_2
# %bb.1:
	mov	eax, dword ptr [esp + 36]       # 4-byte Reload
	mov	ecx, dword ptr [esp + 40]       # 4-byte Reload
	mov	dword ptr [esp + 48], ecx       # 4-byte Spill
	mov	dword ptr [esp + 52], eax       # 4-byte Spill
.LBB68_2:
	mov	eax, dword ptr [esp + 44]       # 4-byte Reload
	mov	edi, dword ptr [esp + 28]       # 4-byte Reload
	mov	esi, dword ptr [esp + 24]       # 4-byte Reload
	mov	cl, byte ptr [esp + 35]         # 1-byte Reload
	mov	edx, dword ptr [esp + 48]       # 4-byte Reload
	mov	ebx, dword ptr [esp + 52]       # 4-byte Reload
	mov	dword ptr [esp], ebx            # 4-byte Spill
	mov	dword ptr [esp + 4], edx        # 4-byte Spill
	mov	dl, 64
	sub	dl, cl
	mov	cl, dl
	mov	ebx, edi
	shr	ebx, cl
	mov	dword ptr [esp + 8], ebx        # 4-byte Spill
	mov	cl, dl
	shrd	esi, edi, cl
	mov	ecx, dword ptr [esp + 8]        # 4-byte Reload
	mov	dword ptr [esp + 12], esi       # 4-byte Spill
	test	dl, 32
	mov	dword ptr [esp + 16], ecx       # 4-byte Spill
	mov	dword ptr [esp + 20], eax       # 4-byte Spill
	jne	.LBB68_4
# %bb.3:
	mov	eax, dword ptr [esp + 8]        # 4-byte Reload
	mov	ecx, dword ptr [esp + 12]       # 4-byte Reload
	mov	dword ptr [esp + 16], ecx       # 4-byte Spill
	mov	dword ptr [esp + 20], eax       # 4-byte Spill
.LBB68_4:
	mov	edx, dword ptr [esp + 4]        # 4-byte Reload
	mov	eax, dword ptr [esp]            # 4-byte Reload
	mov	esi, dword ptr [esp + 16]       # 4-byte Reload
	mov	ecx, dword ptr [esp + 20]       # 4-byte Reload
	or	eax, esi
	or	edx, ecx
	lea	esp, [ebp - 12]
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
	.cfi_endproc
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	4, 0x90
	.type	rotr64,@function
rotr64:                                 # @rotr64
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	ebx
	push	edi
	push	esi
	and	esp, -8
	sub	esp, 72
	.cfi_offset esi, -20
	.cfi_offset edi, -16
	.cfi_offset ebx, -12
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	edx, dword ptr [ebp + 16]
	mov	dword ptr [esp + 56], ecx
	mov	dword ptr [esp + 60], eax
	mov	eax, dword ptr [.L__profc_rotr64]
	add	eax, 1
	adc	dword ptr [.L__profc_rotr64+4], 0
	mov	dword ptr [.L__profc_rotr64], eax
	mov	eax, dword ptr [esp + 56]
	mov	dword ptr [esp + 24], eax       # 4-byte Spill
	mov	esi, dword ptr [esp + 60]
	mov	dword ptr [esp + 28], esi       # 4-byte Spill
	mov	dl, byte ptr [ebp + 16]
	mov	byte ptr [esp + 35], dl         # 1-byte Spill
	mov	cl, dl
	mov	edi, esi
	shr	edi, cl
	mov	dword ptr [esp + 36], edi       # 4-byte Spill
	mov	cl, dl
	shrd	eax, esi, cl
	mov	ecx, dword ptr [esp + 36]       # 4-byte Reload
	mov	dword ptr [esp + 40], eax       # 4-byte Spill
	xor	eax, eax
	mov	dword ptr [esp + 44], eax       # 4-byte Spill
	test	dl, 32
	mov	dword ptr [esp + 48], ecx       # 4-byte Spill
	mov	dword ptr [esp + 52], eax       # 4-byte Spill
	jne	.LBB69_2
# %bb.1:
	mov	eax, dword ptr [esp + 36]       # 4-byte Reload
	mov	ecx, dword ptr [esp + 40]       # 4-byte Reload
	mov	dword ptr [esp + 48], ecx       # 4-byte Spill
	mov	dword ptr [esp + 52], eax       # 4-byte Spill
.LBB69_2:
	mov	eax, dword ptr [esp + 44]       # 4-byte Reload
	mov	edi, dword ptr [esp + 24]       # 4-byte Reload
	mov	esi, dword ptr [esp + 28]       # 4-byte Reload
	mov	cl, byte ptr [esp + 35]         # 1-byte Reload
	mov	edx, dword ptr [esp + 48]       # 4-byte Reload
	mov	ebx, dword ptr [esp + 52]       # 4-byte Reload
	mov	dword ptr [esp], ebx            # 4-byte Spill
	mov	dword ptr [esp + 4], edx        # 4-byte Spill
	mov	dl, 64
	sub	dl, cl
	mov	cl, dl
	mov	ebx, edi
	shl	ebx, cl
	mov	dword ptr [esp + 8], ebx        # 4-byte Spill
	mov	cl, dl
	shld	esi, edi, cl
	mov	ecx, dword ptr [esp + 8]        # 4-byte Reload
	mov	dword ptr [esp + 12], esi       # 4-byte Spill
	test	dl, 32
	mov	dword ptr [esp + 16], ecx       # 4-byte Spill
	mov	dword ptr [esp + 20], eax       # 4-byte Spill
	jne	.LBB69_4
# %bb.3:
	mov	eax, dword ptr [esp + 8]        # 4-byte Reload
	mov	ecx, dword ptr [esp + 12]       # 4-byte Reload
	mov	dword ptr [esp + 16], ecx       # 4-byte Spill
	mov	dword ptr [esp + 20], eax       # 4-byte Spill
.LBB69_4:
	mov	edx, dword ptr [esp]            # 4-byte Reload
	mov	eax, dword ptr [esp + 4]        # 4-byte Reload
	mov	ecx, dword ptr [esp + 16]       # 4-byte Reload
	mov	esi, dword ptr [esp + 20]       # 4-byte Reload
	or	eax, esi
	or	edx, ecx
	lea	esp, [ebp - 12]
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
	.cfi_endproc
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	4, 0x90
	.type	rotl32,@function
rotl32:                                 # @rotl32
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotl32]
	add	eax, 1
	adc	dword ptr [.L__profc_rotl32+4], 0
	mov	dword ptr [.L__profc_rotl32], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [ebp + 8]
	mov	ecx, 32
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, -1
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
	.cfi_endproc
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	4, 0x90
	.type	rotr32,@function
rotr32:                                 # @rotr32
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotr32]
	add	eax, 1
	adc	dword ptr [.L__profc_rotr32+4], 0
	mov	dword ptr [.L__profc_rotr32], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	edx, dword ptr [ebp + 8]
	mov	ecx, 32
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, -1
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
	.cfi_endproc
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	4, 0x90
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotl_sz]
	add	eax, 1
	adc	dword ptr [.L__profc_rotl_sz+4], 0
	mov	dword ptr [.L__profc_rotl_sz], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [ebp + 8]
	mov	ecx, 32
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, -1
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
	.cfi_endproc
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	4, 0x90
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotr_sz]
	add	eax, 1
	adc	dword ptr [.L__profc_rotr_sz+4], 0
	mov	dword ptr [.L__profc_rotr_sz], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	edx, dword ptr [ebp + 8]
	mov	ecx, 32
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, -1
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
	.cfi_endproc
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	4, 0x90
	.type	rotl16,@function
rotl16:                                 # @rotl16
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotl16]
	add	eax, 1
	adc	dword ptr [.L__profc_rotl16+4], 0
	mov	dword ptr [.L__profc_rotl16], eax
	movzx	eax, word ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	movzx	edx, word ptr [ebp + 8]
	mov	ecx, 16
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 65535
                                        # kill: def $ax killed $ax killed $eax
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
	.cfi_endproc
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	4, 0x90
	.type	rotr16,@function
rotr16:                                 # @rotr16
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotr16]
	add	eax, 1
	adc	dword ptr [.L__profc_rotr16+4], 0
	mov	dword ptr [.L__profc_rotr16], eax
	movzx	eax, word ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	movzx	edx, word ptr [ebp + 8]
	mov	ecx, 16
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 65535
                                        # kill: def $ax killed $ax killed $eax
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
	.cfi_endproc
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	4, 0x90
	.type	rotl8,@function
rotl8:                                  # @rotl8
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	al, byte ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotl8]
	add	eax, 1
	adc	dword ptr [.L__profc_rotl8+4], 0
	mov	dword ptr [.L__profc_rotl8], eax
	movzx	eax, byte ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	movzx	edx, byte ptr [ebp + 8]
	mov	ecx, 8
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 255
                                        # kill: def $al killed $al killed $eax
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
	.cfi_endproc
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	4, 0x90
	.type	rotr8,@function
rotr8:                                  # @rotr8
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	al, byte ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_rotr8]
	add	eax, 1
	adc	dword ptr [.L__profc_rotr8+4], 0
	mov	dword ptr [.L__profc_rotr8], eax
	movzx	eax, byte ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	movzx	edx, byte ptr [ebp + 8]
	mov	ecx, 8
	sub	ecx, dword ptr [ebp + 12]
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	or	eax, ecx
	and	eax, 255
                                        # kill: def $al killed $al killed $eax
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
	.cfi_endproc
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	4, 0x90
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_bswap_16]
	add	eax, 1
	adc	dword ptr [.L__profc_bswap_16+4], 0
	mov	dword ptr [.L__profc_bswap_16], eax
	mov	word ptr [ebp - 2], 255
	movzx	eax, word ptr [ebp + 8]
	movzx	ecx, word ptr [ebp - 2]
	shl	ecx, 8
	and	eax, ecx
	sar	eax, 8
	movzx	ecx, word ptr [ebp + 8]
	movzx	edx, word ptr [ebp - 2]
	shl	edx, 0
	and	ecx, edx
	shl	ecx, 8
	or	eax, ecx
                                        # kill: def $ax killed $ax killed $eax
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
	.cfi_endproc
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	4, 0x90
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_bswap_32]
	add	eax, 1
	adc	dword ptr [.L__profc_bswap_32+4], 0
	mov	dword ptr [.L__profc_bswap_32], eax
	mov	dword ptr [ebp - 4], 255
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	shl	ecx, 24
	and	eax, ecx
	shr	eax, 24
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp - 4]
	shl	edx, 16
	and	ecx, edx
	shr	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp - 4]
	shl	edx, 8
	and	ecx, edx
	shl	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp - 4]
	shl	edx, 0
	and	ecx, edx
	shl	ecx, 24
	or	eax, ecx
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
	.cfi_endproc
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	4, 0x90
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	ebx
	push	edi
	push	esi
	and	esp, -8
	sub	esp, 48
	.cfi_offset esi, -20
	.cfi_offset edi, -16
	.cfi_offset ebx, -12
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 32], ecx
	mov	dword ptr [esp + 36], eax
	mov	eax, dword ptr [.L__profc_bswap_64]
	add	eax, 1
	adc	dword ptr [.L__profc_bswap_64+4], 0
	mov	dword ptr [.L__profc_bswap_64], eax
	mov	dword ptr [esp + 28], 0
	mov	dword ptr [esp + 24], 255
	mov	eax, dword ptr [esp + 32]
	mov	dword ptr [esp + 12], eax       # 4-byte Spill
	mov	eax, dword ptr [esp + 36]
	mov	dword ptr [esp + 16], eax       # 4-byte Spill
	mov	esi, dword ptr [esp + 24]
	mov	edx, esi
	shl	edx, 24
	mov	ecx, eax
	and	ecx, edx
	shr	ecx, 24
	mov	edi, esi
	shl	edi, 16
	mov	edx, eax
	and	edx, edi
	shr	edx, 8
	or	ecx, edx
	mov	ebx, esi
	shl	ebx, 8
	and	eax, ebx
	mov	edx, eax
	shr	edx, 24
	shl	eax, 8
	or	ecx, eax
	mov	eax, dword ptr [esp + 16]       # 4-byte Reload
	and	eax, esi
	mov	dword ptr [esp + 4], eax        # 4-byte Spill
	shr	eax, 8
	mov	dword ptr [esp + 8], eax        # 4-byte Spill
	mov	eax, dword ptr [esp + 4]        # 4-byte Reload
	shl	eax, 24
	or	ecx, eax
	mov	eax, dword ptr [esp + 8]        # 4-byte Reload
	mov	dword ptr [esp + 20], ecx       # 4-byte Spill
	mov	ecx, dword ptr [esp + 16]       # 4-byte Reload
	or	edx, eax
	mov	eax, dword ptr [esp + 12]       # 4-byte Reload
	shld	ecx, eax, 8
	mov	eax, esi
	and	eax, ecx
	mov	ecx, dword ptr [esp + 12]       # 4-byte Reload
	or	edx, eax
	mov	eax, dword ptr [esp + 16]       # 4-byte Reload
	shld	eax, ecx, 24
	and	ebx, eax
	mov	eax, dword ptr [esp + 20]       # 4-byte Reload
	or	edx, ebx
	mov	ebx, ecx
	shl	ebx, 8
	and	edi, ebx
	or	edx, edi
	and	ecx, esi
	shl	ecx, 24
	or	edx, ecx
	lea	esp, [ebp - 12]
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
	.cfi_endproc
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	4, 0x90
	.type	ffs,@function
ffs:                                    # @ffs
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_ffs]
	add	eax, 1
	adc	dword ptr [.L__profc_ffs+4], 0
	mov	dword ptr [.L__profc_ffs], eax
	mov	dword ptr [ebp - 8], 0
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 32
	jae	.LBB81_6
# %bb.2:                                #   in Loop: Header=BB81_1 Depth=1
	mov	eax, dword ptr [.L__profc_ffs+8]
	add	eax, 1
	adc	dword ptr [.L__profc_ffs+12], 0
	mov	dword ptr [.L__profc_ffs+8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 8]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB81_4
# %bb.3:
	mov	eax, dword ptr [.L__profc_ffs+16]
	add	eax, 1
	adc	dword ptr [.L__profc_ffs+20], 0
	mov	dword ptr [.L__profc_ffs+16], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB81_7
.LBB81_4:                               #   in Loop: Header=BB81_1 Depth=1
	jmp	.LBB81_5
.LBB81_5:                               #   in Loop: Header=BB81_1 Depth=1
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB81_1
.LBB81_6:
	mov	dword ptr [ebp - 4], 0
.LBB81_7:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
	.cfi_endproc
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	4, 0x90
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_libiberty_ffs]
	add	eax, 1
	adc	dword ptr [.L__profc_libiberty_ffs+4], 0
	mov	dword ptr [.L__profc_libiberty_ffs], eax
	cmp	dword ptr [ebp + 8], 0
	jne	.LBB82_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_libiberty_ffs+8]
	add	eax, 1
	adc	dword ptr [.L__profc_libiberty_ffs+12], 0
	mov	dword ptr [.L__profc_libiberty_ffs+8], eax
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB82_7
.LBB82_2:
	mov	dword ptr [ebp - 8], 1
.LBB82_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	and	eax, 1
	cmp	eax, 0
	setne	al
	xor	al, -1
	test	al, 1
	jne	.LBB82_4
	jmp	.LBB82_6
.LBB82_4:                               #   in Loop: Header=BB82_3 Depth=1
	mov	eax, dword ptr [.L__profc_libiberty_ffs+16]
	add	eax, 1
	adc	dword ptr [.L__profc_libiberty_ffs+20], 0
	mov	dword ptr [.L__profc_libiberty_ffs+16], eax
	mov	eax, dword ptr [ebp + 8]
	sar	eax
	mov	dword ptr [ebp + 8], eax
# %bb.5:                                #   in Loop: Header=BB82_3 Depth=1
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB82_3
.LBB82_6:
	mov	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 4], eax
.LBB82_7:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function gl_isinff
.LCPI83_0:
	.long	0xff7fffff                      # float -3.40282347E+38
.LCPI83_1:
	.long	0x7f7fffff                      # float 3.40282347E+38
	.text
	.globl	gl_isinff
	.p2align	4, 0x90
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc_gl_isinff]
	add	eax, 1
	adc	dword ptr [.L__profc_gl_isinff+4], 0
	mov	dword ptr [.L__profc_gl_isinff], eax
	fld	dword ptr [ebp + 8]
	fld	dword ptr [.LCPI83_0]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	mov	al, 1
	sahf
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	ja	.LBB83_3
	jmp	.LBB83_1
.LBB83_1:
	mov	eax, dword ptr [.L__profc_gl_isinff+8]
	add	eax, 1
	adc	dword ptr [.L__profc_gl_isinff+12], 0
	mov	dword ptr [.L__profc_gl_isinff+8], eax
	fld	dword ptr [ebp + 8]
	fld	dword ptr [.LCPI83_1]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	seta	al
	mov	byte ptr [ebp - 2], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB83_3
# %bb.2:
	mov	al, byte ptr [ebp - 2]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_gl_isinff+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_gl_isinff+20], 0
	mov	dword ptr [.L__profc_gl_isinff+16], ecx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB83_3:
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function gl_isinfd
.LCPI84_0:
	.quad	0xffefffffffffffff              # double -1.7976931348623157E+308
.LCPI84_1:
	.quad	0x7fefffffffffffff              # double 1.7976931348623157E+308
	.text
	.globl	gl_isinfd
	.p2align	4, 0x90
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 16
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 8]
	mov	eax, dword ptr [.L__profc_gl_isinfd]
	add	eax, 1
	adc	dword ptr [.L__profc_gl_isinfd+4], 0
	mov	dword ptr [.L__profc_gl_isinfd], eax
	fld	qword ptr [esp + 8]
	fld	qword ptr [.LCPI84_0]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	mov	al, 1
	sahf
	mov	byte ptr [esp + 7], al          # 1-byte Spill
	ja	.LBB84_3
	jmp	.LBB84_1
.LBB84_1:
	mov	eax, dword ptr [.L__profc_gl_isinfd+8]
	add	eax, 1
	adc	dword ptr [.L__profc_gl_isinfd+12], 0
	mov	dword ptr [.L__profc_gl_isinfd+8], eax
	fld	qword ptr [esp + 8]
	fld	qword ptr [.LCPI84_1]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	seta	al
	mov	byte ptr [esp + 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [esp + 7], al          # 1-byte Spill
	jne	.LBB84_3
# %bb.2:
	mov	al, byte ptr [esp + 6]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_gl_isinfd+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_gl_isinfd+20], 0
	mov	dword ptr [.L__profc_gl_isinfd+16], ecx
	mov	byte ptr [esp + 7], al          # 1-byte Spill
.LBB84_3:
	mov	al, byte ptr [esp + 7]          # 1-byte Reload
	and	al, 1
	movzx	eax, al
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
	.cfi_endproc
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0                          # -- Begin function gl_isinfl
.LCPI85_0:
	.quad	0xffffffffffffffff              # x86_fp80 -1.18973149535723176502E+4932
	.short	0xfffe
	.zero	2
.LCPI85_1:
	.quad	0xffffffffffffffff              # x86_fp80 1.18973149535723176502E+4932
	.short	0x7ffe
	.zero	2
	.text
	.globl	gl_isinfl
	.p2align	4, 0x90
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	fld	tbyte ptr [ebp + 8]
	fstp	tbyte ptr [ebp - 12]
	mov	eax, dword ptr [.L__profc_gl_isinfl]
	add	eax, 1
	adc	dword ptr [.L__profc_gl_isinfl+4], 0
	mov	dword ptr [.L__profc_gl_isinfl], eax
	fld	tbyte ptr [ebp - 12]
	fld	tbyte ptr [.LCPI85_0]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	mov	al, 1
	sahf
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	ja	.LBB85_3
	jmp	.LBB85_1
.LBB85_1:
	mov	eax, dword ptr [.L__profc_gl_isinfl+8]
	add	eax, 1
	adc	dword ptr [.L__profc_gl_isinfl+12], 0
	mov	dword ptr [.L__profc_gl_isinfl+8], eax
	fld	tbyte ptr [ebp - 12]
	fld	tbyte ptr [.LCPI85_1]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	seta	al
	mov	byte ptr [ebp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jne	.LBB85_3
# %bb.2:
	mov	al, byte ptr [ebp - 14]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_gl_isinfl+16]
	add	ecx, 1
	adc	dword ptr [.L__profc_gl_isinfl+20], 0
	mov	dword ptr [.L__profc_gl_isinfl+16], ecx
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB85_3:
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	and	al, 1
	movzx	eax, al
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
	.cfi_endproc
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	4, 0x90
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc__Qp_itoq]
	add	eax, 1
	adc	dword ptr [.L__profc__Qp_itoq+4], 0
	mov	dword ptr [.L__profc__Qp_itoq], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 4], eax
	fild	dword ptr [ebp - 4]
	mov	eax, dword ptr [ebp + 8]
	fstp	tbyte ptr [eax]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0                          # -- Begin function ldexpf
.LCPI87_0:
	.long	0x40000000                      # float 2
	.long	0x3f000000                      # float 0.5
	.text
	.globl	ldexpf
	.p2align	4, 0x90
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc_ldexpf]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpf+4], 0
	mov	dword ptr [.L__profc_ldexpf], eax
	fld	dword ptr [ebp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB87_10
# %bb.1:
	mov	eax, dword ptr [.L__profc_ldexpf+16]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpf+20], 0
	mov	dword ptr [.L__profc_ldexpf+16], eax
	fld	dword ptr [ebp + 8]
	fld	st(0)
	fadd	st, st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB87_2
	jp	.LBB87_2
	jmp	.LBB87_10
.LBB87_2:
	mov	eax, dword ptr [.L__profc_ldexpf+24]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpf+28], 0
	mov	dword ptr [.L__profc_ldexpf+24], eax
# %bb.3:
	mov	eax, dword ptr [.L__profc_ldexpf+8]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpf+12], 0
	mov	dword ptr [.L__profc_ldexpf+8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax, 31
	mov	ecx, dword ptr [.L__profc_ldexpf+36]
	mov	edx, dword ptr [.L__profc_ldexpf+32]
	add	edx, eax
	adc	ecx, 0
	mov	dword ptr [.L__profc_ldexpf+32], edx
	mov	dword ptr [.L__profc_ldexpf+36], ecx
	fld	dword ptr [4*eax + .LCPI87_0]
	fstp	dword ptr [ebp - 4]
.LBB87_4:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [.L__profc_ldexpf+40]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpf+44], 0
	mov	dword ptr [.L__profc_ldexpf+40], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB87_6
# %bb.5:                                #   in Loop: Header=BB87_4 Depth=1
	mov	eax, dword ptr [.L__profc_ldexpf+48]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpf+52], 0
	mov	dword ptr [.L__profc_ldexpf+48], eax
	fld	dword ptr [ebp - 4]
	fld	dword ptr [ebp + 8]
	fmulp	st(1), st
	fstp	dword ptr [ebp + 8]
.LBB87_6:                               #   in Loop: Header=BB87_4 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 12], eax
	cmp	dword ptr [ebp + 12], 0
	jne	.LBB87_8
# %bb.7:
	mov	eax, dword ptr [.L__profc_ldexpf+56]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpf+60], 0
	mov	dword ptr [.L__profc_ldexpf+56], eax
	jmp	.LBB87_9
.LBB87_8:                               #   in Loop: Header=BB87_4 Depth=1
	fld	dword ptr [ebp - 4]
	fmul	st(0), st
	fstp	dword ptr [ebp - 4]
	jmp	.LBB87_4
.LBB87_9:
	jmp	.LBB87_10
.LBB87_10:
	fld	dword ptr [ebp + 8]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0                          # -- Begin function ldexp
.LCPI88_0:
	.quad	0x4000000000000000              # double 2
	.quad	0x3fe0000000000000              # double 0.5
	.text
	.globl	ldexp
	.p2align	4, 0x90
	.type	ldexp,@function
ldexp:                                  # @ldexp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 8]
	mov	eax, dword ptr [.L__profc_ldexp]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexp+4], 0
	mov	dword ptr [.L__profc_ldexp], eax
	fld	qword ptr [esp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB88_10
# %bb.1:
	mov	eax, dword ptr [.L__profc_ldexp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexp+20], 0
	mov	dword ptr [.L__profc_ldexp+16], eax
	fld	qword ptr [esp + 8]
	fld	st(0)
	fadd	st, st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB88_2
	jp	.LBB88_2
	jmp	.LBB88_10
.LBB88_2:
	mov	eax, dword ptr [.L__profc_ldexp+24]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexp+28], 0
	mov	dword ptr [.L__profc_ldexp+24], eax
# %bb.3:
	mov	eax, dword ptr [.L__profc_ldexp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexp+12], 0
	mov	dword ptr [.L__profc_ldexp+8], eax
	mov	eax, dword ptr [ebp + 16]
	shr	eax, 31
	mov	ecx, dword ptr [.L__profc_ldexp+36]
	mov	edx, dword ptr [.L__profc_ldexp+32]
	add	edx, eax
	adc	ecx, 0
	mov	dword ptr [.L__profc_ldexp+32], edx
	mov	dword ptr [.L__profc_ldexp+36], ecx
	fld	qword ptr [8*eax + .LCPI88_0]
	fstp	qword ptr [esp]
.LBB88_4:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [.L__profc_ldexp+40]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexp+44], 0
	mov	dword ptr [.L__profc_ldexp+40], eax
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB88_6
# %bb.5:                                #   in Loop: Header=BB88_4 Depth=1
	mov	eax, dword ptr [.L__profc_ldexp+48]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexp+52], 0
	mov	dword ptr [.L__profc_ldexp+48], eax
	fld	qword ptr [esp]
	fld	qword ptr [esp + 8]
	fmulp	st(1), st
	fstp	qword ptr [esp + 8]
.LBB88_6:                               #   in Loop: Header=BB88_4 Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 16], eax
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB88_8
# %bb.7:
	mov	eax, dword ptr [.L__profc_ldexp+56]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexp+60], 0
	mov	dword ptr [.L__profc_ldexp+56], eax
	jmp	.LBB88_9
.LBB88_8:                               #   in Loop: Header=BB88_4 Depth=1
	fld	qword ptr [esp]
	fmul	st(0), st
	fstp	qword ptr [esp]
	jmp	.LBB88_4
.LBB88_9:
	jmp	.LBB88_10
.LBB88_10:
	fld	qword ptr [esp + 8]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
	.cfi_endproc
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0                          # -- Begin function ldexpl
.LCPI89_0:
	.quad	0x8000000000000000              # x86_fp80 2
	.short	0x4000
	.zero	2
	.quad	0x8000000000000000              # x86_fp80 0.5
	.short	0x3ffe
	.zero	2
	.text
	.globl	ldexpl
	.p2align	4, 0x90
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 24
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 20]
	fld	tbyte ptr [ebp + 8]
	fstp	tbyte ptr [ebp - 16]
	mov	eax, dword ptr [.L__profc_ldexpl]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpl+4], 0
	mov	dword ptr [.L__profc_ldexpl], eax
	fld	tbyte ptr [ebp - 16]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB89_10
# %bb.1:
	mov	eax, dword ptr [.L__profc_ldexpl+16]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpl+20], 0
	mov	dword ptr [.L__profc_ldexpl+16], eax
	fld	tbyte ptr [ebp - 16]
	fld	st(0)
	fadd	st, st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB89_2
	jp	.LBB89_2
	jmp	.LBB89_10
.LBB89_2:
	mov	eax, dword ptr [.L__profc_ldexpl+24]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpl+28], 0
	mov	dword ptr [.L__profc_ldexpl+24], eax
# %bb.3:
	mov	eax, dword ptr [.L__profc_ldexpl+8]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpl+12], 0
	mov	dword ptr [.L__profc_ldexpl+8], eax
	mov	eax, dword ptr [ebp + 20]
	mov	esi, eax
	shr	esi, 31
	mov	ecx, dword ptr [.L__profc_ldexpl+36]
	mov	edx, dword ptr [.L__profc_ldexpl+32]
	add	edx, esi
	adc	ecx, 0
	mov	dword ptr [.L__profc_ldexpl+32], edx
	mov	dword ptr [.L__profc_ldexpl+36], ecx
	sar	eax, 31
	and	eax, 12
	fld	tbyte ptr [eax + .LCPI89_0]
	fstp	tbyte ptr [ebp - 28]
.LBB89_4:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [.L__profc_ldexpl+40]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpl+44], 0
	mov	dword ptr [.L__profc_ldexpl+40], eax
	mov	eax, dword ptr [ebp + 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB89_6
# %bb.5:                                #   in Loop: Header=BB89_4 Depth=1
	mov	eax, dword ptr [.L__profc_ldexpl+48]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpl+52], 0
	mov	dword ptr [.L__profc_ldexpl+48], eax
	fld	tbyte ptr [ebp - 28]
	fld	tbyte ptr [ebp - 16]
	fmulp	st(1), st
	fstp	tbyte ptr [ebp - 16]
.LBB89_6:                               #   in Loop: Header=BB89_4 Depth=1
	mov	eax, dword ptr [ebp + 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 20], eax
	cmp	dword ptr [ebp + 20], 0
	jne	.LBB89_8
# %bb.7:
	mov	eax, dword ptr [.L__profc_ldexpl+56]
	add	eax, 1
	adc	dword ptr [.L__profc_ldexpl+60], 0
	mov	dword ptr [.L__profc_ldexpl+56], eax
	jmp	.LBB89_9
.LBB89_8:                               #   in Loop: Header=BB89_4 Depth=1
	fld	tbyte ptr [ebp - 28]
	fmul	st(0), st
	fstp	tbyte ptr [ebp - 28]
	jmp	.LBB89_4
.LBB89_9:
	jmp	.LBB89_10
.LBB89_10:
	fld	tbyte ptr [ebp - 16]
	add	esp, 24
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
	.cfi_endproc
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	4, 0x90
	.type	memxor,@function
memxor:                                 # @memxor
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memxor]
	add	eax, 1
	adc	dword ptr [.L__profc_memxor+4], 0
	mov	dword ptr [.L__profc_memxor], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	jbe	.LBB90_4
# %bb.2:                                #   in Loop: Header=BB90_1 Depth=1
	mov	eax, dword ptr [.L__profc_memxor+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memxor+12], 0
	mov	dword ptr [.L__profc_memxor+8], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp - 4], ecx
	movsx	edx, byte ptr [eax]
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp - 8], ecx
	movsx	ecx, byte ptr [eax]
	xor	ecx, edx
                                        # kill: def $cl killed $cl killed $ecx
	mov	byte ptr [eax], cl
# %bb.3:                                #   in Loop: Header=BB90_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB90_1
.LBB90_4:
	mov	eax, dword ptr [ebp + 8]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
	.cfi_endproc
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	4, 0x90
	.type	strncat,@function
strncat:                                # @strncat
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strncat]
	add	eax, 1
	adc	dword ptr [.L__profc_strncat+4], 0
	mov	dword ptr [.L__profc_strncat], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, esp
	mov	dword ptr [eax], ecx
	call	strlen
	mov	ecx, eax
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	add	eax, ecx
	mov	dword ptr [ebp - 4], eax
.LBB91_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
	jbe	.LBB91_4
# %bb.2:                                #   in Loop: Header=BB91_1 Depth=1
	mov	eax, dword ptr [.L__profc_strncat+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strncat+20], 0
	mov	dword ptr [.L__profc_strncat+16], eax
	mov	eax, dword ptr [ebp + 12]
	mov	al, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 4]
	mov	byte ptr [ecx], al
	movsx	eax, al
	cmp	eax, 0
	setne	al
	mov	byte ptr [ebp - 10], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
	jne	.LBB91_3
	jmp	.LBB91_4
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	mov	al, byte ptr [ebp - 10]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_strncat+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_strncat+28], 0
	mov	dword ptr [.L__profc_strncat+24], ecx
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	mov	al, byte ptr [ebp - 9]          # 1-byte Reload
	test	al, 1
	jne	.LBB91_5
	jmp	.LBB91_7
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
	mov	eax, dword ptr [.L__profc_strncat+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strncat+12], 0
	mov	dword ptr [.L__profc_strncat+8], eax
# %bb.6:                                #   in Loop: Header=BB91_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	add	eax, 1
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB91_1
.LBB91_7:
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB91_9
# %bb.8:
	mov	eax, dword ptr [.L__profc_strncat+32]
	add	eax, 1
	adc	dword ptr [.L__profc_strncat+36], 0
	mov	dword ptr [.L__profc_strncat+32], eax
	mov	eax, dword ptr [ebp - 4]
	mov	byte ptr [eax], 0
.LBB91_9:
	mov	eax, dword ptr [ebp + 8]
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
	.cfi_endproc
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	4, 0x90
	.type	strnlen,@function
strnlen:                                # @strnlen
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strnlen]
	add	eax, 1
	adc	dword ptr [.L__profc_strnlen+4], 0
	mov	dword ptr [.L__profc_strnlen], eax
	mov	dword ptr [ebp - 4], 0
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp - 4]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 12]
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
	jae	.LBB92_4
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	mov	eax, dword ptr [.L__profc_strnlen+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strnlen+20], 0
	mov	dword ptr [.L__profc_strnlen+16], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	movsx	eax, byte ptr [eax + ecx]
	cmp	eax, 0
	setne	al
	mov	byte ptr [ebp - 6], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
	jne	.LBB92_3
	jmp	.LBB92_4
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	mov	al, byte ptr [ebp - 6]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_strnlen+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_strnlen+28], 0
	mov	dword ptr [.L__profc_strnlen+24], ecx
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	mov	al, byte ptr [ebp - 5]          # 1-byte Reload
	test	al, 1
	jne	.LBB92_5
	jmp	.LBB92_7
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	mov	eax, dword ptr [.L__profc_strnlen+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strnlen+12], 0
	mov	dword ptr [.L__profc_strnlen+8], eax
# %bb.6:                                #   in Loop: Header=BB92_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB92_1
.LBB92_7:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
	.cfi_endproc
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	4, 0x90
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strpbrk]
	add	eax, 1
	adc	dword ptr [.L__profc_strpbrk+4], 0
	mov	dword ptr [.L__profc_strpbrk], eax
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, 0
	je	.LBB93_8
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	mov	eax, dword ptr [.L__profc_strpbrk+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strpbrk+12], 0
	mov	dword ptr [.L__profc_strpbrk+8], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB93_3:                               #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [ebp - 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, 0
	je	.LBB93_7
# %bb.4:                                #   in Loop: Header=BB93_3 Depth=2
	mov	eax, dword ptr [.L__profc_strpbrk+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strpbrk+20], 0
	mov	dword ptr [.L__profc_strpbrk+16], eax
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp - 8], ecx
	movsx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp + 8]
	movsx	ecx, byte ptr [ecx]
	cmp	eax, ecx
	jne	.LBB93_6
# %bb.5:
	mov	eax, dword ptr [.L__profc_strpbrk+24]
	add	eax, 1
	adc	dword ptr [.L__profc_strpbrk+28], 0
	mov	dword ptr [.L__profc_strpbrk+24], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB93_9
.LBB93_6:                               #   in Loop: Header=BB93_3 Depth=2
	jmp	.LBB93_3
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB93_1
.LBB93_8:
	mov	dword ptr [ebp - 4], 0
.LBB93_9:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
	.cfi_endproc
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	4, 0x90
	.type	strrchr,@function
strrchr:                                # @strrchr
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strrchr]
	add	eax, 1
	adc	dword ptr [.L__profc_strrchr+4], 0
	mov	dword ptr [.L__profc_strrchr], eax
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB94_2
.LBB94_1:                               #   in Loop: Header=BB94_2 Depth=1
	mov	eax, dword ptr [.L__profc_strrchr+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strrchr+12], 0
	mov	dword ptr [.L__profc_strrchr+8], eax
.LBB94_2:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB94_4
# %bb.3:                                #   in Loop: Header=BB94_2 Depth=1
	mov	eax, dword ptr [.L__profc_strrchr+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strrchr+20], 0
	mov	dword ptr [.L__profc_strrchr+16], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB94_4:                               #   in Loop: Header=BB94_2 Depth=1
	jmp	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_2 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp + 8], ecx
	cmp	byte ptr [eax], 0
	jne	.LBB94_1
# %bb.6:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
	.cfi_endproc
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	4, 0x90
	.type	strstr,@function
strstr:                                 # @strstr
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 24
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_strstr]
	add	eax, 1
	adc	dword ptr [.L__profc_strstr+4], 0
	mov	dword ptr [.L__profc_strstr], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, esp
	mov	dword ptr [eax], ecx
	call	strlen
	mov	dword ptr [ebp - 12], eax
	cmp	dword ptr [ebp - 12], 0
	jne	.LBB95_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_strstr+8]
	add	eax, 1
	adc	dword ptr [.L__profc_strstr+12], 0
	mov	dword ptr [.L__profc_strstr+8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB95_9
.LBB95_2:
	jmp	.LBB95_3
.LBB95_3:                               # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp - 8]
	mov	eax, dword ptr [ebp + 12]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], ecx
	mov	dword ptr [esp + 4], eax
	call	strchr
	mov	dword ptr [ebp - 8], eax
	cmp	eax, 0
	je	.LBB95_8
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=1
	mov	eax, dword ptr [.L__profc_strstr+16]
	add	eax, 1
	adc	dword ptr [.L__profc_strstr+20], 0
	mov	dword ptr [.L__profc_strstr+16], eax
	mov	edx, dword ptr [ebp - 8]
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [esp], edx
	mov	dword ptr [esp + 4], ecx
	mov	dword ptr [esp + 8], eax
	call	strncmp
	cmp	eax, 0
	jne	.LBB95_6
# %bb.5:
	mov	eax, dword ptr [.L__profc_strstr+24]
	add	eax, 1
	adc	dword ptr [.L__profc_strstr+28], 0
	mov	dword ptr [.L__profc_strstr+24], eax
	mov	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=1
	jmp	.LBB95_7
.LBB95_7:                               #   in Loop: Header=BB95_3 Depth=1
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB95_3
.LBB95_8:
	mov	dword ptr [ebp - 4], 0
.LBB95_9:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 24
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
	.cfi_endproc
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	4, 0x90
	.type	copysign,@function
copysign:                               # @copysign
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 24
	fld	qword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 8]
	fstp	qword ptr [esp]
	mov	eax, dword ptr [.L__profc_copysign]
	add	eax, 1
	adc	dword ptr [.L__profc_copysign+4], 0
	mov	dword ptr [.L__profc_copysign], eax
	fld	qword ptr [esp + 8]
	fldz
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB96_3
	jmp	.LBB96_1
.LBB96_1:
	mov	eax, dword ptr [.L__profc_copysign+24]
	add	eax, 1
	adc	dword ptr [.L__profc_copysign+28], 0
	mov	dword ptr [.L__profc_copysign+24], eax
	fld	qword ptr [esp]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB96_3
	jmp	.LBB96_2
.LBB96_2:
	mov	eax, dword ptr [.L__profc_copysign+32]
	add	eax, 1
	adc	dword ptr [.L__profc_copysign+36], 0
	mov	dword ptr [.L__profc_copysign+32], eax
	jmp	.LBB96_6
.LBB96_3:
	mov	eax, dword ptr [.L__profc_copysign+16]
	add	eax, 1
	adc	dword ptr [.L__profc_copysign+20], 0
	mov	dword ptr [.L__profc_copysign+16], eax
	fld	qword ptr [esp + 8]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB96_7
	jmp	.LBB96_4
.LBB96_4:
	mov	eax, dword ptr [.L__profc_copysign+40]
	add	eax, 1
	adc	dword ptr [.L__profc_copysign+44], 0
	mov	dword ptr [.L__profc_copysign+40], eax
	fld	qword ptr [esp]
	fldz
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB96_7
	jmp	.LBB96_5
.LBB96_5:
	mov	eax, dword ptr [.L__profc_copysign+48]
	add	eax, 1
	adc	dword ptr [.L__profc_copysign+52], 0
	mov	dword ptr [.L__profc_copysign+48], eax
.LBB96_6:
	mov	eax, dword ptr [.L__profc_copysign+8]
	add	eax, 1
	adc	dword ptr [.L__profc_copysign+12], 0
	mov	dword ptr [.L__profc_copysign+8], eax
	fld	qword ptr [esp + 8]
	fchs
	fstp	qword ptr [esp + 16]
	jmp	.LBB96_8
.LBB96_7:
	fld	qword ptr [esp + 8]
	fstp	qword ptr [esp + 16]
.LBB96_8:
	fld	qword ptr [esp + 16]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
	.cfi_endproc
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	4, 0x90
	.type	memmem,@function
memmem:                                 # @memmem
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 24
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 20]
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_memmem]
	add	eax, 1
	adc	dword ptr [.L__profc_memmem+4], 0
	mov	dword ptr [.L__profc_memmem], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, dword ptr [ebp + 12]
	xor	ecx, ecx
	sub	ecx, dword ptr [ebp + 20]
	add	eax, ecx
	mov	dword ptr [ebp - 16], eax
	cmp	dword ptr [ebp + 20], 0
	jne	.LBB97_2
# %bb.1:
	mov	eax, dword ptr [.L__profc_memmem+8]
	add	eax, 1
	adc	dword ptr [.L__profc_memmem+12], 0
	mov	dword ptr [.L__profc_memmem+8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB97_13
.LBB97_2:
	mov	eax, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ebp + 20]
	jae	.LBB97_4
# %bb.3:
	mov	eax, dword ptr [.L__profc_memmem+16]
	add	eax, 1
	adc	dword ptr [.L__profc_memmem+20], 0
	mov	dword ptr [.L__profc_memmem+16], eax
	mov	dword ptr [ebp - 8], 0
	jmp	.LBB97_13
.LBB97_4:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 12], eax
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, dword ptr [ebp - 16]
	ja	.LBB97_12
# %bb.6:                                #   in Loop: Header=BB97_5 Depth=1
	mov	eax, dword ptr [.L__profc_memmem+24]
	add	eax, 1
	adc	dword ptr [.L__profc_memmem+28], 0
	mov	dword ptr [.L__profc_memmem+24], eax
	mov	eax, dword ptr [ebp - 12]
	movsx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp + 16]
	movsx	ecx, byte ptr [ecx]
	cmp	eax, ecx
	jne	.LBB97_10
# %bb.7:                                #   in Loop: Header=BB97_5 Depth=1
	mov	eax, dword ptr [.L__profc_memmem+40]
	add	eax, 1
	adc	dword ptr [.L__profc_memmem+44], 0
	mov	dword ptr [.L__profc_memmem+40], eax
	mov	ecx, dword ptr [ebp - 12]
	add	ecx, 1
	mov	edx, dword ptr [ebp + 16]
	add	edx, 1
	mov	esi, dword ptr [ebp + 20]
	sub	esi, 1
	mov	eax, esp
	mov	dword ptr [eax + 8], esi
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	memcmp
	cmp	eax, 0
	jne	.LBB97_10
# %bb.8:
	mov	eax, dword ptr [.L__profc_memmem+48]
	add	eax, 1
	adc	dword ptr [.L__profc_memmem+52], 0
	mov	dword ptr [.L__profc_memmem+48], eax
# %bb.9:
	mov	eax, dword ptr [.L__profc_memmem+32]
	add	eax, 1
	adc	dword ptr [.L__profc_memmem+36], 0
	mov	dword ptr [.L__profc_memmem+32], eax
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB97_13
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	jmp	.LBB97_11
.LBB97_11:                              #   in Loop: Header=BB97_5 Depth=1
	mov	eax, dword ptr [ebp - 12]
	add	eax, 1
	mov	dword ptr [ebp - 12], eax
	jmp	.LBB97_5
.LBB97_12:
	mov	dword ptr [ebp - 8], 0
.LBB97_13:
	mov	eax, dword ptr [ebp - 8]
	add	esp, 24
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
	.cfi_endproc
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	4, 0x90
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_mempcpy]
	add	eax, 1
	adc	dword ptr [.L__profc_mempcpy+4], 0
	mov	dword ptr [.L__profc_mempcpy], eax
	mov	edx, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], edx        # 4-byte Spill
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 16]
	mov	dword ptr [esp], edx
	mov	dword ptr [esp + 4], ecx
	mov	dword ptr [esp + 8], eax
	call	memcpy
	mov	eax, dword ptr [ebp - 4]        # 4-byte Reload
	add	eax, dword ptr [ebp + 16]
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function frexp
.LCPI99_0:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI99_1:
	.long	0x3f000000                      # float 0.5
	.text
	.globl	frexp
	.p2align	4, 0x90
	.type	frexp,@function
frexp:                                  # @frexp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 8]
	mov	eax, dword ptr [.L__profc_frexp]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+4], 0
	mov	dword ptr [.L__profc_frexp], eax
	mov	dword ptr [esp], 0
	mov	dword ptr [esp + 4], 0
	fld	qword ptr [esp + 8]
	fldz
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB99_2
	jmp	.LBB99_1
.LBB99_1:
	mov	eax, dword ptr [.L__profc_frexp+8]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+12], 0
	mov	dword ptr [.L__profc_frexp+8], eax
	fld	qword ptr [esp + 8]
	fchs
	fstp	qword ptr [esp + 8]
	mov	dword ptr [esp + 4], 1
.LBB99_2:
	fld	qword ptr [esp + 8]
	fld1
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jb	.LBB99_7
	jmp	.LBB99_3
.LBB99_3:
	mov	eax, dword ptr [.L__profc_frexp+16]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+20], 0
	mov	dword ptr [.L__profc_frexp+16], eax
.LBB99_4:                               # =>This Inner Loop Header: Depth=1
	fld	qword ptr [esp + 8]
	fld1
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jb	.LBB99_6
	jmp	.LBB99_5
.LBB99_5:                               #   in Loop: Header=BB99_4 Depth=1
	mov	eax, dword ptr [.L__profc_frexp+24]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+28], 0
	mov	dword ptr [.L__profc_frexp+24], eax
	mov	eax, dword ptr [esp]
	inc	eax
	mov	dword ptr [esp], eax
	fld	qword ptr [esp + 8]
	fld	dword ptr [.LCPI99_1]
	fmulp	st(1), st
	fstp	qword ptr [esp + 8]
	jmp	.LBB99_4
.LBB99_6:
	jmp	.LBB99_15
.LBB99_7:
	fld	qword ptr [esp + 8]
	fld	dword ptr [.LCPI99_1]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB99_14
	jmp	.LBB99_8
.LBB99_8:
	mov	eax, dword ptr [.L__profc_frexp+40]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+44], 0
	mov	dword ptr [.L__profc_frexp+40], eax
	fld	qword ptr [esp + 8]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB99_9
	jp	.LBB99_9
	jmp	.LBB99_14
.LBB99_9:
	mov	eax, dword ptr [.L__profc_frexp+48]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+52], 0
	mov	dword ptr [.L__profc_frexp+48], eax
# %bb.10:
	mov	eax, dword ptr [.L__profc_frexp+32]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+36], 0
	mov	dword ptr [.L__profc_frexp+32], eax
.LBB99_11:                              # =>This Inner Loop Header: Depth=1
	fld	qword ptr [esp + 8]
	fld	dword ptr [.LCPI99_1]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB99_13
	jmp	.LBB99_12
.LBB99_12:                              #   in Loop: Header=BB99_11 Depth=1
	mov	eax, dword ptr [.L__profc_frexp+56]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+60], 0
	mov	dword ptr [.L__profc_frexp+56], eax
	mov	eax, dword ptr [esp]
	dec	eax
	mov	dword ptr [esp], eax
	fld	qword ptr [esp + 8]
	fadd	st(0), st
	fstp	qword ptr [esp + 8]
	jmp	.LBB99_11
.LBB99_13:
	jmp	.LBB99_14
.LBB99_14:
	jmp	.LBB99_15
.LBB99_15:
	mov	ecx, dword ptr [esp]
	mov	eax, dword ptr [ebp + 16]
	mov	dword ptr [eax], ecx
	cmp	dword ptr [esp + 4], 0
	je	.LBB99_17
# %bb.16:
	mov	eax, dword ptr [.L__profc_frexp+64]
	add	eax, 1
	adc	dword ptr [.L__profc_frexp+68], 0
	mov	dword ptr [.L__profc_frexp+64], eax
	fld	qword ptr [esp + 8]
	fchs
	fstp	qword ptr [esp + 8]
.LBB99_17:
	fld	qword ptr [esp + 8]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	4, 0x90
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	and	esp, -8
	sub	esp, 40
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, dword ptr [ebp + 20]
	mov	esi, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp + 12]
	mov	dword ptr [esp + 24], esi
	mov	dword ptr [esp + 28], edx
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
	mov	eax, dword ptr [.L__profc___muldi3]
	add	eax, 1
	adc	dword ptr [.L__profc___muldi3+4], 0
	mov	dword ptr [.L__profc___muldi3], eax
	mov	dword ptr [esp + 12], 0
	mov	dword ptr [esp + 8], 0
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 4], ecx
	mov	dword ptr [esp], eax
.LBB100_1:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [esp]
	mov	ecx, dword ptr [esp + 4]
	or	eax, ecx
	je	.LBB100_5
	jmp	.LBB100_2
.LBB100_2:                              #   in Loop: Header=BB100_1 Depth=1
	mov	eax, dword ptr [.L__profc___muldi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___muldi3+12], 0
	mov	dword ptr [.L__profc___muldi3+8], eax
	mov	al, byte ptr [esp]
	test	al, 1
	je	.LBB100_4
	jmp	.LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
	mov	eax, dword ptr [.L__profc___muldi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___muldi3+20], 0
	mov	dword ptr [.L__profc___muldi3+16], eax
	mov	esi, dword ptr [esp + 16]
	mov	edx, dword ptr [esp + 20]
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	add	ecx, esi
	adc	eax, edx
	mov	dword ptr [esp + 8], ecx
	mov	dword ptr [esp + 12], eax
.LBB100_4:                              #   in Loop: Header=BB100_1 Depth=1
	mov	edx, dword ptr [esp + 16]
	mov	ecx, dword ptr [esp + 20]
	mov	eax, edx
	add	eax, eax
	shld	ecx, edx, 1
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
	mov	edx, dword ptr [esp]
	mov	ecx, dword ptr [esp + 4]
	mov	eax, ecx
	shld	eax, edx, 31
	shr	ecx
	mov	dword ptr [esp + 4], ecx
	mov	dword ptr [esp], eax
	jmp	.LBB100_1
.LBB100_5:
	mov	eax, dword ptr [esp + 8]
	mov	edx, dword ptr [esp + 12]
	lea	esp, [ebp - 4]
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
	.cfi_endproc
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	4, 0x90
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc_udivmodsi4]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+4], 0
	mov	dword ptr [.L__profc_udivmodsi4], eax
	mov	dword ptr [ebp - 8], 1
	mov	dword ptr [ebp - 12], 0
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jae	.LBB101_6
# %bb.2:                                #   in Loop: Header=BB101_1 Depth=1
	mov	eax, dword ptr [.L__profc_udivmodsi4+32]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+36], 0
	mov	dword ptr [.L__profc_udivmodsi4+32], eax
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp - 8], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB101_6
# %bb.3:                                #   in Loop: Header=BB101_1 Depth=1
	mov	eax, dword ptr [.L__profc_udivmodsi4+40]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+44], 0
	mov	dword ptr [.L__profc_udivmodsi4+40], eax
# %bb.4:                                #   in Loop: Header=BB101_1 Depth=1
	mov	eax, dword ptr [.L__profc_udivmodsi4+16]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+20], 0
	mov	dword ptr [.L__profc_udivmodsi4+16], eax
	mov	eax, dword ptr [ebp + 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jne	.LBB101_5
	jmp	.LBB101_6
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	mov	al, byte ptr [ebp - 14]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc_udivmodsi4+24]
	add	ecx, 1
	adc	dword ptr [.L__profc_udivmodsi4+28], 0
	mov	dword ptr [.L__profc_udivmodsi4+24], ecx
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB101_6:                              #   in Loop: Header=BB101_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB101_7
	jmp	.LBB101_8
.LBB101_7:                              #   in Loop: Header=BB101_1 Depth=1
	mov	eax, dword ptr [.L__profc_udivmodsi4+8]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+12], 0
	mov	dword ptr [.L__profc_udivmodsi4+8], eax
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp - 8]
	shl	eax
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB101_1
.LBB101_8:
	jmp	.LBB101_9
.LBB101_9:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB101_13
# %bb.10:                               #   in Loop: Header=BB101_9 Depth=1
	mov	eax, dword ptr [.L__profc_udivmodsi4+48]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+52], 0
	mov	dword ptr [.L__profc_udivmodsi4+48], eax
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jb	.LBB101_12
# %bb.11:                               #   in Loop: Header=BB101_9 Depth=1
	mov	eax, dword ptr [.L__profc_udivmodsi4+56]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+60], 0
	mov	dword ptr [.L__profc_udivmodsi4+56], eax
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	sub	eax, ecx
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp - 8]
	or	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB101_12:                             #   in Loop: Header=BB101_9 Depth=1
	mov	eax, dword ptr [ebp - 8]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB101_9
.LBB101_13:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB101_15
# %bb.14:
	mov	eax, dword ptr [.L__profc_udivmodsi4+64]
	add	eax, 1
	adc	dword ptr [.L__profc_udivmodsi4+68], 0
	mov	dword ptr [.L__profc_udivmodsi4+64], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB101_16
.LBB101_15:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 4], eax
.LBB101_16:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	4, 0x90
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	al, byte ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___clrsbqi2]
	add	eax, 1
	adc	dword ptr [.L__profc___clrsbqi2+4], 0
	mov	dword ptr [.L__profc___clrsbqi2], eax
	movsx	eax, byte ptr [ebp + 8]
	cmp	eax, 0
	jge	.LBB102_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___clrsbqi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___clrsbqi2+12], 0
	mov	dword ptr [.L__profc___clrsbqi2+8], eax
	movsx	eax, byte ptr [ebp + 8]
	xor	eax, -1
                                        # kill: def $al killed $al killed $eax
	mov	byte ptr [ebp + 8], al
.LBB102_2:
	movsx	eax, byte ptr [ebp + 8]
	cmp	eax, 0
	jne	.LBB102_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___clrsbqi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___clrsbqi2+20], 0
	mov	dword ptr [.L__profc___clrsbqi2+16], eax
	mov	dword ptr [ebp - 4], 7
	jmp	.LBB102_5
.LBB102_4:
	movsx	eax, byte ptr [ebp + 8]
	shl	eax, 8
	bsr	eax, eax
	xor	eax, 31
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 8]
	sub	eax, 1
	mov	dword ptr [ebp - 4], eax
.LBB102_5:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	4, 0x90
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 32
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 20], eax
	mov	eax, dword ptr [.L__profc___clrsbdi2]
	add	eax, 1
	adc	dword ptr [.L__profc___clrsbdi2+4], 0
	mov	dword ptr [.L__profc___clrsbdi2], eax
	mov	eax, dword ptr [esp + 20]
	test	eax, eax
	jns	.LBB103_2
	jmp	.LBB103_1
.LBB103_1:
	mov	eax, dword ptr [.L__profc___clrsbdi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___clrsbdi2+12], 0
	mov	dword ptr [.L__profc___clrsbdi2+8], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [esp + 20]
	not	eax
	not	ecx
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
.LBB103_2:
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [esp + 20]
	or	eax, ecx
	jne	.LBB103_4
	jmp	.LBB103_3
.LBB103_3:
	mov	eax, dword ptr [.L__profc___clrsbdi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___clrsbdi2+20], 0
	mov	dword ptr [.L__profc___clrsbdi2+16], eax
	mov	dword ptr [esp + 28], 63
	jmp	.LBB103_5
.LBB103_4:
	mov	ecx, dword ptr [esp + 20]
	bsr	eax, ecx
	xor	eax, 31
	bsr	edx, dword ptr [esp + 16]
	xor	edx, 31
	add	edx, 32
	mov	dword ptr [esp + 4], edx        # 4-byte Spill
	test	ecx, ecx
	mov	dword ptr [esp + 8], eax        # 4-byte Spill
	jne	.LBB103_7
# %bb.6:
	mov	eax, dword ptr [esp + 4]        # 4-byte Reload
	mov	dword ptr [esp + 8], eax        # 4-byte Spill
.LBB103_7:
	mov	eax, dword ptr [esp + 8]        # 4-byte Reload
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [esp + 12]
	sub	eax, 1
	mov	dword ptr [esp + 28], eax
.LBB103_5:
	mov	eax, dword ptr [esp + 28]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	4, 0x90
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___mulsi3]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3+4], 0
	mov	dword ptr [.L__profc___mulsi3], eax
	mov	dword ptr [ebp - 4], 0
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 8], 0
	je	.LBB104_5
# %bb.2:                                #   in Loop: Header=BB104_1 Depth=1
	mov	eax, dword ptr [.L__profc___mulsi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3+12], 0
	mov	dword ptr [.L__profc___mulsi3+8], eax
	mov	eax, dword ptr [ebp + 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB104_4
# %bb.3:                                #   in Loop: Header=BB104_1 Depth=1
	mov	eax, dword ptr [.L__profc___mulsi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3+20], 0
	mov	dword ptr [.L__profc___mulsi3+16], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 4], eax
.LBB104_4:                              #   in Loop: Header=BB104_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	shr	eax
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB104_1
.LBB104_5:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
	.cfi_endproc
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	4, 0x90
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 20
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___cmovd]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovd+4], 0
	mov	dword ptr [.L__profc___cmovd], eax
	mov	eax, dword ptr [ebp + 16]
	shr	eax, 3
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
	and	eax, -8
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 20], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 24], eax
	mov	eax, dword ptr [ebp - 20]
	cmp	eax, dword ptr [ebp - 24]
	jb	.LBB105_3
# %bb.1:
	mov	eax, dword ptr [.L__profc___cmovd+16]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovd+20], 0
	mov	dword ptr [.L__profc___cmovd+16], eax
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp - 24]
	add	ecx, dword ptr [ebp + 16]
	cmp	eax, ecx
	ja	.LBB105_3
# %bb.2:
	mov	eax, dword ptr [.L__profc___cmovd+24]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovd+28], 0
	mov	dword ptr [.L__profc___cmovd+24], eax
	jmp	.LBB105_11
.LBB105_3:
	mov	eax, dword ptr [.L__profc___cmovd+8]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovd+12], 0
	mov	dword ptr [.L__profc___cmovd+8], eax
	mov	dword ptr [ebp - 8], 0
.LBB105_4:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 8]
	cmp	eax, dword ptr [ebp - 12]
	jae	.LBB105_7
# %bb.5:                                #   in Loop: Header=BB105_4 Depth=1
	mov	eax, dword ptr [.L__profc___cmovd+32]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovd+36], 0
	mov	dword ptr [.L__profc___cmovd+32], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp - 8]
	mov	edx, dword ptr [eax + 8*ecx]
	mov	esi, dword ptr [eax + 8*ecx + 4]
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [eax + 8*ecx + 4], esi
	mov	dword ptr [eax + 8*ecx], edx
# %bb.6:                                #   in Loop: Header=BB105_4 Depth=1
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB105_4
.LBB105_7:
	jmp	.LBB105_8
.LBB105_8:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	cmp	eax, dword ptr [ebp - 16]
	jbe	.LBB105_10
# %bb.9:                                #   in Loop: Header=BB105_8 Depth=1
	mov	eax, dword ptr [.L__profc___cmovd+40]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovd+44], 0
	mov	dword ptr [.L__profc___cmovd+40], eax
	mov	eax, dword ptr [ebp - 24]
	mov	ecx, dword ptr [ebp - 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp - 16]
	mov	byte ptr [eax + ecx], dl
	mov	eax, dword ptr [ebp - 16]
	add	eax, 1
	mov	dword ptr [ebp - 16], eax
	jmp	.LBB105_8
.LBB105_10:
	jmp	.LBB105_15
.LBB105_11:
	jmp	.LBB105_12
.LBB105_12:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	jbe	.LBB105_14
# %bb.13:                               #   in Loop: Header=BB105_12 Depth=1
	mov	eax, dword ptr [.L__profc___cmovd+48]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovd+52], 0
	mov	dword ptr [.L__profc___cmovd+48], eax
	mov	eax, dword ptr [ebp - 24]
	mov	ecx, dword ptr [ebp + 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp + 16]
	mov	byte ptr [eax + ecx], dl
	jmp	.LBB105_12
.LBB105_14:
	jmp	.LBB105_15
.LBB105_15:
	add	esp, 20
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
	.cfi_endproc
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	4, 0x90
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___cmovh]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovh+4], 0
	mov	dword ptr [.L__profc___cmovh], eax
	mov	eax, dword ptr [ebp + 16]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, dword ptr [ebp - 16]
	jb	.LBB106_3
# %bb.1:
	mov	eax, dword ptr [.L__profc___cmovh+16]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovh+20], 0
	mov	dword ptr [.L__profc___cmovh+16], eax
	mov	eax, dword ptr [ebp - 12]
	mov	ecx, dword ptr [ebp - 16]
	add	ecx, dword ptr [ebp + 16]
	cmp	eax, ecx
	ja	.LBB106_3
# %bb.2:
	mov	eax, dword ptr [.L__profc___cmovh+24]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovh+28], 0
	mov	dword ptr [.L__profc___cmovh+24], eax
	jmp	.LBB106_10
.LBB106_3:
	mov	eax, dword ptr [.L__profc___cmovh+8]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovh+12], 0
	mov	dword ptr [.L__profc___cmovh+8], eax
	mov	dword ptr [ebp - 4], 0
.LBB106_4:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 4]
	cmp	eax, dword ptr [ebp - 8]
	jae	.LBB106_7
# %bb.5:                                #   in Loop: Header=BB106_4 Depth=1
	mov	eax, dword ptr [.L__profc___cmovh+32]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovh+36], 0
	mov	dword ptr [.L__profc___cmovh+32], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp - 4]
	mov	dx, word ptr [eax + 2*ecx]
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	mov	word ptr [eax + 2*ecx], dx
# %bb.6:                                #   in Loop: Header=BB106_4 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB106_4
.LBB106_7:
	mov	eax, dword ptr [ebp + 16]
	and	eax, 1
	cmp	eax, 0
	je	.LBB106_9
# %bb.8:
	mov	eax, dword ptr [.L__profc___cmovh+40]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovh+44], 0
	mov	dword ptr [.L__profc___cmovh+40], eax
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp + 16]
	sub	ecx, 1
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 12]
	mov	ecx, dword ptr [ebp + 16]
	sub	ecx, 1
	mov	byte ptr [eax + ecx], dl
.LBB106_9:
	jmp	.LBB106_14
.LBB106_10:
	jmp	.LBB106_11
.LBB106_11:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	jbe	.LBB106_13
# %bb.12:                               #   in Loop: Header=BB106_11 Depth=1
	mov	eax, dword ptr [.L__profc___cmovh+48]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovh+52], 0
	mov	dword ptr [.L__profc___cmovh+48], eax
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp + 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 12]
	mov	ecx, dword ptr [ebp + 16]
	mov	byte ptr [eax + ecx], dl
	jmp	.LBB106_11
.LBB106_13:
	jmp	.LBB106_14
.LBB106_14:
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
	.cfi_endproc
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	4, 0x90
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___cmovw]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovw+4], 0
	mov	dword ptr [.L__profc___cmovw], eax
	mov	eax, dword ptr [ebp + 16]
	shr	eax, 2
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 16]
	and	eax, -4
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 20], eax
	mov	eax, dword ptr [ebp - 16]
	cmp	eax, dword ptr [ebp - 20]
	jb	.LBB107_3
# %bb.1:
	mov	eax, dword ptr [.L__profc___cmovw+16]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovw+20], 0
	mov	dword ptr [.L__profc___cmovw+16], eax
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp - 20]
	add	ecx, dword ptr [ebp + 16]
	cmp	eax, ecx
	ja	.LBB107_3
# %bb.2:
	mov	eax, dword ptr [.L__profc___cmovw+24]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovw+28], 0
	mov	dword ptr [.L__profc___cmovw+24], eax
	jmp	.LBB107_11
.LBB107_3:
	mov	eax, dword ptr [.L__profc___cmovw+8]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovw+12], 0
	mov	dword ptr [.L__profc___cmovw+8], eax
	mov	dword ptr [ebp - 4], 0
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 4]
	cmp	eax, dword ptr [ebp - 8]
	jae	.LBB107_7
# %bb.5:                                #   in Loop: Header=BB107_4 Depth=1
	mov	eax, dword ptr [.L__profc___cmovw+32]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovw+36], 0
	mov	dword ptr [.L__profc___cmovw+32], eax
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp - 4]
	mov	edx, dword ptr [eax + 4*ecx]
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	mov	dword ptr [eax + 4*ecx], edx
# %bb.6:                                #   in Loop: Header=BB107_4 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB107_4
.LBB107_7:
	jmp	.LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	cmp	eax, dword ptr [ebp - 12]
	jbe	.LBB107_10
# %bb.9:                                #   in Loop: Header=BB107_8 Depth=1
	mov	eax, dword ptr [.L__profc___cmovw+40]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovw+44], 0
	mov	dword ptr [.L__profc___cmovw+40], eax
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp - 12]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp - 12]
	mov	byte ptr [eax + ecx], dl
	mov	eax, dword ptr [ebp - 12]
	add	eax, 1
	mov	dword ptr [ebp - 12], eax
	jmp	.LBB107_8
.LBB107_10:
	jmp	.LBB107_15
.LBB107_11:
	jmp	.LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	jbe	.LBB107_14
# %bb.13:                               #   in Loop: Header=BB107_12 Depth=1
	mov	eax, dword ptr [.L__profc___cmovw+48]
	add	eax, 1
	adc	dword ptr [.L__profc___cmovw+52], 0
	mov	dword ptr [.L__profc___cmovw+48], eax
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp + 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp + 16]
	mov	byte ptr [eax + ecx], dl
	jmp	.LBB107_12
.LBB107_14:
	jmp	.LBB107_15
.LBB107_15:
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
	.cfi_endproc
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	4, 0x90
	.type	__modi,@function
__modi:                                 # @__modi
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___modi]
	add	eax, 1
	adc	dword ptr [.L__profc___modi+4], 0
	mov	dword ptr [.L__profc___modi], eax
	mov	eax, dword ptr [ebp + 8]
	cdq
	idiv	dword ptr [ebp + 12]
	mov	eax, edx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
	.cfi_endproc
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	4, 0x90
	.type	__uitod,@function
__uitod:                                # @__uitod
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 8
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___uitod]
	add	eax, 1
	adc	dword ptr [.L__profc___uitod+4], 0
	mov	dword ptr [.L__profc___uitod], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [esp], eax
	mov	dword ptr [esp + 4], 0
	fild	qword ptr [esp]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
	.cfi_endproc
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	4, 0x90
	.type	__uitof,@function
__uitof:                                # @__uitof
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 8
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___uitof]
	add	eax, 1
	adc	dword ptr [.L__profc___uitof+4], 0
	mov	dword ptr [.L__profc___uitof], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [esp], eax
	mov	dword ptr [esp + 4], 0
	fild	qword ptr [esp]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __ulltod
.LCPI111_0:
	.quad	6881500230622117888             # 0x5f80000000000000
	.text
	.globl	__ulltod
	.p2align	4, 0x90
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 24
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 20], eax
	mov	eax, dword ptr [.L__profc___ulltod]
	add	eax, 1
	adc	dword ptr [.L__profc___ulltod+4], 0
	mov	dword ptr [.L__profc___ulltod], eax
	mov	ecx, dword ptr [esp + 16]
	mov	eax, dword ptr [esp + 20]
	mov	dword ptr [esp + 12], eax
	mov	dword ptr [esp + 8], ecx
	shr	eax, 31
	fild	qword ptr [esp + 8]
	fld	dword ptr [4*eax + .LCPI111_0]
	faddp	st(1), st
	fstp	qword ptr [esp]
	fld	qword ptr [esp]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __ulltof
.LCPI112_0:
	.quad	6881500230622117888             # 0x5f80000000000000
	.text
	.globl	__ulltof
	.p2align	4, 0x90
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 24
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 20], eax
	mov	eax, dword ptr [.L__profc___ulltof]
	add	eax, 1
	adc	dword ptr [.L__profc___ulltof+4], 0
	mov	dword ptr [.L__profc___ulltof], eax
	mov	ecx, dword ptr [esp + 16]
	mov	eax, dword ptr [esp + 20]
	mov	dword ptr [esp + 12], eax
	mov	dword ptr [esp + 8], ecx
	shr	eax, 31
	fild	qword ptr [esp + 8]
	fld	dword ptr [4*eax + .LCPI112_0]
	faddp	st(1), st
	fstp	dword ptr [esp + 4]
	fld	dword ptr [esp + 4]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
	.cfi_endproc
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	4, 0x90
	.type	__umodi,@function
__umodi:                                # @__umodi
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___umodi]
	add	eax, 1
	adc	dword ptr [.L__profc___umodi+4], 0
	mov	dword ptr [.L__profc___umodi], eax
	mov	eax, dword ptr [ebp + 8]
	xor	edx, edx
	div	dword ptr [ebp + 12]
	mov	eax, edx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
	.cfi_endproc
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	4, 0x90
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___clzhi2]
	add	eax, 1
	adc	dword ptr [.L__profc___clzhi2+4], 0
	mov	dword ptr [.L__profc___clzhi2], eax
	mov	dword ptr [ebp - 4], 0
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB114_6
# %bb.2:                                #   in Loop: Header=BB114_1 Depth=1
	mov	eax, dword ptr [.L__profc___clzhi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___clzhi2+12], 0
	mov	dword ptr [.L__profc___clzhi2+8], eax
	movzx	eax, word ptr [ebp + 8]
	mov	ecx, 15
	sub	ecx, dword ptr [ebp - 4]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB114_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___clzhi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___clzhi2+20], 0
	mov	dword ptr [.L__profc___clzhi2+16], eax
	jmp	.LBB114_6
.LBB114_4:                              #   in Loop: Header=BB114_1 Depth=1
	jmp	.LBB114_5
.LBB114_5:                              #   in Loop: Header=BB114_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB114_1
.LBB114_6:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
	.cfi_endproc
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	4, 0x90
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___ctzhi2]
	add	eax, 1
	adc	dword ptr [.L__profc___ctzhi2+4], 0
	mov	dword ptr [.L__profc___ctzhi2], eax
	mov	dword ptr [ebp - 4], 0
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB115_6
# %bb.2:                                #   in Loop: Header=BB115_1 Depth=1
	mov	eax, dword ptr [.L__profc___ctzhi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___ctzhi2+12], 0
	mov	dword ptr [.L__profc___ctzhi2+8], eax
	movzx	eax, word ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB115_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___ctzhi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___ctzhi2+20], 0
	mov	dword ptr [.L__profc___ctzhi2+16], eax
	jmp	.LBB115_6
.LBB115_4:                              #   in Loop: Header=BB115_1 Depth=1
	jmp	.LBB115_5
.LBB115_5:                              #   in Loop: Header=BB115_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB115_1
.LBB115_6:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function __fixunssfsi
.LCPI116_0:
	.long	0x47000000                      # float 32768
.LCPI116_1:
	.long	0xc7000000                      # float -32768
	.text
	.globl	__fixunssfsi
	.p2align	4, 0x90
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc___fixunssfsi]
	add	eax, 1
	adc	dword ptr [.L__profc___fixunssfsi+4], 0
	mov	dword ptr [.L__profc___fixunssfsi], eax
	fld	dword ptr [ebp + 8]
	fld	dword ptr [.LCPI116_0]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jb	.LBB116_2
	jmp	.LBB116_1
.LBB116_1:
	mov	eax, dword ptr [.L__profc___fixunssfsi+8]
	add	eax, 1
	adc	dword ptr [.L__profc___fixunssfsi+12], 0
	mov	dword ptr [.L__profc___fixunssfsi+8], eax
	fld	dword ptr [ebp + 8]
	fld	dword ptr [.LCPI116_1]
	faddp	st(1), st
	fnstcw	word ptr [ebp - 14]
	movzx	eax, word ptr [ebp - 14]
	or	eax, 3072
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp - 16], ax
	fldcw	word ptr [ebp - 16]
	fistp	dword ptr [ebp - 12]
	fldcw	word ptr [ebp - 14]
	mov	eax, dword ptr [ebp - 12]
	add	eax, 32768
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB116_3
.LBB116_2:
	fld	dword ptr [ebp + 8]
	fnstcw	word ptr [ebp - 18]
	movzx	eax, word ptr [ebp - 18]
	or	eax, 3072
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp - 20], ax
	fldcw	word ptr [ebp - 20]
	fistp	dword ptr [ebp - 8]
	fldcw	word ptr [ebp - 18]
	mov	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 4], eax
.LBB116_3:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
	.cfi_endproc
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	4, 0x90
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___parityhi2]
	add	eax, 1
	adc	dword ptr [.L__profc___parityhi2+4], 0
	mov	dword ptr [.L__profc___parityhi2], eax
	mov	dword ptr [ebp - 8], 0
	mov	dword ptr [ebp - 4], 0
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB117_6
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	mov	eax, dword ptr [.L__profc___parityhi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___parityhi2+12], 0
	mov	dword ptr [.L__profc___parityhi2+8], eax
	movzx	eax, word ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB117_4
# %bb.3:                                #   in Loop: Header=BB117_1 Depth=1
	mov	eax, dword ptr [.L__profc___parityhi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___parityhi2+20], 0
	mov	dword ptr [.L__profc___parityhi2+16], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	jmp	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB117_1
.LBB117_6:
	mov	eax, dword ptr [ebp - 8]
	and	eax, 1
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	4, 0x90
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___popcounthi2]
	add	eax, 1
	adc	dword ptr [.L__profc___popcounthi2+4], 0
	mov	dword ptr [.L__profc___popcounthi2], eax
	mov	dword ptr [ebp - 8], 0
	mov	dword ptr [ebp - 4], 0
.LBB118_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB118_6
# %bb.2:                                #   in Loop: Header=BB118_1 Depth=1
	mov	eax, dword ptr [.L__profc___popcounthi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___popcounthi2+12], 0
	mov	dword ptr [.L__profc___popcounthi2+8], eax
	movzx	eax, word ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	mov	edx, 1
                                        # kill: def $cl killed $ecx
	shl	edx, cl
	mov	ecx, edx
	and	eax, ecx
	cmp	eax, 0
	je	.LBB118_4
# %bb.3:                                #   in Loop: Header=BB118_1 Depth=1
	mov	eax, dword ptr [.L__profc___popcounthi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___popcounthi2+20], 0
	mov	dword ptr [.L__profc___popcounthi2+16], eax
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
.LBB118_4:                              #   in Loop: Header=BB118_1 Depth=1
	jmp	.LBB118_5
.LBB118_5:                              #   in Loop: Header=BB118_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB118_1
.LBB118_6:
	mov	eax, dword ptr [ebp - 8]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	4, 0x90
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___mulsi3_iq2000]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3_iq2000+4], 0
	mov	dword ptr [.L__profc___mulsi3_iq2000], eax
	mov	dword ptr [ebp - 4], 0
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 8], 0
	je	.LBB119_5
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	mov	eax, dword ptr [.L__profc___mulsi3_iq2000+8]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3_iq2000+12], 0
	mov	dword ptr [.L__profc___mulsi3_iq2000+8], eax
	mov	eax, dword ptr [ebp + 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB119_4
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
	mov	eax, dword ptr [.L__profc___mulsi3_iq2000+16]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3_iq2000+20], 0
	mov	dword ptr [.L__profc___mulsi3_iq2000+16], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 4], eax
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	shr	eax
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB119_1
.LBB119_5:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	4, 0x90
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___mulsi3_lm32]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3_lm32+4], 0
	mov	dword ptr [.L__profc___mulsi3_lm32], eax
	mov	dword ptr [ebp - 8], 0
	cmp	dword ptr [ebp + 8], 0
	jne	.LBB120_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___mulsi3_lm32+8]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3_lm32+12], 0
	mov	dword ptr [.L__profc___mulsi3_lm32+8], eax
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB120_8
.LBB120_2:
	jmp	.LBB120_3
.LBB120_3:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 12], 0
	je	.LBB120_7
# %bb.4:                                #   in Loop: Header=BB120_3 Depth=1
	mov	eax, dword ptr [.L__profc___mulsi3_lm32+16]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3_lm32+20], 0
	mov	dword ptr [.L__profc___mulsi3_lm32+16], eax
	mov	eax, dword ptr [ebp + 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB120_6
# %bb.5:                                #   in Loop: Header=BB120_3 Depth=1
	mov	eax, dword ptr [.L__profc___mulsi3_lm32+24]
	add	eax, 1
	adc	dword ptr [.L__profc___mulsi3_lm32+28], 0
	mov	dword ptr [.L__profc___mulsi3_lm32+24], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 8], eax
.LBB120_6:                              #   in Loop: Header=BB120_3 Depth=1
	mov	eax, dword ptr [ebp + 8]
	shl	eax
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB120_3
.LBB120_7:
	mov	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 4], eax
.LBB120_8:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	4, 0x90
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___udivmodsi4]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+4], 0
	mov	dword ptr [.L__profc___udivmodsi4], eax
	mov	dword ptr [ebp - 8], 1
	mov	dword ptr [ebp - 12], 0
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jae	.LBB121_6
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4+32]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+36], 0
	mov	dword ptr [.L__profc___udivmodsi4+32], eax
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp - 8], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB121_6
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4+40]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+44], 0
	mov	dword ptr [.L__profc___udivmodsi4+40], eax
# %bb.4:                                #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4+16]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+20], 0
	mov	dword ptr [.L__profc___udivmodsi4+16], eax
	mov	eax, dword ptr [ebp + 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jne	.LBB121_5
	jmp	.LBB121_6
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	mov	al, byte ptr [ebp - 14]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc___udivmodsi4+24]
	add	ecx, 1
	adc	dword ptr [.L__profc___udivmodsi4+28], 0
	mov	dword ptr [.L__profc___udivmodsi4+24], ecx
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB121_6:                              #   in Loop: Header=BB121_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB121_7
	jmp	.LBB121_8
.LBB121_7:                              #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4+8]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+12], 0
	mov	dword ptr [.L__profc___udivmodsi4+8], eax
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp - 8]
	shl	eax
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB121_1
.LBB121_8:
	jmp	.LBB121_9
.LBB121_9:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB121_13
# %bb.10:                               #   in Loop: Header=BB121_9 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4+48]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+52], 0
	mov	dword ptr [.L__profc___udivmodsi4+48], eax
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jb	.LBB121_12
# %bb.11:                               #   in Loop: Header=BB121_9 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4+56]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+60], 0
	mov	dword ptr [.L__profc___udivmodsi4+56], eax
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	sub	eax, ecx
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp - 8]
	or	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB121_12:                             #   in Loop: Header=BB121_9 Depth=1
	mov	eax, dword ptr [ebp - 8]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB121_9
.LBB121_13:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB121_15
# %bb.14:
	mov	eax, dword ptr [.L__profc___udivmodsi4+64]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4+68], 0
	mov	dword ptr [.L__profc___udivmodsi4+64], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB121_16
.LBB121_15:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 4], eax
.LBB121_16:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	4, 0x90
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	fld	dword ptr [ebp + 12]
	fstp	st(0)
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc___mspabi_cmpf]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_cmpf+4], 0
	mov	dword ptr [.L__profc___mspabi_cmpf], eax
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp + 12]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB122_2
	jmp	.LBB122_1
.LBB122_1:
	mov	eax, dword ptr [.L__profc___mspabi_cmpf+8]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_cmpf+12], 0
	mov	dword ptr [.L__profc___mspabi_cmpf+8], eax
	mov	dword ptr [ebp - 4], -1
	jmp	.LBB122_5
.LBB122_2:
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp + 12]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB122_4
	jmp	.LBB122_3
.LBB122_3:
	mov	eax, dword ptr [.L__profc___mspabi_cmpf+16]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_cmpf+20], 0
	mov	dword ptr [.L__profc___mspabi_cmpf+16], eax
	mov	dword ptr [ebp - 4], 1
	jmp	.LBB122_5
.LBB122_4:
	mov	dword ptr [ebp - 4], 0
.LBB122_5:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	4, 0x90
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 24
	fld	qword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 8]
	fstp	qword ptr [esp]
	mov	eax, dword ptr [.L__profc___mspabi_cmpd]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_cmpd+4], 0
	mov	dword ptr [.L__profc___mspabi_cmpd], eax
	fld	qword ptr [esp + 8]
	fld	qword ptr [esp]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB123_2
	jmp	.LBB123_1
.LBB123_1:
	mov	eax, dword ptr [.L__profc___mspabi_cmpd+8]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_cmpd+12], 0
	mov	dword ptr [.L__profc___mspabi_cmpd+8], eax
	mov	dword ptr [esp + 20], -1
	jmp	.LBB123_5
.LBB123_2:
	fld	qword ptr [esp + 8]
	fld	qword ptr [esp]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB123_4
	jmp	.LBB123_3
.LBB123_3:
	mov	eax, dword ptr [.L__profc___mspabi_cmpd+16]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_cmpd+20], 0
	mov	dword ptr [.L__profc___mspabi_cmpd+16], eax
	mov	dword ptr [esp + 20], 1
	jmp	.LBB123_5
.LBB123_4:
	mov	dword ptr [esp + 20], 0
.LBB123_5:
	mov	eax, dword ptr [esp + 20]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	4, 0x90
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___mspabi_mpysll]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_mpysll+4], 0
	mov	dword ptr [.L__profc___mspabi_mpysll], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
	imul	ecx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	4, 0x90
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___mspabi_mpyull]
	add	eax, 1
	adc	dword ptr [.L__profc___mspabi_mpyull+4], 0
	mov	dword ptr [.L__profc___mspabi_mpyull], eax
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp + 12]
	mul	ecx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
	.cfi_endproc
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	4, 0x90
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___mulhi3]
	add	eax, 1
	adc	dword ptr [.L__profc___mulhi3+4], 0
	mov	dword ptr [.L__profc___mulhi3], eax
	mov	dword ptr [ebp - 8], 0
	mov	dword ptr [ebp - 12], 0
	cmp	dword ptr [ebp + 12], 0
	jge	.LBB126_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___mulhi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___mulhi3+12], 0
	mov	dword ptr [.L__profc___mulhi3+8], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp + 12], eax
	mov	dword ptr [ebp - 8], 1
.LBB126_2:
	mov	byte ptr [ebp - 1], 0
.LBB126_3:                              # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 12], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB126_6
# %bb.4:                                #   in Loop: Header=BB126_3 Depth=1
	mov	eax, dword ptr [.L__profc___mulhi3+24]
	add	eax, 1
	adc	dword ptr [.L__profc___mulhi3+28], 0
	mov	dword ptr [.L__profc___mulhi3+24], eax
	movsx	eax, byte ptr [ebp - 1]
	cmp	eax, 32
	setb	al
	mov	byte ptr [ebp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jne	.LBB126_5
	jmp	.LBB126_6
.LBB126_5:                              #   in Loop: Header=BB126_3 Depth=1
	mov	al, byte ptr [ebp - 14]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc___mulhi3+32]
	add	ecx, 1
	adc	dword ptr [.L__profc___mulhi3+36], 0
	mov	dword ptr [.L__profc___mulhi3+32], ecx
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB126_7
	jmp	.LBB126_11
.LBB126_7:                              #   in Loop: Header=BB126_3 Depth=1
	mov	eax, dword ptr [.L__profc___mulhi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___mulhi3+20], 0
	mov	dword ptr [.L__profc___mulhi3+16], eax
	mov	eax, dword ptr [ebp + 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB126_9
# %bb.8:                                #   in Loop: Header=BB126_3 Depth=1
	mov	eax, dword ptr [.L__profc___mulhi3+40]
	add	eax, 1
	adc	dword ptr [.L__profc___mulhi3+44], 0
	mov	dword ptr [.L__profc___mulhi3+40], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB126_9:                              #   in Loop: Header=BB126_3 Depth=1
	mov	eax, dword ptr [ebp + 8]
	shl	eax
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	sar	eax
	mov	dword ptr [ebp + 12], eax
# %bb.10:                               #   in Loop: Header=BB126_3 Depth=1
	mov	al, byte ptr [ebp - 1]
	add	al, 1
	mov	byte ptr [ebp - 1], al
	jmp	.LBB126_3
.LBB126_11:
	cmp	dword ptr [ebp - 8], 0
	je	.LBB126_13
# %bb.12:
	mov	eax, dword ptr [.L__profc___mulhi3+48]
	add	eax, 1
	adc	dword ptr [.L__profc___mulhi3+52], 0
	mov	dword ptr [.L__profc___mulhi3+48], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 20], eax       # 4-byte Spill
	jmp	.LBB126_14
.LBB126_13:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 20], eax       # 4-byte Spill
.LBB126_14:
	mov	eax, dword ptr [ebp - 20]       # 4-byte Reload
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
	.cfi_endproc
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	4, 0x90
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___divsi3]
	add	eax, 1
	adc	dword ptr [.L__profc___divsi3+4], 0
	mov	dword ptr [.L__profc___divsi3], eax
	mov	dword ptr [ebp - 4], 0
	cmp	dword ptr [ebp + 8], 0
	jge	.LBB127_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___divsi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___divsi3+12], 0
	mov	dword ptr [.L__profc___divsi3+8], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp + 8], eax
	cmp	dword ptr [ebp - 4], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 4], eax
.LBB127_2:
	cmp	dword ptr [ebp + 12], 0
	jge	.LBB127_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___divsi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___divsi3+20], 0
	mov	dword ptr [.L__profc___divsi3+16], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp + 12], eax
	cmp	dword ptr [ebp - 4], 0
	setne	al
	xor	al, -1
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 4], eax
.LBB127_4:
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	xor	edx, edx
	mov	dword ptr [esp], ecx
	mov	dword ptr [esp + 4], eax
	mov	dword ptr [esp + 8], 0
	call	__udivmodsi4
	mov	dword ptr [ebp - 8], eax
	cmp	dword ptr [ebp - 4], 0
	je	.LBB127_6
# %bb.5:
	mov	eax, dword ptr [.L__profc___divsi3+24]
	add	eax, 1
	adc	dword ptr [.L__profc___divsi3+28], 0
	mov	dword ptr [.L__profc___divsi3+24], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 8], eax
.LBB127_6:
	mov	eax, dword ptr [ebp - 8]
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
	.cfi_endproc
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	4, 0x90
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___modsi3]
	add	eax, 1
	adc	dword ptr [.L__profc___modsi3+4], 0
	mov	dword ptr [.L__profc___modsi3], eax
	mov	dword ptr [ebp - 4], 0
	cmp	dword ptr [ebp + 8], 0
	jge	.LBB128_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___modsi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___modsi3+12], 0
	mov	dword ptr [.L__profc___modsi3+8], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp + 8], eax
	mov	dword ptr [ebp - 4], 1
.LBB128_2:
	cmp	dword ptr [ebp + 12], 0
	jge	.LBB128_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___modsi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___modsi3+20], 0
	mov	dword ptr [.L__profc___modsi3+16], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp + 12], eax
.LBB128_4:
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp], ecx
	mov	dword ptr [esp + 4], eax
	mov	dword ptr [esp + 8], 1
	call	__udivmodsi4
	mov	dword ptr [ebp - 8], eax
	cmp	dword ptr [ebp - 4], 0
	je	.LBB128_6
# %bb.5:
	mov	eax, dword ptr [.L__profc___modsi3+24]
	add	eax, 1
	adc	dword ptr [.L__profc___modsi3+28], 0
	mov	dword ptr [.L__profc___modsi3+24], eax
	xor	eax, eax
	sub	eax, dword ptr [ebp - 8]
	mov	dword ptr [ebp - 8], eax
.LBB128_6:
	mov	eax, dword ptr [ebp - 8]
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	4, 0x90
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 8
	mov	eax, dword ptr [ebp + 16]
	mov	ax, word ptr [ebp + 12]
	mov	ax, word ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___udivmodhi4]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+4], 0
	mov	dword ptr [.L__profc___udivmodhi4], eax
	mov	word ptr [ebp - 4], 1
	mov	word ptr [ebp - 6], 0
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	movzx	ecx, word ptr [ebp + 12]
	movzx	edx, word ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [ebp - 7], al          # 1-byte Spill
	jge	.LBB129_6
# %bb.2:                                #   in Loop: Header=BB129_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodhi4+32]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+36], 0
	mov	dword ptr [.L__profc___udivmodhi4+32], eax
	movzx	ecx, word ptr [ebp - 4]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [ebp - 7], al          # 1-byte Spill
	je	.LBB129_6
# %bb.3:                                #   in Loop: Header=BB129_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodhi4+40]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+44], 0
	mov	dword ptr [.L__profc___udivmodhi4+40], eax
# %bb.4:                                #   in Loop: Header=BB129_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodhi4+16]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+20], 0
	mov	dword ptr [.L__profc___udivmodhi4+16], eax
	movzx	eax, word ptr [ebp + 12]
	and	eax, 32768
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 8], al          # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 7], al          # 1-byte Spill
	jne	.LBB129_5
	jmp	.LBB129_6
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	mov	al, byte ptr [ebp - 8]          # 1-byte Reload
	mov	ecx, dword ptr [.L__profc___udivmodhi4+24]
	add	ecx, 1
	adc	dword ptr [.L__profc___udivmodhi4+28], 0
	mov	dword ptr [.L__profc___udivmodhi4+24], ecx
	mov	byte ptr [ebp - 7], al          # 1-byte Spill
.LBB129_6:                              #   in Loop: Header=BB129_1 Depth=1
	mov	al, byte ptr [ebp - 7]          # 1-byte Reload
	test	al, 1
	jne	.LBB129_7
	jmp	.LBB129_8
.LBB129_7:                              #   in Loop: Header=BB129_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodhi4+8]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+12], 0
	mov	dword ptr [.L__profc___udivmodhi4+8], eax
	movzx	eax, word ptr [ebp + 12]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp + 12], ax
	movzx	eax, word ptr [ebp - 4]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp - 4], ax
	jmp	.LBB129_1
.LBB129_8:
	jmp	.LBB129_9
.LBB129_9:                              # =>This Inner Loop Header: Depth=1
	cmp	word ptr [ebp - 4], 0
	je	.LBB129_13
# %bb.10:                               #   in Loop: Header=BB129_9 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodhi4+48]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+52], 0
	mov	dword ptr [.L__profc___udivmodhi4+48], eax
	movzx	eax, word ptr [ebp + 8]
	movzx	ecx, word ptr [ebp + 12]
	cmp	eax, ecx
	jl	.LBB129_12
# %bb.11:                               #   in Loop: Header=BB129_9 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodhi4+56]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+60], 0
	mov	dword ptr [.L__profc___udivmodhi4+56], eax
	movzx	ecx, word ptr [ebp + 12]
	movzx	eax, word ptr [ebp + 8]
	sub	eax, ecx
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp + 8], ax
	movzx	ecx, word ptr [ebp - 4]
	movzx	eax, word ptr [ebp - 6]
	or	eax, ecx
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp - 6], ax
.LBB129_12:                             #   in Loop: Header=BB129_9 Depth=1
	movzx	eax, word ptr [ebp - 4]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp - 4], ax
	movzx	eax, word ptr [ebp + 12]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp + 12], ax
	jmp	.LBB129_9
.LBB129_13:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB129_15
# %bb.14:
	mov	eax, dword ptr [.L__profc___udivmodhi4+64]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodhi4+68], 0
	mov	dword ptr [.L__profc___udivmodhi4+64], eax
	mov	ax, word ptr [ebp + 8]
	mov	word ptr [ebp - 2], ax
	jmp	.LBB129_16
.LBB129_15:
	mov	ax, word ptr [ebp - 6]
	mov	word ptr [ebp - 2], ax
.LBB129_16:
	mov	ax, word ptr [ebp - 2]
	add	esp, 8
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	4, 0x90
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 16
	mov	eax, dword ptr [ebp + 16]
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+4], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc], eax
	mov	dword ptr [ebp - 8], 1
	mov	dword ptr [ebp - 12], 0
.LBB130_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jae	.LBB130_6
# %bb.2:                                #   in Loop: Header=BB130_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc+32]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+36], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+32], eax
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp - 8], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB130_6
# %bb.3:                                #   in Loop: Header=BB130_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc+40]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+44], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+40], eax
# %bb.4:                                #   in Loop: Header=BB130_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc+16]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+20], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+16], eax
	mov	eax, dword ptr [ebp + 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 14], al         # 1-byte Spill
	test	al, 1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jne	.LBB130_5
	jmp	.LBB130_6
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	mov	al, byte ptr [ebp - 14]         # 1-byte Reload
	mov	ecx, dword ptr [.L__profc___udivmodsi4_libgcc+24]
	add	ecx, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+28], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+24], ecx
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB130_6:                              #   in Loop: Header=BB130_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB130_7
	jmp	.LBB130_8
.LBB130_7:                              #   in Loop: Header=BB130_1 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc+8]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+12], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+8], eax
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp - 8]
	shl	eax
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB130_1
.LBB130_8:
	jmp	.LBB130_9
.LBB130_9:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB130_13
# %bb.10:                               #   in Loop: Header=BB130_9 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc+48]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+52], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+48], eax
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jb	.LBB130_12
# %bb.11:                               #   in Loop: Header=BB130_9 Depth=1
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc+56]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+60], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+56], eax
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	sub	eax, ecx
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp - 8]
	or	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB130_12:                             #   in Loop: Header=BB130_9 Depth=1
	mov	eax, dword ptr [ebp - 8]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB130_9
.LBB130_13:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB130_15
# %bb.14:
	mov	eax, dword ptr [.L__profc___udivmodsi4_libgcc+64]
	add	eax, 1
	adc	dword ptr [.L__profc___udivmodsi4_libgcc+68], 0
	mov	dword ptr [.L__profc___udivmodsi4_libgcc+64], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB130_16
.LBB130_15:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 4], eax
.LBB130_16:
	mov	eax, dword ptr [ebp - 4]
	add	esp, 16
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
	.cfi_endproc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	4, 0x90
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 40
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	edx, dword ptr [ebp + 16]
	mov	dword ptr [esp + 24], ecx
	mov	dword ptr [esp + 28], eax
	mov	eax, dword ptr [.L__profc___ashldi3]
	add	eax, 1
	adc	dword ptr [.L__profc___ashldi3+4], 0
	mov	dword ptr [.L__profc___ashldi3], eax
	mov	dword ptr [esp + 20], 32
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [ebp + 16]
	and	eax, 32
	cmp	eax, 0
	je	.LBB131_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___ashldi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___ashldi3+12], 0
	mov	dword ptr [.L__profc___ashldi3+8], eax
	mov	dword ptr [esp + 4], 0
	mov	eax, dword ptr [esp + 12]
	mov	ecx, dword ptr [ebp + 16]
	sub	ecx, 32
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	dword ptr [esp + 8], eax
	jmp	.LBB131_5
.LBB131_2:
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB131_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___ashldi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___ashldi3+20], 0
	mov	dword ptr [.L__profc___ashldi3+16], eax
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
	jmp	.LBB131_6
.LBB131_4:
	mov	eax, dword ptr [esp + 12]
	mov	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [esp + 12]
	mov	ecx, 32
	sub	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	mov	dword ptr [esp + 8], eax
.LBB131_5:
	mov	eax, dword ptr [esp + 4]
	mov	ecx, dword ptr [esp + 8]
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
.LBB131_6:
	mov	eax, dword ptr [esp + 32]
	mov	edx, dword ptr [esp + 36]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
	.cfi_endproc
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	4, 0x90
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 40
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	edx, dword ptr [ebp + 16]
	mov	dword ptr [esp + 24], ecx
	mov	dword ptr [esp + 28], eax
	mov	eax, dword ptr [.L__profc___ashrdi3]
	add	eax, 1
	adc	dword ptr [.L__profc___ashrdi3+4], 0
	mov	dword ptr [.L__profc___ashrdi3], eax
	mov	dword ptr [esp + 20], 32
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [ebp + 16]
	and	eax, 32
	cmp	eax, 0
	je	.LBB132_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___ashrdi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___ashrdi3+12], 0
	mov	dword ptr [.L__profc___ashrdi3+8], eax
	mov	eax, dword ptr [esp + 16]
	sar	eax, 31
	mov	dword ptr [esp + 8], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [ebp + 16]
	sub	ecx, 32
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	mov	dword ptr [esp + 4], eax
	jmp	.LBB132_5
.LBB132_2:
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB132_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___ashrdi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___ashrdi3+20], 0
	mov	dword ptr [.L__profc___ashrdi3+16], eax
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
	jmp	.LBB132_6
.LBB132_4:
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	mov	dword ptr [esp + 8], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, 32
	sub	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [esp + 12]
	mov	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	mov	dword ptr [esp + 4], eax
.LBB132_5:
	mov	eax, dword ptr [esp + 4]
	mov	ecx, dword ptr [esp + 8]
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
.LBB132_6:
	mov	eax, dword ptr [esp + 32]
	mov	edx, dword ptr [esp + 36]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
	.cfi_endproc
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	4, 0x90
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	and	esp, -8
	sub	esp, 16
	.cfi_offset esi, -12
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp], ecx
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [.L__profc___bswapdi2]
	add	eax, 1
	adc	dword ptr [.L__profc___bswapdi2+4], 0
	mov	dword ptr [.L__profc___bswapdi2], eax
	mov	ecx, dword ptr [esp]
	mov	edx, dword ptr [esp + 4]
	mov	eax, edx
	shr	eax, 24
	mov	esi, edx
	and	esi, 16711680
	shr	esi, 8
	or	eax, esi
	mov	esi, edx
	and	esi, 65280
	shl	esi, 8
	or	eax, esi
	shl	edx, 24
	or	eax, edx
	mov	edx, ecx
	shr	edx, 24
	mov	esi, ecx
	and	esi, 16711680
	shr	esi, 8
	or	edx, esi
	mov	esi, ecx
	and	esi, 65280
	shl	esi, 8
	or	edx, esi
	shl	ecx, 24
	or	edx, ecx
	lea	esp, [ebp - 4]
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
	.cfi_endproc
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	4, 0x90
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___bswapsi2]
	add	eax, 1
	adc	dword ptr [.L__profc___bswapsi2+4], 0
	mov	dword ptr [.L__profc___bswapsi2], eax
	mov	eax, dword ptr [ebp + 8]
	and	eax, -16777216
	shr	eax, 24
	mov	ecx, dword ptr [ebp + 8]
	and	ecx, 16711680
	shr	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [ebp + 8]
	and	ecx, 65280
	shl	ecx, 8
	or	eax, ecx
	mov	ecx, dword ptr [ebp + 8]
	and	ecx, 255
	shl	ecx, 24
	or	eax, ecx
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
	.cfi_endproc
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	4, 0x90
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 12
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___clzsi2]
	add	eax, 1
	adc	dword ptr [.L__profc___clzsi2+4], 0
	mov	dword ptr [.L__profc___clzsi2], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, -65536
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 4
	mov	dword ptr [ebp - 12], eax
	mov	ecx, 16
	sub	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 65280
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 3
	mov	dword ptr [ebp - 12], eax
	mov	ecx, 8
	sub	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, dword ptr [ebp - 16]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 240
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 2
	mov	dword ptr [ebp - 12], eax
	mov	ecx, 4
	sub	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, dword ptr [ebp - 16]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 12
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax
	mov	dword ptr [ebp - 12], eax
	mov	ecx, 2
	sub	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, dword ptr [ebp - 16]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, 2
	sub	ecx, dword ptr [ebp - 8]
	mov	edx, dword ptr [ebp - 8]
	and	edx, 2
	cmp	edx, 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	xor	edx, edx
	sub	edx, esi
	and	ecx, edx
	add	eax, ecx
	add	esp, 12
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
	.cfi_endproc
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	4, 0x90
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	and	esp, -8
	sub	esp, 40
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, dword ptr [ebp + 20]
	mov	esi, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp + 12]
	mov	dword ptr [esp + 24], esi
	mov	dword ptr [esp + 28], edx
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
	mov	eax, dword ptr [.L__profc___cmpdi2]
	add	eax, 1
	adc	dword ptr [.L__profc___cmpdi2+4], 0
	mov	dword ptr [.L__profc___cmpdi2], eax
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 12], ecx
	mov	dword ptr [esp + 8], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [esp + 20]
	mov	dword ptr [esp + 4], ecx
	mov	dword ptr [esp], eax
	mov	eax, dword ptr [esp + 12]
	cmp	eax, dword ptr [esp + 4]
	jge	.LBB136_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___cmpdi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___cmpdi2+12], 0
	mov	dword ptr [.L__profc___cmpdi2+8], eax
	mov	dword ptr [esp + 32], 0
	jmp	.LBB136_9
.LBB136_2:
	mov	eax, dword ptr [esp + 12]
	cmp	eax, dword ptr [esp + 4]
	jle	.LBB136_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___cmpdi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___cmpdi2+20], 0
	mov	dword ptr [.L__profc___cmpdi2+16], eax
	mov	dword ptr [esp + 32], 2
	jmp	.LBB136_9
.LBB136_4:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jae	.LBB136_6
# %bb.5:
	mov	eax, dword ptr [.L__profc___cmpdi2+24]
	add	eax, 1
	adc	dword ptr [.L__profc___cmpdi2+28], 0
	mov	dword ptr [.L__profc___cmpdi2+24], eax
	mov	dword ptr [esp + 32], 0
	jmp	.LBB136_9
.LBB136_6:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jbe	.LBB136_8
# %bb.7:
	mov	eax, dword ptr [.L__profc___cmpdi2+32]
	add	eax, 1
	adc	dword ptr [.L__profc___cmpdi2+36], 0
	mov	dword ptr [.L__profc___cmpdi2+32], eax
	mov	dword ptr [esp + 32], 2
	jmp	.LBB136_9
.LBB136_8:
	mov	dword ptr [esp + 32], 1
.LBB136_9:
	mov	eax, dword ptr [esp + 32]
	lea	esp, [ebp - 4]
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	4, 0x90
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	edi
	push	esi
	and	esp, -8
	sub	esp, 32
	.cfi_offset esi, -16
	.cfi_offset edi, -12
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, dword ptr [ebp + 20]
	mov	esi, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp + 12]
	mov	dword ptr [esp + 24], esi
	mov	dword ptr [esp + 28], edx
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
	mov	eax, dword ptr [.L__profc___aeabi_lcmp]
	add	eax, 1
	adc	dword ptr [.L__profc___aeabi_lcmp+4], 0
	mov	dword ptr [.L__profc___aeabi_lcmp], eax
	mov	ecx, dword ptr [esp + 24]
	mov	edx, dword ptr [esp + 28]
	mov	esi, dword ptr [esp + 16]
	mov	edi, dword ptr [esp + 20]
	mov	eax, esp
	mov	dword ptr [eax + 12], edi
	mov	dword ptr [eax + 8], esi
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	__cmpdi2
	sub	eax, 1
	lea	esp, [ebp - 8]
	pop	esi
	pop	edi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
	.cfi_endproc
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	4, 0x90
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	sub	esp, 12
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___ctzsi2]
	add	eax, 1
	adc	dword ptr [.L__profc___ctzsi2+4], 0
	mov	dword ptr [.L__profc___ctzsi2], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 65535
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 4
	mov	dword ptr [ebp - 12], eax
	mov	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 255
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 3
	mov	dword ptr [ebp - 12], eax
	mov	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, dword ptr [ebp - 16]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 15
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax, 2
	mov	dword ptr [ebp - 12], eax
	mov	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, dword ptr [ebp - 16]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 3
	cmp	eax, 0
	sete	al
	and	al, 1
	movzx	eax, al
	shl	eax
	mov	dword ptr [ebp - 12], eax
	mov	ecx, dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 8]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 8]
	and	eax, 3
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 12]
	add	eax, dword ptr [ebp - 16]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 16]
	mov	edx, dword ptr [ebp - 8]
	shr	edx
	mov	ecx, 2
	sub	ecx, edx
	mov	edx, dword ptr [ebp - 8]
	and	edx, 1
	cmp	edx, 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	xor	edx, edx
	sub	edx, esi
	and	ecx, edx
	add	eax, ecx
	add	esp, 12
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
	.cfi_endproc
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	4, 0x90
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 40
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	edx, dword ptr [ebp + 16]
	mov	dword ptr [esp + 24], ecx
	mov	dword ptr [esp + 28], eax
	mov	eax, dword ptr [.L__profc___lshrdi3]
	add	eax, 1
	adc	dword ptr [.L__profc___lshrdi3+4], 0
	mov	dword ptr [.L__profc___lshrdi3], eax
	mov	dword ptr [esp + 20], 32
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [ebp + 16]
	and	eax, 32
	cmp	eax, 0
	je	.LBB139_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___lshrdi3+8]
	add	eax, 1
	adc	dword ptr [.L__profc___lshrdi3+12], 0
	mov	dword ptr [.L__profc___lshrdi3+8], eax
	mov	dword ptr [esp + 8], 0
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [ebp + 16]
	sub	ecx, 32
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [esp + 4], eax
	jmp	.LBB139_5
.LBB139_2:
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB139_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___lshrdi3+16]
	add	eax, 1
	adc	dword ptr [.L__profc___lshrdi3+20], 0
	mov	dword ptr [.L__profc___lshrdi3+16], eax
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
	jmp	.LBB139_6
.LBB139_4:
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shr	eax, cl
	mov	dword ptr [esp + 8], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, 32
	sub	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shl	eax, cl
	mov	edx, dword ptr [esp + 12]
	mov	ecx, dword ptr [ebp + 16]
                                        # kill: def $cl killed $ecx
	shr	edx, cl
	mov	ecx, edx
	or	eax, ecx
	mov	dword ptr [esp + 4], eax
.LBB139_5:
	mov	eax, dword ptr [esp + 4]
	mov	ecx, dword ptr [esp + 8]
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
.LBB139_6:
	mov	eax, dword ptr [esp + 32]
	mov	edx, dword ptr [esp + 36]
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
	.cfi_endproc
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	4, 0x90
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 20
	mov	eax, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___muldsi3]
	add	eax, 1
	adc	dword ptr [.L__profc___muldsi3+4], 0
	mov	dword ptr [.L__profc___muldsi3], eax
	mov	dword ptr [ebp - 12], 16
	mov	dword ptr [ebp - 16], 65535
	movzx	eax, word ptr [ebp + 8]
	movzx	ecx, word ptr [ebp + 12]
	imul	eax, ecx
	mov	dword ptr [ebp - 8], eax
	movzx	eax, word ptr [ebp - 6]
	mov	dword ptr [ebp - 20], eax
	movzx	eax, word ptr [ebp - 8]
	mov	dword ptr [ebp - 8], eax
	movzx	ecx, word ptr [ebp + 10]
	movzx	eax, word ptr [ebp + 12]
	imul	ecx, eax
	mov	eax, dword ptr [ebp - 20]
	add	eax, ecx
	mov	dword ptr [ebp - 20], eax
	mov	ecx, dword ptr [ebp - 20]
	shl	ecx, 16
	mov	eax, dword ptr [ebp - 8]
	add	eax, ecx
	mov	dword ptr [ebp - 8], eax
	movzx	eax, word ptr [ebp - 18]
	mov	dword ptr [ebp - 4], eax
	movzx	eax, word ptr [ebp - 6]
	mov	dword ptr [ebp - 20], eax
	movzx	eax, word ptr [ebp - 8]
	mov	dword ptr [ebp - 8], eax
	movzx	ecx, word ptr [ebp + 14]
	movzx	eax, word ptr [ebp + 8]
	imul	ecx, eax
	mov	eax, dword ptr [ebp - 20]
	add	eax, ecx
	mov	dword ptr [ebp - 20], eax
	mov	ecx, dword ptr [ebp - 20]
	shl	ecx, 16
	mov	eax, dword ptr [ebp - 8]
	add	eax, ecx
	mov	dword ptr [ebp - 8], eax
	movzx	ecx, word ptr [ebp - 18]
	mov	eax, dword ptr [ebp - 4]
	add	eax, ecx
	mov	dword ptr [ebp - 4], eax
	movzx	ecx, word ptr [ebp + 10]
	movzx	eax, word ptr [ebp + 14]
	imul	ecx, eax
	mov	eax, dword ptr [ebp - 4]
	add	eax, ecx
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 8]
	mov	edx, dword ptr [ebp - 4]
	add	esp, 20
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	4, 0x90
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	and	esp, -8
	sub	esp, 56
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, dword ptr [ebp + 20]
	mov	esi, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp + 12]
	mov	dword ptr [esp + 40], esi
	mov	dword ptr [esp + 44], edx
	mov	dword ptr [esp + 36], ecx
	mov	dword ptr [esp + 32], eax
	mov	eax, dword ptr [.L__profc___muldi3_compiler_rt]
	add	eax, 1
	adc	dword ptr [.L__profc___muldi3_compiler_rt+4], 0
	mov	dword ptr [.L__profc___muldi3_compiler_rt], eax
	mov	eax, dword ptr [esp + 40]
	mov	ecx, dword ptr [esp + 44]
	mov	dword ptr [esp + 28], ecx
	mov	dword ptr [esp + 24], eax
	mov	eax, dword ptr [esp + 32]
	mov	ecx, dword ptr [esp + 36]
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
	mov	ecx, dword ptr [esp + 24]
	mov	edx, dword ptr [esp + 16]
	mov	eax, esp
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	__muldsi3
	mov	dword ptr [esp + 12], edx
	mov	dword ptr [esp + 8], eax
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	esi, dword ptr [esp + 16]
	mov	edx, dword ptr [esp + 20]
	imul	ecx, esi
	imul	eax, edx
	add	ecx, eax
	mov	eax, dword ptr [esp + 12]
	add	eax, ecx
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [esp + 8]
	mov	edx, dword ptr [esp + 12]
	lea	esp, [ebp - 4]
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
	.cfi_endproc
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	4, 0x90
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 8
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp], ecx
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [.L__profc___negdi2]
	add	eax, 1
	adc	dword ptr [.L__profc___negdi2+4], 0
	mov	dword ptr [.L__profc___negdi2], eax
	mov	eax, dword ptr [esp]
	mov	ecx, dword ptr [esp + 4]
	xor	edx, edx
	neg	eax
	sbb	edx, ecx
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
	.cfi_endproc
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	4, 0x90
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 24
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 20], eax
	mov	eax, dword ptr [.L__profc___paritydi2]
	add	eax, 1
	adc	dword ptr [.L__profc___paritydi2+4], 0
	mov	dword ptr [.L__profc___paritydi2], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [esp + 20]
	mov	dword ptr [esp + 12], ecx
	mov	dword ptr [esp + 8], eax
	mov	eax, dword ptr [esp + 12]
	xor	eax, dword ptr [esp + 8]
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [esp + 4]
	shr	eax, 16
	xor	eax, dword ptr [esp + 4]
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [esp + 4]
	shr	eax, 8
	xor	eax, dword ptr [esp + 4]
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [esp + 4]
	shr	eax, 4
	xor	eax, dword ptr [esp + 4]
	mov	dword ptr [esp + 4], eax
	mov	ecx, dword ptr [esp + 4]
	and	ecx, 15
	mov	eax, 27030
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	and	eax, 1
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
	.cfi_endproc
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	4, 0x90
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___paritysi2]
	add	eax, 1
	adc	dword ptr [.L__profc___paritysi2+4], 0
	mov	dword ptr [.L__profc___paritysi2], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	shr	eax, 16
	xor	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	shr	eax, 8
	xor	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	shr	eax, 4
	xor	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 4], eax
	mov	ecx, dword ptr [ebp - 4]
	and	ecx, 15
	mov	eax, 27030
                                        # kill: def $cl killed $ecx
	sar	eax, cl
	and	eax, 1
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	4, 0x90
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	and	esp, -8
	sub	esp, 32
	.cfi_offset esi, -12
	mov	ecx, dword ptr [ebp + 8]
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [esp + 16], ecx
	mov	dword ptr [esp + 20], eax
	mov	eax, dword ptr [.L__profc___popcountdi2]
	add	eax, 1
	adc	dword ptr [.L__profc___popcountdi2+4], 0
	mov	dword ptr [.L__profc___popcountdi2], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [esp + 20]
	mov	dword ptr [esp + 12], ecx
	mov	dword ptr [esp + 8], eax
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	mov	esi, ecx
	shr	esi
	mov	edx, eax
	shr	edx
	and	edx, 1431655765
	and	esi, 1431655765
	sub	ecx, esi
	sbb	eax, edx
	mov	dword ptr [esp + 8], ecx
	mov	dword ptr [esp + 12], eax
	mov	esi, dword ptr [esp + 8]
	mov	edx, dword ptr [esp + 12]
	mov	eax, esi
	shr	eax, 2
	mov	ecx, edx
	shr	ecx, 2
	and	ecx, 858993459
	and	eax, 858993459
	and	edx, 858993459
	and	esi, 858993459
	add	eax, esi
	add	ecx, edx
	mov	dword ptr [esp + 12], ecx
	mov	dword ptr [esp + 8], eax
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	mov	edx, eax
	shr	edx, 4
	mov	esi, eax
	shld	esi, ecx, 28
	add	ecx, esi
	adc	eax, edx
	and	eax, 252645135
	and	ecx, 252645135
	mov	dword ptr [esp + 8], ecx
	mov	dword ptr [esp + 12], eax
	mov	eax, dword ptr [esp + 8]
	mov	ecx, dword ptr [esp + 12]
	add	eax, ecx
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [esp + 4]
	mov	ecx, dword ptr [esp + 4]
	shr	ecx, 16
	add	eax, ecx
	mov	dword ptr [esp + 4], eax
	mov	eax, dword ptr [esp + 4]
	mov	ecx, dword ptr [esp + 4]
	shr	ecx, 8
	add	eax, ecx
	and	eax, 127
	lea	esp, [ebp - 4]
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
	.cfi_endproc
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	4, 0x90
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	eax
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [.L__profc___popcountsi2]
	add	eax, 1
	adc	dword ptr [.L__profc___popcountsi2+4], 0
	mov	dword ptr [.L__profc___popcountsi2], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, dword ptr [ebp - 4]
	shr	ecx
	and	ecx, 1431655765
	sub	eax, ecx
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	shr	eax, 2
	and	eax, 858993459
	mov	ecx, dword ptr [ebp - 4]
	and	ecx, 858993459
	add	eax, ecx
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, dword ptr [ebp - 4]
	shr	ecx, 4
	add	eax, ecx
	and	eax, 252645135
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, dword ptr [ebp - 4]
	shr	ecx, 16
	add	eax, ecx
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	mov	ecx, dword ptr [ebp - 4]
	shr	ecx, 8
	add	eax, ecx
	and	eax, 63
	add	esp, 4
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __powidf2
.LCPI147_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	__powidf2
	.p2align	4, 0x90
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	and	esp, -8
	sub	esp, 32
	mov	eax, dword ptr [ebp + 16]
	fld	qword ptr [ebp + 8]
	fstp	qword ptr [esp + 24]
	mov	eax, dword ptr [.L__profc___powidf2]
	add	eax, 1
	adc	dword ptr [.L__profc___powidf2+4], 0
	mov	dword ptr [.L__profc___powidf2], eax
	mov	eax, dword ptr [ebp + 16]
	shr	eax, 31
	mov	dword ptr [esp + 20], eax
	fld1
	fstp	qword ptr [esp + 8]
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [.L__profc___powidf2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___powidf2+12], 0
	mov	dword ptr [.L__profc___powidf2+8], eax
	mov	eax, dword ptr [ebp + 16]
	and	eax, 1
	cmp	eax, 0
	je	.LBB147_3
# %bb.2:                                #   in Loop: Header=BB147_1 Depth=1
	mov	eax, dword ptr [.L__profc___powidf2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___powidf2+20], 0
	mov	dword ptr [.L__profc___powidf2+16], eax
	fld	qword ptr [esp + 24]
	fld	qword ptr [esp + 8]
	fmulp	st(1), st
	fstp	qword ptr [esp + 8]
.LBB147_3:                              #   in Loop: Header=BB147_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 16], eax
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB147_5
# %bb.4:
	mov	eax, dword ptr [.L__profc___powidf2+24]
	add	eax, 1
	adc	dword ptr [.L__profc___powidf2+28], 0
	mov	dword ptr [.L__profc___powidf2+24], eax
	jmp	.LBB147_6
.LBB147_5:                              #   in Loop: Header=BB147_1 Depth=1
	fld	qword ptr [esp + 24]
	fmul	st(0), st
	fstp	qword ptr [esp + 24]
	jmp	.LBB147_1
.LBB147_6:
	cmp	dword ptr [esp + 20], 0
	je	.LBB147_8
# %bb.7:
	mov	eax, dword ptr [.L__profc___powidf2+32]
	add	eax, 1
	adc	dword ptr [.L__profc___powidf2+36], 0
	mov	dword ptr [.L__profc___powidf2+32], eax
	fld	qword ptr [esp + 8]
	fld	qword ptr [.LCPI147_0]
	fdivrp	st(1), st
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
	jmp	.LBB147_9
.LBB147_8:
	fld	qword ptr [esp + 8]
	fstp	qword ptr [esp]                 # 8-byte Folded Spill
.LBB147_9:
	fld	qword ptr [esp]                 # 8-byte Folded Reload
	mov	esp, ebp
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function __powisf2
.LCPI148_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	__powisf2
	.p2align	4, 0x90
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	sub	esp, 12
	mov	eax, dword ptr [ebp + 12]
	fld	dword ptr [ebp + 8]
	fstp	st(0)
	mov	eax, dword ptr [.L__profc___powisf2]
	add	eax, 1
	adc	dword ptr [.L__profc___powisf2+4], 0
	mov	dword ptr [.L__profc___powisf2], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax, 31
	mov	dword ptr [ebp - 4], eax
	mov	dword ptr [ebp - 8], 1065353216
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [.L__profc___powisf2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___powisf2+12], 0
	mov	dword ptr [.L__profc___powisf2+8], eax
	mov	eax, dword ptr [ebp + 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB148_3
# %bb.2:                                #   in Loop: Header=BB148_1 Depth=1
	mov	eax, dword ptr [.L__profc___powisf2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___powisf2+20], 0
	mov	dword ptr [.L__profc___powisf2+16], eax
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp - 8]
	fmulp	st(1), st
	fstp	dword ptr [ebp - 8]
.LBB148_3:                              #   in Loop: Header=BB148_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 12], eax
	cmp	dword ptr [ebp + 12], 0
	jne	.LBB148_5
# %bb.4:
	mov	eax, dword ptr [.L__profc___powisf2+24]
	add	eax, 1
	adc	dword ptr [.L__profc___powisf2+28], 0
	mov	dword ptr [.L__profc___powisf2+24], eax
	jmp	.LBB148_6
.LBB148_5:                              #   in Loop: Header=BB148_1 Depth=1
	fld	dword ptr [ebp + 8]
	fmul	st(0), st
	fstp	dword ptr [ebp + 8]
	jmp	.LBB148_1
.LBB148_6:
	cmp	dword ptr [ebp - 4], 0
	je	.LBB148_8
# %bb.7:
	mov	eax, dword ptr [.L__profc___powisf2+32]
	add	eax, 1
	adc	dword ptr [.L__profc___powisf2+36], 0
	mov	dword ptr [.L__profc___powisf2+32], eax
	fld	dword ptr [ebp - 8]
	fld	dword ptr [.LCPI148_0]
	fdivrp	st(1), st
	fstp	dword ptr [ebp - 12]            # 4-byte Folded Spill
	jmp	.LBB148_9
.LBB148_8:
	fld	dword ptr [ebp - 8]
	fstp	dword ptr [ebp - 12]            # 4-byte Folded Spill
.LBB148_9:
	fld	dword ptr [ebp - 12]            # 4-byte Folded Reload
	add	esp, 12
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	eax, eax
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	4, 0x90
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	esi
	and	esp, -8
	sub	esp, 40
	.cfi_offset esi, -12
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, dword ptr [ebp + 20]
	mov	esi, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp + 12]
	mov	dword ptr [esp + 24], esi
	mov	dword ptr [esp + 28], edx
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
	mov	eax, dword ptr [.L__profc___ucmpdi2]
	add	eax, 1
	adc	dword ptr [.L__profc___ucmpdi2+4], 0
	mov	dword ptr [.L__profc___ucmpdi2], eax
	mov	eax, dword ptr [esp + 24]
	mov	ecx, dword ptr [esp + 28]
	mov	dword ptr [esp + 12], ecx
	mov	dword ptr [esp + 8], eax
	mov	eax, dword ptr [esp + 16]
	mov	ecx, dword ptr [esp + 20]
	mov	dword ptr [esp + 4], ecx
	mov	dword ptr [esp], eax
	mov	eax, dword ptr [esp + 12]
	cmp	eax, dword ptr [esp + 4]
	jae	.LBB149_2
# %bb.1:
	mov	eax, dword ptr [.L__profc___ucmpdi2+8]
	add	eax, 1
	adc	dword ptr [.L__profc___ucmpdi2+12], 0
	mov	dword ptr [.L__profc___ucmpdi2+8], eax
	mov	dword ptr [esp + 32], 0
	jmp	.LBB149_9
.LBB149_2:
	mov	eax, dword ptr [esp + 12]
	cmp	eax, dword ptr [esp + 4]
	jbe	.LBB149_4
# %bb.3:
	mov	eax, dword ptr [.L__profc___ucmpdi2+16]
	add	eax, 1
	adc	dword ptr [.L__profc___ucmpdi2+20], 0
	mov	dword ptr [.L__profc___ucmpdi2+16], eax
	mov	dword ptr [esp + 32], 2
	jmp	.LBB149_9
.LBB149_4:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jae	.LBB149_6
# %bb.5:
	mov	eax, dword ptr [.L__profc___ucmpdi2+24]
	add	eax, 1
	adc	dword ptr [.L__profc___ucmpdi2+28], 0
	mov	dword ptr [.L__profc___ucmpdi2+24], eax
	mov	dword ptr [esp + 32], 0
	jmp	.LBB149_9
.LBB149_6:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jbe	.LBB149_8
# %bb.7:
	mov	eax, dword ptr [.L__profc___ucmpdi2+32]
	add	eax, 1
	adc	dword ptr [.L__profc___ucmpdi2+36], 0
	mov	dword ptr [.L__profc___ucmpdi2+32], eax
	mov	dword ptr [esp + 32], 2
	jmp	.LBB149_9
.LBB149_8:
	mov	dword ptr [esp + 32], 1
.LBB149_9:
	mov	eax, dword ptr [esp + 32]
	lea	esp, [ebp - 4]
	pop	esi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	4, 0x90
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.cfi_startproc
# %bb.0:
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset ebp, -8
	mov	ebp, esp
	.cfi_def_cfa_register ebp
	push	edi
	push	esi
	and	esp, -8
	sub	esp, 32
	.cfi_offset esi, -16
	.cfi_offset edi, -12
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, dword ptr [ebp + 20]
	mov	esi, dword ptr [ebp + 8]
	mov	edx, dword ptr [ebp + 12]
	mov	dword ptr [esp + 24], esi
	mov	dword ptr [esp + 28], edx
	mov	dword ptr [esp + 20], ecx
	mov	dword ptr [esp + 16], eax
	mov	eax, dword ptr [.L__profc___aeabi_ulcmp]
	add	eax, 1
	adc	dword ptr [.L__profc___aeabi_ulcmp+4], 0
	mov	dword ptr [.L__profc___aeabi_ulcmp], eax
	mov	ecx, dword ptr [esp + 24]
	mov	edx, dword ptr [esp + 28]
	mov	esi, dword ptr [esp + 16]
	mov	edi, dword ptr [esp + 20]
	mov	eax, esp
	mov	dword ptr [eax + 12], edi
	mov	dword ptr [eax + 8], esi
	mov	dword ptr [eax + 4], edx
	mov	dword ptr [eax], ecx
	call	__ucmpdi2
	sub	eax, 1
	lea	esp, [ebp - 8]
	pop	esi
	pop	edi
	pop	ebp
	.cfi_def_cfa esp, 4
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fldz
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	fstp	st(0)
	xor	ecx, ecx
	xor	edx, edx
	jmp	__x86_return_thunk              # TAILCALL
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
	.cfi_endproc
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.local	l64a.s
	.comm	l64a.s,7,1
	.type	digits,@object                  # @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.local	seed
	.comm	seed,8,8
	.hidden	__llvm_profile_runtime
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
	.long	.L__profc_memmove-.L__profd_memmove
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memmove, 48

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
	.long	.L__profc_memccpy-.L__profd_memccpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memccpy, 48

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
	.long	.L__profc_memchr-.L__profd_memchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memchr, 48

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
	.long	.L__profc_memcmp-.L__profd_memcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memcmp, 48

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
	.long	.L__profc_memcpy-.L__profd_memcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memcpy, 48

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
	.long	.L__profc_memrchr-.L__profd_memrchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memrchr, 48

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
	.long	.L__profc_memset-.L__profd_memset
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memset, 48

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
	.long	.L__profc_stpcpy-.L__profd_stpcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_stpcpy, 48

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
	.long	.L__profc_strchrnul-.L__profd_strchrnul
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strchrnul, 48

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
	.long	.L__profc_strchr-.L__profd_strchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strchr, 48

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
	.long	.L__profc_strcmp-.L__profd_strcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strcmp, 48

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
	.long	.L__profc_strlen-.L__profd_strlen
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strlen, 48

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
	.long	.L__profc_strncmp-.L__profd_strncmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strncmp, 48

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
	.long	.L__profc_swab-.L__profd_swab
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_swab, 48

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
	.long	.L__profc_isalpha-.L__profd_isalpha
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isalpha, 48

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
	.long	.L__profc_isascii-.L__profd_isascii
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isascii, 48

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
	.long	.L__profc_isblank-.L__profd_isblank
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isblank, 48

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
	.long	.L__profc_iscntrl-.L__profd_iscntrl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iscntrl, 48

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
	.long	.L__profc_isdigit-.L__profd_isdigit
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isdigit, 48

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
	.long	.L__profc_isgraph-.L__profd_isgraph
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isgraph, 48

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
	.long	.L__profc_islower-.L__profd_islower
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_islower, 48

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
	.long	.L__profc_isprint-.L__profd_isprint
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isprint, 48

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
	.long	.L__profc_isspace-.L__profd_isspace
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isspace, 48

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
	.long	.L__profc_isupper-.L__profd_isupper
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_isupper, 48

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
	.long	.L__profc_iswcntrl-.L__profd_iswcntrl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswcntrl, 48

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
	.long	.L__profc_iswdigit-.L__profd_iswdigit
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswdigit, 48

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
	.long	.L__profc_iswprint-.L__profd_iswprint
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	10                              # 0xa
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswprint, 48

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
	.long	.L__profc_iswxdigit-.L__profd_iswxdigit
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_iswxdigit, 48

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
	.long	.L__profc_toascii-.L__profd_toascii
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_toascii, 48

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
	.long	.L__profc_fdim-.L__profd_fdim
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fdim, 48

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
	.long	.L__profc_fdimf-.L__profd_fdimf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fdimf, 48

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
	.long	.L__profc_fmax-.L__profd_fmax
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmax, 48

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
	.long	.L__profc_fmaxf-.L__profd_fmaxf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxf, 48

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
	.long	.L__profc_fmaxl-.L__profd_fmaxl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxl, 48

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
	.long	.L__profc_fmin-.L__profd_fmin
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fmin, 48

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
	.long	.L__profc_fminf-.L__profd_fminf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fminf, 48

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
	.long	.L__profc_fminl-.L__profd_fminl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_fminl, 48

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
	.long	.L__profc_l64a-.L__profd_l64a
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_l64a, 48

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
	.long	.L__profc_srand-.L__profd_srand
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_srand, 48

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
	.long	.L__profc_rand-.L__profd_rand
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rand, 48

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
	.long	.L__profc_insque-.L__profd_insque
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_insque, 48

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
	.long	.L__profc_remque-.L__profd_remque
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_remque, 48

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
	.long	.L__profc_lsearch-.L__profd_lsearch
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_lsearch, 48

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
	.long	.L__profc_lfind-.L__profd_lfind
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_lfind, 48

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
	.long	.L__profc_abs-.L__profd_abs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_abs, 48

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
	.long	.L__profc_atoi-.L__profd_atoi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atoi, 48

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
	.long	.L__profc_atol-.L__profd_atol
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atol, 48

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
	.long	.L__profc_atoll-.L__profd_atoll
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_atoll, 48

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
	.long	.L__profc_bsearch-.L__profd_bsearch
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch, 48

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
	.long	.L__profc_bsearch_r-.L__profd_bsearch_r
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch_r, 48

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
	.long	.L__profc_div-.L__profd_div
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_div, 48

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
	.long	.L__profc_imaxabs-.L__profd_imaxabs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_imaxabs, 48

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
	.long	.L__profc_imaxdiv-.L__profd_imaxdiv
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_imaxdiv, 48

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
	.long	.L__profc_labs-.L__profd_labs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_labs, 48

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
	.long	.L__profc_ldiv-.L__profd_ldiv
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldiv, 48

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
	.long	.L__profc_llabs-.L__profd_llabs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_llabs, 48

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
	.long	.L__profc_lldiv-.L__profd_lldiv
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_lldiv, 48

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
	.long	.L__profc_wcschr-.L__profd_wcschr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcschr, 48

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
	.long	.L__profc_wcscmp-.L__profd_wcscmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcscmp, 48

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
	.long	.L__profc_wcscpy-.L__profd_wcscpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcscpy, 48

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
	.long	.L__profc_wcslen-.L__profd_wcslen
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcslen, 48

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
	.long	.L__profc_wcsncmp-.L__profd_wcsncmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	10                              # 0xa
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wcsncmp, 48

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
	.long	.L__profc_wmemchr-.L__profd_wmemchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemchr, 48

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
	.long	.L__profc_wmemcmp-.L__profd_wmemcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcmp, 48

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
	.long	.L__profc_wmemcpy-.L__profd_wmemcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcpy, 48

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
	.long	.L__profc_wmemmove-.L__profd_wmemmove
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemmove, 48

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
	.long	.L__profc_wmemset-.L__profd_wmemset
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_wmemset, 48

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
	.long	.L__profc_bcopy-.L__profd_bcopy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bcopy, 48

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
	.long	.L__profc_rotl64-.L__profd_rotl64
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl64, 48

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
	.long	.L__profc_rotr64-.L__profd_rotr64
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr64, 48

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
	.long	.L__profc_rotl32-.L__profd_rotl32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl32, 48

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
	.long	.L__profc_rotr32-.L__profd_rotr32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr32, 48

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
	.long	.L__profc_rotl_sz-.L__profd_rotl_sz
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl_sz, 48

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
	.long	.L__profc_rotr_sz-.L__profd_rotr_sz
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr_sz, 48

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
	.long	.L__profc_rotl16-.L__profd_rotl16
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl16, 48

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
	.long	.L__profc_rotr16-.L__profd_rotr16
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr16, 48

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
	.long	.L__profc_rotl8-.L__profd_rotl8
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotl8, 48

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
	.long	.L__profc_rotr8-.L__profd_rotr8
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_rotr8, 48

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
	.long	.L__profc_bswap_16-.L__profd_bswap_16
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_16, 48

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
	.long	.L__profc_bswap_32-.L__profd_bswap_32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_32, 48

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
	.long	.L__profc_bswap_64-.L__profd_bswap_64
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_64, 48

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
	.long	.L__profc_ffs-.L__profd_ffs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ffs, 48

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
	.long	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 48

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
	.long	.L__profc_gl_isinff-.L__profd_gl_isinff
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinff, 48

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
	.long	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfd, 48

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
	.long	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfl, 48

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
	.long	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd__Qp_itoq, 48

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
	.long	.L__profc_ldexpf-.L__profd_ldexpf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	8                               # 0x8
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpf, 48

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
	.long	.L__profc_ldexp-.L__profd_ldexp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	8                               # 0x8
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldexp, 48

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
	.long	.L__profc_ldexpl-.L__profd_ldexpl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	8                               # 0x8
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpl, 48

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
	.long	.L__profc_memxor-.L__profd_memxor
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memxor, 48

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
	.long	.L__profc_strncat-.L__profd_strncat
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strncat, 48

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
	.long	.L__profc_strnlen-.L__profd_strnlen
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strnlen, 48

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
	.long	.L__profc_strpbrk-.L__profd_strpbrk
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strpbrk, 48

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
	.long	.L__profc_strrchr-.L__profd_strrchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strrchr, 48

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
	.long	.L__profc_strstr-.L__profd_strstr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_strstr, 48

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
	.long	.L__profc_copysign-.L__profd_copysign
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_copysign, 48

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
	.long	.L__profc_memmem-.L__profd_memmem
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_memmem, 48

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
	.long	.L__profc_mempcpy-.L__profd_mempcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_mempcpy, 48

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
	.long	.L__profc_frexp-.L__profd_frexp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_frexp, 48

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
	.long	.L__profc___muldi3-.L__profd___muldi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3, 48

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
	.long	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd_udivmodsi4, 48

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
	.long	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbqi2, 48

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
	.long	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbdi2, 48

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
	.long	.L__profc___mulsi3-.L__profd___mulsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3, 48

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
	.long	.L__profc___cmovd-.L__profd___cmovd
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovd, 48

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
	.long	.L__profc___cmovh-.L__profd___cmovh
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovh, 48

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
	.long	.L__profc___cmovw-.L__profd___cmovw
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmovw, 48

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
	.long	.L__profc___modi-.L__profd___modi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___modi, 48

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
	.long	.L__profc___uitod-.L__profd___uitod
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___uitod, 48

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
	.long	.L__profc___uitof-.L__profd___uitof
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___uitof, 48

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
	.long	.L__profc___ulltod-.L__profd___ulltod
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ulltod, 48

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
	.long	.L__profc___ulltof-.L__profd___ulltof
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ulltof, 48

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
	.long	.L__profc___umodi-.L__profd___umodi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___umodi, 48

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
	.long	.L__profc___clzhi2-.L__profd___clzhi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzhi2, 48

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
	.long	.L__profc___ctzhi2-.L__profd___ctzhi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzhi2, 48

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
	.long	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___fixunssfsi, 48

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
	.long	.L__profc___parityhi2-.L__profd___parityhi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___parityhi2, 48

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
	.long	.L__profc___popcounthi2-.L__profd___popcounthi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcounthi2, 48

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
	.long	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 48

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
	.long	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 48

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
	.long	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4, 48

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
	.long	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpf, 48

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
	.long	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpd, 48

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
	.long	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 48

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
	.long	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 48

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
	.long	.L__profc___mulhi3-.L__profd___mulhi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___mulhi3, 48

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
	.long	.L__profc___divsi3-.L__profd___divsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___divsi3, 48

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
	.long	.L__profc___modsi3-.L__profd___modsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___modsi3, 48

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
	.long	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodhi4, 48

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
	.long	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 48

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
	.long	.L__profc___ashldi3-.L__profd___ashldi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashldi3, 48

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
	.long	.L__profc___ashrdi3-.L__profd___ashrdi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ashrdi3, 48

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
	.long	.L__profc___bswapdi2-.L__profd___bswapdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___bswapdi2, 48

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
	.long	.L__profc___bswapsi2-.L__profd___bswapsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___bswapsi2, 48

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
	.long	.L__profc___clzsi2-.L__profd___clzsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___clzsi2, 48

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
	.long	.L__profc___cmpdi2-.L__profd___cmpdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___cmpdi2, 48

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
	.long	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 48

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
	.long	.L__profc___ctzsi2-.L__profd___ctzsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ctzsi2, 48

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
	.long	.L__profc___lshrdi3-.L__profd___lshrdi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___lshrdi3, 48

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
	.long	.L__profc___muldsi3-.L__profd___muldsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldsi3, 48

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
	.long	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 48

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
	.long	.L__profc___negdi2-.L__profd___negdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___negdi2, 48

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
	.long	.L__profc___paritydi2-.L__profd___paritydi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___paritydi2, 48

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
	.long	.L__profc___paritysi2-.L__profd___paritysi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___paritysi2, 48

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
	.long	.L__profc___popcountdi2-.L__profd___popcountdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountdi2, 48

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
	.long	.L__profc___popcountsi2-.L__profd___popcountsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___popcountsi2, 48

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
	.long	.L__profc___powidf2-.L__profd___powidf2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___powidf2, 48

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
	.long	.L__profc___powisf2-.L__profd___powisf2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___powisf2, 48

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
	.long	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpdi2, 48

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
	.long	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.zero	6
	.zero	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_ulcmp, 48

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
.L__llvm_prf_nm:
	.ascii	"\225\n\246\004x\332]\223\tn\3430\fE\241\033e\222\242\3505\346\004\206\254%&J-\221\344*\355\351\207\244\344\244\031\300\340\373\244VRtp!\244/\247\202\013\306\344o\341V\004!\013F\260\314huM\325\2269Z\033\007\343\216S\th\021\001]dDq\273^\025T\215y\323\314j\000\210+\352\370I4\221\246\023-\\\241\021\257E\347\215\210\251\273B\314\005\"\307k\326\306\021\367\234%\336\217\205\375X\331\217\251\375>B-\215\303\274\205 \306+\037\364]\314\220H\026\242\030/\026\025\276\277iU\213\216V\211\201Xo\273S\305\005\006V\247)W\205\036hL\257U\351\226\200\r\212A\265\316\031\223KQ\026\276\024\320a<\233\311>\262\203\242\206\024\335M\345:2\250p\f*3\201\313I\220r\366\371B}>Q\237o\304\224\227\354\363\225V\223(\\R\243\214\030e\000/g\361\006p\251?\342N\342\237wq\007\360C\234\017J\246\353\274Pp\bZ;\004m\351=\335\036VX]i\337\013{W\\\240RA\375C\331\207B\265\374\315\013\264t\243\354\335=\373\201a\221\033\354\236\312h\035\335\204\263\225\362Z>\231G\243\321\2478\301\n\327\310\313\350cHc\372\302[.K\330\251\252\027\265SiC\262\025\336(f\260\324\365\006\347CZ\2214\263\322L\212Q\t\355\3446\331yB\262@\330\351\346v\3223\021g\200\205D\346L\203?\3338\245M\341\341\276\307Z}\345\341\254\013\264\3571\220S6i\217m\373u\225\005n\347\323\351\364\3641\\x\364%\227@\377\304\nt\307\354_<\373\364\002U\210\232\362\267\277\017\177\307M2\246\rG\352\262\355\345y\306&g<\017\\\350\225\257\306PL\327M\n+\252\f%\3750\212)\262\316\022\377L\021\346\240v|\r\344\316\225\332\214a|\354\303oV\037\212\0227)d@W\226\322(\030\335u\3543\n\370[\327\227b\332\027\357\030\353`\375\241\252\250\375\277\233\355|\265\177\337\f\323w"
	.size	.L__llvm_prf_nm, 554

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
	.addrsig_sym __ucmpdi2
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
	.addrsig_sym __llvm_profile_runtime
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
	.addrsig_sym .L__profc___ashrdi3
	.addrsig_sym .L__profd___ashrdi3
	.addrsig_sym .L__profc___bswapdi2
	.addrsig_sym .L__profd___bswapdi2
	.addrsig_sym .L__profc___bswapsi2
	.addrsig_sym .L__profd___bswapsi2
	.addrsig_sym .L__profc___clzsi2
	.addrsig_sym .L__profd___clzsi2
	.addrsig_sym .L__profc___cmpdi2
	.addrsig_sym .L__profd___cmpdi2
	.addrsig_sym .L__profc___aeabi_lcmp
	.addrsig_sym .L__profd___aeabi_lcmp
	.addrsig_sym .L__profc___ctzsi2
	.addrsig_sym .L__profd___ctzsi2
	.addrsig_sym .L__profc___lshrdi3
	.addrsig_sym .L__profd___lshrdi3
	.addrsig_sym .L__profc___muldsi3
	.addrsig_sym .L__profd___muldsi3
	.addrsig_sym .L__profc___muldi3_compiler_rt
	.addrsig_sym .L__profd___muldi3_compiler_rt
	.addrsig_sym .L__profc___negdi2
	.addrsig_sym .L__profd___negdi2
	.addrsig_sym .L__profc___paritydi2
	.addrsig_sym .L__profd___paritydi2
	.addrsig_sym .L__profc___paritysi2
	.addrsig_sym .L__profd___paritysi2
	.addrsig_sym .L__profc___popcountdi2
	.addrsig_sym .L__profd___popcountdi2
	.addrsig_sym .L__profc___popcountsi2
	.addrsig_sym .L__profd___popcountsi2
	.addrsig_sym .L__profc___powidf2
	.addrsig_sym .L__profd___powidf2
	.addrsig_sym .L__profc___powisf2
	.addrsig_sym .L__profd___powisf2
	.addrsig_sym .L__profc___ucmpdi2
	.addrsig_sym .L__profd___ucmpdi2
	.addrsig_sym .L__profc___aeabi_ulcmp
	.addrsig_sym .L__profd___aeabi_ulcmp
	.addrsig_sym .L__llvm_prf_nm
