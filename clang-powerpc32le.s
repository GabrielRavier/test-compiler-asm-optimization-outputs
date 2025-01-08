	.text
	.file	"mini-libc.c"
	.globl	memmove                         # -- Begin function memmove
	.p2align	2
	.type	memmove,@function
memmove:                                # @memmove
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_memmove@ha
	lwzu %r3, .L__profc_memmove@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)
	lwz %r3, 8(%r31)
	lwz %r4, 12(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB0_6
	b .LBB0_1
.LBB0_1:
	lis %r3, .L__profc_memmove@ha
	la %r4, .L__profc_memmove@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 16(%r31)
	lwz %r3, 8(%r31)
	add %r3, %r3, %r4
	stw %r3, 8(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	b .LBB0_2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB0_5
	b .LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	lis %r3, .L__profc_memmove@ha
	la %r4, .L__profc_memmove@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 8(%r31)
	addi %r4, %r3, -1
	stw %r4, 8(%r31)
	lbz %r3, -1(%r3)
	lwz %r4, 12(%r31)
	addi %r5, %r4, -1
	stw %r5, 12(%r31)
	stb %r3, -1(%r4)
	b .LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	b .LBB0_2
.LBB0_5:
	b .LBB0_13
.LBB0_6:
	lwz %r3, 8(%r31)
	lwz %r4, 12(%r31)
	cmplw	%r3, %r4
	beq	%cr0, .LBB0_12
	b .LBB0_7
.LBB0_7:
	lis %r3, .L__profc_memmove@ha
	la %r4, .L__profc_memmove@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB0_11
	b .LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	lis %r3, .L__profc_memmove@ha
	la %r4, .L__profc_memmove@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 8(%r31)
	addi %r4, %r3, 1
	stw %r4, 8(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 12(%r31)
	addi %r5, %r4, 1
	stw %r5, 12(%r31)
	stb %r3, 0(%r4)
	b .LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	b .LBB0_8
.LBB0_11:
	b .LBB0_12
.LBB0_12:
	b .LBB0_13
.LBB0_13:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-.Lfunc_begin0
	.cfi_endproc
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
memccpy:                                # @memccpy
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 36(%r31)
	stw %r4, 32(%r31)
	stw %r5, 28(%r31)
	stw %r6, 24(%r31)
	lis %r4, .L__profc_memccpy@ha
	lwzu %r3, .L__profc_memccpy@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 36(%r31)
	stw %r3, 20(%r31)
	lwz %r3, 32(%r31)
	stw %r3, 16(%r31)
	lbz %r3, 28(%r31)
	stw %r3, 28(%r31)
	b .LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r4, 24(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB1_4
	b .LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lis %r3, .L__profc_memccpy@ha
	la %r4, .L__profc_memccpy@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 20(%r31)
	stb %r4, 0(%r3)
	lwz %r5, 28(%r31)
	xor %r6, %r4, %r5
	addic %r3, %r6, -1
	subfe %r3, %r3, %r6
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB1_4
	b .LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lis %r4, .L__profc_memccpy@ha
	la %r5, .L__profc_memccpy@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB1_7
	b .LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	lis %r3, .L__profc_memccpy@ha
	la %r4, .L__profc_memccpy@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, -1
	stw %r3, 24(%r31)
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 16(%r31)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB1_1
.LBB1_7:
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB1_9
	b .LBB1_8
.LBB1_8:
	lis %r3, .L__profc_memccpy@ha
	la %r4, .L__profc_memccpy@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 40(%r31)
	b .LBB1_10
.LBB1_9:
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB1_10
.LBB1_10:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-.Lfunc_begin1
	.cfi_endproc
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc_memchr@ha
	lwzu %r3, .L__profc_memchr@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	stw %r3, 28(%r31)
	lbz %r3, 36(%r31)
	stw %r3, 36(%r31)
	b .LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB2_4
	b .LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	lis %r3, .L__profc_memchr@ha
	la %r4, .L__profc_memchr@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 28(%r31)
	lbz %r4, 0(%r3)
	lwz %r5, 36(%r31)
	xor %r6, %r4, %r5
	addic %r3, %r6, -1
	subfe %r3, %r3, %r6
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB2_4
	b .LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_memchr@ha
	la %r5, .L__profc_memchr@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB2_7
	b .LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	lis %r3, .L__profc_memchr@ha
	la %r4, .L__profc_memchr@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB2_6
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	b .LBB2_1
.LBB2_7:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB2_9
	b .LBB2_8
.LBB2_8:
	lis %r3, .L__profc_memchr@ha
	la %r4, .L__profc_memchr@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 28(%r31)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB2_10
.LBB2_9:
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB2_10
.LBB2_10:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-.Lfunc_begin2
	.cfi_endproc
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
memcmp:                                 # @memcmp
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc_memcmp@ha
	lwzu %r3, .L__profc_memcmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	stw %r3, 28(%r31)
	lwz %r3, 36(%r31)
	stw %r3, 24(%r31)
	b .LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB3_4
	b .LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lis %r3, .L__profc_memcmp@ha
	la %r4, .L__profc_memcmp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 28(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 24(%r31)
	lbz %r5, 0(%r3)
	xor %r3, %r4, %r5
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB3_4
	b .LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_memcmp@ha
	la %r5, .L__profc_memcmp@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB3_7
	b .LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lis %r3, .L__profc_memcmp@ha
	la %r4, .L__profc_memcmp@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB3_1
.LBB3_7:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB3_9
	b .LBB3_8
.LBB3_8:
	lis %r3, .L__profc_memcmp@ha
	la %r4, .L__profc_memcmp@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 28(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB3_10
.LBB3_9:
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB3_10
.LBB3_10:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-.Lfunc_begin3
	.cfi_endproc
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_memcpy@ha
	lwzu %r3, .L__profc_memcpy@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)
	b .LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB4_4
	b .LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lis %r3, .L__profc_memcpy@ha
	la %r4, .L__profc_memcpy@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 8(%r31)
	addi %r4, %r3, 1
	stw %r4, 8(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 12(%r31)
	addi %r5, %r4, 1
	stw %r5, 12(%r31)
	stb %r3, 0(%r4)
	b .LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	b .LBB4_1
.LBB4_4:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-.Lfunc_begin4
	.cfi_endproc
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
memrchr:                                # @memrchr
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	stw %r5, 12(%r31)
	lis %r4, .L__profc_memrchr@ha
	lwzu %r3, .L__profc_memrchr@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)
	lbz %r3, 16(%r31)
	stw %r3, 16(%r31)
	b .LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 12(%r31)
	addi %r4, %r3, -1
	stw %r4, 12(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB5_5
	b .LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	lis %r3, .L__profc_memrchr@ha
	la %r4, .L__profc_memrchr@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 8(%r31)
	lwz %r4, 12(%r31)
	lbzx %r3, %r3, %r4
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB5_4
	b .LBB5_3
.LBB5_3:
	lis %r3, .L__profc_memrchr@ha
	la %r4, .L__profc_memrchr@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 8(%r31)
	lwz %r4, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 24(%r31)
	b .LBB5_6
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	b .LBB5_1
.LBB5_5:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB5_6
.LBB5_6:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-.Lfunc_begin5
	.cfi_endproc
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	2
	.type	memset,@function
memset:                                 # @memset
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_memset@ha
	lwzu %r3, .L__profc_memset@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	b .LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB6_4
	b .LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	lis %r3, .L__profc_memset@ha
	la %r4, .L__profc_memset@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	lwz %r4, 12(%r31)
	stb %r3, 0(%r4)
	b .LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	lwz %r3, 12(%r31)
	addi %r3, %r3, 1
	stw %r3, 12(%r31)
	b .LBB6_1
.LBB6_4:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end6:
	.size	memset, .Lfunc_end6-.Lfunc_begin6
	.cfi_endproc
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_stpcpy@ha
	lwzu %r3, .L__profc_stpcpy@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 24(%r31)
	stb %r3, 0(%r4)
	cmplwi	%r3, 0
	beq	%cr0, .LBB7_4
	b .LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	lis %r3, .L__profc_stpcpy@ha
	la %r4, .L__profc_stpcpy@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB7_1
.LBB7_4:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-.Lfunc_begin7
	.cfi_endproc
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_strchrnul@ha
	lwzu %r3, .L__profc_strchrnul@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lbz %r3, 20(%r31)
	stw %r3, 20(%r31)
	b .LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB8_4
	b .LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lis %r3, .L__profc_strchrnul@ha
	la %r4, .L__profc_strchrnul@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	lwz %r5, 20(%r31)
	xor %r6, %r4, %r5
	addic %r3, %r6, -1
	subfe %r3, %r3, %r6
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB8_4
	b .LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_strchrnul@ha
	la %r5, .L__profc_strchrnul@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB8_7
	b .LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	lis %r3, .L__profc_strchrnul@ha
	la %r4, .L__profc_strchrnul@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB8_6
.LBB8_6:                                #   in Loop: Header=BB8_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB8_1
.LBB8_7:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-.Lfunc_begin8
	.cfi_endproc
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	2
	.type	strchr,@function
strchr:                                 # @strchr
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc_strchr@ha
	lwzu %r3, .L__profc_strchr@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	lis %r3, .L__profc_strchr@ha
	la %r4, .L__profc_strchr@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB9_2
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB9_4
	b .LBB9_3
.LBB9_3:
	lis %r3, .L__profc_strchr@ha
	la %r4, .L__profc_strchr@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB9_7
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	b .LBB9_5
.LBB9_5:                                #   in Loop: Header=BB9_2 Depth=1
	lwz %r3, 20(%r31)
	addi %r4, %r3, 1
	stw %r4, 20(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	bne	%cr0, .LBB9_1
	b .LBB9_6
.LBB9_6:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB9_7
.LBB9_7:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-.Lfunc_begin9
	.cfi_endproc
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
strcmp:                                 # @strcmp
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_strcmp@ha
	lwzu %r3, .L__profc_strcmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 20(%r31)
	lbz %r5, 0(%r3)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB10_4
	b .LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	lis %r3, .L__profc_strcmp@ha
	la %r4, .L__profc_strcmp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB10_4
	b .LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_strcmp@ha
	la %r5, .L__profc_strcmp@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB10_7
	b .LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lis %r3, .L__profc_strcmp@ha
	la %r4, .L__profc_strcmp@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB10_1
.LBB10_7:
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-.Lfunc_begin10
	.cfi_endproc
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 # @strlen
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_strlen@ha
	lwzu %r3, .L__profc_strlen@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	b .LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB11_4
	b .LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	lis %r3, .L__profc_strlen@ha
	la %r4, .L__profc_strlen@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB11_3
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB11_1
.LBB11_4:
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	sub	%r3, %r4, %r3
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-.Lfunc_begin11
	.cfi_endproc
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
strncmp:                                # @strncmp
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 36(%r31)
	stw %r4, 32(%r31)
	stw %r5, 28(%r31)
	lis %r4, .L__profc_strncmp@ha
	lwzu %r3, .L__profc_strncmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 36(%r31)
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	stw %r3, 20(%r31)
	lwz %r3, 28(%r31)
	addi %r4, %r3, -1
	stw %r4, 28(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB12_2
	b .LBB12_1
.LBB12_1:
	lis %r3, .L__profc_strncmp@ha
	la %r4, .L__profc_strncmp@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB12_14
.LBB12_2:
	b .LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB12_10
	b .LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_3 Depth=1
	lis %r3, .L__profc_strncmp@ha
	la %r4, .L__profc_strncmp@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	lwz %r3, 20(%r31)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB12_10
	b .LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_3 Depth=1
	lis %r3, .L__profc_strncmp@ha
	la %r4, .L__profc_strncmp@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	b .LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
	lis %r3, .L__profc_strncmp@ha
	la %r4, .L__profc_strncmp@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r4, 28(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB12_10
	b .LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
	lis %r3, .L__profc_strncmp@ha
	la %r4, .L__profc_strncmp@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	b .LBB12_8
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
	lis %r3, .L__profc_strncmp@ha
	la %r4, .L__profc_strncmp@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 20(%r31)
	lbz %r5, 0(%r3)
	xor %r3, %r4, %r5
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB12_10
	b .LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_strncmp@ha
	la %r5, .L__profc_strncmp@l(%r4)
	lwz %r4, 32(%r5)
	lwz %r6, 36(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 36(%r5)
	stw %r4, 32(%r5)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB12_10
.LBB12_10:                              #   in Loop: Header=BB12_3 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB12_13
	b .LBB12_11
.LBB12_11:                              #   in Loop: Header=BB12_3 Depth=1
	lis %r3, .L__profc_strncmp@ha
	la %r4, .L__profc_strncmp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB12_12
.LBB12_12:                              #   in Loop: Header=BB12_3 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	lwz %r3, 28(%r31)
	addi %r3, %r3, -1
	stw %r3, 28(%r31)
	b .LBB12_3
.LBB12_13:
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, 40(%r31)
	b .LBB12_14
.LBB12_14:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-.Lfunc_begin12
	.cfi_endproc
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	2
	.type	swab,@function
swab:                                   # @swab
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_swab@ha
	lwzu %r3, .L__profc_swab@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)
	b .LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmpwi	%r3, 2
	blt	%cr0, .LBB13_4
	b .LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	lis %r3, .L__profc_swab@ha
	la %r4, .L__profc_swab@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 12(%r31)
	lbz %r3, 1(%r3)
	lwz %r4, 8(%r31)
	stb %r3, 0(%r4)
	lwz %r3, 12(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 8(%r31)
	stb %r3, 1(%r4)
	lwz %r3, 8(%r31)
	addi %r3, %r3, 2
	stw %r3, 8(%r31)
	lwz %r3, 12(%r31)
	addi %r3, %r3, 2
	stw %r3, 12(%r31)
	b .LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -2
	stw %r3, 16(%r31)
	b .LBB13_1
.LBB13_4:
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end13:
	.size	swab, .Lfunc_end13-.Lfunc_begin13
	.cfi_endproc
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
isalpha:                                # @isalpha
.Lfunc_begin14:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_isalpha@ha
	lwzu %r3, .L__profc_isalpha@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
	cmplwi	%r3, 26
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB14_2
# %bb.1:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB14_2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-.Lfunc_begin14
	.cfi_endproc
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	2
	.type	isascii,@function
isascii:                                # @isascii
.Lfunc_begin15:
	.cfi_startproc
# %bb.0:
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 8(%r31)
	lis %r4, .L__profc_isascii@ha
	lwzu %r3, .L__profc_isascii@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 8(%r31)
	rlwinm %r3, %r3, 0, 0, 24
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	blr
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-.Lfunc_begin15
	.cfi_endproc
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	2
	.type	isblank,@function
isblank:                                # @isblank
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_isblank@ha
	lwzu %r3, .L__profc_isblank@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 24(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB16_3
	b .LBB16_1
.LBB16_1:
	lis %r3, .L__profc_isblank@ha
	la %r4, .L__profc_isblank@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 24(%r31)
	xori %r3, %r4, 9
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 9
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB16_3
	b .LBB16_2
.LBB16_2:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_isblank@ha
	la %r5, .L__profc_isblank@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB16_3
.LBB16_3:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-.Lfunc_begin16
	.cfi_endproc
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_iscntrl@ha
	lwzu %r3, .L__profc_iscntrl@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 24(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB17_3
	b .LBB17_1
.LBB17_1:
	lis %r3, .L__profc_iscntrl@ha
	la %r4, .L__profc_iscntrl@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 24(%r31)
	xori %r3, %r4, 127
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 127
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB17_3
	b .LBB17_2
.LBB17_2:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_iscntrl@ha
	la %r5, .L__profc_iscntrl@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB17_3
.LBB17_3:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-.Lfunc_begin17
	.cfi_endproc
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
isdigit:                                # @isdigit
.Lfunc_begin18:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_isdigit@ha
	lwzu %r3, .L__profc_isdigit@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, -48
	cmplwi	%r3, 10
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB18_2
# %bb.1:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB18_2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-.Lfunc_begin18
	.cfi_endproc
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
isgraph:                                # @isgraph
.Lfunc_begin19:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_isgraph@ha
	lwzu %r3, .L__profc_isgraph@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, -33
	cmplwi	%r3, 94
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB19_2
# %bb.1:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB19_2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-.Lfunc_begin19
	.cfi_endproc
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	2
	.type	islower,@function
islower:                                # @islower
.Lfunc_begin20:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_islower@ha
	lwzu %r3, .L__profc_islower@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, -97
	cmplwi	%r3, 26
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB20_2
# %bb.1:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB20_2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end20:
	.size	islower, .Lfunc_end20-.Lfunc_begin20
	.cfi_endproc
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	2
	.type	isprint,@function
isprint:                                # @isprint
.Lfunc_begin21:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_isprint@ha
	lwzu %r3, .L__profc_isprint@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, -32
	cmplwi	%r3, 95
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB21_2
# %bb.1:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB21_2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-.Lfunc_begin21
	.cfi_endproc
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	2
	.type	isspace,@function
isspace:                                # @isspace
.Lfunc_begin22:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	lis %r4, .L__profc_isspace@ha
	lwzu %r3, .L__profc_isspace@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 40(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB22_5
	b .LBB22_1
.LBB22_1:
	lis %r3, .L__profc_isspace@ha
	la %r4, .L__profc_isspace@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 40(%r31)
	addi %r3, %r3, -9
	cmplwi	%r3, 5
	mfcr %r3                                # cr0
	stw %r3, 24(%r31)
	li %r3, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB22_3
# %bb.2:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
.LBB22_3:
	lwz %r3, 24(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB22_5
	b .LBB22_4
.LBB22_4:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_isspace@ha
	la %r5, .L__profc_isspace@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	b .LBB22_5
.LBB22_5:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-.Lfunc_begin22
	.cfi_endproc
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	2
	.type	isupper,@function
isupper:                                # @isupper
.Lfunc_begin23:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_isupper@ha
	lwzu %r3, .L__profc_isupper@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, -65
	cmplwi	%r3, 26
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB23_2
# %bb.1:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB23_2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-.Lfunc_begin23
	.cfi_endproc
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
.Lfunc_begin24:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	lis %r4, .L__profc_iswcntrl@ha
	lwzu %r3, .L__profc_iswcntrl@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 40(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_9
	b .LBB24_1
.LBB24_1:
	lis %r3, .L__profc_iswcntrl@ha
	la %r4, .L__profc_iswcntrl@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 40(%r31)
	addi %r4, %r3, -127
	li %r3, 1
	cmplwi	%r4, 33
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_9
	b .LBB24_2
.LBB24_2:
	lis %r3, .L__profc_iswcntrl@ha
	la %r4, .L__profc_iswcntrl@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	b .LBB24_3
.LBB24_3:
	lis %r3, .L__profc_iswcntrl@ha
	la %r4, .L__profc_iswcntrl@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 40(%r31)
	addi %r4, %r3, -8232
	li %r3, 1
	cmplwi	%r4, 2
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_9
	b .LBB24_4
.LBB24_4:
	lis %r3, .L__profc_iswcntrl@ha
	la %r4, .L__profc_iswcntrl@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	b .LBB24_5
.LBB24_5:
	lis %r3, .L__profc_iswcntrl@ha
	la %r4, .L__profc_iswcntrl@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 40(%r31)
	addi %r3, %r3, 7
	addis %r3, %r3, -1
	cmplwi	%r3, 3
	mfcr %r3                                # cr0
	stw %r3, 24(%r31)
	li %r3, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_7
# %bb.6:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
.LBB24_7:
	lwz %r3, 24(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_9
	b .LBB24_8
.LBB24_8:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_iswcntrl@ha
	la %r5, .L__profc_iswcntrl@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	b .LBB24_9
.LBB24_9:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-.Lfunc_begin24
	.cfi_endproc
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
.Lfunc_begin25:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_iswdigit@ha
	lwzu %r3, .L__profc_iswdigit@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, -48
	cmplwi	%r3, 10
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB25_2
# %bb.1:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB25_2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-.Lfunc_begin25
	.cfi_endproc
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	2
	.type	iswprint,@function
iswprint:                               # @iswprint
.Lfunc_begin26:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	lis %r4, .L__profc_iswprint@ha
	lwzu %r3, .L__profc_iswprint@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	cmplwi	%r3, 254
	bgt	%cr0, .LBB26_4
	b .LBB26_1
.LBB26_1:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	clrlwi	%r3, %r3, 25
	cmpwi	%r3, 32
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB26_3
# %bb.2:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB26_3:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)
	b .LBB26_15
.LBB26_4:
	lwz %r3, 20(%r31)
	cmplwi	%r3, 8232
	blt	%cr0, .LBB26_9
	b .LBB26_5
.LBB26_5:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 20(%r31)
	addi %r3, %r3, -8234
	cmplwi	%r3, 47062
	blt	%cr0, .LBB26_9
	b .LBB26_6
.LBB26_6:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	b .LBB26_7
.LBB26_7:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 8192
	addis %r3, %r3, -1
	cmplwi	%r3, 8185
	blt	%cr0, .LBB26_9
	b .LBB26_8
.LBB26_8:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	b .LBB26_10
.LBB26_9:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 1
	stw %r3, 24(%r31)
	b .LBB26_15
.LBB26_10:
	lwz %r3, 20(%r31)
	addi %r3, %r3, 4
	addis %r3, %r3, -1
	lis %r4, 16
	ori %r4, %r4, 3
	cmplw	%r3, %r4
	bgt	%cr0, .LBB26_13
	b .LBB26_11
.LBB26_11:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	lwz %r3, 20(%r31)
	not	%r3, %r3
	rlwinm %r3, %r3, 0, 16, 30
	cmplwi	%r3, 0
	beq	%cr0, .LBB26_13
	b .LBB26_12
.LBB26_12:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 72(%r4)
	lwz %r5, 76(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 76(%r4)
	stw %r3, 72(%r4)
	b .LBB26_14
.LBB26_13:
	lis %r3, .L__profc_iswprint@ha
	la %r4, .L__profc_iswprint@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB26_15
.LBB26_14:
	li %r3, 1
	stw %r3, 24(%r31)
	b .LBB26_15
.LBB26_15:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-.Lfunc_begin26
	.cfi_endproc
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
.Lfunc_begin27:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	lis %r4, .L__profc_iswxdigit@ha
	lwzu %r3, .L__profc_iswxdigit@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	addi %r4, %r3, -48
	li %r3, 1
	cmplwi	%r4, 10
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB27_5
	b .LBB27_1
.LBB27_1:
	lis %r3, .L__profc_iswxdigit@ha
	la %r4, .L__profc_iswxdigit@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 40(%r31)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
	cmplwi	%r3, 6
	mfcr %r3                                # cr0
	stw %r3, 24(%r31)
	li %r3, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB27_3
# %bb.2:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
.LBB27_3:
	lwz %r3, 24(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB27_5
	b .LBB27_4
.LBB27_4:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_iswxdigit@ha
	la %r5, .L__profc_iswxdigit@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	b .LBB27_5
.LBB27_5:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-.Lfunc_begin27
	.cfi_endproc
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	2
	.type	toascii,@function
toascii:                                # @toascii
.Lfunc_begin28:
	.cfi_startproc
# %bb.0:
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 8(%r31)
	lis %r4, .L__profc_toascii@ha
	lwzu %r3, .L__profc_toascii@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 8(%r31)
	clrlwi	%r3, %r3, 25
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	blr
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-.Lfunc_begin28
	.cfi_endproc
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	2
	.type	fdim,@function
fdim:                                   # @fdim
.Lfunc_begin29:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -96(%r1)
	stw %r31, 92(%r1)
	stw %r0, 100(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 76(%r31)
	stw %r3, 72(%r31)
	stw %r6, 68(%r31)
	stw %r5, 64(%r31)
	lis %r4, .L__profc_fdim@ha
	lwzu %r3, .L__profc_fdim@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 72(%r31)
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	lwz %r3, 76(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 56(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB29_2
# %bb.1:
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
.LBB29_2:
	lwz %r4, 52(%r31)                       # 4-byte Folded Reload
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	lwz %r5, 60(%r31)                       # 4-byte Folded Reload
	stw %r5, 40(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB29_4
# %bb.3:
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
.LBB29_4:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB29_6
	b .LBB29_5
.LBB29_5:
	lis %r3, .L__profc_fdim@ha
	la %r4, .L__profc_fdim@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 72(%r31)
	lwz %r4, 76(%r31)
	stw %r4, 84(%r31)
	stw %r3, 80(%r31)
	b .LBB29_16
.LBB29_6:
	lwz %r3, 64(%r31)
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	lwz %r3, 68(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB29_8
# %bb.7:
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
.LBB29_8:
	lwz %r4, 28(%r31)                       # 4-byte Folded Reload
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	lwz %r5, 36(%r31)                       # 4-byte Folded Reload
	stw %r5, 16(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB29_10
# %bb.9:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB29_10:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB29_12
	b .LBB29_11
.LBB29_11:
	lis %r3, .L__profc_fdim@ha
	la %r4, .L__profc_fdim@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 64(%r31)
	lwz %r4, 68(%r31)
	stw %r4, 84(%r31)
	stw %r3, 80(%r31)
	b .LBB29_16
.LBB29_12:
	lwz %r3, 72(%r31)
	lwz %r4, 76(%r31)
	lwz %r5, 64(%r31)
	lwz %r6, 68(%r31)
	bl __gtdf2
	cmpwi	%r3, 1
	blt	%cr0, .LBB29_14
	b .LBB29_13
.LBB29_13:
	lis %r3, .L__profc_fdim@ha
	la %r4, .L__profc_fdim@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 72(%r31)
	lwz %r4, 76(%r31)
	lwz %r5, 64(%r31)
	lwz %r6, 68(%r31)
	bl __subdf3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	stw %r4, 12(%r31)                       # 4-byte Folded Spill
	b .LBB29_15
.LBB29_14:
	li %r3, 0
	mr	%r4, %r3
	stw %r4, 8(%r31)                        # 4-byte Folded Spill
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB29_15
.LBB29_15:
	lwz %r4, 8(%r31)                        # 4-byte Folded Reload
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r4, 80(%r31)
	stw %r3, 84(%r31)
	b .LBB29_16
.LBB29_16:
	lwz %r3, 80(%r31)
	lwz %r4, 84(%r31)
	lwz %r0, 100(%r1)
	lwz %r31, 92(%r1)
	addi %r1, %r1, 96
	mtlr %r0
	blr
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-.Lfunc_begin29
	.cfi_endproc
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
fdimf:                                  # @fdimf
.Lfunc_begin30:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc_fdimf@ha
	lwzu %r3, .L__profc_fdimf@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB30_2
	b .LBB30_1
.LBB30_1:
	lis %r3, .L__profc_fdimf@ha
	la %r4, .L__profc_fdimf@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB30_8
.LBB30_2:
	lwz %r3, 16(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB30_4
	b .LBB30_3
.LBB30_3:
	lis %r3, .L__profc_fdimf@ha
	la %r4, .L__profc_fdimf@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	stw %r3, 24(%r31)
	b .LBB30_8
.LBB30_4:
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	bl __gtsf2
	cmpwi	%r3, 1
	blt	%cr0, .LBB30_6
	b .LBB30_5
.LBB30_5:
	lis %r3, .L__profc_fdimf@ha
	la %r4, .L__profc_fdimf@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	bl __subsf3
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB30_7
.LBB30_6:
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB30_7
.LBB30_7:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)
	b .LBB30_8
.LBB30_8:
	lwz %r3, 24(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-.Lfunc_begin30
	.cfi_endproc
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	2
	.type	fmax,@function
fmax:                                   # @fmax
.Lfunc_begin31:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -112(%r1)
	stw %r31, 108(%r1)
	stw %r0, 116(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 92(%r31)
	stw %r3, 88(%r31)
	stw %r6, 84(%r31)
	stw %r5, 80(%r31)
	lis %r4, .L__profc_fmax@ha
	lwzu %r3, .L__profc_fmax@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 88(%r31)
	stw %r3, 64(%r31)                       # 4-byte Folded Spill
	lwz %r3, 92(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 68(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 72(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB31_2
# %bb.1:
	lwz %r3, 72(%r31)                       # 4-byte Folded Reload
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
.LBB31_2:
	lwz %r4, 68(%r31)                       # 4-byte Folded Reload
	lwz %r3, 64(%r31)                       # 4-byte Folded Reload
	lwz %r5, 76(%r31)                       # 4-byte Folded Reload
	stw %r5, 56(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB31_4
# %bb.3:
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
.LBB31_4:
	lwz %r3, 60(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB31_6
	b .LBB31_5
.LBB31_5:
	lis %r3, .L__profc_fmax@ha
	la %r4, .L__profc_fmax@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 80(%r31)
	lwz %r4, 84(%r31)
	stw %r4, 100(%r31)
	stw %r3, 96(%r31)
	b .LBB31_21
.LBB31_6:
	lwz %r3, 80(%r31)
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	lwz %r3, 84(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB31_8
# %bb.7:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
.LBB31_8:
	lwz %r4, 44(%r31)                       # 4-byte Folded Reload
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	lwz %r5, 52(%r31)                       # 4-byte Folded Reload
	stw %r5, 32(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB31_10
# %bb.9:
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
.LBB31_10:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB31_12
	b .LBB31_11
.LBB31_11:
	lis %r3, .L__profc_fmax@ha
	la %r4, .L__profc_fmax@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 88(%r31)
	lwz %r4, 92(%r31)
	stw %r4, 100(%r31)
	stw %r3, 96(%r31)
	b .LBB31_21
.LBB31_12:
	lwz %r3, 92(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 84(%r31)
	srwi %r4, %r4, 31
	cmplw	%r3, %r4
	beq	%cr0, .LBB31_17
	b .LBB31_13
.LBB31_13:
	lis %r3, .L__profc_fmax@ha
	la %r4, .L__profc_fmax@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 92(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB31_15
	b .LBB31_14
.LBB31_14:
	lis %r3, .L__profc_fmax@ha
	la %r4, .L__profc_fmax@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 84(%r31)
	lwz %r4, 80(%r31)
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB31_16
.LBB31_15:
	lwz %r3, 92(%r31)
	lwz %r4, 88(%r31)
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB31_16
.LBB31_16:
	lwz %r4, 24(%r31)                       # 4-byte Folded Reload
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r4, 96(%r31)
	stw %r3, 100(%r31)
	b .LBB31_21
.LBB31_17:
	lwz %r3, 88(%r31)
	lwz %r4, 92(%r31)
	lwz %r5, 80(%r31)
	lwz %r6, 84(%r31)
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB31_19
	b .LBB31_18
.LBB31_18:
	lis %r3, .L__profc_fmax@ha
	la %r4, .L__profc_fmax@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 84(%r31)
	lwz %r4, 80(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB31_20
.LBB31_19:
	lwz %r3, 92(%r31)
	lwz %r4, 88(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB31_20
.LBB31_20:
	lwz %r4, 16(%r31)                       # 4-byte Folded Reload
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r4, 96(%r31)
	stw %r3, 100(%r31)
	b .LBB31_21
.LBB31_21:
	lwz %r3, 96(%r31)
	lwz %r4, 100(%r31)
	lwz %r0, 116(%r1)
	lwz %r31, 108(%r1)
	addi %r1, %r1, 112
	mtlr %r0
	blr
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-.Lfunc_begin31
	.cfi_endproc
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
.Lfunc_begin32:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc_fmaxf@ha
	lwzu %r3, .L__profc_fmaxf@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_2
	b .LBB32_1
.LBB32_1:
	lis %r3, .L__profc_fmaxf@ha
	la %r4, .L__profc_fmaxf@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 16(%r31)
	stw %r3, 24(%r31)
	b .LBB32_13
.LBB32_2:
	lwz %r3, 16(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_4
	b .LBB32_3
.LBB32_3:
	lis %r3, .L__profc_fmaxf@ha
	la %r4, .L__profc_fmaxf@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB32_13
.LBB32_4:
	lwz %r3, 20(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 16(%r31)
	srwi %r4, %r4, 31
	cmplw	%r3, %r4
	beq	%cr0, .LBB32_9
	b .LBB32_5
.LBB32_5:
	lis %r3, .L__profc_fmaxf@ha
	la %r4, .L__profc_fmaxf@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 20(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB32_7
	b .LBB32_6
.LBB32_6:
	lis %r3, .L__profc_fmaxf@ha
	la %r4, .L__profc_fmaxf@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 16(%r31)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB32_8
.LBB32_7:
	lwz %r3, 20(%r31)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB32_8
.LBB32_8:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)
	b .LBB32_13
.LBB32_9:
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	bl __ltsf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB32_11
	b .LBB32_10
.LBB32_10:
	lis %r3, .L__profc_fmaxf@ha
	la %r4, .L__profc_fmaxf@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 16(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB32_12
.LBB32_11:
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB32_12
.LBB32_12:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	stw %r3, 24(%r31)
	b .LBB32_13
.LBB32_13:
	lwz %r3, 24(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-.Lfunc_begin32
	.cfi_endproc
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
.Lfunc_begin33:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -160(%r1)
	stw %r31, 156(%r1)
	stw %r0, 164(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r11 killed $r10
                                        # kill: def $r11 killed $r9
                                        # kill: def $r11 killed $r8
                                        # kill: def $r11 killed $r7
                                        # kill: def $r11 killed $r6
                                        # kill: def $r11 killed $r5
                                        # kill: def $r11 killed $r4
                                        # kill: def $r11 killed $r3
	stw %r6, 124(%r31)
	stw %r5, 120(%r31)
	stw %r4, 116(%r31)
	stw %r3, 112(%r31)
	stw %r10, 108(%r31)
	stw %r9, 104(%r31)
	stw %r8, 100(%r31)
	stw %r7, 96(%r31)
	lis %r4, .L__profc_fmaxl@ha
	lwzu %r3, .L__profc_fmaxl@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 120(%r31)
	stw %r3, 80(%r31)                       # 4-byte Folded Spill
	lwz %r3, 124(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 84(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 88(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 92(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB33_2
# %bb.1:
	lwz %r3, 88(%r31)                       # 4-byte Folded Reload
	stw %r3, 92(%r31)                       # 4-byte Folded Spill
.LBB33_2:
	lwz %r4, 84(%r31)                       # 4-byte Folded Reload
	lwz %r3, 80(%r31)                       # 4-byte Folded Reload
	lwz %r5, 92(%r31)                       # 4-byte Folded Reload
	stw %r5, 72(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB33_4
# %bb.3:
	lwz %r3, 72(%r31)                       # 4-byte Folded Reload
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
.LBB33_4:
	lwz %r3, 76(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB33_6
	b .LBB33_5
.LBB33_5:
	lis %r3, .L__profc_fmaxl@ha
	la %r4, .L__profc_fmaxl@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 96(%r31)
	lwz %r4, 100(%r31)
	lwz %r5, 104(%r31)
	lwz %r6, 108(%r31)
	stw %r6, 140(%r31)
	stw %r5, 136(%r31)
	stw %r4, 132(%r31)
	stw %r3, 128(%r31)
	b .LBB33_21
.LBB33_6:
	lwz %r3, 104(%r31)
	stw %r3, 56(%r31)                       # 4-byte Folded Spill
	lwz %r3, 108(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 64(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 68(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB33_8
# %bb.7:
	lwz %r3, 64(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)                       # 4-byte Folded Spill
.LBB33_8:
	lwz %r4, 60(%r31)                       # 4-byte Folded Reload
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	lwz %r5, 68(%r31)                       # 4-byte Folded Reload
	stw %r5, 48(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB33_10
# %bb.9:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
.LBB33_10:
	lwz %r3, 52(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB33_12
	b .LBB33_11
.LBB33_11:
	lis %r3, .L__profc_fmaxl@ha
	la %r4, .L__profc_fmaxl@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 112(%r31)
	lwz %r4, 116(%r31)
	lwz %r5, 120(%r31)
	lwz %r6, 124(%r31)
	stw %r6, 140(%r31)
	stw %r5, 136(%r31)
	stw %r4, 132(%r31)
	stw %r3, 128(%r31)
	b .LBB33_21
.LBB33_12:
	lwz %r3, 116(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 100(%r31)
	srwi %r4, %r4, 31
	cmplw	%r3, %r4
	beq	%cr0, .LBB33_17
	b .LBB33_13
.LBB33_13:
	lis %r3, .L__profc_fmaxl@ha
	la %r4, .L__profc_fmaxl@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 116(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB33_15
	b .LBB33_14
.LBB33_14:
	lis %r3, .L__profc_fmaxl@ha
	la %r4, .L__profc_fmaxl@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 108(%r31)
	lwz %r4, 104(%r31)
	lwz %r5, 100(%r31)
	lwz %r6, 96(%r31)
	stw %r6, 32(%r31)                       # 4-byte Folded Spill
	stw %r5, 36(%r31)                       # 4-byte Folded Spill
	stw %r4, 40(%r31)                       # 4-byte Folded Spill
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB33_16
.LBB33_15:
	lwz %r3, 124(%r31)
	lwz %r4, 120(%r31)
	lwz %r5, 116(%r31)
	lwz %r6, 112(%r31)
	stw %r6, 32(%r31)                       # 4-byte Folded Spill
	stw %r5, 36(%r31)                       # 4-byte Folded Spill
	stw %r4, 40(%r31)                       # 4-byte Folded Spill
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB33_16
.LBB33_16:
	lwz %r6, 32(%r31)                       # 4-byte Folded Reload
	lwz %r5, 36(%r31)                       # 4-byte Folded Reload
	lwz %r4, 40(%r31)                       # 4-byte Folded Reload
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	stw %r6, 128(%r31)
	stw %r5, 132(%r31)
	stw %r4, 136(%r31)
	stw %r3, 140(%r31)
	b .LBB33_21
.LBB33_17:
	lwz %r3, 112(%r31)
	lwz %r4, 116(%r31)
	lwz %r5, 120(%r31)
	lwz %r6, 124(%r31)
	lwz %r7, 96(%r31)
	lwz %r8, 100(%r31)
	lwz %r9, 104(%r31)
	lwz %r10, 108(%r31)
	bl __gcc_qlt
	cmpwi	%r3, -1
	bgt	%cr0, .LBB33_19
	b .LBB33_18
.LBB33_18:
	lis %r3, .L__profc_fmaxl@ha
	la %r4, .L__profc_fmaxl@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 108(%r31)
	lwz %r4, 104(%r31)
	lwz %r5, 100(%r31)
	lwz %r6, 96(%r31)
	stw %r6, 16(%r31)                       # 4-byte Folded Spill
	stw %r5, 20(%r31)                       # 4-byte Folded Spill
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB33_20
.LBB33_19:
	lwz %r3, 124(%r31)
	lwz %r4, 120(%r31)
	lwz %r5, 116(%r31)
	lwz %r6, 112(%r31)
	stw %r6, 16(%r31)                       # 4-byte Folded Spill
	stw %r5, 20(%r31)                       # 4-byte Folded Spill
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB33_20
.LBB33_20:
	lwz %r6, 16(%r31)                       # 4-byte Folded Reload
	lwz %r5, 20(%r31)                       # 4-byte Folded Reload
	lwz %r4, 24(%r31)                       # 4-byte Folded Reload
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r6, 128(%r31)
	stw %r5, 132(%r31)
	stw %r4, 136(%r31)
	stw %r3, 140(%r31)
	b .LBB33_21
.LBB33_21:
	lwz %r3, 128(%r31)
	lwz %r4, 132(%r31)
	lwz %r5, 136(%r31)
	lwz %r6, 140(%r31)
	lwz %r0, 164(%r1)
	lwz %r31, 156(%r1)
	addi %r1, %r1, 160
	mtlr %r0
	blr
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-.Lfunc_begin33
	.cfi_endproc
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	2
	.type	fmin,@function
fmin:                                   # @fmin
.Lfunc_begin34:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -112(%r1)
	stw %r31, 108(%r1)
	stw %r0, 116(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 92(%r31)
	stw %r3, 88(%r31)
	stw %r6, 84(%r31)
	stw %r5, 80(%r31)
	lis %r4, .L__profc_fmin@ha
	lwzu %r3, .L__profc_fmin@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 88(%r31)
	stw %r3, 64(%r31)                       # 4-byte Folded Spill
	lwz %r3, 92(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 68(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 72(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB34_2
# %bb.1:
	lwz %r3, 72(%r31)                       # 4-byte Folded Reload
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
.LBB34_2:
	lwz %r4, 68(%r31)                       # 4-byte Folded Reload
	lwz %r3, 64(%r31)                       # 4-byte Folded Reload
	lwz %r5, 76(%r31)                       # 4-byte Folded Reload
	stw %r5, 56(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB34_4
# %bb.3:
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
.LBB34_4:
	lwz %r3, 60(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB34_6
	b .LBB34_5
.LBB34_5:
	lis %r3, .L__profc_fmin@ha
	la %r4, .L__profc_fmin@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 80(%r31)
	lwz %r4, 84(%r31)
	stw %r4, 100(%r31)
	stw %r3, 96(%r31)
	b .LBB34_21
.LBB34_6:
	lwz %r3, 80(%r31)
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	lwz %r3, 84(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB34_8
# %bb.7:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
.LBB34_8:
	lwz %r4, 44(%r31)                       # 4-byte Folded Reload
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	lwz %r5, 52(%r31)                       # 4-byte Folded Reload
	stw %r5, 32(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB34_10
# %bb.9:
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
.LBB34_10:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB34_12
	b .LBB34_11
.LBB34_11:
	lis %r3, .L__profc_fmin@ha
	la %r4, .L__profc_fmin@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 88(%r31)
	lwz %r4, 92(%r31)
	stw %r4, 100(%r31)
	stw %r3, 96(%r31)
	b .LBB34_21
.LBB34_12:
	lwz %r3, 92(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 84(%r31)
	srwi %r4, %r4, 31
	cmplw	%r3, %r4
	beq	%cr0, .LBB34_17
	b .LBB34_13
.LBB34_13:
	lis %r3, .L__profc_fmin@ha
	la %r4, .L__profc_fmin@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 92(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB34_15
	b .LBB34_14
.LBB34_14:
	lis %r3, .L__profc_fmin@ha
	la %r4, .L__profc_fmin@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 92(%r31)
	lwz %r4, 88(%r31)
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB34_16
.LBB34_15:
	lwz %r3, 84(%r31)
	lwz %r4, 80(%r31)
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB34_16
.LBB34_16:
	lwz %r4, 24(%r31)                       # 4-byte Folded Reload
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r4, 96(%r31)
	stw %r3, 100(%r31)
	b .LBB34_21
.LBB34_17:
	lwz %r3, 88(%r31)
	lwz %r4, 92(%r31)
	lwz %r5, 80(%r31)
	lwz %r6, 84(%r31)
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB34_19
	b .LBB34_18
.LBB34_18:
	lis %r3, .L__profc_fmin@ha
	la %r4, .L__profc_fmin@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 92(%r31)
	lwz %r4, 88(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB34_20
.LBB34_19:
	lwz %r3, 84(%r31)
	lwz %r4, 80(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB34_20
.LBB34_20:
	lwz %r4, 16(%r31)                       # 4-byte Folded Reload
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r4, 96(%r31)
	stw %r3, 100(%r31)
	b .LBB34_21
.LBB34_21:
	lwz %r3, 96(%r31)
	lwz %r4, 100(%r31)
	lwz %r0, 116(%r1)
	lwz %r31, 108(%r1)
	addi %r1, %r1, 112
	mtlr %r0
	blr
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-.Lfunc_begin34
	.cfi_endproc
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	2
	.type	fminf,@function
fminf:                                  # @fminf
.Lfunc_begin35:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc_fminf@ha
	lwzu %r3, .L__profc_fminf@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB35_2
	b .LBB35_1
.LBB35_1:
	lis %r3, .L__profc_fminf@ha
	la %r4, .L__profc_fminf@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 16(%r31)
	stw %r3, 24(%r31)
	b .LBB35_13
.LBB35_2:
	lwz %r3, 16(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB35_4
	b .LBB35_3
.LBB35_3:
	lis %r3, .L__profc_fminf@ha
	la %r4, .L__profc_fminf@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB35_13
.LBB35_4:
	lwz %r3, 20(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 16(%r31)
	srwi %r4, %r4, 31
	cmplw	%r3, %r4
	beq	%cr0, .LBB35_9
	b .LBB35_5
.LBB35_5:
	lis %r3, .L__profc_fminf@ha
	la %r4, .L__profc_fminf@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 20(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB35_7
	b .LBB35_6
.LBB35_6:
	lis %r3, .L__profc_fminf@ha
	la %r4, .L__profc_fminf@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB35_8
.LBB35_7:
	lwz %r3, 16(%r31)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB35_8
.LBB35_8:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)
	b .LBB35_13
.LBB35_9:
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	bl __ltsf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB35_11
	b .LBB35_10
.LBB35_10:
	lis %r3, .L__profc_fminf@ha
	la %r4, .L__profc_fminf@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB35_12
.LBB35_11:
	lwz %r3, 16(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB35_12
.LBB35_12:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	stw %r3, 24(%r31)
	b .LBB35_13
.LBB35_13:
	lwz %r3, 24(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-.Lfunc_begin35
	.cfi_endproc
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	2
	.type	fminl,@function
fminl:                                  # @fminl
.Lfunc_begin36:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -160(%r1)
	stw %r31, 156(%r1)
	stw %r0, 164(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r11 killed $r10
                                        # kill: def $r11 killed $r9
                                        # kill: def $r11 killed $r8
                                        # kill: def $r11 killed $r7
                                        # kill: def $r11 killed $r6
                                        # kill: def $r11 killed $r5
                                        # kill: def $r11 killed $r4
                                        # kill: def $r11 killed $r3
	stw %r6, 124(%r31)
	stw %r5, 120(%r31)
	stw %r4, 116(%r31)
	stw %r3, 112(%r31)
	stw %r10, 108(%r31)
	stw %r9, 104(%r31)
	stw %r8, 100(%r31)
	stw %r7, 96(%r31)
	lis %r4, .L__profc_fminl@ha
	lwzu %r3, .L__profc_fminl@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 120(%r31)
	stw %r3, 80(%r31)                       # 4-byte Folded Spill
	lwz %r3, 124(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 84(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 88(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 92(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB36_2
# %bb.1:
	lwz %r3, 88(%r31)                       # 4-byte Folded Reload
	stw %r3, 92(%r31)                       # 4-byte Folded Spill
.LBB36_2:
	lwz %r4, 84(%r31)                       # 4-byte Folded Reload
	lwz %r3, 80(%r31)                       # 4-byte Folded Reload
	lwz %r5, 92(%r31)                       # 4-byte Folded Reload
	stw %r5, 72(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB36_4
# %bb.3:
	lwz %r3, 72(%r31)                       # 4-byte Folded Reload
	stw %r3, 76(%r31)                       # 4-byte Folded Spill
.LBB36_4:
	lwz %r3, 76(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB36_6
	b .LBB36_5
.LBB36_5:
	lis %r3, .L__profc_fminl@ha
	la %r4, .L__profc_fminl@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 96(%r31)
	lwz %r4, 100(%r31)
	lwz %r5, 104(%r31)
	lwz %r6, 108(%r31)
	stw %r6, 140(%r31)
	stw %r5, 136(%r31)
	stw %r4, 132(%r31)
	stw %r3, 128(%r31)
	b .LBB36_21
.LBB36_6:
	lwz %r3, 104(%r31)
	stw %r3, 56(%r31)                       # 4-byte Folded Spill
	lwz %r3, 108(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 64(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 68(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB36_8
# %bb.7:
	lwz %r3, 64(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)                       # 4-byte Folded Spill
.LBB36_8:
	lwz %r4, 60(%r31)                       # 4-byte Folded Reload
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	lwz %r5, 68(%r31)                       # 4-byte Folded Reload
	stw %r5, 48(%r31)                       # 4-byte Folded Spill
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB36_10
# %bb.9:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
.LBB36_10:
	lwz %r3, 52(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB36_12
	b .LBB36_11
.LBB36_11:
	lis %r3, .L__profc_fminl@ha
	la %r4, .L__profc_fminl@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 112(%r31)
	lwz %r4, 116(%r31)
	lwz %r5, 120(%r31)
	lwz %r6, 124(%r31)
	stw %r6, 140(%r31)
	stw %r5, 136(%r31)
	stw %r4, 132(%r31)
	stw %r3, 128(%r31)
	b .LBB36_21
.LBB36_12:
	lwz %r3, 116(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 100(%r31)
	srwi %r4, %r4, 31
	cmplw	%r3, %r4
	beq	%cr0, .LBB36_17
	b .LBB36_13
.LBB36_13:
	lis %r3, .L__profc_fminl@ha
	la %r4, .L__profc_fminl@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 116(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB36_15
	b .LBB36_14
.LBB36_14:
	lis %r3, .L__profc_fminl@ha
	la %r4, .L__profc_fminl@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 124(%r31)
	lwz %r4, 120(%r31)
	lwz %r5, 116(%r31)
	lwz %r6, 112(%r31)
	stw %r6, 32(%r31)                       # 4-byte Folded Spill
	stw %r5, 36(%r31)                       # 4-byte Folded Spill
	stw %r4, 40(%r31)                       # 4-byte Folded Spill
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB36_16
.LBB36_15:
	lwz %r3, 108(%r31)
	lwz %r4, 104(%r31)
	lwz %r5, 100(%r31)
	lwz %r6, 96(%r31)
	stw %r6, 32(%r31)                       # 4-byte Folded Spill
	stw %r5, 36(%r31)                       # 4-byte Folded Spill
	stw %r4, 40(%r31)                       # 4-byte Folded Spill
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB36_16
.LBB36_16:
	lwz %r6, 32(%r31)                       # 4-byte Folded Reload
	lwz %r5, 36(%r31)                       # 4-byte Folded Reload
	lwz %r4, 40(%r31)                       # 4-byte Folded Reload
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	stw %r6, 128(%r31)
	stw %r5, 132(%r31)
	stw %r4, 136(%r31)
	stw %r3, 140(%r31)
	b .LBB36_21
.LBB36_17:
	lwz %r3, 112(%r31)
	lwz %r4, 116(%r31)
	lwz %r5, 120(%r31)
	lwz %r6, 124(%r31)
	lwz %r7, 96(%r31)
	lwz %r8, 100(%r31)
	lwz %r9, 104(%r31)
	lwz %r10, 108(%r31)
	bl __gcc_qlt
	cmpwi	%r3, -1
	bgt	%cr0, .LBB36_19
	b .LBB36_18
.LBB36_18:
	lis %r3, .L__profc_fminl@ha
	la %r4, .L__profc_fminl@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 124(%r31)
	lwz %r4, 120(%r31)
	lwz %r5, 116(%r31)
	lwz %r6, 112(%r31)
	stw %r6, 16(%r31)                       # 4-byte Folded Spill
	stw %r5, 20(%r31)                       # 4-byte Folded Spill
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB36_20
.LBB36_19:
	lwz %r3, 108(%r31)
	lwz %r4, 104(%r31)
	lwz %r5, 100(%r31)
	lwz %r6, 96(%r31)
	stw %r6, 16(%r31)                       # 4-byte Folded Spill
	stw %r5, 20(%r31)                       # 4-byte Folded Spill
	stw %r4, 24(%r31)                       # 4-byte Folded Spill
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB36_20
.LBB36_20:
	lwz %r6, 16(%r31)                       # 4-byte Folded Reload
	lwz %r5, 20(%r31)                       # 4-byte Folded Reload
	lwz %r4, 24(%r31)                       # 4-byte Folded Reload
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r6, 128(%r31)
	stw %r5, 132(%r31)
	stw %r4, 136(%r31)
	stw %r3, 140(%r31)
	b .LBB36_21
.LBB36_21:
	lwz %r3, 128(%r31)
	lwz %r4, 132(%r31)
	lwz %r5, 136(%r31)
	lwz %r6, 140(%r31)
	lwz %r0, 164(%r1)
	lwz %r31, 156(%r1)
	addi %r1, %r1, 160
	mtlr %r0
	blr
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-.Lfunc_begin36
	.cfi_endproc
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	2
	.type	l64a,@function
l64a:                                   # @l64a
.Lfunc_begin37:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_l64a@ha
	lwzu %r3, .L__profc_l64a@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 16(%r31)
	lis %r3, l64a.s@ha
	la %r3, l64a.s@l(%r3)
	stw %r3, 20(%r31)
	b .LBB37_1
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB37_4
	b .LBB37_2
.LBB37_2:                               #   in Loop: Header=BB37_1 Depth=1
	lis %r3, .L__profc_l64a@ha
	la %r4, .L__profc_l64a@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 16(%r31)
	clrlwi	%r4, %r3, 26
	lis %r3, digits@ha
	la %r3, digits@l(%r3)
	lbzx %r3, %r3, %r4
	lwz %r4, 20(%r31)
	stb %r3, 0(%r4)
	b .LBB37_3
.LBB37_3:                               #   in Loop: Header=BB37_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	lwz %r3, 16(%r31)
	srwi %r3, %r3, 6
	stw %r3, 16(%r31)
	b .LBB37_1
.LBB37_4:
	lwz %r4, 20(%r31)
	li %r3, 0
	stb %r3, 0(%r4)
	lis %r3, l64a.s@ha
	la %r3, l64a.s@l(%r3)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-.Lfunc_begin37
	.cfi_endproc
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	2
	.type	srand,@function
srand:                                  # @srand
.Lfunc_begin38:
	.cfi_startproc
# %bb.0:
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 8(%r31)
	lis %r4, .L__profc_srand@ha
	lwzu %r3, .L__profc_srand@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 8(%r31)
	addi %r3, %r3, -1
	lis %r4, seed@ha
	stwu %r3, seed@l(%r4)
	li %r3, 0
	stw %r3, 4(%r4)
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	blr
.Lfunc_end38:
	.size	srand, .Lfunc_end38-.Lfunc_begin38
	.cfi_endproc
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	2
	.type	rand,@function
rand:                                   # @rand
.Lfunc_begin39:
	.cfi_startproc
# %bb.0:
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	lis %r4, .L__profc_rand@ha
	lwzu %r3, .L__profc_rand@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lis %r3, seed@ha
	lwzu %r4, seed@l(%r3)
	lwz %r7, 4(%r3)
	lis %r5, 22609
	ori %r5, %r5, 62509
	mullw %r8, %r4, %r5
	lis %r5, 19605
	ori %r6, %r5, 32557
	mulhwu %r5, %r4, %r6
	add %r5, %r5, %r8
	mullw %r7, %r7, %r6
	add %r5, %r5, %r7
	mullw %r4, %r4, %r6
	addic %r4, %r4, 1
	addze %r5, %r5
	stw %r5, 4(%r3)
	stw %r4, 0(%r3)
	lwz %r3, 4(%r3)
	srwi %r3, %r3, 1
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	blr
.Lfunc_end39:
	.size	rand, .Lfunc_end39-.Lfunc_begin39
	.cfi_endproc
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	2
	.type	insque,@function
insque:                                 # @insque
.Lfunc_begin40:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_insque@ha
	lwzu %r3, .L__profc_insque@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 20(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 12(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB40_2
	b .LBB40_1
.LBB40_1:
	lis %r3, .L__profc_insque@ha
	la %r4, .L__profc_insque@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 16(%r31)
	li %r3, 0
	stw %r3, 4(%r4)
	lwz %r4, 16(%r31)
	stw %r3, 0(%r4)
	b .LBB40_4
.LBB40_2:
	lwz %r3, 12(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 16(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 12(%r31)
	lwz %r4, 16(%r31)
	stw %r3, 4(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 16(%r31)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB40_4
	b .LBB40_3
.LBB40_3:
	lis %r3, .L__profc_insque@ha
	la %r4, .L__profc_insque@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 0(%r3)
	stw %r3, 4(%r4)
	b .LBB40_4
.LBB40_4:
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end40:
	.size	insque, .Lfunc_end40-.Lfunc_begin40
	.cfi_endproc
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	2
	.type	remque,@function
remque:                                 # @remque
.Lfunc_begin41:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_remque@ha
	lwzu %r3, .L__profc_remque@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB41_2
	b .LBB41_1
.LBB41_1:
	lis %r3, .L__profc_remque@ha
	la %r4, .L__profc_remque@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 20(%r31)
	lwz %r3, 4(%r4)
	lwz %r4, 0(%r4)
	stw %r3, 4(%r4)
	b .LBB41_2
.LBB41_2:
	lwz %r3, 20(%r31)
	lwz %r3, 4(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB41_4
	b .LBB41_3
.LBB41_3:
	lis %r3, .L__profc_remque@ha
	la %r4, .L__profc_remque@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r4, 20(%r31)
	lwz %r3, 0(%r4)
	lwz %r4, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB41_4
.LBB41_4:
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end41:
	.size	remque, .Lfunc_end41-.Lfunc_begin41
	.cfi_endproc
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
lsearch:                                # @lsearch
.Lfunc_begin42:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	stw %r0, 68(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 52(%r31)
	stw %r4, 48(%r31)
	stw %r5, 44(%r31)
	stw %r6, 40(%r31)
	stw %r7, 36(%r31)
	lis %r4, .L__profc_lsearch@ha
	lwzu %r3, .L__profc_lsearch@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	lwz %r3, 48(%r31)
	stw %r3, 32(%r31)
	lwz %r3, 44(%r31)
	lwz %r3, 0(%r3)
	stw %r3, 28(%r31)
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB42_1
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB42_6
	b .LBB42_2
.LBB42_2:                               #   in Loop: Header=BB42_1 Depth=1
	lwz %r7, 20(%r31)                       # 4-byte Folded Reload
	lis %r3, .L__profc_lsearch@ha
	la %r4, .L__profc_lsearch@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r5, 36(%r31)
	lwz %r3, 52(%r31)
	lwz %r4, 32(%r31)
	lwz %r6, 24(%r31)
	mullw %r6, %r6, %r7
	add %r4, %r4, %r6
	mtctr %r5
	bctrl
	cmplwi	%r3, 0
	bne	%cr0, .LBB42_4
	b .LBB42_3
.LBB42_3:
	lwz %r5, 20(%r31)                       # 4-byte Folded Reload
	lis %r3, .L__profc_lsearch@ha
	la %r4, .L__profc_lsearch@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r6, 20(%r4)
	addic %r3, %r3, 1
	addze %r6, %r6
	stw %r6, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 24(%r31)
	mullw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, 56(%r31)
	b .LBB42_7
.LBB42_4:                               #   in Loop: Header=BB42_1 Depth=1
	b .LBB42_5
.LBB42_5:                               #   in Loop: Header=BB42_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB42_1
.LBB42_6:
	lwz %r5, 20(%r31)                       # 4-byte Folded Reload
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	lwz %r4, 44(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 28(%r31)
	mullw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	lwz %r4, 52(%r31)
	lwz %r5, 40(%r31)
	bl memcpy
                                        # kill: def $r4 killed $r3
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 56(%r31)
	b .LBB42_7
.LBB42_7:
	lwz %r3, 56(%r31)
	lwz %r0, 68(%r1)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	mtlr %r0
	blr
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-.Lfunc_begin42
	.cfi_endproc
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	2
	.type	lfind,@function
lfind:                                  # @lfind
.Lfunc_begin43:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	stw %r0, 68(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 52(%r31)
	stw %r4, 48(%r31)
	stw %r5, 44(%r31)
	stw %r6, 40(%r31)
	stw %r7, 36(%r31)
	lis %r4, .L__profc_lfind@ha
	lwzu %r3, .L__profc_lfind@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	lwz %r3, 48(%r31)
	stw %r3, 32(%r31)
	lwz %r3, 44(%r31)
	lwz %r3, 0(%r3)
	stw %r3, 28(%r31)
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB43_1
.LBB43_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB43_6
	b .LBB43_2
.LBB43_2:                               #   in Loop: Header=BB43_1 Depth=1
	lwz %r7, 20(%r31)                       # 4-byte Folded Reload
	lis %r3, .L__profc_lfind@ha
	la %r4, .L__profc_lfind@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r5, 36(%r31)
	lwz %r3, 52(%r31)
	lwz %r4, 32(%r31)
	lwz %r6, 24(%r31)
	mullw %r6, %r6, %r7
	add %r4, %r4, %r6
	mtctr %r5
	bctrl
	cmplwi	%r3, 0
	bne	%cr0, .LBB43_4
	b .LBB43_3
.LBB43_3:
	lwz %r5, 20(%r31)                       # 4-byte Folded Reload
	lis %r3, .L__profc_lfind@ha
	la %r4, .L__profc_lfind@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r6, 20(%r4)
	addic %r3, %r3, 1
	addze %r6, %r6
	stw %r6, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 24(%r31)
	mullw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, 56(%r31)
	b .LBB43_7
.LBB43_4:                               #   in Loop: Header=BB43_1 Depth=1
	b .LBB43_5
.LBB43_5:                               #   in Loop: Header=BB43_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB43_1
.LBB43_6:
	li %r3, 0
	stw %r3, 56(%r31)
	b .LBB43_7
.LBB43_7:
	lwz %r3, 56(%r31)
	lwz %r0, 68(%r1)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	mtlr %r0
	blr
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-.Lfunc_begin43
	.cfi_endproc
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	2
	.type	abs,@function
abs:                                    # @abs
.Lfunc_begin44:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_abs@ha
	lwzu %r3, .L__profc_abs@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	cmpwi	%r3, 1
	blt	%cr0, .LBB44_2
	b .LBB44_1
.LBB44_1:
	lis %r3, .L__profc_abs@ha
	la %r4, .L__profc_abs@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB44_3
.LBB44_2:
	lwz %r3, 24(%r31)
	neg %r3, %r3
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB44_3
.LBB44_3:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end44:
	.size	abs, .Lfunc_end44-.Lfunc_begin44
	.cfi_endproc
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	2
	.type	atoi,@function
atoi:                                   # @atoi
.Lfunc_begin45:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_atoi@ha
	lwzu %r3, .L__profc_atoi@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 20(%r31)
	stw %r3, 16(%r31)
	b .LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isspace@ha
	la %r4, isspace@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB45_3
	b .LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	lis %r3, .L__profc_atoi@ha
	la %r4, .L__profc_atoi@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB45_1
.LBB45_3:
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB45_6
	b .LBB45_4
.LBB45_4:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB45_8
	b .LBB45_5
.LBB45_5:
	lis %r3, .L__profc_atoi@ha
	la %r4, .L__profc_atoi@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	li %r3, 1
	stw %r3, 16(%r31)
	b .LBB45_7
.LBB45_6:
	lis %r3, .L__profc_atoi@ha
	la %r4, .L__profc_atoi@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	b .LBB45_7
.LBB45_7:
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB45_8
.LBB45_8:
	lis %r3, .L__profc_atoi@ha
	la %r4, .L__profc_atoi@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB45_9
.LBB45_9:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isdigit@ha
	la %r4, isdigit@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB45_11
	b .LBB45_10
.LBB45_10:                              #   in Loop: Header=BB45_9 Depth=1
	lis %r3, .L__profc_atoi@ha
	la %r4, .L__profc_atoi@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 20(%r31)
	mulli %r4, %r3, 10
	lwz %r3, 24(%r31)
	addi %r5, %r3, 1
	stw %r5, 24(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	addi %r3, %r3, 48
	stw %r3, 20(%r31)
	b .LBB45_9
.LBB45_11:
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB45_13
	b .LBB45_12
.LBB45_12:
	lis %r3, .L__profc_atoi@ha
	la %r4, .L__profc_atoi@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB45_14
.LBB45_13:
	lwz %r3, 20(%r31)
	neg %r3, %r3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB45_14
.LBB45_14:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-.Lfunc_begin45
	.cfi_endproc
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	2
	.type	atol,@function
atol:                                   # @atol
.Lfunc_begin46:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_atol@ha
	lwzu %r3, .L__profc_atol@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 20(%r31)
	stw %r3, 16(%r31)
	b .LBB46_1
.LBB46_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isspace@ha
	la %r4, isspace@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB46_3
	b .LBB46_2
.LBB46_2:                               #   in Loop: Header=BB46_1 Depth=1
	lis %r3, .L__profc_atol@ha
	la %r4, .L__profc_atol@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB46_1
.LBB46_3:
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB46_6
	b .LBB46_4
.LBB46_4:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB46_8
	b .LBB46_5
.LBB46_5:
	lis %r3, .L__profc_atol@ha
	la %r4, .L__profc_atol@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	li %r3, 1
	stw %r3, 16(%r31)
	b .LBB46_7
.LBB46_6:
	lis %r3, .L__profc_atol@ha
	la %r4, .L__profc_atol@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	b .LBB46_7
.LBB46_7:
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB46_8
.LBB46_8:
	lis %r3, .L__profc_atol@ha
	la %r4, .L__profc_atol@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB46_9
.LBB46_9:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isdigit@ha
	la %r4, isdigit@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB46_11
	b .LBB46_10
.LBB46_10:                              #   in Loop: Header=BB46_9 Depth=1
	lis %r3, .L__profc_atol@ha
	la %r4, .L__profc_atol@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 20(%r31)
	mulli %r4, %r3, 10
	lwz %r3, 24(%r31)
	addi %r5, %r3, 1
	stw %r5, 24(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	addi %r3, %r3, 48
	stw %r3, 20(%r31)
	b .LBB46_9
.LBB46_11:
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB46_13
	b .LBB46_12
.LBB46_12:
	lis %r3, .L__profc_atol@ha
	la %r4, .L__profc_atol@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB46_14
.LBB46_13:
	lwz %r3, 20(%r31)
	neg %r3, %r3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB46_14
.LBB46_14:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end46:
	.size	atol, .Lfunc_end46-.Lfunc_begin46
	.cfi_endproc
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	2
	.type	atoll,@function
atoll:                                  # @atoll
.Lfunc_begin47:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	lis %r4, .L__profc_atoll@ha
	lwzu %r3, .L__profc_atoll@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 36(%r31)
	stw %r3, 32(%r31)
	stw %r3, 28(%r31)
	b .LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 40(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isspace@ha
	la %r4, isspace@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB47_3
	b .LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
	lis %r3, .L__profc_atoll@ha
	la %r4, .L__profc_atoll@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 40(%r31)
	addi %r3, %r3, 1
	stw %r3, 40(%r31)
	b .LBB47_1
.LBB47_3:
	lwz %r3, 40(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB47_6
	b .LBB47_4
.LBB47_4:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB47_8
	b .LBB47_5
.LBB47_5:
	lis %r3, .L__profc_atoll@ha
	la %r4, .L__profc_atoll@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	li %r3, 1
	stw %r3, 28(%r31)
	b .LBB47_7
.LBB47_6:
	lis %r3, .L__profc_atoll@ha
	la %r4, .L__profc_atoll@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	b .LBB47_7
.LBB47_7:
	lwz %r3, 40(%r31)
	addi %r3, %r3, 1
	stw %r3, 40(%r31)
	b .LBB47_8
.LBB47_8:
	lis %r3, .L__profc_atoll@ha
	la %r4, .L__profc_atoll@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB47_9
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 40(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isdigit@ha
	la %r4, isdigit@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB47_11
	b .LBB47_10
.LBB47_10:                              #   in Loop: Header=BB47_9 Depth=1
	lis %r3, .L__profc_atoll@ha
	la %r4, .L__profc_atoll@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r5, 36(%r31)
	lwz %r3, 32(%r31)
	li %r4, 10
	mulhwu %r4, %r3, %r4
	mulli %r5, %r5, 10
	add %r5, %r4, %r5
	mulli %r6, %r3, 10
	lwz %r3, 40(%r31)
	addi %r4, %r3, 1
	stw %r4, 40(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	srawi %r4, %r3, 31
	subc	%r3, %r6, %r3
	subfe %r4, %r4, %r5
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	b .LBB47_9
.LBB47_11:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB47_13
	b .LBB47_12
.LBB47_12:
	lis %r3, .L__profc_atoll@ha
	la %r4, .L__profc_atoll@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB47_14
.LBB47_13:
	lwz %r4, 32(%r31)
	lwz %r3, 36(%r31)
	subfic %r4, %r4, 0
	subfze %r3, %r3
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB47_14
.LBB47_14:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-.Lfunc_begin47
	.cfi_endproc
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
bsearch:                                # @bsearch
.Lfunc_begin48:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 36(%r31)
	stw %r4, 32(%r31)
	stw %r5, 28(%r31)
	stw %r6, 24(%r31)
	stw %r7, 20(%r31)
	lis %r4, .L__profc_bsearch@ha
	lwzu %r3, .L__profc_bsearch@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB48_9
	b .LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
	lis %r3, .L__profc_bsearch@ha
	la %r4, .L__profc_bsearch@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 24(%r31)
	lwz %r5, 28(%r31)
	srwi %r5, %r5, 1
	mullw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, 16(%r31)
	lwz %r5, 20(%r31)
	lwz %r3, 36(%r31)
	lwz %r4, 16(%r31)
	mtctr %r5
	bctrl
	stw %r3, 12(%r31)
	lwz %r3, 12(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB48_4
	b .LBB48_3
.LBB48_3:                               #   in Loop: Header=BB48_1 Depth=1
	lis %r3, .L__profc_bsearch@ha
	la %r4, .L__profc_bsearch@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 28(%r31)
	srwi %r3, %r3, 1
	stw %r3, 28(%r31)
	b .LBB48_8
.LBB48_4:                               #   in Loop: Header=BB48_1 Depth=1
	lwz %r3, 12(%r31)
	cmpwi	%r3, 1
	blt	%cr0, .LBB48_6
	b .LBB48_5
.LBB48_5:                               #   in Loop: Header=BB48_1 Depth=1
	lis %r3, .L__profc_bsearch@ha
	la %r4, .L__profc_bsearch@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 24(%r31)
	add %r3, %r3, %r4
	stw %r3, 32(%r31)
	lwz %r4, 28(%r31)
	srwi %r3, %r4, 1
	not	%r3, %r3
	add %r3, %r3, %r4
	stw %r3, 28(%r31)
	b .LBB48_7
.LBB48_6:
	lwz %r3, 16(%r31)
	stw %r3, 40(%r31)
	b .LBB48_10
.LBB48_7:                               #   in Loop: Header=BB48_1 Depth=1
	b .LBB48_8
.LBB48_8:                               #   in Loop: Header=BB48_1 Depth=1
	b .LBB48_1
.LBB48_9:
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB48_10
.LBB48_10:
	lwz %r3, 40(%r31)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-.Lfunc_begin48
	.cfi_endproc
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
.Lfunc_begin49:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	stw %r0, 68(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 52(%r31)
	stw %r4, 48(%r31)
	stw %r5, 44(%r31)
	stw %r6, 40(%r31)
	stw %r7, 36(%r31)
	stw %r8, 32(%r31)
	lis %r4, .L__profc_bsearch_r@ha
	lwzu %r3, .L__profc_bsearch_r@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 48(%r31)
	stw %r3, 28(%r31)
	lwz %r3, 44(%r31)
	stw %r3, 24(%r31)
	b .LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB49_8
	b .LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	lis %r3, .L__profc_bsearch_r@ha
	la %r4, .L__profc_bsearch_r@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	srawi %r4, %r4, 1
	lwz %r5, 40(%r31)
	mullw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, 16(%r31)
	lwz %r6, 36(%r31)
	lwz %r3, 52(%r31)
	lwz %r4, 16(%r31)
	lwz %r5, 32(%r31)
	mtctr %r6
	bctrl
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB49_4
	b .LBB49_3
.LBB49_3:
	lis %r3, .L__profc_bsearch_r@ha
	la %r4, .L__profc_bsearch_r@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	stw %r3, 56(%r31)
	b .LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 1
	blt	%cr0, .LBB49_6
	b .LBB49_5
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
	lis %r3, .L__profc_bsearch_r@ha
	la %r4, .L__profc_bsearch_r@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 40(%r31)
	add %r3, %r3, %r4
	stw %r3, 28(%r31)
	lwz %r3, 24(%r31)
	addi %r3, %r3, -1
	stw %r3, 24(%r31)
	b .LBB49_6
.LBB49_6:                               #   in Loop: Header=BB49_1 Depth=1
	b .LBB49_7
.LBB49_7:                               #   in Loop: Header=BB49_1 Depth=1
	lwz %r3, 24(%r31)
	srawi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB49_1
.LBB49_8:
	li %r3, 0
	stw %r3, 56(%r31)
	b .LBB49_9
.LBB49_9:
	lwz %r3, 56(%r31)
	lwz %r0, 68(%r1)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	mtlr %r0
	blr
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-.Lfunc_begin49
	.cfi_endproc
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	2
	.type	div,@function
div:                                    # @div
.Lfunc_begin50:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 16(%r31)
	stw %r4, 12(%r31)
	lis %r4, .L__profc_div@ha
	lwzu %r3, .L__profc_div@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	divw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r5, 12(%r31)
	divw %r3, %r4, %r5
	mullw %r3, %r3, %r5
	sub	%r3, %r4, %r3
	stw %r3, 24(%r31)
	lwz %r3, 20(%r31)
	lwz %r4, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end50:
	.size	div, .Lfunc_end50-.Lfunc_begin50
	.cfi_endproc
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
.Lfunc_begin51:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lis %r4, .L__profc_imaxabs@ha
	lwzu %r3, .L__profc_imaxabs@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	srwi %r5, %r4, 31
	stw %r5, 24(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB51_2
# %bb.1:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
.LBB51_2:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB51_4
	b .LBB51_3
.LBB51_3:
	lis %r3, .L__profc_imaxabs@ha
	la %r4, .L__profc_imaxabs@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB51_5
.LBB51_4:
	lwz %r4, 32(%r31)
	lwz %r3, 36(%r31)
	subfic %r4, %r4, 0
	subfze %r3, %r3
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB51_5
.LBB51_5:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-.Lfunc_begin51
	.cfi_endproc
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
.Lfunc_begin52:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
                                        # kill: def $r3 killed $r8
                                        # kill: def $r3 killed $r7
                                        # kill: def $r3 killed $r6
                                        # kill: def $r3 killed $r5
	stw %r6, 36(%r31)
	stw %r5, 32(%r31)
	stw %r8, 28(%r31)
	stw %r7, 24(%r31)
	lis %r4, .L__profc_imaxdiv@ha
	lwzu %r3, .L__profc_imaxdiv@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r5, 24(%r31)
	lwz %r6, 28(%r31)
	bl __divdi3
	mr	%r5, %r4
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r5, 24(%r31)
	lwz %r6, 28(%r31)
	bl __moddi3
	mr	%r5, %r4
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-.Lfunc_begin52
	.cfi_endproc
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	2
	.type	labs,@function
labs:                                   # @labs
.Lfunc_begin53:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_labs@ha
	lwzu %r3, .L__profc_labs@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	cmpwi	%r3, 1
	blt	%cr0, .LBB53_2
	b .LBB53_1
.LBB53_1:
	lis %r3, .L__profc_labs@ha
	la %r4, .L__profc_labs@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB53_3
.LBB53_2:
	lwz %r3, 24(%r31)
	neg %r3, %r3
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB53_3
.LBB53_3:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end53:
	.size	labs, .Lfunc_end53-.Lfunc_begin53
	.cfi_endproc
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
ldiv:                                   # @ldiv
.Lfunc_begin54:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 16(%r31)
	stw %r4, 12(%r31)
	lis %r4, .L__profc_ldiv@ha
	lwzu %r3, .L__profc_ldiv@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	divw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r5, 12(%r31)
	divw %r3, %r4, %r5
	mullw %r3, %r3, %r5
	sub	%r3, %r4, %r3
	stw %r3, 24(%r31)
	lwz %r3, 20(%r31)
	lwz %r4, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-.Lfunc_begin54
	.cfi_endproc
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	2
	.type	llabs,@function
llabs:                                  # @llabs
.Lfunc_begin55:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lis %r4, .L__profc_llabs@ha
	lwzu %r3, .L__profc_llabs@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	srwi %r5, %r4, 31
	stw %r5, 24(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB55_2
# %bb.1:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
.LBB55_2:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB55_4
	b .LBB55_3
.LBB55_3:
	lis %r3, .L__profc_llabs@ha
	la %r4, .L__profc_llabs@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB55_5
.LBB55_4:
	lwz %r4, 32(%r31)
	lwz %r3, 36(%r31)
	subfic %r4, %r4, 0
	subfze %r3, %r3
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB55_5
.LBB55_5:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-.Lfunc_begin55
	.cfi_endproc
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
lldiv:                                  # @lldiv
.Lfunc_begin56:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
                                        # kill: def $r3 killed $r8
                                        # kill: def $r3 killed $r7
                                        # kill: def $r3 killed $r6
                                        # kill: def $r3 killed $r5
	stw %r6, 36(%r31)
	stw %r5, 32(%r31)
	stw %r8, 28(%r31)
	stw %r7, 24(%r31)
	lis %r4, .L__profc_lldiv@ha
	lwzu %r3, .L__profc_lldiv@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r5, 24(%r31)
	lwz %r6, 28(%r31)
	bl __divdi3
	mr	%r5, %r4
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r5, 24(%r31)
	lwz %r6, 28(%r31)
	bl __moddi3
	mr	%r5, %r4
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-.Lfunc_begin56
	.cfi_endproc
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
wcschr:                                 # @wcschr
.Lfunc_begin57:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_wcschr@ha
	lwzu %r3, .L__profc_wcschr@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB57_1
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB57_4
	b .LBB57_2
.LBB57_2:                               #   in Loop: Header=BB57_1 Depth=1
	lis %r3, .L__profc_wcschr@ha
	la %r4, .L__profc_wcschr@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 0(%r3)
	lwz %r5, 20(%r31)
	xor %r6, %r4, %r5
	addic %r3, %r6, -1
	subfe %r3, %r3, %r6
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB57_4
	b .LBB57_3
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_wcschr@ha
	la %r5, .L__profc_wcschr@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB57_4
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB57_7
	b .LBB57_5
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
	lis %r3, .L__profc_wcschr@ha
	la %r4, .L__profc_wcschr@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB57_6
.LBB57_6:                               #   in Loop: Header=BB57_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 4
	stw %r3, 24(%r31)
	b .LBB57_1
.LBB57_7:
	lwz %r3, 24(%r31)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB57_9
	b .LBB57_8
.LBB57_8:
	lis %r3, .L__profc_wcschr@ha
	la %r4, .L__profc_wcschr@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB57_10
.LBB57_9:
	li %r3, 0
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB57_10
.LBB57_10:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-.Lfunc_begin57
	.cfi_endproc
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
.Lfunc_begin58:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	lis %r4, .L__profc_wcscmp@ha
	lwzu %r3, .L__profc_wcscmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB58_1
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	lwz %r3, 36(%r31)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB58_6
	b .LBB58_2
.LBB58_2:                               #   in Loop: Header=BB58_1 Depth=1
	lis %r3, .L__profc_wcscmp@ha
	la %r4, .L__profc_wcscmp@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB58_6
	b .LBB58_3
.LBB58_3:                               #   in Loop: Header=BB58_1 Depth=1
	lis %r3, .L__profc_wcscmp@ha
	la %r4, .L__profc_wcscmp@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	b .LBB58_4
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	lis %r3, .L__profc_wcscmp@ha
	la %r4, .L__profc_wcscmp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB58_6
	b .LBB58_5
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_wcscmp@ha
	la %r5, .L__profc_wcscmp@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	b .LBB58_6
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB58_9
	b .LBB58_7
.LBB58_7:                               #   in Loop: Header=BB58_1 Depth=1
	lis %r3, .L__profc_wcscmp@ha
	la %r4, .L__profc_wcscmp@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB58_8
.LBB58_8:                               #   in Loop: Header=BB58_1 Depth=1
	lwz %r3, 40(%r31)
	addi %r3, %r3, 4
	stw %r3, 40(%r31)
	lwz %r3, 36(%r31)
	addi %r3, %r3, 4
	stw %r3, 36(%r31)
	b .LBB58_1
.LBB58_9:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB58_11
	b .LBB58_10
.LBB58_10:
	lis %r3, .L__profc_wcscmp@ha
	la %r4, .L__profc_wcscmp@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	li %r3, -1
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB58_14
.LBB58_11:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB58_13
# %bb.12:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB58_13:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB58_14
.LBB58_14:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-.Lfunc_begin58
	.cfi_endproc
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
.Lfunc_begin59:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_wcscpy@ha
	lwzu %r3, .L__profc_wcscpy@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 16(%r31)
	b .LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	addi %r4, %r3, 4
	stw %r4, 20(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 24(%r31)
	addi %r5, %r4, 4
	stw %r5, 24(%r31)
	stw %r3, 0(%r4)
	cmplwi	%r3, 0
	beq	%cr0, .LBB59_3
	b .LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	lis %r3, .L__profc_wcscpy@ha
	la %r4, .L__profc_wcscpy@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB59_1
.LBB59_3:
	lwz %r3, 16(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-.Lfunc_begin59
	.cfi_endproc
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
wcslen:                                 # @wcslen
.Lfunc_begin60:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_wcslen@ha
	lwzu %r3, .L__profc_wcslen@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	b .LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB60_4
	b .LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	lis %r3, .L__profc_wcslen@ha
	la %r4, .L__profc_wcslen@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 4
	stw %r3, 24(%r31)
	b .LBB60_1
.LBB60_4:
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	sub	%r3, %r4, %r3
	srawi %r3, %r3, 2
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-.Lfunc_begin60
	.cfi_endproc
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
.Lfunc_begin61:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc_wcsncmp@ha
	lwzu %r3, .L__profc_wcsncmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB61_8
	b .LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	lwz %r3, 36(%r31)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB61_8
	b .LBB61_3
.LBB61_3:                               #   in Loop: Header=BB61_1 Depth=1
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	b .LBB61_4
.LBB61_4:                               #   in Loop: Header=BB61_1 Depth=1
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB61_8
	b .LBB61_5
.LBB61_5:                               #   in Loop: Header=BB61_1 Depth=1
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	b .LBB61_6
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB61_8
	b .LBB61_7
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_wcsncmp@ha
	la %r5, .L__profc_wcsncmp@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB61_8
.LBB61_8:                               #   in Loop: Header=BB61_1 Depth=1
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB61_11
	b .LBB61_9
.LBB61_9:                               #   in Loop: Header=BB61_1 Depth=1
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB61_10
.LBB61_10:                              #   in Loop: Header=BB61_1 Depth=1
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	lwz %r3, 40(%r31)
	addi %r3, %r3, 4
	stw %r3, 40(%r31)
	lwz %r3, 36(%r31)
	addi %r3, %r3, 4
	stw %r3, 36(%r31)
	b .LBB61_1
.LBB61_11:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB61_18
	b .LBB61_12
.LBB61_12:
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB61_14
	b .LBB61_13
.LBB61_13:
	lis %r3, .L__profc_wcsncmp@ha
	la %r4, .L__profc_wcsncmp@l(%r3)
	lwz %r3, 72(%r4)
	lwz %r5, 76(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 76(%r4)
	stw %r3, 72(%r4)
	li %r3, -1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB61_17
.LBB61_14:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB61_16
# %bb.15:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB61_16:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB61_17
.LBB61_17:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB61_19
.LBB61_18:
	li %r3, 0
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB61_19
.LBB61_19:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-.Lfunc_begin61
	.cfi_endproc
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
.Lfunc_begin62:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc_wmemchr@ha
	lwzu %r3, .L__profc_wmemchr@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB62_4
	b .LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	lis %r3, .L__profc_wmemchr@ha
	la %r4, .L__profc_wmemchr@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	lwz %r5, 36(%r31)
	xor %r6, %r4, %r5
	addic %r3, %r6, -1
	subfe %r3, %r3, %r6
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB62_4
	b .LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_wmemchr@ha
	la %r5, .L__profc_wmemchr@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB62_7
	b .LBB62_5
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
	lis %r3, .L__profc_wmemchr@ha
	la %r4, .L__profc_wmemchr@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB62_6
.LBB62_6:                               #   in Loop: Header=BB62_1 Depth=1
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	lwz %r3, 40(%r31)
	addi %r3, %r3, 4
	stw %r3, 40(%r31)
	b .LBB62_1
.LBB62_7:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB62_9
	b .LBB62_8
.LBB62_8:
	lis %r3, .L__profc_wmemchr@ha
	la %r4, .L__profc_wmemchr@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 40(%r31)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB62_10
.LBB62_9:
	li %r3, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB62_10
.LBB62_10:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-.Lfunc_begin62
	.cfi_endproc
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
.Lfunc_begin63:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc_wmemcmp@ha
	lwzu %r3, .L__profc_wmemcmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB63_4
	b .LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	lis %r3, .L__profc_wmemcmp@ha
	la %r4, .L__profc_wmemcmp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	lwz %r3, 36(%r31)
	lwz %r5, 0(%r3)
	xor %r3, %r4, %r5
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	cmplw	%r4, %r5
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB63_4
	b .LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_wmemcmp@ha
	la %r5, .L__profc_wmemcmp@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB63_7
	b .LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	lis %r3, .L__profc_wmemcmp@ha
	la %r4, .L__profc_wmemcmp@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	lwz %r3, 40(%r31)
	addi %r3, %r3, 4
	stw %r3, 40(%r31)
	lwz %r3, 36(%r31)
	addi %r3, %r3, 4
	stw %r3, 36(%r31)
	b .LBB63_1
.LBB63_7:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB63_14
	b .LBB63_8
.LBB63_8:
	lis %r3, .L__profc_wmemcmp@ha
	la %r4, .L__profc_wmemcmp@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB63_10
	b .LBB63_9
.LBB63_9:
	lis %r3, .L__profc_wmemcmp@ha
	la %r4, .L__profc_wmemcmp@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	li %r3, -1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB63_13
.LBB63_10:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB63_12
# %bb.11:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB63_12:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB63_13
.LBB63_13:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB63_15
.LBB63_14:
	li %r3, 0
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB63_15
.LBB63_15:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-.Lfunc_begin63
	.cfi_endproc
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
.Lfunc_begin64:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_wmemcpy@ha
	lwzu %r3, .L__profc_wmemcpy@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	b .LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	addi %r4, %r3, -1
	stw %r4, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB64_3
	b .LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	lis %r3, .L__profc_wmemcpy@ha
	la %r4, .L__profc_wmemcpy@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	addi %r4, %r3, 4
	stw %r4, 20(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 24(%r31)
	addi %r5, %r4, 4
	stw %r5, 24(%r31)
	stw %r3, 0(%r4)
	b .LBB64_1
.LBB64_3:
	lwz %r3, 12(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-.Lfunc_begin64
	.cfi_endproc
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
.Lfunc_begin65:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	stw %r5, 12(%r31)
	lis %r4, .L__profc_wmemmove@ha
	lwzu %r3, .L__profc_wmemmove@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB65_2
	b .LBB65_1
.LBB65_1:
	lis %r3, .L__profc_wmemmove@ha
	la %r4, .L__profc_wmemmove@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB65_12
.LBB65_2:
	lwz %r4, 20(%r31)
	lwz %r3, 16(%r31)
	sub	%r3, %r4, %r3
	lwz %r4, 12(%r31)
	slwi %r4, %r4, 2
	cmplw	%r3, %r4
	bge %cr0, .LBB65_7
	b .LBB65_3
.LBB65_3:
	lis %r3, .L__profc_wmemmove@ha
	la %r4, .L__profc_wmemmove@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB65_4
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 12(%r31)
	addi %r4, %r3, -1
	stw %r4, 12(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB65_6
	b .LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_4 Depth=1
	lis %r3, .L__profc_wmemmove@ha
	la %r4, .L__profc_wmemmove@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	slwi %r5, %r4, 2
	lwzx %r3, %r3, %r5
	lwz %r4, 20(%r31)
	stwx %r3, %r4, %r5
	b .LBB65_4
.LBB65_6:
	b .LBB65_11
.LBB65_7:
	b .LBB65_8
.LBB65_8:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 12(%r31)
	addi %r4, %r3, -1
	stw %r4, 12(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB65_10
	b .LBB65_9
.LBB65_9:                               #   in Loop: Header=BB65_8 Depth=1
	lis %r3, .L__profc_wmemmove@ha
	la %r4, .L__profc_wmemmove@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 16(%r31)
	addi %r4, %r3, 4
	stw %r4, 16(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	addi %r5, %r4, 4
	stw %r5, 20(%r31)
	stw %r3, 0(%r4)
	b .LBB65_8
.LBB65_10:
	b .LBB65_11
.LBB65_11:
	lwz %r3, 8(%r31)
	stw %r3, 24(%r31)
	b .LBB65_12
.LBB65_12:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-.Lfunc_begin65
	.cfi_endproc
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
wmemset:                                # @wmemset
.Lfunc_begin66:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_wmemset@ha
	lwzu %r3, .L__profc_wmemset@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	b .LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	addi %r4, %r3, -1
	stw %r4, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB66_3
	b .LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
	lis %r3, .L__profc_wmemset@ha
	la %r4, .L__profc_wmemset@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	lwz %r4, 24(%r31)
	addi %r5, %r4, 4
	stw %r5, 24(%r31)
	stw %r3, 0(%r4)
	b .LBB66_1
.LBB66_3:
	lwz %r3, 12(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-.Lfunc_begin66
	.cfi_endproc
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
bcopy:                                  # @bcopy
.Lfunc_begin67:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_bcopy@ha
	lwzu %r3, .L__profc_bcopy@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)
	lwz %r3, 12(%r31)
	lwz %r4, 8(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB67_6
	b .LBB67_1
.LBB67_1:
	lis %r3, .L__profc_bcopy@ha
	la %r4, .L__profc_bcopy@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 8(%r31)
	add %r3, %r3, %r4
	stw %r3, 8(%r31)
	b .LBB67_2
.LBB67_2:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB67_5
	b .LBB67_3
.LBB67_3:                               #   in Loop: Header=BB67_2 Depth=1
	lis %r3, .L__profc_bcopy@ha
	la %r4, .L__profc_bcopy@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 12(%r31)
	addi %r4, %r3, -1
	stw %r4, 12(%r31)
	lbz %r3, -1(%r3)
	lwz %r4, 8(%r31)
	addi %r5, %r4, -1
	stw %r5, 8(%r31)
	stb %r3, -1(%r4)
	b .LBB67_4
.LBB67_4:                               #   in Loop: Header=BB67_2 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	b .LBB67_2
.LBB67_5:
	b .LBB67_13
.LBB67_6:
	lwz %r3, 12(%r31)
	lwz %r4, 8(%r31)
	cmplw	%r3, %r4
	beq	%cr0, .LBB67_12
	b .LBB67_7
.LBB67_7:
	lis %r3, .L__profc_bcopy@ha
	la %r4, .L__profc_bcopy@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB67_11
	b .LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	lis %r3, .L__profc_bcopy@ha
	la %r4, .L__profc_bcopy@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 12(%r31)
	addi %r4, %r3, 1
	stw %r4, 12(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 8(%r31)
	addi %r5, %r4, 1
	stw %r5, 8(%r31)
	stb %r3, 0(%r4)
	b .LBB67_10
.LBB67_10:                              #   in Loop: Header=BB67_8 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	b .LBB67_8
.LBB67_11:
	b .LBB67_12
.LBB67_12:
	b .LBB67_13
.LBB67_13:
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-.Lfunc_begin67
	.cfi_endproc
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
rotl64:                                 # @rotl64
.Lfunc_begin68:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	stw %r5, 12(%r31)
	lis %r4, .L__profc_rotl64@ha
	lwzu %r3, .L__profc_rotl64@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r5, 16(%r31)
	lwz %r6, 20(%r31)
	lwz %r7, 12(%r31)
	slw %r3, %r6, %r7
	subfic %r8, %r7, 32
	srw %r4, %r5, %r8
	or %r3, %r3, %r4
	addi %r4, %r7, -32
	slw %r4, %r5, %r4
	or %r4, %r3, %r4
	slw %r3, %r5, %r7
	subfic %r7, %r7, 64
	srw %r5, %r5, %r7
	subfic %r9, %r7, 32
	slw %r9, %r6, %r9
	or %r5, %r5, %r9
	srw %r8, %r6, %r8
	or %r5, %r5, %r8
	srw %r6, %r6, %r7
	or %r4, %r4, %r6
	or %r3, %r3, %r5
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-.Lfunc_begin68
	.cfi_endproc
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
rotr64:                                 # @rotr64
.Lfunc_begin69:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	stw %r5, 12(%r31)
	lis %r4, .L__profc_rotr64@ha
	lwzu %r3, .L__profc_rotr64@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r5, 20(%r31)
	lwz %r6, 16(%r31)
	lwz %r7, 12(%r31)
	srw %r3, %r6, %r7
	subfic %r8, %r7, 32
	slw %r4, %r5, %r8
	or %r3, %r3, %r4
	addi %r4, %r7, -32
	srw %r4, %r5, %r4
	or %r3, %r3, %r4
	srw %r4, %r5, %r7
	subfic %r7, %r7, 64
	slw %r5, %r5, %r7
	subfic %r9, %r7, 32
	srw %r9, %r6, %r9
	or %r5, %r5, %r9
	slw %r8, %r6, %r8
	or %r5, %r5, %r8
	slw %r6, %r6, %r7
	or %r3, %r3, %r6
	or %r4, %r4, %r5
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-.Lfunc_begin69
	.cfi_endproc
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
rotl32:                                 # @rotl32
.Lfunc_begin70:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotl32@ha
	lwzu %r3, .L__profc_rotl32@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 20(%r31)
	rotlw	%r3, %r3, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-.Lfunc_begin70
	.cfi_endproc
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
rotr32:                                 # @rotr32
.Lfunc_begin71:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotr32@ha
	lwzu %r3, .L__profc_rotr32@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 20(%r31)
	subfic %r4, %r4, 32
	rotlw	%r3, %r3, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-.Lfunc_begin71
	.cfi_endproc
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
.Lfunc_begin72:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotl_sz@ha
	lwzu %r3, .L__profc_rotl_sz@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 20(%r31)
	rotlw	%r3, %r3, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-.Lfunc_begin72
	.cfi_endproc
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
.Lfunc_begin73:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotr_sz@ha
	lwzu %r3, .L__profc_rotr_sz@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 20(%r31)
	subfic %r4, %r4, 32
	rotlw	%r3, %r3, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-.Lfunc_begin73
	.cfi_endproc
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
rotl16:                                 # @rotl16
.Lfunc_begin74:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r3
	sth %r3, 26(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotl16@ha
	lwzu %r3, .L__profc_rotl16@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lhz %r4, 26(%r31)
	lwz %r5, 20(%r31)
	slw %r3, %r4, %r5
	subfic %r5, %r5, 16
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	clrlwi	%r3, %r3, 16
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-.Lfunc_begin74
	.cfi_endproc
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
rotr16:                                 # @rotr16
.Lfunc_begin75:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r3
	sth %r3, 26(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotr16@ha
	lwzu %r3, .L__profc_rotr16@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lhz %r4, 26(%r31)
	lwz %r5, 20(%r31)
	srw %r3, %r4, %r5
	subfic %r5, %r5, 16
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	clrlwi	%r3, %r3, 16
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-.Lfunc_begin75
	.cfi_endproc
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
rotl8:                                  # @rotl8
.Lfunc_begin76:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r3
	stb %r3, 27(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotl8@ha
	lwzu %r3, .L__profc_rotl8@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lbz %r4, 27(%r31)
	lwz %r5, 20(%r31)
	slw %r3, %r4, %r5
	subfic %r5, %r5, 8
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	clrlwi	%r3, %r3, 24
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-.Lfunc_begin76
	.cfi_endproc
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
rotr8:                                  # @rotr8
.Lfunc_begin77:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r3
	stb %r3, 27(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_rotr8@ha
	lwzu %r3, .L__profc_rotr8@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lbz %r4, 27(%r31)
	lwz %r5, 20(%r31)
	srw %r3, %r4, %r5
	subfic %r5, %r5, 8
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	clrlwi	%r3, %r3, 24
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-.Lfunc_begin77
	.cfi_endproc
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
.Lfunc_begin78:
	.cfi_startproc
# %bb.0:
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	sth %r3, 10(%r31)
	lis %r4, .L__profc_bswap_16@ha
	lwzu %r3, .L__profc_bswap_16@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 255
	sth %r3, 8(%r31)
	lhz %r4, 10(%r31)
	lhz %r5, 8(%r31)
	slwi %r3, %r5, 8
	and %r3, %r4, %r3
	srwi %r3, %r3, 8
	and %r4, %r4, %r5
	rlwimi %r3, %r4, 8, 8, 23
	clrlwi	%r3, %r3, 16
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	blr
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-.Lfunc_begin78
	.cfi_endproc
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
.Lfunc_begin79:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc_bswap_32@ha
	lwzu %r3, .L__profc_bswap_32@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 255
	stw %r3, 20(%r31)
	lwz %r4, 24(%r31)
	lwz %r5, 20(%r31)
	slwi %r3, %r5, 24
	and %r3, %r4, %r3
	srwi %r3, %r3, 24
	slwi %r6, %r5, 16
	and %r7, %r4, %r6
	rlwimi %r3, %r7, 24, 8, 23
	slwi %r7, %r4, 8
	and %r6, %r6, %r7
	or %r3, %r3, %r6
	and %r4, %r4, %r5
	slwi %r4, %r4, 24
	or %r3, %r3, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-.Lfunc_begin79
	.cfi_endproc
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
.Lfunc_begin80:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lis %r4, .L__profc_bswap_64@ha
	lwzu %r3, .L__profc_bswap_64@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 12(%r31)
	li %r3, 255
	stw %r3, 8(%r31)
	lwz %r5, 16(%r31)
	lwz %r10, 20(%r31)
	lwz %r6, 8(%r31)
	slwi %r3, %r6, 24
	and %r3, %r10, %r3
	srwi %r3, %r3, 24
	slwi %r7, %r6, 16
	and %r4, %r10, %r7
	rlwimi %r3, %r4, 24, 8, 23
	slwi %r8, %r6, 8
	and %r9, %r10, %r8
	srwi %r4, %r9, 24
	slwi %r9, %r9, 8
	or %r3, %r3, %r9
	and %r11, %r10, %r6
	srwi %r9, %r11, 8
	slwi %r11, %r11, 24
	or %r3, %r3, %r11
	or %r4, %r4, %r9
	rotlwi	%r9, %r5, 8
	rlwimi %r9, %r10, 8, 0, 23
	and %r9, %r6, %r9
	or %r4, %r4, %r9
	rotlwi	%r9, %r5, 24
	rlwimi %r9, %r10, 24, 0, 7
	and %r8, %r8, %r9
	or %r4, %r4, %r8
	slwi %r8, %r5, 8
	and %r7, %r7, %r8
	or %r4, %r4, %r7
	and %r5, %r5, %r6
	slwi %r5, %r5, 24
	or %r4, %r4, %r5
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-.Lfunc_begin80
	.cfi_endproc
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	2
	.type	ffs,@function
ffs:                                    # @ffs
.Lfunc_begin81:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	lis %r4, .L__profc_ffs@ha
	lwzu %r3, .L__profc_ffs@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB81_1
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 31
	bgt	%cr0, .LBB81_6
	b .LBB81_2
.LBB81_2:                               #   in Loop: Header=BB81_1 Depth=1
	lis %r3, .L__profc_ffs@ha
	la %r4, .L__profc_ffs@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB81_4
	b .LBB81_3
.LBB81_3:
	lis %r3, .L__profc_ffs@ha
	la %r4, .L__profc_ffs@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB81_7
.LBB81_4:                               #   in Loop: Header=BB81_1 Depth=1
	b .LBB81_5
.LBB81_5:                               #   in Loop: Header=BB81_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 16(%r31)
	b .LBB81_1
.LBB81_6:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB81_7
.LBB81_7:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-.Lfunc_begin81
	.cfi_endproc
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
.Lfunc_begin82:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	lis %r4, .L__profc_libiberty_ffs@ha
	lwzu %r3, .L__profc_libiberty_ffs@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB82_2
	b .LBB82_1
.LBB82_1:
	lis %r3, .L__profc_libiberty_ffs@ha
	la %r4, .L__profc_libiberty_ffs@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB82_7
.LBB82_2:
	li %r3, 1
	stw %r3, 16(%r31)
	b .LBB82_3
.LBB82_3:                               # =>This Inner Loop Header: Depth=1
	lbz %r3, 20(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	bne	%cr0, .LBB82_6
	b .LBB82_4
.LBB82_4:                               #   in Loop: Header=BB82_3 Depth=1
	lis %r3, .L__profc_libiberty_ffs@ha
	la %r4, .L__profc_libiberty_ffs@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 20(%r31)
	srawi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB82_5
.LBB82_5:                               #   in Loop: Header=BB82_3 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 16(%r31)
	b .LBB82_3
.LBB82_6:
	lwz %r3, 16(%r31)
	stw %r3, 24(%r31)
	b .LBB82_7
.LBB82_7:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-.Lfunc_begin82
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
.Lfunc_begin83:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	stw %r3, 40(%r31)
	lis %r4, .L__profc_gl_isinff@ha
	lwzu %r3, .L__profc_gl_isinff@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	lis %r4, -129
	ori %r4, %r4, 65535
	bl __ltsf2
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB83_5
	b .LBB83_1
.LBB83_1:
	lis %r3, .L__profc_gl_isinff@ha
	la %r4, .L__profc_gl_isinff@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 40(%r31)
	lis %r4, 32639
	ori %r4, %r4, 65535
	bl __gtsf2
	cmpwi	%r3, 0
	mfcr %r3                                # cr0
	stw %r3, 24(%r31)
	li %r3, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB83_3
# %bb.2:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
.LBB83_3:
	lwz %r3, 24(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB83_5
	b .LBB83_4
.LBB83_4:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_gl_isinff@ha
	la %r5, .L__profc_gl_isinff@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	b .LBB83_5
.LBB83_5:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-.Lfunc_begin83
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
.Lfunc_begin84:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	stw %r0, 68(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	lis %r4, .L__profc_gl_isinfd@ha
	lwzu %r3, .L__profc_gl_isinfd@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	lis %r5, -17
	ori %r6, %r5, 65535
	li %r5, -1
	bl __ltdf2
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB84_5
	b .LBB84_1
.LBB84_1:
	lis %r3, .L__profc_gl_isinfd@ha
	la %r4, .L__profc_gl_isinfd@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	lis %r5, 32751
	ori %r6, %r5, 65535
	li %r5, -1
	bl __gtdf2
	cmpwi	%r3, 0
	mfcr %r3                                # cr0
	stw %r3, 32(%r31)
	li %r3, 0
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB84_3
# %bb.2:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
.LBB84_3:
	lwz %r3, 32(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB84_5
	b .LBB84_4
.LBB84_4:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_gl_isinfd@ha
	la %r5, .L__profc_gl_isinfd@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB84_5
.LBB84_5:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r0, 68(%r1)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	mtlr %r0
	blr
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-.Lfunc_begin84
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
.Lfunc_begin85:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -80(%r1)
	stw %r31, 76(%r1)
	stw %r0, 84(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r6, 60(%r31)
	stw %r5, 56(%r31)
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	lis %r4, .L__profc_gl_isinfl@ha
	lwzu %r3, .L__profc_gl_isinfl@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	lwz %r5, 56(%r31)
	lwz %r6, 60(%r31)
	lis %r7, -17
	ori %r8, %r7, 65535
	lis %r7, -881
	ori %r10, %r7, 65535
	li %r7, -1
	li %r9, -2
	bl __gcc_qlt
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB85_5
	b .LBB85_1
.LBB85_1:
	lis %r3, .L__profc_gl_isinfl@ha
	la %r4, .L__profc_gl_isinfl@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	lwz %r5, 56(%r31)
	lwz %r6, 60(%r31)
	lis %r7, 32751
	ori %r8, %r7, 65535
	lis %r7, 31887
	ori %r10, %r7, 65535
	li %r7, -1
	li %r9, -2
	bl __gcc_qgt
	cmpwi	%r3, 0
	mfcr %r3                                # cr0
	stw %r3, 32(%r31)
	li %r3, 0
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB85_3
# %bb.2:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
.LBB85_3:
	lwz %r3, 32(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB85_5
	b .LBB85_4
.LBB85_4:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_gl_isinfl@ha
	la %r5, .L__profc_gl_isinfl@l(%r4)
	lwz %r4, 16(%r5)
	lwz %r6, 20(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 20(%r5)
	stw %r4, 16(%r5)
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB85_5
.LBB85_5:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r0, 84(%r1)
	lwz %r31, 76(%r1)
	addi %r1, %r1, 80
	mtlr %r0
	blr
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-.Lfunc_begin85
	.cfi_endproc
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
.Lfunc_begin86:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc__Qp_itoq@ha
	lwzu %r3, .L__profc__Qp_itoq@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	bl __floatsidf
	bl __gcc_dtoq
	stw %r4, 12(%r31)                       # 4-byte Folded Spill
	mr	%r4, %r5
	lwz %r5, 12(%r31)                       # 4-byte Folded Reload
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	mr	%r7, %r6
	lwz %r6, 16(%r31)                       # 4-byte Folded Reload
	lwz %r4, 24(%r31)
	stw %r7, 12(%r4)
	stw %r6, 8(%r4)
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-.Lfunc_begin86
	.cfi_endproc
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
.Lfunc_begin87:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r3
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	lis %r4, .L__profc_ldexpf@ha
	lwzu %r3, .L__profc_ldexpf@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	cmpw	%r3, %r4
	bgt	%cr0, .LBB87_12
	b .LBB87_1
.LBB87_1:
	lis %r3, .L__profc_ldexpf@ha
	la %r4, .L__profc_ldexpf@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r4, 40(%r31)
	stw %r4, 28(%r31)                       # 4-byte Folded Spill
	mr	%r3, %r4
	bl __addsf3
	lwz %r4, 28(%r31)                       # 4-byte Folded Reload
	bl __eqsf2
	cmplwi	%r3, 0
	beq	%cr0, .LBB87_12
	b .LBB87_2
.LBB87_2:
	lis %r3, .L__profc_ldexpf@ha
	la %r4, .L__profc_ldexpf@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB87_3
.LBB87_3:
	lis %r3, .L__profc_ldexpf@ha
	la %r5, .L__profc_ldexpf@l(%r3)
	stw %r5, 16(%r31)                       # 4-byte Folded Spill
	lwz %r3, 8(%r5)
	lwz %r4, 12(%r5)
	addic %r3, %r3, 1
	addze %r4, %r4
	stw %r4, 12(%r5)
	stw %r3, 8(%r5)
	lwz %r3, 36(%r31)
	srwi %r7, %r3, 31
	lwz %r4, 32(%r5)
	lwz %r6, 36(%r5)
	addc %r4, %r4, %r7
	addze %r6, %r6
	stw %r6, 36(%r5)
	stw %r4, 32(%r5)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	lis %r3, 16128
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB87_5
# %bb.4:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
.LBB87_5:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 32(%r31)
	b .LBB87_6
.LBB87_6:                               # =>This Inner Loop Header: Depth=1
	lis %r3, .L__profc_ldexpf@ha
	la %r4, .L__profc_ldexpf@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r4, 36(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmplwi	%r3, 0
	beq	%cr0, .LBB87_8
	b .LBB87_7
.LBB87_7:                               #   in Loop: Header=BB87_6 Depth=1
	lis %r3, .L__profc_ldexpf@ha
	la %r4, .L__profc_ldexpf@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r4, 32(%r31)
	lwz %r3, 40(%r31)
	bl __mulsf3
	stw %r3, 40(%r31)
	b .LBB87_8
.LBB87_8:                               #   in Loop: Header=BB87_6 Depth=1
	lwz %r3, 36(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 36(%r31)
	lwz %r3, 36(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB87_10
	b .LBB87_9
.LBB87_9:
	lis %r3, .L__profc_ldexpf@ha
	la %r4, .L__profc_ldexpf@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	b .LBB87_11
.LBB87_10:                              #   in Loop: Header=BB87_6 Depth=1
	lwz %r4, 32(%r31)
	mr	%r3, %r4
	bl __mulsf3
	stw %r3, 32(%r31)
	b .LBB87_6
.LBB87_11:
	b .LBB87_12
.LBB87_12:
	lwz %r3, 40(%r31)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-.Lfunc_begin87
	.cfi_endproc
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
ldexp:                                  # @ldexp
.Lfunc_begin88:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -96(%r1)
	stw %r31, 92(%r1)
	stw %r0, 100(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 84(%r31)
	stw %r3, 80(%r31)
	stw %r5, 76(%r31)
	lis %r4, .L__profc_ldexp@ha
	lwzu %r3, .L__profc_ldexp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 80(%r31)
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	lwz %r3, 84(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 56(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB88_2
# %bb.1:
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
.LBB88_2:
	lwz %r4, 52(%r31)                       # 4-byte Folded Reload
	lwz %r5, 48(%r31)                       # 4-byte Folded Reload
	lwz %r3, 60(%r31)                       # 4-byte Folded Reload
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	addic %r3, %r5, -1
	subfe %r3, %r3, %r5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB88_4
# %bb.3:
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
.LBB88_4:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB88_16
	b .LBB88_5
.LBB88_5:
	lis %r3, .L__profc_ldexp@ha
	la %r4, .L__profc_ldexp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r5, 80(%r31)
	stw %r5, 32(%r31)                       # 4-byte Folded Spill
	lwz %r6, 84(%r31)
	stw %r6, 36(%r31)                       # 4-byte Folded Spill
	mr	%r3, %r5
	mr	%r4, %r6
	bl __adddf3
	lwz %r5, 32(%r31)                       # 4-byte Folded Reload
	lwz %r6, 36(%r31)                       # 4-byte Folded Reload
	bl __eqdf2
	cmplwi	%r3, 0
	beq	%cr0, .LBB88_16
	b .LBB88_6
.LBB88_6:
	lis %r3, .L__profc_ldexp@ha
	la %r4, .L__profc_ldexp@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB88_7
.LBB88_7:
	lis %r3, .L__profc_ldexp@ha
	la %r5, .L__profc_ldexp@l(%r3)
	stw %r5, 20(%r31)                       # 4-byte Folded Spill
	lwz %r3, 8(%r5)
	lwz %r4, 12(%r5)
	addic %r3, %r3, 1
	addze %r4, %r4
	stw %r4, 12(%r5)
	stw %r3, 8(%r5)
	lwz %r3, 76(%r31)
	srwi %r7, %r3, 31
	lwz %r4, 32(%r5)
	lwz %r6, 36(%r5)
	addc %r4, %r4, %r7
	addze %r6, %r6
	stw %r6, 36(%r5)
	stw %r4, 32(%r5)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	lis %r3, 16352
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB88_9
# %bb.8:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
.LBB88_9:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)
	li %r3, 0
	stw %r3, 64(%r31)
	b .LBB88_10
.LBB88_10:                              # =>This Inner Loop Header: Depth=1
	lis %r3, .L__profc_ldexp@ha
	la %r4, .L__profc_ldexp@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r4, 76(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmplwi	%r3, 0
	beq	%cr0, .LBB88_12
	b .LBB88_11
.LBB88_11:                              #   in Loop: Header=BB88_10 Depth=1
	lis %r3, .L__profc_ldexp@ha
	la %r4, .L__profc_ldexp@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r5, 64(%r31)
	lwz %r6, 68(%r31)
	lwz %r3, 80(%r31)
	lwz %r4, 84(%r31)
	bl __muldf3
	stw %r4, 84(%r31)
	stw %r3, 80(%r31)
	b .LBB88_12
.LBB88_12:                              #   in Loop: Header=BB88_10 Depth=1
	lwz %r3, 76(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 76(%r31)
	lwz %r3, 76(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB88_14
	b .LBB88_13
.LBB88_13:
	lis %r3, .L__profc_ldexp@ha
	la %r4, .L__profc_ldexp@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	b .LBB88_15
.LBB88_14:                              #   in Loop: Header=BB88_10 Depth=1
	lwz %r5, 64(%r31)
	lwz %r6, 68(%r31)
	mr	%r3, %r5
	mr	%r4, %r6
	bl __muldf3
	stw %r4, 68(%r31)
	stw %r3, 64(%r31)
	b .LBB88_10
.LBB88_15:
	b .LBB88_16
.LBB88_16:
	lwz %r3, 80(%r31)
	lwz %r4, 84(%r31)
	lwz %r0, 100(%r1)
	lwz %r31, 92(%r1)
	addi %r1, %r1, 96
	mtlr %r0
	blr
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-.Lfunc_begin88
	.cfi_endproc
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
.Lfunc_begin89:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -128(%r1)
	stw %r31, 124(%r1)
	stw %r0, 132(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
                                        # kill: def $r8 killed $r3
	stw %r6, 108(%r31)
	stw %r5, 104(%r31)
	stw %r4, 100(%r31)
	stw %r3, 96(%r31)
	stw %r7, 92(%r31)
	lis %r4, .L__profc_ldexpl@ha
	lwzu %r3, .L__profc_ldexpl@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 104(%r31)
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	lwz %r3, 108(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 56(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB89_2
# %bb.1:
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	stw %r3, 60(%r31)                       # 4-byte Folded Spill
.LBB89_2:
	lwz %r4, 52(%r31)                       # 4-byte Folded Reload
	lwz %r5, 48(%r31)                       # 4-byte Folded Reload
	lwz %r3, 60(%r31)                       # 4-byte Folded Reload
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	addic %r3, %r5, -1
	subfe %r3, %r3, %r5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB89_4
# %bb.3:
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
.LBB89_4:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB89_16
	b .LBB89_5
.LBB89_5:
	lis %r3, .L__profc_ldexpl@ha
	la %r4, .L__profc_ldexpl@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r7, 96(%r31)
	stw %r7, 24(%r31)                       # 4-byte Folded Spill
	lwz %r8, 100(%r31)
	stw %r8, 28(%r31)                       # 4-byte Folded Spill
	lwz %r9, 104(%r31)
	stw %r9, 32(%r31)                       # 4-byte Folded Spill
	lwz %r10, 108(%r31)
	stw %r10, 36(%r31)                      # 4-byte Folded Spill
	mr	%r3, %r7
	mr	%r4, %r8
	mr	%r5, %r9
	mr	%r6, %r10
	bl __gcc_qadd
	lwz %r7, 24(%r31)                       # 4-byte Folded Reload
	lwz %r8, 28(%r31)                       # 4-byte Folded Reload
	lwz %r9, 32(%r31)                       # 4-byte Folded Reload
	lwz %r10, 36(%r31)                      # 4-byte Folded Reload
	bl __gcc_qeq
	cmplwi	%r3, 0
	beq	%cr0, .LBB89_16
	b .LBB89_6
.LBB89_6:
	lis %r3, .L__profc_ldexpl@ha
	la %r4, .L__profc_ldexpl@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB89_7
.LBB89_7:
	lis %r3, .L__profc_ldexpl@ha
	la %r5, .L__profc_ldexpl@l(%r3)
	stw %r5, 12(%r31)                       # 4-byte Folded Spill
	lwz %r3, 8(%r5)
	lwz %r4, 12(%r5)
	addic %r3, %r3, 1
	addze %r4, %r4
	stw %r4, 12(%r5)
	stw %r3, 8(%r5)
	lwz %r3, 92(%r31)
	srwi %r7, %r3, 31
	lwz %r4, 32(%r5)
	lwz %r6, 36(%r5)
	addc %r4, %r4, %r7
	addze %r6, %r6
	stw %r6, 36(%r5)
	stw %r4, 32(%r5)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	lis %r3, 16352
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB89_9
# %bb.8:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB89_9:
	lwz %r4, 20(%r31)                       # 4-byte Folded Reload
	li %r3, 0
	stw %r3, 76(%r31)
	stw %r3, 72(%r31)
	stw %r4, 68(%r31)
	stw %r3, 64(%r31)
	b .LBB89_10
.LBB89_10:                              # =>This Inner Loop Header: Depth=1
	lis %r3, .L__profc_ldexpl@ha
	la %r4, .L__profc_ldexpl@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r4, 92(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmplwi	%r3, 0
	beq	%cr0, .LBB89_12
	b .LBB89_11
.LBB89_11:                              #   in Loop: Header=BB89_10 Depth=1
	lis %r3, .L__profc_ldexpl@ha
	la %r4, .L__profc_ldexpl@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r7, 64(%r31)
	lwz %r8, 68(%r31)
	lwz %r9, 72(%r31)
	lwz %r10, 76(%r31)
	lwz %r3, 96(%r31)
	lwz %r4, 100(%r31)
	lwz %r5, 104(%r31)
	lwz %r6, 108(%r31)
	bl __gcc_qmul
	stw %r6, 108(%r31)
	stw %r5, 104(%r31)
	stw %r4, 100(%r31)
	stw %r3, 96(%r31)
	b .LBB89_12
.LBB89_12:                              #   in Loop: Header=BB89_10 Depth=1
	lwz %r3, 92(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 92(%r31)
	lwz %r3, 92(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB89_14
	b .LBB89_13
.LBB89_13:
	lis %r3, .L__profc_ldexpl@ha
	la %r4, .L__profc_ldexpl@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	b .LBB89_15
.LBB89_14:                              #   in Loop: Header=BB89_10 Depth=1
	lwz %r7, 64(%r31)
	lwz %r8, 68(%r31)
	lwz %r9, 72(%r31)
	lwz %r10, 76(%r31)
	mr	%r3, %r7
	mr	%r4, %r8
	mr	%r5, %r9
	mr	%r6, %r10
	bl __gcc_qmul
	stw %r6, 76(%r31)
	stw %r5, 72(%r31)
	stw %r4, 68(%r31)
	stw %r3, 64(%r31)
	b .LBB89_10
.LBB89_15:
	b .LBB89_16
.LBB89_16:
	lwz %r3, 96(%r31)
	lwz %r4, 100(%r31)
	lwz %r5, 104(%r31)
	lwz %r6, 108(%r31)
	lwz %r0, 132(%r1)
	lwz %r31, 124(%r1)
	addi %r1, %r1, 128
	mtlr %r0
	blr
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-.Lfunc_begin89
	.cfi_endproc
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	2
	.type	memxor,@function
memxor:                                 # @memxor
.Lfunc_begin90:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_memxor@ha
	lwzu %r3, .L__profc_memxor@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 24(%r31)
	stw %r3, 8(%r31)
	b .LBB90_1
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB90_4
	b .LBB90_2
.LBB90_2:                               #   in Loop: Header=BB90_1 Depth=1
	lis %r3, .L__profc_memxor@ha
	la %r4, .L__profc_memxor@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 12(%r31)
	addi %r4, %r3, 1
	stw %r4, 12(%r31)
	lbz %r5, 0(%r3)
	lwz %r4, 8(%r31)
	addi %r3, %r4, 1
	stw %r3, 8(%r31)
	lbz %r3, 0(%r4)
	xor %r3, %r3, %r5
	stb %r3, 0(%r4)
	b .LBB90_3
.LBB90_3:                               #   in Loop: Header=BB90_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	b .LBB90_1
.LBB90_4:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-.Lfunc_begin90
	.cfi_endproc
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	2
	.type	strncat,@function
strncat:                                # @strncat
.Lfunc_begin91:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc_strncat@ha
	lwzu %r3, .L__profc_strncat@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 40(%r31)
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	lis %r4, strlen@ha
	la %r4, strlen@l(%r4)
	mtctr %r4
	bctrl
	mr	%r4, %r3
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	add %r3, %r3, %r4
	stw %r3, 28(%r31)
	b .LBB91_1
.LBB91_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB91_4
	b .LBB91_2
.LBB91_2:                               #   in Loop: Header=BB91_1 Depth=1
	lis %r3, .L__profc_strncat@ha
	la %r4, .L__profc_strncat@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 36(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 28(%r31)
	stb %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB91_4
	b .LBB91_3
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_strncat@ha
	la %r5, .L__profc_strncat@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB91_7
	b .LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
	lis %r3, .L__profc_strncat@ha
	la %r4, .L__profc_strncat@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB91_6
.LBB91_6:                               #   in Loop: Header=BB91_1 Depth=1
	lwz %r3, 36(%r31)
	addi %r3, %r3, 1
	stw %r3, 36(%r31)
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	b .LBB91_1
.LBB91_7:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB91_9
	b .LBB91_8
.LBB91_8:
	lis %r3, .L__profc_strncat@ha
	la %r4, .L__profc_strncat@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r4, 28(%r31)
	li %r3, 0
	stb %r3, 0(%r4)
	b .LBB91_9
.LBB91_9:
	lwz %r3, 40(%r31)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-.Lfunc_begin91
	.cfi_endproc
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
strnlen:                                # @strnlen
.Lfunc_begin92:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_strnlen@ha
	lwzu %r3, .L__profc_strnlen@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 16(%r31)
	lwz %r5, 20(%r31)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	bge %cr0, .LBB92_4
	b .LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	lis %r3, .L__profc_strnlen@ha
	la %r4, .L__profc_strnlen@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 16(%r31)
	lbzx %r4, %r3, %r4
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB92_4
	b .LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lis %r4, .L__profc_strnlen@ha
	la %r5, .L__profc_strnlen@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB92_4
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB92_7
	b .LBB92_5
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	lis %r3, .L__profc_strnlen@ha
	la %r4, .L__profc_strnlen@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB92_6
.LBB92_6:                               #   in Loop: Header=BB92_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 16(%r31)
	b .LBB92_1
.LBB92_7:
	lwz %r3, 16(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-.Lfunc_begin92
	.cfi_endproc
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
.Lfunc_begin93:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc_strpbrk@ha
	lwzu %r3, .L__profc_strpbrk@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	b .LBB93_1
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB93_8
	b .LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	lis %r3, .L__profc_strpbrk@ha
	la %r4, .L__profc_strpbrk@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 16(%r31)
	stw %r3, 12(%r31)
	b .LBB93_3
.LBB93_3:                               #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwz %r3, 12(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB93_7
	b .LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_3 Depth=2
	lis %r3, .L__profc_strpbrk@ha
	la %r4, .L__profc_strpbrk@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 12(%r31)
	addi %r4, %r3, 1
	stw %r4, 12(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	lbz %r4, 0(%r4)
	cmplw	%r3, %r4
	bne	%cr0, .LBB93_6
	b .LBB93_5
.LBB93_5:
	lis %r3, .L__profc_strpbrk@ha
	la %r4, .L__profc_strpbrk@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB93_9
.LBB93_6:                               #   in Loop: Header=BB93_3 Depth=2
	b .LBB93_3
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB93_1
.LBB93_8:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB93_9
.LBB93_9:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-.Lfunc_begin93
	.cfi_endproc
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
strrchr:                                # @strrchr
.Lfunc_begin94:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc_strrchr@ha
	lwzu %r3, .L__profc_strrchr@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB94_2
.LBB94_1:                               #   in Loop: Header=BB94_2 Depth=1
	lis %r3, .L__profc_strrchr@ha
	la %r4, .L__profc_strrchr@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	b .LBB94_2
.LBB94_2:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB94_4
	b .LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_2 Depth=1
	lis %r3, .L__profc_strrchr@ha
	la %r4, .L__profc_strrchr@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 16(%r31)
	b .LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_2 Depth=1
	b .LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_2 Depth=1
	lwz %r3, 24(%r31)
	addi %r4, %r3, 1
	stw %r4, 24(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	bne	%cr0, .LBB94_1
	b .LBB94_6
.LBB94_6:
	lwz %r3, 16(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-.Lfunc_begin94
	.cfi_endproc
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	2
	.type	strstr,@function
strstr:                                 # @strstr
.Lfunc_begin95:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc_strstr@ha
	lwzu %r3, .L__profc_strstr@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 16(%r31)
	lis %r4, strlen@ha
	la %r4, strlen@l(%r4)
	mtctr %r4
	bctrl
	stw %r3, 8(%r31)
	lwz %r3, 8(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB95_2
	b .LBB95_1
.LBB95_1:
	lis %r3, .L__profc_strstr@ha
	la %r4, .L__profc_strstr@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB95_9
.LBB95_2:
	b .LBB95_3
.LBB95_3:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 12(%r31)
	lwz %r4, 16(%r31)
	lbz %r4, 0(%r4)
	lis %r5, strchr@ha
	la %r5, strchr@l(%r5)
	mtctr %r5
	bctrl
	stw %r3, 12(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB95_8
	b .LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=1
	lis %r3, .L__profc_strstr@ha
	la %r4, .L__profc_strstr@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 12(%r31)
	lwz %r4, 16(%r31)
	lwz %r5, 8(%r31)
	lis %r6, strncmp@ha
	la %r6, strncmp@l(%r6)
	mtctr %r6
	bctrl
	cmplwi	%r3, 0
	bne	%cr0, .LBB95_6
	b .LBB95_5
.LBB95_5:
	lis %r3, .L__profc_strstr@ha
	la %r4, .L__profc_strstr@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 12(%r31)
	stw %r3, 24(%r31)
	b .LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=1
	b .LBB95_7
.LBB95_7:                               #   in Loop: Header=BB95_3 Depth=1
	lwz %r3, 12(%r31)
	addi %r3, %r3, 1
	stw %r3, 12(%r31)
	b .LBB95_3
.LBB95_8:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB95_9
.LBB95_9:
	lwz %r3, 24(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-.Lfunc_begin95
	.cfi_endproc
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	2
	.type	copysign,@function
copysign:                               # @copysign
.Lfunc_begin96:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	stw %r6, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_copysign@ha
	lwzu %r3, .L__profc_copysign@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB96_3
	b .LBB96_1
.LBB96_1:
	lis %r3, .L__profc_copysign@ha
	la %r4, .L__profc_copysign@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __gtdf2
	cmpwi	%r3, 1
	blt	%cr0, .LBB96_3
	b .LBB96_2
.LBB96_2:
	lis %r3, .L__profc_copysign@ha
	la %r4, .L__profc_copysign@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	b .LBB96_6
.LBB96_3:
	lis %r3, .L__profc_copysign@ha
	la %r4, .L__profc_copysign@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __gtdf2
	cmpwi	%r3, 1
	blt	%cr0, .LBB96_7
	b .LBB96_4
.LBB96_4:
	lis %r3, .L__profc_copysign@ha
	la %r4, .L__profc_copysign@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB96_7
	b .LBB96_5
.LBB96_5:
	lis %r3, .L__profc_copysign@ha
	la %r4, .L__profc_copysign@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	b .LBB96_6
.LBB96_6:
	lis %r3, .L__profc_copysign@ha
	la %r4, .L__profc_copysign@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 24(%r31)
	lwz %r3, 28(%r31)
	xoris %r3, %r3, 32768
	stw %r4, 32(%r31)
	stw %r3, 36(%r31)
	b .LBB96_8
.LBB96_7:
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	b .LBB96_8
.LBB96_8:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-.Lfunc_begin96
	.cfi_endproc
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	2
	.type	memmem,@function
memmem:                                 # @memmem
.Lfunc_begin97:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 36(%r31)
	stw %r4, 32(%r31)
	stw %r5, 28(%r31)
	stw %r6, 24(%r31)
	lis %r4, .L__profc_memmem@ha
	lwzu %r3, .L__profc_memmem@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	add %r4, %r3, %r4
	lwz %r3, 24(%r31)
	sub	%r3, %r4, %r3
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB97_2
	b .LBB97_1
.LBB97_1:
	lis %r3, .L__profc_memmem@ha
	la %r4, .L__profc_memmem@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB97_13
.LBB97_2:
	lwz %r3, 32(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB97_4
	b .LBB97_3
.LBB97_3:
	lis %r3, .L__profc_memmem@ha
	la %r4, .L__profc_memmem@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB97_13
.LBB97_4:
	lwz %r3, 36(%r31)
	stw %r3, 20(%r31)
	b .LBB97_5
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bgt	%cr0, .LBB97_12
	b .LBB97_6
.LBB97_6:                               #   in Loop: Header=BB97_5 Depth=1
	lis %r3, .L__profc_memmem@ha
	la %r4, .L__profc_memmem@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 28(%r31)
	lbz %r4, 0(%r4)
	cmplw	%r3, %r4
	bne	%cr0, .LBB97_10
	b .LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_5 Depth=1
	lis %r3, .L__profc_memmem@ha
	la %r4, .L__profc_memmem@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	lwz %r4, 28(%r31)
	addi %r4, %r4, 1
	lwz %r5, 24(%r31)
	addi %r5, %r5, -1
	lis %r6, memcmp@ha
	la %r6, memcmp@l(%r6)
	mtctr %r6
	bctrl
	cmplwi	%r3, 0
	bne	%cr0, .LBB97_10
	b .LBB97_8
.LBB97_8:
	lis %r3, .L__profc_memmem@ha
	la %r4, .L__profc_memmem@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	b .LBB97_9
.LBB97_9:
	lis %r3, .L__profc_memmem@ha
	la %r4, .L__profc_memmem@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB97_13
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	b .LBB97_11
.LBB97_11:                              #   in Loop: Header=BB97_5 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB97_5
.LBB97_12:
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB97_13
.LBB97_13:
	lwz %r3, 40(%r31)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-.Lfunc_begin97
	.cfi_endproc
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
.Lfunc_begin98:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	lis %r4, .L__profc_mempcpy@ha
	lwzu %r3, .L__profc_mempcpy@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	lwz %r4, 20(%r31)
	lwz %r5, 16(%r31)
	bl memcpy
                                        # kill: def $r4 killed $r3
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lwz %r4, 16(%r31)
	add %r3, %r3, %r4
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-.Lfunc_begin98
	.cfi_endproc
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	2
	.type	frexp,@function
frexp:                                  # @frexp
.Lfunc_begin99:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	stw %r5, 28(%r31)
	lis %r4, .L__profc_frexp@ha
	lwzu %r3, .L__profc_frexp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r6, 0
	stw %r6, 20(%r31)
	stw %r6, 24(%r31)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	mr	%r5, %r6
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB99_2
	b .LBB99_1
.LBB99_1:
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 36(%r31)
	xoris %r3, %r3, 32768
	stw %r3, 36(%r31)
	li %r3, 1
	stw %r3, 24(%r31)
	b .LBB99_2
.LBB99_2:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r5, 0
	lis %r6, 16368
	bl __gedf2
	cmpwi	%r3, 0
	blt	%cr0, .LBB99_7
	b .LBB99_3
.LBB99_3:
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB99_4
.LBB99_4:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r5, 0
	lis %r6, 16368
	bl __gedf2
	cmpwi	%r3, 0
	blt	%cr0, .LBB99_6
	b .LBB99_5
.LBB99_5:                               #   in Loop: Header=BB99_4 Depth=1
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r5, 0
	lis %r6, 16352
	bl __muldf3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	b .LBB99_4
.LBB99_6:
	b .LBB99_15
.LBB99_7:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r5, 0
	lis %r6, 16352
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB99_14
	b .LBB99_8
.LBB99_8:
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __eqdf2
	cmplwi	%r3, 0
	beq	%cr0, .LBB99_14
	b .LBB99_9
.LBB99_9:
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	b .LBB99_10
.LBB99_10:
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	b .LBB99_11
.LBB99_11:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r5, 0
	lis %r6, 16352
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB99_13
	b .LBB99_12
.LBB99_12:                              #   in Loop: Header=BB99_11 Depth=1
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	lwz %r3, 20(%r31)
	addi %r3, %r3, -1
	stw %r3, 20(%r31)
	lwz %r5, 32(%r31)
	lwz %r6, 36(%r31)
	mr	%r3, %r5
	mr	%r4, %r6
	bl __adddf3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	b .LBB99_11
.LBB99_13:
	b .LBB99_14
.LBB99_14:
	b .LBB99_15
.LBB99_15:
	lwz %r3, 20(%r31)
	lwz %r4, 28(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB99_17
	b .LBB99_16
.LBB99_16:
	lis %r3, .L__profc_frexp@ha
	la %r4, .L__profc_frexp@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	lwz %r3, 36(%r31)
	xoris %r3, %r3, 32768
	stw %r3, 36(%r31)
	b .LBB99_17
.LBB99_17:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-.Lfunc_begin99
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
.Lfunc_begin100:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	stw %r6, 28(%r31)
	stw %r5, 24(%r31)
	lis %r4, .L__profc___muldi3@ha
	lwzu %r3, .L__profc___muldi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 20(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	stw %r4, 12(%r31)
	stw %r3, 8(%r31)
	b .LBB100_1
.LBB100_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, 12(%r31)
	lwz %r3, 8(%r31)
	or %r3, %r3, %r4
	cmplwi	%r3, 0
	beq	%cr0, .LBB100_5
	b .LBB100_2
.LBB100_2:                              #   in Loop: Header=BB100_1 Depth=1
	lis %r3, .L__profc___muldi3@ha
	la %r4, .L__profc___muldi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lbz %r3, 8(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB100_4
	b .LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
	lis %r3, .L__profc___muldi3@ha
	la %r4, .L__profc___muldi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r6, 24(%r31)
	lwz %r5, 28(%r31)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	addc %r3, %r3, %r6
	adde %r4, %r4, %r5
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	b .LBB100_4
.LBB100_4:                              #   in Loop: Header=BB100_1 Depth=1
	lwz %r5, 28(%r31)
	lwz %r4, 24(%r31)
	rotlwi	%r3, %r4, 1
	rlwimi %r3, %r5, 1, 0, 30
	slwi %r4, %r4, 1
	stw %r4, 24(%r31)
	stw %r3, 28(%r31)
	lwz %r4, 12(%r31)
	lwz %r3, 8(%r31)
	rotlwi	%r3, %r3, 31
	rlwimi %r3, %r4, 31, 0, 0
	srwi %r4, %r4, 1
	stw %r4, 12(%r31)
	stw %r3, 8(%r31)
	b .LBB100_1
.LBB100_5:
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-.Lfunc_begin100
	.cfi_endproc
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
.Lfunc_begin101:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 36(%r31)
	stw %r4, 32(%r31)
	stw %r5, 28(%r31)
	lis %r4, .L__profc_udivmodsi4@ha
	lwzu %r3, .L__profc_udivmodsi4@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 1
	stw %r3, 24(%r31)
	li %r3, 0
	stw %r3, 20(%r31)
	b .LBB101_1
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	lwz %r5, 36(%r31)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bge %cr0, .LBB101_6
	b .LBB101_2
.LBB101_2:                              #   in Loop: Header=BB101_1 Depth=1
	lis %r3, .L__profc_udivmodsi4@ha
	la %r4, .L__profc_udivmodsi4@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r4, 24(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB101_6
	b .LBB101_3
.LBB101_3:                              #   in Loop: Header=BB101_1 Depth=1
	lis %r3, .L__profc_udivmodsi4@ha
	la %r4, .L__profc_udivmodsi4@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	b .LBB101_4
.LBB101_4:                              #   in Loop: Header=BB101_1 Depth=1
	lis %r3, .L__profc_udivmodsi4@ha
	la %r4, .L__profc_udivmodsi4@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 32(%r31)
	rlwinm %r4, %r3, 0, 0, 0
	not	%r3, %r3
	srwi %r3, %r3, 31
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB101_6
	b .LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc_udivmodsi4@ha
	la %r5, .L__profc_udivmodsi4@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB101_6
.LBB101_6:                              #   in Loop: Header=BB101_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_8
	b .LBB101_7
.LBB101_7:                              #   in Loop: Header=BB101_1 Depth=1
	lis %r3, .L__profc_udivmodsi4@ha
	la %r4, .L__profc_udivmodsi4@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 32(%r31)
	slwi %r3, %r3, 1
	stw %r3, 32(%r31)
	lwz %r3, 24(%r31)
	slwi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB101_1
.LBB101_8:
	b .LBB101_9
.LBB101_9:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_13
	b .LBB101_10
.LBB101_10:                             #   in Loop: Header=BB101_9 Depth=1
	lis %r3, .L__profc_udivmodsi4@ha
	la %r4, .L__profc_udivmodsi4@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB101_12
	b .LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_9 Depth=1
	lis %r3, .L__profc_udivmodsi4@ha
	la %r4, .L__profc_udivmodsi4@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	sub	%r3, %r4, %r3
	stw %r3, 36(%r31)
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	or %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_9 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 1
	stw %r3, 32(%r31)
	b .LBB101_9
.LBB101_13:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_15
	b .LBB101_14
.LBB101_14:
	lis %r3, .L__profc_udivmodsi4@ha
	la %r4, .L__profc_udivmodsi4@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB101_16
.LBB101_15:
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB101_16
.LBB101_16:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-.Lfunc_begin101
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
.Lfunc_begin102:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	stb %r3, 23(%r31)
	lis %r4, .L__profc___clrsbqi2@ha
	lwzu %r3, .L__profc___clrsbqi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lbz %r3, 23(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB102_2
	b .LBB102_1
.LBB102_1:
	lis %r3, .L__profc___clrsbqi2@ha
	la %r4, .L__profc___clrsbqi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lbz %r3, 23(%r31)
	not	%r3, %r3
	stb %r3, 23(%r31)
	b .LBB102_2
.LBB102_2:
	lbz %r3, 23(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB102_4
	b .LBB102_3
.LBB102_3:
	lis %r3, .L__profc___clrsbqi2@ha
	la %r4, .L__profc___clrsbqi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 7
	stw %r3, 24(%r31)
	b .LBB102_5
.LBB102_4:
	lbz %r3, 23(%r31)
	slwi %r3, %r3, 8
	cntlzw	%r3, %r3
	stw %r3, 16(%r31)
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 24(%r31)
	b .LBB102_5
.LBB102_5:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-.Lfunc_begin102
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
.Lfunc_begin103:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lis %r4, .L__profc___clrsbdi2@ha
	lwzu %r3, .L__profc___clrsbdi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 36(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB103_2
	b .LBB103_1
.LBB103_1:
	lis %r3, .L__profc___clrsbdi2@ha
	la %r4, .L__profc___clrsbdi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r4, 36(%r31)
	lwz %r3, 32(%r31)
	not	%r3, %r3
	not	%r4, %r4
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	b .LBB103_2
.LBB103_2:
	lwz %r4, 36(%r31)
	lwz %r3, 32(%r31)
	or %r3, %r3, %r4
	cmplwi	%r3, 0
	bne	%cr0, .LBB103_4
	b .LBB103_3
.LBB103_3:
	lis %r3, .L__profc___clrsbdi2@ha
	la %r4, .L__profc___clrsbdi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 63
	stw %r3, 40(%r31)
	b .LBB103_7
.LBB103_4:
	lwz %r4, 32(%r31)
	lwz %r5, 36(%r31)
	cntlzw	%r3, %r5
	cmplwi	%r5, 0
	cntlzw	%r4, %r4
	addi %r4, %r4, 32
	stw %r4, 20(%r31)                       # 4-byte Folded Spill
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB103_6
# %bb.5:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
.LBB103_6:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)
	lwz %r3, 28(%r31)
	addi %r3, %r3, -1
	stw %r3, 40(%r31)
	b .LBB103_7
.LBB103_7:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-.Lfunc_begin103
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
.Lfunc_begin104:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___mulsi3@ha
	lwzu %r3, .L__profc___mulsi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB104_1
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB104_5
	b .LBB104_2
.LBB104_2:                              #   in Loop: Header=BB104_1 Depth=1
	lis %r3, .L__profc___mulsi3@ha
	la %r4, .L__profc___mulsi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lbz %r3, 24(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB104_4
	b .LBB104_3
.LBB104_3:                              #   in Loop: Header=BB104_1 Depth=1
	lis %r3, .L__profc___mulsi3@ha
	la %r4, .L__profc___mulsi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r4, 20(%r31)
	lwz %r3, 16(%r31)
	add %r3, %r3, %r4
	stw %r3, 16(%r31)
	b .LBB104_4
.LBB104_4:                              #   in Loop: Header=BB104_1 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 20(%r31)
	slwi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB104_1
.LBB104_5:
	lwz %r3, 16(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-.Lfunc_begin104
	.cfi_endproc
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
.Lfunc_begin105:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc___cmovd@ha
	lwzu %r3, .L__profc___cmovd@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 3
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	rlwinm %r3, %r3, 0, 0, 28
	stw %r3, 20(%r31)
	lwz %r3, 40(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 36(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB105_3
	b .LBB105_1
.LBB105_1:
	lis %r3, .L__profc___cmovd@ha
	la %r4, .L__profc___cmovd@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	lwz %r5, 32(%r31)
	add %r4, %r4, %r5
	cmplw	%r3, %r4
	bgt	%cr0, .LBB105_3
	b .LBB105_2
.LBB105_2:
	lis %r3, .L__profc___cmovd@ha
	la %r4, .L__profc___cmovd@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB105_11
.LBB105_3:
	lis %r3, .L__profc___cmovd@ha
	la %r4, .L__profc___cmovd@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 28(%r31)
	b .LBB105_4
.LBB105_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB105_7
	b .LBB105_5
.LBB105_5:                              #   in Loop: Header=BB105_4 Depth=1
	lis %r3, .L__profc___cmovd@ha
	la %r4, .L__profc___cmovd@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 28(%r31)
	slwi %r6, %r4, 3
	lwzux %r5, %r3, %r6
	lwz %r3, 4(%r3)
	lwz %r4, 40(%r31)
	stwux %r5, %r4, %r6
	stw %r3, 4(%r4)
	b .LBB105_6
.LBB105_6:                              #   in Loop: Header=BB105_4 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	b .LBB105_4
.LBB105_7:
	b .LBB105_8
.LBB105_8:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 20(%r31)
	cmplw	%r3, %r4
	ble %cr0, .LBB105_10
	b .LBB105_9
.LBB105_9:                              #   in Loop: Header=BB105_8 Depth=1
	lis %r3, .L__profc___cmovd@ha
	la %r4, .L__profc___cmovd@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 12(%r31)
	lwz %r5, 20(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB105_8
.LBB105_10:
	b .LBB105_15
.LBB105_11:
	b .LBB105_12
.LBB105_12:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	addi %r4, %r3, -1
	stw %r4, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB105_14
	b .LBB105_13
.LBB105_13:                             #   in Loop: Header=BB105_12 Depth=1
	lis %r3, .L__profc___cmovd@ha
	la %r4, .L__profc___cmovd@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 12(%r31)
	lwz %r5, 32(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	b .LBB105_12
.LBB105_14:
	b .LBB105_15
.LBB105_15:
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-.Lfunc_begin105
	.cfi_endproc
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
.Lfunc_begin106:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc___cmovh@ha
	lwzu %r3, .L__profc___cmovh@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 40(%r31)
	stw %r3, 20(%r31)
	lwz %r3, 36(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB106_3
	b .LBB106_1
.LBB106_1:
	lis %r3, .L__profc___cmovh@ha
	la %r4, .L__profc___cmovh@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r5, 32(%r31)
	add %r4, %r4, %r5
	cmplw	%r3, %r4
	bgt	%cr0, .LBB106_3
	b .LBB106_2
.LBB106_2:
	lis %r3, .L__profc___cmovh@ha
	la %r4, .L__profc___cmovh@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB106_10
.LBB106_3:
	lis %r3, .L__profc___cmovh@ha
	la %r4, .L__profc___cmovh@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 28(%r31)
	b .LBB106_4
.LBB106_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB106_7
	b .LBB106_5
.LBB106_5:                              #   in Loop: Header=BB106_4 Depth=1
	lis %r3, .L__profc___cmovh@ha
	la %r4, .L__profc___cmovh@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 28(%r31)
	slwi %r5, %r4, 1
	lhzx %r3, %r3, %r5
	lwz %r4, 40(%r31)
	sthx %r3, %r4, %r5
	b .LBB106_6
.LBB106_6:                              #   in Loop: Header=BB106_4 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	b .LBB106_4
.LBB106_7:
	lbz %r3, 32(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB106_9
	b .LBB106_8
.LBB106_8:
	lis %r3, .L__profc___cmovh@ha
	la %r4, .L__profc___cmovh@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 32(%r31)
	addi %r5, %r4, -1
	lbzx %r3, %r3, %r5
	lwz %r4, 20(%r31)
	stbx %r3, %r4, %r5
	b .LBB106_9
.LBB106_9:
	b .LBB106_14
.LBB106_10:
	b .LBB106_11
.LBB106_11:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	addi %r4, %r3, -1
	stw %r4, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB106_13
	b .LBB106_12
.LBB106_12:                             #   in Loop: Header=BB106_11 Depth=1
	lis %r3, .L__profc___cmovh@ha
	la %r4, .L__profc___cmovh@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 16(%r31)
	lwz %r5, 32(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 20(%r31)
	stbx %r3, %r4, %r5
	b .LBB106_11
.LBB106_13:
	b .LBB106_14
.LBB106_14:
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-.Lfunc_begin106
	.cfi_endproc
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
.Lfunc_begin107:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc___cmovw@ha
	lwzu %r3, .L__profc___cmovw@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 2
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	rlwinm %r3, %r3, 0, 0, 29
	stw %r3, 20(%r31)
	lwz %r3, 40(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 36(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB107_3
	b .LBB107_1
.LBB107_1:
	lis %r3, .L__profc___cmovw@ha
	la %r4, .L__profc___cmovw@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	lwz %r5, 32(%r31)
	add %r4, %r4, %r5
	cmplw	%r3, %r4
	bgt	%cr0, .LBB107_3
	b .LBB107_2
.LBB107_2:
	lis %r3, .L__profc___cmovw@ha
	la %r4, .L__profc___cmovw@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB107_11
.LBB107_3:
	lis %r3, .L__profc___cmovw@ha
	la %r4, .L__profc___cmovw@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 28(%r31)
	b .LBB107_4
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB107_7
	b .LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_4 Depth=1
	lis %r3, .L__profc___cmovw@ha
	la %r4, .L__profc___cmovw@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 28(%r31)
	slwi %r5, %r4, 2
	lwzx %r3, %r3, %r5
	lwz %r4, 40(%r31)
	stwx %r3, %r4, %r5
	b .LBB107_6
.LBB107_6:                              #   in Loop: Header=BB107_4 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	b .LBB107_4
.LBB107_7:
	b .LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 20(%r31)
	cmplw	%r3, %r4
	ble %cr0, .LBB107_10
	b .LBB107_9
.LBB107_9:                              #   in Loop: Header=BB107_8 Depth=1
	lis %r3, .L__profc___cmovw@ha
	la %r4, .L__profc___cmovw@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r3, 12(%r31)
	lwz %r5, 20(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB107_8
.LBB107_10:
	b .LBB107_15
.LBB107_11:
	b .LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	addi %r4, %r3, -1
	stw %r4, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB107_14
	b .LBB107_13
.LBB107_13:                             #   in Loop: Header=BB107_12 Depth=1
	lis %r3, .L__profc___cmovw@ha
	la %r4, .L__profc___cmovw@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 12(%r31)
	lwz %r5, 32(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	b .LBB107_12
.LBB107_14:
	b .LBB107_15
.LBB107_15:
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-.Lfunc_begin107
	.cfi_endproc
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	2
	.type	__modi,@function
__modi:                                 # @__modi
.Lfunc_begin108:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___modi@ha
	lwzu %r3, .L__profc___modi@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 24(%r31)
	lwz %r5, 20(%r31)
	divw %r3, %r4, %r5
	mullw %r3, %r3, %r5
	sub	%r3, %r4, %r3
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-.Lfunc_begin108
	.cfi_endproc
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
__uitod:                                # @__uitod
.Lfunc_begin109:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	stw %r0, 20(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 8(%r31)
	lis %r4, .L__profc___uitod@ha
	lwzu %r3, .L__profc___uitod@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 8(%r31)
	bl __floatunsidf
	lwz %r0, 20(%r1)
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	mtlr %r0
	blr
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-.Lfunc_begin109
	.cfi_endproc
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
__uitof:                                # @__uitof
.Lfunc_begin110:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	stw %r0, 20(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 8(%r31)
	lis %r4, .L__profc___uitof@ha
	lwzu %r3, .L__profc___uitof@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 8(%r31)
	bl __floatunsisf
	lwz %r0, 20(%r1)
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	mtlr %r0
	blr
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-.Lfunc_begin110
	.cfi_endproc
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
.Lfunc_begin111:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lis %r4, .L__profc___ulltod@ha
	lwzu %r3, .L__profc___ulltod@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	bl __floatundidf
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-.Lfunc_begin111
	.cfi_endproc
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
.Lfunc_begin112:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lis %r4, .L__profc___ulltof@ha
	lwzu %r3, .L__profc___ulltof@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	bl __floatundisf
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-.Lfunc_begin112
	.cfi_endproc
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
__umodi:                                # @__umodi
.Lfunc_begin113:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___umodi@ha
	lwzu %r3, .L__profc___umodi@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 24(%r31)
	lwz %r5, 20(%r31)
	divwu %r3, %r4, %r5
	mullw %r3, %r3, %r5
	sub	%r3, %r4, %r3
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-.Lfunc_begin113
	.cfi_endproc
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
.Lfunc_begin114:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	sth %r3, 26(%r31)
	lis %r4, .L__profc___clzhi2@ha
	lwzu %r3, .L__profc___clzhi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 20(%r31)
	b .LBB114_1
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 15
	bgt	%cr0, .LBB114_6
	b .LBB114_2
.LBB114_2:                              #   in Loop: Header=BB114_1 Depth=1
	lis %r3, .L__profc___clzhi2@ha
	la %r4, .L__profc___clzhi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	subfic %r4, %r4, 15
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB114_4
	b .LBB114_3
.LBB114_3:
	lis %r3, .L__profc___clzhi2@ha
	la %r4, .L__profc___clzhi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB114_6
.LBB114_4:                              #   in Loop: Header=BB114_1 Depth=1
	b .LBB114_5
.LBB114_5:                              #   in Loop: Header=BB114_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB114_1
.LBB114_6:
	lwz %r3, 20(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-.Lfunc_begin114
	.cfi_endproc
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
.Lfunc_begin115:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	sth %r3, 26(%r31)
	lis %r4, .L__profc___ctzhi2@ha
	lwzu %r3, .L__profc___ctzhi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 20(%r31)
	b .LBB115_1
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 15
	bgt	%cr0, .LBB115_6
	b .LBB115_2
.LBB115_2:                              #   in Loop: Header=BB115_1 Depth=1
	lis %r3, .L__profc___ctzhi2@ha
	la %r4, .L__profc___ctzhi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB115_4
	b .LBB115_3
.LBB115_3:
	lis %r3, .L__profc___ctzhi2@ha
	la %r4, .L__profc___ctzhi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	b .LBB115_6
.LBB115_4:                              #   in Loop: Header=BB115_1 Depth=1
	b .LBB115_5
.LBB115_5:                              #   in Loop: Header=BB115_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB115_1
.LBB115_6:
	lwz %r3, 20(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-.Lfunc_begin115
	.cfi_endproc
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
.Lfunc_begin116:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	stw %r3, 20(%r31)
	lis %r4, .L__profc___fixunssfsi@ha
	lwzu %r3, .L__profc___fixunssfsi@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	lis %r4, 18176
	bl __gesf2
	cmpwi	%r3, 0
	blt	%cr0, .LBB116_2
	b .LBB116_1
.LBB116_1:
	lis %r3, .L__profc___fixunssfsi@ha
	la %r4, .L__profc___fixunssfsi@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 20(%r31)
	lis %r4, -14592
	bl __addsf3
	bl __fixsfsi
	addi %r3, %r3, -32768
	addis %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB116_3
.LBB116_2:
	lwz %r3, 20(%r31)
	bl __fixsfsi
	stw %r3, 24(%r31)
	b .LBB116_3
.LBB116_3:
	lwz %r3, 24(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-.Lfunc_begin116
	.cfi_endproc
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
.Lfunc_begin117:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	sth %r3, 26(%r31)
	lis %r4, .L__profc___parityhi2@ha
	lwzu %r3, .L__profc___parityhi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	stw %r3, 20(%r31)
	b .LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 15
	bgt	%cr0, .LBB117_6
	b .LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	lis %r3, .L__profc___parityhi2@ha
	la %r4, .L__profc___parityhi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB117_4
	b .LBB117_3
.LBB117_3:                              #   in Loop: Header=BB117_1 Depth=1
	lis %r3, .L__profc___parityhi2@ha
	la %r4, .L__profc___parityhi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 16(%r31)
	b .LBB117_4
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	b .LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB117_1
.LBB117_6:
	lwz %r3, 16(%r31)
	clrlwi	%r3, %r3, 31
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-.Lfunc_begin117
	.cfi_endproc
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
.Lfunc_begin118:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	sth %r3, 26(%r31)
	lis %r4, .L__profc___popcounthi2@ha
	lwzu %r3, .L__profc___popcounthi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	stw %r3, 20(%r31)
	b .LBB118_1
.LBB118_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 15
	bgt	%cr0, .LBB118_6
	b .LBB118_2
.LBB118_2:                              #   in Loop: Header=BB118_1 Depth=1
	lis %r3, .L__profc___popcounthi2@ha
	la %r4, .L__profc___popcounthi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB118_4
	b .LBB118_3
.LBB118_3:                              #   in Loop: Header=BB118_1 Depth=1
	lis %r3, .L__profc___popcounthi2@ha
	la %r4, .L__profc___popcounthi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 16(%r31)
	b .LBB118_4
.LBB118_4:                              #   in Loop: Header=BB118_1 Depth=1
	b .LBB118_5
.LBB118_5:                              #   in Loop: Header=BB118_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB118_1
.LBB118_6:
	lwz %r3, 16(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-.Lfunc_begin118
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
.Lfunc_begin119:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___mulsi3_iq2000@ha
	lwzu %r3, .L__profc___mulsi3_iq2000@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB119_5
	b .LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	lis %r3, .L__profc___mulsi3_iq2000@ha
	la %r4, .L__profc___mulsi3_iq2000@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lbz %r3, 24(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB119_4
	b .LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	lis %r3, .L__profc___mulsi3_iq2000@ha
	la %r4, .L__profc___mulsi3_iq2000@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r4, 20(%r31)
	lwz %r3, 16(%r31)
	add %r3, %r3, %r4
	stw %r3, 16(%r31)
	b .LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 20(%r31)
	slwi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB119_1
.LBB119_5:
	lwz %r3, 16(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-.Lfunc_begin119
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
.Lfunc_begin120:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc___mulsi3_lm32@ha
	lwzu %r3, .L__profc___mulsi3_lm32@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB120_2
	b .LBB120_1
.LBB120_1:
	lis %r3, .L__profc___mulsi3_lm32@ha
	la %r4, .L__profc___mulsi3_lm32@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB120_8
.LBB120_2:
	b .LBB120_3
.LBB120_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB120_7
	b .LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_3 Depth=1
	lis %r3, .L__profc___mulsi3_lm32@ha
	la %r4, .L__profc___mulsi3_lm32@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lbz %r3, 16(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB120_6
	b .LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_3 Depth=1
	lis %r3, .L__profc___mulsi3_lm32@ha
	la %r4, .L__profc___mulsi3_lm32@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r4, 20(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	b .LBB120_6
.LBB120_6:                              #   in Loop: Header=BB120_3 Depth=1
	lwz %r3, 20(%r31)
	slwi %r3, %r3, 1
	stw %r3, 20(%r31)
	lwz %r3, 16(%r31)
	srwi %r3, %r3, 1
	stw %r3, 16(%r31)
	b .LBB120_3
.LBB120_7:
	lwz %r3, 12(%r31)
	stw %r3, 24(%r31)
	b .LBB120_8
.LBB120_8:
	lwz %r3, 24(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-.Lfunc_begin120
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
.Lfunc_begin121:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 36(%r31)
	stw %r4, 32(%r31)
	stw %r5, 28(%r31)
	lis %r4, .L__profc___udivmodsi4@ha
	lwzu %r3, .L__profc___udivmodsi4@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 1
	stw %r3, 24(%r31)
	li %r3, 0
	stw %r3, 20(%r31)
	b .LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	lwz %r5, 36(%r31)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bge %cr0, .LBB121_6
	b .LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	lis %r3, .L__profc___udivmodsi4@ha
	la %r4, .L__profc___udivmodsi4@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r4, 24(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB121_6
	b .LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	lis %r3, .L__profc___udivmodsi4@ha
	la %r4, .L__profc___udivmodsi4@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	b .LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	lis %r3, .L__profc___udivmodsi4@ha
	la %r4, .L__profc___udivmodsi4@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 32(%r31)
	rlwinm %r4, %r3, 0, 0, 0
	not	%r3, %r3
	srwi %r3, %r3, 31
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB121_6
	b .LBB121_5
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc___udivmodsi4@ha
	la %r5, .L__profc___udivmodsi4@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB121_6
.LBB121_6:                              #   in Loop: Header=BB121_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB121_8
	b .LBB121_7
.LBB121_7:                              #   in Loop: Header=BB121_1 Depth=1
	lis %r3, .L__profc___udivmodsi4@ha
	la %r4, .L__profc___udivmodsi4@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 32(%r31)
	slwi %r3, %r3, 1
	stw %r3, 32(%r31)
	lwz %r3, 24(%r31)
	slwi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB121_1
.LBB121_8:
	b .LBB121_9
.LBB121_9:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB121_13
	b .LBB121_10
.LBB121_10:                             #   in Loop: Header=BB121_9 Depth=1
	lis %r3, .L__profc___udivmodsi4@ha
	la %r4, .L__profc___udivmodsi4@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB121_12
	b .LBB121_11
.LBB121_11:                             #   in Loop: Header=BB121_9 Depth=1
	lis %r3, .L__profc___udivmodsi4@ha
	la %r4, .L__profc___udivmodsi4@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	sub	%r3, %r4, %r3
	stw %r3, 36(%r31)
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	or %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB121_12
.LBB121_12:                             #   in Loop: Header=BB121_9 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 1
	stw %r3, 32(%r31)
	b .LBB121_9
.LBB121_13:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB121_15
	b .LBB121_14
.LBB121_14:
	lis %r3, .L__profc___udivmodsi4@ha
	la %r4, .L__profc___udivmodsi4@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB121_16
.LBB121_15:
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB121_16
.LBB121_16:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-.Lfunc_begin121
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
.Lfunc_begin122:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r3, 20(%r31)
	stw %r4, 16(%r31)
	lis %r4, .L__profc___mspabi_cmpf@ha
	lwzu %r3, .L__profc___mspabi_cmpf@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	bl __ltsf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB122_2
	b .LBB122_1
.LBB122_1:
	lis %r3, .L__profc___mspabi_cmpf@ha
	la %r4, .L__profc___mspabi_cmpf@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, -1
	stw %r3, 24(%r31)
	b .LBB122_5
.LBB122_2:
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	bl __gtsf2
	cmpwi	%r3, 1
	blt	%cr0, .LBB122_4
	b .LBB122_3
.LBB122_3:
	lis %r3, .L__profc___mspabi_cmpf@ha
	la %r4, .L__profc___mspabi_cmpf@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 1
	stw %r3, 24(%r31)
	b .LBB122_5
.LBB122_4:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB122_5
.LBB122_5:
	lwz %r3, 24(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-.Lfunc_begin122
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
.Lfunc_begin123:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	stw %r6, 12(%r31)
	stw %r5, 8(%r31)
	lis %r4, .L__profc___mspabi_cmpd@ha
	lwzu %r3, .L__profc___mspabi_cmpd@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	lwz %r5, 8(%r31)
	lwz %r6, 12(%r31)
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB123_2
	b .LBB123_1
.LBB123_1:
	lis %r3, .L__profc___mspabi_cmpd@ha
	la %r4, .L__profc___mspabi_cmpd@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, -1
	stw %r3, 24(%r31)
	b .LBB123_5
.LBB123_2:
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	lwz %r5, 8(%r31)
	lwz %r6, 12(%r31)
	bl __gtdf2
	cmpwi	%r3, 1
	blt	%cr0, .LBB123_4
	b .LBB123_3
.LBB123_3:
	lis %r3, .L__profc___mspabi_cmpd@ha
	la %r4, .L__profc___mspabi_cmpd@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 1
	stw %r3, 24(%r31)
	b .LBB123_5
.LBB123_4:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB123_5
.LBB123_5:
	lwz %r3, 24(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-.Lfunc_begin123
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
.Lfunc_begin124:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___mspabi_mpysll@ha
	lwzu %r3, .L__profc___mspabi_mpysll@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 24(%r31)
	lwz %r5, 20(%r31)
	mullw %r3, %r4, %r5
	mulhw %r4, %r4, %r5
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-.Lfunc_begin124
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
.Lfunc_begin125:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___mspabi_mpyull@ha
	lwzu %r3, .L__profc___mspabi_mpyull@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 24(%r31)
	lwz %r5, 20(%r31)
	mullw %r3, %r4, %r5
	mulhwu %r4, %r4, %r5
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-.Lfunc_begin125
	.cfi_endproc
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
.Lfunc_begin126:
	.cfi_startproc
# %bb.0:
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 56(%r31)
	stw %r4, 52(%r31)
	lis %r4, .L__profc___mulhi3@ha
	lwzu %r3, .L__profc___mulhi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 44(%r31)
	stw %r3, 40(%r31)
	lwz %r3, 52(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB126_2
	b .LBB126_1
.LBB126_1:
	lis %r3, .L__profc___mulhi3@ha
	la %r4, .L__profc___mulhi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 52(%r31)
	neg %r3, %r3
	stw %r3, 52(%r31)
	li %r3, 1
	stw %r3, 44(%r31)
	b .LBB126_2
.LBB126_2:
	li %r3, 0
	stb %r3, 51(%r31)
	b .LBB126_3
.LBB126_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, 52(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB126_8
	b .LBB126_4
.LBB126_4:                              #   in Loop: Header=BB126_3 Depth=1
	lis %r3, .L__profc___mulhi3@ha
	la %r4, .L__profc___mulhi3@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lbz %r3, 51(%r31)
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	cmplwi	%r3, 32
	li %r3, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB126_6
# %bb.5:                                #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	lwz %r4, 24(%r31)                       # 4-byte Folded Reload
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 31
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB126_8
	b .LBB126_7
.LBB126_7:                              #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc___mulhi3@ha
	la %r5, .L__profc___mulhi3@l(%r4)
	lwz %r4, 32(%r5)
	lwz %r6, 36(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 36(%r5)
	stw %r4, 32(%r5)
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	b .LBB126_8
.LBB126_8:                              #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB126_13
	b .LBB126_9
.LBB126_9:                              #   in Loop: Header=BB126_3 Depth=1
	lis %r3, .L__profc___mulhi3@ha
	la %r4, .L__profc___mulhi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lbz %r3, 52(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB126_11
	b .LBB126_10
.LBB126_10:                             #   in Loop: Header=BB126_3 Depth=1
	lis %r3, .L__profc___mulhi3@ha
	la %r4, .L__profc___mulhi3@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	lwz %r4, 56(%r31)
	lwz %r3, 40(%r31)
	add %r3, %r3, %r4
	stw %r3, 40(%r31)
	b .LBB126_11
.LBB126_11:                             #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 56(%r31)
	slwi %r3, %r3, 1
	stw %r3, 56(%r31)
	lwz %r3, 52(%r31)
	srawi %r3, %r3, 1
	stw %r3, 52(%r31)
	b .LBB126_12
.LBB126_12:                             #   in Loop: Header=BB126_3 Depth=1
	lbz %r3, 51(%r31)
	addi %r3, %r3, 1
	stb %r3, 51(%r31)
	b .LBB126_3
.LBB126_13:
	lwz %r3, 44(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB126_15
	b .LBB126_14
.LBB126_14:
	lis %r3, .L__profc___mulhi3@ha
	la %r4, .L__profc___mulhi3@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 40(%r31)
	neg %r3, %r3
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB126_16
.LBB126_15:
	lwz %r3, 40(%r31)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB126_16
.LBB126_16:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	blr
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-.Lfunc_begin126
	.cfi_endproc
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
.Lfunc_begin127:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___divsi3@ha
	lwzu %r3, .L__profc___divsi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB127_2
	b .LBB127_1
.LBB127_1:
	lis %r3, .L__profc___divsi3@ha
	la %r4, .L__profc___divsi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 24(%r31)
	neg %r3, %r3
	stw %r3, 24(%r31)
	lwz %r3, 16(%r31)
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 16(%r31)
	b .LBB127_2
.LBB127_2:
	lwz %r3, 20(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB127_4
	b .LBB127_3
.LBB127_3:
	lis %r3, .L__profc___divsi3@ha
	la %r4, .L__profc___divsi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 20(%r31)
	neg %r3, %r3
	stw %r3, 20(%r31)
	lwz %r3, 16(%r31)
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 16(%r31)
	b .LBB127_4
.LBB127_4:
	lwz %r3, 24(%r31)
	lwz %r4, 20(%r31)
	lis %r5, __udivmodsi4@ha
	la %r6, __udivmodsi4@l(%r5)
	li %r5, 0
	mtctr %r6
	bctrl
	stw %r3, 12(%r31)
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB127_6
	b .LBB127_5
.LBB127_5:
	lis %r3, .L__profc___divsi3@ha
	la %r4, .L__profc___divsi3@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 12(%r31)
	neg %r3, %r3
	stw %r3, 12(%r31)
	b .LBB127_6
.LBB127_6:
	lwz %r3, 12(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-.Lfunc_begin127
	.cfi_endproc
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
.Lfunc_begin128:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___modsi3@ha
	lwzu %r3, .L__profc___modsi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB128_2
	b .LBB128_1
.LBB128_1:
	lis %r3, .L__profc___modsi3@ha
	la %r4, .L__profc___modsi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 24(%r31)
	neg %r3, %r3
	stw %r3, 24(%r31)
	li %r3, 1
	stw %r3, 16(%r31)
	b .LBB128_2
.LBB128_2:
	lwz %r3, 20(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB128_4
	b .LBB128_3
.LBB128_3:
	lis %r3, .L__profc___modsi3@ha
	la %r4, .L__profc___modsi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 20(%r31)
	neg %r3, %r3
	stw %r3, 20(%r31)
	b .LBB128_4
.LBB128_4:
	lwz %r3, 24(%r31)
	lwz %r4, 20(%r31)
	lis %r5, __udivmodsi4@ha
	la %r6, __udivmodsi4@l(%r5)
	li %r5, 1
	mtctr %r6
	bctrl
	stw %r3, 12(%r31)
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB128_6
	b .LBB128_5
.LBB128_5:
	lis %r3, .L__profc___modsi3@ha
	la %r4, .L__profc___modsi3@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	lwz %r3, 12(%r31)
	neg %r3, %r3
	stw %r3, 12(%r31)
	b .LBB128_6
.LBB128_6:
	lwz %r3, 12(%r31)
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-.Lfunc_begin128
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
.Lfunc_begin129:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	sth %r3, 40(%r31)
	sth %r4, 38(%r31)
	stw %r5, 32(%r31)
	lis %r4, .L__profc___udivmodhi4@ha
	lwzu %r3, .L__profc___udivmodhi4@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 1
	sth %r3, 30(%r31)
	li %r3, 0
	sth %r3, 28(%r31)
	b .LBB129_1
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	lhz %r4, 38(%r31)
	lhz %r5, 40(%r31)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	bge %cr0, .LBB129_6
	b .LBB129_2
.LBB129_2:                              #   in Loop: Header=BB129_1 Depth=1
	lis %r3, .L__profc___udivmodhi4@ha
	la %r4, .L__profc___udivmodhi4@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lhz %r4, 30(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB129_6
	b .LBB129_3
.LBB129_3:                              #   in Loop: Header=BB129_1 Depth=1
	lis %r3, .L__profc___udivmodhi4@ha
	la %r4, .L__profc___udivmodhi4@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	b .LBB129_4
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
	lis %r3, .L__profc___udivmodhi4@ha
	la %r4, .L__profc___udivmodhi4@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lhz %r3, 38(%r31)
	rlwinm %r4, %r3, 0, 16, 16
	srwi %r3, %r3, 15
	xori %r3, %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB129_6
	b .LBB129_5
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc___udivmodhi4@ha
	la %r5, .L__profc___udivmodhi4@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB129_6
.LBB129_6:                              #   in Loop: Header=BB129_1 Depth=1
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB129_8
	b .LBB129_7
.LBB129_7:                              #   in Loop: Header=BB129_1 Depth=1
	lis %r3, .L__profc___udivmodhi4@ha
	la %r4, .L__profc___udivmodhi4@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lhz %r3, 38(%r31)
	slwi %r3, %r3, 1
	sth %r3, 38(%r31)
	lhz %r3, 30(%r31)
	slwi %r3, %r3, 1
	sth %r3, 30(%r31)
	b .LBB129_1
.LBB129_8:
	b .LBB129_9
.LBB129_9:                              # =>This Inner Loop Header: Depth=1
	lhz %r3, 30(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB129_13
	b .LBB129_10
.LBB129_10:                             #   in Loop: Header=BB129_9 Depth=1
	lis %r3, .L__profc___udivmodhi4@ha
	la %r4, .L__profc___udivmodhi4@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lhz %r3, 40(%r31)
	lhz %r4, 38(%r31)
	cmpw	%r3, %r4
	blt	%cr0, .LBB129_12
	b .LBB129_11
.LBB129_11:                             #   in Loop: Header=BB129_9 Depth=1
	lis %r3, .L__profc___udivmodhi4@ha
	la %r4, .L__profc___udivmodhi4@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	lhz %r3, 38(%r31)
	lhz %r4, 40(%r31)
	sub	%r3, %r4, %r3
	sth %r3, 40(%r31)
	lhz %r4, 30(%r31)
	lhz %r3, 28(%r31)
	or %r3, %r3, %r4
	sth %r3, 28(%r31)
	b .LBB129_12
.LBB129_12:                             #   in Loop: Header=BB129_9 Depth=1
	lhz %r3, 30(%r31)
	srwi %r3, %r3, 1
	sth %r3, 30(%r31)
	lhz %r3, 38(%r31)
	srwi %r3, %r3, 1
	sth %r3, 38(%r31)
	b .LBB129_9
.LBB129_13:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB129_15
	b .LBB129_14
.LBB129_14:
	lis %r3, .L__profc___udivmodhi4@ha
	la %r4, .L__profc___udivmodhi4@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	lhz %r3, 40(%r31)
	sth %r3, 42(%r31)
	b .LBB129_16
.LBB129_15:
	lhz %r3, 28(%r31)
	sth %r3, 42(%r31)
	b .LBB129_16
.LBB129_16:
	lhz %r3, 42(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-.Lfunc_begin129
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
.Lfunc_begin130:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 36(%r31)
	stw %r4, 32(%r31)
	stw %r5, 28(%r31)
	lis %r4, .L__profc___udivmodsi4_libgcc@ha
	lwzu %r3, .L__profc___udivmodsi4_libgcc@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 1
	stw %r3, 24(%r31)
	li %r3, 0
	stw %r3, 20(%r31)
	b .LBB130_1
.LBB130_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	lwz %r5, 36(%r31)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bge %cr0, .LBB130_6
	b .LBB130_2
.LBB130_2:                              #   in Loop: Header=BB130_1 Depth=1
	lis %r3, .L__profc___udivmodsi4_libgcc@ha
	la %r4, .L__profc___udivmodsi4_libgcc@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r4, 24(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB130_6
	b .LBB130_3
.LBB130_3:                              #   in Loop: Header=BB130_1 Depth=1
	lis %r3, .L__profc___udivmodsi4_libgcc@ha
	la %r4, .L__profc___udivmodsi4_libgcc@l(%r3)
	lwz %r3, 40(%r4)
	lwz %r5, 44(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 44(%r4)
	stw %r3, 40(%r4)
	b .LBB130_4
.LBB130_4:                              #   in Loop: Header=BB130_1 Depth=1
	lis %r3, .L__profc___udivmodsi4_libgcc@ha
	la %r4, .L__profc___udivmodsi4_libgcc@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 32(%r31)
	rlwinm %r4, %r3, 0, 0, 0
	not	%r3, %r3
	srwi %r3, %r3, 31
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB130_6
	b .LBB130_5
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	lis %r4, .L__profc___udivmodsi4_libgcc@ha
	la %r5, .L__profc___udivmodsi4_libgcc@l(%r4)
	lwz %r4, 24(%r5)
	lwz %r6, 28(%r5)
	addic %r4, %r4, 1
	addze %r6, %r6
	stw %r6, 28(%r5)
	stw %r4, 24(%r5)
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB130_6
.LBB130_6:                              #   in Loop: Header=BB130_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB130_8
	b .LBB130_7
.LBB130_7:                              #   in Loop: Header=BB130_1 Depth=1
	lis %r3, .L__profc___udivmodsi4_libgcc@ha
	la %r4, .L__profc___udivmodsi4_libgcc@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 32(%r31)
	slwi %r3, %r3, 1
	stw %r3, 32(%r31)
	lwz %r3, 24(%r31)
	slwi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB130_1
.LBB130_8:
	b .LBB130_9
.LBB130_9:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB130_13
	b .LBB130_10
.LBB130_10:                             #   in Loop: Header=BB130_9 Depth=1
	lis %r3, .L__profc___udivmodsi4_libgcc@ha
	la %r4, .L__profc___udivmodsi4_libgcc@l(%r3)
	lwz %r3, 48(%r4)
	lwz %r5, 52(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 52(%r4)
	stw %r3, 48(%r4)
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB130_12
	b .LBB130_11
.LBB130_11:                             #   in Loop: Header=BB130_9 Depth=1
	lis %r3, .L__profc___udivmodsi4_libgcc@ha
	la %r4, .L__profc___udivmodsi4_libgcc@l(%r3)
	lwz %r3, 56(%r4)
	lwz %r5, 60(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 60(%r4)
	stw %r3, 56(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	sub	%r3, %r4, %r3
	stw %r3, 36(%r31)
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	or %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB130_12
.LBB130_12:                             #   in Loop: Header=BB130_9 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 1
	stw %r3, 32(%r31)
	b .LBB130_9
.LBB130_13:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB130_15
	b .LBB130_14
.LBB130_14:
	lis %r3, .L__profc___udivmodsi4_libgcc@ha
	la %r4, .L__profc___udivmodsi4_libgcc@l(%r3)
	lwz %r3, 64(%r4)
	lwz %r5, 68(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 68(%r4)
	stw %r3, 64(%r4)
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB130_16
.LBB130_15:
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB130_16
.LBB130_16:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-.Lfunc_begin130
	.cfi_endproc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
.Lfunc_begin131:
	.cfi_startproc
# %bb.0:
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 44(%r31)
	stw %r3, 40(%r31)
	stw %r5, 36(%r31)
	lis %r4, .L__profc___ashldi3@ha
	lwzu %r3, .L__profc___ashldi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 32
	stw %r3, 32(%r31)
	lwz %r3, 40(%r31)
	lwz %r4, 44(%r31)
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lbz %r3, 36(%r31)
	rlwinm %r3, %r3, 0, 26, 26
	cmplwi	%r3, 0
	beq	%cr0, .LBB131_2
	b .LBB131_1
.LBB131_1:
	lis %r3, .L__profc___ashldi3@ha
	la %r4, .L__profc___ashldi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	lwz %r4, 36(%r31)
	addi %r4, %r4, -32
	slw %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB131_5
.LBB131_2:
	lwz %r3, 36(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB131_4
	b .LBB131_3
.LBB131_3:
	lis %r3, .L__profc___ashldi3@ha
	la %r4, .L__profc___ashldi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 44(%r31)
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	b .LBB131_6
.LBB131_4:
	lwz %r3, 24(%r31)
	lwz %r4, 36(%r31)
	slw %r3, %r3, %r4
	stw %r3, 16(%r31)
	lwz %r3, 28(%r31)
	lwz %r5, 36(%r31)
	lwz %r4, 24(%r31)
	clrlwi	%r5, %r5, 27
	slw %r3, %r3, %r5
	subfic %r5, %r5, 32
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB131_5
.LBB131_5:
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	b .LBB131_6
.LBB131_6:
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	blr
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-.Lfunc_begin131
	.cfi_endproc
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
.Lfunc_begin132:
	.cfi_startproc
# %bb.0:
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 44(%r31)
	stw %r3, 40(%r31)
	stw %r5, 36(%r31)
	lis %r4, .L__profc___ashrdi3@ha
	lwzu %r3, .L__profc___ashrdi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 32
	stw %r3, 32(%r31)
	lwz %r3, 40(%r31)
	lwz %r4, 44(%r31)
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lbz %r3, 36(%r31)
	rlwinm %r3, %r3, 0, 26, 26
	cmplwi	%r3, 0
	beq	%cr0, .LBB132_2
	b .LBB132_1
.LBB132_1:
	lis %r3, .L__profc___ashrdi3@ha
	la %r4, .L__profc___ashrdi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lwz %r3, 28(%r31)
	srawi %r3, %r3, 31
	stw %r3, 20(%r31)
	lwz %r3, 28(%r31)
	lwz %r4, 36(%r31)
	addi %r4, %r4, -32
	sraw %r3, %r3, %r4
	stw %r3, 16(%r31)
	b .LBB132_5
.LBB132_2:
	lwz %r3, 36(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB132_4
	b .LBB132_3
.LBB132_3:
	lis %r3, .L__profc___ashrdi3@ha
	la %r4, .L__profc___ashrdi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 44(%r31)
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	b .LBB132_6
.LBB132_4:
	lwz %r3, 28(%r31)
	lwz %r4, 36(%r31)
	sraw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 28(%r31)
	lwz %r5, 36(%r31)
	lwz %r4, 24(%r31)
	clrlwi	%r5, %r5, 27
	srw %r4, %r4, %r5
	subfic %r5, %r5, 32
	slw %r3, %r3, %r5
	or %r3, %r3, %r4
	stw %r3, 16(%r31)
	b .LBB132_5
.LBB132_5:
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	b .LBB132_6
.LBB132_6:
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	blr
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-.Lfunc_begin132
	.cfi_endproc
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
.Lfunc_begin133:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lis %r4, .L__profc___bswapdi2@ha
	lwzu %r3, .L__profc___bswapdi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r5, 16(%r31)
	lwz %r4, 20(%r31)
	rotlwi	%r3, %r4, 8
	rlwimi %r3, %r4, 24, 16, 23
	rlwimi %r3, %r4, 24, 0, 7
	rotlwi	%r4, %r5, 8
	rlwimi %r4, %r5, 24, 16, 23
	rlwimi %r4, %r5, 24, 0, 7
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-.Lfunc_begin133
	.cfi_endproc
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
.Lfunc_begin134:
	.cfi_startproc
# %bb.0:
	stwu %r1, -16(%r1)
	stw %r31, 12(%r1)
	.cfi_def_cfa_offset 16
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 8(%r31)
	lis %r4, .L__profc___bswapsi2@ha
	lwzu %r3, .L__profc___bswapsi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 8(%r31)
	rotlwi	%r3, %r4, 8
	rlwimi %r3, %r4, 24, 16, 23
	rlwimi %r3, %r4, 24, 0, 7
	lwz %r31, 12(%r1)
	addi %r1, %r1, 16
	blr
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-.Lfunc_begin134
	.cfi_endproc
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
.Lfunc_begin135:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc___clzsi2@ha
	lwzu %r3, .L__profc___clzsi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	lhz %r3, 22(%r31)
	slwi %r3, %r3, 16
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 31, 27, 27
	stw %r3, 16(%r31)
	lwz %r3, 16(%r31)
	subfic %r4, %r3, 16
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 16(%r31)
	stw %r3, 12(%r31)
	lbz %r3, 21(%r31)
	slwi %r3, %r3, 8
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 30, 28, 28
	stw %r3, 16(%r31)
	lwz %r3, 16(%r31)
	subfic %r4, %r3, 8
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	rlwinm %r3, %r3, 0, 24, 27
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 29, 29, 29
	stw %r3, 16(%r31)
	lwz %r3, 16(%r31)
	subfic %r4, %r3, 4
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	rlwinm %r3, %r3, 0, 28, 29
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 28, 30, 30
	stw %r3, 16(%r31)
	lwz %r3, 16(%r31)
	subfic %r4, %r3, 2
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 12(%r31)
	lwz %r5, 20(%r31)
	subfic %r4, %r5, 2
	rlwinm %r5, %r5, 31, 31, 31
	xori %r5, %r5, 1
	neg %r5, %r5
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-.Lfunc_begin135
	.cfi_endproc
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
.Lfunc_begin136:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	stw %r6, 28(%r31)
	stw %r5, 24(%r31)
	lis %r4, .L__profc___cmpdi2@ha
	lwzu %r3, .L__profc___cmpdi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	stw %r4, 12(%r31)
	stw %r3, 8(%r31)
	lwz %r3, 20(%r31)
	lwz %r4, 12(%r31)
	cmpw	%r3, %r4
	bge %cr0, .LBB136_2
	b .LBB136_1
.LBB136_1:
	lis %r3, .L__profc___cmpdi2@ha
	la %r4, .L__profc___cmpdi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB136_9
.LBB136_2:
	lwz %r3, 20(%r31)
	lwz %r4, 12(%r31)
	cmpw	%r3, %r4
	ble %cr0, .LBB136_4
	b .LBB136_3
.LBB136_3:
	lis %r3, .L__profc___cmpdi2@ha
	la %r4, .L__profc___cmpdi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 2
	stw %r3, 40(%r31)
	b .LBB136_9
.LBB136_4:
	lwz %r3, 16(%r31)
	lwz %r4, 8(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB136_6
	b .LBB136_5
.LBB136_5:
	lis %r3, .L__profc___cmpdi2@ha
	la %r4, .L__profc___cmpdi2@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB136_9
.LBB136_6:
	lwz %r3, 16(%r31)
	lwz %r4, 8(%r31)
	cmplw	%r3, %r4
	ble %cr0, .LBB136_8
	b .LBB136_7
.LBB136_7:
	lis %r3, .L__profc___cmpdi2@ha
	la %r4, .L__profc___cmpdi2@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	li %r3, 2
	stw %r3, 40(%r31)
	b .LBB136_9
.LBB136_8:
	li %r3, 1
	stw %r3, 40(%r31)
	b .LBB136_9
.LBB136_9:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-.Lfunc_begin136
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
.Lfunc_begin137:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	stw %r6, 12(%r31)
	stw %r5, 8(%r31)
	lis %r4, .L__profc___aeabi_lcmp@ha
	lwzu %r3, .L__profc___aeabi_lcmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 20(%r31)
	lwz %r3, 16(%r31)
	lwz %r6, 12(%r31)
	lwz %r5, 8(%r31)
	lis %r7, __cmpdi2@ha
	la %r7, __cmpdi2@l(%r7)
	mtctr %r7
	bctrl
	addi %r3, %r3, -1
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-.Lfunc_begin137
	.cfi_endproc
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
.Lfunc_begin138:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc___ctzsi2@ha
	lwzu %r3, .L__profc___ctzsi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	lhz %r3, 20(%r31)
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 31, 27, 27
	stw %r3, 16(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 16(%r31)
	stw %r3, 12(%r31)
	lbz %r3, 20(%r31)
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 30, 28, 28
	stw %r3, 16(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 28
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 29, 29, 29
	stw %r3, 16(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 30
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 28, 30, 30
	stw %r3, 16(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 20(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 30
	stw %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 12(%r31)
	lwz %r5, 20(%r31)
	srwi %r4, %r5, 1
	subfic %r4, %r4, 2
	clrlwi	%r5, %r5, 31
	addi %r5, %r5, -1
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-.Lfunc_begin138
	.cfi_endproc
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
.Lfunc_begin139:
	.cfi_startproc
# %bb.0:
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 44(%r31)
	stw %r3, 40(%r31)
	stw %r5, 36(%r31)
	lis %r4, .L__profc___lshrdi3@ha
	lwzu %r3, .L__profc___lshrdi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 32
	stw %r3, 32(%r31)
	lwz %r3, 40(%r31)
	lwz %r4, 44(%r31)
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lbz %r3, 36(%r31)
	rlwinm %r3, %r3, 0, 26, 26
	cmplwi	%r3, 0
	beq	%cr0, .LBB139_2
	b .LBB139_1
.LBB139_1:
	lis %r3, .L__profc___lshrdi3@ha
	la %r4, .L__profc___lshrdi3@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 20(%r31)
	lwz %r3, 28(%r31)
	lwz %r4, 36(%r31)
	addi %r4, %r4, -32
	srw %r3, %r3, %r4
	stw %r3, 16(%r31)
	b .LBB139_5
.LBB139_2:
	lwz %r3, 36(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB139_4
	b .LBB139_3
.LBB139_3:
	lis %r3, .L__profc___lshrdi3@ha
	la %r4, .L__profc___lshrdi3@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r3, 40(%r31)
	lwz %r4, 44(%r31)
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	b .LBB139_6
.LBB139_4:
	lwz %r3, 28(%r31)
	lwz %r4, 36(%r31)
	srw %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 28(%r31)
	lwz %r5, 36(%r31)
	lwz %r4, 24(%r31)
	clrlwi	%r5, %r5, 27
	srw %r4, %r4, %r5
	subfic %r5, %r5, 32
	slw %r3, %r3, %r5
	or %r3, %r3, %r4
	stw %r3, 16(%r31)
	b .LBB139_5
.LBB139_5:
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	b .LBB139_6
.LBB139_6:
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	blr
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-.Lfunc_begin139
	.cfi_endproc
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
.Lfunc_begin140:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	lis %r4, .L__profc___muldsi3@ha
	lwzu %r3, .L__profc___muldsi3@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	li %r3, 16
	stw %r3, 20(%r31)
	lis %r3, 0
	ori %r3, %r3, 65535
	stw %r3, 16(%r31)
	lhz %r3, 40(%r31)
	lhz %r4, 36(%r31)
	mullw %r3, %r3, %r4
	stw %r3, 24(%r31)
	lhz %r3, 26(%r31)
	stw %r3, 12(%r31)
	lhz %r3, 24(%r31)
	stw %r3, 24(%r31)
	lhz %r3, 42(%r31)
	lhz %r4, 36(%r31)
	mullw %r4, %r3, %r4
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 12(%r31)
	slwi %r4, %r3, 16
	lwz %r3, 24(%r31)
	add %r3, %r3, %r4
	stw %r3, 24(%r31)
	lhz %r3, 14(%r31)
	stw %r3, 28(%r31)
	lhz %r3, 26(%r31)
	stw %r3, 12(%r31)
	lhz %r3, 24(%r31)
	stw %r3, 24(%r31)
	lhz %r3, 38(%r31)
	lhz %r4, 40(%r31)
	mullw %r4, %r3, %r4
	lwz %r3, 12(%r31)
	add %r3, %r3, %r4
	stw %r3, 12(%r31)
	lwz %r3, 12(%r31)
	slwi %r4, %r3, 16
	lwz %r3, 24(%r31)
	add %r3, %r3, %r4
	stw %r3, 24(%r31)
	lhz %r4, 14(%r31)
	lwz %r3, 28(%r31)
	add %r3, %r3, %r4
	stw %r3, 28(%r31)
	lhz %r3, 42(%r31)
	lhz %r4, 38(%r31)
	mullw %r4, %r3, %r4
	lwz %r3, 28(%r31)
	add %r3, %r3, %r4
	stw %r3, 28(%r31)
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-.Lfunc_begin140
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
.Lfunc_begin141:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -64(%r1)
	stw %r31, 60(%r1)
	stw %r0, 68(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	stw %r6, 44(%r31)
	stw %r5, 40(%r31)
	lis %r4, .L__profc___muldi3_compiler_rt@ha
	lwzu %r3, .L__profc___muldi3_compiler_rt@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 48(%r31)
	lwz %r4, 52(%r31)
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lwz %r3, 40(%r31)
	lwz %r4, 44(%r31)
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	lwz %r4, 24(%r31)
	lis %r5, __muldsi3@ha
	la %r5, __muldsi3@l(%r5)
	mtctr %r5
	bctrl
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 36(%r31)
	lwz %r4, 24(%r31)
	mullw %r3, %r3, %r4
	lwz %r4, 32(%r31)
	lwz %r5, 28(%r31)
	mullw %r4, %r4, %r5
	add %r4, %r3, %r4
	lwz %r3, 20(%r31)
	add %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	lwz %r0, 68(%r1)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
	mtlr %r0
	blr
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-.Lfunc_begin141
	.cfi_endproc
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
.Lfunc_begin142:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lis %r4, .L__profc___negdi2@ha
	lwzu %r3, .L__profc___negdi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	subfic %r3, %r3, 0
	subfze %r4, %r4
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-.Lfunc_begin142
	.cfi_endproc
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
.Lfunc_begin143:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lis %r4, .L__profc___paritydi2@ha
	lwzu %r3, .L__profc___paritydi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	xor %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 16
	xor %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 8
	xor %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 4
	xor %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	clrlwi	%r4, %r3, 28
	li %r3, 27030
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-.Lfunc_begin143
	.cfi_endproc
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
.Lfunc_begin144:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc___paritysi2@ha
	lwzu %r3, .L__profc___paritysi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 16
	xor %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 8
	xor %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 4
	xor %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	clrlwi	%r4, %r3, 28
	li %r3, 27030
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-.Lfunc_begin144
	.cfi_endproc
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
.Lfunc_begin145:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lis %r4, .L__profc___popcountdi2@ha
	lwzu %r3, .L__profc___popcountdi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lwz %r5, 28(%r31)
	lwz %r6, 24(%r31)
	rotlwi	%r3, %r6, 31
	andis. %r4, %r3, 21845
	andi. %r3, %r3, 21845
	or %r3, %r3, %r4
	rotlwi	%r4, %r5, 31
	andis. %r7, %r4, 21845
	andi. %r4, %r4, 21845
	or %r4, %r4, %r7
	subc	%r3, %r6, %r3
	subfe %r4, %r4, %r5
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lwz %r6, 24(%r31)
	lwz %r5, 28(%r31)
	rotlwi	%r3, %r5, 30
	andis. %r4, %r3, 13107
	andi. %r3, %r3, 13107
	or %r4, %r3, %r4
	rotlwi	%r3, %r6, 30
	andis. %r7, %r3, 13107
	andi. %r3, %r3, 13107
	or %r3, %r3, %r7
	lis %r7, 13107
	ori %r7, %r7, 13107
	and %r5, %r5, %r7
	and %r6, %r6, %r7
	add %r3, %r3, %r6
	add %r4, %r4, %r5
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lwz %r4, 28(%r31)
	lwz %r3, 24(%r31)
	rotlwi	%r6, %r3, 28
	rlwimi %r6, %r4, 28, 0, 3
	srwi %r5, %r4, 4
	addc %r3, %r3, %r6
	adde %r4, %r4, %r5
	lis %r5, 3855
	ori %r5, %r5, 3855
	and %r3, %r3, %r5
	and %r4, %r4, %r5
	stw %r4, 28(%r31)
	stw %r3, 24(%r31)
	lwz %r4, 28(%r31)
	lwz %r3, 24(%r31)
	add %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 16
	add %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 8
	add %r3, %r3, %r4
	clrlwi	%r3, %r3, 25
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-.Lfunc_begin145
	.cfi_endproc
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
.Lfunc_begin146:
	.cfi_startproc
# %bb.0:
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lis %r4, .L__profc___popcountsi2@ha
	lwzu %r3, .L__profc___popcountsi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	lwz %r4, 20(%r31)
	rotlwi	%r3, %r4, 31
	andis. %r5, %r3, 21845
	andi. %r3, %r3, 21845
	or %r3, %r3, %r5
	sub	%r3, %r4, %r3
	stw %r3, 20(%r31)
	lwz %r4, 20(%r31)
	rotlwi	%r3, %r4, 30
	andis. %r5, %r3, 13107
	andi. %r3, %r3, 13107
	or %r3, %r3, %r5
	lis %r5, 13107
	ori %r5, %r5, 13107
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 4
	add %r3, %r3, %r4
	lis %r4, 3855
	ori %r4, %r4, 3855
	and %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 16
	add %r3, %r3, %r4
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	srwi %r4, %r3, 8
	add %r3, %r3, %r4
	clrlwi	%r3, %r3, 26
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	blr
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-.Lfunc_begin146
	.cfi_endproc
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
.Lfunc_begin147:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	stw %r5, 28(%r31)
	lis %r4, .L__profc___powidf2@ha
	lwzu %r3, .L__profc___powidf2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 28(%r31)
	srwi %r3, %r3, 31
	stw %r3, 24(%r31)
	lis %r3, 16368
	stw %r3, 20(%r31)
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB147_1
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	lis %r3, .L__profc___powidf2@ha
	la %r4, .L__profc___powidf2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lbz %r3, 28(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB147_3
	b .LBB147_2
.LBB147_2:                              #   in Loop: Header=BB147_1 Depth=1
	lis %r3, .L__profc___powidf2@ha
	la %r4, .L__profc___powidf2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r5, 32(%r31)
	lwz %r6, 36(%r31)
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	bl __muldf3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	b .LBB147_3
.LBB147_3:                              #   in Loop: Header=BB147_1 Depth=1
	lwz %r3, 28(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 28(%r31)
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB147_5
	b .LBB147_4
.LBB147_4:
	lis %r3, .L__profc___powidf2@ha
	la %r4, .L__profc___powidf2@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB147_6
.LBB147_5:                              #   in Loop: Header=BB147_1 Depth=1
	lwz %r5, 32(%r31)
	lwz %r6, 36(%r31)
	mr	%r3, %r5
	mr	%r4, %r6
	bl __muldf3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	b .LBB147_1
.LBB147_6:
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB147_8
	b .LBB147_7
.LBB147_7:
	lis %r3, .L__profc___powidf2@ha
	la %r4, .L__profc___powidf2@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r5, 16(%r31)
	lwz %r6, 20(%r31)
	li %r3, 0
	lis %r4, 16368
	bl __divdf3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	stw %r4, 12(%r31)                       # 4-byte Folded Spill
	b .LBB147_9
.LBB147_8:
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	stw %r4, 8(%r31)                        # 4-byte Folded Spill
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB147_9
.LBB147_9:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r4, 12(%r31)                       # 4-byte Folded Reload
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	mtlr %r0
	blr
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-.Lfunc_begin147
	.cfi_endproc
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
.Lfunc_begin148:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r3
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	lis %r4, .L__profc___powisf2@ha
	lwzu %r3, .L__profc___powisf2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 20(%r31)
	srwi %r3, %r3, 31
	stw %r3, 16(%r31)
	lis %r3, 16256
	stw %r3, 12(%r31)
	b .LBB148_1
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
	lis %r3, .L__profc___powisf2@ha
	la %r4, .L__profc___powisf2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	lbz %r3, 20(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB148_3
	b .LBB148_2
.LBB148_2:                              #   in Loop: Header=BB148_1 Depth=1
	lis %r3, .L__profc___powisf2@ha
	la %r4, .L__profc___powisf2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	lwz %r4, 24(%r31)
	lwz %r3, 12(%r31)
	bl __mulsf3
	stw %r3, 12(%r31)
	b .LBB148_3
.LBB148_3:                              #   in Loop: Header=BB148_1 Depth=1
	lwz %r3, 20(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB148_5
	b .LBB148_4
.LBB148_4:
	lis %r3, .L__profc___powisf2@ha
	la %r4, .L__profc___powisf2@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	b .LBB148_6
.LBB148_5:                              #   in Loop: Header=BB148_1 Depth=1
	lwz %r4, 24(%r31)
	mr	%r3, %r4
	bl __mulsf3
	stw %r3, 24(%r31)
	b .LBB148_1
.LBB148_6:
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB148_8
	b .LBB148_7
.LBB148_7:
	lis %r3, .L__profc___powisf2@ha
	la %r4, .L__profc___powisf2@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	lwz %r4, 12(%r31)
	lis %r3, 16256
	bl __divsf3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB148_9
.LBB148_8:
	lwz %r3, 12(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB148_9
.LBB148_9:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-.Lfunc_begin148
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
.Lfunc_begin149:
	.cfi_startproc
# %bb.0:
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	stw %r6, 28(%r31)
	stw %r5, 24(%r31)
	lis %r4, .L__profc___ucmpdi2@ha
	lwzu %r3, .L__profc___ucmpdi2@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	stw %r4, 12(%r31)
	stw %r3, 8(%r31)
	lwz %r3, 20(%r31)
	lwz %r4, 12(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB149_2
	b .LBB149_1
.LBB149_1:
	lis %r3, .L__profc___ucmpdi2@ha
	la %r4, .L__profc___ucmpdi2@l(%r3)
	lwz %r3, 8(%r4)
	lwz %r5, 12(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 12(%r4)
	stw %r3, 8(%r4)
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB149_9
.LBB149_2:
	lwz %r3, 20(%r31)
	lwz %r4, 12(%r31)
	cmplw	%r3, %r4
	ble %cr0, .LBB149_4
	b .LBB149_3
.LBB149_3:
	lis %r3, .L__profc___ucmpdi2@ha
	la %r4, .L__profc___ucmpdi2@l(%r3)
	lwz %r3, 16(%r4)
	lwz %r5, 20(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 20(%r4)
	stw %r3, 16(%r4)
	li %r3, 2
	stw %r3, 40(%r31)
	b .LBB149_9
.LBB149_4:
	lwz %r3, 16(%r31)
	lwz %r4, 8(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB149_6
	b .LBB149_5
.LBB149_5:
	lis %r3, .L__profc___ucmpdi2@ha
	la %r4, .L__profc___ucmpdi2@l(%r3)
	lwz %r3, 24(%r4)
	lwz %r5, 28(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 28(%r4)
	stw %r3, 24(%r4)
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB149_9
.LBB149_6:
	lwz %r3, 16(%r31)
	lwz %r4, 8(%r31)
	cmplw	%r3, %r4
	ble %cr0, .LBB149_8
	b .LBB149_7
.LBB149_7:
	lis %r3, .L__profc___ucmpdi2@ha
	la %r4, .L__profc___ucmpdi2@l(%r3)
	lwz %r3, 32(%r4)
	lwz %r5, 36(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 36(%r4)
	stw %r3, 32(%r4)
	li %r3, 2
	stw %r3, 40(%r31)
	b .LBB149_9
.LBB149_8:
	li %r3, 1
	stw %r3, 40(%r31)
	b .LBB149_9
.LBB149_9:
	lwz %r3, 40(%r31)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
	blr
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-.Lfunc_begin149
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
.Lfunc_begin150:
	.cfi_startproc
# %bb.0:
	mflr %r0
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r7 killed $r6
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
                                        # kill: def $r7 killed $r3
	stw %r4, 20(%r31)
	stw %r3, 16(%r31)
	stw %r6, 12(%r31)
	stw %r5, 8(%r31)
	lis %r4, .L__profc___aeabi_ulcmp@ha
	lwzu %r3, .L__profc___aeabi_ulcmp@l(%r4)
	lwz %r5, 4(%r4)
	addic %r3, %r3, 1
	addze %r5, %r5
	stw %r5, 4(%r4)
	stw %r3, 0(%r4)
	lwz %r4, 20(%r31)
	lwz %r3, 16(%r31)
	lwz %r6, 12(%r31)
	lwz %r5, 8(%r31)
	lis %r7, __ucmpdi2@ha
	la %r7, __ucmpdi2@l(%r7)
	mtctr %r7
	bctrl
	addi %r3, %r3, -1
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
	mtlr %r0
	blr
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-.Lfunc_begin150
	.cfi_endproc
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.lcomm	l64a.s,7
	.type	digits,@object                  # @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.lcomm	seed,8,8
	.hidden	__llvm_profile_runtime
	.type	.L__profc_memmove,@object       # @__profc_memmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profc_memmove:
	.space	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       # @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.long	3815148669                      # 0xfbc09422e3668c7d
	.long	4223702050
	.long	1334589160                      # 0xc7a1f0194f8c36e8
	.long	3349278745
	.long	.L__profc_memmove-.L__profd_memmove
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memmove, 48

	.type	.L__profc_memccpy,@object       # @__profc_memccpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profc_memccpy:
	.space	40
	.size	.L__profc_memccpy, 40

	.type	.L__profd_memccpy,@object       # @__profd_memccpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memccpy
	.p2align	3, 0x0
.L__profd_memccpy:
	.long	3842140814                      # 0xe9ec1dd5e5026a8e
	.long	3924565461
	.long	1246331992                      # 0x43a044a498458
	.long	276996
	.long	.L__profc_memccpy-.L__profd_memccpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memccpy, 48

	.type	.L__profc_memchr,@object        # @__profc_memchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profc_memchr:
	.space	40
	.size	.L__profc_memchr, 40

	.type	.L__profd_memchr,@object        # @__profd_memchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memchr
	.p2align	3, 0x0
.L__profd_memchr:
	.long	503472520                       # 0x4f3941a01e026188
	.long	1329152416
	.long	243340813                       # 0x10e81160d
	.long	1
	.long	.L__profc_memchr-.L__profd_memchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memchr, 48

	.type	.L__profc_memcmp,@object        # @__profc_memcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profc_memcmp:
	.space	40
	.size	.L__profc_memcmp, 40

	.type	.L__profd_memcmp,@object        # @__profd_memcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcmp
	.p2align	3, 0x0
.L__profd_memcmp:
	.long	3752101698                      # 0xbf0ee54adfa48742
	.long	3205424458
	.long	243078669                       # 0x10e7d160d
	.long	1
	.long	.L__profc_memcmp-.L__profd_memcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memcmp, 48

	.type	.L__profc_memcpy,@object        # @__profc_memcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profc_memcpy:
	.space	16
	.size	.L__profc_memcpy, 16

	.type	.L__profd_memcpy,@object        # @__profd_memcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_memcpy
	.p2align	3, 0x0
.L__profd_memcpy:
	.long	314430578                       # 0x3607cad612bdd472
	.long	906480342
	.long	17496                           # 0x4458
	.long	0
	.long	.L__profc_memcpy-.L__profd_memcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memcpy, 48

	.type	.L__profc_memrchr,@object       # @__profc_memrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profc_memrchr:
	.space	24
	.size	.L__profc_memrchr, 24

	.type	.L__profd_memrchr,@object       # @__profd_memrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_memrchr
	.p2align	3, 0x0
.L__profd_memrchr:
	.long	1963431520                      # 0xf863ecbf75079660
	.long	4167298239
	.long	3529577560                      # 0x8a7d2611458
	.long	2215
	.long	.L__profc_memrchr-.L__profd_memrchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memrchr, 48

	.type	.L__profc_memset,@object        # @__profc_memset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profc_memset:
	.space	16
	.size	.L__profc_memset, 16

	.type	.L__profd_memset,@object        # @__profd_memset
	.section	__llvm_prf_data,"awG",@progbits,__profc_memset
	.p2align	3, 0x0
.L__profd_memset:
	.long	116615793                       # 0xd9f3f85506f36a71
	.long	3656644693
	.long	17496                           # 0x4458
	.long	0
	.long	.L__profc_memset-.L__profd_memset
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memset, 48

	.type	.L__profc_stpcpy,@object        # @__profc_stpcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profc_stpcpy:
	.space	16
	.size	.L__profc_stpcpy, 16

	.type	.L__profd_stpcpy,@object        # @__profd_stpcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_stpcpy
	.p2align	3, 0x0
.L__profd_stpcpy:
	.long	2693264965                      # 0x3dd2bf47a087f645
	.long	1037221703
	.long	17496                           # 0x4458
	.long	0
	.long	.L__profc_stpcpy-.L__profd_stpcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_stpcpy, 48

	.type	.L__profc_strchrnul,@object     # @__profc_strchrnul
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profc_strchrnul:
	.space	32
	.size	.L__profc_strchrnul, 32

	.type	.L__profd_strchrnul,@object     # @__profd_strchrnul
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchrnul
	.p2align	3, 0x0
.L__profd_strchrnul:
	.long	3359708469                      # 0x45eedd8fc8411535
	.long	1173282191
	.long	70911064                        # 0x43a0458
	.long	0
	.long	.L__profc_strchrnul-.L__profd_strchrnul
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strchrnul, 48

	.type	.L__profc_strchr,@object        # @__profc_strchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profc_strchr:
	.space	24
	.size	.L__profc_strchr, 24

	.type	.L__profd_strchr,@object        # @__profd_strchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strchr
	.p2align	3, 0x0
.L__profd_strchr:
	.long	1273642115                      # 0xb14ab4664bea3c83
	.long	2974463078
	.long	3529577560                      # 0xca7d2611458
	.long	3239
	.long	.L__profc_strchr-.L__profd_strchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strchr, 48

	.type	.L__profc_strcmp,@object        # @__profc_strcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profc_strcmp:
	.space	32
	.size	.L__profc_strcmp, 32

	.type	.L__profd_strcmp,@object        # @__profd_strcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strcmp
	.p2align	3, 0x0
.L__profd_strcmp:
	.long	53592868                        # 0xe0f9b060331c324
	.long	235903750
	.long	70906968                        # 0x439f458
	.long	0
	.long	.L__profc_strcmp-.L__profd_strcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strcmp, 48

	.type	.L__profc_strlen,@object        # @__profc_strlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profc_strlen:
	.space	16
	.size	.L__profc_strlen, 16

	.type	.L__profd_strlen,@object        # @__profd_strlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strlen
	.p2align	3, 0x0
.L__profd_strlen:
	.long	44553075                        # 0x292647db02a7d373
	.long	690374619
	.long	17496                           # 0x4458
	.long	0
	.long	.L__profc_strlen-.L__profd_strlen
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strlen, 48

	.type	.L__profc_strncmp,@object       # @__profc_strncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profc_strncmp:
	.space	72
	.size	.L__profc_strncmp, 72

	.type	.L__profd_strncmp,@object       # @__profd_strncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncmp
	.p2align	3, 0x0
.L__profd_strncmp:
	.long	1018521786                      # 0xabebe6233cb568ba
	.long	2884363811
	.long	3409360719                      # 0x6405aa43cb36b74f
	.long	1678092867
	.long	.L__profc_strncmp-.L__profd_strncmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strncmp, 48

	.type	.L__profc_swab,@object          # @__profc_swab
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profc_swab:
	.space	16
	.size	.L__profc_swab, 16

	.type	.L__profd_swab,@object          # @__profd_swab
	.section	__llvm_prf_data,"awG",@progbits,__profc_swab
	.p2align	3, 0x0
.L__profd_swab:
	.long	63675239                        # 0xe984c77503cb9b67
	.long	3917793141
	.long	18193                           # 0x4711
	.long	0
	.long	.L__profc_swab-.L__profd_swab
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_swab, 48

	.type	.L__profc_isalpha,@object       # @__profc_isalpha
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profc_isalpha:
	.space	8
	.size	.L__profc_isalpha, 8

	.type	.L__profd_isalpha,@object       # @__profd_isalpha
	.section	__llvm_prf_data,"awG",@progbits,__profc_isalpha
	.p2align	3, 0x0
.L__profd_isalpha:
	.long	4268055388                      # 0xec27bc96fe655b5c
	.long	3962027158
	.long	1563                            # 0x61b
	.long	0
	.long	.L__profc_isalpha-.L__profd_isalpha
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isalpha, 48

	.type	.L__profc_isascii,@object       # @__profc_isascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profc_isascii:
	.space	8
	.size	.L__profc_isascii, 8

	.type	.L__profd_isascii,@object       # @__profd_isascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_isascii
	.p2align	3, 0x0
.L__profd_isascii:
	.long	3299371601                      # 0xbd7e8203c4a86a51
	.long	3179184643
	.long	1562                            # 0x61a
	.long	0
	.long	.L__profc_isascii-.L__profd_isascii
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isascii, 48

	.type	.L__profc_isblank,@object       # @__profc_isblank
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profc_isblank:
	.space	24
	.size	.L__profc_isblank, 24

	.type	.L__profd_isblank,@object       # @__profd_isblank
	.section	__llvm_prf_data,"awG",@progbits,__profc_isblank
	.p2align	3, 0x0
.L__profd_isblank:
	.long	2601843714                      # 0x223626e59b14fc02
	.long	573974245
	.long	6354911                         # 0x60f7df
	.long	0
	.long	.L__profc_isblank-.L__profd_isblank
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isblank, 48

	.type	.L__profc_iscntrl,@object       # @__profc_iscntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profc_iscntrl:
	.space	24
	.size	.L__profc_iscntrl, 24

	.type	.L__profd_iscntrl,@object       # @__profd_iscntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iscntrl
	.p2align	3, 0x0
.L__profd_iscntrl:
	.long	3367402719                      # 0x7b7b182cc8b67cdf
	.long	2071664684
	.long	6354655                         # 0x60f6df
	.long	0
	.long	.L__profc_iscntrl-.L__profd_iscntrl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iscntrl, 48

	.type	.L__profc_isdigit,@object       # @__profc_isdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profc_isdigit:
	.space	8
	.size	.L__profc_isdigit, 8

	.type	.L__profd_isdigit,@object       # @__profd_isdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_isdigit
	.p2align	3, 0x0
.L__profd_isdigit:
	.long	1824746341                      # 0x30599a7e6cc36b65
	.long	811178622
	.long	1563                            # 0x61b
	.long	0
	.long	.L__profc_isdigit-.L__profd_isdigit
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isdigit, 48

	.type	.L__profc_isgraph,@object       # @__profc_isgraph
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profc_isgraph:
	.space	8
	.size	.L__profc_isgraph, 8

	.type	.L__profd_isgraph,@object       # @__profd_isgraph
	.section	__llvm_prf_data,"awG",@progbits,__profc_isgraph
	.p2align	3, 0x0
.L__profd_isgraph:
	.long	2312090716                      # 0xfe3bff7489cfb45c
	.long	4265344884
	.long	1563                            # 0x61b
	.long	0
	.long	.L__profc_isgraph-.L__profd_isgraph
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isgraph, 48

	.type	.L__profc_islower,@object       # @__profc_islower
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profc_islower:
	.space	8
	.size	.L__profc_islower, 8

	.type	.L__profd_islower,@object       # @__profd_islower
	.section	__llvm_prf_data,"awG",@progbits,__profc_islower
	.p2align	3, 0x0
.L__profd_islower:
	.long	1158205281                      # 0x681c66894508cf61
	.long	1746691721
	.long	1563                            # 0x61b
	.long	0
	.long	.L__profc_islower-.L__profd_islower
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_islower, 48

	.type	.L__profc_isprint,@object       # @__profc_isprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profc_isprint:
	.space	8
	.size	.L__profc_isprint, 8

	.type	.L__profd_isprint,@object       # @__profd_isprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_isprint
	.p2align	3, 0x0
.L__profd_isprint:
	.long	341795750                       # 0x9b074d56145f63a6
	.long	2600947030
	.long	1563                            # 0x61b
	.long	0
	.long	.L__profc_isprint-.L__profd_isprint
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isprint, 48

	.type	.L__profc_isspace,@object       # @__profc_isspace
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profc_isspace:
	.space	24
	.size	.L__profc_isspace, 24

	.type	.L__profd_isspace,@object       # @__profd_isspace
	.section	__llvm_prf_data,"awG",@progbits,__profc_isspace
	.p2align	3, 0x0
.L__profd_isspace:
	.long	970391827                       # 0x7d59641d39d70113
	.long	2103010333
	.long	6354907                         # 0x60f7db
	.long	0
	.long	.L__profc_isspace-.L__profd_isspace
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isspace, 48

	.type	.L__profc_isupper,@object       # @__profc_isupper
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profc_isupper:
	.space	8
	.size	.L__profc_isupper, 8

	.type	.L__profd_isupper,@object       # @__profd_isupper
	.section	__llvm_prf_data,"awG",@progbits,__profc_isupper
	.p2align	3, 0x0
.L__profd_isupper:
	.long	3294401357                      # 0x39ef9079c45c934d
	.long	972001401
	.long	1563                            # 0x61b
	.long	0
	.long	.L__profc_isupper-.L__profd_isupper
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isupper, 48

	.type	.L__profc_iswcntrl,@object      # @__profc_iswcntrl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profc_iswcntrl:
	.space	56
	.size	.L__profc_iswcntrl, 56

	.type	.L__profd_iswcntrl,@object      # @__profd_iswcntrl
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswcntrl
	.p2align	3, 0x0
.L__profd_iswcntrl:
	.long	1638352188                      # 0x6125eb3d61a7453c
	.long	1629875005
	.long	3480073947                      # 0x60f3cf6db6db
	.long	24819
	.long	.L__profc_iswcntrl-.L__profd_iswcntrl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswcntrl, 48

	.type	.L__profc_iswdigit,@object      # @__profc_iswdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profc_iswdigit:
	.space	8
	.size	.L__profc_iswdigit, 8

	.type	.L__profd_iswdigit,@object      # @__profd_iswdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswdigit
	.p2align	3, 0x0
.L__profd_iswdigit:
	.long	425265880                       # 0x771f9e1919590ad8
	.long	1998560793
	.long	1563                            # 0x61b
	.long	0
	.long	.L__profc_iswdigit-.L__profd_iswdigit
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswdigit, 48

	.type	.L__profc_iswprint,@object      # @__profc_iswprint
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profc_iswprint:
	.space	80
	.size	.L__profc_iswprint, 80

	.type	.L__profd_iswprint,@object      # @__profd_iswprint
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswprint
	.p2align	3, 0x0
.L__profd_iswprint:
	.long	1234441494                      # 0xf603a04d49941516
	.long	4127432781
	.long	3816038944                      # 0xdc635031e3742220
	.long	3697496113
	.long	.L__profc_iswprint-.L__profd_iswprint
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	10                              # 0xa
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswprint, 48

	.type	.L__profc_iswxdigit,@object     # @__profc_iswxdigit
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profc_iswxdigit:
	.space	24
	.size	.L__profc_iswxdigit, 24

	.type	.L__profd_iswxdigit,@object     # @__profd_iswxdigit
	.section	__llvm_prf_data,"awG",@progbits,__profc_iswxdigit
	.p2align	3, 0x0
.L__profd_iswxdigit:
	.long	4035185714                      # 0x8aba28df0840c32
	.long	145465997
	.long	6354651                         # 0x60f6db
	.long	0
	.long	.L__profc_iswxdigit-.L__profd_iswxdigit
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswxdigit, 48

	.type	.L__profc_toascii,@object       # @__profc_toascii
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profc_toascii:
	.space	8
	.size	.L__profc_toascii, 8

	.type	.L__profd_toascii,@object       # @__profd_toascii
	.section	__llvm_prf_data,"awG",@progbits,__profc_toascii
	.p2align	3, 0x0
.L__profd_toascii:
	.long	2787418936                      # 0x3f1e4f66a624a338
	.long	1058951014
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_toascii-.L__profd_toascii
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_toascii, 48

	.type	.L__profc_fdim,@object          # @__profc_fdim
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profc_fdim:
	.space	32
	.size	.L__profc_fdim, 32

	.type	.L__profd_fdim,@object          # @__profd_fdim
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdim
	.p2align	3, 0x0
.L__profd_fdim:
	.long	42400059                        # 0xceca8a150286f93b
	.long	3469380117
	.long	698703480                       # 0x6646f46a29a55e78
	.long	1715926122
	.long	.L__profc_fdim-.L__profd_fdim
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fdim, 48

	.type	.L__profc_fdimf,@object         # @__profc_fdimf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profc_fdimf:
	.space	32
	.size	.L__profc_fdimf, 32

	.type	.L__profd_fdimf,@object         # @__profd_fdimf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fdimf
	.p2align	3, 0x0
.L__profd_fdimf:
	.long	1666032008                      # 0xea84dcc6634da188
	.long	3934575814
	.long	698703480                       # 0x6646f46a29a55e78
	.long	1715926122
	.long	.L__profc_fdimf-.L__profd_fdimf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fdimf, 48

	.type	.L__profc_fmax,@object          # @__profc_fmax
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profc_fmax:
	.space	48
	.size	.L__profc_fmax, 48

	.type	.L__profd_fmax,@object          # @__profd_fmax
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmax
	.p2align	3, 0x0
.L__profd_fmax:
	.long	996492642                       # 0xde5ced1d3b654562
	.long	3730631965
	.long	463263937                       # 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmax-.L__profd_fmax
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmax, 48

	.type	.L__profc_fmaxf,@object         # @__profc_fmaxf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profc_fmaxf:
	.space	48
	.size	.L__profc_fmaxf, 48

	.type	.L__profd_fmaxf,@object         # @__profd_fmaxf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxf
	.p2align	3, 0x0
.L__profd_fmaxf:
	.long	2386403996                      # 0xb8bfa0058e3da29c
	.long	3099566085
	.long	463263937                       # 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmaxf-.L__profd_fmaxf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxf, 48

	.type	.L__profc_fmaxl,@object         # @__profc_fmaxl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profc_fmaxl:
	.space	48
	.size	.L__profc_fmaxl, 48

	.type	.L__profd_fmaxl,@object         # @__profd_fmaxl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmaxl
	.p2align	3, 0x0
.L__profd_fmaxl:
	.long	3522938444                      # 0xd471861cd1fbc64c
	.long	3564209692
	.long	463263937                       # 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmaxl-.L__profd_fmaxl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxl, 48

	.type	.L__profc_fmin,@object          # @__profc_fmin
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profc_fmin:
	.space	48
	.size	.L__profc_fmin, 48

	.type	.L__profd_fmin,@object          # @__profd_fmin
	.section	__llvm_prf_data,"awG",@progbits,__profc_fmin
	.p2align	3, 0x0
.L__profd_fmin:
	.long	1265219729                      # 0xd65e3074b69b891
	.long	224781063
	.long	463263937                       # 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fmin-.L__profd_fmin
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmin, 48

	.type	.L__profc_fminf,@object         # @__profc_fminf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profc_fminf:
	.space	48
	.size	.L__profc_fminf, 48

	.type	.L__profd_fminf,@object         # @__profd_fminf
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminf
	.p2align	3, 0x0
.L__profd_fminf:
	.long	848075867                       # 0x6b0021b0328c9c5b
	.long	1795170736
	.long	463263937                       # 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fminf-.L__profd_fminf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fminf, 48

	.type	.L__profc_fminl,@object         # @__profc_fminl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profc_fminl:
	.space	48
	.size	.L__profc_fminl, 48

	.type	.L__profd_fminl,@object         # @__profd_fminl
	.section	__llvm_prf_data,"awG",@progbits,__profc_fminl
	.p2align	3, 0x0
.L__profd_fminl:
	.long	1476992898                      # 0x2285162058091f82
	.long	579147296
	.long	463263937                       # 0x373422b91b9cd8c1
	.long	926163641
	.long	.L__profc_fminl-.L__profd_fminl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fminl, 48

	.type	.L__profc_l64a,@object          # @__profc_l64a
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profc_l64a:
	.space	16
	.size	.L__profc_l64a, 16

	.type	.L__profd_l64a,@object          # @__profd_l64a
	.section	__llvm_prf_data,"awG",@progbits,__profc_l64a
	.p2align	3, 0x0
.L__profd_l64a:
	.long	3141852333                      # 0xaa87bd26bb44dcad
	.long	2861022502
	.long	17496                           # 0x4458
	.long	0
	.long	.L__profc_l64a-.L__profd_l64a
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_l64a, 48

	.type	.L__profc_srand,@object         # @__profc_srand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profc_srand:
	.space	8
	.size	.L__profc_srand, 8

	.type	.L__profd_srand,@object         # @__profd_srand
	.section	__llvm_prf_data,"awG",@progbits,__profc_srand
	.p2align	3, 0x0
.L__profd_srand:
	.long	1506720376                      # 0xe30e668959ceba78
	.long	3809371785
	.long	0                               # 0x0
	.long	0
	.long	.L__profc_srand-.L__profd_srand
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_srand, 48

	.type	.L__profc_rand,@object          # @__profc_rand
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profc_rand:
	.space	8
	.size	.L__profc_rand, 8

	.type	.L__profd_rand,@object          # @__profd_rand
	.section	__llvm_prf_data,"awG",@progbits,__profc_rand
	.p2align	3, 0x0
.L__profd_rand:
	.long	1355010356                      # 0x6401286350c3d134
	.long	1677797475
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rand-.L__profd_rand
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rand, 48

	.type	.L__profc_insque,@object        # @__profc_insque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profc_insque:
	.space	24
	.size	.L__profc_insque, 24

	.type	.L__profd_insque,@object        # @__profd_insque
	.section	__llvm_prf_data,"awG",@progbits,__profc_insque
	.p2align	3, 0x0
.L__profd_insque:
	.long	3171658647                      # 0xb97ef903bd0bab97
	.long	3112106243
	.long	2554635409                      # 0x29a49844a491
	.long	10660
	.long	.L__profc_insque-.L__profd_insque
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_insque, 48

	.type	.L__profc_remque,@object        # @__profc_remque
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profc_remque:
	.space	24
	.size	.L__profc_remque, 24

	.type	.L__profd_remque,@object        # @__profd_remque
	.section	__llvm_prf_data,"awG",@progbits,__profc_remque
	.p2align	3, 0x0
.L__profd_remque:
	.long	1424166850                      # 0x9be1f18d54e30fc2
	.long	2615275917
	.long	2453972113                      # 0x29244a491
	.long	2
	.long	.L__profc_remque-.L__profd_remque
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_remque, 48

	.type	.L__profc_lsearch,@object       # @__profc_lsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profc_lsearch:
	.space	24
	.size	.L__profc_lsearch, 24

	.type	.L__profd_lsearch,@object       # @__profd_lsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_lsearch
	.p2align	3, 0x0
.L__profd_lsearch:
	.long	4174077742                      # 0x9e68c5caf8cb5f2e
	.long	2657666506
	.long	3529577560                      # 0x46ca7d2611458
	.long	289959
	.long	.L__profc_lsearch-.L__profd_lsearch
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lsearch, 48

	.type	.L__profc_lfind,@object         # @__profc_lfind
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profc_lfind:
	.space	24
	.size	.L__profc_lfind, 24

	.type	.L__profd_lfind,@object         # @__profd_lfind
	.section	__llvm_prf_data,"awG",@progbits,__profc_lfind
	.p2align	3, 0x0
.L__profd_lfind:
	.long	817200365                       # 0xa7df811e30b57ced
	.long	2816442654
	.long	3529577560                      # 0x46ca7d2611458
	.long	289959
	.long	.L__profc_lfind-.L__profd_lfind
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lfind, 48

	.type	.L__profc_abs,@object           # @__profc_abs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profc_abs:
	.space	16
	.size	.L__profc_abs, 16

	.type	.L__profd_abs,@object           # @__profd_abs
	.section	__llvm_prf_data,"awG",@progbits,__profc_abs
	.p2align	3, 0x0
.L__profd_abs:
	.long	90942713                        # 0xfcb0ccbe056bacf9
	.long	4239445182
	.long	99164                           # 0x1835c
	.long	0
	.long	.L__profc_abs-.L__profd_abs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_abs, 48

	.type	.L__profc_atoi,@object          # @__profc_atoi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profc_atoi:
	.space	56
	.size	.L__profc_atoi, 56

	.type	.L__profd_atoi,@object          # @__profd_atoi
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoi
	.p2align	3, 0x0
.L__profd_atoi:
	.long	2738380237                      # 0xa52e4a4ba3385dcd
	.long	2771274315
	.long	134813197                       # 0x244720809160d
	.long	148594
	.long	.L__profc_atoi-.L__profd_atoi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atoi, 48

	.type	.L__profc_atol,@object          # @__profc_atol
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profc_atol:
	.space	56
	.size	.L__profc_atol, 56

	.type	.L__profd_atol,@object          # @__profd_atol
	.section	__llvm_prf_data,"awG",@progbits,__profc_atol
	.p2align	3, 0x0
.L__profd_atol:
	.long	4002377009                      # 0x724cc634ee8f6d31
	.long	1917634100
	.long	134813197                       # 0x244720809160d
	.long	148594
	.long	.L__profc_atol-.L__profd_atol
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atol, 48

	.type	.L__profc_atoll,@object         # @__profc_atoll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profc_atoll:
	.space	56
	.size	.L__profc_atoll, 56

	.type	.L__profd_atoll,@object         # @__profd_atoll
	.section	__llvm_prf_data,"awG",@progbits,__profc_atoll
	.p2align	3, 0x0
.L__profd_atoll:
	.long	1906768237                      # 0x32b4ee8971a6f96d
	.long	850718345
	.long	134813197                       # 0x244720809160d
	.long	148594
	.long	.L__profc_atoll-.L__profd_atoll
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atoll, 48

	.type	.L__profc_bsearch,@object       # @__profc_bsearch
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profc_bsearch:
	.space	32
	.size	.L__profc_bsearch, 32

	.type	.L__profd_bsearch,@object       # @__profd_bsearch
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch
	.p2align	3, 0x0
.L__profd_bsearch:
	.long	2054766654                      # 0x796ea3837a79403e
	.long	2037293955
	.long	739949690                       # 0xf42b29012c1abc7a
	.long	4096469249
	.long	.L__profc_bsearch-.L__profd_bsearch
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch, 48

	.type	.L__profc_bsearch_r,@object     # @__profc_bsearch_r
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profc_bsearch_r:
	.space	32
	.size	.L__profc_bsearch_r, 32

	.type	.L__profd_bsearch_r,@object     # @__profd_bsearch_r
	.section	__llvm_prf_data,"awG",@progbits,__profc_bsearch_r
	.p2align	3, 0x0
.L__profd_bsearch_r:
	.long	2873519740                      # 0x13aa8a38ab466e7c
	.long	329943608
	.long	2313468942                      # 0x117a3a2689e4bc0e
	.long	293222950
	.long	.L__profc_bsearch_r-.L__profd_bsearch_r
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch_r, 48

	.type	.L__profc_div,@object           # @__profc_div
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profc_div:
	.space	8
	.size	.L__profc_div, 8

	.type	.L__profd_div,@object           # @__profd_div
	.section	__llvm_prf_data,"awG",@progbits,__profc_div
	.p2align	3, 0x0
.L__profd_div:
	.long	1483041080                      # 0x4c4998dc58656938
	.long	1279891676
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_div-.L__profd_div
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_div, 48

	.type	.L__profc_imaxabs,@object       # @__profc_imaxabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profc_imaxabs:
	.space	16
	.size	.L__profc_imaxabs, 16

	.type	.L__profd_imaxabs,@object       # @__profd_imaxabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxabs
	.p2align	3, 0x0
.L__profd_imaxabs:
	.long	3004042905                      # 0x7c28f3a3b30e0e99
	.long	2083058595
	.long	99164                           # 0x1835c
	.long	0
	.long	.L__profc_imaxabs-.L__profd_imaxabs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_imaxabs, 48

	.type	.L__profc_imaxdiv,@object       # @__profc_imaxdiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profc_imaxdiv:
	.space	8
	.size	.L__profc_imaxdiv, 8

	.type	.L__profd_imaxdiv,@object       # @__profd_imaxdiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_imaxdiv
	.p2align	3, 0x0
.L__profd_imaxdiv:
	.long	2640297140                      # 0xc97b6cec9d5fbcb4
	.long	3380309228
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_imaxdiv-.L__profd_imaxdiv
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_imaxdiv, 48

	.type	.L__profc_labs,@object          # @__profc_labs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profc_labs:
	.space	16
	.size	.L__profc_labs, 16

	.type	.L__profd_labs,@object          # @__profd_labs
	.section	__llvm_prf_data,"awG",@progbits,__profc_labs
	.p2align	3, 0x0
.L__profd_labs:
	.long	3013844134                      # 0x9d363762b3a39ca6
	.long	2637576034
	.long	99164                           # 0x1835c
	.long	0
	.long	.L__profc_labs-.L__profd_labs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_labs, 48

	.type	.L__profc_ldiv,@object          # @__profc_ldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profc_ldiv:
	.space	8
	.size	.L__profc_ldiv, 8

	.type	.L__profd_ldiv,@object          # @__profd_ldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldiv
	.p2align	3, 0x0
.L__profd_ldiv:
	.long	1948272233                      # 0x633951ff74204669
	.long	1664700927
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_ldiv-.L__profd_ldiv
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldiv, 48

	.type	.L__profc_llabs,@object         # @__profc_llabs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profc_llabs:
	.space	16
	.size	.L__profc_llabs, 16

	.type	.L__profd_llabs,@object         # @__profd_llabs
	.section	__llvm_prf_data,"awG",@progbits,__profc_llabs
	.p2align	3, 0x0
.L__profd_llabs:
	.long	3146878658                      # 0x6aa5dafebb918ec2
	.long	1789254398
	.long	99164                           # 0x1835c
	.long	0
	.long	.L__profc_llabs-.L__profd_llabs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_llabs, 48

	.type	.L__profc_lldiv,@object         # @__profc_lldiv
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profc_lldiv:
	.space	8
	.size	.L__profc_lldiv, 8

	.type	.L__profd_lldiv,@object         # @__profd_lldiv
	.section	__llvm_prf_data,"awG",@progbits,__profc_lldiv
	.p2align	3, 0x0
.L__profd_lldiv:
	.long	1376157918                      # 0xb60b082c520680de
	.long	3054176300
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_lldiv-.L__profd_lldiv
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lldiv, 48

	.type	.L__profc_wcschr,@object        # @__profc_wcschr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profc_wcschr:
	.space	40
	.size	.L__profc_wcschr, 40

	.type	.L__profd_wcschr,@object        # @__profd_wcschr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcschr
	.p2align	3, 0x0
.L__profd_wcschr:
	.long	3278405344                      # 0xe05c7c36c3687ee0
	.long	3764157494
	.long	243340813                       # 0x10e81160d
	.long	1
	.long	.L__profc_wcschr-.L__profd_wcschr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcschr, 48

	.type	.L__profc_wcscmp,@object        # @__profc_wcscmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profc_wcscmp:
	.space	56
	.size	.L__profc_wcscmp, 56

	.type	.L__profd_wcscmp,@object        # @__profd_wcscmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscmp
	.p2align	3, 0x0
.L__profd_wcscmp:
	.long	3443918992                      # 0xcc82c5dbcd460890
	.long	3431122395
	.long	3512784604                      # 0x438e7d160d6dc
	.long	276711
	.long	.L__profc_wcscmp-.L__profd_wcscmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcscmp, 48

	.type	.L__profc_wcscpy,@object        # @__profc_wcscpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profc_wcscpy:
	.space	16
	.size	.L__profc_wcscpy, 16

	.type	.L__profd_wcscpy,@object        # @__profd_wcscpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcscpy
	.p2align	3, 0x0
.L__profd_wcscpy:
	.long	4141681258                      # 0x8baf660af6dd0a6a
	.long	2343527946
	.long	9304                            # 0x2458
	.long	0
	.long	.L__profc_wcscpy-.L__profd_wcscpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcscpy, 48

	.type	.L__profc_wcslen,@object        # @__profc_wcslen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profc_wcslen:
	.space	16
	.size	.L__profc_wcslen, 16

	.type	.L__profd_wcslen,@object        # @__profd_wcslen
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcslen
	.p2align	3, 0x0
.L__profd_wcslen:
	.long	3359154486                      # 0x3759acd4c838a136
	.long	928623828
	.long	17496                           # 0x4458
	.long	0
	.long	.L__profc_wcslen-.L__profd_wcslen
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcslen, 48

	.type	.L__profc_wcsncmp,@object       # @__profc_wcsncmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profc_wcsncmp:
	.space	80
	.size	.L__profc_wcsncmp, 80

	.type	.L__profd_wcsncmp,@object       # @__profd_wcsncmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wcsncmp
	.p2align	3, 0x0
.L__profd_wcsncmp:
	.long	3384850644                      # 0xb4b5ef95c9c0b8d4
	.long	3031822229
	.long	4248202332                      # 0x5d218431fd366c5c
	.long	1562477617
	.long	.L__profc_wcsncmp-.L__profd_wcsncmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	10                              # 0xa
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcsncmp, 48

	.type	.L__profc_wmemchr,@object       # @__profc_wmemchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profc_wmemchr:
	.space	40
	.size	.L__profc_wmemchr, 40

	.type	.L__profd_wmemchr,@object       # @__profd_wmemchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemchr
	.p2align	3, 0x0
.L__profd_wmemchr:
	.long	1528125668                      # 0xfde7d69b5b1558e4
	.long	4259829403
	.long	243340813                       # 0x10e81160d
	.long	1
	.long	.L__profc_wmemchr-.L__profd_wmemchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemchr, 48

	.type	.L__profc_wmemcmp,@object       # @__profc_wmemcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profc_wmemcmp:
	.space	48
	.size	.L__profc_wmemcmp, 48

	.type	.L__profd_wmemcmp,@object       # @__profd_wmemcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcmp
	.p2align	3, 0x0
.L__profd_wmemcmp:
	.long	84788312                        # 0x4abf86f3050dc458
	.long	1254065907
	.long	1479857884                      # 0x439f45834d6dc
	.long	276980
	.long	.L__profc_wmemcmp-.L__profd_wmemcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcmp, 48

	.type	.L__profc_wmemcpy,@object       # @__profc_wmemcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profc_wmemcpy:
	.space	16
	.size	.L__profc_wmemcpy, 16

	.type	.L__profd_wmemcpy,@object       # @__profd_wmemcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemcpy
	.p2align	3, 0x0
.L__profd_wmemcpy:
	.long	2637215827                      # 0x65ab5c0b9d30b853
	.long	1705729035
	.long	9304                            # 0x2458
	.long	0
	.long	.L__profc_wmemcpy-.L__profd_wmemcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcpy, 48

	.type	.L__profc_wmemmove,@object      # @__profc_wmemmove
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profc_wmemmove:
	.space	40
	.size	.L__profc_wmemmove, 40

	.type	.L__profd_wmemmove,@object      # @__profd_wmemmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemmove
	.p2align	3, 0x0
.L__profd_wmemmove:
	.long	1772334517                      # 0xbf56752a69a3adb5
	.long	3210114346
	.long	3244734756                      # 0xeb2e3281c166b924
	.long	3945673345
	.long	.L__profc_wmemmove-.L__profd_wmemmove
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemmove, 48

	.type	.L__profc_wmemset,@object       # @__profc_wmemset
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profc_wmemset:
	.space	16
	.size	.L__profc_wmemset, 16

	.type	.L__profd_wmemset,@object       # @__profd_wmemset
	.section	__llvm_prf_data,"awG",@progbits,__profc_wmemset
	.p2align	3, 0x0
.L__profd_wmemset:
	.long	4064618063                      # 0x8ceff224f245264f
	.long	2364535332
	.long	9304                            # 0x2458
	.long	0
	.long	.L__profc_wmemset-.L__profd_wmemset
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemset, 48

	.type	.L__profc_bcopy,@object         # @__profc_bcopy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profc_bcopy:
	.space	40
	.size	.L__profc_bcopy, 40

	.type	.L__profd_bcopy,@object         # @__profd_bcopy
	.section	__llvm_prf_data,"awG",@progbits,__profc_bcopy
	.p2align	3, 0x0
.L__profd_bcopy:
	.long	1054661432                      # 0x8b5328de3edcdb38
	.long	2337482974
	.long	975013403                       # 0x48a34b333a1d861b
	.long	1218661171
	.long	.L__profc_bcopy-.L__profd_bcopy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bcopy, 48

	.type	.L__profc_rotl64,@object        # @__profc_rotl64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profc_rotl64:
	.space	8
	.size	.L__profc_rotl64, 8

	.type	.L__profd_rotl64,@object        # @__profd_rotl64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl64
	.p2align	3, 0x0
.L__profd_rotl64:
	.long	2229826992                      # 0x416ddc4e84e875b0
	.long	1097718862
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotl64-.L__profd_rotl64
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl64, 48

	.type	.L__profc_rotr64,@object        # @__profc_rotr64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profc_rotr64:
	.space	8
	.size	.L__profc_rotr64, 8

	.type	.L__profd_rotr64,@object        # @__profd_rotr64
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr64
	.p2align	3, 0x0
.L__profd_rotr64:
	.long	2326512589                      # 0x8b0aff7e8aabc3cd
	.long	2332753790
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotr64-.L__profd_rotr64
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr64, 48

	.type	.L__profc_rotl32,@object        # @__profc_rotl32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profc_rotl32:
	.space	8
	.size	.L__profc_rotl32, 8

	.type	.L__profd_rotl32,@object        # @__profd_rotl32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl32
	.p2align	3, 0x0
.L__profd_rotl32:
	.long	3626627460                      # 0x5910447ed829f184
	.long	1494238334
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotl32-.L__profd_rotl32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl32, 48

	.type	.L__profc_rotr32,@object        # @__profc_rotr32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profc_rotr32:
	.space	8
	.size	.L__profc_rotr32, 8

	.type	.L__profd_rotr32,@object        # @__profd_rotr32
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr32
	.p2align	3, 0x0
.L__profd_rotr32:
	.long	3418479684                      # 0xb153fe21cbc1dc44
	.long	2975071777
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotr32-.L__profd_rotr32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr32, 48

	.type	.L__profc_rotl_sz,@object       # @__profc_rotl_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profc_rotl_sz:
	.space	8
	.size	.L__profc_rotl_sz, 8

	.type	.L__profd_rotl_sz,@object       # @__profd_rotl_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl_sz
	.p2align	3, 0x0
.L__profd_rotl_sz:
	.long	3086541338                      # 0xccd67b43b7f8e21a
	.long	3436608323
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotl_sz-.L__profd_rotl_sz
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl_sz, 48

	.type	.L__profc_rotr_sz,@object       # @__profc_rotr_sz
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profc_rotr_sz:
	.space	8
	.size	.L__profc_rotr_sz, 8

	.type	.L__profd_rotr_sz,@object       # @__profd_rotr_sz
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr_sz
	.p2align	3, 0x0
.L__profd_rotr_sz:
	.long	2553665156                      # 0x2f664ae29835d684
	.long	795232994
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotr_sz-.L__profd_rotr_sz
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr_sz, 48

	.type	.L__profc_rotl16,@object        # @__profc_rotl16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profc_rotl16:
	.space	8
	.size	.L__profc_rotl16, 8

	.type	.L__profd_rotl16,@object        # @__profd_rotl16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl16
	.p2align	3, 0x0
.L__profd_rotl16:
	.long	244555557                       # 0x65af538b0e939f25
	.long	1705989003
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotl16-.L__profd_rotl16
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl16, 48

	.type	.L__profc_rotr16,@object        # @__profc_rotr16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profc_rotr16:
	.space	8
	.size	.L__profc_rotr16, 8

	.type	.L__profd_rotr16,@object        # @__profd_rotr16
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr16
	.p2align	3, 0x0
.L__profd_rotr16:
	.long	3877440124                      # 0x4933b9afe71d0a7c
	.long	1228126639
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotr16-.L__profd_rotr16
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr16, 48

	.type	.L__profc_rotl8,@object         # @__profc_rotl8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profc_rotl8:
	.space	8
	.size	.L__profc_rotl8, 8

	.type	.L__profd_rotl8,@object         # @__profd_rotl8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotl8
	.p2align	3, 0x0
.L__profd_rotl8:
	.long	655336000                       # 0x3d2ddd93270fa240
	.long	1026416019
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotl8-.L__profd_rotl8
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl8, 48

	.type	.L__profc_rotr8,@object         # @__profc_rotr8
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profc_rotr8:
	.space	8
	.size	.L__profc_rotr8, 8

	.type	.L__profd_rotr8,@object         # @__profd_rotr8
	.section	__llvm_prf_data,"awG",@progbits,__profc_rotr8
	.p2align	3, 0x0
.L__profd_rotr8:
	.long	1493665568                      # 0xa54c2aea59078720
	.long	2773232362
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_rotr8-.L__profd_rotr8
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr8, 48

	.type	.L__profc_bswap_16,@object      # @__profc_bswap_16
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profc_bswap_16:
	.space	8
	.size	.L__profc_bswap_16, 8

	.type	.L__profd_bswap_16,@object      # @__profd_bswap_16
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_16
	.p2align	3, 0x0
.L__profd_bswap_16:
	.long	1268401773                      # 0x84e47ce04b9a466d
	.long	2229566688
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_bswap_16-.L__profd_bswap_16
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_16, 48

	.type	.L__profc_bswap_32,@object      # @__profc_bswap_32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profc_bswap_32:
	.space	8
	.size	.L__profc_bswap_32, 8

	.type	.L__profd_bswap_32,@object      # @__profd_bswap_32
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_32
	.p2align	3, 0x0
.L__profd_bswap_32:
	.long	452808988                       # 0x655ffb691afd511c
	.long	1700789097
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_bswap_32-.L__profd_bswap_32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_32, 48

	.type	.L__profc_bswap_64,@object      # @__profc_bswap_64
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profc_bswap_64:
	.space	8
	.size	.L__profc_bswap_64, 8

	.type	.L__profd_bswap_64,@object      # @__profd_bswap_64
	.section	__llvm_prf_data,"awG",@progbits,__profc_bswap_64
	.p2align	3, 0x0
.L__profd_bswap_64:
	.long	475245398                       # 0x27e1fd2c1c53ab56
	.long	669121836
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_bswap_64-.L__profd_bswap_64
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_64, 48

	.type	.L__profc_ffs,@object           # @__profc_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profc_ffs:
	.space	24
	.size	.L__profc_ffs, 24

	.type	.L__profd_ffs,@object           # @__profd_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_ffs
	.p2align	3, 0x0
.L__profd_ffs:
	.long	1440366139                      # 0x7ffbbb6955da3e3b
	.long	2147203945
	.long	2455835736                      # 0x11b292611458
	.long	4530
	.long	.L__profc_ffs-.L__profd_ffs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ffs, 48

	.type	.L__profc_libiberty_ffs,@object # @__profc_libiberty_ffs
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profc_libiberty_ffs:
	.space	24
	.size	.L__profc_libiberty_ffs, 24

	.type	.L__profd_libiberty_ffs,@object # @__profd_libiberty_ffs
	.section	__llvm_prf_data,"awG",@progbits,__profc_libiberty_ffs
	.p2align	3, 0x0
.L__profd_libiberty_ffs:
	.long	2840574905                      # 0xe7b1a8a94fbbb9
	.long	15184296
	.long	286368856                       # 0xa7d261111a458
	.long	687398
	.long	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 48

	.type	.L__profc_gl_isinff,@object     # @__profc_gl_isinff
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profc_gl_isinff:
	.space	24
	.size	.L__profc_gl_isinff, 24

	.type	.L__profd_gl_isinff,@object     # @__profd_gl_isinff
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinff
	.p2align	3, 0x0
.L__profd_gl_isinff:
	.long	3010385274                      # 0x5ab10580b36ed57a
	.long	1521550720
	.long	6354652                         # 0x60f6dc
	.long	0
	.long	.L__profc_gl_isinff-.L__profd_gl_isinff
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinff, 48

	.type	.L__profc_gl_isinfd,@object     # @__profc_gl_isinfd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profc_gl_isinfd:
	.space	24
	.size	.L__profc_gl_isinfd, 24

	.type	.L__profd_gl_isinfd,@object     # @__profd_gl_isinfd
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfd
	.p2align	3, 0x0
.L__profd_gl_isinfd:
	.long	444377658                       # 0x80cc28161a7caa3a
	.long	2160863254
	.long	6354652                         # 0x60f6dc
	.long	0
	.long	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfd, 48

	.type	.L__profc_gl_isinfl,@object     # @__profc_gl_isinfl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profc_gl_isinfl:
	.space	24
	.size	.L__profc_gl_isinfl, 24

	.type	.L__profd_gl_isinfl,@object     # @__profd_gl_isinfl
	.section	__llvm_prf_data,"awG",@progbits,__profc_gl_isinfl
	.p2align	3, 0x0
.L__profd_gl_isinfl:
	.long	2943121403                      # 0x41a874c2af6c77fb
	.long	1101558978
	.long	6354652                         # 0x60f6dc
	.long	0
	.long	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfl, 48

	.type	.L__profc__Qp_itoq,@object      # @__profc__Qp_itoq
	.section	__llvm_prf_cnts,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profc__Qp_itoq:
	.space	8
	.size	.L__profc__Qp_itoq, 8

	.type	.L__profd__Qp_itoq,@object      # @__profd__Qp_itoq
	.section	__llvm_prf_data,"awG",@progbits,__profc__Qp_itoq
	.p2align	3, 0x0
.L__profd__Qp_itoq:
	.long	1257874239                      # 0xca752ed84af9a33f
	.long	3396677336
	.long	0                               # 0x0
	.long	0
	.long	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd__Qp_itoq, 48

	.type	.L__profc_ldexpf,@object        # @__profc_ldexpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profc_ldexpf:
	.space	64
	.size	.L__profc_ldexpf, 64

	.type	.L__profd_ldexpf,@object        # @__profd_ldexpf
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpf
	.p2align	3, 0x0
.L__profd_ldexpf:
	.long	539537125                       # 0xdc76cdf42028aee5
	.long	3698773492
	.long	14241369                        # 0xe392b7c600d94e59
	.long	3818043334
	.long	.L__profc_ldexpf-.L__profd_ldexpf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpf, 48

	.type	.L__profc_ldexp,@object         # @__profc_ldexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profc_ldexp:
	.space	64
	.size	.L__profc_ldexp, 64

	.type	.L__profd_ldexp,@object         # @__profd_ldexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexp
	.p2align	3, 0x0
.L__profd_ldexp:
	.long	3111827691                      # 0xfca965e7b97ab8eb
	.long	4238960103
	.long	14241369                        # 0xe392b7c600d94e59
	.long	3818043334
	.long	.L__profc_ldexp-.L__profd_ldexp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexp, 48

	.type	.L__profc_ldexpl,@object        # @__profc_ldexpl
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profc_ldexpl:
	.space	64
	.size	.L__profc_ldexpl, 64

	.type	.L__profd_ldexpl,@object        # @__profd_ldexpl
	.section	__llvm_prf_data,"awG",@progbits,__profc_ldexpl
	.p2align	3, 0x0
.L__profd_ldexpl:
	.long	178812135                       # 0xb942e25c0aa874e7
	.long	3108168284
	.long	14241369                        # 0xe392b7c600d94e59
	.long	3818043334
	.long	.L__profc_ldexpl-.L__profd_ldexpl
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpl, 48

	.type	.L__profc_memxor,@object        # @__profc_memxor
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profc_memxor:
	.space	16
	.size	.L__profc_memxor, 16

	.type	.L__profd_memxor,@object        # @__profd_memxor
	.section	__llvm_prf_data,"awG",@progbits,__profc_memxor
	.p2align	3, 0x0
.L__profd_memxor:
	.long	2128235242                      # 0x8bdecd417eda4aea
	.long	2346634561
	.long	1164376                         # 0x11c458
	.long	0
	.long	.L__profc_memxor-.L__profd_memxor
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memxor, 48

	.type	.L__profc_strncat,@object       # @__profc_strncat
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profc_strncat:
	.space	40
	.size	.L__profc_strncat, 40

	.type	.L__profd_strncat,@object       # @__profd_strncat
	.section	__llvm_prf_data,"awG",@progbits,__profc_strncat
	.p2align	3, 0x0
.L__profd_strncat:
	.long	2636207119                      # 0xce4875d49d21540f
	.long	3460855252
	.long	1249715288                      # 0x10e72044a7d2458
	.long	17723908
	.long	.L__profc_strncat-.L__profd_strncat
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strncat, 48

	.type	.L__profc_strnlen,@object       # @__profc_strnlen
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profc_strnlen:
	.space	32
	.size	.L__profc_strnlen, 32

	.type	.L__profd_strnlen,@object       # @__profd_strnlen
	.section	__llvm_prf_data,"awG",@progbits,__profc_strnlen
	.p2align	3, 0x0
.L__profd_strnlen:
	.long	3690601605                      # 0x72eda14dbfa1c85
	.long	120510996
	.long	242054232                       # 0x10e6d7458
	.long	1
	.long	.L__profc_strnlen-.L__profd_strnlen
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strnlen, 48

	.type	.L__profc_strpbrk,@object       # @__profc_strpbrk
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profc_strpbrk:
	.space	32
	.size	.L__profc_strpbrk, 32

	.type	.L__profd_strpbrk,@object       # @__profd_strpbrk
	.section	__llvm_prf_data,"awG",@progbits,__profc_strpbrk
	.p2align	3, 0x0
.L__profd_strpbrk:
	.long	1100202522                      # 0xa0b33fed4193c21a
	.long	2696101869
	.long	84945426                        # 0xc250e3b905102a12
	.long	3260081081
	.long	.L__profc_strpbrk-.L__profd_strpbrk
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strpbrk, 48

	.type	.L__profc_strrchr,@object       # @__profc_strrchr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profc_strrchr:
	.space	24
	.size	.L__profc_strrchr, 24

	.type	.L__profd_strrchr,@object       # @__profd_strrchr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strrchr
	.p2align	3, 0x0
.L__profd_strrchr:
	.long	1003970063                      # 0x49a93a493bd75e0f
	.long	1235827273
	.long	2672366680                      # 0x329f491458
	.long	50
	.long	.L__profc_strrchr-.L__profd_strrchr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strrchr, 48

	.type	.L__profc_strstr,@object        # @__profc_strstr
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profc_strstr:
	.space	32
	.size	.L__profc_strstr, 32

	.type	.L__profd_strstr,@object        # @__profd_strstr
	.section	__llvm_prf_data,"awG",@progbits,__profc_strstr
	.p2align	3, 0x0
.L__profd_strstr:
	.long	1946130763                      # 0x3169a8a873ff994b
	.long	829008040
	.long	4193384452                      # 0x93c6fcaef9f1f804
	.long	2479291566
	.long	.L__profc_strstr-.L__profd_strstr
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strstr, 48

	.type	.L__profc_copysign,@object      # @__profc_copysign
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profc_copysign:
	.space	56
	.size	.L__profc_copysign, 56

	.type	.L__profd_copysign,@object      # @__profd_copysign
	.section	__llvm_prf_data,"awG",@progbits,__profc_copysign
	.p2align	3, 0x0
.L__profd_copysign:
	.long	3933621461                      # 0x82096d47ea764cd5
	.long	2181655879
	.long	1176019055                      # 0x3a4ce3834618a06f
	.long	978117507
	.long	.L__profc_copysign-.L__profd_copysign
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_copysign, 48

	.type	.L__profc_memmem,@object        # @__profc_memmem
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profc_memmem:
	.space	56
	.size	.L__profc_memmem, 56

	.type	.L__profd_memmem,@object        # @__profd_memmem
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmem
	.p2align	3, 0x0
.L__profd_memmem:
	.long	1482351504                      # 0x981e4a4b585ae390
	.long	2552121931
	.long	2121957956                      # 0x4c7092d27e7a8244
	.long	1282446034
	.long	.L__profc_memmem-.L__profd_memmem
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memmem, 48

	.type	.L__profc_mempcpy,@object       # @__profc_mempcpy
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profc_mempcpy:
	.space	8
	.size	.L__profc_mempcpy, 8

	.type	.L__profd_mempcpy,@object       # @__profd_mempcpy
	.section	__llvm_prf_data,"awG",@progbits,__profc_mempcpy
	.p2align	3, 0x0
.L__profd_mempcpy:
	.long	252779458                       # 0xf5f7b7020f111bc2
	.long	4126652162
	.long	24                              # 0x18
	.long	0
	.long	.L__profc_mempcpy-.L__profd_mempcpy
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_mempcpy, 48

	.type	.L__profc_frexp,@object         # @__profc_frexp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profc_frexp:
	.space	72
	.size	.L__profc_frexp, 72

	.type	.L__profd_frexp,@object         # @__profd_frexp
	.section	__llvm_prf_data,"awG",@progbits,__profc_frexp
	.p2align	3, 0x0
.L__profd_frexp:
	.long	471787407                       # 0xd667ea2e1c1ee78f
	.long	3597134382
	.long	1008144312                      # 0xdf0ea1753c170fb8
	.long	3742278005
	.long	.L__profc_frexp-.L__profd_frexp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_frexp, 48

	.type	.L__profc___muldi3,@object      # @__profc___muldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profc___muldi3:
	.space	24
	.size	.L__profc___muldi3, 24

	.type	.L__profd___muldi3,@object      # @__profd___muldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3
	.p2align	3, 0x0
.L__profd___muldi3:
	.long	2949618840                      # 0x3755a22cafcf9c98
	.long	928358956
	.long	2320045144                      # 0x8a491458
	.long	0
	.long	.L__profc___muldi3-.L__profd___muldi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3, 48

	.type	.L__profc_udivmodsi4,@object    # @__profc_udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profc_udivmodsi4:
	.space	72
	.size	.L__profc_udivmodsi4, 72

	.type	.L__profd_udivmodsi4,@object    # @__profd_udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc_udivmodsi4
	.p2align	3, 0x0
.L__profd_udivmodsi4:
	.long	1024966285                      # 0x40d2210e3d17be8d
	.long	1087512846
	.long	1651402066                      # 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_udivmodsi4, 48

	.type	.L__profc___clrsbqi2,@object    # @__profc___clrsbqi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profc___clrsbqi2:
	.space	24
	.size	.L__profc___clrsbqi2, 24

	.type	.L__profd___clrsbqi2,@object    # @__profd___clrsbqi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbqi2
	.p2align	3, 0x0
.L__profd___clrsbqi2:
	.long	921962090                       # 0x92f2490d36f4066a
	.long	2465351949
	.long	2672395352                      # 0x29b49129f498458
	.long	43731218
	.long	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbqi2, 48

	.type	.L__profc___clrsbdi2,@object    # @__profc___clrsbdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profc___clrsbdi2:
	.space	24
	.size	.L__profc___clrsbdi2, 24

	.type	.L__profd___clrsbdi2,@object    # @__profd___clrsbdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clrsbdi2
	.p2align	3, 0x0
.L__profd___clrsbdi2:
	.long	1877498071                      # 0xeab85aaa6fe858d7
	.long	3937950378
	.long	2672395352                      # 0x29b49129f498458
	.long	43731218
	.long	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbdi2, 48

	.type	.L__profc___mulsi3,@object      # @__profc___mulsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profc___mulsi3:
	.space	24
	.size	.L__profc___mulsi3, 24

	.type	.L__profd___mulsi3,@object      # @__profd___mulsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3
	.p2align	3, 0x0
.L__profd___mulsi3:
	.long	808585471                       # 0x472924cf303208ff
	.long	1193878735
	.long	2320045144                      # 0x8a491458
	.long	0
	.long	.L__profc___mulsi3-.L__profd___mulsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3, 48

	.type	.L__profc___cmovd,@object       # @__profc___cmovd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profc___cmovd:
	.space	56
	.size	.L__profc___cmovd, 56

	.type	.L__profd___cmovd,@object       # @__profd___cmovd
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovd
	.p2align	3, 0x0
.L__profd___cmovd:
	.long	553465352                       # 0x143d4c6520fd3608
	.long	339561573
	.long	1219219495                      # 0xa70727df48abd027
	.long	2802264031
	.long	.L__profc___cmovd-.L__profd___cmovd
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovd, 48

	.type	.L__profc___cmovh,@object       # @__profc___cmovh
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profc___cmovh:
	.space	56
	.size	.L__profc___cmovh, 56

	.type	.L__profd___cmovh,@object       # @__profd___cmovh
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovh
	.p2align	3, 0x0
.L__profd___cmovh:
	.long	1199450638                      # 0xeec99ab9477e2a0e
	.long	4006189753
	.long	2696688615                      # 0x2b706930a0bc33e7
	.long	728787248
	.long	.L__profc___cmovh-.L__profd___cmovh
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovh, 48

	.type	.L__profc___cmovw,@object       # @__profc___cmovw
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profc___cmovw:
	.space	56
	.size	.L__profc___cmovw, 56

	.type	.L__profd___cmovw,@object       # @__profd___cmovw
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmovw
	.p2align	3, 0x0
.L__profd___cmovw:
	.long	1785275052                      # 0xa3f7772d6a6922ac
	.long	2750904109
	.long	1219219495                      # 0xa70727df48abd027
	.long	2802264031
	.long	.L__profc___cmovw-.L__profd___cmovw
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovw, 48

	.type	.L__profc___modi,@object        # @__profc___modi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profc___modi:
	.space	8
	.size	.L__profc___modi, 8

	.type	.L__profd___modi,@object        # @__profd___modi
	.section	__llvm_prf_data,"awG",@progbits,__profc___modi
	.p2align	3, 0x0
.L__profd___modi:
	.long	3464656561                      # 0x3951c3b1ce8276b1
	.long	961659825
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___modi-.L__profd___modi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___modi, 48

	.type	.L__profc___uitod,@object       # @__profc___uitod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profc___uitod:
	.space	8
	.size	.L__profc___uitod, 8

	.type	.L__profd___uitod,@object       # @__profd___uitod
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitod
	.p2align	3, 0x0
.L__profd___uitod:
	.long	2493213220                      # 0xcb5bf4b0949b6a24
	.long	3411801264
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___uitod-.L__profd___uitod
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___uitod, 48

	.type	.L__profc___uitof,@object       # @__profc___uitof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profc___uitof:
	.space	8
	.size	.L__profc___uitof, 8

	.type	.L__profd___uitof,@object       # @__profd___uitof
	.section	__llvm_prf_data,"awG",@progbits,__profc___uitof
	.p2align	3, 0x0
.L__profd___uitof:
	.long	3986234038                      # 0x253fdbc7ed991ab6
	.long	624942023
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___uitof-.L__profd___uitof
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___uitof, 48

	.type	.L__profc___ulltod,@object      # @__profc___ulltod
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profc___ulltod:
	.space	8
	.size	.L__profc___ulltod, 8

	.type	.L__profd___ulltod,@object      # @__profd___ulltod
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltod
	.p2align	3, 0x0
.L__profd___ulltod:
	.long	4219734726                      # 0x377213c0fb840ac6
	.long	930223040
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___ulltod-.L__profd___ulltod
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ulltod, 48

	.type	.L__profc___ulltof,@object      # @__profc___ulltof
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profc___ulltof:
	.space	8
	.size	.L__profc___ulltof, 8

	.type	.L__profd___ulltof,@object      # @__profd___ulltof
	.section	__llvm_prf_data,"awG",@progbits,__profc___ulltof
	.p2align	3, 0x0
.L__profd___ulltof:
	.long	2547710861                      # 0xe58a8e7e97dafb8d
	.long	3851062910
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___ulltof-.L__profd___ulltof
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ulltof, 48

	.type	.L__profc___umodi,@object       # @__profc___umodi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profc___umodi:
	.space	8
	.size	.L__profc___umodi, 8

	.type	.L__profd___umodi,@object       # @__profd___umodi
	.section	__llvm_prf_data,"awG",@progbits,__profc___umodi
	.p2align	3, 0x0
.L__profd___umodi:
	.long	1073703930                      # 0x5567a7893fff6bfa
	.long	1432856457
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___umodi-.L__profd___umodi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___umodi, 48

	.type	.L__profc___clzhi2,@object      # @__profc___clzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profc___clzhi2:
	.space	24
	.size	.L__profc___clzhi2, 24

	.type	.L__profd___clzhi2,@object      # @__profd___clzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzhi2
	.p2align	3, 0x0
.L__profd___clzhi2:
	.long	1526022046                      # 0x8005edb05af53f9e
	.long	2147872176
	.long	2455311448                      # 0x11b292591458
	.long	4530
	.long	.L__profc___clzhi2-.L__profd___clzhi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzhi2, 48

	.type	.L__profc___ctzhi2,@object      # @__profc___ctzhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profc___ctzhi2:
	.space	24
	.size	.L__profc___ctzhi2, 24

	.type	.L__profd___ctzhi2,@object      # @__profd___ctzhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzhi2
	.p2align	3, 0x0
.L__profd___ctzhi2:
	.long	3617218592                      # 0xea391231d79a6020
	.long	3929608753
	.long	2455311448                      # 0x11b292591458
	.long	4530
	.long	.L__profc___ctzhi2-.L__profd___ctzhi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzhi2, 48

	.type	.L__profc___fixunssfsi,@object  # @__profc___fixunssfsi
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profc___fixunssfsi:
	.space	16
	.size	.L__profc___fixunssfsi, 16

	.type	.L__profd___fixunssfsi,@object  # @__profd___fixunssfsi
	.section	__llvm_prf_data,"awG",@progbits,__profc___fixunssfsi
	.p2align	3, 0x0
.L__profd___fixunssfsi:
	.long	651704643                       # 0x93bf2a7226d83943
	.long	2478778994
	.long	2655618136                      # 0x29e498458
	.long	2
	.long	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___fixunssfsi, 48

	.type	.L__profc___parityhi2,@object   # @__profc___parityhi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profc___parityhi2:
	.space	24
	.size	.L__profc___parityhi2, 24

	.type	.L__profd___parityhi2,@object   # @__profd___parityhi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___parityhi2
	.p2align	3, 0x0
.L__profd___parityhi2:
	.long	1595267545                      # 0x10b5167d5f15d9d9
	.long	280303229
	.long	3393786968                      # 0x46ca491458
	.long	70
	.long	.L__profc___parityhi2-.L__profd___parityhi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___parityhi2, 48

	.type	.L__profc___popcounthi2,@object # @__profc___popcounthi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profc___popcounthi2:
	.space	24
	.size	.L__profc___popcounthi2, 24

	.type	.L__profd___popcounthi2,@object # @__profd___popcounthi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcounthi2
	.p2align	3, 0x0
.L__profd___popcounthi2:
	.long	3021313414                      # 0x36b9214fb4159586
	.long	918102351
	.long	3393786968                      # 0x46ca491458
	.long	70
	.long	.L__profc___popcounthi2-.L__profd___popcounthi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcounthi2, 48

	.type	.L__profc___mulsi3_iq2000,@object # @__profc___mulsi3_iq2000
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profc___mulsi3_iq2000:
	.space	24
	.size	.L__profc___mulsi3_iq2000, 24

	.type	.L__profd___mulsi3_iq2000,@object # @__profd___mulsi3_iq2000
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_iq2000
	.p2align	3, 0x0
.L__profd___mulsi3_iq2000:
	.long	2418545684                      # 0xc8d127b190281414
	.long	3369150385
	.long	172561496                       # 0x280a491458
	.long	40
	.long	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 48

	.type	.L__profc___mulsi3_lm32,@object # @__profc___mulsi3_lm32
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profc___mulsi3_lm32:
	.space	32
	.size	.L__profc___mulsi3_lm32, 32

	.type	.L__profd___mulsi3_lm32,@object # @__profd___mulsi3_lm32
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulsi3_lm32
	.p2align	3, 0x0
.L__profd___mulsi3_lm32:
	.long	3669051597                      # 0x26851843dab148cd
	.long	646256707
	.long	903869171                       # 0xa9cf36c835dff2f3
	.long	2848929480
	.long	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 48

	.type	.L__profc___udivmodsi4,@object  # @__profc___udivmodsi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profc___udivmodsi4:
	.space	72
	.size	.L__profc___udivmodsi4, 72

	.type	.L__profd___udivmodsi4,@object  # @__profd___udivmodsi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4
	.p2align	3, 0x0
.L__profd___udivmodsi4:
	.long	3214998610                      # 0xa2bc61cdbfa0fc52
	.long	2730254797
	.long	1651402066                      # 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4, 48

	.type	.L__profc___mspabi_cmpf,@object # @__profc___mspabi_cmpf
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profc___mspabi_cmpf:
	.space	24
	.size	.L__profc___mspabi_cmpf, 24

	.type	.L__profd___mspabi_cmpf,@object # @__profd___mspabi_cmpf
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpf
	.p2align	3, 0x0
.L__profd___mspabi_cmpf:
	.long	4012873975                      # 0x58d08e7bef2f98f7
	.long	1490062971
	.long	3971983684                      # 0x12c573c0ecbfa944
	.long	314930112
	.long	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpf, 48

	.type	.L__profc___mspabi_cmpd,@object # @__profc___mspabi_cmpd
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profc___mspabi_cmpd:
	.space	24
	.size	.L__profc___mspabi_cmpd, 24

	.type	.L__profd___mspabi_cmpd,@object # @__profd___mspabi_cmpd
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_cmpd
	.p2align	3, 0x0
.L__profd___mspabi_cmpd:
	.long	3823668329                      # 0xafd9d1e3e3e88c69
	.long	2950287843
	.long	3971983684                      # 0x12c573c0ecbfa944
	.long	314930112
	.long	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpd, 48

	.type	.L__profc___mspabi_mpysll,@object # @__profc___mspabi_mpysll
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profc___mspabi_mpysll:
	.space	8
	.size	.L__profc___mspabi_mpysll, 8

	.type	.L__profd___mspabi_mpysll,@object # @__profd___mspabi_mpysll
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpysll
	.p2align	3, 0x0
.L__profd___mspabi_mpysll:
	.long	4195771941                      # 0xfb03c3bdfa166625
	.long	4211327933
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 48

	.type	.L__profc___mspabi_mpyull,@object # @__profc___mspabi_mpyull
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profc___mspabi_mpyull:
	.space	8
	.size	.L__profc___mspabi_mpyull, 8

	.type	.L__profd___mspabi_mpyull,@object # @__profd___mspabi_mpyull
	.section	__llvm_prf_data,"awG",@progbits,__profc___mspabi_mpyull
	.p2align	3, 0x0
.L__profd___mspabi_mpyull:
	.long	3324675637                      # 0x5c01e284c62a8635
	.long	1543627396
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 48

	.type	.L__profc___mulhi3,@object      # @__profc___mulhi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profc___mulhi3:
	.space	56
	.size	.L__profc___mulhi3, 56

	.type	.L__profd___mulhi3,@object      # @__profd___mulhi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___mulhi3
	.p2align	3, 0x0
.L__profd___mulhi3:
	.long	1556531068                      # 0xbf2a9dde5cc6c77c
	.long	3207241182
	.long	2703778695                      # 0xb568b86aa1286387
	.long	3043539050
	.long	.L__profc___mulhi3-.L__profd___mulhi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulhi3, 48

	.type	.L__profc___divsi3,@object      # @__profc___divsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profc___divsi3:
	.space	32
	.size	.L__profc___divsi3, 32

	.type	.L__profd___divsi3,@object      # @__profd___divsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___divsi3
	.p2align	3, 0x0
.L__profd___divsi3:
	.long	296414084                       # 0x4e26dd1711aaeb84
	.long	1311169815
	.long	1867459201                      # 0x715edbe6f4f2a81
	.long	118877630
	.long	.L__profc___divsi3-.L__profd___divsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___divsi3, 48

	.type	.L__profc___modsi3,@object      # @__profc___modsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profc___modsi3:
	.space	32
	.size	.L__profc___modsi3, 32

	.type	.L__profd___modsi3,@object      # @__profd___modsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___modsi3
	.p2align	3, 0x0
.L__profd___modsi3:
	.long	1312834626                      # 0x8328dd9f4e404442
	.long	2200493471
	.long	2245965411                      # 0x1d6fb85985deb663
	.long	493860953
	.long	.L__profc___modsi3-.L__profd___modsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___modsi3, 48

	.type	.L__profc___udivmodhi4,@object  # @__profc___udivmodhi4
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profc___udivmodhi4:
	.space	72
	.size	.L__profc___udivmodhi4, 72

	.type	.L__profd___udivmodhi4,@object  # @__profd___udivmodhi4
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodhi4
	.p2align	3, 0x0
.L__profd___udivmodhi4:
	.long	3037779362                      # 0x1f1bdf8db510d5a2
	.long	521920397
	.long	1651402066                      # 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodhi4, 48

	.type	.L__profc___udivmodsi4_libgcc,@object # @__profc___udivmodsi4_libgcc
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profc___udivmodsi4_libgcc:
	.space	72
	.size	.L__profc___udivmodsi4_libgcc, 72

	.type	.L__profd___udivmodsi4_libgcc,@object # @__profd___udivmodsi4_libgcc
	.section	__llvm_prf_data,"awG",@progbits,__profc___udivmodsi4_libgcc
	.p2align	3, 0x0
.L__profd___udivmodsi4_libgcc:
	.long	3532769019                      # 0xeb670aedd291c6fb
	.long	3949398765
	.long	1651402066                      # 0xbb200b8626e6552
	.long	196214968
	.long	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 48

	.type	.L__profc___ashldi3,@object     # @__profc___ashldi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profc___ashldi3:
	.space	24
	.size	.L__profc___ashldi3, 24

	.type	.L__profd___ashldi3,@object     # @__profd___ashldi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashldi3
	.p2align	3, 0x0
.L__profd___ashldi3:
	.long	978704463                       # 0x339d4a983a55d84f
	.long	865946264
	.long	3529577560                      # 0x2924ca7d2611458
	.long	43142311
	.long	.L__profc___ashldi3-.L__profd___ashldi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashldi3, 48

	.type	.L__profc___ashrdi3,@object     # @__profc___ashrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profc___ashrdi3:
	.space	24
	.size	.L__profc___ashrdi3, 24

	.type	.L__profd___ashrdi3,@object     # @__profd___ashrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___ashrdi3
	.p2align	3, 0x0
.L__profd___ashrdi3:
	.long	3990118094                      # 0xe63f2ae7edd45ece
	.long	3862899431
	.long	3529577560                      # 0x2924ca7d2611458
	.long	43142311
	.long	.L__profc___ashrdi3-.L__profd___ashrdi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashrdi3, 48

	.type	.L__profc___bswapdi2,@object    # @__profc___bswapdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profc___bswapdi2:
	.space	8
	.size	.L__profc___bswapdi2, 8

	.type	.L__profd___bswapdi2,@object    # @__profd___bswapdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapdi2
	.p2align	3, 0x0
.L__profd___bswapdi2:
	.long	2913318844                      # 0x7ef907d7ada5b7bc
	.long	2130249687
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___bswapdi2-.L__profd___bswapdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___bswapdi2, 48

	.type	.L__profc___bswapsi2,@object    # @__profc___bswapsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profc___bswapsi2:
	.space	8
	.size	.L__profc___bswapsi2, 8

	.type	.L__profd___bswapsi2,@object    # @__profd___bswapsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___bswapsi2
	.p2align	3, 0x0
.L__profd___bswapsi2:
	.long	4268972970                      # 0xd129c8a2fe735baa
	.long	3509176482
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___bswapsi2-.L__profd___bswapsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___bswapsi2, 48

	.type	.L__profc___clzsi2,@object      # @__profc___clzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profc___clzsi2:
	.space	8
	.size	.L__profc___clzsi2, 8

	.type	.L__profd___clzsi2,@object      # @__profd___clzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___clzsi2
	.p2align	3, 0x0
.L__profd___clzsi2:
	.long	847417603                       # 0x1330458b32829103
	.long	321930635
	.long	3749574175                      # 0x7df7df61f
	.long	7
	.long	.L__profc___clzsi2-.L__profd___clzsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzsi2, 48

	.type	.L__profc___cmpdi2,@object      # @__profc___cmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profc___cmpdi2:
	.space	40
	.size	.L__profc___cmpdi2, 40

	.type	.L__profd___cmpdi2,@object      # @__profd___cmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___cmpdi2
	.p2align	3, 0x0
.L__profd___cmpdi2:
	.long	2900396552                      # 0xb3ad5632ace08a08
	.long	3014481458
	.long	1422139388                      # 0x993642a254c41ffc
	.long	2570470050
	.long	.L__profc___cmpdi2-.L__profd___cmpdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmpdi2, 48

	.type	.L__profc___aeabi_lcmp,@object  # @__profc___aeabi_lcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profc___aeabi_lcmp:
	.space	8
	.size	.L__profc___aeabi_lcmp, 8

	.type	.L__profd___aeabi_lcmp,@object  # @__profd___aeabi_lcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_lcmp
	.p2align	3, 0x0
.L__profd___aeabi_lcmp:
	.long	1053938860                      # 0x6215aec83ed1d4ac
	.long	1645588168
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 48

	.type	.L__profc___ctzsi2,@object      # @__profc___ctzsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profc___ctzsi2:
	.space	8
	.size	.L__profc___ctzsi2, 8

	.type	.L__profd___ctzsi2,@object      # @__profd___ctzsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ctzsi2
	.p2align	3, 0x0
.L__profd___ctzsi2:
	.long	1006971543                      # 0xb3a5ef643c052a97
	.long	3013996388
	.long	3749574175                      # 0x7df7df61f
	.long	7
	.long	.L__profc___ctzsi2-.L__profd___ctzsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzsi2, 48

	.type	.L__profc___lshrdi3,@object     # @__profc___lshrdi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profc___lshrdi3:
	.space	24
	.size	.L__profc___lshrdi3, 24

	.type	.L__profd___lshrdi3,@object     # @__profd___lshrdi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___lshrdi3
	.p2align	3, 0x0
.L__profd___lshrdi3:
	.long	471342677                       # 0x2518bb1c181e55
	.long	2431163
	.long	3529577560                      # 0x2924ca7d2611458
	.long	43142311
	.long	.L__profc___lshrdi3-.L__profd___lshrdi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___lshrdi3, 48

	.type	.L__profc___muldsi3,@object     # @__profc___muldsi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profc___muldsi3:
	.space	8
	.size	.L__profc___muldsi3, 8

	.type	.L__profd___muldsi3,@object     # @__profd___muldsi3
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldsi3
	.p2align	3, 0x0
.L__profd___muldsi3:
	.long	2728610976                      # 0x42031a08a2a34ca0
	.long	1107499528
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___muldsi3-.L__profd___muldsi3
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldsi3, 48

	.type	.L__profc___muldi3_compiler_rt,@object # @__profc___muldi3_compiler_rt
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profc___muldi3_compiler_rt:
	.space	8
	.size	.L__profc___muldi3_compiler_rt, 8

	.type	.L__profd___muldi3_compiler_rt,@object # @__profd___muldi3_compiler_rt
	.section	__llvm_prf_data,"awG",@progbits,__profc___muldi3_compiler_rt
	.p2align	3, 0x0
.L__profd___muldi3_compiler_rt:
	.long	3866746773                      # 0xf5c319bbe679df95
	.long	4123204027
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 48

	.type	.L__profc___negdi2,@object      # @__profc___negdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profc___negdi2:
	.space	8
	.size	.L__profc___negdi2, 8

	.type	.L__profd___negdi2,@object      # @__profd___negdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___negdi2
	.p2align	3, 0x0
.L__profd___negdi2:
	.long	3064379771                      # 0xd9312c7bb6a6b97b
	.long	3643878523
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___negdi2-.L__profd___negdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___negdi2, 48

	.type	.L__profc___paritydi2,@object   # @__profc___paritydi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profc___paritydi2:
	.space	8
	.size	.L__profc___paritydi2, 8

	.type	.L__profd___paritydi2,@object   # @__profd___paritydi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritydi2
	.p2align	3, 0x0
.L__profd___paritydi2:
	.long	1043989739                      # 0xb92eea643e3a04eb
	.long	3106859620
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___paritydi2-.L__profd___paritydi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___paritydi2, 48

	.type	.L__profc___paritysi2,@object   # @__profc___paritysi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profc___paritysi2:
	.space	8
	.size	.L__profc___paritysi2, 8

	.type	.L__profd___paritysi2,@object   # @__profd___paritysi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___paritysi2
	.p2align	3, 0x0
.L__profd___paritysi2:
	.long	2433766622                      # 0x75e730a6911054de
	.long	1978085542
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___paritysi2-.L__profd___paritysi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___paritysi2, 48

	.type	.L__profc___popcountdi2,@object # @__profc___popcountdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profc___popcountdi2:
	.space	8
	.size	.L__profc___popcountdi2, 8

	.type	.L__profd___popcountdi2,@object # @__profd___popcountdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountdi2
	.p2align	3, 0x0
.L__profd___popcountdi2:
	.long	220067820                       # 0x3c43a5910d1df7ec
	.long	1011066257
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___popcountdi2-.L__profd___popcountdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountdi2, 48

	.type	.L__profc___popcountsi2,@object # @__profc___popcountsi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profc___popcountsi2:
	.space	8
	.size	.L__profc___popcountsi2, 8

	.type	.L__profd___popcountsi2,@object # @__profd___popcountsi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___popcountsi2
	.p2align	3, 0x0
.L__profd___popcountsi2:
	.long	1866676599                      # 0xe22c3cbb6f433977
	.long	3794549947
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___popcountsi2-.L__profd___popcountsi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountsi2, 48

	.type	.L__profc___powidf2,@object     # @__profc___powidf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profc___powidf2:
	.space	40
	.size	.L__profc___powidf2, 40

	.type	.L__profd___powidf2,@object     # @__profd___powidf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powidf2
	.p2align	3, 0x0
.L__profd___powidf2:
	.long	3451548981                      # 0xe7adb92dcdba7535
	.long	3886922029
	.long	3026146526                      # 0xbc6e6995b45f54de
	.long	3161352597
	.long	.L__profc___powidf2-.L__profd___powidf2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___powidf2, 48

	.type	.L__profc___powisf2,@object     # @__profc___powisf2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profc___powisf2:
	.space	40
	.size	.L__profc___powisf2, 40

	.type	.L__profd___powisf2,@object     # @__profd___powisf2
	.section	__llvm_prf_data,"awG",@progbits,__profc___powisf2
	.p2align	3, 0x0
.L__profd___powisf2:
	.long	3233246232                      # 0xcb298a26c0b76c18
	.long	3408497190
	.long	3026146526                      # 0xbc6e6995b45f54de
	.long	3161352597
	.long	.L__profc___powisf2-.L__profd___powisf2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___powisf2, 48

	.type	.L__profc___ucmpdi2,@object     # @__profc___ucmpdi2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profc___ucmpdi2:
	.space	40
	.size	.L__profc___ucmpdi2, 40

	.type	.L__profd___ucmpdi2,@object     # @__profd___ucmpdi2
	.section	__llvm_prf_data,"awG",@progbits,__profc___ucmpdi2
	.p2align	3, 0x0
.L__profd___ucmpdi2:
	.long	627836813                       # 0xe3a10322256c078d
	.long	3818980130
	.long	1422139388                      # 0x993642a254c41ffc
	.long	2570470050
	.long	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpdi2, 48

	.type	.L__profc___aeabi_ulcmp,@object # @__profc___aeabi_ulcmp
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profc___aeabi_ulcmp:
	.space	8
	.size	.L__profc___aeabi_ulcmp, 8

	.type	.L__profd___aeabi_ulcmp,@object # @__profd___aeabi_ulcmp
	.section	__llvm_prf_data,"awG",@progbits,__profc___aeabi_ulcmp
	.p2align	3, 0x0
.L__profd___aeabi_ulcmp:
	.long	2182691887                      # 0x639ff8782193c2f
	.long	104464263
	.long	24                              # 0x18
	.long	0
	.long	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.long	0                               # 0x0
	.long	0
	.long	0
	.long	1                               # 0x1
	.space	6
	.space	2
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
