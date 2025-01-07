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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 8]
	cmp	eax, dword ptr [ebp - 4]
	jae	.LBB0_6
# %bb.1:
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
	jmp	.LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
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
	je	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	mov	eax, dword ptr [ebp - 12]
	mov	al, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 8]
	mov	byte ptr [ecx], al
	movzx	eax, al
	cmp	eax, dword ptr [ebp + 16]
	setne	al
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB1_4
	jmp	.LBB1_6
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
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
.LBB1_6:
	cmp	dword ptr [ebp + 20], 0
	je	.LBB1_8
# %bb.7:
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB1_9
.LBB1_8:
	mov	dword ptr [ebp - 4], 0
.LBB1_9:
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
	je	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	movzx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	mov	al, byte ptr [ebp - 5]          # 1-byte Reload
	test	al, 1
	jne	.LBB2_4
	jmp	.LBB2_6
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB2_1
.LBB2_6:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB2_8
# %bb.7:
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB2_9
.LBB2_8:
	xor	eax, eax
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB2_9
.LBB2_9:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
	je	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 8]
	movzx	ecx, byte ptr [ecx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	mov	al, byte ptr [ebp - 9]          # 1-byte Reload
	test	al, 1
	jne	.LBB3_4
	jmp	.LBB3_6
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	jmp	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB3_8
# %bb.7:
	mov	eax, dword ptr [ebp - 4]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 8]
	movzx	ecx, byte ptr [ecx]
	sub	eax, ecx
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB3_9
.LBB3_8:
	xor	eax, eax
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB3_9
.LBB3_9:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
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
	mov	eax, dword ptr [ebp - 8]
	mov	ecx, dword ptr [ebp + 16]
	movzx	eax, byte ptr [eax + ecx]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB5_4
# %bb.3:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
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
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	al, byte ptr [eax]
	mov	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ecx], al
	cmp	al, 0
	je	.LBB7_4
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
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
	je	.LBB8_3
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	movzx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB8_4
	jmp	.LBB8_6
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB8_1
.LBB8_6:
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
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB9_3
# %bb.2:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB9_6
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	jmp	.LBB9_4
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp + 8], ecx
	cmp	byte ptr [eax], 0
	jne	.LBB9_1
# %bb.5:
	mov	dword ptr [ebp - 4], 0
.LBB9_6:
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
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	ecx, byte ptr [eax]
	mov	eax, dword ptr [ebp + 12]
	movsx	edx, byte ptr [eax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB10_3
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, 0
	setne	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB10_4
	jmp	.LBB10_6
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	jmp	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, 1
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB10_1
.LBB10_6:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	cmp	byte ptr [eax], 0
	je	.LBB11_4
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_3
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
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
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB12_11
.LBB12_2:
	jmp	.LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 8]
	movzx	ecx, byte ptr [eax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB12_7
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [ebp - 12]
	movzx	ecx, byte ptr [eax]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB12_7
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB12_7
# %bb.6:                                #   in Loop: Header=BB12_3 Depth=1
	mov	eax, dword ptr [ebp - 8]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 12]
	movzx	ecx, byte ptr [ecx]
	cmp	eax, ecx
	sete	al
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB12_8
	jmp	.LBB12_10
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
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
.LBB12_10:
	mov	eax, dword ptr [ebp - 8]
	movzx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 12]
	movzx	ecx, byte ptr [ecx]
	sub	eax, ecx
	mov	dword ptr [ebp - 4], eax
.LBB12_11:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 1
	jle	.LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
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
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB16_2
# %bb.1:
	cmp	dword ptr [ebp + 8], 9
	sete	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB16_2:
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
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB17_2
# %bb.1:
	cmp	dword ptr [ebp + 8], 127
	sete	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB17_2:
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
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB22_2
# %bb.1:
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 9
	cmp	eax, 5
	setb	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB22_2:
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
	mov	al, 1
	cmp	dword ptr [ebp + 8], 32
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB24_4
# %bb.1:
	mov	ecx, dword ptr [ebp + 8]
	sub	ecx, 127
	mov	al, 1
	cmp	ecx, 33
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB24_4
# %bb.2:
	mov	ecx, dword ptr [ebp + 8]
	sub	ecx, 8232
	mov	al, 1
	cmp	ecx, 2
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB24_4
# %bb.3:
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 65529
	cmp	eax, 3
	setb	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB24_4:
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
	cmp	dword ptr [ebp + 8], 255
	jae	.LBB26_2
# %bb.1:
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	and	eax, 127
	cmp	eax, 33
	setge	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB26_10
.LBB26_2:
	cmp	dword ptr [ebp + 8], 8232
	jb	.LBB26_5
# %bb.3:
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 8234
	cmp	eax, 47062
	jb	.LBB26_5
# %bb.4:
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 57344
	cmp	eax, 8185
	jae	.LBB26_6
.LBB26_5:
	mov	dword ptr [ebp - 4], 1
	jmp	.LBB26_10
.LBB26_6:
	mov	eax, dword ptr [ebp + 8]
	sub	eax, 65532
	cmp	eax, 1048579
	ja	.LBB26_8
# %bb.7:
	mov	eax, dword ptr [ebp + 8]
	and	eax, 65534
	cmp	eax, 65534
	jne	.LBB26_9
.LBB26_8:
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB26_10
.LBB26_9:
	mov	dword ptr [ebp - 4], 1
.LBB26_10:
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
	mov	ecx, dword ptr [ebp + 8]
	sub	ecx, 48
	mov	al, 1
	cmp	ecx, 10
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jb	.LBB27_2
# %bb.1:
	mov	eax, dword ptr [ebp + 8]
	or	eax, 32
	sub	eax, 97
	cmp	eax, 6
	setb	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB27_2:
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
	mov	eax, dword ptr [esp + 28]
	test	eax, eax
	jns	.LBB31_7
	jmp	.LBB31_6
.LBB31_6:
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
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, 0
	jge	.LBB32_7
# %bb.6:
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
	movzx	eax, word ptr [ebp - 16]
	test	eax, 32768
	je	.LBB33_7
	jmp	.LBB33_6
.LBB33_6:
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
	mov	eax, dword ptr [esp + 28]
	test	eax, eax
	jns	.LBB34_7
	jmp	.LBB34_6
.LBB34_6:
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
	fld	dword ptr [ebp + 8]
	fstp	dword ptr [ebp - 12]
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, 0
	jge	.LBB35_7
# %bb.6:
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
	movzx	eax, word ptr [ebp - 16]
	test	eax, 32768
	je	.LBB36_7
	jmp	.LBB36_6
.LBB36_6:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	lea	eax, [l64a.s]
	mov	dword ptr [ebp - 4], eax
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB37_4
# %bb.2:                                #   in Loop: Header=BB37_1 Depth=1
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
	cmp	dword ptr [ebp - 8], 0
	jne	.LBB40_2
# %bb.1:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp - 4]
	cmp	dword ptr [eax], 0
	je	.LBB41_2
# %bb.1:
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
	cmp	dword ptr [ebp + 8], 0
	jle	.LBB44_2
# %bb.1:
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
	jmp	.LBB45_13
.LBB45_13:
	mov	eax, dword ptr [ebp - 12]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB45_6
	jmp	.LBB45_4
.LBB45_4:
	mov	dword ptr [ebp - 8], 1
.LBB45_5:
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
.LBB45_6:
	jmp	.LBB45_7
.LBB45_7:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isdigit
	cmp	eax, 0
	je	.LBB45_9
# %bb.8:                                #   in Loop: Header=BB45_7 Depth=1
	imul	eax, dword ptr [ebp - 4], 10
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [ebp + 8], edx
	movsx	ecx, byte ptr [ecx]
	sub	ecx, 48
	sub	eax, ecx
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB45_7
.LBB45_9:
	cmp	dword ptr [ebp - 8], 0
	je	.LBB45_11
# %bb.10:
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB45_12
.LBB45_11:
	xor	eax, eax
	sub	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
.LBB45_12:
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
	jmp	.LBB46_13
.LBB46_13:
	mov	eax, dword ptr [ebp - 12]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB46_6
	jmp	.LBB46_4
.LBB46_4:
	mov	dword ptr [ebp - 8], 1
.LBB46_5:
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
.LBB46_6:
	jmp	.LBB46_7
.LBB46_7:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isdigit
	cmp	eax, 0
	je	.LBB46_9
# %bb.8:                                #   in Loop: Header=BB46_7 Depth=1
	imul	eax, dword ptr [ebp - 4], 10
	mov	ecx, dword ptr [ebp + 8]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [ebp + 8], edx
	movsx	ecx, byte ptr [ecx]
	sub	ecx, 48
	sub	eax, ecx
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB46_7
.LBB46_9:
	cmp	dword ptr [ebp - 8], 0
	je	.LBB46_11
# %bb.10:
	mov	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
	jmp	.LBB46_12
.LBB46_11:
	xor	eax, eax
	sub	eax, dword ptr [ebp - 4]
	mov	dword ptr [ebp - 16], eax       # 4-byte Spill
.LBB46_12:
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
	jmp	.LBB47_13
.LBB47_13:
	mov	eax, dword ptr [esp + 16]       # 4-byte Reload
	sub	eax, 45
	jne	.LBB47_6
	jmp	.LBB47_4
.LBB47_4:
	mov	dword ptr [esp + 20], 1
.LBB47_5:
	mov	eax, dword ptr [ebp + 8]
	add	eax, 1
	mov	dword ptr [ebp + 8], eax
.LBB47_6:
	jmp	.LBB47_7
.LBB47_7:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	mov	dword ptr [esp], eax
	call	isdigit
	cmp	eax, 0
	je	.LBB47_9
# %bb.8:                                #   in Loop: Header=BB47_7 Depth=1
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
	jmp	.LBB47_7
.LBB47_9:
	cmp	dword ptr [esp + 20], 0
	je	.LBB47_11
# %bb.10:
	mov	ecx, dword ptr [esp + 24]
	mov	eax, dword ptr [esp + 28]
	mov	dword ptr [esp + 4], ecx        # 4-byte Spill
	mov	dword ptr [esp + 8], eax        # 4-byte Spill
	jmp	.LBB47_12
.LBB47_11:
	mov	ecx, dword ptr [esp + 24]
	mov	edx, dword ptr [esp + 28]
	xor	eax, eax
	neg	ecx
	sbb	eax, edx
	mov	dword ptr [esp + 4], ecx        # 4-byte Spill
	mov	dword ptr [esp + 8], eax        # 4-byte Spill
	jmp	.LBB47_12
.LBB47_12:
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
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	jbe	.LBB48_9
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
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
	mov	eax, dword ptr [ebp + 16]
	shr	eax
	mov	dword ptr [ebp + 16], eax
	jmp	.LBB48_8
.LBB48_4:                               #   in Loop: Header=BB48_1 Depth=1
	cmp	dword ptr [ebp - 12], 0
	jle	.LBB48_6
# %bb.5:                                #   in Loop: Header=BB48_1 Depth=1
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
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 16]
	mov	dword ptr [ebp - 16], eax
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 16], 0
	je	.LBB49_8
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
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
	mov	eax, dword ptr [ebp - 24]
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	cmp	dword ptr [ebp - 20], 0
	jle	.LBB49_6
# %bb.5:                                #   in Loop: Header=BB49_1 Depth=1
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
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	sub	ecx, 1
	sbb	eax, 0
	jl	.LBB51_2
	jmp	.LBB51_1
.LBB51_1:
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
	cmp	dword ptr [ebp + 8], 0
	jle	.LBB53_2
# %bb.1:
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
	mov	ecx, dword ptr [esp + 8]
	mov	eax, dword ptr [esp + 12]
	sub	ecx, 1
	sbb	eax, 0
	jl	.LBB55_2
	jmp	.LBB55_1
.LBB55_1:
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
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ecx], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB57_3
# %bb.2:                                #   in Loop: Header=BB57_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB57_4
	jmp	.LBB57_6
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_5
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB57_1
.LBB57_6:
	mov	eax, dword ptr [ebp + 8]
	cmp	dword ptr [eax], 0
	je	.LBB57_8
# %bb.7:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB57_9
.LBB57_8:
	xor	eax, eax
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB57_9
.LBB57_9:
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
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax]
	mov	edx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [edx]
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB58_4
# %bb.2:                                #   in Loop: Header=BB58_1 Depth=1
	mov	ecx, dword ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ecx], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB58_4
# %bb.3:                                #   in Loop: Header=BB58_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	cmp	dword ptr [eax], 0
	setne	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB58_5
	jmp	.LBB58_7
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	jmp	.LBB58_6
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	add	eax, 4
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB58_1
.LBB58_7:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	jge	.LBB58_9
# %bb.8:
	mov	eax, 4294967295
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB58_10
.LBB58_9:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
.LBB58_10:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	cmp	dword ptr [eax], 0
	je	.LBB60_4
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	jmp	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
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
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB61_5
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [eax]
	mov	edx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [edx]
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	jne	.LBB61_5
# %bb.3:                                #   in Loop: Header=BB61_1 Depth=1
	mov	ecx, dword ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ecx], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB61_5
# %bb.4:                                #   in Loop: Header=BB61_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	cmp	dword ptr [eax], 0
	setne	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB61_5:                               #   in Loop: Header=BB61_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB61_6
	jmp	.LBB61_8
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_7
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
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
.LBB61_8:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB61_13
# %bb.9:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	jge	.LBB61_11
# %bb.10:
	mov	eax, 4294967295
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB61_12
.LBB61_11:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
.LBB61_12:
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB61_14
.LBB61_13:
	xor	eax, eax
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB61_14
.LBB61_14:
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
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB62_3
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	setne	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB62_4
	jmp	.LBB62_6
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	jmp	.LBB62_5
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
	mov	eax, dword ptr [ebp + 16]
	add	eax, -1
	mov	dword ptr [ebp + 16], eax
	mov	eax, dword ptr [ebp + 8]
	add	eax, 4
	mov	dword ptr [ebp + 8], eax
	jmp	.LBB62_1
.LBB62_6:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB62_8
# %bb.7:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB62_9
.LBB62_8:
	xor	eax, eax
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB62_9
.LBB62_9:
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
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp + 16], 0
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	je	.LBB63_3
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	sete	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	mov	al, byte ptr [ebp - 1]          # 1-byte Reload
	test	al, 1
	jne	.LBB63_4
	jmp	.LBB63_6
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	jmp	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_6:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB63_11
# %bb.7:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	jge	.LBB63_9
# %bb.8:
	mov	eax, 4294967295
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
	jmp	.LBB63_10
.LBB63_9:
	mov	eax, dword ptr [ebp + 8]
	mov	eax, dword ptr [eax]
	mov	ecx, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ecx]
	setg	al
	and	al, 1
	movzx	eax, al
	mov	dword ptr [ebp - 8], eax        # 4-byte Spill
.LBB63_10:
	mov	eax, dword ptr [ebp - 8]        # 4-byte Reload
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB63_12
.LBB63_11:
	xor	eax, eax
	mov	dword ptr [ebp - 12], eax       # 4-byte Spill
	jmp	.LBB63_12
.LBB63_12:
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB65_2
# %bb.1:
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
	jmp	.LBB65_4
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	je	.LBB65_6
# %bb.5:                                #   in Loop: Header=BB65_4 Depth=1
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
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp - 4]
	cmp	eax, dword ptr [ebp - 8]
	jae	.LBB67_6
# %bb.1:
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
	jmp	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	je	.LBB67_11
# %bb.9:                                #   in Loop: Header=BB67_8 Depth=1
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
	mov	dword ptr [ebp - 8], 0
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 32
	jae	.LBB81_6
# %bb.2:                                #   in Loop: Header=BB81_1 Depth=1
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
	cmp	dword ptr [ebp + 8], 0
	jne	.LBB82_2
# %bb.1:
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
	fld	dword ptr [ebp + 8]
	fld	dword ptr [.LCPI83_0]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	mov	al, 1
	sahf
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
	ja	.LBB83_2
	jmp	.LBB83_1
.LBB83_1:
	fld	dword ptr [ebp + 8]
	fld	dword ptr [.LCPI83_1]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	seta	al
	mov	byte ptr [ebp - 1], al          # 1-byte Spill
.LBB83_2:
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
	fld	qword ptr [esp + 8]
	fld	qword ptr [.LCPI84_0]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	mov	al, 1
	sahf
	mov	byte ptr [esp + 7], al          # 1-byte Spill
	ja	.LBB84_2
	jmp	.LBB84_1
.LBB84_1:
	fld	qword ptr [esp + 8]
	fld	qword ptr [.LCPI84_1]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	seta	al
	mov	byte ptr [esp + 7], al          # 1-byte Spill
.LBB84_2:
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
	fld	tbyte ptr [ebp - 12]
	fld	tbyte ptr [.LCPI85_0]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	mov	al, 1
	sahf
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	ja	.LBB85_2
	jmp	.LBB85_1
.LBB85_1:
	fld	tbyte ptr [ebp - 12]
	fld	tbyte ptr [.LCPI85_1]
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	seta	al
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB85_2:
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
	fld	dword ptr [ebp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB87_9
# %bb.1:
	fld	dword ptr [ebp + 8]
	fld	st(0)
	fadd	st, st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB87_2
	jp	.LBB87_2
	jmp	.LBB87_9
.LBB87_2:
	mov	eax, dword ptr [ebp + 12]
	shr	eax, 31
	fld	dword ptr [4*eax + .LCPI87_0]
	fstp	dword ptr [ebp - 4]
.LBB87_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB87_5
# %bb.4:                                #   in Loop: Header=BB87_3 Depth=1
	fld	dword ptr [ebp - 4]
	fld	dword ptr [ebp + 8]
	fmulp	st(1), st
	fstp	dword ptr [ebp + 8]
.LBB87_5:                               #   in Loop: Header=BB87_3 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 12], eax
	cmp	dword ptr [ebp + 12], 0
	jne	.LBB87_7
# %bb.6:
	jmp	.LBB87_8
.LBB87_7:                               #   in Loop: Header=BB87_3 Depth=1
	fld	dword ptr [ebp - 4]
	fmul	st(0), st
	fstp	dword ptr [ebp - 4]
	jmp	.LBB87_3
.LBB87_8:
	jmp	.LBB87_9
.LBB87_9:
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
	fld	qword ptr [esp + 8]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB88_9
# %bb.1:
	fld	qword ptr [esp + 8]
	fld	st(0)
	fadd	st, st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB88_2
	jp	.LBB88_2
	jmp	.LBB88_9
.LBB88_2:
	mov	eax, dword ptr [ebp + 16]
	shr	eax, 31
	fld	qword ptr [8*eax + .LCPI88_0]
	fstp	qword ptr [esp]
.LBB88_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB88_5
# %bb.4:                                #   in Loop: Header=BB88_3 Depth=1
	fld	qword ptr [esp]
	fld	qword ptr [esp + 8]
	fmulp	st(1), st
	fstp	qword ptr [esp + 8]
.LBB88_5:                               #   in Loop: Header=BB88_3 Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 16], eax
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB88_7
# %bb.6:
	jmp	.LBB88_8
.LBB88_7:                               #   in Loop: Header=BB88_3 Depth=1
	fld	qword ptr [esp]
	fmul	st(0), st
	fstp	qword ptr [esp]
	jmp	.LBB88_3
.LBB88_8:
	jmp	.LBB88_9
.LBB88_9:
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
	sub	esp, 24
	mov	eax, dword ptr [ebp + 20]
	fld	tbyte ptr [ebp + 8]
	fstp	tbyte ptr [ebp - 12]
	fld	tbyte ptr [ebp - 12]
	fucomp	st(0)
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	setp	al
	test	al, 1
	jne	.LBB89_9
# %bb.1:
	fld	tbyte ptr [ebp - 12]
	fld	st(0)
	fadd	st, st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB89_2
	jp	.LBB89_2
	jmp	.LBB89_9
.LBB89_2:
	mov	eax, dword ptr [ebp + 20]
	sar	eax, 31
	and	eax, 12
	fld	tbyte ptr [eax + .LCPI89_0]
	fstp	tbyte ptr [ebp - 24]
.LBB89_3:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 0
	je	.LBB89_5
# %bb.4:                                #   in Loop: Header=BB89_3 Depth=1
	fld	tbyte ptr [ebp - 24]
	fld	tbyte ptr [ebp - 12]
	fmulp	st(1), st
	fstp	tbyte ptr [ebp - 12]
.LBB89_5:                               #   in Loop: Header=BB89_3 Depth=1
	mov	eax, dword ptr [ebp + 20]
	mov	ecx, 2
	cdq
	idiv	ecx
	mov	dword ptr [ebp + 20], eax
	cmp	dword ptr [ebp + 20], 0
	jne	.LBB89_7
# %bb.6:
	jmp	.LBB89_8
.LBB89_7:                               #   in Loop: Header=BB89_3 Depth=1
	fld	tbyte ptr [ebp - 24]
	fmul	st(0), st
	fstp	tbyte ptr [ebp - 24]
	jmp	.LBB89_3
.LBB89_8:
	jmp	.LBB89_9
.LBB89_9:
	fld	tbyte ptr [ebp - 12]
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
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 4], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 16], 0
	jbe	.LBB90_4
# %bb.2:                                #   in Loop: Header=BB90_1 Depth=1
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
	jbe	.LBB91_3
# %bb.2:                                #   in Loop: Header=BB91_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	al, byte ptr [eax]
	mov	ecx, dword ptr [ebp - 4]
	mov	byte ptr [ecx], al
	movsx	eax, al
	cmp	eax, 0
	setne	al
	mov	byte ptr [ebp - 9], al          # 1-byte Spill
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	mov	al, byte ptr [ebp - 9]          # 1-byte Reload
	test	al, 1
	jne	.LBB91_4
	jmp	.LBB91_6
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	jmp	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
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
.LBB91_6:
	cmp	dword ptr [ebp + 16], 0
	jne	.LBB91_8
# %bb.7:
	mov	eax, dword ptr [ebp - 4]
	mov	byte ptr [eax], 0
.LBB91_8:
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
	mov	dword ptr [ebp - 4], 0
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp - 4]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 12]
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
	jae	.LBB92_3
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	movsx	eax, byte ptr [eax + ecx]
	cmp	eax, 0
	setne	al
	mov	byte ptr [ebp - 5], al          # 1-byte Spill
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	mov	al, byte ptr [ebp - 5]          # 1-byte Reload
	test	al, 1
	jne	.LBB92_4
	jmp	.LBB92_6
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	jmp	.LBB92_5
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB92_1
.LBB92_6:
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
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, 0
	je	.LBB93_8
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 8], eax
.LBB93_3:                               #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	eax, dword ptr [ebp - 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, 0
	je	.LBB93_7
# %bb.4:                                #   in Loop: Header=BB93_3 Depth=2
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
	mov	dword ptr [ebp - 4], 0
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 8]
	movsx	eax, byte ptr [eax]
	cmp	eax, dword ptr [ebp + 12]
	jne	.LBB94_3
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	jmp	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [ebp + 8], ecx
	cmp	byte ptr [eax], 0
	jne	.LBB94_1
# %bb.5:
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
	fld	qword ptr [esp + 8]
	fldz
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB96_2
	jmp	.LBB96_1
.LBB96_1:
	fld	qword ptr [esp]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	ja	.LBB96_4
	jmp	.LBB96_2
.LBB96_2:
	fld	qword ptr [esp + 8]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB96_5
	jmp	.LBB96_3
.LBB96_3:
	fld	qword ptr [esp]
	fldz
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB96_5
	jmp	.LBB96_4
.LBB96_4:
	fld	qword ptr [esp + 8]
	fchs
	fstp	qword ptr [esp + 16]
	jmp	.LBB96_6
.LBB96_5:
	fld	qword ptr [esp + 8]
	fstp	qword ptr [esp + 16]
.LBB96_6:
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
	mov	eax, dword ptr [ebp + 8]
	add	eax, dword ptr [ebp + 12]
	xor	ecx, ecx
	sub	ecx, dword ptr [ebp + 20]
	add	eax, ecx
	mov	dword ptr [ebp - 16], eax
	cmp	dword ptr [ebp + 20], 0
	jne	.LBB97_2
# %bb.1:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB97_12
.LBB97_2:
	mov	eax, dword ptr [ebp + 12]
	cmp	eax, dword ptr [ebp + 20]
	jae	.LBB97_4
# %bb.3:
	mov	dword ptr [ebp - 8], 0
	jmp	.LBB97_12
.LBB97_4:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 12], eax
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, dword ptr [ebp - 16]
	ja	.LBB97_11
# %bb.6:                                #   in Loop: Header=BB97_5 Depth=1
	mov	eax, dword ptr [ebp - 12]
	movsx	eax, byte ptr [eax]
	mov	ecx, dword ptr [ebp + 16]
	movsx	ecx, byte ptr [ecx]
	cmp	eax, ecx
	jne	.LBB97_9
# %bb.7:                                #   in Loop: Header=BB97_5 Depth=1
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
	jne	.LBB97_9
# %bb.8:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB97_12
.LBB97_9:                               #   in Loop: Header=BB97_5 Depth=1
	jmp	.LBB97_10
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	mov	eax, dword ptr [ebp - 12]
	add	eax, 1
	mov	dword ptr [ebp - 12], eax
	jmp	.LBB97_5
.LBB97_11:
	mov	dword ptr [ebp - 8], 0
.LBB97_12:
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
	jmp	.LBB99_4
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
	mov	eax, dword ptr [esp]
	inc	eax
	mov	dword ptr [esp], eax
	fld	qword ptr [esp + 8]
	fld	dword ptr [.LCPI99_1]
	fmulp	st(1), st
	fstp	qword ptr [esp + 8]
	jmp	.LBB99_4
.LBB99_6:
	jmp	.LBB99_14
.LBB99_7:
	fld	qword ptr [esp + 8]
	fld	dword ptr [.LCPI99_1]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB99_13
	jmp	.LBB99_8
.LBB99_8:
	fld	qword ptr [esp + 8]
	fldz
	fxch	st(1)
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jne	.LBB99_9
	jp	.LBB99_9
	jmp	.LBB99_13
.LBB99_9:
	jmp	.LBB99_10
.LBB99_10:                              # =>This Inner Loop Header: Depth=1
	fld	qword ptr [esp + 8]
	fld	dword ptr [.LCPI99_1]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB99_12
	jmp	.LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_10 Depth=1
	mov	eax, dword ptr [esp]
	dec	eax
	mov	dword ptr [esp], eax
	fld	qword ptr [esp + 8]
	fadd	st(0), st
	fstp	qword ptr [esp + 8]
	jmp	.LBB99_10
.LBB99_12:
	jmp	.LBB99_13
.LBB99_13:
	jmp	.LBB99_14
.LBB99_14:
	mov	ecx, dword ptr [esp]
	mov	eax, dword ptr [ebp + 16]
	mov	dword ptr [eax], ecx
	cmp	dword ptr [esp + 4], 0
	je	.LBB99_16
# %bb.15:
	fld	qword ptr [esp + 8]
	fchs
	fstp	qword ptr [esp + 8]
.LBB99_16:
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
	mov	al, byte ptr [esp]
	test	al, 1
	je	.LBB100_4
	jmp	.LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
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
	mov	dword ptr [ebp - 8], 1
	mov	dword ptr [ebp - 12], 0
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jae	.LBB101_4
# %bb.2:                                #   in Loop: Header=BB101_1 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp - 8], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB101_4
# %bb.3:                                #   in Loop: Header=BB101_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB101_4:                              #   in Loop: Header=BB101_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB101_5
	jmp	.LBB101_6
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp - 8]
	shl	eax
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB101_1
.LBB101_6:
	jmp	.LBB101_7
.LBB101_7:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB101_11
# %bb.8:                                #   in Loop: Header=BB101_7 Depth=1
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jb	.LBB101_10
# %bb.9:                                #   in Loop: Header=BB101_7 Depth=1
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	sub	eax, ecx
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp - 8]
	or	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB101_10:                             #   in Loop: Header=BB101_7 Depth=1
	mov	eax, dword ptr [ebp - 8]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB101_7
.LBB101_11:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB101_13
# %bb.12:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB101_14
.LBB101_13:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 4], eax
.LBB101_14:
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
	movsx	eax, byte ptr [ebp + 8]
	cmp	eax, 0
	jge	.LBB102_2
# %bb.1:
	movsx	eax, byte ptr [ebp + 8]
	xor	eax, -1
                                        # kill: def $al killed $al killed $eax
	mov	byte ptr [ebp + 8], al
.LBB102_2:
	movsx	eax, byte ptr [ebp + 8]
	cmp	eax, 0
	jne	.LBB102_4
# %bb.3:
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
	mov	eax, dword ptr [esp + 20]
	test	eax, eax
	jns	.LBB103_2
	jmp	.LBB103_1
.LBB103_1:
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
	mov	dword ptr [ebp - 4], 0
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 8], 0
	je	.LBB104_5
# %bb.2:                                #   in Loop: Header=BB104_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB104_4
# %bb.3:                                #   in Loop: Header=BB104_1 Depth=1
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
	jb	.LBB105_2
# %bb.1:
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp - 24]
	add	ecx, dword ptr [ebp + 16]
	cmp	eax, ecx
	jbe	.LBB105_10
.LBB105_2:
	mov	dword ptr [ebp - 8], 0
.LBB105_3:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 8]
	cmp	eax, dword ptr [ebp - 12]
	jae	.LBB105_6
# %bb.4:                                #   in Loop: Header=BB105_3 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp - 8]
	mov	edx, dword ptr [eax + 8*ecx]
	mov	esi, dword ptr [eax + 8*ecx + 4]
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [eax + 8*ecx + 4], esi
	mov	dword ptr [eax + 8*ecx], edx
# %bb.5:                                #   in Loop: Header=BB105_3 Depth=1
	mov	eax, dword ptr [ebp - 8]
	add	eax, 1
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB105_3
.LBB105_6:
	jmp	.LBB105_7
.LBB105_7:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	cmp	eax, dword ptr [ebp - 16]
	jbe	.LBB105_9
# %bb.8:                                #   in Loop: Header=BB105_7 Depth=1
	mov	eax, dword ptr [ebp - 24]
	mov	ecx, dword ptr [ebp - 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp - 16]
	mov	byte ptr [eax + ecx], dl
	mov	eax, dword ptr [ebp - 16]
	add	eax, 1
	mov	dword ptr [ebp - 16], eax
	jmp	.LBB105_7
.LBB105_9:
	jmp	.LBB105_14
.LBB105_10:
	jmp	.LBB105_11
.LBB105_11:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	jbe	.LBB105_13
# %bb.12:                               #   in Loop: Header=BB105_11 Depth=1
	mov	eax, dword ptr [ebp - 24]
	mov	ecx, dword ptr [ebp + 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp + 16]
	mov	byte ptr [eax + ecx], dl
	jmp	.LBB105_11
.LBB105_13:
	jmp	.LBB105_14
.LBB105_14:
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
	mov	eax, dword ptr [ebp + 16]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 12], eax
	mov	eax, dword ptr [ebp + 12]
	mov	dword ptr [ebp - 16], eax
	mov	eax, dword ptr [ebp - 12]
	cmp	eax, dword ptr [ebp - 16]
	jb	.LBB106_2
# %bb.1:
	mov	eax, dword ptr [ebp - 12]
	mov	ecx, dword ptr [ebp - 16]
	add	ecx, dword ptr [ebp + 16]
	cmp	eax, ecx
	jbe	.LBB106_9
.LBB106_2:
	mov	dword ptr [ebp - 4], 0
.LBB106_3:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 4]
	cmp	eax, dword ptr [ebp - 8]
	jae	.LBB106_6
# %bb.4:                                #   in Loop: Header=BB106_3 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp - 4]
	mov	dx, word ptr [eax + 2*ecx]
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	mov	word ptr [eax + 2*ecx], dx
# %bb.5:                                #   in Loop: Header=BB106_3 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB106_3
.LBB106_6:
	mov	eax, dword ptr [ebp + 16]
	and	eax, 1
	cmp	eax, 0
	je	.LBB106_8
# %bb.7:
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp + 16]
	sub	ecx, 1
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 12]
	mov	ecx, dword ptr [ebp + 16]
	sub	ecx, 1
	mov	byte ptr [eax + ecx], dl
.LBB106_8:
	jmp	.LBB106_13
.LBB106_9:
	jmp	.LBB106_10
.LBB106_10:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	jbe	.LBB106_12
# %bb.11:                               #   in Loop: Header=BB106_10 Depth=1
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp + 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 12]
	mov	ecx, dword ptr [ebp + 16]
	mov	byte ptr [eax + ecx], dl
	jmp	.LBB106_10
.LBB106_12:
	jmp	.LBB106_13
.LBB106_13:
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
	jb	.LBB107_2
# %bb.1:
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp - 20]
	add	ecx, dword ptr [ebp + 16]
	cmp	eax, ecx
	jbe	.LBB107_10
.LBB107_2:
	mov	dword ptr [ebp - 4], 0
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp - 4]
	cmp	eax, dword ptr [ebp - 8]
	jae	.LBB107_6
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	mov	eax, dword ptr [ebp + 12]
	mov	ecx, dword ptr [ebp - 4]
	mov	edx, dword ptr [eax + 4*ecx]
	mov	eax, dword ptr [ebp + 8]
	mov	ecx, dword ptr [ebp - 4]
	mov	dword ptr [eax + 4*ecx], edx
# %bb.5:                                #   in Loop: Header=BB107_3 Depth=1
	mov	eax, dword ptr [ebp - 4]
	add	eax, 1
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB107_3
.LBB107_6:
	jmp	.LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	cmp	eax, dword ptr [ebp - 12]
	jbe	.LBB107_9
# %bb.8:                                #   in Loop: Header=BB107_7 Depth=1
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp - 12]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp - 12]
	mov	byte ptr [eax + ecx], dl
	mov	eax, dword ptr [ebp - 12]
	add	eax, 1
	mov	dword ptr [ebp - 12], eax
	jmp	.LBB107_7
.LBB107_9:
	jmp	.LBB107_14
.LBB107_10:
	jmp	.LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [ebp + 16], ecx
	cmp	eax, 0
	jbe	.LBB107_13
# %bb.12:                               #   in Loop: Header=BB107_11 Depth=1
	mov	eax, dword ptr [ebp - 20]
	mov	ecx, dword ptr [ebp + 16]
	mov	dl, byte ptr [eax + ecx]
	mov	eax, dword ptr [ebp - 16]
	mov	ecx, dword ptr [ebp + 16]
	mov	byte ptr [eax + ecx], dl
	jmp	.LBB107_11
.LBB107_13:
	jmp	.LBB107_14
.LBB107_14:
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
	mov	dword ptr [ebp - 4], 0
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB114_6
# %bb.2:                                #   in Loop: Header=BB114_1 Depth=1
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
	mov	dword ptr [ebp - 4], 0
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB115_6
# %bb.2:                                #   in Loop: Header=BB115_1 Depth=1
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
	mov	dword ptr [ebp - 8], 0
	mov	dword ptr [ebp - 4], 0
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB117_6
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
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
	mov	dword ptr [ebp - 8], 0
	mov	dword ptr [ebp - 4], 0
.LBB118_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 4], 16
	jge	.LBB118_6
# %bb.2:                                #   in Loop: Header=BB118_1 Depth=1
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
	mov	dword ptr [ebp - 4], 0
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 8], 0
	je	.LBB119_5
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	mov	eax, dword ptr [ebp + 8]
	and	eax, 1
	cmp	eax, 0
	je	.LBB119_4
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
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
	mov	dword ptr [ebp - 8], 0
	cmp	dword ptr [ebp + 8], 0
	jne	.LBB120_2
# %bb.1:
	mov	dword ptr [ebp - 4], 0
	jmp	.LBB120_8
.LBB120_2:
	jmp	.LBB120_3
.LBB120_3:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp + 12], 0
	je	.LBB120_7
# %bb.4:                                #   in Loop: Header=BB120_3 Depth=1
	mov	eax, dword ptr [ebp + 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB120_6
# %bb.5:                                #   in Loop: Header=BB120_3 Depth=1
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
	mov	dword ptr [ebp - 8], 1
	mov	dword ptr [ebp - 12], 0
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jae	.LBB121_4
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp - 8], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB121_4
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB121_5
	jmp	.LBB121_6
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp - 8]
	shl	eax
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB121_1
.LBB121_6:
	jmp	.LBB121_7
.LBB121_7:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB121_11
# %bb.8:                                #   in Loop: Header=BB121_7 Depth=1
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jb	.LBB121_10
# %bb.9:                                #   in Loop: Header=BB121_7 Depth=1
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	sub	eax, ecx
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp - 8]
	or	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB121_10:                             #   in Loop: Header=BB121_7 Depth=1
	mov	eax, dword ptr [ebp - 8]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB121_7
.LBB121_11:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB121_13
# %bb.12:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB121_14
.LBB121_13:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 4], eax
.LBB121_14:
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
	fld	dword ptr [ebp + 8]
	fld	dword ptr [ebp + 12]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB122_2
	jmp	.LBB122_1
.LBB122_1:
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
	fld	qword ptr [esp + 8]
	fld	qword ptr [esp]
	fucompp
	fnstsw	ax
                                        # kill: def $ah killed $ah killed $ax
	sahf
	jbe	.LBB123_2
	jmp	.LBB123_1
.LBB123_1:
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
	mov	dword ptr [ebp - 8], 0
	mov	dword ptr [ebp - 12], 0
	cmp	dword ptr [ebp + 12], 0
	jge	.LBB126_2
# %bb.1:
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
	je	.LBB126_5
# %bb.4:                                #   in Loop: Header=BB126_3 Depth=1
	movsx	eax, byte ptr [ebp - 1]
	cmp	eax, 32
	setb	al
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB126_5:                              #   in Loop: Header=BB126_3 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB126_6
	jmp	.LBB126_10
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	mov	eax, dword ptr [ebp + 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB126_8
# %bb.7:                                #   in Loop: Header=BB126_3 Depth=1
	mov	eax, dword ptr [ebp + 8]
	add	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB126_8:                              #   in Loop: Header=BB126_3 Depth=1
	mov	eax, dword ptr [ebp + 8]
	shl	eax
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp + 12]
	sar	eax
	mov	dword ptr [ebp + 12], eax
# %bb.9:                                #   in Loop: Header=BB126_3 Depth=1
	mov	al, byte ptr [ebp - 1]
	add	al, 1
	mov	byte ptr [ebp - 1], al
	jmp	.LBB126_3
.LBB126_10:
	cmp	dword ptr [ebp - 8], 0
	je	.LBB126_12
# %bb.11:
	xor	eax, eax
	sub	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 20], eax       # 4-byte Spill
	jmp	.LBB126_13
.LBB126_12:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 20], eax       # 4-byte Spill
.LBB126_13:
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
	mov	dword ptr [ebp - 4], 0
	cmp	dword ptr [ebp + 8], 0
	jge	.LBB127_2
# %bb.1:
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
	mov	dword ptr [ebp - 4], 0
	cmp	dword ptr [ebp + 8], 0
	jge	.LBB128_2
# %bb.1:
	xor	eax, eax
	sub	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp + 8], eax
	mov	dword ptr [ebp - 4], 1
.LBB128_2:
	cmp	dword ptr [ebp + 12], 0
	jge	.LBB128_4
# %bb.3:
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
	mov	word ptr [ebp - 4], 1
	mov	word ptr [ebp - 6], 0
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	movzx	ecx, word ptr [ebp + 12]
	movzx	edx, word ptr [ebp + 8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, edx
	mov	byte ptr [ebp - 7], al          # 1-byte Spill
	jge	.LBB129_4
# %bb.2:                                #   in Loop: Header=BB129_1 Depth=1
	movzx	ecx, word ptr [ebp - 4]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, 0
	mov	byte ptr [ebp - 7], al          # 1-byte Spill
	je	.LBB129_4
# %bb.3:                                #   in Loop: Header=BB129_1 Depth=1
	movzx	eax, word ptr [ebp + 12]
	and	eax, 32768
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 7], al          # 1-byte Spill
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
	mov	al, byte ptr [ebp - 7]          # 1-byte Reload
	test	al, 1
	jne	.LBB129_5
	jmp	.LBB129_6
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	movzx	eax, word ptr [ebp + 12]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp + 12], ax
	movzx	eax, word ptr [ebp - 4]
	shl	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp - 4], ax
	jmp	.LBB129_1
.LBB129_6:
	jmp	.LBB129_7
.LBB129_7:                              # =>This Inner Loop Header: Depth=1
	cmp	word ptr [ebp - 4], 0
	je	.LBB129_11
# %bb.8:                                #   in Loop: Header=BB129_7 Depth=1
	movzx	eax, word ptr [ebp + 8]
	movzx	ecx, word ptr [ebp + 12]
	cmp	eax, ecx
	jl	.LBB129_10
# %bb.9:                                #   in Loop: Header=BB129_7 Depth=1
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
.LBB129_10:                             #   in Loop: Header=BB129_7 Depth=1
	movzx	eax, word ptr [ebp - 4]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp - 4], ax
	movzx	eax, word ptr [ebp + 12]
	sar	eax
                                        # kill: def $ax killed $ax killed $eax
	mov	word ptr [ebp + 12], ax
	jmp	.LBB129_7
.LBB129_11:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB129_13
# %bb.12:
	mov	ax, word ptr [ebp + 8]
	mov	word ptr [ebp - 2], ax
	jmp	.LBB129_14
.LBB129_13:
	mov	ax, word ptr [ebp - 6]
	mov	word ptr [ebp - 2], ax
.LBB129_14:
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
	mov	dword ptr [ebp - 8], 1
	mov	dword ptr [ebp - 12], 0
.LBB130_1:                              # =>This Inner Loop Header: Depth=1
	mov	ecx, dword ptr [ebp + 12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	ecx, dword ptr [ebp + 8]
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	jae	.LBB130_4
# %bb.2:                                #   in Loop: Header=BB130_1 Depth=1
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	cmp	dword ptr [ebp - 8], 0
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
	je	.LBB130_4
# %bb.3:                                #   in Loop: Header=BB130_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	and	eax, -2147483648
	cmp	eax, 0
	setne	al
	xor	al, -1
	mov	byte ptr [ebp - 13], al         # 1-byte Spill
.LBB130_4:                              #   in Loop: Header=BB130_1 Depth=1
	mov	al, byte ptr [ebp - 13]         # 1-byte Reload
	test	al, 1
	jne	.LBB130_5
	jmp	.LBB130_6
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	mov	eax, dword ptr [ebp + 12]
	shl	eax
	mov	dword ptr [ebp + 12], eax
	mov	eax, dword ptr [ebp - 8]
	shl	eax
	mov	dword ptr [ebp - 8], eax
	jmp	.LBB130_1
.LBB130_6:
	jmp	.LBB130_7
.LBB130_7:                              # =>This Inner Loop Header: Depth=1
	cmp	dword ptr [ebp - 8], 0
	je	.LBB130_11
# %bb.8:                                #   in Loop: Header=BB130_7 Depth=1
	mov	eax, dword ptr [ebp + 8]
	cmp	eax, dword ptr [ebp + 12]
	jb	.LBB130_10
# %bb.9:                                #   in Loop: Header=BB130_7 Depth=1
	mov	ecx, dword ptr [ebp + 12]
	mov	eax, dword ptr [ebp + 8]
	sub	eax, ecx
	mov	dword ptr [ebp + 8], eax
	mov	eax, dword ptr [ebp - 8]
	or	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 12], eax
.LBB130_10:                             #   in Loop: Header=BB130_7 Depth=1
	mov	eax, dword ptr [ebp - 8]
	shr	eax
	mov	dword ptr [ebp - 8], eax
	mov	eax, dword ptr [ebp + 12]
	shr	eax
	mov	dword ptr [ebp + 12], eax
	jmp	.LBB130_7
.LBB130_11:
	cmp	dword ptr [ebp + 16], 0
	je	.LBB130_13
# %bb.12:
	mov	eax, dword ptr [ebp + 8]
	mov	dword ptr [ebp - 4], eax
	jmp	.LBB130_14
.LBB130_13:
	mov	eax, dword ptr [ebp - 12]
	mov	dword ptr [ebp - 4], eax
.LBB130_14:
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
	mov	dword ptr [esp + 32], 0
	jmp	.LBB136_9
.LBB136_2:
	mov	eax, dword ptr [esp + 12]
	cmp	eax, dword ptr [esp + 4]
	jle	.LBB136_4
# %bb.3:
	mov	dword ptr [esp + 32], 2
	jmp	.LBB136_9
.LBB136_4:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jae	.LBB136_6
# %bb.5:
	mov	dword ptr [esp + 32], 0
	jmp	.LBB136_9
.LBB136_6:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jbe	.LBB136_8
# %bb.7:
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
	mov	eax, dword ptr [ebp + 16]
	shr	eax, 31
	mov	dword ptr [esp + 20], eax
	fld1
	fstp	qword ptr [esp + 8]
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 16]
	and	eax, 1
	cmp	eax, 0
	je	.LBB147_3
# %bb.2:                                #   in Loop: Header=BB147_1 Depth=1
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
	mov	eax, dword ptr [ebp + 12]
	shr	eax, 31
	mov	dword ptr [ebp - 4], eax
	mov	dword ptr [ebp - 8], 1065353216
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [ebp + 12]
	and	eax, 1
	cmp	eax, 0
	je	.LBB148_3
# %bb.2:                                #   in Loop: Header=BB148_1 Depth=1
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
	mov	dword ptr [esp + 32], 0
	jmp	.LBB149_9
.LBB149_2:
	mov	eax, dword ptr [esp + 12]
	cmp	eax, dword ptr [esp + 4]
	jbe	.LBB149_4
# %bb.3:
	mov	dword ptr [esp + 32], 2
	jmp	.LBB149_9
.LBB149_4:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jae	.LBB149_6
# %bb.5:
	mov	dword ptr [esp + 32], 0
	jmp	.LBB149_9
.LBB149_6:
	mov	eax, dword ptr [esp + 8]
	cmp	eax, dword ptr [esp]
	jbe	.LBB149_8
# %bb.7:
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
