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
	b .LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB0_11
	b .LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
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
	beq	%cr0, .LBB1_3
	b .LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lwz %r3, 16(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	stb %r3, 0(%r4)
	lwz %r4, 28(%r31)
	xor %r4, %r3, %r4
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB1_6
	b .LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	b .LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
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
.LBB1_6:
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB1_8
	b .LBB1_7
.LBB1_7:
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 40(%r31)
	b .LBB1_9
.LBB1_8:
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB1_9
.LBB1_9:
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
	beq	%cr0, .LBB2_3
	b .LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	lwz %r3, 28(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	xor %r4, %r3, %r4
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB2_6
	b .LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	b .LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	b .LBB2_1
.LBB2_6:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB2_8
	b .LBB2_7
.LBB2_7:
	lwz %r3, 28(%r31)
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB2_9
.LBB2_8:
	li %r3, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB2_9
.LBB2_9:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
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
	beq	%cr0, .LBB3_3
	b .LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, 28(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 24(%r31)
	lbz %r4, 0(%r4)
	xor %r3, %r3, %r4
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB3_6
	b .LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	b .LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB3_8
	b .LBB3_7
.LBB3_7:
	lwz %r3, 28(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB3_9
.LBB3_8:
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB3_9
.LBB3_9:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
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
	lwz %r3, 8(%r31)
	lwz %r4, 12(%r31)
	lbzx %r3, %r3, %r4
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB5_4
	b .LBB5_3
.LBB5_3:
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
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)
	b .LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB6_4
	b .LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
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
	lbz %r3, 20(%r31)
	stw %r3, 20(%r31)
	b .LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB8_3
	b .LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	xor %r4, %r3, %r4
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB8_6
	b .LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	b .LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB8_1
.LBB8_6:
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
	b .LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB9_3
	b .LBB9_2
.LBB9_2:
	lwz %r3, 20(%r31)
	stw %r3, 24(%r31)
	b .LBB9_6
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	b .LBB9_4
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	lwz %r3, 20(%r31)
	addi %r4, %r3, 1
	stw %r4, 20(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	bne	%cr0, .LBB9_1
	b .LBB9_5
.LBB9_5:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB9_6
.LBB9_6:
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
	b .LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 20(%r31)
	lbz %r5, 0(%r3)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB10_3
	b .LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB10_6
	b .LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	b .LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB10_1
.LBB10_6:
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
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB12_11
.LBB12_2:
	b .LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB12_7
	b .LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_3 Depth=1
	lwz %r3, 20(%r31)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB12_7
	b .LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_3 Depth=1
	lwz %r4, 28(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB12_7
	b .LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	lbz %r4, 0(%r4)
	xor %r3, %r3, %r4
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB12_10
	b .LBB12_8
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
	b .LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
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
.LBB12_10:
	lwz %r3, 24(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, 40(%r31)
	b .LBB12_11
.LBB12_11:
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
	lwz %r4, 24(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB16_2
	b .LBB16_1
.LBB16_1:
	lwz %r3, 24(%r31)
	xori %r3, %r3, 9
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB16_2
.LBB16_2:
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
	lwz %r4, 24(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB17_2
	b .LBB17_1
.LBB17_1:
	lwz %r3, 24(%r31)
	xori %r3, %r3, 127
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB17_2
.LBB17_2:
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
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lwz %r4, 24(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB22_4
	b .LBB22_1
.LBB22_1:
	lwz %r3, 24(%r31)
	addi %r3, %r3, -9
	cmplwi	%r3, 5
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB22_3
# %bb.2:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB22_3:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB22_4
.LBB22_4:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
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
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lwz %r4, 24(%r31)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_6
	b .LBB24_1
.LBB24_1:
	lwz %r3, 24(%r31)
	addi %r4, %r3, -127
	li %r3, 1
	cmplwi	%r4, 33
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_6
	b .LBB24_2
.LBB24_2:
	lwz %r3, 24(%r31)
	addi %r4, %r3, -8232
	li %r3, 1
	cmplwi	%r4, 2
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_6
	b .LBB24_3
.LBB24_3:
	lwz %r3, 24(%r31)
	addi %r3, %r3, 7
	addis %r3, %r3, -1
	cmplwi	%r3, 3
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_5
# %bb.4:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB24_5:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB24_6
.LBB24_6:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
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
	lwz %r3, 20(%r31)
	cmplwi	%r3, 254
	bgt	%cr0, .LBB26_4
	b .LBB26_1
.LBB26_1:
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
	b .LBB26_12
.LBB26_4:
	lwz %r3, 20(%r31)
	cmplwi	%r3, 8232
	blt	%cr0, .LBB26_7
	b .LBB26_5
.LBB26_5:
	lwz %r3, 20(%r31)
	addi %r3, %r3, -8234
	cmplwi	%r3, 47062
	blt	%cr0, .LBB26_7
	b .LBB26_6
.LBB26_6:
	lwz %r3, 20(%r31)
	addi %r3, %r3, 8192
	addis %r3, %r3, -1
	cmplwi	%r3, 8184
	bgt	%cr0, .LBB26_8
	b .LBB26_7
.LBB26_7:
	li %r3, 1
	stw %r3, 24(%r31)
	b .LBB26_12
.LBB26_8:
	lwz %r3, 20(%r31)
	addi %r3, %r3, 4
	addis %r3, %r3, -1
	lis %r4, 16
	ori %r4, %r4, 3
	cmplw	%r3, %r4
	bgt	%cr0, .LBB26_10
	b .LBB26_9
.LBB26_9:
	lwz %r3, 20(%r31)
	not	%r3, %r3
	rlwinm %r3, %r3, 0, 16, 30
	cmplwi	%r3, 0
	bne	%cr0, .LBB26_11
	b .LBB26_10
.LBB26_10:
	li %r3, 0
	stw %r3, 24(%r31)
	b .LBB26_12
.LBB26_11:
	li %r3, 1
	stw %r3, 24(%r31)
	b .LBB26_12
.LBB26_12:
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
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	lwz %r3, 24(%r31)
	addi %r4, %r3, -48
	li %r3, 1
	cmplwi	%r4, 10
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB27_4
	b .LBB27_1
.LBB27_1:
	lwz %r3, 24(%r31)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
	cmplwi	%r3, 6
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB27_3
# %bb.2:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB27_3:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB27_4
.LBB27_4:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
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
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB30_2
	b .LBB30_1
.LBB30_1:
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
	lwz %r3, 92(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB31_15
	b .LBB31_14
.LBB31_14:
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
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_2
	b .LBB32_1
.LBB32_1:
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
	lwz %r3, 20(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB32_7
	b .LBB32_6
.LBB32_6:
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
	lwz %r3, 116(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB33_15
	b .LBB33_14
.LBB33_14:
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
	lwz %r3, 92(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB34_15
	b .LBB34_14
.LBB34_14:
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
	lwz %r3, 20(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB35_2
	b .LBB35_1
.LBB35_1:
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
	lwz %r3, 20(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB35_7
	b .LBB35_6
.LBB35_6:
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
	lwz %r3, 116(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB36_15
	b .LBB36_14
.LBB36_14:
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
	lwz %r3, 24(%r31)
	stw %r3, 16(%r31)
	lwz %r3, 20(%r31)
	stw %r3, 12(%r31)
	lwz %r3, 12(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB40_2
	b .LBB40_1
.LBB40_1:
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
	lwz %r3, 24(%r31)
	stw %r3, 20(%r31)
	lwz %r3, 20(%r31)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB41_2
	b .LBB41_1
.LBB41_1:
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
	lwz %r3, 24(%r31)
	cmpwi	%r3, 1
	blt	%cr0, .LBB44_2
	b .LBB44_1
.LBB44_1:
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
	bne	%cr0, .LBB45_7
	b .LBB45_5
.LBB45_5:
	li %r3, 1
	stw %r3, 16(%r31)
	b .LBB45_6
.LBB45_6:
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB45_7
.LBB45_7:
	b .LBB45_8
.LBB45_8:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isdigit@ha
	la %r4, isdigit@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB45_10
	b .LBB45_9
.LBB45_9:                               #   in Loop: Header=BB45_8 Depth=1
	lwz %r3, 20(%r31)
	mulli %r4, %r3, 10
	lwz %r3, 24(%r31)
	addi %r5, %r3, 1
	stw %r5, 24(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	addi %r3, %r3, 48
	stw %r3, 20(%r31)
	b .LBB45_8
.LBB45_10:
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB45_12
	b .LBB45_11
.LBB45_11:
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB45_13
.LBB45_12:
	lwz %r3, 20(%r31)
	neg %r3, %r3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB45_13
.LBB45_13:
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
	bne	%cr0, .LBB46_7
	b .LBB46_5
.LBB46_5:
	li %r3, 1
	stw %r3, 16(%r31)
	b .LBB46_6
.LBB46_6:
	lwz %r3, 24(%r31)
	addi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB46_7
.LBB46_7:
	b .LBB46_8
.LBB46_8:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isdigit@ha
	la %r4, isdigit@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB46_10
	b .LBB46_9
.LBB46_9:                               #   in Loop: Header=BB46_8 Depth=1
	lwz %r3, 20(%r31)
	mulli %r4, %r3, 10
	lwz %r3, 24(%r31)
	addi %r5, %r3, 1
	stw %r5, 24(%r31)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	addi %r3, %r3, 48
	stw %r3, 20(%r31)
	b .LBB46_8
.LBB46_10:
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB46_12
	b .LBB46_11
.LBB46_11:
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB46_13
.LBB46_12:
	lwz %r3, 20(%r31)
	neg %r3, %r3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB46_13
.LBB46_13:
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
	bne	%cr0, .LBB47_7
	b .LBB47_5
.LBB47_5:
	li %r3, 1
	stw %r3, 28(%r31)
	b .LBB47_6
.LBB47_6:
	lwz %r3, 40(%r31)
	addi %r3, %r3, 1
	stw %r3, 40(%r31)
	b .LBB47_7
.LBB47_7:
	b .LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 40(%r31)
	lbz %r3, 0(%r3)
	lis %r4, isdigit@ha
	la %r4, isdigit@l(%r4)
	mtctr %r4
	bctrl
	cmplwi	%r3, 0
	beq	%cr0, .LBB47_10
	b .LBB47_9
.LBB47_9:                               #   in Loop: Header=BB47_8 Depth=1
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
	b .LBB47_8
.LBB47_10:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB47_12
	b .LBB47_11
.LBB47_11:
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB47_13
.LBB47_12:
	lwz %r4, 32(%r31)
	lwz %r3, 36(%r31)
	subfic %r4, %r4, 0
	subfze %r3, %r3
	stw %r4, 16(%r31)                       # 4-byte Folded Spill
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB47_13
.LBB47_13:
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
	b .LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB48_9
	b .LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
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
	lwz %r3, 16(%r31)
	stw %r3, 56(%r31)
	b .LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 1
	blt	%cr0, .LBB49_6
	b .LBB49_5
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
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
	lwz %r3, 24(%r31)
	cmpwi	%r3, 1
	blt	%cr0, .LBB53_2
	b .LBB53_1
.LBB53_1:
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
	b .LBB57_1
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB57_3
	b .LBB57_2
.LBB57_2:                               #   in Loop: Header=BB57_1 Depth=1
	lwz %r3, 24(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	xor %r4, %r3, %r4
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB57_3
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB57_6
	b .LBB57_4
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	b .LBB57_5
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r3, %r3, 4
	stw %r3, 24(%r31)
	b .LBB57_1
.LBB57_6:
	lwz %r3, 24(%r31)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB57_8
	b .LBB57_7
.LBB57_7:
	lwz %r3, 24(%r31)
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB57_9
.LBB57_8:
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB57_9
.LBB57_9:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
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
	b .LBB58_1
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	lwz %r3, 36(%r31)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB58_4
	b .LBB58_2
.LBB58_2:                               #   in Loop: Header=BB58_1 Depth=1
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB58_4
	b .LBB58_3
.LBB58_3:                               #   in Loop: Header=BB58_1 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	b .LBB58_4
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB58_7
	b .LBB58_5
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	b .LBB58_6
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	lwz %r3, 40(%r31)
	addi %r3, %r3, 4
	stw %r3, 40(%r31)
	lwz %r3, 36(%r31)
	addi %r3, %r3, 4
	stw %r3, 36(%r31)
	b .LBB58_1
.LBB58_7:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB58_9
	b .LBB58_8
.LBB58_8:
	li %r3, -1
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB58_12
.LBB58_9:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB58_11
# %bb.10:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
.LBB58_11:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB58_12
.LBB58_12:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
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
	b .LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB61_5
	b .LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	lwz %r3, 36(%r31)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	bne	%cr0, .LBB61_5
	b .LBB61_3
.LBB61_3:                               #   in Loop: Header=BB61_1 Depth=1
	lwz %r3, 40(%r31)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB61_5
	b .LBB61_4
.LBB61_4:                               #   in Loop: Header=BB61_1 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB61_5
.LBB61_5:                               #   in Loop: Header=BB61_1 Depth=1
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB61_8
	b .LBB61_6
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
	b .LBB61_7
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
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
.LBB61_8:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB61_15
	b .LBB61_9
.LBB61_9:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB61_11
	b .LBB61_10
.LBB61_10:
	li %r3, -1
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB61_14
.LBB61_11:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB61_13
# %bb.12:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB61_13:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB61_14
.LBB61_14:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB61_16
.LBB61_15:
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB61_16
.LBB61_16:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
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
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 24(%r31)
	stw %r4, 20(%r31)
	stw %r5, 16(%r31)
	b .LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 16(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB62_3
	b .LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	lwz %r3, 24(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	xor %r4, %r3, %r4
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB62_6
	b .LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	b .LBB62_5
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, -1
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	addi %r3, %r3, 4
	stw %r3, 24(%r31)
	b .LBB62_1
.LBB62_6:
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB62_8
	b .LBB62_7
.LBB62_7:
	lwz %r3, 24(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB62_9
.LBB62_8:
	li %r3, 0
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB62_9
.LBB62_9:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
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
	b .LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 32(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB63_3
	b .LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	xor %r3, %r3, %r4
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB63_6
	b .LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	b .LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_6:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB63_13
	b .LBB63_7
.LBB63_7:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB63_9
	b .LBB63_8
.LBB63_8:
	li %r3, -1
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB63_12
.LBB63_9:
	lwz %r3, 40(%r31)
	lwz %r3, 0(%r3)
	lwz %r4, 36(%r31)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB63_11
# %bb.10:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB63_11:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	b .LBB63_12
.LBB63_12:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB63_14
.LBB63_13:
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB63_14
.LBB63_14:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
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
	lwz %r3, 20(%r31)
	stw %r3, 8(%r31)
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB65_2
	b .LBB65_1
.LBB65_1:
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
	b .LBB65_4
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 12(%r31)
	addi %r4, %r3, -1
	stw %r4, 12(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB65_6
	b .LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_4 Depth=1
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
	b .LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB67_11
	b .LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
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
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB81_1
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 16(%r31)
	cmplwi	%r3, 31
	bgt	%cr0, .LBB81_6
	b .LBB81_2
.LBB81_2:                               #   in Loop: Header=BB81_1 Depth=1
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB81_4
	b .LBB81_3
.LBB81_3:
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
	lwz %r3, 20(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB82_2
	b .LBB82_1
.LBB82_1:
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
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	stw %r0, 36(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r4 killed $r3
	stw %r3, 24(%r31)
	lwz %r3, 24(%r31)
	lis %r4, -129
	ori %r4, %r4, 65535
	bl __ltsf2
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB83_4
	b .LBB83_1
.LBB83_1:
	lwz %r3, 24(%r31)
	lis %r4, 32639
	ori %r4, %r4, 65535
	bl __gtsf2
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB83_3
# %bb.2:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB83_3:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB83_4
.LBB83_4:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r0, 36(%r1)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
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
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	stw %r0, 52(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r5 killed $r4
                                        # kill: def $r5 killed $r3
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lis %r5, -17
	ori %r6, %r5, 65535
	li %r5, -1
	bl __ltdf2
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB84_4
	b .LBB84_1
.LBB84_1:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lis %r5, 32751
	ori %r6, %r5, 65535
	li %r5, -1
	bl __gtdf2
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB84_3
# %bb.2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
.LBB84_3:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB84_4
.LBB84_4:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r0, 52(%r1)
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
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
	stw %r6, 44(%r31)
	stw %r5, 40(%r31)
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r5, 40(%r31)
	lwz %r6, 44(%r31)
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
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB85_4
	b .LBB85_1
.LBB85_1:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	lwz %r5, 40(%r31)
	lwz %r6, 44(%r31)
	lis %r7, 32751
	ori %r8, %r7, 65535
	lis %r7, 31887
	ori %r10, %r7, 65535
	li %r7, -1
	li %r9, -2
	bl __gcc_qgt
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB85_3
# %bb.2:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
.LBB85_3:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	b .LBB85_4
.LBB85_4:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	lwz %r0, 68(%r1)
	lwz %r31, 60(%r1)
	addi %r1, %r1, 64
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
	lwz %r3, 40(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	cmpw	%r3, %r4
	bgt	%cr0, .LBB87_11
	b .LBB87_1
.LBB87_1:
	lwz %r4, 40(%r31)
	stw %r4, 28(%r31)                       # 4-byte Folded Spill
	mr	%r3, %r4
	bl __addsf3
	lwz %r4, 28(%r31)                       # 4-byte Folded Reload
	bl __eqsf2
	cmplwi	%r3, 0
	beq	%cr0, .LBB87_11
	b .LBB87_2
.LBB87_2:
	lwz %r3, 36(%r31)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	lis %r3, 16128
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB87_4
# %bb.3:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
.LBB87_4:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 32(%r31)
	b .LBB87_5
.LBB87_5:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 36(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmplwi	%r3, 0
	beq	%cr0, .LBB87_7
	b .LBB87_6
.LBB87_6:                               #   in Loop: Header=BB87_5 Depth=1
	lwz %r4, 32(%r31)
	lwz %r3, 40(%r31)
	bl __mulsf3
	stw %r3, 40(%r31)
	b .LBB87_7
.LBB87_7:                               #   in Loop: Header=BB87_5 Depth=1
	lwz %r3, 36(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 36(%r31)
	lwz %r3, 36(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB87_9
	b .LBB87_8
.LBB87_8:
	b .LBB87_10
.LBB87_9:                               #   in Loop: Header=BB87_5 Depth=1
	lwz %r4, 32(%r31)
	mr	%r3, %r4
	bl __mulsf3
	stw %r3, 32(%r31)
	b .LBB87_5
.LBB87_10:
	b .LBB87_11
.LBB87_11:
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
	stwu %r1, -80(%r1)
	stw %r31, 76(%r1)
	stw %r0, 84(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -4
	.cfi_offset lr, 4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	stw %r4, 68(%r31)
	stw %r3, 64(%r31)
	stw %r5, 60(%r31)
	lwz %r3, 64(%r31)
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	lwz %r3, 68(%r31)
	clrlwi	%r3, %r3, 1
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	lis %r4, 32752
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB88_2
# %bb.1:
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
.LBB88_2:
	lwz %r4, 36(%r31)                       # 4-byte Folded Reload
	lwz %r5, 32(%r31)                       # 4-byte Folded Reload
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	stw %r3, 24(%r31)                       # 4-byte Folded Spill
	addic %r3, %r5, -1
	subfe %r3, %r3, %r5
	xoris %r4, %r4, 32752
	cmplwi	%r4, 0
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB88_4
# %bb.3:
	lwz %r3, 24(%r31)                       # 4-byte Folded Reload
	stw %r3, 28(%r31)                       # 4-byte Folded Spill
.LBB88_4:
	lwz %r3, 28(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 0
	bne	%cr0, .LBB88_15
	b .LBB88_5
.LBB88_5:
	lwz %r5, 64(%r31)
	stw %r5, 16(%r31)                       # 4-byte Folded Spill
	lwz %r6, 68(%r31)
	stw %r6, 20(%r31)                       # 4-byte Folded Spill
	mr	%r3, %r5
	mr	%r4, %r6
	bl __adddf3
	lwz %r5, 16(%r31)                       # 4-byte Folded Reload
	lwz %r6, 20(%r31)                       # 4-byte Folded Reload
	bl __eqdf2
	cmplwi	%r3, 0
	beq	%cr0, .LBB88_15
	b .LBB88_6
.LBB88_6:
	lwz %r3, 60(%r31)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	lis %r3, 16352
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB88_8
# %bb.7:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
.LBB88_8:
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	li %r4, 0
	stw %r4, 48(%r31)
	stw %r3, 52(%r31)
	b .LBB88_9
.LBB88_9:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 60(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmplwi	%r3, 0
	beq	%cr0, .LBB88_11
	b .LBB88_10
.LBB88_10:                              #   in Loop: Header=BB88_9 Depth=1
	lwz %r5, 48(%r31)
	lwz %r6, 52(%r31)
	lwz %r3, 64(%r31)
	lwz %r4, 68(%r31)
	bl __muldf3
	stw %r4, 68(%r31)
	stw %r3, 64(%r31)
	b .LBB88_11
.LBB88_11:                              #   in Loop: Header=BB88_9 Depth=1
	lwz %r3, 60(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 60(%r31)
	lwz %r3, 60(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB88_13
	b .LBB88_12
.LBB88_12:
	b .LBB88_14
.LBB88_13:                              #   in Loop: Header=BB88_9 Depth=1
	lwz %r5, 48(%r31)
	lwz %r6, 52(%r31)
	mr	%r3, %r5
	mr	%r4, %r6
	bl __muldf3
	stw %r4, 52(%r31)
	stw %r3, 48(%r31)
	b .LBB88_9
.LBB88_14:
	b .LBB88_15
.LBB88_15:
	lwz %r3, 64(%r31)
	lwz %r4, 68(%r31)
	lwz %r0, 84(%r1)
	lwz %r31, 76(%r1)
	addi %r1, %r1, 80
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
	bne	%cr0, .LBB89_15
	b .LBB89_5
.LBB89_5:
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
	beq	%cr0, .LBB89_15
	b .LBB89_6
.LBB89_6:
	lwz %r3, 92(%r31)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	lis %r3, 16352
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB89_8
# %bb.7:
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
.LBB89_8:
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	li %r4, 0
	stw %r4, 76(%r31)
	stw %r4, 72(%r31)
	stw %r4, 64(%r31)
	stw %r3, 68(%r31)
	b .LBB89_9
.LBB89_9:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 92(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmplwi	%r3, 0
	beq	%cr0, .LBB89_11
	b .LBB89_10
.LBB89_10:                              #   in Loop: Header=BB89_9 Depth=1
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
	b .LBB89_11
.LBB89_11:                              #   in Loop: Header=BB89_9 Depth=1
	lwz %r3, 92(%r31)
	srawi %r3, %r3, 1
	addze %r3, %r3
	stw %r3, 92(%r31)
	lwz %r3, 92(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB89_13
	b .LBB89_12
.LBB89_12:
	b .LBB89_14
.LBB89_13:                              #   in Loop: Header=BB89_9 Depth=1
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
	b .LBB89_9
.LBB89_14:
	b .LBB89_15
.LBB89_15:
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
	beq	%cr0, .LBB91_3
	b .LBB91_2
.LBB91_2:                               #   in Loop: Header=BB91_1 Depth=1
	lwz %r3, 36(%r31)
	lbz %r4, 0(%r3)
	lwz %r3, 28(%r31)
	stb %r4, 0(%r3)
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB91_3
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB91_6
	b .LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	b .LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
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
.LBB91_6:
	lwz %r3, 32(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB91_8
	b .LBB91_7
.LBB91_7:
	lwz %r4, 28(%r31)
	li %r3, 0
	stb %r3, 0(%r4)
	b .LBB91_8
.LBB91_8:
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
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 16(%r31)
	lwz %r5, 20(%r31)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	bge %cr0, .LBB92_3
	b .LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	lwz %r3, 24(%r31)
	lwz %r4, 16(%r31)
	lbzx %r4, %r3, %r4
	addic %r3, %r4, -1
	subfe %r3, %r3, %r4
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	b .LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB92_6
	b .LBB92_4
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	b .LBB92_5
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	lwz %r3, 16(%r31)
	addi %r3, %r3, 1
	stw %r3, 16(%r31)
	b .LBB92_1
.LBB92_6:
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
	b .LBB93_1
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	beq	%cr0, .LBB93_8
	b .LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
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
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 20(%r31)
	cmplw	%r3, %r4
	bne	%cr0, .LBB94_3
	b .LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	lwz %r3, 24(%r31)
	stw %r3, 16(%r31)
	b .LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	b .LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	lwz %r3, 24(%r31)
	addi %r4, %r3, 1
	stw %r4, 24(%r31)
	lbz %r3, 0(%r3)
	cmplwi	%r3, 0
	bne	%cr0, .LBB94_1
	b .LBB94_5
.LBB94_5:
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
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB96_2
	b .LBB96_1
.LBB96_1:
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __gtdf2
	cmpwi	%r3, 0
	bgt	%cr0, .LBB96_4
	b .LBB96_2
.LBB96_2:
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __gtdf2
	cmpwi	%r3, 1
	blt	%cr0, .LBB96_5
	b .LBB96_3
.LBB96_3:
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB96_5
	b .LBB96_4
.LBB96_4:
	lwz %r4, 24(%r31)
	lwz %r3, 28(%r31)
	xoris %r3, %r3, 32768
	stw %r4, 32(%r31)
	stw %r3, 36(%r31)
	b .LBB96_6
.LBB96_5:
	lwz %r3, 24(%r31)
	lwz %r4, 28(%r31)
	stw %r4, 36(%r31)
	stw %r3, 32(%r31)
	b .LBB96_6
.LBB96_6:
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
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB97_12
.LBB97_2:
	lwz %r3, 32(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB97_4
	b .LBB97_3
.LBB97_3:
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB97_12
.LBB97_4:
	lwz %r3, 36(%r31)
	stw %r3, 20(%r31)
	b .LBB97_5
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	cmplw	%r3, %r4
	bgt	%cr0, .LBB97_11
	b .LBB97_6
.LBB97_6:                               #   in Loop: Header=BB97_5 Depth=1
	lwz %r3, 20(%r31)
	lbz %r3, 0(%r3)
	lwz %r4, 28(%r31)
	lbz %r4, 0(%r4)
	cmplw	%r3, %r4
	bne	%cr0, .LBB97_9
	b .LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_5 Depth=1
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
	bne	%cr0, .LBB97_9
	b .LBB97_8
.LBB97_8:
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB97_12
.LBB97_9:                               #   in Loop: Header=BB97_5 Depth=1
	b .LBB97_10
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB97_5
.LBB97_11:
	li %r3, 0
	stw %r3, 40(%r31)
	b .LBB97_12
.LBB97_12:
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
	b .LBB99_14
.LBB99_7:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r5, 0
	lis %r6, 16352
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB99_13
	b .LBB99_8
.LBB99_8:
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r6, 0
	mr	%r5, %r6
	bl __eqdf2
	cmplwi	%r3, 0
	beq	%cr0, .LBB99_13
	b .LBB99_9
.LBB99_9:
	b .LBB99_10
.LBB99_10:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	li %r5, 0
	lis %r6, 16352
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB99_12
	b .LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_10 Depth=1
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
	b .LBB99_10
.LBB99_12:
	b .LBB99_13
.LBB99_13:
	b .LBB99_14
.LBB99_14:
	lwz %r3, 20(%r31)
	lwz %r4, 28(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB99_16
	b .LBB99_15
.LBB99_15:
	lwz %r3, 36(%r31)
	xoris %r3, %r3, 32768
	stw %r3, 36(%r31)
	b .LBB99_16
.LBB99_16:
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
	lbz %r3, 8(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB100_4
	b .LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
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
	bge %cr0, .LBB101_4
	b .LBB101_2
.LBB101_2:                              #   in Loop: Header=BB101_1 Depth=1
	lwz %r4, 24(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB101_4
	b .LBB101_3
.LBB101_3:                              #   in Loop: Header=BB101_1 Depth=1
	lbz %r3, 35(%r31)
	srwi %r3, %r3, 7
	xori %r3, %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB101_4
.LBB101_4:                              #   in Loop: Header=BB101_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_6
	b .LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	lwz %r3, 32(%r31)
	slwi %r3, %r3, 1
	stw %r3, 32(%r31)
	lwz %r3, 24(%r31)
	slwi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB101_1
.LBB101_6:
	b .LBB101_7
.LBB101_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_11
	b .LBB101_8
.LBB101_8:                              #   in Loop: Header=BB101_7 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB101_10
	b .LBB101_9
.LBB101_9:                              #   in Loop: Header=BB101_7 Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	sub	%r3, %r4, %r3
	stw %r3, 36(%r31)
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	or %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB101_10
.LBB101_10:                             #   in Loop: Header=BB101_7 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 1
	stw %r3, 32(%r31)
	b .LBB101_7
.LBB101_11:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_13
	b .LBB101_12
.LBB101_12:
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB101_14
.LBB101_13:
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB101_14
.LBB101_14:
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
	lbz %r3, 23(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB102_2
	b .LBB102_1
.LBB102_1:
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
	lwz %r3, 36(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB103_2
	b .LBB103_1
.LBB103_1:
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
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB104_1
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB104_5
	b .LBB104_2
.LBB104_2:                              #   in Loop: Header=BB104_1 Depth=1
	lbz %r3, 24(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB104_4
	b .LBB104_3
.LBB104_3:                              #   in Loop: Header=BB104_1 Depth=1
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
	blt	%cr0, .LBB105_2
	b .LBB105_1
.LBB105_1:
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	lwz %r5, 32(%r31)
	add %r4, %r4, %r5
	cmplw	%r3, %r4
	ble %cr0, .LBB105_10
	b .LBB105_2
.LBB105_2:
	li %r3, 0
	stw %r3, 28(%r31)
	b .LBB105_3
.LBB105_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB105_6
	b .LBB105_4
.LBB105_4:                              #   in Loop: Header=BB105_3 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 28(%r31)
	slwi %r6, %r4, 3
	lwzux %r5, %r3, %r6
	lwz %r3, 4(%r3)
	lwz %r4, 40(%r31)
	stwux %r5, %r4, %r6
	stw %r3, 4(%r4)
	b .LBB105_5
.LBB105_5:                              #   in Loop: Header=BB105_3 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	b .LBB105_3
.LBB105_6:
	b .LBB105_7
.LBB105_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 20(%r31)
	cmplw	%r3, %r4
	ble %cr0, .LBB105_9
	b .LBB105_8
.LBB105_8:                              #   in Loop: Header=BB105_7 Depth=1
	lwz %r3, 12(%r31)
	lwz %r5, 20(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB105_7
.LBB105_9:
	b .LBB105_14
.LBB105_10:
	b .LBB105_11
.LBB105_11:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	addi %r4, %r3, -1
	stw %r4, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB105_13
	b .LBB105_12
.LBB105_12:                             #   in Loop: Header=BB105_11 Depth=1
	lwz %r3, 12(%r31)
	lwz %r5, 32(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	b .LBB105_11
.LBB105_13:
	b .LBB105_14
.LBB105_14:
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
	blt	%cr0, .LBB106_2
	b .LBB106_1
.LBB106_1:
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	lwz %r5, 32(%r31)
	add %r4, %r4, %r5
	cmplw	%r3, %r4
	ble %cr0, .LBB106_9
	b .LBB106_2
.LBB106_2:
	li %r3, 0
	stw %r3, 28(%r31)
	b .LBB106_3
.LBB106_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB106_6
	b .LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_3 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 28(%r31)
	slwi %r5, %r4, 1
	lhzx %r3, %r3, %r5
	lwz %r4, 40(%r31)
	sthx %r3, %r4, %r5
	b .LBB106_5
.LBB106_5:                              #   in Loop: Header=BB106_3 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	b .LBB106_3
.LBB106_6:
	lbz %r3, 32(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB106_8
	b .LBB106_7
.LBB106_7:
	lwz %r3, 16(%r31)
	lwz %r4, 32(%r31)
	addi %r5, %r4, -1
	lbzx %r3, %r3, %r5
	lwz %r4, 20(%r31)
	stbx %r3, %r4, %r5
	b .LBB106_8
.LBB106_8:
	b .LBB106_13
.LBB106_9:
	b .LBB106_10
.LBB106_10:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	addi %r4, %r3, -1
	stw %r4, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB106_12
	b .LBB106_11
.LBB106_11:                             #   in Loop: Header=BB106_10 Depth=1
	lwz %r3, 16(%r31)
	lwz %r5, 32(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 20(%r31)
	stbx %r3, %r4, %r5
	b .LBB106_10
.LBB106_12:
	b .LBB106_13
.LBB106_13:
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
	blt	%cr0, .LBB107_2
	b .LBB107_1
.LBB107_1:
	lwz %r3, 16(%r31)
	lwz %r4, 12(%r31)
	lwz %r5, 32(%r31)
	add %r4, %r4, %r5
	cmplw	%r3, %r4
	ble %cr0, .LBB107_10
	b .LBB107_2
.LBB107_2:
	li %r3, 0
	stw %r3, 28(%r31)
	b .LBB107_3
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 28(%r31)
	lwz %r4, 24(%r31)
	cmplw	%r3, %r4
	bge %cr0, .LBB107_6
	b .LBB107_4
.LBB107_4:                              #   in Loop: Header=BB107_3 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 28(%r31)
	slwi %r5, %r4, 2
	lwzx %r3, %r3, %r5
	lwz %r4, 40(%r31)
	stwx %r3, %r4, %r5
	b .LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	lwz %r3, 28(%r31)
	addi %r3, %r3, 1
	stw %r3, 28(%r31)
	b .LBB107_3
.LBB107_6:
	b .LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 20(%r31)
	cmplw	%r3, %r4
	ble %cr0, .LBB107_9
	b .LBB107_8
.LBB107_8:                              #   in Loop: Header=BB107_7 Depth=1
	lwz %r3, 12(%r31)
	lwz %r5, 20(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	lwz %r3, 20(%r31)
	addi %r3, %r3, 1
	stw %r3, 20(%r31)
	b .LBB107_7
.LBB107_9:
	b .LBB107_14
.LBB107_10:
	b .LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, 32(%r31)
	addi %r4, %r3, -1
	stw %r4, 32(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB107_13
	b .LBB107_12
.LBB107_12:                             #   in Loop: Header=BB107_11 Depth=1
	lwz %r3, 12(%r31)
	lwz %r5, 32(%r31)
	lbzx %r3, %r3, %r5
	lwz %r4, 16(%r31)
	stbx %r3, %r4, %r5
	b .LBB107_11
.LBB107_13:
	b .LBB107_14
.LBB107_14:
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
	li %r3, 0
	stw %r3, 20(%r31)
	b .LBB114_1
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 15
	bgt	%cr0, .LBB114_6
	b .LBB114_2
.LBB114_2:                              #   in Loop: Header=BB114_1 Depth=1
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	subfic %r4, %r4, 15
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB114_4
	b .LBB114_3
.LBB114_3:
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
	li %r3, 0
	stw %r3, 20(%r31)
	b .LBB115_1
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 20(%r31)
	cmpwi	%r3, 15
	bgt	%cr0, .LBB115_6
	b .LBB115_2
.LBB115_2:                              #   in Loop: Header=BB115_1 Depth=1
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB115_4
	b .LBB115_3
.LBB115_3:
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
	lwz %r3, 20(%r31)
	lis %r4, 18176
	bl __gesf2
	cmpwi	%r3, 0
	blt	%cr0, .LBB116_2
	b .LBB116_1
.LBB116_1:
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
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB117_4
	b .LBB117_3
.LBB117_3:                              #   in Loop: Header=BB117_1 Depth=1
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
	lhz %r3, 26(%r31)
	lwz %r4, 20(%r31)
	srw %r3, %r3, %r4
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB118_4
	b .LBB118_3
.LBB118_3:                              #   in Loop: Header=BB118_1 Depth=1
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
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB119_5
	b .LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	lbz %r3, 24(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB119_4
	b .LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
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
	li %r3, 0
	stw %r3, 12(%r31)
	lwz %r3, 20(%r31)
	cmplwi	%r3, 0
	bne	%cr0, .LBB120_2
	b .LBB120_1
.LBB120_1:
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
	lbz %r3, 16(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB120_6
	b .LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_3 Depth=1
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
	bge %cr0, .LBB121_4
	b .LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	lwz %r4, 24(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB121_4
	b .LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	lbz %r3, 35(%r31)
	srwi %r3, %r3, 7
	xori %r3, %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB121_6
	b .LBB121_5
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	lwz %r3, 32(%r31)
	slwi %r3, %r3, 1
	stw %r3, 32(%r31)
	lwz %r3, 24(%r31)
	slwi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB121_1
.LBB121_6:
	b .LBB121_7
.LBB121_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB121_11
	b .LBB121_8
.LBB121_8:                              #   in Loop: Header=BB121_7 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB121_10
	b .LBB121_9
.LBB121_9:                              #   in Loop: Header=BB121_7 Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	sub	%r3, %r4, %r3
	stw %r3, 36(%r31)
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	or %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB121_10
.LBB121_10:                             #   in Loop: Header=BB121_7 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 1
	stw %r3, 32(%r31)
	b .LBB121_7
.LBB121_11:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB121_13
	b .LBB121_12
.LBB121_12:
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB121_14
.LBB121_13:
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB121_14
.LBB121_14:
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
	lwz %r3, 20(%r31)
	lwz %r4, 16(%r31)
	bl __ltsf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB122_2
	b .LBB122_1
.LBB122_1:
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
	lwz %r3, 16(%r31)
	lwz %r4, 20(%r31)
	lwz %r5, 8(%r31)
	lwz %r6, 12(%r31)
	bl __ltdf2
	cmpwi	%r3, -1
	bgt	%cr0, .LBB123_2
	b .LBB123_1
.LBB123_1:
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
	stwu %r1, -48(%r1)
	stw %r31, 44(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	stw %r3, 40(%r31)
	stw %r4, 36(%r31)
	li %r3, 0
	stw %r3, 28(%r31)
	stw %r3, 24(%r31)
	lwz %r3, 36(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB126_2
	b .LBB126_1
.LBB126_1:
	lwz %r3, 36(%r31)
	neg %r3, %r3
	stw %r3, 36(%r31)
	li %r3, 1
	stw %r3, 28(%r31)
	b .LBB126_2
.LBB126_2:
	li %r3, 0
	stb %r3, 35(%r31)
	b .LBB126_3
.LBB126_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, 36(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB126_7
	b .LBB126_4
.LBB126_4:                              #   in Loop: Header=BB126_3 Depth=1
	lbz %r3, 35(%r31)
	cmplwi	%r3, 32
	li %r3, 0
	stw %r3, 12(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB126_6
# %bb.5:                                #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 12(%r31)                       # 4-byte Folded Reload
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	stw %r3, 20(%r31)                       # 4-byte Folded Spill
	b .LBB126_7
.LBB126_7:                              #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 20(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB126_12
	b .LBB126_8
.LBB126_8:                              #   in Loop: Header=BB126_3 Depth=1
	lbz %r3, 36(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB126_10
	b .LBB126_9
.LBB126_9:                              #   in Loop: Header=BB126_3 Depth=1
	lwz %r4, 40(%r31)
	lwz %r3, 24(%r31)
	add %r3, %r3, %r4
	stw %r3, 24(%r31)
	b .LBB126_10
.LBB126_10:                             #   in Loop: Header=BB126_3 Depth=1
	lwz %r3, 40(%r31)
	slwi %r3, %r3, 1
	stw %r3, 40(%r31)
	lwz %r3, 36(%r31)
	srawi %r3, %r3, 1
	stw %r3, 36(%r31)
	b .LBB126_11
.LBB126_11:                             #   in Loop: Header=BB126_3 Depth=1
	lbz %r3, 35(%r31)
	addi %r3, %r3, 1
	stb %r3, 35(%r31)
	b .LBB126_3
.LBB126_12:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB126_14
	b .LBB126_13
.LBB126_13:
	lwz %r3, 24(%r31)
	neg %r3, %r3
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB126_15
.LBB126_14:
	lwz %r3, 24(%r31)
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB126_15
.LBB126_15:
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	lwz %r31, 44(%r1)
	addi %r1, %r1, 48
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
	li %r3, 0
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB127_2
	b .LBB127_1
.LBB127_1:
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
	li %r3, 0
	stw %r3, 16(%r31)
	lwz %r3, 24(%r31)
	cmpwi	%r3, -1
	bgt	%cr0, .LBB128_2
	b .LBB128_1
.LBB128_1:
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
	stwu %r1, -32(%r1)
	stw %r31, 28(%r1)
	.cfi_def_cfa_offset 32
	.cfi_offset r31, -4
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r6 killed $r4
                                        # kill: def $r6 killed $r3
	sth %r3, 24(%r31)
	sth %r4, 22(%r31)
	stw %r5, 16(%r31)
	li %r3, 1
	sth %r3, 14(%r31)
	li %r3, 0
	sth %r3, 12(%r31)
	b .LBB129_1
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	lhz %r4, 22(%r31)
	lhz %r5, 24(%r31)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	bge %cr0, .LBB129_4
	b .LBB129_2
.LBB129_2:                              #   in Loop: Header=BB129_1 Depth=1
	lhz %r4, 14(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	beq	%cr0, .LBB129_4
	b .LBB129_3
.LBB129_3:                              #   in Loop: Header=BB129_1 Depth=1
	lhz %r3, 22(%r31)
	srwi %r3, %r3, 15
	xori %r3, %r3, 1
	stw %r3, 8(%r31)                        # 4-byte Folded Spill
	b .LBB129_4
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
	lwz %r3, 8(%r31)                        # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB129_6
	b .LBB129_5
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	lhz %r3, 22(%r31)
	slwi %r3, %r3, 1
	sth %r3, 22(%r31)
	lhz %r3, 14(%r31)
	slwi %r3, %r3, 1
	sth %r3, 14(%r31)
	b .LBB129_1
.LBB129_6:
	b .LBB129_7
.LBB129_7:                              # =>This Inner Loop Header: Depth=1
	lhz %r3, 14(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB129_11
	b .LBB129_8
.LBB129_8:                              #   in Loop: Header=BB129_7 Depth=1
	lhz %r3, 24(%r31)
	lhz %r4, 22(%r31)
	cmpw	%r3, %r4
	blt	%cr0, .LBB129_10
	b .LBB129_9
.LBB129_9:                              #   in Loop: Header=BB129_7 Depth=1
	lhz %r3, 22(%r31)
	lhz %r4, 24(%r31)
	sub	%r3, %r4, %r3
	sth %r3, 24(%r31)
	lhz %r4, 14(%r31)
	lhz %r3, 12(%r31)
	or %r3, %r3, %r4
	sth %r3, 12(%r31)
	b .LBB129_10
.LBB129_10:                             #   in Loop: Header=BB129_7 Depth=1
	lhz %r3, 14(%r31)
	srwi %r3, %r3, 1
	sth %r3, 14(%r31)
	lhz %r3, 22(%r31)
	srwi %r3, %r3, 1
	sth %r3, 22(%r31)
	b .LBB129_7
.LBB129_11:
	lwz %r3, 16(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB129_13
	b .LBB129_12
.LBB129_12:
	lhz %r3, 24(%r31)
	sth %r3, 26(%r31)
	b .LBB129_14
.LBB129_13:
	lhz %r3, 12(%r31)
	sth %r3, 26(%r31)
	b .LBB129_14
.LBB129_14:
	lhz %r3, 26(%r31)
	lwz %r31, 28(%r1)
	addi %r1, %r1, 32
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
	bge %cr0, .LBB130_4
	b .LBB130_2
.LBB130_2:                              #   in Loop: Header=BB130_1 Depth=1
	lwz %r4, 24(%r31)
	li %r3, 0
	cmplwi	%r4, 0
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	beq	%cr0, .LBB130_4
	b .LBB130_3
.LBB130_3:                              #   in Loop: Header=BB130_1 Depth=1
	lbz %r3, 35(%r31)
	srwi %r3, %r3, 7
	xori %r3, %r3, 1
	stw %r3, 16(%r31)                       # 4-byte Folded Spill
	b .LBB130_4
.LBB130_4:                              #   in Loop: Header=BB130_1 Depth=1
	lwz %r3, 16(%r31)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB130_6
	b .LBB130_5
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	lwz %r3, 32(%r31)
	slwi %r3, %r3, 1
	stw %r3, 32(%r31)
	lwz %r3, 24(%r31)
	slwi %r3, %r3, 1
	stw %r3, 24(%r31)
	b .LBB130_1
.LBB130_6:
	b .LBB130_7
.LBB130_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 24(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB130_11
	b .LBB130_8
.LBB130_8:                              #   in Loop: Header=BB130_7 Depth=1
	lwz %r3, 36(%r31)
	lwz %r4, 32(%r31)
	cmplw	%r3, %r4
	blt	%cr0, .LBB130_10
	b .LBB130_9
.LBB130_9:                              #   in Loop: Header=BB130_7 Depth=1
	lwz %r3, 32(%r31)
	lwz %r4, 36(%r31)
	sub	%r3, %r4, %r3
	stw %r3, 36(%r31)
	lwz %r4, 24(%r31)
	lwz %r3, 20(%r31)
	or %r3, %r3, %r4
	stw %r3, 20(%r31)
	b .LBB130_10
.LBB130_10:                             #   in Loop: Header=BB130_7 Depth=1
	lwz %r3, 24(%r31)
	srwi %r3, %r3, 1
	stw %r3, 24(%r31)
	lwz %r3, 32(%r31)
	srwi %r3, %r3, 1
	stw %r3, 32(%r31)
	b .LBB130_7
.LBB130_11:
	lwz %r3, 28(%r31)
	cmplwi	%r3, 0
	beq	%cr0, .LBB130_13
	b .LBB130_12
.LBB130_12:
	lwz %r3, 36(%r31)
	stw %r3, 40(%r31)
	b .LBB130_14
.LBB130_13:
	lwz %r3, 20(%r31)
	stw %r3, 40(%r31)
	b .LBB130_14
.LBB130_14:
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
	lwz %r3, 28(%r31)
	srwi %r3, %r3, 31
	stw %r3, 24(%r31)
	lis %r3, 16368
	stw %r3, 20(%r31)
	li %r3, 0
	stw %r3, 16(%r31)
	b .LBB147_1
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	lbz %r3, 28(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB147_3
	b .LBB147_2
.LBB147_2:                              #   in Loop: Header=BB147_1 Depth=1
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
	lwz %r3, 20(%r31)
	srwi %r3, %r3, 31
	stw %r3, 16(%r31)
	lis %r3, 16256
	stw %r3, 12(%r31)
	b .LBB148_1
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
	lbz %r3, 20(%r31)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB148_3
	b .LBB148_2
.LBB148_2:                              #   in Loop: Header=BB148_1 Depth=1
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
