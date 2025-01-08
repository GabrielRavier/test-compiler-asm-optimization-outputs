	.text
	.abiversion 2
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	4
	.type	make_ti,@function
.Lfunc_toc0:                            # @make_ti
	.quad	.TOC.-.Lfunc_gep0
make_ti:
.Lfunc_begin0:
	.cfi_startproc
.Lfunc_gep0:
	ld %r2, .Lfunc_toc0-.Lfunc_gep0(%r12)
	add %r2, %r2, %r12
.Lfunc_lep0:
	.localentry	make_ti, .Lfunc_lep0-.Lfunc_gep0
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC0@toc@ha
	ld %r4, .LC0@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-.Lfunc_begin0
	.cfi_endproc
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	4
	.type	make_tu,@function
.Lfunc_toc1:                            # @make_tu
	.quad	.TOC.-.Lfunc_gep1
make_tu:
.Lfunc_begin1:
	.cfi_startproc
.Lfunc_gep1:
	ld %r2, .Lfunc_toc1-.Lfunc_gep1(%r12)
	add %r2, %r2, %r12
.Lfunc_lep1:
	.localentry	make_tu, .Lfunc_lep1-.Lfunc_gep1
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC1@toc@ha
	ld %r4, .LC1@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-.Lfunc_begin1
	.cfi_endproc
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	4
	.type	memmove,@function
.Lfunc_toc2:                            # @memmove
	.quad	.TOC.-.Lfunc_gep2
memmove:
.Lfunc_begin2:
	.cfi_startproc
.Lfunc_gep2:
	ld %r2, .Lfunc_toc2-.Lfunc_gep2(%r12)
	add %r2, %r2, %r12
.Lfunc_lep2:
	.localentry	memmove, .Lfunc_lep2-.Lfunc_gep2
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC2@toc@ha
	ld %r3, .LC2@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC2@toc@ha
	ld %r4, .LC2@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB2_6
# %bb.1:
	addis %r3, %r2, .LC2@toc@ha
	ld %r3, .LC2@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC2@toc@ha
	ld %r4, .LC2@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r4, -32(%r1)
	ld %r3, -48(%r1)
	add %r3, %r3, %r4
	std %r3, -48(%r1)
	ld %r4, -32(%r1)
	ld %r3, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -40(%r1)
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	addis %r3, %r2, .LC2@toc@ha
	ld %r3, .LC2@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC2@toc@ha
	ld %r4, .LC2@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	addi %r4, %r3, -1
	std %r4, -48(%r1)
	lbz %r3, -1(%r3)
	ld %r4, -40(%r1)
	addi %r5, %r4, -1
	std %r5, -40(%r1)
	stb %r3, -1(%r4)
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB2_2
.LBB2_5:
	b .LBB2_13
.LBB2_6:
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	cmpd	%r3, %r4
	beq	%cr0, .LBB2_12
# %bb.7:
	addis %r3, %r2, .LC2@toc@ha
	ld %r3, .LC2@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC2@toc@ha
	ld %r4, .LC2@toc@l(%r4)
	std %r3, 24(%r4)
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	addis %r3, %r2, .LC2@toc@ha
	ld %r3, .LC2@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC2@toc@ha
	ld %r4, .LC2@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -48(%r1)
	addi %r4, %r3, 1
	std %r4, -48(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -40(%r1)
	addi %r5, %r4, 1
	std %r5, -40(%r1)
	stb %r3, 0(%r4)
# %bb.10:                               #   in Loop: Header=BB2_8 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB2_8
.LBB2_11:
	b .LBB2_12
.LBB2_12:
	b .LBB2_13
.LBB2_13:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-.Lfunc_begin2
	.cfi_endproc
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	4
	.type	memccpy,@function
.Lfunc_toc3:                            # @memccpy
	.quad	.TOC.-.Lfunc_gep3
memccpy:
.Lfunc_begin3:
	.cfi_startproc
.Lfunc_gep3:
	ld %r2, .Lfunc_toc3-.Lfunc_gep3(%r12)
	add %r2, %r2, %r12
.Lfunc_lep3:
	.localentry	memccpy, .Lfunc_lep3-.Lfunc_gep3
# %bb.0:
	std %r5, -72(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -72(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -24(%r1)
	std %r4, -32(%r1)
	stw %r3, -36(%r1)
	std %r6, -48(%r1)
	addis %r3, %r2, .LC3@toc@ha
	ld %r3, .LC3@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -56(%r1)
	ld %r3, -32(%r1)
	std %r3, -64(%r1)
	lwz %r3, -36(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -36(%r1)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -76(%r1)
	beq	%cr0, .LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	addis %r3, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -64(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -56(%r1)
	stb %r3, 0(%r4)
	lwz %r4, -36(%r1)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -80(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -76(%r1)
	beq	%cr0, .LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r4, -80(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC3@toc@ha
	ld %r3, .LC3@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -76(%r1)
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r4, -76(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB3_7
	b .LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	addis %r3, %r2, .LC3@toc@ha
	ld %r3, .LC3@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	ld %r3, -48(%r1)
	addi %r3, %r3, -1
	std %r3, -48(%r1)
	ld %r3, -64(%r1)
	addi %r3, %r3, 1
	std %r3, -64(%r1)
	ld %r3, -56(%r1)
	addi %r3, %r3, 1
	std %r3, -56(%r1)
	b .LBB3_1
.LBB3_7:
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB3_9
# %bb.8:
	addis %r3, %r2, .LC3@toc@ha
	ld %r3, .LC3@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -56(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB3_10
.LBB3_9:
	li %r3, 0
	std %r3, -16(%r1)
.LBB3_10:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-.Lfunc_begin3
	.cfi_endproc
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	4
	.type	memchr,@function
.Lfunc_toc4:                            # @memchr
	.quad	.TOC.-.Lfunc_gep4
memchr:
.Lfunc_begin4:
	.cfi_startproc
.Lfunc_gep4:
	ld %r2, .Lfunc_toc4-.Lfunc_gep4(%r12)
	add %r2, %r2, %r12
.Lfunc_lep4:
	.localentry	memchr, .Lfunc_lep4-.Lfunc_gep4
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	lwz %r3, -20(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -20(%r1)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -52(%r1)
	beq	%cr0, .LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	addis %r3, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -20(%r1)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -56(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -52(%r1)
	beq	%cr0, .LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r4, -56(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -52(%r1)
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r4, -52(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB4_7
	b .LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB4_1 Depth=1
	ld %r3, -40(%r1)
	addi %r3, %r3, 1
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB4_1
.LBB4_7:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB4_9
# %bb.8:
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -40(%r1)
	std %r3, -64(%r1)                       # 8-byte Folded Spill
	b .LBB4_10
.LBB4_9:
	li %r3, 0
	std %r3, -64(%r1)                       # 8-byte Folded Spill
	b .LBB4_10
.LBB4_10:
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-.Lfunc_begin4
	.cfi_endproc
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	4
	.type	memcmp,@function
.Lfunc_toc5:                            # @memcmp
	.quad	.TOC.-.Lfunc_gep5
memcmp:
.Lfunc_begin5:
	.cfi_startproc
.Lfunc_gep5:
	ld %r2, .Lfunc_toc5-.Lfunc_gep5(%r12)
	add %r2, %r2, %r12
.Lfunc_lep5:
	.localentry	memcmp, .Lfunc_lep5-.Lfunc_gep5
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -52(%r1)
	beq	%cr0, .LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	addis %r3, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -56(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -52(%r1)
	bne	%cr0, .LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	lwz %r4, -56(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -52(%r1)
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	lwz %r4, -52(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB5_7
	b .LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	ld %r3, -40(%r1)
	addi %r3, %r3, 1
	std %r3, -40(%r1)
	ld %r3, -48(%r1)
	addi %r3, %r3, 1
	std %r3, -48(%r1)
	b .LBB5_1
.LBB5_7:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB5_9
# %bb.8:
	addis %r3, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, -40(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -48(%r1)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	b .LBB5_10
.LBB5_9:
	li %r3, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	b .LBB5_10
.LBB5_10:
	lwz %r3, -60(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-.Lfunc_begin5
	.cfi_endproc
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	4
	.type	memcpy,@function
.Lfunc_toc6:                            # @memcpy
	.quad	.TOC.-.Lfunc_gep6
memcpy:
.Lfunc_begin6:
	.cfi_startproc
.Lfunc_gep6:
	ld %r2, .Lfunc_toc6-.Lfunc_gep6(%r12)
	add %r2, %r2, %r12
.Lfunc_lep6:
	.localentry	memcpy, .Lfunc_lep6-.Lfunc_gep6
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC6@toc@ha
	ld %r3, .LC6@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC6@toc@ha
	ld %r4, .LC6@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	addis %r3, %r2, .LC6@toc@ha
	ld %r3, .LC6@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC6@toc@ha
	ld %r4, .LC6@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -48(%r1)
	addi %r4, %r3, 1
	std %r4, -48(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -40(%r1)
	addi %r5, %r4, 1
	std %r5, -40(%r1)
	stb %r3, 0(%r4)
# %bb.3:                                #   in Loop: Header=BB6_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB6_1
.LBB6_4:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-.Lfunc_begin6
	.cfi_endproc
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	4
	.type	memrchr,@function
.Lfunc_toc7:                            # @memrchr
	.quad	.TOC.-.Lfunc_gep7
memrchr:
.Lfunc_begin7:
	.cfi_startproc
.Lfunc_gep7:
	ld %r2, .Lfunc_toc7-.Lfunc_gep7(%r12)
	add %r2, %r2, %r12
.Lfunc_lep7:
	.localentry	memrchr, .Lfunc_lep7-.Lfunc_gep7
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	std %r5, -40(%r1)
	addis %r3, %r2, .LC7@toc@ha
	ld %r3, .LC7@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	lwz %r3, -28(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -28(%r1)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -40(%r1)
	addi %r4, %r3, -1
	std %r4, -40(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB7_5
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	addis %r3, %r2, .LC7@toc@ha
	ld %r3, .LC7@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	lwz %r4, -28(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB7_4
# %bb.3:
	addis %r3, %r2, .LC7@toc@ha
	ld %r3, .LC7@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -16(%r1)
	b .LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	b .LBB7_1
.LBB7_5:
	li %r3, 0
	std %r3, -16(%r1)
.LBB7_6:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-.Lfunc_begin7
	.cfi_endproc
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	4
	.type	memset,@function
.Lfunc_toc8:                            # @memset
	.quad	.TOC.-.Lfunc_gep8
memset:
.Lfunc_begin8:
	.cfi_startproc
.Lfunc_gep8:
	ld %r2, .Lfunc_toc8-.Lfunc_gep8(%r12)
	add %r2, %r2, %r12
.Lfunc_lep8:
	.localentry	memset, .Lfunc_lep8-.Lfunc_gep8
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC8@toc@ha
	ld %r3, .LC8@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC8@toc@ha
	ld %r4, .LC8@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	addis %r3, %r2, .LC8@toc@ha
	ld %r3, .LC8@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC8@toc@ha
	ld %r4, .LC8@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -20(%r1)
	ld %r4, -40(%r1)
	stb %r3, 0(%r4)
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	ld %r3, -40(%r1)
	addi %r3, %r3, 1
	std %r3, -40(%r1)
	b .LBB8_1
.LBB8_4:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end8:
	.size	memset, .Lfunc_end8-.Lfunc_begin8
	.cfi_endproc
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	4
	.type	stpcpy,@function
.Lfunc_toc9:                            # @stpcpy
	.quad	.TOC.-.Lfunc_gep9
stpcpy:
.Lfunc_begin9:
	.cfi_startproc
.Lfunc_gep9:
	ld %r2, .Lfunc_toc9-.Lfunc_gep9(%r12)
	add %r2, %r2, %r12
.Lfunc_lep9:
	.localentry	stpcpy, .Lfunc_lep9-.Lfunc_gep9
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC9@toc@ha
	ld %r3, .LC9@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r4)
	std %r3, 0(%r4)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -16(%r1)
	stb %r3, 0(%r4)
	extsb %r3, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	addis %r3, %r2, .LC9@toc@ha
	ld %r3, .LC9@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	ld %r3, -24(%r1)
	addi %r3, %r3, 1
	std %r3, -24(%r1)
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB9_1
.LBB9_4:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-.Lfunc_begin9
	.cfi_endproc
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	4
	.type	strchrnul,@function
.Lfunc_toc10:                           # @strchrnul
	.quad	.TOC.-.Lfunc_gep10
strchrnul:
.Lfunc_begin10:
	.cfi_startproc
.Lfunc_gep10:
	ld %r2, .Lfunc_toc10-.Lfunc_gep10(%r12)
	add %r2, %r2, %r12
.Lfunc_lep10:
	.localentry	strchrnul, .Lfunc_lep10-.Lfunc_gep10
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC10@toc@ha
	ld %r3, .LC10@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -20(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -20(%r1)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB10_4
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	addis %r3, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -20(%r1)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -40(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	lwz %r4, -40(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC10@toc@ha
	ld %r3, .LC10@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r4, -36(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB10_7
	b .LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	addis %r3, %r2, .LC10@toc@ha
	ld %r3, .LC10@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB10_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB10_1
.LBB10_7:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-.Lfunc_begin10
	.cfi_endproc
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	4
	.type	strchr,@function
.Lfunc_toc11:                           # @strchr
	.quad	.TOC.-.Lfunc_gep11
strchr:
.Lfunc_begin11:
	.cfi_startproc
.Lfunc_gep11:
	ld %r2, .Lfunc_toc11-.Lfunc_gep11(%r12)
	add %r2, %r2, %r12
.Lfunc_lep11:
	.localentry	strchr, .Lfunc_lep11-.Lfunc_gep11
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC11@toc@ha
	ld %r3, .LC11@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r4)
	std %r3, 0(%r4)
	b .LBB11_2
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	addis %r3, %r2, .LC11@toc@ha
	ld %r3, .LC11@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r4)
	std %r3, 8(%r4)
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -28(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB11_4
# %bb.3:
	addis %r3, %r2, .LC11@toc@ha
	ld %r3, .LC11@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB11_7
.LBB11_4:                               #   in Loop: Header=BB11_2 Depth=1
	b .LBB11_5
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	ld %r3, -24(%r1)
	addi %r4, %r3, 1
	std %r4, -24(%r1)
	lbz %r3, 0(%r3)
	extsb %r3, %r3
	cmpwi	%r3, 0
	bne	%cr0, .LBB11_1
# %bb.6:
	li %r3, 0
	std %r3, -16(%r1)
.LBB11_7:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-.Lfunc_begin11
	.cfi_endproc
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	4
	.type	strcmp,@function
.Lfunc_toc12:                           # @strcmp
	.quad	.TOC.-.Lfunc_gep12
strcmp:
.Lfunc_begin12:
	.cfi_startproc
.Lfunc_gep12:
	ld %r2, .Lfunc_toc12-.Lfunc_gep12(%r12)
	add %r2, %r2, %r12
.Lfunc_lep12:
	.localentry	strcmp, .Lfunc_lep12-.Lfunc_gep12
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC12@toc@ha
	ld %r3, .LC12@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC12@toc@ha
	ld %r4, .LC12@toc@l(%r4)
	std %r3, 0(%r4)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -28(%r1)
	bne	%cr0, .LBB12_4
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	addis %r3, %r2, .LC12@toc@ha
	ld %r4, .LC12@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -32(%r1)
	cmpwi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -28(%r1)
	beq	%cr0, .LBB12_4
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	lwz %r4, -32(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC12@toc@ha
	ld %r3, .LC12@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC12@toc@ha
	ld %r4, .LC12@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -28(%r1)
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	lwz %r4, -28(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB12_7
	b .LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	addis %r3, %r2, .LC12@toc@ha
	ld %r3, .LC12@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC12@toc@ha
	ld %r4, .LC12@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB12_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	addi %r3, %r3, 1
	std %r3, -24(%r1)
	b .LBB12_1
.LBB12_7:
	ld %r3, -16(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-.Lfunc_begin12
	.cfi_endproc
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	4
	.type	strlen,@function
.Lfunc_toc13:                           # @strlen
	.quad	.TOC.-.Lfunc_gep13
strlen:
.Lfunc_begin13:
	.cfi_startproc
.Lfunc_gep13:
	ld %r2, .Lfunc_toc13-.Lfunc_gep13(%r12)
	add %r2, %r2, %r12
.Lfunc_lep13:
	.localentry	strlen, .Lfunc_lep13-.Lfunc_gep13
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC13@toc@ha
	ld %r3, .LC13@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC13@toc@ha
	ld %r4, .LC13@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	extsb %r3, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	addis %r3, %r2, .LC13@toc@ha
	ld %r3, .LC13@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC13@toc@ha
	ld %r4, .LC13@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB13_1
.LBB13_4:
	ld %r4, -16(%r1)
	ld %r3, -24(%r1)
	sub	%r3, %r4, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-.Lfunc_begin13
	.cfi_endproc
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	4
	.type	strncmp,@function
.Lfunc_toc14:                           # @strncmp
	.quad	.TOC.-.Lfunc_gep14
strncmp:
.Lfunc_begin14:
	.cfi_startproc
.Lfunc_gep14:
	ld %r2, .Lfunc_toc14-.Lfunc_gep14(%r12)
	add %r2, %r2, %r12
.Lfunc_lep14:
	.localentry	strncmp, .Lfunc_lep14-.Lfunc_gep14
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	std %r5, -40(%r1)
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -32(%r1)
	std %r3, -56(%r1)
	ld %r3, -40(%r1)
	addi %r4, %r3, -1
	std %r4, -40(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB14_2
# %bb.1:
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB14_14
.LBB14_2:
	b .LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -48(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -60(%r1)
	beq	%cr0, .LBB14_10
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 56(%r4)
	ld %r3, -56(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -60(%r1)
	beq	%cr0, .LBB14_10
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 64(%r4)
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 40(%r4)
	ld %r3, -40(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -60(%r1)
	beq	%cr0, .LBB14_10
# %bb.7:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.8:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, -48(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -56(%r1)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -64(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -60(%r1)
	bne	%cr0, .LBB14_10
# %bb.9:                                #   in Loop: Header=BB14_3 Depth=1
	lwz %r4, -64(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 32(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -60(%r1)
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	lwz %r4, -60(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB14_13
	b .LBB14_11
.LBB14_11:                              #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 16(%r4)
# %bb.12:                               #   in Loop: Header=BB14_3 Depth=1
	ld %r3, -48(%r1)
	addi %r3, %r3, 1
	std %r3, -48(%r1)
	ld %r3, -56(%r1)
	addi %r3, %r3, 1
	std %r3, -56(%r1)
	ld %r3, -40(%r1)
	addi %r3, %r3, -1
	std %r3, -40(%r1)
	b .LBB14_3
.LBB14_13:
	ld %r3, -48(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -56(%r1)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, -12(%r1)
.LBB14_14:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-.Lfunc_begin14
	.cfi_endproc
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	4
	.type	swab,@function
.Lfunc_toc15:                           # @swab
	.quad	.TOC.-.Lfunc_gep15
swab:
.Lfunc_begin15:
	.cfi_startproc
.Lfunc_gep15:
	ld %r2, .Lfunc_toc15-.Lfunc_gep15(%r12)
	add %r2, %r2, %r12
.Lfunc_lep15:
	.localentry	swab, .Lfunc_lep15-.Lfunc_gep15
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC15@toc@ha
	ld %r3, .LC15@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC15@toc@ha
	ld %r4, .LC15@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 1
	ble %cr0, .LBB15_4
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	addis %r3, %r2, .LC15@toc@ha
	ld %r3, .LC15@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC15@toc@ha
	ld %r4, .LC15@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -40(%r1)
	lbz %r3, 1(%r3)
	ld %r4, -48(%r1)
	stb %r3, 0(%r4)
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	stb %r3, 1(%r4)
	ld %r3, -48(%r1)
	addi %r3, %r3, 2
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	addi %r3, %r3, 2
	std %r3, -40(%r1)
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -2
	std %r3, -32(%r1)
	b .LBB15_1
.LBB15_4:
	blr
	.long	0
	.quad	0
.Lfunc_end15:
	.size	swab, .Lfunc_end15-.Lfunc_begin15
	.cfi_endproc
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	4
	.type	isalpha,@function
.Lfunc_toc16:                           # @isalpha
	.quad	.TOC.-.Lfunc_gep16
isalpha:
.Lfunc_begin16:
	.cfi_startproc
.Lfunc_gep16:
	ld %r2, .Lfunc_toc16-.Lfunc_gep16(%r12)
	add %r2, %r2, %r12
.Lfunc_lep16:
	.localentry	isalpha, .Lfunc_lep16-.Lfunc_gep16
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC16@toc@ha
	ld %r4, .LC16@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
	cmplwi	%r3, 26
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB16_2
# %bb.1:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB16_2:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-.Lfunc_begin16
	.cfi_endproc
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	4
	.type	isascii,@function
.Lfunc_toc17:                           # @isascii
	.quad	.TOC.-.Lfunc_gep17
isascii:
.Lfunc_begin17:
	.cfi_startproc
.Lfunc_gep17:
	ld %r2, .Lfunc_toc17-.Lfunc_gep17(%r12)
	add %r2, %r2, %r12
.Lfunc_lep17:
	.localentry	isascii, .Lfunc_lep17-.Lfunc_gep17
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC17@toc@ha
	ld %r4, .LC17@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	rlwinm %r3, %r3, 0, 0, 24
	cmpwi	%r3, 0
                                        # kill: def $cr5lt killed $cr0eq killed $cr0
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 27, 31, 31
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-.Lfunc_begin17
	.cfi_endproc
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	4
	.type	isblank,@function
.Lfunc_toc18:                           # @isblank
	.quad	.TOC.-.Lfunc_gep18
isblank:
.Lfunc_begin18:
	.cfi_startproc
.Lfunc_gep18:
	ld %r2, .Lfunc_toc18-.Lfunc_gep18(%r12)
	add %r2, %r2, %r12
.Lfunc_lep18:
	.localentry	isblank, .Lfunc_lep18-.Lfunc_gep18
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC18@toc@ha
	ld %r3, .LC18@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC18@toc@ha
	ld %r4, .LC18@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	cmpwi	%r3, 32
	lis %r3, -32768
	stw %r3, -16(%r1)
	beq	%cr0, .LBB18_3
# %bb.1:
	addis %r3, %r2, .LC18@toc@ha
	ld %r4, .LC18@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	cmpwi	%r3, 9
	crmove	4*cr5+lt, eq
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -20(%r1)
	cmpwi	%r3, 9
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
	beq	%cr0, .LBB18_3
# %bb.2:
	lwz %r4, -20(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC18@toc@ha
	ld %r3, .LC18@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC18@toc@ha
	ld %r4, .LC18@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
.LBB18_3:
	lwz %r4, -16(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB18_5
# %bb.4:
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
.LBB18_5:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-.Lfunc_begin18
	.cfi_endproc
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	4
	.type	iscntrl,@function
.Lfunc_toc19:                           # @iscntrl
	.quad	.TOC.-.Lfunc_gep19
iscntrl:
.Lfunc_begin19:
	.cfi_startproc
.Lfunc_gep19:
	ld %r2, .Lfunc_toc19-.Lfunc_gep19(%r12)
	add %r2, %r2, %r12
.Lfunc_lep19:
	.localentry	iscntrl, .Lfunc_lep19-.Lfunc_gep19
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC19@toc@ha
	ld %r3, .LC19@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC19@toc@ha
	ld %r4, .LC19@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	cmplwi	%r3, 32
	lis %r3, -32768
	stw %r3, -16(%r1)
	blt	%cr0, .LBB19_3
# %bb.1:
	addis %r3, %r2, .LC19@toc@ha
	ld %r4, .LC19@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	cmpwi	%r3, 127
	crmove	4*cr5+lt, eq
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -20(%r1)
	cmpwi	%r3, 127
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
	beq	%cr0, .LBB19_3
# %bb.2:
	lwz %r4, -20(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC19@toc@ha
	ld %r3, .LC19@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC19@toc@ha
	ld %r4, .LC19@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
.LBB19_3:
	lwz %r4, -16(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB19_5
# %bb.4:
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
.LBB19_5:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-.Lfunc_begin19
	.cfi_endproc
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	4
	.type	isdigit,@function
.Lfunc_toc20:                           # @isdigit
	.quad	.TOC.-.Lfunc_gep20
isdigit:
.Lfunc_begin20:
	.cfi_startproc
.Lfunc_gep20:
	ld %r2, .Lfunc_toc20-.Lfunc_gep20(%r12)
	add %r2, %r2, %r12
.Lfunc_lep20:
	.localentry	isdigit, .Lfunc_lep20-.Lfunc_gep20
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC20@toc@ha
	ld %r4, .LC20@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -48
	cmplwi	%r3, 10
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB20_2
# %bb.1:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB20_2:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-.Lfunc_begin20
	.cfi_endproc
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	4
	.type	isgraph,@function
.Lfunc_toc21:                           # @isgraph
	.quad	.TOC.-.Lfunc_gep21
isgraph:
.Lfunc_begin21:
	.cfi_startproc
.Lfunc_gep21:
	ld %r2, .Lfunc_toc21-.Lfunc_gep21(%r12)
	add %r2, %r2, %r12
.Lfunc_lep21:
	.localentry	isgraph, .Lfunc_lep21-.Lfunc_gep21
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC21@toc@ha
	ld %r4, .LC21@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -33
	cmplwi	%r3, 94
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB21_2
# %bb.1:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB21_2:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-.Lfunc_begin21
	.cfi_endproc
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	4
	.type	islower,@function
.Lfunc_toc22:                           # @islower
	.quad	.TOC.-.Lfunc_gep22
islower:
.Lfunc_begin22:
	.cfi_startproc
.Lfunc_gep22:
	ld %r2, .Lfunc_toc22-.Lfunc_gep22(%r12)
	add %r2, %r2, %r12
.Lfunc_lep22:
	.localentry	islower, .Lfunc_lep22-.Lfunc_gep22
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC22@toc@ha
	ld %r4, .LC22@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -97
	cmplwi	%r3, 26
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB22_2
# %bb.1:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB22_2:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end22:
	.size	islower, .Lfunc_end22-.Lfunc_begin22
	.cfi_endproc
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	4
	.type	isprint,@function
.Lfunc_toc23:                           # @isprint
	.quad	.TOC.-.Lfunc_gep23
isprint:
.Lfunc_begin23:
	.cfi_startproc
.Lfunc_gep23:
	ld %r2, .Lfunc_toc23-.Lfunc_gep23(%r12)
	add %r2, %r2, %r12
.Lfunc_lep23:
	.localentry	isprint, .Lfunc_lep23-.Lfunc_gep23
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC23@toc@ha
	ld %r4, .LC23@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -32
	cmplwi	%r3, 95
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB23_2
# %bb.1:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB23_2:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-.Lfunc_begin23
	.cfi_endproc
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	4
	.type	isspace,@function
.Lfunc_toc24:                           # @isspace
	.quad	.TOC.-.Lfunc_gep24
isspace:
.Lfunc_begin24:
	.cfi_startproc
.Lfunc_gep24:
	ld %r2, .Lfunc_toc24-.Lfunc_gep24(%r12)
	add %r2, %r2, %r12
.Lfunc_lep24:
	.localentry	isspace, .Lfunc_lep24-.Lfunc_gep24
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC24@toc@ha
	ld %r3, .LC24@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC24@toc@ha
	ld %r4, .LC24@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	cmpwi	%r3, 32
	lis %r3, -32768
	stw %r3, -16(%r1)
	beq	%cr0, .LBB24_3
# %bb.1:
	addis %r3, %r2, .LC24@toc@ha
	ld %r4, .LC24@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -9
	cmplwi	%r3, 5
	crmove	4*cr5+lt, lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -20(%r1)
	cmplwi	%r3, 5
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
	blt	%cr0, .LBB24_3
# %bb.2:
	lwz %r4, -20(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC24@toc@ha
	ld %r3, .LC24@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC24@toc@ha
	ld %r4, .LC24@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
.LBB24_3:
	lwz %r4, -16(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB24_5
# %bb.4:
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
.LBB24_5:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-.Lfunc_begin24
	.cfi_endproc
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	4
	.type	isupper,@function
.Lfunc_toc25:                           # @isupper
	.quad	.TOC.-.Lfunc_gep25
isupper:
.Lfunc_begin25:
	.cfi_startproc
.Lfunc_gep25:
	ld %r2, .Lfunc_toc25-.Lfunc_gep25(%r12)
	add %r2, %r2, %r12
.Lfunc_lep25:
	.localentry	isupper, .Lfunc_lep25-.Lfunc_gep25
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC25@toc@ha
	ld %r4, .LC25@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -65
	cmplwi	%r3, 26
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB25_2
# %bb.1:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB25_2:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-.Lfunc_begin25
	.cfi_endproc
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	4
	.type	iswcntrl,@function
.Lfunc_toc26:                           # @iswcntrl
	.quad	.TOC.-.Lfunc_gep26
iswcntrl:
.Lfunc_begin26:
	.cfi_startproc
.Lfunc_gep26:
	ld %r2, .Lfunc_toc26-.Lfunc_gep26(%r12)
	add %r2, %r2, %r12
.Lfunc_lep26:
	.localentry	iswcntrl, .Lfunc_lep26-.Lfunc_gep26
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC26@toc@ha
	ld %r3, .LC26@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	cmplwi	%r3, 32
	lis %r3, -32768
	stw %r3, -16(%r1)
	blt	%cr0, .LBB26_7
# %bb.1:
	addis %r3, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -127
	cmplwi	%r3, 33
	lis %r3, -32768
	stw %r3, -16(%r1)
	blt	%cr0, .LBB26_7
# %bb.2:
	addis %r3, %r2, .LC26@toc@ha
	ld %r3, .LC26@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.3:
	addis %r3, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -8232
	cmplwi	%r3, 2
	lis %r3, -32768
	stw %r3, -16(%r1)
	blt	%cr0, .LBB26_7
# %bb.4:
	addis %r3, %r2, .LC26@toc@ha
	ld %r3, .LC26@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r4)
	std %r3, 32(%r4)
# %bb.5:
	addis %r3, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, 7
	addis %r3, %r3, -1
	cmplwi	%r3, 3
	crmove	4*cr5+lt, lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -20(%r1)
	cmplwi	%r3, 3
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
	blt	%cr0, .LBB26_7
# %bb.6:
	lwz %r4, -20(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC26@toc@ha
	ld %r3, .LC26@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
.LBB26_7:
	lwz %r4, -16(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB26_9
# %bb.8:
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
.LBB26_9:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-.Lfunc_begin26
	.cfi_endproc
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	4
	.type	iswdigit,@function
.Lfunc_toc27:                           # @iswdigit
	.quad	.TOC.-.Lfunc_gep27
iswdigit:
.Lfunc_begin27:
	.cfi_startproc
.Lfunc_gep27:
	ld %r2, .Lfunc_toc27-.Lfunc_gep27(%r12)
	add %r2, %r2, %r12
.Lfunc_lep27:
	.localentry	iswdigit, .Lfunc_lep27-.Lfunc_gep27
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC27@toc@ha
	ld %r4, .LC27@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -48
	cmplwi	%r3, 10
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB27_2
# %bb.1:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB27_2:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-.Lfunc_begin27
	.cfi_endproc
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	4
	.type	iswprint,@function
.Lfunc_toc28:                           # @iswprint
	.quad	.TOC.-.Lfunc_gep28
iswprint:
.Lfunc_begin28:
	.cfi_startproc
.Lfunc_gep28:
	ld %r2, .Lfunc_toc28-.Lfunc_gep28(%r12)
	add %r2, %r2, %r12
.Lfunc_lep28:
	.localentry	iswprint, .Lfunc_lep28-.Lfunc_gep28
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -16(%r1)
	cmplwi	%r3, 255
	bge %cr0, .LBB28_4
# %bb.1:
	addis %r3, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -16(%r1)
	addi %r3, %r3, 1
	clrlwi	%r3, %r3, 25
	cmpwi	%r3, 32
	crmove	4*cr5+lt, gt
	li %r3, 0
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB28_3
# %bb.2:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
.LBB28_3:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -12(%r1)
	b .LBB28_15
.LBB28_4:
	lwz %r3, -16(%r1)
	cmplwi	%r3, 8232
	blt	%cr0, .LBB28_9
# %bb.5:
	addis %r3, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, -16(%r1)
	addi %r3, %r3, -8234
	cmplwi	%r3, 47062
	blt	%cr0, .LBB28_9
# %bb.6:
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.7:
	addis %r3, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, -16(%r1)
	addi %r3, %r3, 8192
	addis %r3, %r3, -1
	cmplwi	%r3, 8185
	blt	%cr0, .LBB28_9
# %bb.8:
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 32(%r4)
	b .LBB28_10
.LBB28_9:
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 1
	stw %r3, -12(%r1)
	b .LBB28_15
.LBB28_10:
	lwz %r3, -16(%r1)
	addi %r3, %r3, 4
	addis %r3, %r3, -1
	lis %r4, 16
	ori %r4, %r4, 3
	cmplw	%r3, %r4
	bgt	%cr0, .LBB28_13
# %bb.11:
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 64(%r4)
	lwz %r3, -16(%r1)
	lis %r4, 0
	ori %r4, %r4, 65534
	and %r3, %r3, %r4
	lis %r4, 0
	ori %r4, %r4, 65534
	cmpw	%r3, %r4
	beq	%cr0, .LBB28_13
# %bb.12:
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 72(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 72(%r4)
	b .LBB28_14
.LBB28_13:
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 56(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB28_15
.LBB28_14:
	li %r3, 1
	stw %r3, -12(%r1)
.LBB28_15:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-.Lfunc_begin28
	.cfi_endproc
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	4
	.type	iswxdigit,@function
.Lfunc_toc29:                           # @iswxdigit
	.quad	.TOC.-.Lfunc_gep29
iswxdigit:
.Lfunc_begin29:
	.cfi_startproc
.Lfunc_gep29:
	ld %r2, .Lfunc_toc29-.Lfunc_gep29(%r12)
	add %r2, %r2, %r12
.Lfunc_lep29:
	.localentry	iswxdigit, .Lfunc_lep29-.Lfunc_gep29
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -48
	cmplwi	%r3, 10
	lis %r3, -32768
	stw %r3, -16(%r1)
	blt	%cr0, .LBB29_3
# %bb.1:
	addis %r3, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
	cmplwi	%r3, 6
	crmove	4*cr5+lt, lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -20(%r1)
	cmplwi	%r3, 6
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
	blt	%cr0, .LBB29_3
# %bb.2:
	lwz %r4, -20(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC29@toc@ha
	ld %r3, .LC29@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -16(%r1)
.LBB29_3:
	lwz %r4, -16(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB29_5
# %bb.4:
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
.LBB29_5:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-.Lfunc_begin29
	.cfi_endproc
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	4
	.type	toascii,@function
.Lfunc_toc30:                           # @toascii
	.quad	.TOC.-.Lfunc_gep30
toascii:
.Lfunc_begin30:
	.cfi_startproc
.Lfunc_gep30:
	ld %r2, .Lfunc_toc30-.Lfunc_gep30(%r12)
	add %r2, %r2, %r12
.Lfunc_lep30:
	.localentry	toascii, .Lfunc_lep30-.Lfunc_gep30
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC30@toc@ha
	ld %r3, .LC30@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC30@toc@ha
	ld %r4, .LC30@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	li %r4, 127
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-.Lfunc_begin30
	.cfi_endproc
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	4
	.type	fdim,@function
.Lfunc_toc31:                           # @fdim
	.quad	.TOC.-.Lfunc_gep31
fdim:
.Lfunc_begin31:
	.cfi_startproc
.Lfunc_gep31:
	ld %r2, .Lfunc_toc31-.Lfunc_gep31(%r12)
	add %r2, %r2, %r12
.Lfunc_lep31:
	.localentry	fdim, .Lfunc_lep31-.Lfunc_gep31
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 56(%r31)
	std %r4, 48(%r31)
	addis %r3, %r2, .LC31@toc@ha
	ld %r4, .LC31@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 56(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB31_2
	b .LBB31_1
.LBB31_1:
	addis %r3, %r2, .LC31@toc@ha
	ld %r4, .LC31@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 56(%r31)
	std %r3, 64(%r31)
	b .LBB31_8
.LBB31_2:
	ld %r3, 48(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB31_4
	b .LBB31_3
.LBB31_3:
	addis %r3, %r2, .LC31@toc@ha
	ld %r4, .LC31@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 48(%r31)
	std %r3, 64(%r31)
	b .LBB31_8
.LBB31_4:
	ld %r3, 56(%r31)
	ld %r4, 48(%r31)
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB31_6
	b .LBB31_5
.LBB31_5:
	addis %r3, %r2, .LC31@toc@ha
	ld %r4, .LC31@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 56(%r31)
	ld %r4, 48(%r31)
	bl __subdf3
	nop
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB31_7
.LBB31_6:
	li %r3, 0
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB31_7
.LBB31_7:
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	std %r3, 64(%r31)
.LBB31_8:
	ld %r3, 64(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-.Lfunc_begin31
	.cfi_endproc
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	4
	.type	fdimf,@function
.Lfunc_toc32:                           # @fdimf
	.quad	.TOC.-.Lfunc_gep32
fdimf:
.Lfunc_begin32:
	.cfi_startproc
.Lfunc_gep32:
	ld %r2, .Lfunc_toc32-.Lfunc_gep32(%r12)
	add %r2, %r2, %r12
.Lfunc_lep32:
	.localentry	fdimf, .Lfunc_lep32-.Lfunc_gep32
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 48(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 64(%r31)
	stw %r3, 60(%r31)
	addis %r3, %r2, .LC32@toc@ha
	ld %r4, .LC32@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 64(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_2
	b .LBB32_1
.LBB32_1:
	addis %r3, %r2, .LC32@toc@ha
	ld %r4, .LC32@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 64(%r31)
	stw %r3, 68(%r31)
	b .LBB32_8
.LBB32_2:
	lwz %r3, 60(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_4
	b .LBB32_3
.LBB32_3:
	addis %r3, %r2, .LC32@toc@ha
	ld %r4, .LC32@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, 60(%r31)
	stw %r3, 68(%r31)
	b .LBB32_8
.LBB32_4:
	lwz %r3, 64(%r31)
	lwz %r4, 60(%r31)
	bl __gtsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB32_6
	b .LBB32_5
.LBB32_5:
	addis %r3, %r2, .LC32@toc@ha
	ld %r4, .LC32@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 64(%r31)
	lwz %r4, 60(%r31)
	bl __subsf3
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB32_7
.LBB32_6:
	li %r3, 0
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB32_7
.LBB32_7:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)
.LBB32_8:
	lwz %r3, 68(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-.Lfunc_begin32
	.cfi_endproc
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	4
	.type	fmax,@function
.Lfunc_toc33:                           # @fmax
	.quad	.TOC.-.Lfunc_gep33
fmax:
.Lfunc_begin33:
	.cfi_startproc
.Lfunc_gep33:
	ld %r2, .Lfunc_toc33-.Lfunc_gep33(%r12)
	add %r2, %r2, %r12
.Lfunc_lep33:
	.localentry	fmax, .Lfunc_lep33-.Lfunc_gep33
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 56(%r31)
	std %r4, 48(%r31)
	addis %r3, %r2, .LC33@toc@ha
	ld %r4, .LC33@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 56(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB33_2
	b .LBB33_1
.LBB33_1:
	addis %r3, %r2, .LC33@toc@ha
	ld %r4, .LC33@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 48(%r31)
	std %r3, 64(%r31)
	b .LBB33_13
.LBB33_2:
	ld %r3, 48(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB33_4
	b .LBB33_3
.LBB33_3:
	addis %r3, %r2, .LC33@toc@ha
	ld %r4, .LC33@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 56(%r31)
	std %r3, 64(%r31)
	b .LBB33_13
.LBB33_4:
	ld %r3, 56(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 48(%r31)
	cmpdi	%r4, 0
                                        # kill: def $cr5lt killed $cr0lt killed $cr0
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
	cmpw	%r3, %r4
	beq	%cr0, .LBB33_9
# %bb.5:
	addis %r3, %r2, .LC33@toc@ha
	ld %r4, .LC33@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 56(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB33_7
# %bb.6:
	addis %r3, %r2, .LC33@toc@ha
	ld %r4, .LC33@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 48(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB33_8
.LBB33_7:
	ld %r3, 56(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB33_8
.LBB33_8:
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	std %r3, 64(%r31)
	b .LBB33_13
.LBB33_9:
	ld %r3, 56(%r31)
	ld %r4, 48(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB33_11
	b .LBB33_10
.LBB33_10:
	addis %r3, %r2, .LC33@toc@ha
	ld %r4, .LC33@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 48(%r31)
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	b .LBB33_12
.LBB33_11:
	ld %r3, 56(%r31)
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	b .LBB33_12
.LBB33_12:
	ld %r3, 32(%r31)                        # 8-byte Folded Reload
	std %r3, 64(%r31)
.LBB33_13:
	ld %r3, 64(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-.Lfunc_begin33
	.cfi_endproc
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	4
	.type	fmaxf,@function
.Lfunc_toc34:                           # @fmaxf
	.quad	.TOC.-.Lfunc_gep34
fmaxf:
.Lfunc_begin34:
	.cfi_startproc
.Lfunc_gep34:
	ld %r2, .Lfunc_toc34-.Lfunc_gep34(%r12)
	add %r2, %r2, %r12
.Lfunc_lep34:
	.localentry	fmaxf, .Lfunc_lep34-.Lfunc_gep34
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 48(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 64(%r31)
	stw %r3, 60(%r31)
	addis %r3, %r2, .LC34@toc@ha
	ld %r4, .LC34@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 64(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB34_2
	b .LBB34_1
.LBB34_1:
	addis %r3, %r2, .LC34@toc@ha
	ld %r4, .LC34@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 60(%r31)
	stw %r3, 68(%r31)
	b .LBB34_13
.LBB34_2:
	lwz %r3, 60(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB34_4
	b .LBB34_3
.LBB34_3:
	addis %r3, %r2, .LC34@toc@ha
	ld %r4, .LC34@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, 64(%r31)
	stw %r3, 68(%r31)
	b .LBB34_13
.LBB34_4:
	lwz %r3, 64(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 60(%r31)
	cmpwi	%r4, 0
                                        # kill: def $cr5lt killed $cr0lt killed $cr0
	srwi %r4, %r4, 31
	cmpw	%r3, %r4
	beq	%cr0, .LBB34_9
# %bb.5:
	addis %r3, %r2, .LC34@toc@ha
	ld %r4, .LC34@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 64(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB34_7
# %bb.6:
	addis %r3, %r2, .LC34@toc@ha
	ld %r4, .LC34@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	lwz %r3, 60(%r31)
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB34_8
.LBB34_7:
	lwz %r3, 64(%r31)
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB34_8
.LBB34_8:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)
	b .LBB34_13
.LBB34_9:
	lwz %r3, 64(%r31)
	lwz %r4, 60(%r31)
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB34_11
	b .LBB34_10
.LBB34_10:
	addis %r3, %r2, .LC34@toc@ha
	ld %r4, .LC34@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 60(%r31)
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	b .LBB34_12
.LBB34_11:
	lwz %r3, 64(%r31)
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	b .LBB34_12
.LBB34_12:
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)
.LBB34_13:
	lwz %r3, 68(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-.Lfunc_begin34
	.cfi_endproc
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	4
	.type	fmaxl,@function
.Lfunc_toc35:                           # @fmaxl
	.quad	.TOC.-.Lfunc_gep35
fmaxl:
.Lfunc_begin35:
	.cfi_startproc
.Lfunc_gep35:
	ld %r2, .Lfunc_toc35-.Lfunc_gep35(%r12)
	add %r2, %r2, %r12
.Lfunc_lep35:
	.localentry	fmaxl, .Lfunc_lep35-.Lfunc_gep35
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -128(%r1)
	std %r0, 144(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 80(%r31)
	std %r4, 88(%r31)
	std %r6, 72(%r31)
	std %r5, 64(%r31)
	addis %r3, %r2, .LC35@toc@ha
	ld %r4, .LC35@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 88(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB35_2
	b .LBB35_1
.LBB35_1:
	addis %r3, %r2, .LC35@toc@ha
	ld %r4, .LC35@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	ld %r4, 72(%r31)
	std %r4, 104(%r31)
	std %r3, 96(%r31)
	b .LBB35_13
.LBB35_2:
	ld %r3, 72(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB35_4
	b .LBB35_3
.LBB35_3:
	addis %r3, %r2, .LC35@toc@ha
	ld %r4, .LC35@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 80(%r31)
	ld %r4, 88(%r31)
	std %r4, 104(%r31)
	std %r3, 96(%r31)
	b .LBB35_13
.LBB35_4:
	ld %r3, 80(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 64(%r31)
	cmpdi	%r4, 0
                                        # kill: def $cr5lt killed $cr0lt killed $cr0
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
	cmpw	%r3, %r4
	beq	%cr0, .LBB35_9
# %bb.5:
	addis %r3, %r2, .LC35@toc@ha
	ld %r4, .LC35@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 80(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB35_7
# %bb.6:
	addis %r3, %r2, .LC35@toc@ha
	ld %r4, .LC35@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 72(%r31)
	ld %r4, 64(%r31)
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	std %r3, 56(%r31)                       # 8-byte Folded Spill
	b .LBB35_8
.LBB35_7:
	ld %r3, 88(%r31)
	ld %r4, 80(%r31)
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	std %r3, 56(%r31)                       # 8-byte Folded Spill
	b .LBB35_8
.LBB35_8:
	ld %r4, 48(%r31)                        # 8-byte Folded Reload
	ld %r3, 56(%r31)                        # 8-byte Folded Reload
	std %r4, 96(%r31)
	std %r3, 104(%r31)
	b .LBB35_13
.LBB35_9:
	ld %r3, 80(%r31)
	ld %r4, 88(%r31)
	ld %r5, 64(%r31)
	ld %r6, 72(%r31)
	bl __gcc_qlt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB35_11
	b .LBB35_10
.LBB35_10:
	addis %r3, %r2, .LC35@toc@ha
	ld %r4, .LC35@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 72(%r31)
	ld %r4, 64(%r31)
	std %r4, 32(%r31)                       # 8-byte Folded Spill
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB35_12
.LBB35_11:
	ld %r3, 88(%r31)
	ld %r4, 80(%r31)
	std %r4, 32(%r31)                       # 8-byte Folded Spill
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB35_12
.LBB35_12:
	ld %r4, 32(%r31)                        # 8-byte Folded Reload
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	std %r4, 96(%r31)
	std %r3, 104(%r31)
.LBB35_13:
	ld %r3, 96(%r31)
	ld %r4, 104(%r31)
	addi %r1, %r1, 128
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-.Lfunc_begin35
	.cfi_endproc
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	4
	.type	fmin,@function
.Lfunc_toc36:                           # @fmin
	.quad	.TOC.-.Lfunc_gep36
fmin:
.Lfunc_begin36:
	.cfi_startproc
.Lfunc_gep36:
	ld %r2, .Lfunc_toc36-.Lfunc_gep36(%r12)
	add %r2, %r2, %r12
.Lfunc_lep36:
	.localentry	fmin, .Lfunc_lep36-.Lfunc_gep36
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 56(%r31)
	std %r4, 48(%r31)
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 56(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB36_2
	b .LBB36_1
.LBB36_1:
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 48(%r31)
	std %r3, 64(%r31)
	b .LBB36_13
.LBB36_2:
	ld %r3, 48(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB36_4
	b .LBB36_3
.LBB36_3:
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 56(%r31)
	std %r3, 64(%r31)
	b .LBB36_13
.LBB36_4:
	ld %r3, 56(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 48(%r31)
	cmpdi	%r4, 0
                                        # kill: def $cr5lt killed $cr0lt killed $cr0
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
	cmpw	%r3, %r4
	beq	%cr0, .LBB36_9
# %bb.5:
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 56(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB36_7
# %bb.6:
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 56(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB36_8
.LBB36_7:
	ld %r3, 48(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB36_8
.LBB36_8:
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	std %r3, 64(%r31)
	b .LBB36_13
.LBB36_9:
	ld %r3, 56(%r31)
	ld %r4, 48(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB36_11
	b .LBB36_10
.LBB36_10:
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 56(%r31)
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	b .LBB36_12
.LBB36_11:
	ld %r3, 48(%r31)
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	b .LBB36_12
.LBB36_12:
	ld %r3, 32(%r31)                        # 8-byte Folded Reload
	std %r3, 64(%r31)
.LBB36_13:
	ld %r3, 64(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-.Lfunc_begin36
	.cfi_endproc
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	4
	.type	fminf,@function
.Lfunc_toc37:                           # @fminf
	.quad	.TOC.-.Lfunc_gep37
fminf:
.Lfunc_begin37:
	.cfi_startproc
.Lfunc_gep37:
	ld %r2, .Lfunc_toc37-.Lfunc_gep37(%r12)
	add %r2, %r2, %r12
.Lfunc_lep37:
	.localentry	fminf, .Lfunc_lep37-.Lfunc_gep37
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 48(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 64(%r31)
	stw %r3, 60(%r31)
	addis %r3, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 64(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB37_2
	b .LBB37_1
.LBB37_1:
	addis %r3, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 60(%r31)
	stw %r3, 68(%r31)
	b .LBB37_13
.LBB37_2:
	lwz %r3, 60(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB37_4
	b .LBB37_3
.LBB37_3:
	addis %r3, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, 64(%r31)
	stw %r3, 68(%r31)
	b .LBB37_13
.LBB37_4:
	lwz %r3, 64(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 60(%r31)
	cmpwi	%r4, 0
                                        # kill: def $cr5lt killed $cr0lt killed $cr0
	srwi %r4, %r4, 31
	cmpw	%r3, %r4
	beq	%cr0, .LBB37_9
# %bb.5:
	addis %r3, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 64(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB37_7
# %bb.6:
	addis %r3, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	lwz %r3, 64(%r31)
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB37_8
.LBB37_7:
	lwz %r3, 60(%r31)
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB37_8
.LBB37_8:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)
	b .LBB37_13
.LBB37_9:
	lwz %r3, 64(%r31)
	lwz %r4, 60(%r31)
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB37_11
	b .LBB37_10
.LBB37_10:
	addis %r3, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 64(%r31)
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	b .LBB37_12
.LBB37_11:
	lwz %r3, 60(%r31)
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	b .LBB37_12
.LBB37_12:
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 68(%r31)
.LBB37_13:
	lwz %r3, 68(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-.Lfunc_begin37
	.cfi_endproc
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	4
	.type	fminl,@function
.Lfunc_toc38:                           # @fminl
	.quad	.TOC.-.Lfunc_gep38
fminl:
.Lfunc_begin38:
	.cfi_startproc
.Lfunc_gep38:
	ld %r2, .Lfunc_toc38-.Lfunc_gep38(%r12)
	add %r2, %r2, %r12
.Lfunc_lep38:
	.localentry	fminl, .Lfunc_lep38-.Lfunc_gep38
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -128(%r1)
	std %r0, 144(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 80(%r31)
	std %r4, 88(%r31)
	std %r6, 72(%r31)
	std %r5, 64(%r31)
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 88(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB38_2
	b .LBB38_1
.LBB38_1:
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	ld %r4, 72(%r31)
	std %r4, 104(%r31)
	std %r3, 96(%r31)
	b .LBB38_13
.LBB38_2:
	ld %r3, 72(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB38_4
	b .LBB38_3
.LBB38_3:
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 80(%r31)
	ld %r4, 88(%r31)
	std %r4, 104(%r31)
	std %r3, 96(%r31)
	b .LBB38_13
.LBB38_4:
	ld %r3, 80(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 64(%r31)
	cmpdi	%r4, 0
                                        # kill: def $cr5lt killed $cr0lt killed $cr0
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
	cmpw	%r3, %r4
	beq	%cr0, .LBB38_9
# %bb.5:
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 80(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB38_7
# %bb.6:
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 88(%r31)
	ld %r4, 80(%r31)
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	std %r3, 56(%r31)                       # 8-byte Folded Spill
	b .LBB38_8
.LBB38_7:
	ld %r3, 72(%r31)
	ld %r4, 64(%r31)
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	std %r3, 56(%r31)                       # 8-byte Folded Spill
	b .LBB38_8
.LBB38_8:
	ld %r4, 48(%r31)                        # 8-byte Folded Reload
	ld %r3, 56(%r31)                        # 8-byte Folded Reload
	std %r4, 96(%r31)
	std %r3, 104(%r31)
	b .LBB38_13
.LBB38_9:
	ld %r3, 80(%r31)
	ld %r4, 88(%r31)
	ld %r5, 64(%r31)
	ld %r6, 72(%r31)
	bl __gcc_qlt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB38_11
	b .LBB38_10
.LBB38_10:
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 88(%r31)
	ld %r4, 80(%r31)
	std %r4, 32(%r31)                       # 8-byte Folded Spill
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB38_12
.LBB38_11:
	ld %r3, 72(%r31)
	ld %r4, 64(%r31)
	std %r4, 32(%r31)                       # 8-byte Folded Spill
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB38_12
.LBB38_12:
	ld %r4, 32(%r31)                        # 8-byte Folded Reload
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	std %r4, 96(%r31)
	std %r3, 104(%r31)
.LBB38_13:
	ld %r3, 96(%r31)
	ld %r4, 104(%r31)
	addi %r1, %r1, 128
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-.Lfunc_begin38
	.cfi_endproc
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	4
	.type	l64a,@function
.Lfunc_toc39:                           # @l64a
	.quad	.TOC.-.Lfunc_gep39
l64a:
.Lfunc_begin39:
	.cfi_startproc
.Lfunc_gep39:
	ld %r2, .Lfunc_toc39-.Lfunc_gep39(%r12)
	add %r2, %r2, %r12
.Lfunc_lep39:
	.localentry	l64a, .Lfunc_lep39-.Lfunc_gep39
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC39@toc@ha
	ld %r3, .LC39@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC39@toc@ha
	ld %r4, .LC39@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC40@toc@ha
	ld %r3, .LC40@toc@l(%r3)
	std %r3, -24(%r1)
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB39_4
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	addis %r3, %r2, .LC39@toc@ha
	ld %r3, .LC39@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC39@toc@ha
	ld %r4, .LC39@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -28(%r1)
	li %r4, 63
	and %r3, %r3, %r4
	clrldi	%r4, %r3, 32
	addis %r3, %r2, .LC41@toc@ha
	ld %r3, .LC41@toc@l(%r3)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -24(%r1)
	stb %r3, 0(%r4)
# %bb.3:                                #   in Loop: Header=BB39_1 Depth=1
	ld %r3, -24(%r1)
	addi %r3, %r3, 1
	std %r3, -24(%r1)
	lwz %r3, -28(%r1)
	li %r4, 6
	srw %r3, %r3, %r4
	stw %r3, -28(%r1)
	b .LBB39_1
.LBB39_4:
	ld %r4, -24(%r1)
	li %r3, 0
	stb %r3, 0(%r4)
	addis %r3, %r2, .LC40@toc@ha
	ld %r3, .LC40@toc@l(%r3)
	blr
	.long	0
	.quad	0
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-.Lfunc_begin39
	.cfi_endproc
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	4
	.type	srand,@function
.Lfunc_toc40:                           # @srand
	.quad	.TOC.-.Lfunc_gep40
srand:
.Lfunc_begin40:
	.cfi_startproc
.Lfunc_gep40:
	ld %r2, .Lfunc_toc40-.Lfunc_gep40(%r12)
	add %r2, %r2, %r12
.Lfunc_lep40:
	.localentry	srand, .Lfunc_lep40-.Lfunc_gep40
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC42@toc@ha
	ld %r4, .LC42@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -1
	clrldi	%r3, %r3, 32
	addis %r4, %r2, .LC43@toc@ha
	ld %r4, .LC43@toc@l(%r4)
	std %r3, 0(%r4)
	blr
	.long	0
	.quad	0
.Lfunc_end40:
	.size	srand, .Lfunc_end40-.Lfunc_begin40
	.cfi_endproc
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	4
	.type	rand,@function
.Lfunc_toc41:                           # @rand
	.quad	.TOC.-.Lfunc_gep41
rand:
.Lfunc_begin41:
	.cfi_startproc
.Lfunc_gep41:
	ld %r2, .Lfunc_toc41-.Lfunc_gep41(%r12)
	add %r2, %r2, %r12
.Lfunc_lep41:
	.localentry	rand, .Lfunc_lep41-.Lfunc_gep41
# %bb.0:
	addis %r3, %r2, .LC44@toc@ha
	ld %r4, .LC44@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC43@toc@ha
	ld %r3, .LC43@toc@l(%r3)
	ld %r4, 0(%r3)
	lis %r5, 22609
	ori %r5, %r5, 62509
	rldic %r5, %r5, 32, 1
	oris %r5, %r5, 19605
	ori %r5, %r5, 32557
	mulld %r4, %r4, %r5
	addi %r4, %r4, 1
	std %r4, 0(%r3)
	ld %r3, 0(%r3)
	rldicl %r3, %r3, 31, 33
                                        # kill: def $r3 killed $r3 killed $x3
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end41:
	.size	rand, .Lfunc_end41-.Lfunc_begin41
	.cfi_endproc
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	4
	.type	insque,@function
.Lfunc_toc42:                           # @insque
	.quad	.TOC.-.Lfunc_gep42
insque:
.Lfunc_begin42:
	.cfi_startproc
.Lfunc_gep42:
	ld %r2, .Lfunc_toc42-.Lfunc_gep42(%r12)
	add %r2, %r2, %r12
.Lfunc_lep42:
	.localentry	insque, .Lfunc_lep42-.Lfunc_gep42
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC45@toc@ha
	ld %r3, .LC45@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC45@toc@ha
	ld %r4, .LC45@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -32(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -40(%r1)
	li %r4, 0
	cmpd	%r3, %r4
	bne	%cr0, .LBB42_2
# %bb.1:
	addis %r3, %r2, .LC45@toc@ha
	ld %r3, .LC45@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC45@toc@ha
	ld %r4, .LC45@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r4, -32(%r1)
	li %r3, 0
	std %r3, 8(%r4)
	ld %r4, -32(%r1)
	li %r3, 0
	std %r3, 0(%r4)
	b .LBB42_4
.LBB42_2:
	ld %r3, -40(%r1)
	ld %r3, 0(%r3)
	ld %r4, -32(%r1)
	std %r3, 0(%r4)
	ld %r3, -40(%r1)
	ld %r4, -32(%r1)
	std %r3, 8(%r4)
	ld %r3, -32(%r1)
	ld %r4, -40(%r1)
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r3, 0(%r3)
	li %r4, 0
	cmpd	%r3, %r4
	beq	%cr0, .LBB42_4
# %bb.3:
	addis %r3, %r2, .LC45@toc@ha
	ld %r3, .LC45@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC45@toc@ha
	ld %r4, .LC45@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -32(%r1)
	ld %r4, -32(%r1)
	ld %r4, 0(%r4)
	std %r3, 8(%r4)
.LBB42_4:
	blr
	.long	0
	.quad	0
.Lfunc_end42:
	.size	insque, .Lfunc_end42-.Lfunc_begin42
	.cfi_endproc
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	4
	.type	remque,@function
.Lfunc_toc43:                           # @remque
	.quad	.TOC.-.Lfunc_gep43
remque:
.Lfunc_begin43:
	.cfi_startproc
.Lfunc_gep43:
	ld %r2, .Lfunc_toc43-.Lfunc_gep43(%r12)
	add %r2, %r2, %r12
.Lfunc_lep43:
	.localentry	remque, .Lfunc_lep43-.Lfunc_gep43
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC46@toc@ha
	ld %r3, .LC46@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC46@toc@ha
	ld %r4, .LC46@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
	ld %r3, -24(%r1)
	ld %r3, 0(%r3)
	li %r4, 0
	cmpd	%r3, %r4
	beq	%cr0, .LBB43_2
# %bb.1:
	addis %r3, %r2, .LC46@toc@ha
	ld %r3, .LC46@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC46@toc@ha
	ld %r4, .LC46@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -24(%r1)
	ld %r3, 8(%r3)
	ld %r4, -24(%r1)
	ld %r4, 0(%r4)
	std %r3, 8(%r4)
.LBB43_2:
	ld %r3, -24(%r1)
	ld %r3, 8(%r3)
	li %r4, 0
	cmpd	%r3, %r4
	beq	%cr0, .LBB43_4
# %bb.3:
	addis %r3, %r2, .LC46@toc@ha
	ld %r3, .LC46@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC46@toc@ha
	ld %r4, .LC46@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	ld %r3, 0(%r3)
	ld %r4, -24(%r1)
	ld %r4, 8(%r4)
	std %r3, 0(%r4)
.LBB43_4:
	blr
	.long	0
	.quad	0
.Lfunc_end43:
	.size	remque, .Lfunc_end43-.Lfunc_begin43
	.cfi_endproc
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	4
	.type	lsearch,@function
.Lfunc_toc44:                           # @lsearch
	.quad	.TOC.-.Lfunc_gep44
lsearch:
.Lfunc_begin44:
	.cfi_startproc
.Lfunc_gep44:
	ld %r2, .Lfunc_toc44-.Lfunc_gep44(%r12)
	add %r2, %r2, %r12
.Lfunc_lep44:
	.localentry	lsearch, .Lfunc_lep44-.Lfunc_gep44
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -128(%r1)
	std %r0, 144(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 104(%r31)
	std %r4, 96(%r31)
	std %r5, 88(%r31)
	std %r6, 80(%r31)
	std %r7, 72(%r31)
	addis %r3, %r2, .LC47@toc@ha
	ld %r3, .LC47@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC47@toc@ha
	ld %r4, .LC47@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 80(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	ld %r3, 96(%r31)
	std %r3, 64(%r31)
	ld %r3, 88(%r31)
	ld %r3, 0(%r3)
	std %r3, 56(%r31)
	li %r3, 0
	std %r3, 48(%r31)
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 48(%r31)
	ld %r4, 56(%r31)
	cmpld	%r3, %r4
	bge %cr0, .LBB44_6
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	ld %r7, 40(%r31)                        # 8-byte Folded Reload
	addis %r3, %r2, .LC47@toc@ha
	ld %r3, .LC47@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC47@toc@ha
	ld %r4, .LC47@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r5, 72(%r31)
	ld %r3, 104(%r31)
	ld %r4, 64(%r31)
	ld %r6, 48(%r31)
	mulld %r6, %r6, %r7
	add %r4, %r4, %r6
	mr	%r6, %r2
	std %r6, 24(%r1)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB44_4
# %bb.3:
	ld %r5, 40(%r31)                        # 8-byte Folded Reload
	addis %r3, %r2, .LC47@toc@ha
	ld %r3, .LC47@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC47@toc@ha
	ld %r4, .LC47@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 64(%r31)
	ld %r4, 48(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 112(%r31)
	b .LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	b .LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	ld %r3, 48(%r31)
	addi %r3, %r3, 1
	std %r3, 48(%r31)
	b .LBB44_1
.LBB44_6:
	ld %r5, 40(%r31)                        # 8-byte Folded Reload
	ld %r3, 56(%r31)
	addi %r3, %r3, 1
	ld %r4, 88(%r31)
	std %r3, 0(%r4)
	ld %r3, 64(%r31)
	ld %r4, 56(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	ld %r4, 104(%r31)
	ld %r5, 80(%r31)
	bl memcpy
	nop
                                        # kill: def $x4 killed $x3
	ld %r3, 32(%r31)                        # 8-byte Folded Reload
	std %r3, 112(%r31)
.LBB44_7:
	ld %r3, 112(%r31)
	addi %r1, %r1, 128
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-.Lfunc_begin44
	.cfi_endproc
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	4
	.type	lfind,@function
.Lfunc_toc45:                           # @lfind
	.quad	.TOC.-.Lfunc_gep45
lfind:
.Lfunc_begin45:
	.cfi_startproc
.Lfunc_gep45:
	ld %r2, .Lfunc_toc45-.Lfunc_gep45(%r12)
	add %r2, %r2, %r12
.Lfunc_lep45:
	.localentry	lfind, .Lfunc_lep45-.Lfunc_gep45
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -128(%r1)
	std %r0, 144(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 104(%r31)
	std %r4, 96(%r31)
	std %r5, 88(%r31)
	std %r6, 80(%r31)
	std %r7, 72(%r31)
	addis %r3, %r2, .LC48@toc@ha
	ld %r3, .LC48@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC48@toc@ha
	ld %r4, .LC48@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 80(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	ld %r3, 96(%r31)
	std %r3, 64(%r31)
	ld %r3, 88(%r31)
	ld %r3, 0(%r3)
	std %r3, 56(%r31)
	li %r3, 0
	std %r3, 48(%r31)
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 48(%r31)
	ld %r4, 56(%r31)
	cmpld	%r3, %r4
	bge %cr0, .LBB45_6
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	ld %r7, 40(%r31)                        # 8-byte Folded Reload
	addis %r3, %r2, .LC48@toc@ha
	ld %r3, .LC48@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC48@toc@ha
	ld %r4, .LC48@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r5, 72(%r31)
	ld %r3, 104(%r31)
	ld %r4, 64(%r31)
	ld %r6, 48(%r31)
	mulld %r6, %r6, %r7
	add %r4, %r4, %r6
	mr	%r6, %r2
	std %r6, 24(%r1)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB45_4
# %bb.3:
	ld %r5, 40(%r31)                        # 8-byte Folded Reload
	addis %r3, %r2, .LC48@toc@ha
	ld %r3, .LC48@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC48@toc@ha
	ld %r4, .LC48@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 64(%r31)
	ld %r4, 48(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 112(%r31)
	b .LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	b .LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	ld %r3, 48(%r31)
	addi %r3, %r3, 1
	std %r3, 48(%r31)
	b .LBB45_1
.LBB45_6:
	li %r3, 0
	std %r3, 112(%r31)
.LBB45_7:
	ld %r3, 112(%r31)
	addi %r1, %r1, 128
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-.Lfunc_begin45
	.cfi_endproc
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	4
	.type	abs,@function
.Lfunc_toc46:                           # @abs
	.quad	.TOC.-.Lfunc_gep46
abs:
.Lfunc_begin46:
	.cfi_startproc
.Lfunc_gep46:
	ld %r2, .Lfunc_toc46-.Lfunc_gep46(%r12)
	add %r2, %r2, %r12
.Lfunc_lep46:
	.localentry	abs, .Lfunc_lep46-.Lfunc_gep46
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC49@toc@ha
	ld %r3, .LC49@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC49@toc@ha
	ld %r4, .LC49@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	ble %cr0, .LBB46_2
# %bb.1:
	addis %r3, %r2, .LC49@toc@ha
	ld %r3, .LC49@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC49@toc@ha
	ld %r4, .LC49@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	b .LBB46_3
.LBB46_2:
	lwz %r3, -12(%r1)
	neg %r3, %r3
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB46_3:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end46:
	.size	abs, .Lfunc_end46-.Lfunc_begin46
	.cfi_endproc
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	4
	.type	atoi,@function
.Lfunc_toc47:                           # @atoi
	.quad	.TOC.-.Lfunc_gep47
atoi:
.Lfunc_begin47:
	.cfi_startproc
.Lfunc_gep47:
	ld %r2, .Lfunc_toc47-.Lfunc_gep47(%r12)
	add %r2, %r2, %r12
.Lfunc_lep47:
	.localentry	atoi, .Lfunc_lep47-.Lfunc_gep47
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 48(%r31)
	addis %r3, %r2, .LC50@toc@ha
	ld %r3, .LC50@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, 44(%r31)
	li %r3, 0
	stw %r3, 40(%r31)
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 48(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 24(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC51@toc@ha
	ld %r4, .LC51@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_3
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	addis %r3, %r2, .LC50@toc@ha
	ld %r3, .LC50@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 48(%r31)
	addi %r3, %r3, 1
	std %r3, 48(%r31)
	b .LBB47_1
.LBB47_3:
	ld %r3, 48(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB47_6
	b .LBB47_4
.LBB47_4:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB47_8
	b .LBB47_5
.LBB47_5:
	addis %r3, %r2, .LC50@toc@ha
	ld %r3, .LC50@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 1
	stw %r3, 40(%r31)
	b .LBB47_7
.LBB47_6:
	addis %r3, %r2, .LC50@toc@ha
	ld %r3, .LC50@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r4)
	std %r3, 32(%r4)
.LBB47_7:
	ld %r3, 48(%r31)
	addi %r3, %r3, 1
	std %r3, 48(%r31)
.LBB47_8:
	addis %r3, %r2, .LC50@toc@ha
	ld %r3, .LC50@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r4)
	std %r3, 16(%r4)
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 48(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 24(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_11
# %bb.10:                               #   in Loop: Header=BB47_9 Depth=1
	addis %r3, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 44(%r31)
	mulli %r4, %r3, 10
	ld %r3, 48(%r31)
	addi %r5, %r3, 1
	std %r5, 48(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	sub	%r3, %r4, %r3
	stw %r3, 44(%r31)
	b .LBB47_9
.LBB47_11:
	lwz %r3, 40(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_13
# %bb.12:
	addis %r3, %r2, .LC50@toc@ha
	ld %r3, .LC50@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r4)
	std %r3, 48(%r4)
	lwz %r3, 44(%r31)
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	b .LBB47_14
.LBB47_13:
	lwz %r3, 44(%r31)
	neg %r3, %r3
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
.LBB47_14:
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	extsw %r3, %r3
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-.Lfunc_begin47
	.cfi_endproc
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	4
	.type	atol,@function
.Lfunc_toc48:                           # @atol
	.quad	.TOC.-.Lfunc_gep48
atol:
.Lfunc_begin48:
	.cfi_startproc
.Lfunc_gep48:
	ld %r2, .Lfunc_toc48-.Lfunc_gep48(%r12)
	add %r2, %r2, %r12
.Lfunc_lep48:
	.localentry	atol, .Lfunc_lep48-.Lfunc_gep48
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, 56(%r31)
	li %r3, 0
	stw %r3, 52(%r31)
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 64(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 24(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC51@toc@ha
	ld %r4, .LC51@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_3
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	addi %r3, %r3, 1
	std %r3, 64(%r31)
	b .LBB48_1
.LBB48_3:
	ld %r3, 64(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB48_6
	b .LBB48_4
.LBB48_4:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB48_8
	b .LBB48_5
.LBB48_5:
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 1
	stw %r3, 52(%r31)
	b .LBB48_7
.LBB48_6:
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 32(%r4)
.LBB48_7:
	ld %r3, 64(%r31)
	addi %r3, %r3, 1
	std %r3, 64(%r31)
.LBB48_8:
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 16(%r4)
.LBB48_9:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 64(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 24(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_11
# %bb.10:                               #   in Loop: Header=BB48_9 Depth=1
	addis %r3, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 56(%r31)
	mulli %r4, %r3, 10
	ld %r3, 64(%r31)
	addi %r5, %r3, 1
	std %r5, 64(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	extsw %r3, %r3
	sub	%r3, %r4, %r3
	std %r3, 56(%r31)
	b .LBB48_9
.LBB48_11:
	lwz %r3, 52(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_13
# %bb.12:
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, 56(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB48_14
.LBB48_13:
	ld %r3, 56(%r31)
	neg %r3, %r3
	std %r3, 40(%r31)                       # 8-byte Folded Spill
.LBB48_14:
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end48:
	.size	atol, .Lfunc_end48-.Lfunc_begin48
	.cfi_endproc
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	4
	.type	atoll,@function
.Lfunc_toc49:                           # @atoll
	.quad	.TOC.-.Lfunc_gep49
atoll:
.Lfunc_begin49:
	.cfi_startproc
.Lfunc_gep49:
	ld %r2, .Lfunc_toc49-.Lfunc_gep49(%r12)
	add %r2, %r2, %r12
.Lfunc_lep49:
	.localentry	atoll, .Lfunc_lep49-.Lfunc_gep49
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	addis %r3, %r2, .LC54@toc@ha
	ld %r3, .LC54@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, 56(%r31)
	li %r3, 0
	stw %r3, 52(%r31)
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 64(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 24(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC51@toc@ha
	ld %r4, .LC51@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_3
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	addis %r3, %r2, .LC54@toc@ha
	ld %r3, .LC54@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	addi %r3, %r3, 1
	std %r3, 64(%r31)
	b .LBB49_1
.LBB49_3:
	ld %r3, 64(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB49_6
	b .LBB49_4
.LBB49_4:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB49_8
	b .LBB49_5
.LBB49_5:
	addis %r3, %r2, .LC54@toc@ha
	ld %r3, .LC54@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 1
	stw %r3, 52(%r31)
	b .LBB49_7
.LBB49_6:
	addis %r3, %r2, .LC54@toc@ha
	ld %r3, .LC54@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r4)
	std %r3, 32(%r4)
.LBB49_7:
	ld %r3, 64(%r31)
	addi %r3, %r3, 1
	std %r3, 64(%r31)
.LBB49_8:
	addis %r3, %r2, .LC54@toc@ha
	ld %r3, .LC54@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r4)
	std %r3, 16(%r4)
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 64(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 24(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_11
# %bb.10:                               #   in Loop: Header=BB49_9 Depth=1
	addis %r3, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 56(%r31)
	mulli %r4, %r3, 10
	ld %r3, 64(%r31)
	addi %r5, %r3, 1
	std %r5, 64(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	extsw %r3, %r3
	sub	%r3, %r4, %r3
	std %r3, 56(%r31)
	b .LBB49_9
.LBB49_11:
	lwz %r3, 52(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_13
# %bb.12:
	addis %r3, %r2, .LC54@toc@ha
	ld %r3, .LC54@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, 56(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	b .LBB49_14
.LBB49_13:
	ld %r3, 56(%r31)
	neg %r3, %r3
	std %r3, 40(%r31)                       # 8-byte Folded Spill
.LBB49_14:
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-.Lfunc_begin49
	.cfi_endproc
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	4
	.type	bsearch,@function
.Lfunc_toc50:                           # @bsearch
	.quad	.TOC.-.Lfunc_gep50
bsearch:
.Lfunc_begin50:
	.cfi_startproc
.Lfunc_gep50:
	ld %r2, .Lfunc_toc50-.Lfunc_gep50(%r12)
	add %r2, %r2, %r12
.Lfunc_lep50:
	.localentry	bsearch, .Lfunc_lep50-.Lfunc_gep50
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -112(%r1)
	std %r0, 128(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 88(%r31)
	std %r4, 80(%r31)
	std %r5, 72(%r31)
	std %r6, 64(%r31)
	std %r7, 56(%r31)
	addis %r3, %r2, .LC55@toc@ha
	ld %r3, .LC55@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC55@toc@ha
	ld %r4, .LC55@toc@l(%r4)
	std %r3, 0(%r4)
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 72(%r31)
	cmpldi	%r3, 0
	ble %cr0, .LBB50_9
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	addis %r3, %r2, .LC55@toc@ha
	ld %r4, .LC55@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 80(%r31)
	ld %r4, 64(%r31)
	ld %r5, 72(%r31)
	rldicl %r5, %r5, 63, 1
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 48(%r31)
	ld %r5, 56(%r31)
	ld %r3, 88(%r31)
	ld %r4, 48(%r31)
	mr	%r6, %r2
	std %r6, 24(%r1)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 44(%r31)
	lwz %r3, 44(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB50_4
# %bb.3:                                #   in Loop: Header=BB50_1 Depth=1
	addis %r3, %r2, .LC55@toc@ha
	ld %r4, .LC55@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 72(%r31)
	rldicl %r3, %r3, 63, 1
	std %r3, 72(%r31)
	b .LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	lwz %r3, 44(%r31)
	cmpwi	%r3, 0
	ble %cr0, .LBB50_6
# %bb.5:                                #   in Loop: Header=BB50_1 Depth=1
	addis %r3, %r2, .LC55@toc@ha
	ld %r4, .LC55@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 48(%r31)
	ld %r4, 64(%r31)
	add %r3, %r3, %r4
	std %r3, 80(%r31)
	ld %r4, 72(%r31)
	rldicl %r3, %r4, 63, 1
	addi %r3, %r3, 1
	sub	%r3, %r4, %r3
	std %r3, 72(%r31)
	b .LBB50_7
.LBB50_6:
	ld %r3, 48(%r31)
	std %r3, 96(%r31)
	b .LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	b .LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	b .LBB50_1
.LBB50_9:
	li %r3, 0
	std %r3, 96(%r31)
.LBB50_10:
	ld %r3, 96(%r31)
	addi %r1, %r1, 112
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-.Lfunc_begin50
	.cfi_endproc
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	4
	.type	bsearch_r,@function
.Lfunc_toc51:                           # @bsearch_r
	.quad	.TOC.-.Lfunc_gep51
bsearch_r:
.Lfunc_begin51:
	.cfi_startproc
.Lfunc_gep51:
	ld %r2, .Lfunc_toc51-.Lfunc_gep51(%r12)
	add %r2, %r2, %r12
.Lfunc_lep51:
	.localentry	bsearch_r, .Lfunc_lep51-.Lfunc_gep51
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -128(%r1)
	std %r0, 144(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 104(%r31)
	std %r4, 96(%r31)
	std %r5, 88(%r31)
	std %r6, 80(%r31)
	std %r7, 72(%r31)
	std %r8, 64(%r31)
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 96(%r31)
	std %r3, 56(%r31)
	ld %r3, 88(%r31)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 52(%r31)
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 52(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB51_8
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 56(%r31)
	lwz %r4, 52(%r31)
	srawi %r4, %r4, 1
	extsw %r4, %r4
	ld %r5, 80(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 40(%r31)
	ld %r6, 72(%r31)
	ld %r3, 104(%r31)
	ld %r4, 40(%r31)
	ld %r5, 64(%r31)
	mr	%r7, %r2
	std %r7, 24(%r1)
	mr	%r12, %r6
	mtctr %r6
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 48(%r31)
	lwz %r3, 48(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB51_4
# %bb.3:
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 40(%r31)
	std %r3, 112(%r31)
	b .LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	lwz %r3, 48(%r31)
	cmpwi	%r3, 0
	ble %cr0, .LBB51_6
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, 40(%r31)
	ld %r4, 80(%r31)
	add %r3, %r3, %r4
	std %r3, 56(%r31)
	lwz %r3, 52(%r31)
	addi %r3, %r3, -1
	stw %r3, 52(%r31)
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	b .LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	lwz %r3, 52(%r31)
	srawi %r3, %r3, 1
	stw %r3, 52(%r31)
	b .LBB51_1
.LBB51_8:
	li %r3, 0
	std %r3, 112(%r31)
.LBB51_9:
	ld %r3, 112(%r31)
	addi %r1, %r1, 128
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-.Lfunc_begin51
	.cfi_endproc
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	4
	.type	div,@function
.Lfunc_toc52:                           # @div
	.quad	.TOC.-.Lfunc_gep52
div:
.Lfunc_begin52:
	.cfi_startproc
.Lfunc_gep52:
	ld %r2, .Lfunc_toc52-.Lfunc_gep52(%r12)
	add %r2, %r2, %r12
.Lfunc_lep52:
	.localentry	div, .Lfunc_lep52-.Lfunc_gep52
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -20(%r1)
	stw %r3, -24(%r1)
	addis %r3, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -20(%r1)
	lwz %r4, -24(%r1)
	divw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r4, -20(%r1)
	lwz %r5, -24(%r1)
	divw %r3, %r4, %r5
	mullw %r3, %r3, %r5
	sub	%r3, %r4, %r3
	stw %r3, -12(%r1)
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end52:
	.size	div, .Lfunc_end52-.Lfunc_begin52
	.cfi_endproc
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	4
	.type	imaxabs,@function
.Lfunc_toc53:                           # @imaxabs
	.quad	.TOC.-.Lfunc_gep53
imaxabs:
.Lfunc_begin53:
	.cfi_startproc
.Lfunc_gep53:
	ld %r2, .Lfunc_toc53-.Lfunc_gep53(%r12)
	add %r2, %r2, %r12
.Lfunc_lep53:
	.localentry	imaxabs, .Lfunc_lep53-.Lfunc_gep53
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC58@toc@ha
	ld %r3, .LC58@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC58@toc@ha
	ld %r4, .LC58@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB53_2
# %bb.1:
	addis %r3, %r2, .LC58@toc@ha
	ld %r3, .LC58@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC58@toc@ha
	ld %r4, .LC58@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)                       # 8-byte Folded Spill
	b .LBB53_3
.LBB53_2:
	ld %r3, -16(%r1)
	neg %r3, %r3
	std %r3, -24(%r1)                       # 8-byte Folded Spill
.LBB53_3:
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-.Lfunc_begin53
	.cfi_endproc
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	4
	.type	imaxdiv,@function
.Lfunc_toc54:                           # @imaxdiv
	.quad	.TOC.-.Lfunc_gep54
imaxdiv:
.Lfunc_begin54:
	.cfi_startproc
.Lfunc_gep54:
	ld %r2, .Lfunc_toc54-.Lfunc_gep54(%r12)
	add %r2, %r2, %r12
.Lfunc_lep54:
	.localentry	imaxdiv, .Lfunc_lep54-.Lfunc_gep54
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -40(%r1)
	addis %r3, %r2, .LC59@toc@ha
	ld %r4, .LC59@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -40(%r1)
	divd %r3, %r3, %r4
	std %r3, -24(%r1)
	ld %r4, -32(%r1)
	ld %r5, -40(%r1)
	divd %r3, %r4, %r5
	mulld %r3, %r3, %r5
	sub	%r3, %r4, %r3
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	ld %r4, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-.Lfunc_begin54
	.cfi_endproc
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	4
	.type	labs,@function
.Lfunc_toc55:                           # @labs
	.quad	.TOC.-.Lfunc_gep55
labs:
.Lfunc_begin55:
	.cfi_startproc
.Lfunc_gep55:
	ld %r2, .Lfunc_toc55-.Lfunc_gep55(%r12)
	add %r2, %r2, %r12
.Lfunc_lep55:
	.localentry	labs, .Lfunc_lep55-.Lfunc_gep55
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC60@toc@ha
	ld %r3, .LC60@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC60@toc@ha
	ld %r4, .LC60@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB55_2
# %bb.1:
	addis %r3, %r2, .LC60@toc@ha
	ld %r3, .LC60@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC60@toc@ha
	ld %r4, .LC60@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)                       # 8-byte Folded Spill
	b .LBB55_3
.LBB55_2:
	ld %r3, -16(%r1)
	neg %r3, %r3
	std %r3, -24(%r1)                       # 8-byte Folded Spill
.LBB55_3:
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end55:
	.size	labs, .Lfunc_end55-.Lfunc_begin55
	.cfi_endproc
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	4
	.type	ldiv,@function
.Lfunc_toc56:                           # @ldiv
	.quad	.TOC.-.Lfunc_gep56
ldiv:
.Lfunc_begin56:
	.cfi_startproc
.Lfunc_gep56:
	ld %r2, .Lfunc_toc56-.Lfunc_gep56(%r12)
	add %r2, %r2, %r12
.Lfunc_lep56:
	.localentry	ldiv, .Lfunc_lep56-.Lfunc_gep56
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -40(%r1)
	addis %r3, %r2, .LC61@toc@ha
	ld %r4, .LC61@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -40(%r1)
	divd %r3, %r3, %r4
	std %r3, -24(%r1)
	ld %r4, -32(%r1)
	ld %r5, -40(%r1)
	divd %r3, %r4, %r5
	mulld %r3, %r3, %r5
	sub	%r3, %r4, %r3
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	ld %r4, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-.Lfunc_begin56
	.cfi_endproc
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	4
	.type	llabs,@function
.Lfunc_toc57:                           # @llabs
	.quad	.TOC.-.Lfunc_gep57
llabs:
.Lfunc_begin57:
	.cfi_startproc
.Lfunc_gep57:
	ld %r2, .Lfunc_toc57-.Lfunc_gep57(%r12)
	add %r2, %r2, %r12
.Lfunc_lep57:
	.localentry	llabs, .Lfunc_lep57-.Lfunc_gep57
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC62@toc@ha
	ld %r3, .LC62@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC62@toc@ha
	ld %r4, .LC62@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB57_2
# %bb.1:
	addis %r3, %r2, .LC62@toc@ha
	ld %r3, .LC62@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC62@toc@ha
	ld %r4, .LC62@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)                       # 8-byte Folded Spill
	b .LBB57_3
.LBB57_2:
	ld %r3, -16(%r1)
	neg %r3, %r3
	std %r3, -24(%r1)                       # 8-byte Folded Spill
.LBB57_3:
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-.Lfunc_begin57
	.cfi_endproc
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	4
	.type	lldiv,@function
.Lfunc_toc58:                           # @lldiv
	.quad	.TOC.-.Lfunc_gep58
lldiv:
.Lfunc_begin58:
	.cfi_startproc
.Lfunc_gep58:
	ld %r2, .Lfunc_toc58-.Lfunc_gep58(%r12)
	add %r2, %r2, %r12
.Lfunc_lep58:
	.localentry	lldiv, .Lfunc_lep58-.Lfunc_gep58
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -40(%r1)
	addis %r3, %r2, .LC63@toc@ha
	ld %r4, .LC63@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -40(%r1)
	divd %r3, %r3, %r4
	std %r3, -24(%r1)
	ld %r4, -32(%r1)
	ld %r5, -40(%r1)
	divd %r3, %r4, %r5
	mulld %r3, %r3, %r5
	sub	%r3, %r4, %r3
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	ld %r4, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-.Lfunc_begin58
	.cfi_endproc
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	4
	.type	wcschr,@function
.Lfunc_toc59:                           # @wcschr
	.quad	.TOC.-.Lfunc_gep59
wcschr:
.Lfunc_begin59:
	.cfi_startproc
.Lfunc_gep59:
	ld %r2, .Lfunc_toc59-.Lfunc_gep59(%r12)
	add %r2, %r2, %r12
.Lfunc_lep59:
	.localentry	wcschr, .Lfunc_lep59-.Lfunc_gep59
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC64@toc@ha
	ld %r3, .LC64@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r4)
	std %r3, 0(%r4)
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB59_4
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	addis %r3, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	lwz %r4, -20(%r1)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -40(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB59_4
# %bb.3:                                #   in Loop: Header=BB59_1 Depth=1
	lwz %r4, -40(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC64@toc@ha
	ld %r3, .LC64@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	lwz %r4, -36(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB59_7
	b .LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	addis %r3, %r2, .LC64@toc@ha
	ld %r3, .LC64@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB59_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	b .LBB59_1
.LBB59_7:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB59_9
# %bb.8:
	addis %r3, %r2, .LC64@toc@ha
	ld %r3, .LC64@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)                       # 8-byte Folded Spill
	b .LBB59_10
.LBB59_9:
	li %r3, 0
	std %r3, -48(%r1)                       # 8-byte Folded Spill
	b .LBB59_10
.LBB59_10:
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-.Lfunc_begin59
	.cfi_endproc
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	4
	.type	wcscmp,@function
.Lfunc_toc60:                           # @wcscmp
	.quad	.TOC.-.Lfunc_gep60
wcscmp:
.Lfunc_begin60:
	.cfi_startproc
.Lfunc_gep60:
	ld %r2, .Lfunc_toc60-.Lfunc_gep60(%r12)
	add %r2, %r2, %r12
.Lfunc_lep60:
	.localentry	wcscmp, .Lfunc_lep60-.Lfunc_gep60
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC65@toc@ha
	ld %r3, .LC65@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r4)
	std %r3, 0(%r4)
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -28(%r1)
	bne	%cr0, .LBB60_6
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC65@toc@ha
	ld %r3, .LC65@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -28(%r1)
	beq	%cr0, .LBB60_6
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC65@toc@ha
	ld %r3, .LC65@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -32(%r1)
	cmpwi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -28(%r1)
	beq	%cr0, .LBB60_6
# %bb.5:                                #   in Loop: Header=BB60_1 Depth=1
	lwz %r4, -32(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC65@toc@ha
	ld %r3, .LC65@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -28(%r1)
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	lwz %r4, -28(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB60_9
	b .LBB60_7
.LBB60_7:                               #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC65@toc@ha
	ld %r3, .LC65@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB60_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	addi %r3, %r3, 4
	std %r3, -24(%r1)
	b .LBB60_1
.LBB60_9:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB60_11
# %bb.10:
	addis %r3, %r2, .LC65@toc@ha
	ld %r3, .LC65@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r4)
	std %r3, 48(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	b .LBB60_14
.LBB60_11:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, gt
	li %r3, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB60_13
# %bb.12:
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB60_13:
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB60_14:
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-.Lfunc_begin60
	.cfi_endproc
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	4
	.type	wcscpy,@function
.Lfunc_toc61:                           # @wcscpy
	.quad	.TOC.-.Lfunc_gep61
wcscpy:
.Lfunc_begin61:
	.cfi_startproc
.Lfunc_gep61:
	ld %r2, .Lfunc_toc61-.Lfunc_gep61(%r12)
	add %r2, %r2, %r12
.Lfunc_lep61:
	.localentry	wcscpy, .Lfunc_lep61-.Lfunc_gep61
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC66@toc@ha
	ld %r3, .LC66@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -32(%r1)
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -24(%r1)
	addi %r4, %r3, 4
	std %r4, -24(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -16(%r1)
	addi %r5, %r4, 4
	std %r5, -16(%r1)
	stw %r3, 0(%r4)
	cmpwi	%r3, 0
	beq	%cr0, .LBB61_3
# %bb.2:                                #   in Loop: Header=BB61_1 Depth=1
	addis %r3, %r2, .LC66@toc@ha
	ld %r3, .LC66@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r4)
	std %r3, 8(%r4)
	b .LBB61_1
.LBB61_3:
	ld %r3, -32(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-.Lfunc_begin61
	.cfi_endproc
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	4
	.type	wcslen,@function
.Lfunc_toc62:                           # @wcslen
	.quad	.TOC.-.Lfunc_gep62
wcslen:
.Lfunc_begin62:
	.cfi_startproc
.Lfunc_gep62:
	ld %r2, .Lfunc_toc62-.Lfunc_gep62(%r12)
	add %r2, %r2, %r12
.Lfunc_lep62:
	.localentry	wcslen, .Lfunc_lep62-.Lfunc_gep62
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC67@toc@ha
	ld %r3, .LC67@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB62_4
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	addis %r3, %r2, .LC67@toc@ha
	ld %r3, .LC67@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	b .LBB62_1
.LBB62_4:
	ld %r4, -16(%r1)
	ld %r3, -24(%r1)
	sub	%r3, %r4, %r3
	sradi %r3, %r3, 2
	blr
	.long	0
	.quad	0
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-.Lfunc_begin62
	.cfi_endproc
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	4
	.type	wcsncmp,@function
.Lfunc_toc63:                           # @wcsncmp
	.quad	.TOC.-.Lfunc_gep63
wcsncmp:
.Lfunc_begin63:
	.cfi_startproc
.Lfunc_gep63:
	ld %r2, .Lfunc_toc63-.Lfunc_gep63(%r12)
	add %r2, %r2, %r12
.Lfunc_lep63:
	.localentry	wcsncmp, .Lfunc_lep63-.Lfunc_gep63
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 0(%r4)
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB63_8
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -36(%r1)
	bne	%cr0, .LBB63_8
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 56(%r4)
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB63_8
# %bb.5:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.6:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -40(%r1)
	cmpwi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB63_8
# %bb.7:                                #   in Loop: Header=BB63_1 Depth=1
	lwz %r4, -40(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r4, -36(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB63_11
	b .LBB63_9
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.10:                               #   in Loop: Header=BB63_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	addi %r3, %r3, 4
	std %r3, -24(%r1)
	b .LBB63_1
.LBB63_11:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB63_18
# %bb.12:
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 64(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB63_14
# %bb.13:
	addis %r3, %r2, .LC68@toc@ha
	ld %r3, .LC68@toc@l(%r3)
	ld %r3, 72(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r4)
	std %r3, 72(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	b .LBB63_17
.LBB63_14:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, gt
	li %r3, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB63_16
# %bb.15:
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
.LBB63_16:
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB63_17:
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB63_19
.LBB63_18:
	li %r3, 0
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB63_19
.LBB63_19:
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-.Lfunc_begin63
	.cfi_endproc
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	4
	.type	wmemchr,@function
.Lfunc_toc64:                           # @wmemchr
	.quad	.TOC.-.Lfunc_gep64
wmemchr:
.Lfunc_begin64:
	.cfi_startproc
.Lfunc_gep64:
	ld %r2, .Lfunc_toc64-.Lfunc_gep64(%r12)
	add %r2, %r2, %r12
.Lfunc_lep64:
	.localentry	wmemchr, .Lfunc_lep64-.Lfunc_gep64
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC69@toc@ha
	ld %r3, .LC69@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r4)
	std %r3, 0(%r4)
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)
	beq	%cr0, .LBB64_4
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	lwz %r4, -20(%r1)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -48(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -44(%r1)
	beq	%cr0, .LBB64_4
# %bb.3:                                #   in Loop: Header=BB64_1 Depth=1
	lwz %r4, -48(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC69@toc@ha
	ld %r3, .LC69@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -44(%r1)
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	lwz %r4, -44(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB64_7
	b .LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	addis %r3, %r2, .LC69@toc@ha
	ld %r3, .LC69@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB64_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	b .LBB64_1
.LBB64_7:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB64_9
# %bb.8:
	addis %r3, %r2, .LC69@toc@ha
	ld %r3, .LC69@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	std %r3, -56(%r1)                       # 8-byte Folded Spill
	b .LBB64_10
.LBB64_9:
	li %r3, 0
	std %r3, -56(%r1)                       # 8-byte Folded Spill
	b .LBB64_10
.LBB64_10:
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-.Lfunc_begin64
	.cfi_endproc
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	4
	.type	wmemcmp,@function
.Lfunc_toc65:                           # @wmemcmp
	.quad	.TOC.-.Lfunc_gep65
wmemcmp:
.Lfunc_begin65:
	.cfi_startproc
.Lfunc_gep65:
	ld %r2, .Lfunc_toc65-.Lfunc_gep65(%r12)
	add %r2, %r2, %r12
.Lfunc_lep65:
	.localentry	wmemcmp, .Lfunc_lep65-.Lfunc_gep65
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC70@toc@ha
	ld %r3, .LC70@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r4)
	std %r3, 0(%r4)
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB65_4
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	addis %r3, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, eq
	mfcr %r5                                # cr5
	rlwinm %r5, %r5, 20, 0, 0
	stw %r5, -40(%r1)
	cmpw	%r3, %r4
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
	bne	%cr0, .LBB65_4
# %bb.3:                                #   in Loop: Header=BB65_1 Depth=1
	lwz %r4, -40(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC70@toc@ha
	ld %r3, .LC70@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	lwz %r4, -36(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB65_7
	b .LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	addis %r3, %r2, .LC70@toc@ha
	ld %r3, .LC70@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB65_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	addi %r3, %r3, 4
	std %r3, -24(%r1)
	b .LBB65_1
.LBB65_7:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB65_14
# %bb.8:
	addis %r3, %r2, .LC70@toc@ha
	ld %r3, .LC70@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB65_10
# %bb.9:
	addis %r3, %r2, .LC70@toc@ha
	ld %r3, .LC70@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r4)
	std %r3, 40(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	b .LBB65_13
.LBB65_10:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	crmove	4*cr5+lt, gt
	li %r3, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB65_12
# %bb.11:
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
.LBB65_12:
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB65_13:
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB65_15
.LBB65_14:
	li %r3, 0
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB65_15
.LBB65_15:
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-.Lfunc_begin65
	.cfi_endproc
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	4
	.type	wmemcpy,@function
.Lfunc_toc66:                           # @wmemcpy
	.quad	.TOC.-.Lfunc_gep66
wmemcpy:
.Lfunc_begin66:
	.cfi_startproc
.Lfunc_gep66:
	ld %r2, .Lfunc_toc66-.Lfunc_gep66(%r12)
	add %r2, %r2, %r12
.Lfunc_lep66:
	.localentry	wmemcpy, .Lfunc_lep66-.Lfunc_gep66
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC71@toc@ha
	ld %r3, .LC71@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	addi %r4, %r3, -1
	std %r4, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB66_3
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	addis %r3, %r2, .LC71@toc@ha
	ld %r3, .LC71@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -24(%r1)
	addi %r4, %r3, 4
	std %r4, -24(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -16(%r1)
	addi %r5, %r4, 4
	std %r5, -16(%r1)
	stw %r3, 0(%r4)
	b .LBB66_1
.LBB66_3:
	ld %r3, -40(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-.Lfunc_begin66
	.cfi_endproc
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	4
	.type	wmemmove,@function
.Lfunc_toc67:                           # @wmemmove
	.quad	.TOC.-.Lfunc_gep67
wmemmove:
.Lfunc_begin67:
	.cfi_startproc
.Lfunc_gep67:
	ld %r2, .Lfunc_toc67-.Lfunc_gep67(%r12)
	add %r2, %r2, %r12
.Lfunc_lep67:
	.localentry	wmemmove, .Lfunc_lep67-.Lfunc_gep67
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	std %r5, -40(%r1)
	addis %r3, %r2, .LC72@toc@ha
	ld %r3, .LC72@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	ld %r4, -32(%r1)
	cmpd	%r3, %r4
	bne	%cr0, .LBB67_2
# %bb.1:
	addis %r3, %r2, .LC72@toc@ha
	ld %r3, .LC72@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB67_12
.LBB67_2:
	ld %r4, -24(%r1)
	ld %r3, -32(%r1)
	sub	%r3, %r4, %r3
	ld %r4, -40(%r1)
	sldi %r4, %r4, 2
	cmpld	%r3, %r4
	bge %cr0, .LBB67_7
# %bb.3:
	addis %r3, %r2, .LC72@toc@ha
	ld %r3, .LC72@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r4)
	std %r3, 16(%r4)
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -40(%r1)
	addi %r4, %r3, -1
	std %r4, -40(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB67_6
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
	addis %r3, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, -32(%r1)
	ld %r4, -40(%r1)
	sldi %r5, %r4, 2
	lwzx %r3, %r3, %r5
	ld %r4, -24(%r1)
	add %r4, %r4, %r5
	stw %r3, 0(%r4)
	b .LBB67_4
.LBB67_6:
	b .LBB67_11
.LBB67_7:
	b .LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -40(%r1)
	addi %r4, %r3, -1
	std %r4, -40(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB67_10
# %bb.9:                                #   in Loop: Header=BB67_8 Depth=1
	addis %r3, %r2, .LC72@toc@ha
	ld %r3, .LC72@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -32(%r1)
	addi %r4, %r3, 4
	std %r4, -32(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	addi %r5, %r4, 4
	std %r5, -24(%r1)
	stw %r3, 0(%r4)
	b .LBB67_8
.LBB67_10:
	b .LBB67_11
.LBB67_11:
	ld %r3, -48(%r1)
	std %r3, -16(%r1)
.LBB67_12:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-.Lfunc_begin67
	.cfi_endproc
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	4
	.type	wmemset,@function
.Lfunc_toc68:                           # @wmemset
	.quad	.TOC.-.Lfunc_gep68
wmemset:
.Lfunc_begin68:
	.cfi_startproc
.Lfunc_gep68:
	ld %r2, .Lfunc_toc68-.Lfunc_gep68(%r12)
	add %r2, %r2, %r12
.Lfunc_lep68:
	.localentry	wmemset, .Lfunc_lep68-.Lfunc_gep68
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC73@toc@ha
	ld %r3, .LC73@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	addi %r4, %r3, -1
	std %r4, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB68_3
# %bb.2:                                #   in Loop: Header=BB68_1 Depth=1
	addis %r3, %r2, .LC73@toc@ha
	ld %r3, .LC73@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -20(%r1)
	ld %r4, -16(%r1)
	addi %r5, %r4, 4
	std %r5, -16(%r1)
	stw %r3, 0(%r4)
	b .LBB68_1
.LBB68_3:
	ld %r3, -40(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-.Lfunc_begin68
	.cfi_endproc
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	4
	.type	bcopy,@function
.Lfunc_toc69:                           # @bcopy
	.quad	.TOC.-.Lfunc_gep69
bcopy:
.Lfunc_begin69:
	.cfi_startproc
.Lfunc_gep69:
	ld %r2, .Lfunc_toc69-.Lfunc_gep69(%r12)
	add %r2, %r2, %r12
.Lfunc_lep69:
	.localentry	bcopy, .Lfunc_lep69-.Lfunc_gep69
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC74@toc@ha
	ld %r3, .LC74@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	ld %r4, -48(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB69_6
# %bb.1:
	addis %r3, %r2, .LC74@toc@ha
	ld %r3, .LC74@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r4, -32(%r1)
	ld %r3, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -40(%r1)
	ld %r4, -32(%r1)
	ld %r3, -48(%r1)
	add %r3, %r3, %r4
	std %r3, -48(%r1)
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB69_5
# %bb.3:                                #   in Loop: Header=BB69_2 Depth=1
	addis %r3, %r2, .LC74@toc@ha
	ld %r3, .LC74@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -40(%r1)
	addi %r4, %r3, -1
	std %r4, -40(%r1)
	lbz %r3, -1(%r3)
	ld %r4, -48(%r1)
	addi %r5, %r4, -1
	std %r5, -48(%r1)
	stb %r3, -1(%r4)
# %bb.4:                                #   in Loop: Header=BB69_2 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB69_2
.LBB69_5:
	b .LBB69_13
.LBB69_6:
	ld %r3, -40(%r1)
	ld %r4, -48(%r1)
	cmpd	%r3, %r4
	beq	%cr0, .LBB69_12
# %bb.7:
	addis %r3, %r2, .LC74@toc@ha
	ld %r3, .LC74@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r4)
	std %r3, 24(%r4)
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB69_11
# %bb.9:                                #   in Loop: Header=BB69_8 Depth=1
	addis %r3, %r2, .LC74@toc@ha
	ld %r3, .LC74@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -40(%r1)
	addi %r4, %r3, 1
	std %r4, -40(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	addi %r5, %r4, 1
	std %r5, -48(%r1)
	stb %r3, 0(%r4)
# %bb.10:                               #   in Loop: Header=BB69_8 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB69_8
.LBB69_11:
	b .LBB69_12
.LBB69_12:
	b .LBB69_13
.LBB69_13:
	blr
	.long	0
	.quad	0
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-.Lfunc_begin69
	.cfi_endproc
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	4
	.type	rotl64,@function
.Lfunc_toc70:                           # @rotl64
	.quad	.TOC.-.Lfunc_gep70
rotl64:
.Lfunc_begin70:
	.cfi_startproc
.Lfunc_gep70:
	ld %r2, .Lfunc_toc70-.Lfunc_gep70(%r12)
	add %r2, %r2, %r12
.Lfunc_lep70:
	.localentry	rotl64, .Lfunc_lep70-.Lfunc_gep70
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r4, -16(%r1)
	lwz %r5, -20(%r1)
	sld %r3, %r4, %r5
	subfic %r5, %r5, 64
                                        # implicit-def: $x6
	mr	%r6, %r5
	clrldi	%r6, %r6, 32
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, -1
	and %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-.Lfunc_begin70
	.cfi_endproc
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	4
	.type	rotr64,@function
.Lfunc_toc71:                           # @rotr64
	.quad	.TOC.-.Lfunc_gep71
rotr64:
.Lfunc_begin71:
	.cfi_startproc
.Lfunc_gep71:
	ld %r2, .Lfunc_toc71-.Lfunc_gep71(%r12)
	add %r2, %r2, %r12
.Lfunc_lep71:
	.localentry	rotr64, .Lfunc_lep71-.Lfunc_gep71
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC76@toc@ha
	ld %r4, .LC76@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r4, -16(%r1)
	lwz %r5, -20(%r1)
	srd %r3, %r4, %r5
	subfic %r5, %r5, 64
                                        # implicit-def: $x6
	mr	%r6, %r5
	clrldi	%r6, %r6, 32
	sld %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, -1
	and %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-.Lfunc_begin71
	.cfi_endproc
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	4
	.type	rotl32,@function
.Lfunc_toc72:                           # @rotl32
	.quad	.TOC.-.Lfunc_gep72
rotl32:
.Lfunc_begin72:
	.cfi_startproc
.Lfunc_gep72:
	ld %r2, .Lfunc_toc72-.Lfunc_gep72(%r12)
	add %r2, %r2, %r12
.Lfunc_lep72:
	.localentry	rotl32, .Lfunc_lep72-.Lfunc_gep72
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	lwz %r5, -16(%r1)
	slw %r3, %r4, %r5
	subfic %r5, %r5, 32
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, -1
	and %r3, %r3, %r4
	clrldi	%r3, %r3, 32
	blr
	.long	0
	.quad	0
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-.Lfunc_begin72
	.cfi_endproc
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	4
	.type	rotr32,@function
.Lfunc_toc73:                           # @rotr32
	.quad	.TOC.-.Lfunc_gep73
rotr32:
.Lfunc_begin73:
	.cfi_startproc
.Lfunc_gep73:
	ld %r2, .Lfunc_toc73-.Lfunc_gep73(%r12)
	add %r2, %r2, %r12
.Lfunc_lep73:
	.localentry	rotr32, .Lfunc_lep73-.Lfunc_gep73
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC78@toc@ha
	ld %r4, .LC78@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	lwz %r5, -16(%r1)
	srw %r3, %r4, %r5
	subfic %r5, %r5, 32
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, -1
	and %r3, %r3, %r4
	clrldi	%r3, %r3, 32
	blr
	.long	0
	.quad	0
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-.Lfunc_begin73
	.cfi_endproc
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	4
	.type	rotl_sz,@function
.Lfunc_toc74:                           # @rotl_sz
	.quad	.TOC.-.Lfunc_gep74
rotl_sz:
.Lfunc_begin74:
	.cfi_startproc
.Lfunc_gep74:
	ld %r2, .Lfunc_toc74-.Lfunc_gep74(%r12)
	add %r2, %r2, %r12
.Lfunc_lep74:
	.localentry	rotl_sz, .Lfunc_lep74-.Lfunc_gep74
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC79@toc@ha
	ld %r4, .LC79@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r4, -16(%r1)
	lwa %r5, -20(%r1)
	mr	%r3, %r5
	sld %r3, %r4, %r3
	subfic %r5, %r5, 64
                                        # kill: def $r5 killed $r5 killed $x5
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, -1
	and %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-.Lfunc_begin74
	.cfi_endproc
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	4
	.type	rotr_sz,@function
.Lfunc_toc75:                           # @rotr_sz
	.quad	.TOC.-.Lfunc_gep75
rotr_sz:
.Lfunc_begin75:
	.cfi_startproc
.Lfunc_gep75:
	ld %r2, .Lfunc_toc75-.Lfunc_gep75(%r12)
	add %r2, %r2, %r12
.Lfunc_lep75:
	.localentry	rotr_sz, .Lfunc_lep75-.Lfunc_gep75
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC80@toc@ha
	ld %r4, .LC80@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r4, -16(%r1)
	lwa %r5, -20(%r1)
	mr	%r3, %r5
	srd %r3, %r4, %r3
	subfic %r5, %r5, 64
                                        # kill: def $r5 killed $r5 killed $x5
	sld %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, -1
	and %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-.Lfunc_begin75
	.cfi_endproc
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	4
	.type	rotl16,@function
.Lfunc_toc76:                           # @rotl16
	.quad	.TOC.-.Lfunc_gep76
rotl16:
.Lfunc_begin76:
	.cfi_startproc
.Lfunc_gep76:
	ld %r2, .Lfunc_toc76-.Lfunc_gep76(%r12)
	add %r2, %r2, %r12
.Lfunc_lep76:
	.localentry	rotl16, .Lfunc_lep76-.Lfunc_gep76
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	sth %r4, -10(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC81@toc@ha
	ld %r4, .LC81@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lhz %r4, -10(%r1)
	lwz %r5, -16(%r1)
	slw %r3, %r4, %r5
	subfic %r5, %r5, 16
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	clrldi	%r3, %r3, 48
	blr
	.long	0
	.quad	0
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-.Lfunc_begin76
	.cfi_endproc
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	4
	.type	rotr16,@function
.Lfunc_toc77:                           # @rotr16
	.quad	.TOC.-.Lfunc_gep77
rotr16:
.Lfunc_begin77:
	.cfi_startproc
.Lfunc_gep77:
	ld %r2, .Lfunc_toc77-.Lfunc_gep77(%r12)
	add %r2, %r2, %r12
.Lfunc_lep77:
	.localentry	rotr16, .Lfunc_lep77-.Lfunc_gep77
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	sth %r4, -10(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC82@toc@ha
	ld %r4, .LC82@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lhz %r4, -10(%r1)
	lwz %r5, -16(%r1)
	srw %r3, %r4, %r5
	subfic %r5, %r5, 16
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	clrldi	%r3, %r3, 48
	blr
	.long	0
	.quad	0
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-.Lfunc_begin77
	.cfi_endproc
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	4
	.type	rotl8,@function
.Lfunc_toc78:                           # @rotl8
	.quad	.TOC.-.Lfunc_gep78
rotl8:
.Lfunc_begin78:
	.cfi_startproc
.Lfunc_gep78:
	ld %r2, .Lfunc_toc78-.Lfunc_gep78(%r12)
	add %r2, %r2, %r12
.Lfunc_lep78:
	.localentry	rotl8, .Lfunc_lep78-.Lfunc_gep78
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stb %r4, -9(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC83@toc@ha
	ld %r4, .LC83@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lbz %r4, -9(%r1)
	lwz %r5, -16(%r1)
	slw %r3, %r4, %r5
	subfic %r5, %r5, 8
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, 255
	and %r3, %r3, %r4
	clrldi	%r3, %r3, 56
	blr
	.long	0
	.quad	0
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-.Lfunc_begin78
	.cfi_endproc
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	4
	.type	rotr8,@function
.Lfunc_toc79:                           # @rotr8
	.quad	.TOC.-.Lfunc_gep79
rotr8:
.Lfunc_begin79:
	.cfi_startproc
.Lfunc_gep79:
	ld %r2, .Lfunc_toc79-.Lfunc_gep79(%r12)
	add %r2, %r2, %r12
.Lfunc_lep79:
	.localentry	rotr8, .Lfunc_lep79-.Lfunc_gep79
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stb %r4, -9(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC84@toc@ha
	ld %r4, .LC84@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lbz %r4, -9(%r1)
	lwz %r5, -16(%r1)
	srw %r3, %r4, %r5
	subfic %r5, %r5, 8
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	li %r4, 255
	and %r3, %r3, %r4
	clrldi	%r3, %r3, 56
	blr
	.long	0
	.quad	0
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-.Lfunc_begin79
	.cfi_endproc
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	4
	.type	bswap_16,@function
.Lfunc_toc80:                           # @bswap_16
	.quad	.TOC.-.Lfunc_gep80
bswap_16:
.Lfunc_begin80:
	.cfi_startproc
.Lfunc_gep80:
	ld %r2, .Lfunc_toc80-.Lfunc_gep80(%r12)
	add %r2, %r2, %r12
.Lfunc_lep80:
	.localentry	bswap_16, .Lfunc_lep80-.Lfunc_gep80
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC85@toc@ha
	ld %r3, .LC85@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC85@toc@ha
	ld %r4, .LC85@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 255
	sth %r3, -12(%r1)
	lhz %r3, -10(%r1)
	lhz %r4, -12(%r1)
	li %r5, 8
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	srawi %r3, %r3, 8
	lhz %r4, -10(%r1)
	lhz %r5, -12(%r1)
	li %r6, 0
	slw %r5, %r5, %r6
	and %r4, %r4, %r5
	li %r5, 8
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	clrldi	%r3, %r3, 48
	blr
	.long	0
	.quad	0
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-.Lfunc_begin80
	.cfi_endproc
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	4
	.type	bswap_32,@function
.Lfunc_toc81:                           # @bswap_32
	.quad	.TOC.-.Lfunc_gep81
bswap_32:
.Lfunc_begin81:
	.cfi_startproc
.Lfunc_gep81:
	ld %r2, .Lfunc_toc81-.Lfunc_gep81(%r12)
	add %r2, %r2, %r12
.Lfunc_lep81:
	.localentry	bswap_32, .Lfunc_lep81-.Lfunc_gep81
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC86@toc@ha
	ld %r3, .LC86@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC86@toc@ha
	ld %r4, .LC86@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 255
	stw %r3, -16(%r1)
	lwz %r3, -12(%r1)
	lwz %r4, -16(%r1)
	li %r5, 24
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	li %r4, 24
	srw %r3, %r3, %r4
	lwz %r4, -12(%r1)
	lwz %r5, -16(%r1)
	li %r6, 16
	slw %r5, %r5, %r6
	and %r4, %r4, %r5
	li %r5, 8
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	lwz %r4, -12(%r1)
	lwz %r5, -16(%r1)
	li %r6, 8
	slw %r5, %r5, %r6
	and %r4, %r4, %r5
	li %r5, 8
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	lwz %r4, -12(%r1)
	lwz %r5, -16(%r1)
	li %r6, 0
	slw %r5, %r5, %r6
	and %r4, %r4, %r5
	li %r5, 24
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	clrldi	%r3, %r3, 32
	blr
	.long	0
	.quad	0
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-.Lfunc_begin81
	.cfi_endproc
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	4
	.type	bswap_64,@function
.Lfunc_toc82:                           # @bswap_64
	.quad	.TOC.-.Lfunc_gep82
bswap_64:
.Lfunc_begin82:
	.cfi_startproc
.Lfunc_gep82:
	ld %r2, .Lfunc_toc82-.Lfunc_gep82(%r12)
	add %r2, %r2, %r12
.Lfunc_lep82:
	.localentry	bswap_64, .Lfunc_lep82-.Lfunc_gep82
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC87@toc@ha
	ld %r4, .LC87@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r3, 255
	std %r3, -24(%r1)
	ld %r4, -16(%r1)
	ld %r5, -24(%r1)
	sldi %r3, %r5, 56
	and %r3, %r4, %r3
	rldicl %r3, %r3, 8, 56
	sldi %r6, %r5, 48
	and %r7, %r4, %r6
	rldicl %r7, %r7, 24, 40
	or %r3, %r3, %r7
	sldi %r7, %r5, 40
	and %r8, %r4, %r7
	rldicl %r8, %r8, 40, 24
	or %r3, %r3, %r8
	sldi %r8, %r5, 32
	and %r9, %r4, %r8
	rldicl %r9, %r9, 56, 8
	or %r3, %r3, %r9
	sldi %r9, %r4, 8
	and %r8, %r8, %r9
	or %r3, %r3, %r8
	sldi %r8, %r4, 24
	and %r7, %r7, %r8
	or %r3, %r3, %r7
	sldi %r7, %r4, 40
	and %r6, %r6, %r7
	or %r3, %r3, %r6
	and %r4, %r4, %r5
	sldi %r4, %r4, 56
	or %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-.Lfunc_begin82
	.cfi_endproc
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	4
	.type	ffs,@function
.Lfunc_toc83:                           # @ffs
	.quad	.TOC.-.Lfunc_gep83
ffs:
.Lfunc_begin83:
	.cfi_startproc
.Lfunc_gep83:
	ld %r2, .Lfunc_toc83-.Lfunc_gep83(%r12)
	add %r2, %r2, %r12
.Lfunc_lep83:
	.localentry	ffs, .Lfunc_lep83-.Lfunc_gep83
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC88@toc@ha
	ld %r3, .LC88@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC88@toc@ha
	ld %r4, .LC88@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, -20(%r1)
	cmpldi	%r3, 32
	bge %cr0, .LBB83_6
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	addis %r3, %r2, .LC88@toc@ha
	ld %r3, .LC88@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC88@toc@ha
	ld %r4, .LC88@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -16(%r1)
	lwz %r5, -20(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB83_4
# %bb.3:
	addis %r3, %r2, .LC88@toc@ha
	ld %r3, .LC88@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC88@toc@ha
	ld %r4, .LC88@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -12(%r1)
	b .LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	b .LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -20(%r1)
	b .LBB83_1
.LBB83_6:
	li %r3, 0
	stw %r3, -12(%r1)
.LBB83_7:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-.Lfunc_begin83
	.cfi_endproc
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	4
	.type	libiberty_ffs,@function
.Lfunc_toc84:                           # @libiberty_ffs
	.quad	.TOC.-.Lfunc_gep84
libiberty_ffs:
.Lfunc_begin84:
	.cfi_startproc
.Lfunc_gep84:
	ld %r2, .Lfunc_toc84-.Lfunc_gep84(%r12)
	add %r2, %r2, %r12
.Lfunc_lep84:
	.localentry	libiberty_ffs, .Lfunc_lep84-.Lfunc_gep84
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC89@toc@ha
	ld %r3, .LC89@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC89@toc@ha
	ld %r4, .LC89@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB84_2
# %bb.1:
	addis %r3, %r2, .LC89@toc@ha
	ld %r3, .LC89@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC89@toc@ha
	ld %r4, .LC89@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB84_7
.LBB84_2:
	li %r3, 1
	stw %r3, -20(%r1)
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	andi. %r3, %r3, 1
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+lt
	crxor 4*cr5+lt, gt, 4*cr5+lt
	bc 12, 4*cr5+lt, .LBB84_6
	b .LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	addis %r3, %r2, .LC89@toc@ha
	ld %r3, .LC89@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC89@toc@ha
	ld %r4, .LC89@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -16(%r1)
	srawi %r3, %r3, 1
	stw %r3, -16(%r1)
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -20(%r1)
	b .LBB84_3
.LBB84_6:
	lwz %r3, -20(%r1)
	stw %r3, -12(%r1)
.LBB84_7:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-.Lfunc_begin84
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	4
	.type	gl_isinff,@function
.Lfunc_toc85:                           # @gl_isinff
	.quad	.TOC.-.Lfunc_gep85
gl_isinff:
.Lfunc_begin85:
	.cfi_startproc
.Lfunc_gep85:
	ld %r2, .Lfunc_toc85-.Lfunc_gep85(%r12)
	add %r2, %r2, %r12
.Lfunc_lep85:
	.localentry	gl_isinff, .Lfunc_lep85-.Lfunc_gep85
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 68(%r31)
	addis %r3, %r2, .LC90@toc@ha
	ld %r4, .LC90@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 68(%r31)
	li %r4, -129
	rldicl %r4, %r4, 16, 32
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	lis %r3, -32768
	stw %r3, 64(%r31)
	blt	%cr0, .LBB85_3
	b .LBB85_1
.LBB85_1:
	addis %r3, %r2, .LC90@toc@ha
	ld %r4, .LC90@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 68(%r31)
	lis %r4, 32639
	ori %r4, %r4, 65535
	bl __gtsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	crmove	4*cr5+lt, gt
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 60(%r31)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 64(%r31)
	bgt	%cr0, .LBB85_3
	b .LBB85_2
.LBB85_2:
	lwz %r4, 60(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC90@toc@ha
	ld %r3, .LC90@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC90@toc@ha
	ld %r4, .LC90@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 64(%r31)
.LBB85_3:
	lwz %r4, 64(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 56(%r31)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB85_5
# %bb.4:
	lwz %r3, 52(%r31)                       # 4-byte Folded Reload
	stw %r3, 56(%r31)                       # 4-byte Folded Spill
.LBB85_5:
	lwz %r3, 56(%r31)                       # 4-byte Folded Reload
	extsw %r3, %r3
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-.Lfunc_begin85
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	4
	.type	gl_isinfd,@function
.Lfunc_toc86:                           # @gl_isinfd
	.quad	.TOC.-.Lfunc_gep86
gl_isinfd:
.Lfunc_begin86:
	.cfi_startproc
.Lfunc_gep86:
	ld %r2, .Lfunc_toc86-.Lfunc_gep86(%r12)
	add %r2, %r2, %r12
.Lfunc_lep86:
	.localentry	gl_isinfd, .Lfunc_lep86-.Lfunc_gep86
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	addis %r3, %r2, .LC91@toc@ha
	ld %r4, .LC91@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 64(%r31)
	li %r4, -17
	rotldi	%r4, %r4, 48
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	lis %r3, -32768
	stw %r3, 60(%r31)
	blt	%cr0, .LBB86_3
	b .LBB86_1
.LBB86_1:
	addis %r3, %r2, .LC91@toc@ha
	ld %r4, .LC91@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	li %r4, -33
	rldicl %r4, %r4, 47, 1
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	crmove	4*cr5+lt, gt
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 56(%r31)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 60(%r31)
	bgt	%cr0, .LBB86_3
	b .LBB86_2
.LBB86_2:
	lwz %r4, 56(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC91@toc@ha
	ld %r3, .LC91@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC91@toc@ha
	ld %r4, .LC91@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 60(%r31)
.LBB86_3:
	lwz %r4, 60(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB86_5
# %bb.4:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
.LBB86_5:
	lwz %r3, 52(%r31)                       # 4-byte Folded Reload
	extsw %r3, %r3
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-.Lfunc_begin86
	.cfi_endproc
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	4
	.type	gl_isinfl,@function
.Lfunc_toc87:                           # @gl_isinfl
	.quad	.TOC.-.Lfunc_gep87
gl_isinfl:
.Lfunc_begin87:
	.cfi_startproc
.Lfunc_gep87:
	ld %r2, .Lfunc_toc87-.Lfunc_gep87(%r12)
	add %r2, %r2, %r12
.Lfunc_lep87:
	.localentry	gl_isinfl, .Lfunc_lep87-.Lfunc_gep87
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -96(%r1)
	std %r0, 112(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	std %r4, 72(%r31)
	addis %r3, %r2, .LC92@toc@ha
	ld %r4, .LC92@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 64(%r31)
	ld %r4, 72(%r31)
	li %r5, -17
	rotldi	%r5, %r5, 48
	li %r6, -4152
	rotldi	%r6, %r6, 52
	bl __gcc_qlt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	lis %r3, -32768
	stw %r3, 60(%r31)
	blt	%cr0, .LBB87_3
	b .LBB87_1
.LBB87_1:
	addis %r3, %r2, .LC92@toc@ha
	ld %r4, .LC92@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	ld %r4, 72(%r31)
	li %r5, -33
	rldicl %r5, %r5, 47, 1
	li %r6, -6200
	rotldi	%r6, %r6, 52
	bl __gcc_qgt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	crmove	4*cr5+lt, gt
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 56(%r31)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 60(%r31)
	bgt	%cr0, .LBB87_3
	b .LBB87_2
.LBB87_2:
	lwz %r4, 56(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC92@toc@ha
	ld %r3, .LC92@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC92@toc@ha
	ld %r4, .LC92@toc@l(%r4)
	std %r3, 16(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 60(%r31)
.LBB87_3:
	lwz %r4, 60(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	li %r3, 0
	stw %r3, 48(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB87_5
# %bb.4:
	lwz %r3, 48(%r31)                       # 4-byte Folded Reload
	stw %r3, 52(%r31)                       # 4-byte Folded Spill
.LBB87_5:
	lwz %r3, 52(%r31)                       # 4-byte Folded Reload
	extsw %r3, %r3
	addi %r1, %r1, 96
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-.Lfunc_begin87
	.cfi_endproc
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	4
	.type	_Qp_itoq,@function
.Lfunc_toc88:                           # @_Qp_itoq
	.quad	.TOC.-.Lfunc_gep88
_Qp_itoq:
.Lfunc_begin88:
	.cfi_startproc
.Lfunc_gep88:
	ld %r2, .Lfunc_toc88-.Lfunc_gep88(%r12)
	add %r2, %r2, %r12
.Lfunc_lep88:
	.localentry	_Qp_itoq, .Lfunc_lep88-.Lfunc_gep88
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 32(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 32(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, 48(%r31)
	stw %r3, 44(%r31)
	addis %r3, %r2, .LC93@toc@ha
	ld %r4, .LC93@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwa %r3, 44(%r31)
	bl __floatsidf
	nop
	bl __gcc_dtoq
	nop
	mr	%r5, %r4
	ld %r4, 48(%r31)
	std %r5, 8(%r4)
	std %r3, 0(%r4)
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-.Lfunc_begin88
	.cfi_endproc
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	4
	.type	ldexpf,@function
.Lfunc_toc89:                           # @ldexpf
	.quad	.TOC.-.Lfunc_gep89
ldexpf:
.Lfunc_begin89:
	.cfi_startproc
.Lfunc_gep89:
	ld %r2, .Lfunc_toc89-.Lfunc_gep89(%r12)
	add %r2, %r2, %r12
.Lfunc_lep89:
	.localentry	ldexpf, .Lfunc_lep89-.Lfunc_gep89
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 48(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 68(%r31)
	stw %r3, 64(%r31)
	addis %r3, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 68(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	cmpw	%r3, %r4
	bgt	%cr0, .LBB89_12
	b .LBB89_1
.LBB89_1:
	addis %r3, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r4, 68(%r31)
	std %r4, 40(%r31)                       # 8-byte Folded Spill
	mr	%r3, %r4
	bl __addsf3
	nop
	ld %r4, 40(%r31)                        # 8-byte Folded Reload
	bl __eqsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB89_12
	b .LBB89_2
.LBB89_2:
	addis %r3, %r2, .LC94@toc@ha
	ld %r3, .LC94@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r4)
	std %r3, 24(%r4)
# %bb.3:
	addis %r3, %r2, .LC94@toc@ha
	ld %r5, .LC94@toc@l(%r3)
	ld %r3, 8(%r5)
	addi %r3, %r3, 1
	std %r3, 8(%r5)
	lwz %r3, 64(%r31)
	srwi %r6, %r3, 31
                                        # implicit-def: $x4
	mr	%r4, %r6
	clrldi	%r6, %r4, 32
	ld %r4, 32(%r5)
	add %r4, %r4, %r6
	std %r4, 32(%r5)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 32(%r31)                       # 4-byte Folded Spill
	lis %r3, 16128
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
	blt	%cr0, .LBB89_5
# %bb.4:
	lwz %r3, 32(%r31)                       # 4-byte Folded Reload
	stw %r3, 36(%r31)                       # 4-byte Folded Spill
.LBB89_5:
	lwz %r3, 36(%r31)                       # 4-byte Folded Reload
	stw %r3, 60(%r31)
.LBB89_6:                               # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r4, 64(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB89_8
# %bb.7:                                #   in Loop: Header=BB89_6 Depth=1
	addis %r3, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	lwz %r4, 60(%r31)
	lwz %r3, 68(%r31)
	bl __mulsf3
	nop
	stw %r3, 68(%r31)
.LBB89_8:                               #   in Loop: Header=BB89_6 Depth=1
	lwz %r3, 64(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 64(%r31)
	lwz %r3, 64(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB89_10
# %bb.9:
	addis %r3, %r2, .LC94@toc@ha
	ld %r3, .LC94@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r4)
	std %r3, 56(%r4)
	b .LBB89_11
.LBB89_10:                              #   in Loop: Header=BB89_6 Depth=1
	lwz %r4, 60(%r31)
	mr	%r3, %r4
	bl __mulsf3
	nop
	stw %r3, 60(%r31)
	b .LBB89_6
.LBB89_11:
	b .LBB89_12
.LBB89_12:
	lwz %r3, 68(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-.Lfunc_begin89
	.cfi_endproc
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	4
	.type	ldexp,@function
.Lfunc_toc90:                           # @ldexp
	.quad	.TOC.-.Lfunc_gep90
ldexp:
.Lfunc_begin90:
	.cfi_startproc
.Lfunc_gep90:
	ld %r2, .Lfunc_toc90-.Lfunc_gep90(%r12)
	add %r2, %r2, %r12
.Lfunc_lep90:
	.localentry	ldexp, .Lfunc_lep90-.Lfunc_gep90
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -96(%r1)
	std %r0, 112(%r1)
	.cfi_def_cfa_offset 96
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 56(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 56(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, 80(%r31)
	stw %r3, 76(%r31)
	addis %r3, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 80(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 2047
	rldic %r4, %r4, 52, 1
	cmpd	%r3, %r4
	bgt	%cr0, .LBB90_12
	b .LBB90_1
.LBB90_1:
	addis %r3, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r4, 80(%r31)
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	mr	%r3, %r4
	bl __adddf3
	nop
	ld %r4, 48(%r31)                        # 8-byte Folded Reload
	bl __eqdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB90_12
	b .LBB90_2
.LBB90_2:
	addis %r3, %r2, .LC95@toc@ha
	ld %r3, .LC95@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r4)
	std %r3, 24(%r4)
# %bb.3:
	addis %r3, %r2, .LC95@toc@ha
	ld %r5, .LC95@toc@l(%r3)
	ld %r3, 8(%r5)
	addi %r3, %r3, 1
	std %r3, 8(%r5)
	lwz %r3, 76(%r31)
	srwi %r6, %r3, 31
                                        # implicit-def: $x4
	mr	%r4, %r6
	clrldi	%r6, %r4, 32
	ld %r4, 32(%r5)
	add %r4, %r4, %r6
	std %r4, 32(%r5)
	cmpwi	%r3, 0
	li %r3, 1
	rldic %r3, %r3, 62, 1
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	li %r3, 511
	rldic %r3, %r3, 53, 2
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	blt	%cr0, .LBB90_5
# %bb.4:
	ld %r3, 32(%r31)                        # 8-byte Folded Reload
	std %r3, 40(%r31)                       # 8-byte Folded Spill
.LBB90_5:
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	std %r3, 64(%r31)
.LBB90_6:                               # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r4, 76(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB90_8
# %bb.7:                                #   in Loop: Header=BB90_6 Depth=1
	addis %r3, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	ld %r4, 64(%r31)
	ld %r3, 80(%r31)
	bl __muldf3
	nop
	std %r3, 80(%r31)
.LBB90_8:                               #   in Loop: Header=BB90_6 Depth=1
	lwz %r3, 76(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 76(%r31)
	lwz %r3, 76(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB90_10
# %bb.9:
	addis %r3, %r2, .LC95@toc@ha
	ld %r3, .LC95@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r4)
	std %r3, 56(%r4)
	b .LBB90_11
.LBB90_10:                              #   in Loop: Header=BB90_6 Depth=1
	ld %r4, 64(%r31)
	mr	%r3, %r4
	bl __muldf3
	nop
	std %r3, 64(%r31)
	b .LBB90_6
.LBB90_11:
	b .LBB90_12
.LBB90_12:
	ld %r3, 80(%r31)
	addi %r1, %r1, 96
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-.Lfunc_begin90
	.cfi_endproc
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	4
	.type	ldexpl,@function
.Lfunc_toc91:                           # @ldexpl
	.quad	.TOC.-.Lfunc_gep91
ldexpl:
.Lfunc_begin91:
	.cfi_startproc
.Lfunc_gep91:
	ld %r2, .Lfunc_toc91-.Lfunc_gep91(%r12)
	add %r2, %r2, %r12
.Lfunc_lep91:
	.localentry	ldexpl, .Lfunc_lep91-.Lfunc_gep91
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -144(%r1)
	std %r0, 160(%r1)
	.cfi_def_cfa_offset 144
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r5, 72(%r31)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, 72(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, 112(%r31)
	std %r4, 120(%r31)
	stw %r3, 108(%r31)
	addis %r3, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 120(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 2047
	rldic %r4, %r4, 52, 1
	cmpd	%r3, %r4
	bgt	%cr0, .LBB91_12
	b .LBB91_1
.LBB91_1:
	addis %r3, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r5, 112(%r31)
	std %r5, 56(%r31)                       # 8-byte Folded Spill
	ld %r6, 120(%r31)
	std %r6, 64(%r31)                       # 8-byte Folded Spill
	mr	%r3, %r5
	mr	%r4, %r6
	bl __gcc_qadd
	nop
	ld %r5, 56(%r31)                        # 8-byte Folded Reload
	ld %r6, 64(%r31)                        # 8-byte Folded Reload
	bl __gcc_qeq
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB91_12
	b .LBB91_2
.LBB91_2:
	addis %r3, %r2, .LC96@toc@ha
	ld %r3, .LC96@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r4)
	std %r3, 24(%r4)
# %bb.3:
	addis %r3, %r2, .LC96@toc@ha
	ld %r5, .LC96@toc@l(%r3)
	ld %r3, 8(%r5)
	addi %r3, %r3, 1
	std %r3, 8(%r5)
	lwz %r3, 108(%r31)
	srwi %r6, %r3, 31
                                        # implicit-def: $x4
	mr	%r4, %r6
	clrldi	%r6, %r4, 32
	ld %r4, 32(%r5)
	add %r4, %r4, %r6
	std %r4, 32(%r5)
	cmpwi	%r3, 0
	li %r3, 1
	rldic %r3, %r3, 62, 1
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	li %r3, 511
	rldic %r3, %r3, 53, 2
	std %r3, 48(%r31)                       # 8-byte Folded Spill
	blt	%cr0, .LBB91_5
# %bb.4:
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	std %r3, 48(%r31)                       # 8-byte Folded Spill
.LBB91_5:
	ld %r3, 48(%r31)                        # 8-byte Folded Reload
	li %r4, 0
	std %r4, 88(%r31)
	std %r3, 80(%r31)
.LBB91_6:                               # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r4, 108(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB91_8
# %bb.7:                                #   in Loop: Header=BB91_6 Depth=1
	addis %r3, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	ld %r5, 80(%r31)
	ld %r6, 88(%r31)
	ld %r3, 112(%r31)
	ld %r4, 120(%r31)
	bl __gcc_qmul
	nop
	std %r4, 120(%r31)
	std %r3, 112(%r31)
.LBB91_8:                               #   in Loop: Header=BB91_6 Depth=1
	lwz %r3, 108(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 108(%r31)
	lwz %r3, 108(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB91_10
# %bb.9:
	addis %r3, %r2, .LC96@toc@ha
	ld %r3, .LC96@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r4)
	std %r3, 56(%r4)
	b .LBB91_11
.LBB91_10:                              #   in Loop: Header=BB91_6 Depth=1
	ld %r5, 80(%r31)
	ld %r6, 88(%r31)
	mr	%r3, %r5
	mr	%r4, %r6
	bl __gcc_qmul
	nop
	std %r4, 88(%r31)
	std %r3, 80(%r31)
	b .LBB91_6
.LBB91_11:
	b .LBB91_12
.LBB91_12:
	ld %r3, 112(%r31)
	ld %r4, 120(%r31)
	addi %r1, %r1, 144
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-.Lfunc_begin91
	.cfi_endproc
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	4
	.type	memxor,@function
.Lfunc_toc92:                           # @memxor
	.quad	.TOC.-.Lfunc_gep92
memxor:
.Lfunc_begin92:
	.cfi_startproc
.Lfunc_gep92:
	ld %r2, .Lfunc_toc92-.Lfunc_gep92(%r12)
	add %r2, %r2, %r12
.Lfunc_lep92:
	.localentry	memxor, .Lfunc_lep92-.Lfunc_gep92
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpldi	%r3, 0
	ble %cr0, .LBB92_4
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -40(%r1)
	addi %r4, %r3, 1
	std %r4, -40(%r1)
	lbz %r5, 0(%r3)
	ld %r4, -48(%r1)
	addi %r3, %r4, 1
	std %r3, -48(%r1)
	lbz %r3, 0(%r4)
	xor %r3, %r3, %r5
	stb %r3, 0(%r4)
# %bb.3:                                #   in Loop: Header=BB92_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB92_1
.LBB92_4:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-.Lfunc_begin92
	.cfi_endproc
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	4
	.type	strncat,@function
.Lfunc_toc93:                           # @strncat
	.quad	.TOC.-.Lfunc_gep93
strncat:
.Lfunc_begin93:
	.cfi_startproc
.Lfunc_gep93:
	ld %r2, .Lfunc_toc93-.Lfunc_gep93(%r12)
	add %r2, %r2, %r12
.Lfunc_lep93:
	.localentry	strncat, .Lfunc_lep93-.Lfunc_gep93
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -112(%r1)
	std %r0, 128(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 96(%r31)
	std %r4, 88(%r31)
	std %r5, 80(%r31)
	addis %r3, %r2, .LC98@toc@ha
	ld %r3, .LC98@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 96(%r31)
	std %r3, 64(%r31)                       # 8-byte Folded Spill
	ld %r3, 96(%r31)
	mr	%r4, %r2
	std %r4, 24(%r1)
	addis %r4, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
	mr	%r4, %r3
	ld %r3, 64(%r31)                        # 8-byte Folded Reload
	add %r3, %r3, %r4
	std %r3, 72(%r31)
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 80(%r31)
	cmpldi	%r3, 0
	li %r3, 0
	stw %r3, 60(%r31)
	ble %cr0, .LBB93_4
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	addis %r3, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 88(%r31)
	lbz %r3, 0(%r3)
	ld %r4, 72(%r31)
	stb %r3, 0(%r4)
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, 56(%r31)
	cmpwi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 60(%r31)
	beq	%cr0, .LBB93_4
# %bb.3:                                #   in Loop: Header=BB93_1 Depth=1
	lwz %r4, 56(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC98@toc@ha
	ld %r3, .LC98@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, 60(%r31)
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	lwz %r4, 60(%r31)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB93_7
	b .LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
	addis %r3, %r2, .LC98@toc@ha
	ld %r3, .LC98@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB93_1 Depth=1
	ld %r3, 88(%r31)
	addi %r3, %r3, 1
	std %r3, 88(%r31)
	ld %r3, 72(%r31)
	addi %r3, %r3, 1
	std %r3, 72(%r31)
	ld %r3, 80(%r31)
	addi %r3, %r3, -1
	std %r3, 80(%r31)
	b .LBB93_1
.LBB93_7:
	ld %r3, 80(%r31)
	cmpdi	%r3, 0
	bne	%cr0, .LBB93_9
# %bb.8:
	addis %r3, %r2, .LC98@toc@ha
	ld %r3, .LC98@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r4, 72(%r31)
	li %r3, 0
	stb %r3, 0(%r4)
.LBB93_9:
	ld %r3, 96(%r31)
	addi %r1, %r1, 112
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-.Lfunc_begin93
	.cfi_endproc
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	4
	.type	strnlen,@function
.Lfunc_toc94:                           # @strnlen
	.quad	.TOC.-.Lfunc_gep94
strnlen:
.Lfunc_begin94:
	.cfi_startproc
.Lfunc_gep94:
	ld %r2, .Lfunc_toc94-.Lfunc_gep94(%r12)
	add %r2, %r2, %r12
.Lfunc_lep94:
	.localentry	strnlen, .Lfunc_lep94-.Lfunc_gep94
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC100@toc@ha
	ld %r3, .LC100@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC100@toc@ha
	ld %r4, .LC100@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, -32(%r1)
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	cmpld	%r3, %r4
	li %r3, 0
	stw %r3, -36(%r1)
	bge %cr0, .LBB94_4
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	addis %r3, %r2, .LC100@toc@ha
	ld %r4, .LC100@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	ld %r4, -32(%r1)
	lbzx %r3, %r3, %r4
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	crnot 4*cr5+lt, 4*cr5+lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -40(%r1)
	cmpwi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB94_4
# %bb.3:                                #   in Loop: Header=BB94_1 Depth=1
	lwz %r4, -40(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC100@toc@ha
	ld %r3, .LC100@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC100@toc@ha
	ld %r4, .LC100@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	lwz %r4, -36(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB94_7
	b .LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	addis %r3, %r2, .LC100@toc@ha
	ld %r3, .LC100@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC100@toc@ha
	ld %r4, .LC100@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB94_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, 1
	std %r3, -32(%r1)
	b .LBB94_1
.LBB94_7:
	ld %r3, -32(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-.Lfunc_begin94
	.cfi_endproc
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	4
	.type	strpbrk,@function
.Lfunc_toc95:                           # @strpbrk
	.quad	.TOC.-.Lfunc_gep95
strpbrk:
.Lfunc_begin95:
	.cfi_startproc
.Lfunc_gep95:
	ld %r2, .Lfunc_toc95-.Lfunc_gep95(%r12)
	add %r2, %r2, %r12
.Lfunc_lep95:
	.localentry	strpbrk, .Lfunc_lep95-.Lfunc_gep95
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 0(%r4)
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB95_8
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -32(%r1)
	std %r3, -40(%r1)
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB95_7
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=2
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -40(%r1)
	addi %r4, %r3, 1
	std %r4, -40(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	bne	%cr0, .LBB95_6
# %bb.5:
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	b .LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	ld %r3, -24(%r1)
	addi %r3, %r3, 1
	std %r3, -24(%r1)
	b .LBB95_1
.LBB95_8:
	li %r3, 0
	std %r3, -16(%r1)
.LBB95_9:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-.Lfunc_begin95
	.cfi_endproc
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	4
	.type	strrchr,@function
.Lfunc_toc96:                           # @strrchr
	.quad	.TOC.-.Lfunc_gep96
strrchr:
.Lfunc_begin96:
	.cfi_startproc
.Lfunc_gep96:
	ld %r2, .Lfunc_toc96-.Lfunc_gep96(%r12)
	add %r2, %r2, %r12
.Lfunc_lep96:
	.localentry	strrchr, .Lfunc_lep96-.Lfunc_gep96
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC102@toc@ha
	ld %r3, .LC102@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, -32(%r1)
	b .LBB96_2
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
	addis %r3, %r2, .LC102@toc@ha
	ld %r3, .LC102@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r4)
	std %r3, 8(%r4)
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -20(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB96_4
# %bb.3:                                #   in Loop: Header=BB96_2 Depth=1
	addis %r3, %r2, .LC102@toc@ha
	ld %r3, .LC102@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	std %r3, -32(%r1)
.LBB96_4:                               #   in Loop: Header=BB96_2 Depth=1
	b .LBB96_5
.LBB96_5:                               #   in Loop: Header=BB96_2 Depth=1
	ld %r3, -16(%r1)
	addi %r4, %r3, 1
	std %r4, -16(%r1)
	lbz %r3, 0(%r3)
	extsb %r3, %r3
	cmpwi	%r3, 0
	bne	%cr0, .LBB96_1
# %bb.6:
	ld %r3, -32(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-.Lfunc_begin96
	.cfi_endproc
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	4
	.type	strstr,@function
.Lfunc_toc97:                           # @strstr
	.quad	.TOC.-.Lfunc_gep97
strstr:
.Lfunc_begin97:
	.cfi_startproc
.Lfunc_gep97:
	ld %r2, .Lfunc_toc97-.Lfunc_gep97(%r12)
	add %r2, %r2, %r12
.Lfunc_lep97:
	.localentry	strstr, .Lfunc_lep97-.Lfunc_gep97
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 56(%r31)
	std %r4, 48(%r31)
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 56(%r31)
	std %r3, 40(%r31)
	ld %r3, 48(%r31)
	mr	%r4, %r2
	std %r4, 24(%r1)
	addis %r4, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r4)
	mr	%r12, %r4
	mtctr %r4
	bctrl
	ld 2, 24(%r1)
	std %r3, 32(%r31)
	ld %r3, 32(%r31)
	cmpdi	%r3, 0
	bne	%cr0, .LBB97_2
# %bb.1:
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 56(%r31)
	std %r3, 64(%r31)
	b .LBB97_9
.LBB97_2:
	b .LBB97_3
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 40(%r31)
	ld %r4, 48(%r31)
	lbz %r4, 0(%r4)
	mr	%r5, %r2
	std %r5, 24(%r1)
	extsw %r4, %r4
	addis %r5, %r2, .LC104@toc@ha
	ld %r5, .LC104@toc@l(%r5)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
	std %r3, 40(%r31)
	li %r4, 0
	cmpd	%r3, %r4
	beq	%cr0, .LBB97_8
# %bb.4:                                #   in Loop: Header=BB97_3 Depth=1
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 40(%r31)
	ld %r4, 48(%r31)
	ld %r5, 32(%r31)
	mr	%r6, %r2
	std %r6, 24(%r1)
	addis %r6, %r2, .LC105@toc@ha
	ld %r6, .LC105@toc@l(%r6)
	mr	%r12, %r6
	mtctr %r6
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB97_6
# %bb.5:
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, 40(%r31)
	std %r3, 64(%r31)
	b .LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	b .LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	ld %r3, 40(%r31)
	addi %r3, %r3, 1
	std %r3, 40(%r31)
	b .LBB97_3
.LBB97_8:
	li %r3, 0
	std %r3, 64(%r31)
.LBB97_9:
	ld %r3, 64(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-.Lfunc_begin97
	.cfi_endproc
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	4
	.type	copysign,@function
.Lfunc_toc98:                           # @copysign
	.quad	.TOC.-.Lfunc_gep98
copysign:
.Lfunc_begin98:
	.cfi_startproc
.Lfunc_gep98:
	ld %r2, .Lfunc_toc98-.Lfunc_gep98(%r12)
	add %r2, %r2, %r12
.Lfunc_lep98:
	.localentry	copysign, .Lfunc_lep98-.Lfunc_gep98
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 40(%r31)
	std %r4, 32(%r31)
	addis %r3, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 40(%r31)
	li %r4, 0
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB98_3
	b .LBB98_1
.LBB98_1:
	addis %r3, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 32(%r31)
	li %r4, 0
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB98_3
	b .LBB98_2
.LBB98_2:
	addis %r3, %r2, .LC106@toc@ha
	ld %r3, .LC106@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r4)
	std %r3, 32(%r4)
	b .LBB98_6
.LBB98_3:
	addis %r3, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 40(%r31)
	li %r4, 0
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB98_7
	b .LBB98_4
.LBB98_4:
	addis %r3, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 32(%r31)
	li %r4, 0
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB98_7
	b .LBB98_5
.LBB98_5:
	addis %r3, %r2, .LC106@toc@ha
	ld %r3, .LC106@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r4)
	std %r3, 48(%r4)
.LBB98_6:
	addis %r3, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 40(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 48(%r31)
	b .LBB98_8
.LBB98_7:
	ld %r3, 40(%r31)
	std %r3, 48(%r31)
.LBB98_8:
	ld %r3, 48(%r31)
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-.Lfunc_begin98
	.cfi_endproc
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	4
	.type	memmem,@function
.Lfunc_toc99:                           # @memmem
	.quad	.TOC.-.Lfunc_gep99
memmem:
.Lfunc_begin99:
	.cfi_startproc
.Lfunc_gep99:
	ld %r2, .Lfunc_toc99-.Lfunc_gep99(%r12)
	add %r2, %r2, %r12
.Lfunc_lep99:
	.localentry	memmem, .Lfunc_lep99-.Lfunc_gep99
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -112(%r1)
	std %r0, 128(%r1)
	.cfi_def_cfa_offset 112
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 88(%r31)
	std %r4, 80(%r31)
	std %r5, 72(%r31)
	std %r6, 64(%r31)
	addis %r3, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 88(%r31)
	ld %r4, 80(%r31)
	add %r3, %r3, %r4
	ld %r4, 64(%r31)
	neg %r4, %r4
	add %r3, %r3, %r4
	std %r3, 48(%r31)
	ld %r3, 64(%r31)
	cmpdi	%r3, 0
	bne	%cr0, .LBB99_2
# %bb.1:
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 88(%r31)
	std %r3, 96(%r31)
	b .LBB99_15
.LBB99_2:
	ld %r3, 80(%r31)
	ld %r4, 64(%r31)
	cmpld	%r3, %r4
	crmove	4*cr5+lt, lt
	li %r3, 0
	stw %r3, 40(%r31)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB99_4
# %bb.3:
	lwz %r3, 40(%r31)                       # 4-byte Folded Reload
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
.LBB99_4:
	lwz %r3, 44(%r31)                       # 4-byte Folded Reload
	extsw %r3, %r3
	cmpdi	%r3, 0
	beq	%cr0, .LBB99_6
# %bb.5:
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 0
	std %r3, 96(%r31)
	b .LBB99_15
.LBB99_6:
	ld %r3, 88(%r31)
	std %r3, 56(%r31)
.LBB99_7:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 56(%r31)
	ld %r4, 48(%r31)
	cmpld	%r3, %r4
	bgt	%cr0, .LBB99_14
# %bb.8:                                #   in Loop: Header=BB99_7 Depth=1
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, 56(%r31)
	lbz %r3, 0(%r3)
	ld %r4, 72(%r31)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	bne	%cr0, .LBB99_12
# %bb.9:                                #   in Loop: Header=BB99_7 Depth=1
	addis %r3, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 56(%r31)
	addi %r3, %r3, 1
	ld %r4, 72(%r31)
	addi %r4, %r4, 1
	ld %r5, 64(%r31)
	addi %r5, %r5, -1
	mr	%r6, %r2
	std %r6, 24(%r1)
	addis %r6, %r2, .LC108@toc@ha
	ld %r6, .LC108@toc@l(%r6)
	mr	%r12, %r6
	mtctr %r6
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB99_12
# %bb.10:
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.11:
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, 56(%r31)
	std %r3, 96(%r31)
	b .LBB99_15
.LBB99_12:                              #   in Loop: Header=BB99_7 Depth=1
	b .LBB99_13
.LBB99_13:                              #   in Loop: Header=BB99_7 Depth=1
	ld %r3, 56(%r31)
	addi %r3, %r3, 1
	std %r3, 56(%r31)
	b .LBB99_7
.LBB99_14:
	li %r3, 0
	std %r3, 96(%r31)
.LBB99_15:
	ld %r3, 96(%r31)
	addi %r1, %r1, 112
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-.Lfunc_begin99
	.cfi_endproc
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	4
	.type	mempcpy,@function
.Lfunc_toc100:                          # @mempcpy
	.quad	.TOC.-.Lfunc_gep100
mempcpy:
.Lfunc_begin100:
	.cfi_startproc
.Lfunc_gep100:
	ld %r2, .Lfunc_toc100-.Lfunc_gep100(%r12)
	add %r2, %r2, %r12
.Lfunc_lep100:
	.localentry	mempcpy, .Lfunc_lep100-.Lfunc_gep100
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	std %r4, 56(%r31)
	std %r5, 48(%r31)
	addis %r3, %r2, .LC109@toc@ha
	ld %r3, .LC109@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC109@toc@ha
	ld %r4, .LC109@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 64(%r31)
	std %r3, 40(%r31)                       # 8-byte Folded Spill
	ld %r4, 56(%r31)
	ld %r5, 48(%r31)
	bl memcpy
	nop
                                        # kill: def $x4 killed $x3
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
	ld %r4, 48(%r31)
	add %r3, %r3, %r4
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-.Lfunc_begin100
	.cfi_endproc
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	4
	.type	frexp,@function
.Lfunc_toc101:                          # @frexp
	.quad	.TOC.-.Lfunc_gep101
frexp:
.Lfunc_begin101:
	.cfi_startproc
.Lfunc_gep101:
	ld %r2, .Lfunc_toc101-.Lfunc_gep101(%r12)
	add %r2, %r2, %r12
.Lfunc_lep101:
	.localentry	frexp, .Lfunc_lep101-.Lfunc_gep101
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 48(%r31)
	std %r4, 40(%r31)
	addis %r3, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r4, 0
	stw %r4, 32(%r31)
	stw %r4, 36(%r31)
	ld %r3, 48(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_2
	b .LBB101_1
.LBB101_1:
	addis %r3, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 48(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 48(%r31)
	li %r3, 1
	stw %r3, 36(%r31)
.LBB101_2:
	ld %r3, 48(%r31)
	li %r4, 1023
	rldic %r4, %r4, 52, 2
	bl __gedf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	blt	%cr0, .LBB101_7
	b .LBB101_3
.LBB101_3:
	addis %r3, %r2, .LC110@toc@ha
	ld %r3, .LC110@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r4)
	std %r3, 16(%r4)
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	ld %r3, 48(%r31)
	li %r4, 1023
	rldic %r4, %r4, 52, 2
	bl __gedf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	blt	%cr0, .LBB101_6
	b .LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
	addis %r3, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 32(%r31)
	addi %r3, %r3, 1
	stw %r3, 32(%r31)
	ld %r3, 48(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __muldf3
	nop
	std %r3, 48(%r31)
	b .LBB101_4
.LBB101_6:
	b .LBB101_15
.LBB101_7:
	ld %r3, 48(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_14
	b .LBB101_8
.LBB101_8:
	addis %r3, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 48(%r31)
	li %r4, 0
	bl __eqdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_14
	b .LBB101_9
.LBB101_9:
	addis %r3, %r2, .LC110@toc@ha
	ld %r3, .LC110@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.10:
	addis %r3, %r2, .LC110@toc@ha
	ld %r3, .LC110@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r4)
	std %r3, 32(%r4)
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	ld %r3, 48(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_13
	b .LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_11 Depth=1
	addis %r3, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r3)
	ld %r3, 56(%r4)
	addi %r3, %r3, 1
	std %r3, 56(%r4)
	lwz %r3, 32(%r31)
	addi %r3, %r3, -1
	stw %r3, 32(%r31)
	ld %r4, 48(%r31)
	mr	%r3, %r4
	bl __adddf3
	nop
	std %r3, 48(%r31)
	b .LBB101_11
.LBB101_13:
	b .LBB101_14
.LBB101_14:
	b .LBB101_15
.LBB101_15:
	lwz %r3, 32(%r31)
	ld %r4, 40(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 36(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB101_17
# %bb.16:
	addis %r3, %r2, .LC110@toc@ha
	ld %r4, .LC110@toc@l(%r3)
	ld %r3, 64(%r4)
	addi %r3, %r3, 1
	std %r3, 64(%r4)
	ld %r3, 48(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 48(%r31)
.LBB101_17:
	ld %r3, 48(%r31)
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-.Lfunc_begin101
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	4
	.type	__muldi3,@function
.Lfunc_toc102:                          # @__muldi3
	.quad	.TOC.-.Lfunc_gep102
__muldi3:
.Lfunc_begin102:
	.cfi_startproc
.Lfunc_gep102:
	ld %r2, .Lfunc_toc102-.Lfunc_gep102(%r12)
	add %r2, %r2, %r12
.Lfunc_lep102:
	.localentry	__muldi3, .Lfunc_lep102-.Lfunc_gep102
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC111@toc@ha
	ld %r3, .LC111@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC111@toc@ha
	ld %r4, .LC111@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, -32(%r1)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld %r3, -40(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB102_5
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	addis %r3, %r2, .LC111@toc@ha
	ld %r3, .LC111@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC111@toc@ha
	ld %r4, .LC111@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -40(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpdi	%r3, 0
	beq	%cr0, .LBB102_4
# %bb.3:                                #   in Loop: Header=BB102_1 Depth=1
	addis %r3, %r2, .LC111@toc@ha
	ld %r3, .LC111@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC111@toc@ha
	ld %r4, .LC111@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r4, -24(%r1)
	ld %r3, -32(%r1)
	add %r3, %r3, %r4
	std %r3, -32(%r1)
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	ld %r3, -24(%r1)
	sldi %r3, %r3, 1
	std %r3, -24(%r1)
	ld %r3, -40(%r1)
	rldicl %r3, %r3, 63, 1
	std %r3, -40(%r1)
	b .LBB102_1
.LBB102_5:
	ld %r3, -32(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-.Lfunc_begin102
	.cfi_endproc
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	4
	.type	udivmodsi4,@function
.Lfunc_toc103:                          # @udivmodsi4
	.quad	.TOC.-.Lfunc_gep103
udivmodsi4:
.Lfunc_begin103:
	.cfi_startproc
.Lfunc_gep103:
	ld %r2, .Lfunc_toc103-.Lfunc_gep103(%r12)
	add %r2, %r2, %r12
.Lfunc_lep103:
	.localentry	udivmodsi4, .Lfunc_lep103-.Lfunc_gep103
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	stw %r3, -36(%r1)
	li %r3, 0
	stw %r3, -40(%r1)
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -20(%r1)
	lwz %r4, -16(%r1)
	cmplw	%r3, %r4
	li %r3, 0
	stw %r3, -52(%r1)
	bge %cr0, .LBB103_6
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 32(%r4)
	lwz %r3, -36(%r1)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -52(%r1)
	beq	%cr0, .LBB103_6
# %bb.3:                                #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	rlwinm %r3, %r3, 0, 0, 0
	cmpdi	%r3, 0
	crmove	4*cr5+lt, eq
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -56(%r1)
	cmpldi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -52(%r1)
	bne	%cr0, .LBB103_6
	b .LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	lwz %r4, -56(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -52(%r1)
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	lwz %r4, -52(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB103_8
	b .LBB103_7
.LBB103_7:                              #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -20(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -36(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -36(%r1)
	b .LBB103_1
.LBB103_8:
	b .LBB103_9
.LBB103_9:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -36(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB103_13
# %bb.10:                               #   in Loop: Header=BB103_9 Depth=1
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 48(%r4)
	lwz %r3, -16(%r1)
	lwz %r4, -20(%r1)
	cmplw	%r3, %r4
	blt	%cr0, .LBB103_12
# %bb.11:                               #   in Loop: Header=BB103_9 Depth=1
	addis %r3, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r3)
	ld %r3, 56(%r4)
	addi %r3, %r3, 1
	std %r3, 56(%r4)
	lwz %r3, -20(%r1)
	lwz %r4, -16(%r1)
	sub	%r3, %r4, %r3
	stw %r3, -16(%r1)
	lwz %r4, -36(%r1)
	lwz %r3, -40(%r1)
	or %r3, %r3, %r4
	stw %r3, -40(%r1)
.LBB103_12:                             #   in Loop: Header=BB103_9 Depth=1
	lwz %r3, -36(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -20(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -20(%r1)
	b .LBB103_9
.LBB103_13:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB103_15
# %bb.14:
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 64(%r4)
	lwz %r3, -16(%r1)
	stw %r3, -12(%r1)
	b .LBB103_16
.LBB103_15:
	lwz %r3, -40(%r1)
	stw %r3, -12(%r1)
.LBB103_16:
	lwz %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-.Lfunc_begin103
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	4
	.type	__clrsbqi2,@function
.Lfunc_toc104:                          # @__clrsbqi2
	.quad	.TOC.-.Lfunc_gep104
__clrsbqi2:
.Lfunc_begin104:
	.cfi_startproc
.Lfunc_gep104:
	ld %r2, .Lfunc_toc104-.Lfunc_gep104(%r12)
	add %r2, %r2, %r12
.Lfunc_lep104:
	.localentry	__clrsbqi2, .Lfunc_lep104-.Lfunc_gep104
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stb %r3, -13(%r1)
	addis %r3, %r2, .LC113@toc@ha
	ld %r3, .LC113@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC113@toc@ha
	ld %r4, .LC113@toc@l(%r4)
	std %r3, 0(%r4)
	lbz %r3, -13(%r1)
	cmpwi	%r3, 0
	bge %cr0, .LBB104_2
# %bb.1:
	addis %r3, %r2, .LC113@toc@ha
	ld %r3, .LC113@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC113@toc@ha
	ld %r4, .LC113@toc@l(%r4)
	std %r3, 8(%r4)
	lbz %r3, -13(%r1)
	li %r4, -1
	xor %r3, %r3, %r4
	stb %r3, -13(%r1)
.LBB104_2:
	lbz %r3, -13(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB104_4
# %bb.3:
	addis %r3, %r2, .LC113@toc@ha
	ld %r3, .LC113@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC113@toc@ha
	ld %r4, .LC113@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 7
	stw %r3, -12(%r1)
	b .LBB104_5
.LBB104_4:
	lbz %r3, -13(%r1)
	slwi %r3, %r3, 8
	cntlzw	%r3, %r3
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	addi %r3, %r3, -1
	stw %r3, -12(%r1)
.LBB104_5:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-.Lfunc_begin104
	.cfi_endproc
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	4
	.type	__clrsbdi2,@function
.Lfunc_toc105:                          # @__clrsbdi2
	.quad	.TOC.-.Lfunc_gep105
__clrsbdi2:
.Lfunc_begin105:
	.cfi_startproc
.Lfunc_gep105:
	ld %r2, .Lfunc_toc105-.Lfunc_gep105(%r12)
	add %r2, %r2, %r12
.Lfunc_lep105:
	.localentry	__clrsbdi2, .Lfunc_lep105-.Lfunc_gep105
# %bb.0:
	std %r3, -24(%r1)
	addis %r3, %r2, .LC114@toc@ha
	ld %r3, .LC114@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC114@toc@ha
	ld %r4, .LC114@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	cmpdi	%r3, 0
	bge %cr0, .LBB105_2
# %bb.1:
	addis %r3, %r2, .LC114@toc@ha
	ld %r3, .LC114@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC114@toc@ha
	ld %r4, .LC114@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -24(%r1)
	li %r4, -1
	xor %r3, %r3, %r4
	std %r3, -24(%r1)
.LBB105_2:
	ld %r3, -24(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB105_4
# %bb.3:
	addis %r3, %r2, .LC114@toc@ha
	ld %r3, .LC114@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC114@toc@ha
	ld %r4, .LC114@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 63
	stw %r3, -12(%r1)
	b .LBB105_5
.LBB105_4:
	ld %r3, -24(%r1)
	cntlzd %r3, %r3
	stw %r3, -28(%r1)
	lwz %r3, -28(%r1)
	addi %r3, %r3, -1
	stw %r3, -12(%r1)
.LBB105_5:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-.Lfunc_begin105
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	4
	.type	__mulsi3,@function
.Lfunc_toc106:                          # @__mulsi3
	.quad	.TOC.-.Lfunc_gep106
__mulsi3:
.Lfunc_begin106:
	.cfi_startproc
.Lfunc_gep106:
	ld %r2, .Lfunc_toc106-.Lfunc_gep106(%r12)
	add %r2, %r2, %r12
.Lfunc_lep106:
	.localentry	__mulsi3, .Lfunc_lep106-.Lfunc_gep106
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC115@toc@ha
	ld %r3, .LC115@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC115@toc@ha
	ld %r4, .LC115@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB106_5
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	addis %r3, %r2, .LC115@toc@ha
	ld %r3, .LC115@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC115@toc@ha
	ld %r4, .LC115@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB106_4
# %bb.3:                                #   in Loop: Header=BB106_1 Depth=1
	addis %r3, %r2, .LC115@toc@ha
	ld %r3, .LC115@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC115@toc@ha
	ld %r4, .LC115@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r4, -16(%r1)
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	lwz %r3, -12(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -12(%r1)
	lwz %r3, -16(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -16(%r1)
	b .LBB106_1
.LBB106_5:
	lwz %r3, -20(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-.Lfunc_begin106
	.cfi_endproc
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	4
	.type	__cmovd,@function
.Lfunc_toc107:                          # @__cmovd
	.quad	.TOC.-.Lfunc_gep107
__cmovd:
.Lfunc_begin107:
	.cfi_startproc
.Lfunc_gep107:
	ld %r2, .Lfunc_toc107-.Lfunc_gep107(%r12)
	add %r2, %r2, %r12
.Lfunc_lep107:
	.localentry	__cmovd, .Lfunc_lep107-.Lfunc_gep107
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -16(%r1)
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC116@toc@ha
	ld %r3, .LC116@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -28(%r1)
	li %r4, 3
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -28(%r1)
	li %r4, -8
	and %r3, %r3, %r4
	stw %r3, -40(%r1)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	std %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	cmpld	%r3, %r4
	blt	%cr0, .LBB107_3
# %bb.1:
	addis %r3, %r2, .LC116@toc@ha
	ld %r3, .LC116@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	bgt	%cr0, .LBB107_3
# %bb.2:
	addis %r3, %r2, .LC116@toc@ha
	ld %r3, .LC116@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB107_11
.LBB107_3:
	addis %r3, %r2, .LC116@toc@ha
	ld %r3, .LC116@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB107_7
# %bb.5:                                #   in Loop: Header=BB107_4 Depth=1
	addis %r3, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, -24(%r1)
	lwz %r4, -32(%r1)
	sldi %r5, %r4, 3
	ldx %r3, %r3, %r5
	ld %r4, -16(%r1)
	add %r4, %r4, %r5
	std %r3, 0(%r4)
# %bb.6:                                #   in Loop: Header=BB107_4 Depth=1
	lwz %r3, -32(%r1)
	addi %r3, %r3, 1
	stw %r3, -32(%r1)
	b .LBB107_4
.LBB107_7:
	b .LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	lwz %r4, -40(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB107_10
# %bb.9:                                #   in Loop: Header=BB107_8 Depth=1
	addis %r3, %r2, .LC116@toc@ha
	ld %r3, .LC116@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r4)
	std %r3, 40(%r4)
	ld %r3, -56(%r1)
	lwz %r4, -40(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -40(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	lwz %r3, -40(%r1)
	addi %r3, %r3, 1
	stw %r3, -40(%r1)
	b .LBB107_8
.LBB107_10:
	b .LBB107_15
.LBB107_11:
	b .LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	addi %r4, %r3, -1
	stw %r4, -28(%r1)
	cmplwi	%r3, 0
	ble %cr0, .LBB107_14
# %bb.13:                               #   in Loop: Header=BB107_12 Depth=1
	addis %r3, %r2, .LC116@toc@ha
	ld %r3, .LC116@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, -56(%r1)
	lwz %r4, -28(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	b .LBB107_12
.LBB107_14:
	b .LBB107_15
.LBB107_15:
	blr
	.long	0
	.quad	0
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-.Lfunc_begin107
	.cfi_endproc
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	4
	.type	__cmovh,@function
.Lfunc_toc108:                          # @__cmovh
	.quad	.TOC.-.Lfunc_gep108
__cmovh:
.Lfunc_begin108:
	.cfi_startproc
.Lfunc_gep108:
	ld %r2, .Lfunc_toc108-.Lfunc_gep108(%r12)
	add %r2, %r2, %r12
.Lfunc_lep108:
	.localentry	__cmovh, .Lfunc_lep108-.Lfunc_gep108
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -16(%r1)
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC117@toc@ha
	ld %r3, .LC117@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -28(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	std %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	cmpld	%r3, %r4
	blt	%cr0, .LBB108_3
# %bb.1:
	addis %r3, %r2, .LC117@toc@ha
	ld %r3, .LC117@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	bgt	%cr0, .LBB108_3
# %bb.2:
	addis %r3, %r2, .LC117@toc@ha
	ld %r3, .LC117@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB108_10
.LBB108_3:
	addis %r3, %r2, .LC117@toc@ha
	ld %r3, .LC117@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB108_7
# %bb.5:                                #   in Loop: Header=BB108_4 Depth=1
	addis %r3, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, -24(%r1)
	lwz %r4, -32(%r1)
	sldi %r5, %r4, 1
	lhzx %r3, %r3, %r5
	ld %r4, -16(%r1)
	add %r4, %r4, %r5
	sth %r3, 0(%r4)
# %bb.6:                                #   in Loop: Header=BB108_4 Depth=1
	lwz %r3, -32(%r1)
	addi %r3, %r3, 1
	stw %r3, -32(%r1)
	b .LBB108_4
.LBB108_7:
	lwz %r3, -28(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB108_9
# %bb.8:
	addis %r3, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, -56(%r1)
	lwz %r4, -28(%r1)
	addi %r5, %r4, -1
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
	lbzx %r3, %r3, %r4
	ld %r4, -48(%r1)
	clrldi	%r5, %r5, 32
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
.LBB108_9:
	b .LBB108_14
.LBB108_10:
	b .LBB108_11
.LBB108_11:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	addi %r4, %r3, -1
	stw %r4, -28(%r1)
	cmplwi	%r3, 0
	ble %cr0, .LBB108_13
# %bb.12:                               #   in Loop: Header=BB108_11 Depth=1
	addis %r3, %r2, .LC117@toc@ha
	ld %r3, .LC117@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, -56(%r1)
	lwz %r4, -28(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	b .LBB108_11
.LBB108_13:
	b .LBB108_14
.LBB108_14:
	blr
	.long	0
	.quad	0
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-.Lfunc_begin108
	.cfi_endproc
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	4
	.type	__cmovw,@function
.Lfunc_toc109:                          # @__cmovw
	.quad	.TOC.-.Lfunc_gep109
__cmovw:
.Lfunc_begin109:
	.cfi_startproc
.Lfunc_gep109:
	ld %r2, .Lfunc_toc109-.Lfunc_gep109(%r12)
	add %r2, %r2, %r12
.Lfunc_lep109:
	.localentry	__cmovw, .Lfunc_lep109-.Lfunc_gep109
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -16(%r1)
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC118@toc@ha
	ld %r3, .LC118@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC118@toc@ha
	ld %r4, .LC118@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -28(%r1)
	li %r4, 2
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -28(%r1)
	li %r4, -4
	and %r3, %r3, %r4
	stw %r3, -40(%r1)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	std %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	cmpld	%r3, %r4
	blt	%cr0, .LBB109_3
# %bb.1:
	addis %r3, %r2, .LC118@toc@ha
	ld %r3, .LC118@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC118@toc@ha
	ld %r4, .LC118@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	bgt	%cr0, .LBB109_3
# %bb.2:
	addis %r3, %r2, .LC118@toc@ha
	ld %r3, .LC118@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC118@toc@ha
	ld %r4, .LC118@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB109_11
.LBB109_3:
	addis %r3, %r2, .LC118@toc@ha
	ld %r3, .LC118@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC118@toc@ha
	ld %r4, .LC118@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB109_7
# %bb.5:                                #   in Loop: Header=BB109_4 Depth=1
	addis %r3, %r2, .LC118@toc@ha
	ld %r4, .LC118@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, -24(%r1)
	lwz %r4, -32(%r1)
	sldi %r5, %r4, 2
	lwzx %r3, %r3, %r5
	ld %r4, -16(%r1)
	add %r4, %r4, %r5
	stw %r3, 0(%r4)
# %bb.6:                                #   in Loop: Header=BB109_4 Depth=1
	lwz %r3, -32(%r1)
	addi %r3, %r3, 1
	stw %r3, -32(%r1)
	b .LBB109_4
.LBB109_7:
	b .LBB109_8
.LBB109_8:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	lwz %r4, -40(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB109_10
# %bb.9:                                #   in Loop: Header=BB109_8 Depth=1
	addis %r3, %r2, .LC118@toc@ha
	ld %r3, .LC118@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC118@toc@ha
	ld %r4, .LC118@toc@l(%r4)
	std %r3, 40(%r4)
	ld %r3, -56(%r1)
	lwz %r4, -40(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -40(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	lwz %r3, -40(%r1)
	addi %r3, %r3, 1
	stw %r3, -40(%r1)
	b .LBB109_8
.LBB109_10:
	b .LBB109_15
.LBB109_11:
	b .LBB109_12
.LBB109_12:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	addi %r4, %r3, -1
	stw %r4, -28(%r1)
	cmplwi	%r3, 0
	ble %cr0, .LBB109_14
# %bb.13:                               #   in Loop: Header=BB109_12 Depth=1
	addis %r3, %r2, .LC118@toc@ha
	ld %r3, .LC118@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC118@toc@ha
	ld %r4, .LC118@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, -56(%r1)
	lwz %r4, -28(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	b .LBB109_12
.LBB109_14:
	b .LBB109_15
.LBB109_15:
	blr
	.long	0
	.quad	0
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-.Lfunc_begin109
	.cfi_endproc
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	4
	.type	__modi,@function
.Lfunc_toc110:                          # @__modi
	.quad	.TOC.-.Lfunc_gep110
__modi:
.Lfunc_begin110:
	.cfi_startproc
.Lfunc_gep110:
	ld %r2, .Lfunc_toc110-.Lfunc_gep110(%r12)
	add %r2, %r2, %r12
.Lfunc_lep110:
	.localentry	__modi, .Lfunc_lep110-.Lfunc_gep110
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC119@toc@ha
	ld %r4, .LC119@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	lwz %r5, -16(%r1)
	divw %r3, %r4, %r5
	mullw %r3, %r3, %r5
	sub	%r3, %r4, %r3
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-.Lfunc_begin110
	.cfi_endproc
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	4
	.type	__uitod,@function
.Lfunc_toc111:                          # @__uitod
	.quad	.TOC.-.Lfunc_gep111
__uitod:
.Lfunc_begin111:
	.cfi_startproc
.Lfunc_gep111:
	ld %r2, .Lfunc_toc111-.Lfunc_gep111(%r12)
	add %r2, %r2, %r12
.Lfunc_lep111:
	.localentry	__uitod, .Lfunc_lep111-.Lfunc_gep111
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -48(%r1)
	std %r0, 64(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 36(%r31)
	addis %r3, %r2, .LC120@toc@ha
	ld %r4, .LC120@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 36(%r31)
	bl __floatunsidf
	nop
	addi %r1, %r1, 48
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-.Lfunc_begin111
	.cfi_endproc
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	4
	.type	__uitof,@function
.Lfunc_toc112:                          # @__uitof
	.quad	.TOC.-.Lfunc_gep112
__uitof:
.Lfunc_begin112:
	.cfi_startproc
.Lfunc_gep112:
	ld %r2, .Lfunc_toc112-.Lfunc_gep112(%r12)
	add %r2, %r2, %r12
.Lfunc_lep112:
	.localentry	__uitof, .Lfunc_lep112-.Lfunc_gep112
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -48(%r1)
	std %r0, 64(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 36(%r31)
	addis %r3, %r2, .LC121@toc@ha
	ld %r4, .LC121@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 36(%r31)
	bl __floatunsisf
	nop
	addi %r1, %r1, 48
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-.Lfunc_begin112
	.cfi_endproc
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	4
	.type	__ulltod,@function
.Lfunc_toc113:                          # @__ulltod
	.quad	.TOC.-.Lfunc_gep113
__ulltod:
.Lfunc_begin113:
	.cfi_startproc
.Lfunc_gep113:
	ld %r2, .Lfunc_toc113-.Lfunc_gep113(%r12)
	add %r2, %r2, %r12
.Lfunc_lep113:
	.localentry	__ulltod, .Lfunc_lep113-.Lfunc_gep113
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -48(%r1)
	std %r0, 64(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 32(%r31)
	addis %r3, %r2, .LC122@toc@ha
	ld %r4, .LC122@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 32(%r31)
	bl __floatundidf
	nop
	addi %r1, %r1, 48
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-.Lfunc_begin113
	.cfi_endproc
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	4
	.type	__ulltof,@function
.Lfunc_toc114:                          # @__ulltof
	.quad	.TOC.-.Lfunc_gep114
__ulltof:
.Lfunc_begin114:
	.cfi_startproc
.Lfunc_gep114:
	ld %r2, .Lfunc_toc114-.Lfunc_gep114(%r12)
	add %r2, %r2, %r12
.Lfunc_lep114:
	.localentry	__ulltof, .Lfunc_lep114-.Lfunc_gep114
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -48(%r1)
	std %r0, 64(%r1)
	.cfi_def_cfa_offset 48
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 32(%r31)
	addis %r3, %r2, .LC123@toc@ha
	ld %r4, .LC123@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 32(%r31)
	bl __floatundisf
	nop
	addi %r1, %r1, 48
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-.Lfunc_begin114
	.cfi_endproc
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	4
	.type	__umodi,@function
.Lfunc_toc115:                          # @__umodi
	.quad	.TOC.-.Lfunc_gep115
__umodi:
.Lfunc_begin115:
	.cfi_startproc
.Lfunc_gep115:
	ld %r2, .Lfunc_toc115-.Lfunc_gep115(%r12)
	add %r2, %r2, %r12
.Lfunc_lep115:
	.localentry	__umodi, .Lfunc_lep115-.Lfunc_gep115
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC124@toc@ha
	ld %r4, .LC124@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	lwz %r5, -16(%r1)
	divwu %r3, %r4, %r5
	mullw %r3, %r3, %r5
	sub	%r3, %r4, %r3
	clrldi	%r3, %r3, 32
	blr
	.long	0
	.quad	0
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-.Lfunc_begin115
	.cfi_endproc
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	4
	.type	__clzhi2,@function
.Lfunc_toc116:                          # @__clzhi2
	.quad	.TOC.-.Lfunc_gep116
__clzhi2:
.Lfunc_begin116:
	.cfi_startproc
.Lfunc_gep116:
	ld %r2, .Lfunc_toc116-.Lfunc_gep116(%r12)
	add %r2, %r2, %r12
.Lfunc_lep116:
	.localentry	__clzhi2, .Lfunc_lep116-.Lfunc_gep116
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC125@toc@ha
	ld %r3, .LC125@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB116_6
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
	addis %r3, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lhz %r3, -10(%r1)
	lwz %r4, -16(%r1)
	subfic %r5, %r4, 15
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB116_4
# %bb.3:
	addis %r3, %r2, .LC125@toc@ha
	ld %r3, .LC125@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	std %r3, 16(%r4)
	b .LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	b .LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
	lwz %r3, -16(%r1)
	addi %r3, %r3, 1
	stw %r3, -16(%r1)
	b .LBB116_1
.LBB116_6:
	lwa %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-.Lfunc_begin116
	.cfi_endproc
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	4
	.type	__ctzhi2,@function
.Lfunc_toc117:                          # @__ctzhi2
	.quad	.TOC.-.Lfunc_gep117
__ctzhi2:
.Lfunc_begin117:
	.cfi_startproc
.Lfunc_gep117:
	ld %r2, .Lfunc_toc117-.Lfunc_gep117(%r12)
	add %r2, %r2, %r12
.Lfunc_lep117:
	.localentry	__ctzhi2, .Lfunc_lep117-.Lfunc_gep117
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC126@toc@ha
	ld %r3, .LC126@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB117_6
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	addis %r3, %r2, .LC126@toc@ha
	ld %r3, .LC126@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	std %r3, 8(%r4)
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB117_4
# %bb.3:
	addis %r3, %r2, .LC126@toc@ha
	ld %r3, .LC126@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	std %r3, 16(%r4)
	b .LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	b .LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	lwz %r3, -16(%r1)
	addi %r3, %r3, 1
	stw %r3, -16(%r1)
	b .LBB117_1
.LBB117_6:
	lwa %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-.Lfunc_begin117
	.cfi_endproc
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	4
	.type	__fixunssfsi,@function
.Lfunc_toc118:                          # @__fixunssfsi
	.quad	.TOC.-.Lfunc_gep118
__fixunssfsi:
.Lfunc_begin118:
	.cfi_startproc
.Lfunc_gep118:
	ld %r2, .Lfunc_toc118-.Lfunc_gep118(%r12)
	add %r2, %r2, %r12
.Lfunc_lep118:
	.localentry	__fixunssfsi, .Lfunc_lep118-.Lfunc_gep118
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 44(%r31)
	addis %r3, %r2, .LC127@toc@ha
	ld %r4, .LC127@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 44(%r31)
	lis %r4, 18176
	bl __gesf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	blt	%cr0, .LBB118_2
	b .LBB118_1
.LBB118_1:
	addis %r3, %r2, .LC127@toc@ha
	ld %r4, .LC127@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 44(%r31)
	li %r4, 199
	rldic %r4, %r4, 24, 32
	bl __addsf3
	nop
	bl __fixsfdi
	nop
	lis %r4, 0
	ori %r4, %r4, 32768
	add %r3, %r3, %r4
	std %r3, 48(%r31)
	b .LBB118_3
.LBB118_2:
	lwz %r3, 44(%r31)
	bl __fixsfdi
	nop
	std %r3, 48(%r31)
.LBB118_3:
	ld %r3, 48(%r31)
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-.Lfunc_begin118
	.cfi_endproc
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	4
	.type	__parityhi2,@function
.Lfunc_toc119:                          # @__parityhi2
	.quad	.TOC.-.Lfunc_gep119
__parityhi2:
.Lfunc_begin119:
	.cfi_startproc
.Lfunc_gep119:
	ld %r2, .Lfunc_toc119-.Lfunc_gep119(%r12)
	add %r2, %r2, %r12
.Lfunc_lep119:
	.localentry	__parityhi2, .Lfunc_lep119-.Lfunc_gep119
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC128@toc@ha
	ld %r3, .LC128@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC128@toc@ha
	ld %r4, .LC128@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB119_6
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	addis %r3, %r2, .LC128@toc@ha
	ld %r3, .LC128@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC128@toc@ha
	ld %r4, .LC128@toc@l(%r4)
	std %r3, 8(%r4)
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB119_4
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
	addis %r3, %r2, .LC128@toc@ha
	ld %r3, .LC128@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC128@toc@ha
	ld %r4, .LC128@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -20(%r1)
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	b .LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	lwz %r3, -16(%r1)
	addi %r3, %r3, 1
	stw %r3, -16(%r1)
	b .LBB119_1
.LBB119_6:
	lwz %r3, -20(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-.Lfunc_begin119
	.cfi_endproc
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	4
	.type	__popcounthi2,@function
.Lfunc_toc120:                          # @__popcounthi2
	.quad	.TOC.-.Lfunc_gep120
__popcounthi2:
.Lfunc_begin120:
	.cfi_startproc
.Lfunc_gep120:
	ld %r2, .Lfunc_toc120-.Lfunc_gep120(%r12)
	add %r2, %r2, %r12
.Lfunc_lep120:
	.localentry	__popcounthi2, .Lfunc_lep120-.Lfunc_gep120
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC129@toc@ha
	ld %r3, .LC129@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC129@toc@ha
	ld %r4, .LC129@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB120_6
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
	addis %r3, %r2, .LC129@toc@ha
	ld %r3, .LC129@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC129@toc@ha
	ld %r4, .LC129@toc@l(%r4)
	std %r3, 8(%r4)
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB120_4
# %bb.3:                                #   in Loop: Header=BB120_1 Depth=1
	addis %r3, %r2, .LC129@toc@ha
	ld %r3, .LC129@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC129@toc@ha
	ld %r4, .LC129@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -20(%r1)
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	b .LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	lwz %r3, -16(%r1)
	addi %r3, %r3, 1
	stw %r3, -16(%r1)
	b .LBB120_1
.LBB120_6:
	lwa %r3, -20(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-.Lfunc_begin120
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	4
	.type	__mulsi3_iq2000,@function
.Lfunc_toc121:                          # @__mulsi3_iq2000
	.quad	.TOC.-.Lfunc_gep121
__mulsi3_iq2000:
.Lfunc_begin121:
	.cfi_startproc
.Lfunc_gep121:
	ld %r2, .Lfunc_toc121-.Lfunc_gep121(%r12)
	add %r2, %r2, %r12
.Lfunc_lep121:
	.localentry	__mulsi3_iq2000, .Lfunc_lep121-.Lfunc_gep121
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC130@toc@ha
	ld %r3, .LC130@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC130@toc@ha
	ld %r4, .LC130@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB121_5
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	addis %r3, %r2, .LC130@toc@ha
	ld %r3, .LC130@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC130@toc@ha
	ld %r4, .LC130@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB121_4
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	addis %r3, %r2, .LC130@toc@ha
	ld %r3, .LC130@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC130@toc@ha
	ld %r4, .LC130@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r4, -16(%r1)
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	lwz %r3, -12(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -12(%r1)
	lwz %r3, -16(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -16(%r1)
	b .LBB121_1
.LBB121_5:
	lwz %r3, -20(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-.Lfunc_begin121
	.cfi_endproc
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	4
	.type	__mulsi3_lm32,@function
.Lfunc_toc122:                          # @__mulsi3_lm32
	.quad	.TOC.-.Lfunc_gep122
__mulsi3_lm32:
.Lfunc_begin122:
	.cfi_startproc
.Lfunc_gep122:
	ld %r2, .Lfunc_toc122-.Lfunc_gep122(%r12)
	add %r2, %r2, %r12
.Lfunc_lep122:
	.localentry	__mulsi3_lm32, .Lfunc_lep122-.Lfunc_gep122
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB122_2
# %bb.1:
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB122_8
.LBB122_2:
	b .LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -20(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB122_7
# %bb.4:                                #   in Loop: Header=BB122_3 Depth=1
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB122_6
# %bb.5:                                #   in Loop: Header=BB122_3 Depth=1
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 24(%r4)
	lwz %r4, -16(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	lwz %r3, -16(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -20(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -20(%r1)
	b .LBB122_3
.LBB122_7:
	lwz %r3, -24(%r1)
	stw %r3, -12(%r1)
.LBB122_8:
	lwz %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-.Lfunc_begin122
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	4
	.type	__udivmodsi4,@function
.Lfunc_toc123:                          # @__udivmodsi4
	.quad	.TOC.-.Lfunc_gep123
__udivmodsi4:
.Lfunc_begin123:
	.cfi_startproc
.Lfunc_gep123:
	ld %r2, .Lfunc_toc123-.Lfunc_gep123(%r12)
	add %r2, %r2, %r12
.Lfunc_lep123:
	.localentry	__udivmodsi4, .Lfunc_lep123-.Lfunc_gep123
# %bb.0:
	std %r5, -40(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
                                        # kill: def $r5 killed $r5 killed $x5
	stw %r5, -16(%r1)
	stw %r4, -20(%r1)
	stw %r3, -24(%r1)
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	stw %r3, -28(%r1)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -20(%r1)
	lwz %r4, -16(%r1)
	cmplw	%r3, %r4
	li %r3, 0
	stw %r3, -44(%r1)
	bge %cr0, .LBB123_6
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 32(%r4)
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)
	beq	%cr0, .LBB123_6
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	rlwinm %r3, %r3, 0, 0, 0
	cmpdi	%r3, 0
	crmove	4*cr5+lt, eq
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -48(%r1)
	cmpldi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -44(%r1)
	bne	%cr0, .LBB123_6
	b .LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	lwz %r4, -48(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -44(%r1)
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	lwz %r4, -44(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB123_8
	b .LBB123_7
.LBB123_7:                              #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -20(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -28(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -28(%r1)
	b .LBB123_1
.LBB123_8:
	b .LBB123_9
.LBB123_9:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB123_13
# %bb.10:                               #   in Loop: Header=BB123_9 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 48(%r4)
	lwz %r3, -16(%r1)
	lwz %r4, -20(%r1)
	cmplw	%r3, %r4
	blt	%cr0, .LBB123_12
# %bb.11:                               #   in Loop: Header=BB123_9 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r3)
	ld %r3, 56(%r4)
	addi %r3, %r3, 1
	std %r3, 56(%r4)
	lwz %r3, -20(%r1)
	lwz %r4, -16(%r1)
	sub	%r3, %r4, %r3
	stw %r3, -16(%r1)
	lwz %r4, -28(%r1)
	lwz %r3, -32(%r1)
	or %r3, %r3, %r4
	stw %r3, -32(%r1)
.LBB123_12:                             #   in Loop: Header=BB123_9 Depth=1
	lwz %r3, -28(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -28(%r1)
	lwz %r3, -20(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -20(%r1)
	b .LBB123_9
.LBB123_13:
	lwz %r3, -24(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB123_15
# %bb.14:
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 64(%r4)
	lwz %r3, -16(%r1)
	stw %r3, -12(%r1)
	b .LBB123_16
.LBB123_15:
	lwz %r3, -32(%r1)
	stw %r3, -12(%r1)
.LBB123_16:
	lwz %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-.Lfunc_begin123
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	4
	.type	__mspabi_cmpf,@function
.Lfunc_toc124:                          # @__mspabi_cmpf
	.quad	.TOC.-.Lfunc_gep124
__mspabi_cmpf:
.Lfunc_begin124:
	.cfi_startproc
.Lfunc_gep124:
	ld %r2, .Lfunc_toc124-.Lfunc_gep124(%r12)
	add %r2, %r2, %r12
.Lfunc_lep124:
	.localentry	__mspabi_cmpf, .Lfunc_lep124-.Lfunc_gep124
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 32(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 32(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 48(%r31)
	stw %r3, 44(%r31)
	addis %r3, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 48(%r31)
	lwz %r4, 44(%r31)
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB124_2
	b .LBB124_1
.LBB124_1:
	addis %r3, %r2, .LC133@toc@ha
	ld %r3, .LC133@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r4)
	std %r3, 8(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, 52(%r31)
	b .LBB124_5
.LBB124_2:
	lwz %r3, 48(%r31)
	lwz %r4, 44(%r31)
	bl __gtsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB124_4
	b .LBB124_3
.LBB124_3:
	addis %r3, %r2, .LC133@toc@ha
	ld %r3, .LC133@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 1
	stw %r3, 52(%r31)
	b .LBB124_5
.LBB124_4:
	li %r3, 0
	stw %r3, 52(%r31)
.LBB124_5:
	lwa %r3, 52(%r31)
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-.Lfunc_begin124
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	4
	.type	__mspabi_cmpd,@function
.Lfunc_toc125:                          # @__mspabi_cmpd
	.quad	.TOC.-.Lfunc_gep125
__mspabi_cmpd:
.Lfunc_begin125:
	.cfi_startproc
.Lfunc_gep125:
	ld %r2, .Lfunc_toc125-.Lfunc_gep125(%r12)
	add %r2, %r2, %r12
.Lfunc_lep125:
	.localentry	__mspabi_cmpd, .Lfunc_lep125-.Lfunc_gep125
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 40(%r31)
	std %r4, 32(%r31)
	addis %r3, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 40(%r31)
	ld %r4, 32(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB125_2
	b .LBB125_1
.LBB125_1:
	addis %r3, %r2, .LC134@toc@ha
	ld %r3, .LC134@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r4)
	std %r3, 8(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, 52(%r31)
	b .LBB125_5
.LBB125_2:
	ld %r3, 40(%r31)
	ld %r4, 32(%r31)
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB125_4
	b .LBB125_3
.LBB125_3:
	addis %r3, %r2, .LC134@toc@ha
	ld %r3, .LC134@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 1
	stw %r3, 52(%r31)
	b .LBB125_5
.LBB125_4:
	li %r3, 0
	stw %r3, 52(%r31)
.LBB125_5:
	lwa %r3, 52(%r31)
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-.Lfunc_begin125
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	4
	.type	__mspabi_mpysll,@function
.Lfunc_toc126:                          # @__mspabi_mpysll
	.quad	.TOC.-.Lfunc_gep126
__mspabi_mpysll:
.Lfunc_begin126:
	.cfi_startproc
.Lfunc_gep126:
	ld %r2, .Lfunc_toc126-.Lfunc_gep126(%r12)
	add %r2, %r2, %r12
.Lfunc_lep126:
	.localentry	__mspabi_mpysll, .Lfunc_lep126-.Lfunc_gep126
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC135@toc@ha
	ld %r3, .LC135@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC135@toc@ha
	ld %r4, .LC135@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	ld %r4, -24(%r1)
	mulld %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-.Lfunc_begin126
	.cfi_endproc
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	4
	.type	__mspabi_mpyull,@function
.Lfunc_toc127:                          # @__mspabi_mpyull
	.quad	.TOC.-.Lfunc_gep127
__mspabi_mpyull:
.Lfunc_begin127:
	.cfi_startproc
.Lfunc_gep127:
	ld %r2, .Lfunc_toc127-.Lfunc_gep127(%r12)
	add %r2, %r2, %r12
.Lfunc_lep127:
	.localentry	__mspabi_mpyull, .Lfunc_lep127-.Lfunc_gep127
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC136@toc@ha
	ld %r3, .LC136@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	ld %r4, -24(%r1)
	mulld %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-.Lfunc_begin127
	.cfi_endproc
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	4
	.type	__mulhi3,@function
.Lfunc_toc128:                          # @__mulhi3
	.quad	.TOC.-.Lfunc_gep128
__mulhi3:
.Lfunc_begin128:
	.cfi_startproc
.Lfunc_gep128:
	ld %r2, .Lfunc_toc128-.Lfunc_gep128(%r12)
	add %r2, %r2, %r12
.Lfunc_lep128:
	.localentry	__mulhi3, .Lfunc_lep128-.Lfunc_gep128
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC137@toc@ha
	ld %r3, .LC137@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -24(%r1)
	li %r3, 0
	stw %r3, -28(%r1)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bge %cr0, .LBB128_2
# %bb.1:
	addis %r3, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -16(%r1)
	neg %r3, %r3
	stw %r3, -16(%r1)
	li %r3, 1
	stw %r3, -24(%r1)
.LBB128_2:
	li %r3, 0
	stb %r3, -17(%r1)
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)
	beq	%cr0, .LBB128_6
# %bb.4:                                #   in Loop: Header=BB128_3 Depth=1
	addis %r3, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lbz %r3, -17(%r1)
	cmpldi	%r3, 32
	crmove	4*cr5+lt, lt
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -48(%r1)
	cmpldi	%r3, 32
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -44(%r1)
	bge %cr0, .LBB128_6
# %bb.5:                                #   in Loop: Header=BB128_3 Depth=1
	lwz %r4, -48(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC137@toc@ha
	ld %r3, .LC137@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r4)
	std %r3, 32(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -44(%r1)
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	lwz %r4, -44(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB128_11
	b .LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	addis %r3, %r2, .LC137@toc@ha
	ld %r3, .LC137@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -16(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB128_9
# %bb.8:                                #   in Loop: Header=BB128_3 Depth=1
	addis %r3, %r2, .LC137@toc@ha
	ld %r3, .LC137@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r4)
	std %r3, 40(%r4)
	lwz %r4, -12(%r1)
	lwz %r3, -28(%r1)
	add %r3, %r3, %r4
	stw %r3, -28(%r1)
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -12(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -12(%r1)
	lwz %r3, -16(%r1)
	srawi %r3, %r3, 1
	stw %r3, -16(%r1)
# %bb.10:                               #   in Loop: Header=BB128_3 Depth=1
	lbz %r3, -17(%r1)
	addi %r3, %r3, 1
	stb %r3, -17(%r1)
	b .LBB128_3
.LBB128_11:
	lwz %r3, -24(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB128_13
# %bb.12:
	addis %r3, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	lwz %r3, -28(%r1)
	neg %r3, %r3
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	b .LBB128_14
.LBB128_13:
	lwz %r3, -28(%r1)
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB128_14:
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-.Lfunc_begin128
	.cfi_endproc
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	4
	.type	__divsi3,@function
.Lfunc_toc129:                          # @__divsi3
	.quad	.TOC.-.Lfunc_gep129
__divsi3:
.Lfunc_begin129:
	.cfi_startproc
.Lfunc_gep129:
	ld %r2, .Lfunc_toc129-.Lfunc_gep129(%r12)
	add %r2, %r2, %r12
.Lfunc_lep129:
	.localentry	__divsi3, .Lfunc_lep129-.Lfunc_gep129
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	std %r4, 56(%r31)
	addis %r3, %r2, .LC138@toc@ha
	ld %r3, .LC138@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC138@toc@ha
	ld %r4, .LC138@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, 52(%r31)
	ld %r3, 64(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB129_2
# %bb.1:
	addis %r3, %r2, .LC138@toc@ha
	ld %r4, .LC138@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	neg %r3, %r3
	std %r3, 64(%r31)
	lwz %r3, 52(%r31)
	cmpwi	%r3, 0
                                        # kill: def $cr5lt killed $cr0eq killed $cr0
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 27, 31, 31
	stw %r3, 52(%r31)
.LBB129_2:
	ld %r3, 56(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB129_4
# %bb.3:
	addis %r3, %r2, .LC138@toc@ha
	ld %r4, .LC138@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 56(%r31)
	neg %r3, %r3
	std %r3, 56(%r31)
	lwz %r3, 52(%r31)
	cmpwi	%r3, 0
                                        # kill: def $cr5lt killed $cr0eq killed $cr0
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 27, 31, 31
	stw %r3, 52(%r31)
.LBB129_4:
	ld %r3, 64(%r31)
	mr	%r4, %r3
	ld %r3, 56(%r31)
	mr	%r5, %r3
	mr	%r3, %r2
	std %r3, 24(%r1)
                                        # implicit-def: $x3
	mr	%r3, %r4
	clrldi	%r3, %r3, 32
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
	addis %r5, %r2, .LC139@toc@ha
	ld %r6, .LC139@toc@l(%r5)
	li %r5, 0
	mr	%r12, %r6
	mtctr %r6
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	clrldi	%r3, %r3, 32
	std %r3, 40(%r31)
	lwz %r3, 52(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB129_6
# %bb.5:
	addis %r3, %r2, .LC138@toc@ha
	ld %r4, .LC138@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 40(%r31)
	neg %r3, %r3
	std %r3, 40(%r31)
.LBB129_6:
	ld %r3, 40(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-.Lfunc_begin129
	.cfi_endproc
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	4
	.type	__modsi3,@function
.Lfunc_toc130:                          # @__modsi3
	.quad	.TOC.-.Lfunc_gep130
__modsi3:
.Lfunc_begin130:
	.cfi_startproc
.Lfunc_gep130:
	ld %r2, .Lfunc_toc130-.Lfunc_gep130(%r12)
	add %r2, %r2, %r12
.Lfunc_lep130:
	.localentry	__modsi3, .Lfunc_lep130-.Lfunc_gep130
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	std %r4, 56(%r31)
	addis %r3, %r2, .LC140@toc@ha
	ld %r3, .LC140@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, 52(%r31)
	ld %r3, 64(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB130_2
# %bb.1:
	addis %r3, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 64(%r31)
	neg %r3, %r3
	std %r3, 64(%r31)
	li %r3, 1
	stw %r3, 52(%r31)
.LBB130_2:
	ld %r3, 56(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB130_4
# %bb.3:
	addis %r3, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 56(%r31)
	neg %r3, %r3
	std %r3, 56(%r31)
.LBB130_4:
	ld %r3, 64(%r31)
	mr	%r4, %r3
	ld %r3, 56(%r31)
	mr	%r5, %r3
	mr	%r3, %r2
	std %r3, 24(%r1)
                                        # implicit-def: $x3
	mr	%r3, %r4
	clrldi	%r3, %r3, 32
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
	addis %r5, %r2, .LC139@toc@ha
	ld %r6, .LC139@toc@l(%r5)
	li %r5, 1
	mr	%r12, %r6
	mtctr %r6
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	clrldi	%r3, %r3, 32
	std %r3, 40(%r31)
	lwz %r3, 52(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB130_6
# %bb.5:
	addis %r3, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 40(%r31)
	neg %r3, %r3
	std %r3, 40(%r31)
.LBB130_6:
	ld %r3, 40(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-.Lfunc_begin130
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	4
	.type	__udivmodhi4,@function
.Lfunc_toc131:                          # @__udivmodhi4
	.quad	.TOC.-.Lfunc_gep131
__udivmodhi4:
.Lfunc_begin131:
	.cfi_startproc
.Lfunc_gep131:
	ld %r2, .Lfunc_toc131-.Lfunc_gep131(%r12)
	add %r2, %r2, %r12
.Lfunc_lep131:
	.localentry	__udivmodhi4, .Lfunc_lep131-.Lfunc_gep131
# %bb.0:
	std %r5, -32(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
                                        # kill: def $r5 killed $r5 killed $x5
	sth %r5, -12(%r1)
	sth %r4, -14(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	sth %r3, -22(%r1)
	li %r3, 0
	sth %r3, -24(%r1)
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	lhz %r3, -14(%r1)
	lhz %r4, -12(%r1)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -36(%r1)
	bge %cr0, .LBB131_6
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 32(%r4)
	lhz %r3, -22(%r1)
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)
	beq	%cr0, .LBB131_6
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lhz %r3, -14(%r1)
	rlwinm %r3, %r3, 0, 16, 16
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -40(%r1)
	cmplwi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
	bne	%cr0, .LBB131_6
	b .LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	lwz %r4, -40(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -36(%r1)
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	lwz %r4, -36(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB131_8
	b .LBB131_7
.LBB131_7:                              #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 8(%r4)
	lhz %r3, -14(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	sth %r3, -14(%r1)
	lhz %r3, -22(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	sth %r3, -22(%r1)
	b .LBB131_1
.LBB131_8:
	b .LBB131_9
.LBB131_9:                              # =>This Inner Loop Header: Depth=1
	lha %r3, -22(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB131_13
# %bb.10:                               #   in Loop: Header=BB131_9 Depth=1
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 48(%r4)
	lhz %r3, -12(%r1)
	lhz %r4, -14(%r1)
	cmpw	%r3, %r4
	blt	%cr0, .LBB131_12
# %bb.11:                               #   in Loop: Header=BB131_9 Depth=1
	addis %r3, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r3)
	ld %r3, 56(%r4)
	addi %r3, %r3, 1
	std %r3, 56(%r4)
	lhz %r3, -14(%r1)
	lhz %r4, -12(%r1)
	sub	%r3, %r4, %r3
	sth %r3, -12(%r1)
	lhz %r4, -22(%r1)
	lhz %r3, -24(%r1)
	or %r3, %r3, %r4
	sth %r3, -24(%r1)
.LBB131_12:                             #   in Loop: Header=BB131_9 Depth=1
	lhz %r3, -22(%r1)
	srawi %r3, %r3, 1
	sth %r3, -22(%r1)
	lhz %r3, -14(%r1)
	srawi %r3, %r3, 1
	sth %r3, -14(%r1)
	b .LBB131_9
.LBB131_13:
	lwz %r3, -20(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB131_15
# %bb.14:
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 64(%r4)
	lhz %r3, -12(%r1)
	sth %r3, -10(%r1)
	b .LBB131_16
.LBB131_15:
	lhz %r3, -24(%r1)
	sth %r3, -10(%r1)
.LBB131_16:
	lhz %r3, -10(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-.Lfunc_begin131
	.cfi_endproc
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	4
	.type	__udivmodsi4_libgcc,@function
.Lfunc_toc132:                          # @__udivmodsi4_libgcc
	.quad	.TOC.-.Lfunc_gep132
__udivmodsi4_libgcc:
.Lfunc_begin132:
	.cfi_startproc
.Lfunc_gep132:
	ld %r2, .Lfunc_toc132-.Lfunc_gep132(%r12)
	add %r2, %r2, %r12
.Lfunc_lep132:
	.localentry	__udivmodsi4_libgcc, .Lfunc_lep132-.Lfunc_gep132
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -24(%r1)
	std %r4, -32(%r1)
	stw %r3, -36(%r1)
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	std %r3, -48(%r1)
	li %r3, 0
	std %r3, -56(%r1)
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	cmpld	%r3, %r4
	li %r3, 0
	stw %r3, -68(%r1)
	bge %cr0, .LBB132_6
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	li %r3, 0
	stw %r3, -68(%r1)
	beq	%cr0, .LBB132_6
# %bb.3:                                #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -32(%r1)
	rlwinm %r3, %r3, 0, 0, 0
	cmpdi	%r3, 0
	crmove	4*cr5+lt, eq
	mfcr %r4                                # cr5
	rlwinm %r4, %r4, 20, 0, 0
	stw %r4, -72(%r1)
	cmpldi	%r3, 0
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -68(%r1)
	bne	%cr0, .LBB132_6
	b .LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	lwz %r4, -72(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
	std %r3, 24(%r4)
	mfcr %r3                                # cr5
	rlwinm %r3, %r3, 20, 0, 0
	stw %r3, -68(%r1)
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	lwz %r4, -68(%r1)
                                        # implicit-def: $cr5lt
	mfcr %r3                                # cr5
	rlwimi %r3, %r4, 12, 20, 20
	mtcrf 4, %r3                            # cr5
	creqv 4*cr5+gt, 4*cr5+gt, 4*cr5+gt
	crxor 4*cr5+lt, 4*cr5+lt, 4*cr5+gt
	bc 12, 4*cr5+lt, .LBB132_8
	b .LBB132_7
.LBB132_7:                              #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, -32(%r1)
	sldi %r3, %r3, 1
	std %r3, -32(%r1)
	ld %r3, -48(%r1)
	sldi %r3, %r3, 1
	std %r3, -48(%r1)
	b .LBB132_1
.LBB132_8:
	b .LBB132_9
.LBB132_9:                              # =>This Inner Loop Header: Depth=1
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB132_13
# %bb.10:                               #   in Loop: Header=BB132_9 Depth=1
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, -24(%r1)
	ld %r4, -32(%r1)
	cmpld	%r3, %r4
	blt	%cr0, .LBB132_12
# %bb.11:                               #   in Loop: Header=BB132_9 Depth=1
	addis %r3, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r3)
	ld %r3, 56(%r4)
	addi %r3, %r3, 1
	std %r3, 56(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	sub	%r3, %r4, %r3
	std %r3, -24(%r1)
	ld %r4, -48(%r1)
	ld %r3, -56(%r1)
	or %r3, %r3, %r4
	std %r3, -56(%r1)
.LBB132_12:                             #   in Loop: Header=BB132_9 Depth=1
	ld %r3, -48(%r1)
	rldicl %r3, %r3, 63, 1
	std %r3, -48(%r1)
	ld %r3, -32(%r1)
	rldicl %r3, %r3, 63, 1
	std %r3, -32(%r1)
	b .LBB132_9
.LBB132_13:
	lwz %r3, -36(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB132_15
# %bb.14:
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
	std %r3, 64(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB132_16
.LBB132_15:
	ld %r3, -56(%r1)
	std %r3, -16(%r1)
.LBB132_16:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-.Lfunc_begin132
	.cfi_endproc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	4
	.type	__ashldi3,@function
.Lfunc_toc133:                          # @__ashldi3
	.quad	.TOC.-.Lfunc_gep133
__ashldi3:
.Lfunc_begin133:
	.cfi_startproc
.Lfunc_gep133:
	ld %r2, .Lfunc_toc133-.Lfunc_gep133(%r12)
	add %r2, %r2, %r12
.Lfunc_lep133:
	.localentry	__ashldi3, .Lfunc_lep133-.Lfunc_gep133
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC143@toc@ha
	ld %r3, .LC143@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 32
	stw %r3, -32(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	lwz %r3, -28(%r1)
	li %r4, 32
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB133_2
# %bb.1:
	addis %r3, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	addi %r4, %r4, -32
	slw %r3, %r3, %r4
	stw %r3, -44(%r1)
	b .LBB133_5
.LBB133_2:
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB133_4
# %bb.3:
	addis %r3, %r2, .LC143@toc@ha
	ld %r3, .LC143@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB133_6
.LBB133_4:
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	slw %r3, %r3, %r4
	stw %r3, -48(%r1)
	lwz %r3, -36(%r1)
	lwz %r5, -28(%r1)
	slw %r3, %r3, %r5
	lwz %r4, -40(%r1)
	subfic %r5, %r5, 32
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	stw %r3, -44(%r1)
.LBB133_5:
	ld %r3, -48(%r1)
	std %r3, -16(%r1)
.LBB133_6:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-.Lfunc_begin133
	.cfi_endproc
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	4
	.type	__ashlti3,@function
.Lfunc_toc134:                          # @__ashlti3
	.quad	.TOC.-.Lfunc_gep134
__ashlti3:
.Lfunc_begin134:
	.cfi_startproc
.Lfunc_gep134:
	ld %r2, .Lfunc_toc134-.Lfunc_gep134(%r12)
	add %r2, %r2, %r12
.Lfunc_lep134:
	.localentry	__ashlti3, .Lfunc_lep134-.Lfunc_gep134
# %bb.0:
	std %r5, -104(%r1)                      # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -104(%r1)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -48(%r1)
	std %r4, -40(%r1)
	stw %r3, -52(%r1)
	addis %r3, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r3, 64
	stw %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -72(%r1)
	std %r3, -80(%r1)
	lwz %r3, -52(%r1)
	li %r4, 64
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB134_2
# %bb.1:
	addis %r3, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	li %r3, 0
	std %r3, -96(%r1)
	ld %r3, -80(%r1)
	lwz %r4, -52(%r1)
	addi %r4, %r4, -64
                                        # implicit-def: $x5
	mr	%r5, %r4
	clrldi	%r5, %r5, 32
	sld %r3, %r3, %r4
	std %r3, -88(%r1)
	b .LBB134_5
.LBB134_2:
	lwz %r3, -52(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB134_4
# %bb.3:
	addis %r3, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB134_6
.LBB134_4:
	ld %r3, -80(%r1)
	lwz %r4, -52(%r1)
	sld %r3, %r3, %r4
	std %r3, -96(%r1)
	ld %r3, -72(%r1)
	lwz %r5, -52(%r1)
	sld %r3, %r3, %r5
	ld %r4, -80(%r1)
	subfic %r5, %r5, 64
                                        # implicit-def: $x6
	mr	%r6, %r5
	clrldi	%r6, %r6, 32
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	std %r3, -88(%r1)
.LBB134_5:
	ld %r3, -96(%r1)
	ld %r4, -88(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
.LBB134_6:
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-.Lfunc_begin134
	.cfi_endproc
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	4
	.type	__ashrdi3,@function
.Lfunc_toc135:                          # @__ashrdi3
	.quad	.TOC.-.Lfunc_gep135
__ashrdi3:
.Lfunc_begin135:
	.cfi_startproc
.Lfunc_gep135:
	ld %r2, .Lfunc_toc135-.Lfunc_gep135(%r12)
	add %r2, %r2, %r12
.Lfunc_lep135:
	.localentry	__ashrdi3, .Lfunc_lep135-.Lfunc_gep135
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC145@toc@ha
	ld %r3, .LC145@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC145@toc@ha
	ld %r4, .LC145@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 32
	stw %r3, -32(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	lwz %r3, -28(%r1)
	li %r4, 32
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB135_2
# %bb.1:
	addis %r3, %r2, .LC145@toc@ha
	ld %r4, .LC145@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -36(%r1)
	srawi %r3, %r3, 31
	stw %r3, -44(%r1)
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	addi %r4, %r4, -32
	sraw %r3, %r3, %r4
	stw %r3, -48(%r1)
	b .LBB135_5
.LBB135_2:
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB135_4
# %bb.3:
	addis %r3, %r2, .LC145@toc@ha
	ld %r3, .LC145@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC145@toc@ha
	ld %r4, .LC145@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB135_6
.LBB135_4:
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	sraw %r3, %r3, %r4
	stw %r3, -44(%r1)
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	subfic %r4, %r4, 32
	slw %r3, %r3, %r4
	lwz %r4, -40(%r1)
	lwz %r5, -28(%r1)
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	stw %r3, -48(%r1)
.LBB135_5:
	ld %r3, -48(%r1)
	std %r3, -16(%r1)
.LBB135_6:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-.Lfunc_begin135
	.cfi_endproc
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	4
	.type	__ashrti3,@function
.Lfunc_toc136:                          # @__ashrti3
	.quad	.TOC.-.Lfunc_gep136
__ashrti3:
.Lfunc_begin136:
	.cfi_startproc
.Lfunc_gep136:
	ld %r2, .Lfunc_toc136-.Lfunc_gep136(%r12)
	add %r2, %r2, %r12
.Lfunc_lep136:
	.localentry	__ashrti3, .Lfunc_lep136-.Lfunc_gep136
# %bb.0:
	std %r5, -104(%r1)                      # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -104(%r1)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -48(%r1)
	std %r4, -40(%r1)
	stw %r3, -52(%r1)
	addis %r3, %r2, .LC146@toc@ha
	ld %r4, .LC146@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r3, 64
	stw %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -72(%r1)
	std %r3, -80(%r1)
	lwz %r3, -52(%r1)
	li %r4, 64
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB136_2
# %bb.1:
	addis %r3, %r2, .LC146@toc@ha
	ld %r4, .LC146@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, -72(%r1)
	sradi %r3, %r3, 63
	std %r3, -88(%r1)
	ld %r3, -72(%r1)
	lwz %r4, -52(%r1)
	addi %r4, %r4, -64
                                        # implicit-def: $x5
	mr	%r5, %r4
	clrldi	%r5, %r5, 32
	srad %r3, %r3, %r4
	std %r3, -96(%r1)
	b .LBB136_5
.LBB136_2:
	lwz %r3, -52(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB136_4
# %bb.3:
	addis %r3, %r2, .LC146@toc@ha
	ld %r4, .LC146@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB136_6
.LBB136_4:
	ld %r3, -72(%r1)
	lwz %r4, -52(%r1)
	srad %r3, %r3, %r4
	std %r3, -88(%r1)
	ld %r3, -72(%r1)
	lwz %r4, -52(%r1)
	mr	%r5, %r4
	subfic %r4, %r5, 64
	sld %r3, %r3, %r4
	ld %r4, -80(%r1)
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	std %r3, -96(%r1)
.LBB136_5:
	ld %r3, -96(%r1)
	ld %r4, -88(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
.LBB136_6:
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-.Lfunc_begin136
	.cfi_endproc
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	4
	.type	__bswapdi2,@function
.Lfunc_toc137:                          # @__bswapdi2
	.quad	.TOC.-.Lfunc_gep137
__bswapdi2:
.Lfunc_begin137:
	.cfi_startproc
.Lfunc_gep137:
	ld %r2, .Lfunc_toc137-.Lfunc_gep137(%r12)
	add %r2, %r2, %r12
.Lfunc_lep137:
	.localentry	__bswapdi2, .Lfunc_lep137-.Lfunc_gep137
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC147@toc@ha
	ld %r4, .LC147@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r4, -16(%r1)
	rotldi	%r5, %r4, 16
	rldicl %r3, %r4, 8, 56
	rldimi %r3, %r5, 8, 48
	rotldi	%r5, %r4, 24
	rldimi %r3, %r5, 16, 40
	rotldi	%r5, %r4, 32
	rldimi %r3, %r5, 24, 32
	rotldi	%r5, %r4, 40
	rldimi %r3, %r5, 32, 24
	rotldi	%r5, %r4, 48
	rldimi %r3, %r5, 40, 16
	rotldi	%r5, %r4, 56
	rldimi %r3, %r5, 48, 8
	clrldi	%r5, %r4, 56
	sldi %r4, %r4, 56
	or %r3, %r3, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-.Lfunc_begin137
	.cfi_endproc
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	4
	.type	__bswapsi2,@function
.Lfunc_toc138:                          # @__bswapsi2
	.quad	.TOC.-.Lfunc_gep138
__bswapsi2:
.Lfunc_begin138:
	.cfi_startproc
.Lfunc_gep138:
	ld %r2, .Lfunc_toc138-.Lfunc_gep138(%r12)
	add %r2, %r2, %r12
.Lfunc_lep138:
	.localentry	__bswapsi2, .Lfunc_lep138-.Lfunc_gep138
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC148@toc@ha
	ld %r3, .LC148@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC148@toc@ha
	ld %r4, .LC148@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	lis %r4, -256
	and %r3, %r3, %r4
	li %r4, 24
	srw %r3, %r3, %r4
	lwz %r4, -12(%r1)
	lis %r5, 255
	and %r4, %r4, %r5
	li %r5, 8
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	lwz %r4, -12(%r1)
	lis %r5, 0
	ori %r5, %r5, 65280
	and %r4, %r4, %r5
	li %r5, 8
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	lwz %r4, -12(%r1)
	li %r5, 255
	and %r4, %r4, %r5
	li %r5, 24
	slw %r4, %r4, %r5
	or %r3, %r3, %r4
	clrldi	%r3, %r3, 32
	blr
	.long	0
	.quad	0
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-.Lfunc_begin138
	.cfi_endproc
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	4
	.type	__clzsi2,@function
.Lfunc_toc139:                          # @__clzsi2
	.quad	.TOC.-.Lfunc_gep139
__clzsi2:
.Lfunc_begin139:
	.cfi_startproc
.Lfunc_gep139:
	ld %r2, .Lfunc_toc139-.Lfunc_gep139(%r12)
	add %r2, %r2, %r12
.Lfunc_lep139:
	.localentry	__clzsi2, .Lfunc_lep139-.Lfunc_gep139
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC149@toc@ha
	ld %r4, .LC149@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)
	lhz %r3, -14(%r1)
	slwi %r3, %r3, 16
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 0
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	li %r3, 16
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB139_2
# %bb.1:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
.LBB139_2:
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	subfic %r4, %r3, 16
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -20(%r1)
	stw %r3, -24(%r1)
	lbz %r3, -15(%r1)
	slwi %r3, %r3, 8
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 8
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB139_4
# %bb.3:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB139_4:
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	subfic %r4, %r3, 8
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	rlwinm %r3, %r3, 0, 24, 27
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 4
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB139_6
# %bb.5:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB139_6:
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	subfic %r4, %r3, 4
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	rlwinm %r3, %r3, 0, 28, 29
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 2
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB139_8
# %bb.7:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB139_8:
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	subfic %r4, %r3, 2
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -24(%r1)
	lwz %r5, -16(%r1)
	subfic %r4, %r5, 2
	rlwinm %r5, %r5, 0, 30, 30
	cntlzw	%r5, %r5
	rlwinm %r5, %r5, 27, 31, 31
	neg %r5, %r5
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-.Lfunc_begin139
	.cfi_endproc
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	4
	.type	__clzti2,@function
.Lfunc_toc140:                          # @__clzti2
	.quad	.TOC.-.Lfunc_gep140
__clzti2:
.Lfunc_begin140:
	.cfi_startproc
.Lfunc_gep140:
	ld %r2, .Lfunc_toc140-.Lfunc_gep140(%r12)
	add %r2, %r2, %r12
.Lfunc_lep140:
	.localentry	__clzti2, .Lfunc_lep140-.Lfunc_gep140
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC150@toc@ha
	ld %r4, .LC150@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	cntlzd %r3, %r3
	rldicl %r3, %r3, 58, 63
                                        # kill: def $r3 killed $r3 killed $x3
	neg %r3, %r3
	extsw %r3, %r3
	std %r3, -56(%r1)
	ld %r3, -40(%r1)
	ld %r4, -56(%r1)
	li %r5, -1
	xor %r4, %r4, %r5
	and %r3, %r3, %r4
	ld %r4, -48(%r1)
	ld %r5, -56(%r1)
	and %r4, %r4, %r5
	or %r3, %r3, %r4
	cntlzd %r3, %r3
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, -56(%r1)
                                        # kill: def $r4 killed $r4 killed $x4
	li %r5, 64
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-.Lfunc_begin140
	.cfi_endproc
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	4
	.type	__cmpdi2,@function
.Lfunc_toc141:                          # @__cmpdi2
	.quad	.TOC.-.Lfunc_gep141
__cmpdi2:
.Lfunc_begin141:
	.cfi_startproc
.Lfunc_gep141:
	ld %r2, .Lfunc_toc141-.Lfunc_gep141(%r12)
	add %r2, %r2, %r12
.Lfunc_lep141:
	.localentry	__cmpdi2, .Lfunc_lep141-.Lfunc_gep141
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	addis %r3, %r2, .LC151@toc@ha
	ld %r3, .LC151@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC151@toc@ha
	ld %r4, .LC151@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	std %r3, -48(%r1)
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmpw	%r3, %r4
	bge %cr0, .LBB141_2
# %bb.1:
	addis %r3, %r2, .LC151@toc@ha
	ld %r3, .LC151@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC151@toc@ha
	ld %r4, .LC151@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_2:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmpw	%r3, %r4
	ble %cr0, .LBB141_4
# %bb.3:
	addis %r3, %r2, .LC151@toc@ha
	ld %r3, .LC151@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC151@toc@ha
	ld %r4, .LC151@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_4:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB141_6
# %bb.5:
	addis %r3, %r2, .LC151@toc@ha
	ld %r3, .LC151@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC151@toc@ha
	ld %r4, .LC151@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_6:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB141_8
# %bb.7:
	addis %r3, %r2, .LC151@toc@ha
	ld %r3, .LC151@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC151@toc@ha
	ld %r4, .LC151@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_8:
	li %r3, 1
	stw %r3, -12(%r1)
.LBB141_9:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-.Lfunc_begin141
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	4
	.type	__aeabi_lcmp,@function
.Lfunc_toc142:                          # @__aeabi_lcmp
	.quad	.TOC.-.Lfunc_gep142
__aeabi_lcmp:
.Lfunc_begin142:
	.cfi_startproc
.Lfunc_gep142:
	ld %r2, .Lfunc_toc142-.Lfunc_gep142(%r12)
	add %r2, %r2, %r12
.Lfunc_lep142:
	.localentry	__aeabi_lcmp, .Lfunc_lep142-.Lfunc_gep142
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 48(%r31)
	std %r4, 40(%r31)
	addis %r3, %r2, .LC152@toc@ha
	ld %r4, .LC152@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 48(%r31)
	ld %r4, 40(%r31)
	mr	%r5, %r2
	std %r5, 24(%r1)
	addis %r5, %r2, .LC153@toc@ha
	ld %r5, .LC153@toc@l(%r5)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	addi %r3, %r3, -1
	extsw %r3, %r3
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-.Lfunc_begin142
	.cfi_endproc
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	4
	.type	__cmpti2,@function
.Lfunc_toc143:                          # @__cmpti2
	.quad	.TOC.-.Lfunc_gep143
__cmpti2:
.Lfunc_begin143:
	.cfi_startproc
.Lfunc_gep143:
	ld %r2, .Lfunc_toc143-.Lfunc_gep143(%r12)
	add %r2, %r2, %r12
.Lfunc_lep143:
	.localentry	__cmpti2, .Lfunc_lep143-.Lfunc_gep143
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	std %r6, -40(%r1)
	std %r5, -48(%r1)
	addis %r3, %r2, .LC154@toc@ha
	ld %r4, .LC154@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -56(%r1)
	std %r3, -64(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -72(%r1)
	std %r3, -80(%r1)
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpd	%r3, %r4
	bge %cr0, .LBB143_2
# %bb.1:
	addis %r3, %r2, .LC154@toc@ha
	ld %r3, .LC154@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC154@toc@ha
	ld %r4, .LC154@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_2:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpd	%r3, %r4
	ble %cr0, .LBB143_4
# %bb.3:
	addis %r3, %r2, .LC154@toc@ha
	ld %r3, .LC154@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC154@toc@ha
	ld %r4, .LC154@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_4:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB143_6
# %bb.5:
	addis %r3, %r2, .LC154@toc@ha
	ld %r3, .LC154@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC154@toc@ha
	ld %r4, .LC154@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_6:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB143_8
# %bb.7:
	addis %r3, %r2, .LC154@toc@ha
	ld %r3, .LC154@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC154@toc@ha
	ld %r4, .LC154@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_8:
	li %r3, 1
	stw %r3, -12(%r1)
.LBB143_9:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-.Lfunc_begin143
	.cfi_endproc
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	4
	.type	__ctzsi2,@function
.Lfunc_toc144:                          # @__ctzsi2
	.quad	.TOC.-.Lfunc_gep144
__ctzsi2:
.Lfunc_begin144:
	.cfi_startproc
.Lfunc_gep144:
	ld %r2, .Lfunc_toc144-.Lfunc_gep144(%r12)
	add %r2, %r2, %r12
.Lfunc_lep144:
	.localentry	__ctzsi2, .Lfunc_lep144-.Lfunc_gep144
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC155@toc@ha
	ld %r4, .LC155@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)
	lhz %r3, -16(%r1)
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 0
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	li %r3, 16
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB144_2
# %bb.1:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
.LBB144_2:
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -20(%r1)
	stw %r3, -24(%r1)
	lbz %r3, -16(%r1)
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 8
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB144_4
# %bb.3:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB144_4:
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	clrlwi	%r3, %r3, 28
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 4
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB144_6
# %bb.5:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB144_6:
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	clrlwi	%r3, %r3, 30
	cmpwi	%r3, 0
	crmove	4*cr5+lt, eq
	li %r3, 2
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	bc 12, 4*cr5+lt, .LBB144_8
# %bb.7:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB144_8:
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	clrlwi	%r3, %r3, 30
	stw %r3, -16(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -24(%r1)
	lwz %r5, -16(%r1)
	srwi %r4, %r5, 1
	subfic %r4, %r4, 2
	clrlwi	%r5, %r5, 31
	cntlzw	%r6, %r5
	rlwinm %r6, %r6, 27, 31, 31
	addi %r5, %r5, -1
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-.Lfunc_begin144
	.cfi_endproc
                                        # -- End function
	.globl	__ctzti2                        # -- Begin function __ctzti2
	.p2align	4
	.type	__ctzti2,@function
.Lfunc_toc145:                          # @__ctzti2
	.quad	.TOC.-.Lfunc_gep145
__ctzti2:
.Lfunc_begin145:
	.cfi_startproc
.Lfunc_gep145:
	ld %r2, .Lfunc_toc145-.Lfunc_gep145(%r12)
	add %r2, %r2, %r12
.Lfunc_lep145:
	.localentry	__ctzti2, .Lfunc_lep145-.Lfunc_gep145
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC156@toc@ha
	ld %r4, .LC156@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	cntlzd %r3, %r3
	rldicl %r3, %r3, 58, 63
                                        # kill: def $r3 killed $r3 killed $x3
	neg %r3, %r3
	extsw %r3, %r3
	std %r3, -56(%r1)
	ld %r3, -40(%r1)
	ld %r4, -56(%r1)
	and %r3, %r3, %r4
	ld %r4, -48(%r1)
	ld %r5, -56(%r1)
	li %r6, -1
	xor %r5, %r5, %r6
	and %r4, %r4, %r5
	or %r4, %r3, %r4
	addi %r3, %r4, -1
	andc %r3, %r3, %r4
	cntlzd %r3, %r3
	subfic %r3, %r3, 64
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, -56(%r1)
                                        # kill: def $r4 killed $r4 killed $x4
	li %r5, 64
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-.Lfunc_begin145
	.cfi_endproc
                                        # -- End function
	.globl	__ffsti2                        # -- Begin function __ffsti2
	.p2align	4
	.type	__ffsti2,@function
.Lfunc_toc146:                          # @__ffsti2
	.quad	.TOC.-.Lfunc_gep146
__ffsti2:
.Lfunc_begin146:
	.cfi_startproc
.Lfunc_gep146:
	ld %r2, .Lfunc_toc146-.Lfunc_gep146(%r12)
	add %r2, %r2, %r12
.Lfunc_lep146:
	.localentry	__ffsti2, .Lfunc_lep146-.Lfunc_gep146
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC157@toc@ha
	ld %r4, .LC157@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB146_4
# %bb.1:
	addis %r3, %r2, .LC157@toc@ha
	ld %r3, .LC157@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC157@toc@ha
	ld %r4, .LC157@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -40(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB146_3
# %bb.2:
	addis %r3, %r2, .LC157@toc@ha
	ld %r3, .LC157@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC157@toc@ha
	ld %r4, .LC157@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB146_5
.LBB146_3:
	ld %r4, -40(%r1)
	addi %r3, %r4, -1
	andc %r3, %r3, %r4
	cntlzd %r3, %r3
	subfic %r3, %r3, 64
                                        # kill: def $r3 killed $r3 killed $x3
	extsw %r3, %r3
	addi %r3, %r3, 65
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	b .LBB146_5
.LBB146_4:
	ld %r4, -48(%r1)
	addi %r3, %r4, -1
	andc %r3, %r3, %r4
	cntlzd %r3, %r3
	subfic %r3, %r3, 64
                                        # kill: def $r3 killed $r3 killed $x3
	addi %r3, %r3, 1
	stw %r3, -12(%r1)
.LBB146_5:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-.Lfunc_begin146
	.cfi_endproc
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	4
	.type	__lshrdi3,@function
.Lfunc_toc147:                          # @__lshrdi3
	.quad	.TOC.-.Lfunc_gep147
__lshrdi3:
.Lfunc_begin147:
	.cfi_startproc
.Lfunc_gep147:
	ld %r2, .Lfunc_toc147-.Lfunc_gep147(%r12)
	add %r2, %r2, %r12
.Lfunc_lep147:
	.localentry	__lshrdi3, .Lfunc_lep147-.Lfunc_gep147
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC158@toc@ha
	ld %r3, .LC158@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC158@toc@ha
	ld %r4, .LC158@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 32
	stw %r3, -32(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	lwz %r3, -28(%r1)
	li %r4, 32
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB147_2
# %bb.1:
	addis %r3, %r2, .LC158@toc@ha
	ld %r4, .LC158@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -44(%r1)
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	addi %r4, %r4, -32
	srw %r3, %r3, %r4
	stw %r3, -48(%r1)
	b .LBB147_5
.LBB147_2:
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB147_4
# %bb.3:
	addis %r3, %r2, .LC158@toc@ha
	ld %r3, .LC158@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC158@toc@ha
	ld %r4, .LC158@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB147_6
.LBB147_4:
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	srw %r3, %r3, %r4
	stw %r3, -44(%r1)
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	subfic %r4, %r4, 32
	slw %r3, %r3, %r4
	lwz %r4, -40(%r1)
	lwz %r5, -28(%r1)
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	stw %r3, -48(%r1)
.LBB147_5:
	ld %r3, -48(%r1)
	std %r3, -16(%r1)
.LBB147_6:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-.Lfunc_begin147
	.cfi_endproc
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	4
	.type	__lshrti3,@function
.Lfunc_toc148:                          # @__lshrti3
	.quad	.TOC.-.Lfunc_gep148
__lshrti3:
.Lfunc_begin148:
	.cfi_startproc
.Lfunc_gep148:
	ld %r2, .Lfunc_toc148-.Lfunc_gep148(%r12)
	add %r2, %r2, %r12
.Lfunc_lep148:
	.localentry	__lshrti3, .Lfunc_lep148-.Lfunc_gep148
# %bb.0:
	std %r5, -104(%r1)                      # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -104(%r1)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -48(%r1)
	std %r4, -40(%r1)
	stw %r3, -52(%r1)
	addis %r3, %r2, .LC159@toc@ha
	ld %r4, .LC159@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r3, 64
	stw %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -72(%r1)
	std %r3, -80(%r1)
	lwz %r3, -52(%r1)
	li %r4, 64
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB148_2
# %bb.1:
	addis %r3, %r2, .LC159@toc@ha
	ld %r4, .LC159@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	li %r3, 0
	std %r3, -88(%r1)
	ld %r3, -72(%r1)
	lwz %r4, -52(%r1)
	addi %r4, %r4, -64
                                        # implicit-def: $x5
	mr	%r5, %r4
	clrldi	%r5, %r5, 32
	srd %r3, %r3, %r4
	std %r3, -96(%r1)
	b .LBB148_5
.LBB148_2:
	lwz %r3, -52(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB148_4
# %bb.3:
	addis %r3, %r2, .LC159@toc@ha
	ld %r4, .LC159@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB148_6
.LBB148_4:
	ld %r3, -72(%r1)
	lwz %r4, -52(%r1)
	srd %r3, %r3, %r4
	std %r3, -88(%r1)
	ld %r3, -72(%r1)
	lwz %r4, -52(%r1)
	mr	%r5, %r4
	subfic %r4, %r5, 64
	sld %r3, %r3, %r4
	ld %r4, -80(%r1)
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	std %r3, -96(%r1)
.LBB148_5:
	ld %r3, -96(%r1)
	ld %r4, -88(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
.LBB148_6:
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-.Lfunc_begin148
	.cfi_endproc
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	4
	.type	__muldsi3,@function
.Lfunc_toc149:                          # @__muldsi3
	.quad	.TOC.-.Lfunc_gep149
__muldsi3:
.Lfunc_begin149:
	.cfi_startproc
.Lfunc_gep149:
	ld %r2, .Lfunc_toc149-.Lfunc_gep149(%r12)
	add %r2, %r2, %r12
.Lfunc_lep149:
	.localentry	__muldsi3, .Lfunc_lep149-.Lfunc_gep149
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC160@toc@ha
	ld %r3, .LC160@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC160@toc@ha
	ld %r4, .LC160@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 16
	stw %r3, -28(%r1)
	lis %r3, 0
	ori %r3, %r3, 65535
	stw %r3, -32(%r1)
	lwz %r3, -12(%r1)
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	lwz %r4, -16(%r1)
	lis %r5, 0
	ori %r5, %r5, 65535
	and %r4, %r4, %r5
	mullw %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -24(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -24(%r1)
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -12(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	lwz %r4, -16(%r1)
	lis %r5, 0
	ori %r5, %r5, 65535
	and %r4, %r4, %r5
	mullw %r4, %r3, %r4
	lwz %r3, -36(%r1)
	add %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -36(%r1)
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	li %r4, 16
	slw %r4, %r3, %r4
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -36(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -24(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -24(%r1)
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	lwz %r4, -12(%r1)
	lis %r5, 0
	ori %r5, %r5, 65535
	and %r4, %r4, %r5
	mullw %r4, %r3, %r4
	lwz %r3, -36(%r1)
	add %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -36(%r1)
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	li %r4, 16
	slw %r4, %r3, %r4
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -36(%r1)
	li %r4, 16
	srw %r4, %r3, %r4
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -12(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	lwz %r4, -16(%r1)
	li %r5, 16
	srw %r4, %r4, %r5
	mullw %r4, %r3, %r4
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
	ld %r3, -24(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-.Lfunc_begin149
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	4
	.type	__muldi3_compiler_rt,@function
.Lfunc_toc150:                          # @__muldi3_compiler_rt
	.quad	.TOC.-.Lfunc_gep150
__muldi3_compiler_rt:
.Lfunc_begin150:
	.cfi_startproc
.Lfunc_gep150:
	ld %r2, .Lfunc_toc150-.Lfunc_gep150(%r12)
	add %r2, %r2, %r12
.Lfunc_lep150:
	.localentry	__muldi3_compiler_rt, .Lfunc_lep150-.Lfunc_gep150
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 64(%r31)
	std %r4, 56(%r31)
	addis %r3, %r2, .LC161@toc@ha
	ld %r3, .LC161@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC161@toc@ha
	ld %r4, .LC161@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 64(%r31)
	std %r3, 48(%r31)
	ld %r3, 56(%r31)
	std %r3, 40(%r31)
	lwz %r4, 48(%r31)
	lwz %r5, 40(%r31)
	mr	%r3, %r2
	std %r3, 24(%r1)
                                        # implicit-def: $x3
	mr	%r3, %r4
	clrldi	%r3, %r3, 32
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
	addis %r5, %r2, .LC162@toc@ha
	ld %r5, .LC162@toc@l(%r5)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
	std %r3, 32(%r31)
	lwz %r3, 52(%r31)
	lwz %r4, 40(%r31)
	mullw %r3, %r3, %r4
	lwz %r4, 48(%r31)
	lwz %r5, 44(%r31)
	mullw %r4, %r4, %r5
	add %r4, %r3, %r4
	lwz %r3, 36(%r31)
	add %r3, %r3, %r4
	stw %r3, 36(%r31)
	ld %r3, 32(%r31)
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-.Lfunc_begin150
	.cfi_endproc
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	4
	.type	__mulddi3,@function
.Lfunc_toc151:                          # @__mulddi3
	.quad	.TOC.-.Lfunc_gep151
__mulddi3:
.Lfunc_begin151:
	.cfi_startproc
.Lfunc_gep151:
	ld %r2, .Lfunc_toc151-.Lfunc_gep151(%r12)
	add %r2, %r2, %r12
.Lfunc_lep151:
	.localentry	__mulddi3, .Lfunc_lep151-.Lfunc_gep151
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC163@toc@ha
	ld %r4, .LC163@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r3, 32
	stw %r3, -52(%r1)
	li %r3, -1
	rldic %r3, %r3, 0, 32
	std %r3, -64(%r1)
	lwz %r3, -16(%r1)
	lwz %r4, -24(%r1)
	mulld %r3, %r3, %r4
	std %r3, -48(%r1)
	lwz %r3, -44(%r1)
	std %r3, -72(%r1)
	lwz %r3, -48(%r1)
	std %r3, -48(%r1)
	lwz %r3, -12(%r1)
	lwz %r4, -24(%r1)
	mulld %r4, %r3, %r4
	ld %r3, -72(%r1)
	add %r3, %r3, %r4
	std %r3, -72(%r1)
	ld %r3, -72(%r1)
	sldi %r4, %r3, 32
	ld %r3, -48(%r1)
	add %r3, %r3, %r4
	std %r3, -48(%r1)
	lwz %r3, -68(%r1)
	std %r3, -40(%r1)
	lwz %r3, -44(%r1)
	std %r3, -72(%r1)
	lwz %r3, -48(%r1)
	std %r3, -48(%r1)
	lwz %r3, -20(%r1)
	lwz %r4, -16(%r1)
	mulld %r4, %r3, %r4
	ld %r3, -72(%r1)
	add %r3, %r3, %r4
	std %r3, -72(%r1)
	ld %r3, -72(%r1)
	sldi %r4, %r3, 32
	ld %r3, -48(%r1)
	add %r3, %r3, %r4
	std %r3, -48(%r1)
	lwz %r4, -68(%r1)
	ld %r3, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -40(%r1)
	lwz %r3, -12(%r1)
	lwz %r4, -20(%r1)
	mulld %r4, %r3, %r4
	ld %r3, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -40(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-.Lfunc_begin151
	.cfi_endproc
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	4
	.type	__multi3,@function
.Lfunc_toc152:                          # @__multi3
	.quad	.TOC.-.Lfunc_gep152
__multi3:
.Lfunc_begin152:
	.cfi_startproc
.Lfunc_gep152:
	ld %r2, .Lfunc_toc152-.Lfunc_gep152(%r12)
	add %r2, %r2, %r12
.Lfunc_lep152:
	.localentry	__multi3, .Lfunc_lep152-.Lfunc_gep152
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -128(%r1)
	std %r0, 144(%r1)
	.cfi_def_cfa_offset 128
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 96(%r31)
	std %r4, 104(%r31)
	std %r6, 88(%r31)
	std %r5, 80(%r31)
	addis %r3, %r2, .LC164@toc@ha
	ld %r4, .LC164@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 96(%r31)
	ld %r4, 104(%r31)
	std %r4, 72(%r31)
	std %r3, 64(%r31)
	ld %r3, 80(%r31)
	ld %r4, 88(%r31)
	std %r4, 56(%r31)
	std %r3, 48(%r31)
	ld %r3, 64(%r31)
	ld %r4, 48(%r31)
	mr	%r5, %r2
	std %r5, 24(%r1)
	addis %r5, %r2, .LC165@toc@ha
	ld %r5, .LC165@toc@l(%r5)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
	std %r4, 40(%r31)
	std %r3, 32(%r31)
	ld %r3, 72(%r31)
	ld %r4, 48(%r31)
	mulld %r3, %r3, %r4
	ld %r4, 64(%r31)
	ld %r5, 56(%r31)
	mulld %r4, %r4, %r5
	add %r4, %r3, %r4
	ld %r3, 40(%r31)
	add %r3, %r3, %r4
	std %r3, 40(%r31)
	ld %r3, 32(%r31)
	ld %r4, 40(%r31)
	addi %r1, %r1, 128
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-.Lfunc_begin152
	.cfi_endproc
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	4
	.type	__negdi2,@function
.Lfunc_toc153:                          # @__negdi2
	.quad	.TOC.-.Lfunc_gep153
__negdi2:
.Lfunc_begin153:
	.cfi_startproc
.Lfunc_gep153:
	ld %r2, .Lfunc_toc153-.Lfunc_gep153(%r12)
	add %r2, %r2, %r12
.Lfunc_lep153:
	.localentry	__negdi2, .Lfunc_lep153-.Lfunc_gep153
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC166@toc@ha
	ld %r4, .LC166@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	neg %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-.Lfunc_begin153
	.cfi_endproc
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	4
	.type	__negti2,@function
.Lfunc_toc154:                          # @__negti2
	.quad	.TOC.-.Lfunc_gep154
__negti2:
.Lfunc_begin154:
	.cfi_startproc
.Lfunc_gep154:
	ld %r2, .Lfunc_toc154-.Lfunc_gep154(%r12)
	add %r2, %r2, %r12
.Lfunc_lep154:
	.localentry	__negti2, .Lfunc_lep154-.Lfunc_gep154
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC167@toc@ha
	ld %r4, .LC167@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	subfic %r3, %r3, 0
	subfze %r4, %r4
	blr
	.long	0
	.quad	0
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-.Lfunc_begin154
	.cfi_endproc
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	4
	.type	__paritydi2,@function
.Lfunc_toc155:                          # @__paritydi2
	.quad	.TOC.-.Lfunc_gep155
__paritydi2:
.Lfunc_begin155:
	.cfi_startproc
.Lfunc_gep155:
	ld %r2, .Lfunc_toc155-.Lfunc_gep155(%r12)
	add %r2, %r2, %r12
.Lfunc_lep155:
	.localentry	__paritydi2, .Lfunc_lep155-.Lfunc_gep155
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC168@toc@ha
	ld %r3, .LC168@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC168@toc@ha
	ld %r4, .LC168@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
	lwz %r3, -20(%r1)
	lwz %r4, -24(%r1)
	xor %r3, %r3, %r4
	stw %r3, -28(%r1)
	lwz %r3, -28(%r1)
	li %r4, 16
	srw %r4, %r3, %r4
	lwz %r3, -28(%r1)
	xor %r3, %r3, %r4
	stw %r3, -28(%r1)
	lwz %r3, -28(%r1)
	li %r4, 8
	srw %r4, %r3, %r4
	lwz %r3, -28(%r1)
	xor %r3, %r3, %r4
	stw %r3, -28(%r1)
	lwz %r3, -28(%r1)
	li %r4, 4
	srw %r4, %r3, %r4
	lwz %r3, -28(%r1)
	xor %r3, %r3, %r4
	stw %r3, -28(%r1)
	lwz %r3, -28(%r1)
	li %r4, 15
	and %r4, %r3, %r4
	li %r3, 27030
	sraw %r3, %r3, %r4
	li %r4, 1
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-.Lfunc_begin155
	.cfi_endproc
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	4
	.type	__parityti2,@function
.Lfunc_toc156:                          # @__parityti2
	.quad	.TOC.-.Lfunc_gep156
__parityti2:
.Lfunc_begin156:
	.cfi_startproc
.Lfunc_gep156:
	ld %r2, .Lfunc_toc156-.Lfunc_gep156(%r12)
	add %r2, %r2, %r12
.Lfunc_lep156:
	.localentry	__parityti2, .Lfunc_lep156-.Lfunc_gep156
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC169@toc@ha
	ld %r4, .LC169@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	ld %r4, -48(%r1)
	xor %r3, %r3, %r4
	std %r3, -56(%r1)
	lwz %r3, -52(%r1)
	lwz %r4, -56(%r1)
	xor %r3, %r3, %r4
	stw %r3, -60(%r1)
	lwz %r3, -60(%r1)
	li %r4, 16
	srw %r4, %r3, %r4
	lwz %r3, -60(%r1)
	xor %r3, %r3, %r4
	stw %r3, -60(%r1)
	lwz %r3, -60(%r1)
	li %r4, 8
	srw %r4, %r3, %r4
	lwz %r3, -60(%r1)
	xor %r3, %r3, %r4
	stw %r3, -60(%r1)
	lwz %r3, -60(%r1)
	li %r4, 4
	srw %r4, %r3, %r4
	lwz %r3, -60(%r1)
	xor %r3, %r3, %r4
	stw %r3, -60(%r1)
	lwz %r3, -60(%r1)
	li %r4, 15
	and %r4, %r3, %r4
	li %r3, 27030
	sraw %r3, %r3, %r4
	li %r4, 1
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-.Lfunc_begin156
	.cfi_endproc
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	4
	.type	__paritysi2,@function
.Lfunc_toc157:                          # @__paritysi2
	.quad	.TOC.-.Lfunc_gep157
__paritysi2:
.Lfunc_begin157:
	.cfi_startproc
.Lfunc_gep157:
	ld %r2, .Lfunc_toc157-.Lfunc_gep157(%r12)
	add %r2, %r2, %r12
.Lfunc_lep157:
	.localentry	__paritysi2, .Lfunc_lep157-.Lfunc_gep157
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC170@toc@ha
	ld %r3, .LC170@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC170@toc@ha
	ld %r4, .LC170@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	li %r4, 16
	srw %r4, %r3, %r4
	lwz %r3, -16(%r1)
	xor %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	li %r4, 8
	srw %r4, %r3, %r4
	lwz %r3, -16(%r1)
	xor %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	li %r4, 4
	srw %r4, %r3, %r4
	lwz %r3, -16(%r1)
	xor %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	li %r4, 15
	and %r4, %r3, %r4
	li %r3, 27030
	sraw %r3, %r3, %r4
	li %r4, 1
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-.Lfunc_begin157
	.cfi_endproc
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	4
	.type	__popcountdi2,@function
.Lfunc_toc158:                          # @__popcountdi2
	.quad	.TOC.-.Lfunc_gep158
__popcountdi2:
.Lfunc_begin158:
	.cfi_startproc
.Lfunc_gep158:
	ld %r2, .Lfunc_toc158-.Lfunc_gep158(%r12)
	add %r2, %r2, %r12
.Lfunc_lep158:
	.localentry	__popcountdi2, .Lfunc_lep158-.Lfunc_gep158
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC171@toc@ha
	ld %r4, .LC171@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
	ld %r4, -24(%r1)
	lis %r3, 21845
	ori %r5, %r3, 21845
	rldimi %r5, %r5, 32, 0
	rotldi	%r3, %r4, 63
	and %r3, %r3, %r5
	sub	%r3, %r4, %r3
	std %r3, -24(%r1)
	ld %r4, -24(%r1)
	rotldi	%r3, %r4, 62
	lis %r5, 13107
	ori %r5, %r5, 13107
	rldimi %r5, %r5, 32, 0
	and %r3, %r3, %r5
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, -24(%r1)
	ld %r3, -24(%r1)
	rldicl %r4, %r3, 60, 4
	add %r3, %r3, %r4
	lis %r4, 3855
	ori %r4, %r4, 3855
	rldimi %r4, %r4, 32, 0
	and %r3, %r3, %r4
	std %r3, -24(%r1)
	ld %r4, -24(%r1)
	mr	%r3, %r4
	rldicl %r4, %r4, 32, 32
	add %r3, %r3, %r4
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -28(%r1)
	lwz %r3, -28(%r1)
	lwz %r4, -28(%r1)
	li %r5, 16
	srw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, -28(%r1)
	lwz %r3, -28(%r1)
	lwz %r4, -28(%r1)
	li %r5, 8
	srw %r4, %r4, %r5
	add %r3, %r3, %r4
	li %r4, 127
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-.Lfunc_begin158
	.cfi_endproc
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	4
	.type	__popcountsi2,@function
.Lfunc_toc159:                          # @__popcountsi2
	.quad	.TOC.-.Lfunc_gep159
__popcountsi2:
.Lfunc_begin159:
	.cfi_startproc
.Lfunc_gep159:
	ld %r2, .Lfunc_toc159-.Lfunc_gep159(%r12)
	add %r2, %r2, %r12
.Lfunc_lep159:
	.localentry	__popcountsi2, .Lfunc_lep159-.Lfunc_gep159
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC172@toc@ha
	ld %r4, .LC172@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)
	lwz %r4, -16(%r1)
	rotlwi	%r3, %r4, 31
	andis. %r5, %r3, 21845
	andi. %r3, %r3, 21845
	or %r3, %r3, %r5
	sub	%r3, %r4, %r3
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	li %r4, 2
	srw %r3, %r3, %r4
	lis %r4, 13107
	ori %r4, %r4, 13107
	and %r3, %r3, %r4
	lwz %r4, -16(%r1)
	lis %r5, 13107
	ori %r5, %r5, 13107
	and %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	lwz %r4, -16(%r1)
	li %r5, 4
	srw %r4, %r4, %r5
	add %r3, %r3, %r4
	lis %r4, 3855
	ori %r4, %r4, 3855
	and %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	lwz %r4, -16(%r1)
	li %r5, 16
	srw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -16(%r1)
	lwz %r4, -16(%r1)
	li %r5, 8
	srw %r4, %r4, %r5
	add %r3, %r3, %r4
	li %r4, 63
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-.Lfunc_begin159
	.cfi_endproc
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	4
	.type	__popcountti2,@function
.Lfunc_toc160:                          # @__popcountti2
	.quad	.TOC.-.Lfunc_gep160
__popcountti2:
.Lfunc_begin160:
	.cfi_startproc
.Lfunc_gep160:
	ld %r2, .Lfunc_toc160-.Lfunc_gep160(%r12)
	add %r2, %r2, %r12
.Lfunc_lep160:
	.localentry	__popcountti2, .Lfunc_lep160-.Lfunc_gep160
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC173@toc@ha
	ld %r4, .LC173@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r5, -40(%r1)
	ld %r6, -48(%r1)
	lis %r3, 21845
	ori %r7, %r3, 21845
	rldimi %r7, %r7, 32, 0
	rotldi	%r3, %r6, 63
	and %r3, %r3, %r7
	rotldi	%r4, %r5, 63
	and %r4, %r4, %r7
	subc	%r3, %r6, %r3
	subfe %r4, %r4, %r5
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r6, -48(%r1)
	ld %r5, -40(%r1)
	rotldi	%r3, %r5, 62
	lis %r4, 13107
	ori %r7, %r4, 13107
	rldimi %r7, %r7, 32, 0
	and %r4, %r3, %r7
	rotldi	%r3, %r6, 62
	and %r3, %r3, %r7
	and %r5, %r5, %r7
	and %r6, %r6, %r7
	add %r3, %r3, %r6
	add %r4, %r4, %r5
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r4, -40(%r1)
	ld %r3, -48(%r1)
	rotldi	%r6, %r3, 60
	rldimi %r6, %r4, 60, 0
	rldicl %r5, %r4, 60, 4
	addc %r3, %r3, %r6
	adde %r4, %r4, %r5
	lis %r5, 3855
	ori %r5, %r5, 3855
	rldimi %r5, %r5, 32, 0
	and %r3, %r3, %r5
	and %r4, %r4, %r5
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r4, -40(%r1)
	ld %r3, -48(%r1)
	add %r3, %r3, %r4
	std %r3, -56(%r1)
	ld %r4, -56(%r1)
	mr	%r3, %r4
	rldicl %r4, %r4, 32, 32
	add %r3, %r3, %r4
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -60(%r1)
	lwz %r3, -60(%r1)
	lwz %r4, -60(%r1)
	li %r5, 16
	srw %r4, %r4, %r5
	add %r3, %r3, %r4
	stw %r3, -60(%r1)
	lwz %r3, -60(%r1)
	lwz %r4, -60(%r1)
	li %r5, 8
	srw %r4, %r4, %r5
	add %r3, %r3, %r4
	li %r4, 255
	and %r3, %r3, %r4
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-.Lfunc_begin160
	.cfi_endproc
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	4
	.type	__powidf2,@function
.Lfunc_toc161:                          # @__powidf2
	.quad	.TOC.-.Lfunc_gep161
__powidf2:
.Lfunc_begin161:
	.cfi_startproc
.Lfunc_gep161:
	ld %r2, .Lfunc_toc161-.Lfunc_gep161(%r12)
	add %r2, %r2, %r12
.Lfunc_lep161:
	.localentry	__powidf2, .Lfunc_lep161-.Lfunc_gep161
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 40(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 40(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, 64(%r31)
	stw %r3, 60(%r31)
	addis %r3, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 60(%r31)
	srwi %r3, %r3, 31
	stw %r3, 56(%r31)
	li %r3, 1023
	rldic %r3, %r3, 52, 2
	std %r3, 48(%r31)
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC174@toc@ha
	ld %r3, .LC174@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, 60(%r31)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB161_3
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
	addis %r3, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r4, 64(%r31)
	ld %r3, 48(%r31)
	bl __muldf3
	nop
	std %r3, 48(%r31)
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	lwz %r3, 60(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 60(%r31)
	lwz %r3, 60(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB161_5
# %bb.4:
	addis %r3, %r2, .LC174@toc@ha
	ld %r3, .LC174@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	ld %r4, 64(%r31)
	mr	%r3, %r4
	bl __muldf3
	nop
	std %r3, 64(%r31)
	b .LBB161_1
.LBB161_6:
	lwz %r3, 56(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB161_8
# %bb.7:
	addis %r3, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r4, 48(%r31)
	li %r3, 1023
	rldic %r3, %r3, 52, 2
	bl __divdf3
	nop
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	b .LBB161_9
.LBB161_8:
	ld %r3, 48(%r31)
	std %r3, 32(%r31)                       # 8-byte Folded Spill
	b .LBB161_9
.LBB161_9:
	ld %r3, 32(%r31)                        # 8-byte Folded Reload
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-.Lfunc_begin161
	.cfi_endproc
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	4
	.type	__powisf2,@function
.Lfunc_toc162:                          # @__powisf2
	.quad	.TOC.-.Lfunc_gep162
__powisf2:
.Lfunc_begin162:
	.cfi_startproc
.Lfunc_gep162:
	ld %r2, .Lfunc_toc162-.Lfunc_gep162(%r12)
	add %r2, %r2, %r12
.Lfunc_lep162:
	.localentry	__powisf2, .Lfunc_lep162-.Lfunc_gep162
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -80(%r1)
	std %r0, 96(%r1)
	.cfi_def_cfa_offset 80
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 48(%r31)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 48(%r31)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 68(%r31)
	stw %r3, 64(%r31)
	addis %r3, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 64(%r31)
	srwi %r3, %r3, 31
	stw %r3, 60(%r31)
	lis %r3, 16256
	stw %r3, 56(%r31)
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC175@toc@ha
	ld %r3, .LC175@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, 64(%r31)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB162_3
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
	addis %r3, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r4, 68(%r31)
	lwz %r3, 56(%r31)
	bl __mulsf3
	nop
	stw %r3, 56(%r31)
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	lwz %r3, 64(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 64(%r31)
	lwz %r3, 64(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB162_5
# %bb.4:
	addis %r3, %r2, .LC175@toc@ha
	ld %r3, .LC175@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	lwz %r4, 68(%r31)
	mr	%r3, %r4
	bl __mulsf3
	nop
	stw %r3, 68(%r31)
	b .LBB162_1
.LBB162_6:
	lwz %r3, 60(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB162_8
# %bb.7:
	addis %r3, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	lwz %r4, 56(%r31)
	lis %r3, 16256
	bl __divsf3
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB162_9
.LBB162_8:
	lwz %r3, 56(%r31)
	stw %r3, 44(%r31)                       # 4-byte Folded Spill
	b .LBB162_9
.LBB162_9:
	lwz %r4, 44(%r31)                       # 4-byte Folded Reload
                                        # implicit-def: $x3
	mr	%r3, %r4
	addi %r1, %r1, 80
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-.Lfunc_begin162
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	4
	.type	__ucmpdi2,@function
.Lfunc_toc163:                          # @__ucmpdi2
	.quad	.TOC.-.Lfunc_gep163
__ucmpdi2:
.Lfunc_begin163:
	.cfi_startproc
.Lfunc_gep163:
	ld %r2, .Lfunc_toc163-.Lfunc_gep163(%r12)
	add %r2, %r2, %r12
.Lfunc_lep163:
	.localentry	__ucmpdi2, .Lfunc_lep163-.Lfunc_gep163
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	addis %r3, %r2, .LC176@toc@ha
	ld %r3, .LC176@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	std %r3, -48(%r1)
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB163_2
# %bb.1:
	addis %r3, %r2, .LC176@toc@ha
	ld %r3, .LC176@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_2:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB163_4
# %bb.3:
	addis %r3, %r2, .LC176@toc@ha
	ld %r3, .LC176@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_4:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB163_6
# %bb.5:
	addis %r3, %r2, .LC176@toc@ha
	ld %r3, .LC176@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_6:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB163_8
# %bb.7:
	addis %r3, %r2, .LC176@toc@ha
	ld %r3, .LC176@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_8:
	li %r3, 1
	stw %r3, -12(%r1)
.LBB163_9:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-.Lfunc_begin163
	.cfi_endproc
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	4
	.type	__aeabi_ulcmp,@function
.Lfunc_toc164:                          # @__aeabi_ulcmp
	.quad	.TOC.-.Lfunc_gep164
__aeabi_ulcmp:
.Lfunc_begin164:
	.cfi_startproc
.Lfunc_gep164:
	ld %r2, .Lfunc_toc164-.Lfunc_gep164(%r12)
	add %r2, %r2, %r12
.Lfunc_lep164:
	.localentry	__aeabi_ulcmp, .Lfunc_lep164-.Lfunc_gep164
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -64(%r1)
	std %r0, 80(%r1)
	.cfi_def_cfa_offset 64
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 48(%r31)
	std %r4, 40(%r31)
	addis %r3, %r2, .LC177@toc@ha
	ld %r4, .LC177@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 48(%r31)
	ld %r4, 40(%r31)
	mr	%r5, %r2
	std %r5, 24(%r1)
	addis %r5, %r2, .LC178@toc@ha
	ld %r5, .LC178@toc@l(%r5)
	mr	%r12, %r5
	mtctr %r5
	bctrl
	ld 2, 24(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	addi %r3, %r3, -1
	extsw %r3, %r3
	addi %r1, %r1, 64
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-.Lfunc_begin164
	.cfi_endproc
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	4
	.type	__ucmpti2,@function
.Lfunc_toc165:                          # @__ucmpti2
	.quad	.TOC.-.Lfunc_gep165
__ucmpti2:
.Lfunc_begin165:
	.cfi_startproc
.Lfunc_gep165:
	ld %r2, .Lfunc_toc165-.Lfunc_gep165(%r12)
	add %r2, %r2, %r12
.Lfunc_lep165:
	.localentry	__ucmpti2, .Lfunc_lep165-.Lfunc_gep165
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	std %r6, -40(%r1)
	std %r5, -48(%r1)
	addis %r3, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -56(%r1)
	std %r3, -64(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -72(%r1)
	std %r3, -80(%r1)
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB165_2
# %bb.1:
	addis %r3, %r2, .LC179@toc@ha
	ld %r3, .LC179@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_2:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB165_4
# %bb.3:
	addis %r3, %r2, .LC179@toc@ha
	ld %r3, .LC179@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_4:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB165_6
# %bb.5:
	addis %r3, %r2, .LC179@toc@ha
	ld %r3, .LC179@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_6:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB165_8
# %bb.7:
	addis %r3, %r2, .LC179@toc@ha
	ld %r3, .LC179@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_8:
	li %r3, 1
	stw %r3, -12(%r1)
.LBB165_9:
	lwa %r3, -12(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-.Lfunc_begin165
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
	.type	.L__profc_make_ti,@object       # @__profc_make_ti
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_ti
	.p2align	3, 0x0
.L__profc_make_ti:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_make_ti, 64

	.type	.L__profc_make_tu,@object       # @__profc_make_tu
	.section	__llvm_prf_cnts,"awG",@progbits,__profc_make_tu
	.p2align	3, 0x0
.L__profc_make_tu:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_make_tu, 64

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
	.quad	-306081897096246147             # 0xfbc09422e3668c7d
	.quad	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.quad	.L__profc_memmove-.L__profd_memmove
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memmove, 64

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
	.quad	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.quad	1189690007454808                # 0x43a044a498458
	.quad	.L__profc_memccpy-.L__profd_memccpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memccpy, 64

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
	.quad	5708666158622859656             # 0x4f3941a01e026188
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_memchr-.L__profd_memchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memchr, 64

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
	.quad	-4679550853048924350            # 0xbf0ee54adfa48742
	.quad	4538045965                      # 0x10e7d160d
	.quad	.L__profc_memcmp-.L__profd_memcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memcmp, 64

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
	.quad	3893303423671325810             # 0x3607cad612bdd472
	.quad	17496                           # 0x4458
	.quad	.L__profc_memcpy-.L__profd_memcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memcpy, 64

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
	.quad	-548334422562728352             # 0xf863ecbf75079660
	.quad	9516882138200                   # 0x8a7d2611458
	.quad	.L__profc_memrchr-.L__profd_memrchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memrchr, 64

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
	.quad	-2741574704065975695            # 0xd9f3f85506f36a71
	.quad	17496                           # 0x4458
	.quad	.L__profc_memset-.L__profd_memset
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memset, 64

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
	.quad	4454833295779690053             # 0x3dd2bf47a087f645
	.quad	17496                           # 0x4458
	.quad	.L__profc_stpcpy-.L__profd_stpcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_stpcpy, 64

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
	.quad	5039208642683934005             # 0x45eedd8fc8411535
	.quad	70911064                        # 0x43a0458
	.quad	.L__profc_strchrnul-.L__profd_strchrnul
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strchrnul, 64

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
	.quad	-5671522429266412413            # 0xb14ab4664bea3c83
	.quad	13914928649304                  # 0xca7d2611458
	.quad	.L__profc_strchr-.L__profd_strchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strchr, 64

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
	.quad	1013198891307352868             # 0xe0f9b060331c324
	.quad	70906968                        # 0x439f458
	.quad	.L__profc_strcmp-.L__profd_strcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strcmp, 64

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
	.quad	2965136410638013299             # 0x292647db02a7d373
	.quad	17496                           # 0x4458
	.quad	.L__profc_strlen-.L__profd_strlen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strlen, 64

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
	.quad	-6058495834680104774            # 0xabebe6233cb568ba
	.quad	7207353986825238351             # 0x6405aa43cb36b74f
	.quad	.L__profc_strncmp-.L__profd_strncmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strncmp, 64

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
	.quad	-1619950660557759641            # 0xe984c77503cb9b67
	.quad	18193                           # 0x4711
	.quad	.L__profc_swab-.L__profd_swab
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_swab, 64

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
	.quad	-1429966999967671460            # 0xec27bc96fe655b5c
	.quad	1563                            # 0x61b
	.quad	.L__profc_isalpha-.L__profd_isalpha
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isalpha, 64

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
	.quad	-4792250000779744687            # 0xbd7e8203c4a86a51
	.quad	1562                            # 0x61a
	.quad	.L__profc_isascii-.L__profd_isascii
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isascii, 64

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
	.quad	2465200613623135234             # 0x223626e59b14fc02
	.quad	6354911                         # 0x60f7df
	.quad	.L__profc_isblank-.L__profd_isblank
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isblank, 64

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
	.quad	8897732069425577183             # 0x7b7b182cc8b67cdf
	.quad	6354655                         # 0x60f6df
	.quad	.L__profc_iscntrl-.L__profd_iscntrl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iscntrl, 64

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
	.quad	3483985654529092453             # 0x30599a7e6cc36b65
	.quad	1563                            # 0x61b
	.quad	.L__profc_isdigit-.L__profd_isdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isdigit, 64

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
	.quad	-127227288456547236             # 0xfe3bff7489cfb45c
	.quad	1563                            # 0x61b
	.quad	.L__profc_isgraph-.L__profd_isgraph
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isgraph, 64

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
	.quad	7501983819047161697             # 0x681c66894508cf61
	.quad	1563                            # 0x61b
	.quad	.L__profc_islower-.L__profd_islower
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_islower, 64

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
	.quad	-7275761640889424986            # 0x9b074d56145f63a6
	.quad	1563                            # 0x61b
	.quad	.L__profc_isprint-.L__profd_isprint
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isprint, 64

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
	.quad	9032360604355461395             # 0x7d59641d39d70113
	.quad	6354907                         # 0x60f7db
	.quad	.L__profc_isspace-.L__profd_isspace
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isspace, 64

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
	.quad	4174714232255583053             # 0x39ef9079c45c934d
	.quad	1563                            # 0x61b
	.quad	.L__profc_isupper-.L__profd_isupper
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_isupper, 64

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
	.quad	7000259844681188668             # 0x6125eb3d61a7453c
	.quad	106600273393371                 # 0x60f3cf6db6db
	.quad	.L__profc_iswcntrl-.L__profd_iswcntrl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswcntrl, 64

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
	.quad	8583753245428091608             # 0x771f9e1919590ad8
	.quad	1563                            # 0x61b
	.quad	.L__profc_iswdigit-.L__profd_iswdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswdigit, 64

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
	.quad	-719555261641779946             # 0xf603a04d49941516
	.quad	-2566119187471392224            # 0xdc635031e3742220
	.quad	.L__profc_iswprint-.L__profd_iswprint
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	10                              # 0xa
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswprint, 64

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
	.quad	624771703830219826              # 0x8aba28df0840c32
	.quad	6354651                         # 0x60f6db
	.quad	.L__profc_iswxdigit-.L__profd_iswxdigit
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_iswxdigit, 64

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
	.quad	4548159975983457080             # 0x3f1e4f66a624a338
	.quad	24                              # 0x18
	.quad	.L__profc_toascii-.L__profd_toascii
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_toascii, 64

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
	.quad	-3545869933759497925            # 0xceca8a150286f93b
	.quad	7369846577040809592             # 0x6646f46a29a55e78
	.quad	.L__profc_fdim-.L__profd_fdim
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fdim, 64

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
	.quad	-1547869627280940664            # 0xea84dcc6634da188
	.quad	7369846577040809592             # 0x6646f46a29a55e78
	.quad	.L__profc_fdimf-.L__profd_fdimf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fdimf, 64

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
	.quad	-2423801789625842334            # 0xde5ced1d3b654562
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmax-.L__profd_fmax
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmax, 64

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
	.quad	-5134209104457391460            # 0xb8bfa0058e3da29c
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmaxf-.L__profd_fmaxf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxf, 64

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
	.quad	-3138580006960380340            # 0xd471861cd1fbc64c
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmaxl-.L__profd_fmaxl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmaxl, 64

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
	.quad	965427315610335377              # 0xd65e3074b69b891
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fmin-.L__profd_fmin
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fmin, 64

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
	.quad	7710199602704325723             # 0x6b0021b0328c9c5b
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fminf-.L__profd_fminf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fminf, 64

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
	.quad	2487418697363824514             # 0x2285162058091f82
	.quad	3977842549302548673             # 0x373422b91b9cd8c1
	.quad	.L__profc_fminl-.L__profd_fminl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_fminl, 64

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
	.quad	-6158745991357604691            # 0xaa87bd26bb44dcad
	.quad	17496                           # 0x4458
	.quad	.L__profc_l64a-.L__profd_l64a
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_l64a, 64

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
	.quad	-2085616837322687880            # 0xe30e668959ceba78
	.quad	0                               # 0x0
	.quad	.L__profc_srand-.L__profd_srand
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_srand, 64

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
	.quad	7206085285791387956             # 0x6401286350c3d134
	.quad	24                              # 0x18
	.quad	.L__profc_rand-.L__profd_rand
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rand, 64

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
	.quad	-5080349535175464041            # 0xb97ef903bd0bab97
	.quad	45786906010769                  # 0x29a49844a491
	.quad	.L__profc_insque-.L__profd_insque
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_insque, 64

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
	.quad	-7214219538753974334            # 0x9be1f18d54e30fc2
	.quad	11043906705                     # 0x29244a491
	.quad	.L__profc_remque-.L__profd_remque
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_remque, 64

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
	.quad	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.quad	1245367951758424                # 0x46ca7d2611458
	.quad	.L__profc_lsearch-.L__profd_lsearch
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lsearch, 64

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
	.quad	-6350214982902907667            # 0xa7df811e30b57ced
	.quad	1245367951758424                # 0x46ca7d2611458
	.quad	.L__profc_lfind-.L__profd_lfind
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lfind, 64

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
	.quad	-238465663743841031             # 0xfcb0ccbe056bacf9
	.quad	99164                           # 0x1835c
	.quad	.L__profc_abs-.L__profd_abs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_abs, 64

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
	.quad	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atoi-.L__profd_atoi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atoi, 64

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
	.quad	8236175749196770609             # 0x724cc634ee8f6d31
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atol-.L__profd_atol
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atol, 64

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
	.quad	3653807471789013357             # 0x32b4ee8971a6f96d
	.quad	638206505195021                 # 0x244720809160d
	.quad	.L__profc_atoll-.L__profd_atoll
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_atoll, 64

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
	.quad	8750110911118262334             # 0x796ea3837a79403e
	.quad	-852542619444921222             # 0xf42b29012c1abc7a
	.quad	.L__profc_bsearch-.L__profd_bsearch
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch, 64

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
	.quad	1417097008757763708             # 0x13aa8a38ab466e7c
	.quad	1259382983000112142             # 0x117a3a2689e4bc0e
	.quad	.L__profc_bsearch_r-.L__profd_bsearch_r
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bsearch_r, 64

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
	.quad	5497092892325669176             # 0x4c4998dc58656938
	.quad	24                              # 0x18
	.quad	.L__profc_div-.L__profd_div
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_div, 64

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
	.quad	8946668544180752025             # 0x7c28f3a3b30e0e99
	.quad	99164                           # 0x1835c
	.quad	.L__profc_imaxabs-.L__profd_imaxabs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_imaxabs, 64

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
	.quad	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.quad	24                              # 0x18
	.quad	.L__profc_imaxdiv-.L__profd_imaxdiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_imaxdiv, 64

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
	.quad	-7118441263952323418            # 0x9d363762b3a39ca6
	.quad	99164                           # 0x1835c
	.quad	.L__profc_labs-.L__profd_labs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_labs, 64

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
	.quad	7149836041034155625             # 0x633951ff74204669
	.quad	24                              # 0x18
	.quad	.L__profc_ldiv-.L__profd_ldiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldiv, 64

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
	.quad	7684789126781046466             # 0x6aa5dafebb918ec2
	.quad	99164                           # 0x1835c
	.quad	.L__profc_llabs-.L__profd_llabs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_llabs, 64

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
	.quad	-5329156747615108898            # 0xb60b082c520680de
	.quad	24                              # 0x18
	.quad	.L__profc_lldiv-.L__profd_lldiv
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_lldiv, 64

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
	.quad	-2279810736707830048            # 0xe05c7c36c3687ee0
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_wcschr-.L__profd_wcschr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcschr, 64

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
	.quad	-3710185595167438704            # 0xcc82c5dbcd460890
	.quad	1188468208228060                # 0x438e7d160d6dc
	.quad	.L__profc_wcscmp-.L__profd_wcscmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcscmp, 64

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
	.quad	-8381368184235816342            # 0x8baf660af6dd0a6a
	.quad	9304                            # 0x2458
	.quad	.L__profc_wcscpy-.L__profd_wcscpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcscpy, 64

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
	.quad	3988408974905483574             # 0x3759acd4c838a136
	.quad	17496                           # 0x4458
	.quad	.L__profc_wcslen-.L__profd_wcslen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcslen, 64

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
	.quad	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.quad	6710790269995215964             # 0x5d218431fd366c5c
	.quad	.L__profc_wcsncmp-.L__profd_wcsncmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	10                              # 0xa
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wcsncmp, 64

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
	.quad	-150916099757221660             # 0xfde7d69b5b1558e4
	.quad	4538308109                      # 0x10e81160d
	.quad	.L__profc_wmemchr-.L__profd_wmemchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemchr, 64

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
	.quad	5386172057678365784             # 0x4abf86f3050dc458
	.quad	1189621521503964                # 0x439f45834d6dc
	.quad	.L__profc_wmemcmp-.L__profd_wmemcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	6                               # 0x6
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcmp, 64

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
	.quad	7326050423799855187             # 0x65ab5c0b9d30b853
	.quad	9304                            # 0x2458
	.quad	.L__profc_wmemcpy-.L__profd_wmemcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemcpy, 64

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
	.quad	-4659407939446788683            # 0xbf56752a69a3adb5
	.quad	-1500206092990891740            # 0xeb2e3281c166b924
	.quad	.L__profc_wmemmove-.L__profd_wmemmove
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemmove, 64

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
	.quad	-8291142148468431281            # 0x8ceff224f245264f
	.quad	9304                            # 0x2458
	.quad	.L__profc_wmemset-.L__profd_wmemset
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_wmemset, 64

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
	.quad	-8407331144368071880            # 0x8b5328de3edcdb38
	.quad	5234109875325077019             # 0x48a34b333a1d861b
	.quad	.L__profc_bcopy-.L__profd_bcopy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bcopy, 64

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
	.quad	4714666614722164144             # 0x416ddc4e84e875b0
	.quad	24                              # 0x18
	.quad	.L__profc_rotl64-.L__profd_rotl64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl64, 64

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
	.quad	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.quad	24                              # 0x18
	.quad	.L__profc_rotr64-.L__profd_rotr64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr64, 64

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
	.quad	6417704780586152324             # 0x5910447ed829f184
	.quad	24                              # 0x18
	.quad	.L__profc_rotl32-.L__profd_rotl32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl32, 64

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
	.quad	-5668908084823466940            # 0xb153fe21cbc1dc44
	.quad	24                              # 0x18
	.quad	.L__profc_rotr32-.L__profd_rotr32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr32, 64

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
	.quad	-3686623714176605670            # 0xccd67b43b7f8e21a
	.quad	24                              # 0x18
	.quad	.L__profc_rotl_sz-.L__profd_rotl_sz
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl_sz, 64

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
	.quad	3415499704483829380             # 0x2f664ae29835d684
	.quad	24                              # 0x18
	.quad	.L__profc_rotr_sz-.L__profd_rotr_sz
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr_sz, 64

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
	.quad	7327166975465201445             # 0x65af538b0e939f25
	.quad	24                              # 0x18
	.quad	.L__profc_rotl16-.L__profd_rotl16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl16, 64

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
	.quad	5274763753728838268             # 0x4933b9afe71d0a7c
	.quad	24                              # 0x18
	.quad	.L__profc_rotr16-.L__profd_rotr16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr16, 64

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
	.quad	4408423234350850624             # 0x3d2ddd93270fa240
	.quad	24                              # 0x18
	.quad	.L__profc_rotl8-.L__profd_rotl8
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotl8, 64

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
	.quad	-6535801773217052896            # 0xa54c2aea59078720
	.quad	24                              # 0x18
	.quad	.L__profc_rotr8-.L__profd_rotr8
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_rotr8, 64

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
	.quad	-8870828063230114195            # 0x84e47ce04b9a466d
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_16-.L__profd_bswap_16
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_16, 64

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
	.quad	7304833549461180700             # 0x655ffb691afd511c
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_32-.L__profd_bswap_32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_32, 64

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
	.quad	2873856403134720854             # 0x27e1fd2c1c53ab56
	.quad	24                              # 0x18
	.quad	.L__profc_bswap_64-.L__profd_bswap_64
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_bswap_64, 64

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
	.quad	9222170723057548859             # 0x7ffbbb6955da3e3b
	.quad	19458657686616                  # 0x11b292611458
	.quad	.L__profc_ffs-.L__profd_ffs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ffs, 64

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
	.quad	65216057573358521               # 0xe7b1a8a94fbbb9
	.quad	2952352215704664                # 0xa7d261111a458
	.quad	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_libiberty_ffs, 64

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
	.quad	6535010584615638394             # 0x5ab10580b36ed57a
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinff-.L__profd_gl_isinff
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinff, 64

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
	.quad	-9165907066207032774            # 0x80cc28161a7caa3a
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfd, 64

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
	.quad	4731159788068304891             # 0x41a874c2af6c77fb
	.quad	6354652                         # 0x60f6dc
	.quad	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_gl_isinfl, 64

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
	.quad	-3858125999267273921            # 0xca752ed84af9a33f
	.quad	0                               # 0x0
	.quad	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd__Qp_itoq, 64

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
	.quad	-2560632889718296859            # 0xdc76cdf42028aee5
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexpf-.L__profd_ldexpf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpf, 64

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
	.quad	-240549059163932437             # 0xfca965e7b97ab8eb
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexp-.L__profd_ldexp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexp, 64

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
	.quad	-5097262943286299417            # 0xb942e25c0aa874e7
	.quad	-2048372819454505383            # 0xe392b7c600d94e59
	.quad	.L__profc_ldexpl-.L__profd_ldexpl
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	8                               # 0x8
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_ldexpl, 64

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
	.quad	-8368025376422999318            # 0x8bdecd417eda4aea
	.quad	1164376                         # 0x11c458
	.quad	.L__profc_memxor-.L__profd_memxor
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memxor, 64

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
	.quad	-3582483947543505905            # 0xce4875d49d21540f
	.quad	76123606467028056               # 0x10e72044a7d2458
	.quad	.L__profc_strncat-.L__profd_strncat
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strncat, 64

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
	.quad	517590790318988421              # 0x72eda14dbfa1c85
	.quad	4537021528                      # 0x10e6d7458
	.quad	.L__profc_strnlen-.L__profd_strnlen
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strnlen, 64

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
	.quad	-6867074718569872870            # 0xa0b33fed4193c21a
	.quad	-4444802448421279214            # 0xc250e3b905102a12
	.quad	.L__profc_strpbrk-.L__profd_strpbrk
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strpbrk, 64

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
	.quad	5307837722043833871             # 0x49a93a493bd75e0f
	.quad	217420731480                    # 0x329f491458
	.quad	.L__profc_strrchr-.L__profd_strrchr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strrchr, 64

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
	.quad	3560562421867190603             # 0x3169a8a873ff994b
	.quad	-7798267876297541628            # 0x93c6fcaef9f1f804
	.quad	.L__profc_strstr-.L__profd_strstr
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_strstr, 64

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
	.quad	-9076603418344796971            # 0x82096d47ea764cd5
	.quad	4200982705386070127             # 0x3a4ce3834618a06f
	.quad	.L__profc_copysign-.L__profd_copysign
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_copysign, 64

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
	.quad	-7485463843177831536            # 0x981e4a4b585ae390
	.quad	5508063777036862020             # 0x4c7092d27e7a8244
	.quad	.L__profc_memmem-.L__profd_memmem
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_memmem, 64

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
	.quad	-722907995699078206             # 0xf5f7b7020f111bc2
	.quad	24                              # 0x18
	.quad	.L__profc_mempcpy-.L__profd_mempcpy
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_mempcpy, 64

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
	.quad	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.quad	-2373782428686282824            # 0xdf0ea1753c170fb8
	.quad	.L__profc_frexp-.L__profd_frexp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_frexp, 64

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
	.quad	3987271357918321816             # 0x3755a22cafcf9c98
	.quad	2320045144                      # 0x8a491458
	.quad	.L__profc___muldi3-.L__profd___muldi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3, 64

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
	.quad	4670832108574850701             # 0x40d2210e3d17be8d
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd_udivmodsi4, 64

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
	.quad	-7858138078702729622            # 0x92f2490d36f4066a
	.quad	187824153796641880              # 0x29b49129f498458
	.quad	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbqi2, 64

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
	.quad	-1533375985051215657            # 0xeab85aaa6fe858d7
	.quad	187824153796641880              # 0x29b49129f498458
	.quad	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clrsbdi2, 64

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
	.quad	5127670123023436031             # 0x472924cf303208ff
	.quad	2320045144                      # 0x8a491458
	.quad	.L__profc___mulsi3-.L__profd___mulsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3, 64

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
	.quad	1458405851566781960             # 0x143d4c6520fd3608
	.quad	-6411111704588201945            # 0xa70727df48abd027
	.quad	.L__profc___cmovd-.L__profd___cmovd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovd, 64

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
	.quad	-1240290101804783090            # 0xeec99ab9477e2a0e
	.quad	3130117398598530023             # 0x2b706930a0bc33e7
	.quad	.L__profc___cmovh-.L__profd___cmovh
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovh, 64

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
	.quad	-6631700889337257300            # 0xa3f7772d6a6922ac
	.quad	-6411111704588201945            # 0xa70727df48abd027
	.quad	.L__profc___cmovw-.L__profd___cmovw
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmovw, 64

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
	.quad	4130297501716739761             # 0x3951c3b1ce8276b1
	.quad	24                              # 0x18
	.quad	.L__profc___modi-.L__profd___modi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___modi, 64

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
	.quad	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.quad	24                              # 0x18
	.quad	.L__profc___uitod-.L__profd___uitod
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___uitod, 64

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
	.quad	2684105554667313846             # 0x253fdbc7ed991ab6
	.quad	24                              # 0x18
	.quad	.L__profc___uitof-.L__profd___uitof
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___uitof, 64

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
	.quad	3995277539005434566             # 0x377213c0fb840ac6
	.quad	24                              # 0x18
	.quad	.L__profc___ulltod-.L__profd___ulltod
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ulltod, 64

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
	.quad	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.quad	24                              # 0x18
	.quad	.L__profc___ulltof-.L__profd___ulltof
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ulltof, 64

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
	.quad	6154071623751134202             # 0x5567a7893fff6bfa
	.quad	24                              # 0x18
	.quad	.L__profc___umodi-.L__profd___umodi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___umodi, 64

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
	.quad	-9221703320275173474            # 0x8005edb05af53f9e
	.quad	19458657162328                  # 0x11b292591458
	.quad	.L__profc___clzhi2-.L__profd___clzhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzhi2, 64

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
	.quad	-1569202989881991136            # 0xea391231d79a6020
	.quad	19458657162328                  # 0x11b292591458
	.quad	.L__profc___ctzhi2-.L__profd___ctzhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzhi2, 64

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
	.quad	-7800469359816066749            # 0x93bf2a7226d83943
	.quad	11245552728                     # 0x29e498458
	.quad	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	2                               # 0x2
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___fixunssfsi, 64

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
	.quad	1203893203113466329             # 0x10b5167d5f15d9d9
	.quad	304041497688                    # 0x46ca491458
	.quad	.L__profc___parityhi2-.L__profd___parityhi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___parityhi2, 64

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
	.quad	3943219574947026310             # 0x36b9214fb4159586
	.quad	304041497688                    # 0x46ca491458
	.quad	.L__profc___popcounthi2-.L__profd___popcounthi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcounthi2, 64

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
	.quad	-3976353352410196972            # 0xc8d127b190281414
	.quad	171971253336                    # 0x280a491458
	.quad	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_iq2000, 64

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
	.quad	2775651425054705869             # 0x26851843dab148cd
	.quad	-6210685127595396365            # 0xa9cf36c835dff2f3
	.quad	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulsi3_lm32, 64

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
	.quad	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4, 64

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
	.quad	6399771733438470391             # 0x58d08e7bef2f98f7
	.quad	1352614535537600836             # 0x12c573c0ecbfa944
	.quad	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpf, 64

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
	.quad	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.quad	1352614535537600836             # 0x12c573c0ecbfa944
	.quad	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_cmpd, 64

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
	.quad	-359228324547500507             # 0xfb03c3bdfa166625
	.quad	24                              # 0x18
	.quad	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpysll, 64

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
	.quad	6629829186354316853             # 0x5c01e284c62a8635
	.quad	24                              # 0x18
	.quad	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mspabi_mpyull, 64

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
	.quad	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.quad	-5374843387156864121            # 0xb568b86aa1286387
	.quad	.L__profc___mulhi3-.L__profd___mulhi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	7                               # 0x7
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulhi3, 64

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
	.quad	5631431475223784324             # 0x4e26dd1711aaeb84
	.quad	510575534943447681              # 0x715edbe6f4f2a81
	.quad	.L__profc___divsi3-.L__profd___divsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___divsi3, 64

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
	.quad	-8995696579390192574            # 0x8328dd9f4e404442
	.quad	2121116644152358499             # 0x1d6fb85985deb663
	.quad	.L__profc___modsi3-.L__profd___modsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	4                               # 0x4
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___modsi3, 64

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
	.quad	2241631039268115874             # 0x1f1bdf8db510d5a2
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodhi4, 64

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
	.quad	-1484205535638993157            # 0xeb670aedd291c6fb
	.quad	842736872197088594              # 0xbb200b8626e6552
	.quad	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	9                               # 0x9
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___udivmodsi4_libgcc, 64

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
	.quad	3719210884952086607             # 0x339d4a983a55d84f
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashldi3-.L__profd___ashldi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashldi3, 64

	.type	.L__profc___ashlti3,@object     # @__profc___ashlti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashlti3
	.p2align	3, 0x0
.L__profc___ashlti3:
	.space	24
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashlti3, 64

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
	.quad	-1855717345837424946            # 0xe63f2ae7edd45ece
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___ashrdi3-.L__profd___ashrdi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashrdi3, 64

	.type	.L__profc___ashrti3,@object     # @__profc___ashrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ashrti3
	.p2align	3, 0x0
.L__profc___ashrti3:
	.space	24
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ashrti3, 64

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
	.quad	9149352740892555196             # 0x7ef907d7ada5b7bc
	.quad	24                              # 0x18
	.quad	.L__profc___bswapdi2-.L__profd___bswapdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___bswapdi2, 64

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
	.quad	-3374945843358245974            # 0xd129c8a2fe735baa
	.quad	24                              # 0x18
	.quad	.L__profc___bswapsi2-.L__profd___bswapsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___bswapsi2, 64

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
	.quad	1382681549752930563             # 0x1330458b32829103
	.quad	33814345247                     # 0x7df7df61f
	.quad	.L__profc___clzsi2-.L__profd___clzsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzsi2, 64

	.type	.L__profc___clzti2,@object      # @__profc___clzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___clzti2
	.p2align	3, 0x0
.L__profc___clzti2:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___clzti2, 64

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
	.quad	-5499644794300757496            # 0xb3ad5632ace08a08
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___cmpdi2-.L__profd___cmpdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmpdi2, 64

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
	.quad	7067747365298492588             # 0x6215aec83ed1d4ac
	.quad	24                              # 0x18
	.quad	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_lcmp, 64

	.type	.L__profc___cmpti2,@object      # @__profc___cmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___cmpti2
	.p2align	3, 0x0
.L__profc___cmpti2:
	.space	40
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___cmpti2, 64

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
	.quad	-5501728155980453225            # 0xb3a5ef643c052a97
	.quad	33814345247                     # 0x7df7df61f
	.quad	.L__profc___ctzsi2-.L__profd___ctzsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzsi2, 64

	.type	.L__profc___ctzti2,@object      # @__profc___ctzti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ctzti2
	.p2align	3, 0x0
.L__profc___ctzti2:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ctzti2, 64

	.type	.L__profc___ffsti2,@object      # @__profc___ffsti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ffsti2
	.p2align	3, 0x0
.L__profc___ffsti2:
	.space	24
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ffsti2, 64

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
	.quad	10441766047587925               # 0x2518bb1c181e55
	.quad	185294818348438616              # 0x2924ca7d2611458
	.quad	.L__profc___lshrdi3-.L__profd___lshrdi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	3                               # 0x3
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___lshrdi3, 64

	.type	.L__profc___lshrti3,@object     # @__profc___lshrti3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___lshrti3
	.p2align	3, 0x0
.L__profc___lshrti3:
	.space	24
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___lshrti3, 64

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
	.quad	4756674255824047264             # 0x42031a08a2a34ca0
	.quad	24                              # 0x18
	.quad	.L__profc___muldsi3-.L__profd___muldsi3
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldsi3, 64

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
	.quad	-737717619142303851             # 0xf5c319bbe679df95
	.quad	24                              # 0x18
	.quad	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___muldi3_compiler_rt, 64

	.type	.L__profc___mulddi3,@object     # @__profc___mulddi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___mulddi3
	.p2align	3, 0x0
.L__profc___mulddi3:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___mulddi3, 64

	.type	.L__profc___multi3,@object      # @__profc___multi3
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___multi3
	.p2align	3, 0x0
.L__profc___multi3:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___multi3, 64

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
	.quad	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.quad	24                              # 0x18
	.quad	.L__profc___negdi2-.L__profd___negdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___negdi2, 64

	.type	.L__profc___negti2,@object      # @__profc___negti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___negti2
	.p2align	3, 0x0
.L__profc___negti2:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___negti2, 64

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
	.quad	-5102883611502574357            # 0xb92eea643e3a04eb
	.quad	24                              # 0x18
	.quad	.L__profc___paritydi2-.L__profd___paritydi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___paritydi2, 64

	.type	.L__profc___parityti2,@object   # @__profc___parityti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___parityti2
	.p2align	3, 0x0
.L__profc___parityti2:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___parityti2, 64

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
	.quad	8495812714014201054             # 0x75e730a6911054de
	.quad	24                              # 0x18
	.quad	.L__profc___paritysi2-.L__profd___paritysi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___paritysi2, 64

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
	.quad	4342496508124198892             # 0x3c43a5910d1df7ec
	.quad	24                              # 0x18
	.quad	.L__profc___popcountdi2-.L__profd___popcountdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountdi2, 64

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
	.quad	-2149276146439341705            # 0xe22c3cbb6f433977
	.quad	24                              # 0x18
	.quad	.L__profc___popcountsi2-.L__profd___popcountsi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountsi2, 64

	.type	.L__profc___popcountti2,@object # @__profc___popcountti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___popcountti2
	.p2align	3, 0x0
.L__profc___popcountti2:
	.space	8
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___popcountti2, 64

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
	.quad	-1752541073601039051            # 0xe7adb92dcdba7535
	.quad	-4868838055443737378            # 0xbc6e6995b45f54de
	.quad	.L__profc___powidf2-.L__profd___powidf2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___powidf2, 64

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
	.quad	-3807360110918407144            # 0xcb298a26c0b76c18
	.quad	-4868838055443737378            # 0xbc6e6995b45f54de
	.quad	.L__profc___powisf2-.L__profd___powisf2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___powisf2, 64

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
	.quad	-2044349310657886323            # 0xe3a10322256c078d
	.quad	-7406659272189927428            # 0x993642a254c41ffc
	.quad	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	5                               # 0x5
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpdi2, 64

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
	.quad	448670595368434735              # 0x639ff8782193c2f
	.quad	24                              # 0x18
	.quad	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.quad	0                               # 0x0
	.quad	0
	.quad	0
	.long	1                               # 0x1
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___aeabi_ulcmp, 64

	.type	.L__profc___ucmpti2,@object     # @__profc___ucmpti2
	.section	__llvm_prf_cnts,"awG",@progbits,__profc___ucmpti2
	.p2align	3, 0x0
.L__profc___ucmpti2:
	.space	40
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
	.space	6
	.space	2
	.long	0                               # 0x0
	.size	.L__profd___ucmpti2, 64

	.type	.L__llvm_prf_nm,@object         # @__llvm_prf_nm
	.section	__llvm_prf_names,"aR",@progbits,unique,1
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
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
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
	.gnu_attribute 4, 5
	.section	.toc,"aw",@progbits
.LC0:
	.tc .L__profc_make_ti[TC],.L__profc_make_ti
.LC1:
	.tc .L__profc_make_tu[TC],.L__profc_make_tu
.LC2:
	.tc .L__profc_memmove[TC],.L__profc_memmove
.LC3:
	.tc .L__profc_memccpy[TC],.L__profc_memccpy
.LC4:
	.tc .L__profc_memchr[TC],.L__profc_memchr
.LC5:
	.tc .L__profc_memcmp[TC],.L__profc_memcmp
.LC6:
	.tc .L__profc_memcpy[TC],.L__profc_memcpy
.LC7:
	.tc .L__profc_memrchr[TC],.L__profc_memrchr
.LC8:
	.tc .L__profc_memset[TC],.L__profc_memset
.LC9:
	.tc .L__profc_stpcpy[TC],.L__profc_stpcpy
.LC10:
	.tc .L__profc_strchrnul[TC],.L__profc_strchrnul
.LC11:
	.tc .L__profc_strchr[TC],.L__profc_strchr
.LC12:
	.tc .L__profc_strcmp[TC],.L__profc_strcmp
.LC13:
	.tc .L__profc_strlen[TC],.L__profc_strlen
.LC14:
	.tc .L__profc_strncmp[TC],.L__profc_strncmp
.LC15:
	.tc .L__profc_swab[TC],.L__profc_swab
.LC16:
	.tc .L__profc_isalpha[TC],.L__profc_isalpha
.LC17:
	.tc .L__profc_isascii[TC],.L__profc_isascii
.LC18:
	.tc .L__profc_isblank[TC],.L__profc_isblank
.LC19:
	.tc .L__profc_iscntrl[TC],.L__profc_iscntrl
.LC20:
	.tc .L__profc_isdigit[TC],.L__profc_isdigit
.LC21:
	.tc .L__profc_isgraph[TC],.L__profc_isgraph
.LC22:
	.tc .L__profc_islower[TC],.L__profc_islower
.LC23:
	.tc .L__profc_isprint[TC],.L__profc_isprint
.LC24:
	.tc .L__profc_isspace[TC],.L__profc_isspace
.LC25:
	.tc .L__profc_isupper[TC],.L__profc_isupper
.LC26:
	.tc .L__profc_iswcntrl[TC],.L__profc_iswcntrl
.LC27:
	.tc .L__profc_iswdigit[TC],.L__profc_iswdigit
.LC28:
	.tc .L__profc_iswprint[TC],.L__profc_iswprint
.LC29:
	.tc .L__profc_iswxdigit[TC],.L__profc_iswxdigit
.LC30:
	.tc .L__profc_toascii[TC],.L__profc_toascii
.LC31:
	.tc .L__profc_fdim[TC],.L__profc_fdim
.LC32:
	.tc .L__profc_fdimf[TC],.L__profc_fdimf
.LC33:
	.tc .L__profc_fmax[TC],.L__profc_fmax
.LC34:
	.tc .L__profc_fmaxf[TC],.L__profc_fmaxf
.LC35:
	.tc .L__profc_fmaxl[TC],.L__profc_fmaxl
.LC36:
	.tc .L__profc_fmin[TC],.L__profc_fmin
.LC37:
	.tc .L__profc_fminf[TC],.L__profc_fminf
.LC38:
	.tc .L__profc_fminl[TC],.L__profc_fminl
.LC39:
	.tc .L__profc_l64a[TC],.L__profc_l64a
.LC40:
	.tc l64a.s[TC],l64a.s
.LC41:
	.tc digits[TC],digits
.LC42:
	.tc .L__profc_srand[TC],.L__profc_srand
.LC43:
	.tc seed[TC],seed
.LC44:
	.tc .L__profc_rand[TC],.L__profc_rand
.LC45:
	.tc .L__profc_insque[TC],.L__profc_insque
.LC46:
	.tc .L__profc_remque[TC],.L__profc_remque
.LC47:
	.tc .L__profc_lsearch[TC],.L__profc_lsearch
.LC48:
	.tc .L__profc_lfind[TC],.L__profc_lfind
.LC49:
	.tc .L__profc_abs[TC],.L__profc_abs
.LC50:
	.tc .L__profc_atoi[TC],.L__profc_atoi
.LC51:
	.tc isspace[TC],isspace
.LC52:
	.tc isdigit[TC],isdigit
.LC53:
	.tc .L__profc_atol[TC],.L__profc_atol
.LC54:
	.tc .L__profc_atoll[TC],.L__profc_atoll
.LC55:
	.tc .L__profc_bsearch[TC],.L__profc_bsearch
.LC56:
	.tc .L__profc_bsearch_r[TC],.L__profc_bsearch_r
.LC57:
	.tc .L__profc_div[TC],.L__profc_div
.LC58:
	.tc .L__profc_imaxabs[TC],.L__profc_imaxabs
.LC59:
	.tc .L__profc_imaxdiv[TC],.L__profc_imaxdiv
.LC60:
	.tc .L__profc_labs[TC],.L__profc_labs
.LC61:
	.tc .L__profc_ldiv[TC],.L__profc_ldiv
.LC62:
	.tc .L__profc_llabs[TC],.L__profc_llabs
.LC63:
	.tc .L__profc_lldiv[TC],.L__profc_lldiv
.LC64:
	.tc .L__profc_wcschr[TC],.L__profc_wcschr
.LC65:
	.tc .L__profc_wcscmp[TC],.L__profc_wcscmp
.LC66:
	.tc .L__profc_wcscpy[TC],.L__profc_wcscpy
.LC67:
	.tc .L__profc_wcslen[TC],.L__profc_wcslen
.LC68:
	.tc .L__profc_wcsncmp[TC],.L__profc_wcsncmp
.LC69:
	.tc .L__profc_wmemchr[TC],.L__profc_wmemchr
.LC70:
	.tc .L__profc_wmemcmp[TC],.L__profc_wmemcmp
.LC71:
	.tc .L__profc_wmemcpy[TC],.L__profc_wmemcpy
.LC72:
	.tc .L__profc_wmemmove[TC],.L__profc_wmemmove
.LC73:
	.tc .L__profc_wmemset[TC],.L__profc_wmemset
.LC74:
	.tc .L__profc_bcopy[TC],.L__profc_bcopy
.LC75:
	.tc .L__profc_rotl64[TC],.L__profc_rotl64
.LC76:
	.tc .L__profc_rotr64[TC],.L__profc_rotr64
.LC77:
	.tc .L__profc_rotl32[TC],.L__profc_rotl32
.LC78:
	.tc .L__profc_rotr32[TC],.L__profc_rotr32
.LC79:
	.tc .L__profc_rotl_sz[TC],.L__profc_rotl_sz
.LC80:
	.tc .L__profc_rotr_sz[TC],.L__profc_rotr_sz
.LC81:
	.tc .L__profc_rotl16[TC],.L__profc_rotl16
.LC82:
	.tc .L__profc_rotr16[TC],.L__profc_rotr16
.LC83:
	.tc .L__profc_rotl8[TC],.L__profc_rotl8
.LC84:
	.tc .L__profc_rotr8[TC],.L__profc_rotr8
.LC85:
	.tc .L__profc_bswap_16[TC],.L__profc_bswap_16
.LC86:
	.tc .L__profc_bswap_32[TC],.L__profc_bswap_32
.LC87:
	.tc .L__profc_bswap_64[TC],.L__profc_bswap_64
.LC88:
	.tc .L__profc_ffs[TC],.L__profc_ffs
.LC89:
	.tc .L__profc_libiberty_ffs[TC],.L__profc_libiberty_ffs
.LC90:
	.tc .L__profc_gl_isinff[TC],.L__profc_gl_isinff
.LC91:
	.tc .L__profc_gl_isinfd[TC],.L__profc_gl_isinfd
.LC92:
	.tc .L__profc_gl_isinfl[TC],.L__profc_gl_isinfl
.LC93:
	.tc .L__profc__Qp_itoq[TC],.L__profc__Qp_itoq
.LC94:
	.tc .L__profc_ldexpf[TC],.L__profc_ldexpf
.LC95:
	.tc .L__profc_ldexp[TC],.L__profc_ldexp
.LC96:
	.tc .L__profc_ldexpl[TC],.L__profc_ldexpl
.LC97:
	.tc .L__profc_memxor[TC],.L__profc_memxor
.LC98:
	.tc .L__profc_strncat[TC],.L__profc_strncat
.LC99:
	.tc strlen[TC],strlen
.LC100:
	.tc .L__profc_strnlen[TC],.L__profc_strnlen
.LC101:
	.tc .L__profc_strpbrk[TC],.L__profc_strpbrk
.LC102:
	.tc .L__profc_strrchr[TC],.L__profc_strrchr
.LC103:
	.tc .L__profc_strstr[TC],.L__profc_strstr
.LC104:
	.tc strchr[TC],strchr
.LC105:
	.tc strncmp[TC],strncmp
.LC106:
	.tc .L__profc_copysign[TC],.L__profc_copysign
.LC107:
	.tc .L__profc_memmem[TC],.L__profc_memmem
.LC108:
	.tc memcmp[TC],memcmp
.LC109:
	.tc .L__profc_mempcpy[TC],.L__profc_mempcpy
.LC110:
	.tc .L__profc_frexp[TC],.L__profc_frexp
.LC111:
	.tc .L__profc___muldi3[TC],.L__profc___muldi3
.LC112:
	.tc .L__profc_udivmodsi4[TC],.L__profc_udivmodsi4
.LC113:
	.tc .L__profc___clrsbqi2[TC],.L__profc___clrsbqi2
.LC114:
	.tc .L__profc___clrsbdi2[TC],.L__profc___clrsbdi2
.LC115:
	.tc .L__profc___mulsi3[TC],.L__profc___mulsi3
.LC116:
	.tc .L__profc___cmovd[TC],.L__profc___cmovd
.LC117:
	.tc .L__profc___cmovh[TC],.L__profc___cmovh
.LC118:
	.tc .L__profc___cmovw[TC],.L__profc___cmovw
.LC119:
	.tc .L__profc___modi[TC],.L__profc___modi
.LC120:
	.tc .L__profc___uitod[TC],.L__profc___uitod
.LC121:
	.tc .L__profc___uitof[TC],.L__profc___uitof
.LC122:
	.tc .L__profc___ulltod[TC],.L__profc___ulltod
.LC123:
	.tc .L__profc___ulltof[TC],.L__profc___ulltof
.LC124:
	.tc .L__profc___umodi[TC],.L__profc___umodi
.LC125:
	.tc .L__profc___clzhi2[TC],.L__profc___clzhi2
.LC126:
	.tc .L__profc___ctzhi2[TC],.L__profc___ctzhi2
.LC127:
	.tc .L__profc___fixunssfsi[TC],.L__profc___fixunssfsi
.LC128:
	.tc .L__profc___parityhi2[TC],.L__profc___parityhi2
.LC129:
	.tc .L__profc___popcounthi2[TC],.L__profc___popcounthi2
.LC130:
	.tc .L__profc___mulsi3_iq2000[TC],.L__profc___mulsi3_iq2000
.LC131:
	.tc .L__profc___mulsi3_lm32[TC],.L__profc___mulsi3_lm32
.LC132:
	.tc .L__profc___udivmodsi4[TC],.L__profc___udivmodsi4
.LC133:
	.tc .L__profc___mspabi_cmpf[TC],.L__profc___mspabi_cmpf
.LC134:
	.tc .L__profc___mspabi_cmpd[TC],.L__profc___mspabi_cmpd
.LC135:
	.tc .L__profc___mspabi_mpysll[TC],.L__profc___mspabi_mpysll
.LC136:
	.tc .L__profc___mspabi_mpyull[TC],.L__profc___mspabi_mpyull
.LC137:
	.tc .L__profc___mulhi3[TC],.L__profc___mulhi3
.LC138:
	.tc .L__profc___divsi3[TC],.L__profc___divsi3
.LC139:
	.tc __udivmodsi4[TC],__udivmodsi4
.LC140:
	.tc .L__profc___modsi3[TC],.L__profc___modsi3
.LC141:
	.tc .L__profc___udivmodhi4[TC],.L__profc___udivmodhi4
.LC142:
	.tc .L__profc___udivmodsi4_libgcc[TC],.L__profc___udivmodsi4_libgcc
.LC143:
	.tc .L__profc___ashldi3[TC],.L__profc___ashldi3
.LC144:
	.tc .L__profc___ashlti3[TC],.L__profc___ashlti3
.LC145:
	.tc .L__profc___ashrdi3[TC],.L__profc___ashrdi3
.LC146:
	.tc .L__profc___ashrti3[TC],.L__profc___ashrti3
.LC147:
	.tc .L__profc___bswapdi2[TC],.L__profc___bswapdi2
.LC148:
	.tc .L__profc___bswapsi2[TC],.L__profc___bswapsi2
.LC149:
	.tc .L__profc___clzsi2[TC],.L__profc___clzsi2
.LC150:
	.tc .L__profc___clzti2[TC],.L__profc___clzti2
.LC151:
	.tc .L__profc___cmpdi2[TC],.L__profc___cmpdi2
.LC152:
	.tc .L__profc___aeabi_lcmp[TC],.L__profc___aeabi_lcmp
.LC153:
	.tc __cmpdi2[TC],__cmpdi2
.LC154:
	.tc .L__profc___cmpti2[TC],.L__profc___cmpti2
.LC155:
	.tc .L__profc___ctzsi2[TC],.L__profc___ctzsi2
.LC156:
	.tc .L__profc___ctzti2[TC],.L__profc___ctzti2
.LC157:
	.tc .L__profc___ffsti2[TC],.L__profc___ffsti2
.LC158:
	.tc .L__profc___lshrdi3[TC],.L__profc___lshrdi3
.LC159:
	.tc .L__profc___lshrti3[TC],.L__profc___lshrti3
.LC160:
	.tc .L__profc___muldsi3[TC],.L__profc___muldsi3
.LC161:
	.tc .L__profc___muldi3_compiler_rt[TC],.L__profc___muldi3_compiler_rt
.LC162:
	.tc __muldsi3[TC],__muldsi3
.LC163:
	.tc .L__profc___mulddi3[TC],.L__profc___mulddi3
.LC164:
	.tc .L__profc___multi3[TC],.L__profc___multi3
.LC165:
	.tc __mulddi3[TC],__mulddi3
.LC166:
	.tc .L__profc___negdi2[TC],.L__profc___negdi2
.LC167:
	.tc .L__profc___negti2[TC],.L__profc___negti2
.LC168:
	.tc .L__profc___paritydi2[TC],.L__profc___paritydi2
.LC169:
	.tc .L__profc___parityti2[TC],.L__profc___parityti2
.LC170:
	.tc .L__profc___paritysi2[TC],.L__profc___paritysi2
.LC171:
	.tc .L__profc___popcountdi2[TC],.L__profc___popcountdi2
.LC172:
	.tc .L__profc___popcountsi2[TC],.L__profc___popcountsi2
.LC173:
	.tc .L__profc___popcountti2[TC],.L__profc___popcountti2
.LC174:
	.tc .L__profc___powidf2[TC],.L__profc___powidf2
.LC175:
	.tc .L__profc___powisf2[TC],.L__profc___powisf2
.LC176:
	.tc .L__profc___ucmpdi2[TC],.L__profc___ucmpdi2
.LC177:
	.tc .L__profc___aeabi_ulcmp[TC],.L__profc___aeabi_ulcmp
.LC178:
	.tc __ucmpdi2[TC],__ucmpdi2
.LC179:
	.tc .L__profc___ucmpti2[TC],.L__profc___ucmpti2
