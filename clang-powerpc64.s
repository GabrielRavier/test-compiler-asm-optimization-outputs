	.text
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	2
	.type	make_ti,@function
	.section	.opd,"aw",@progbits
make_ti:                                # @make_ti
	.p2align	3, 0x0
	.quad	.Lfunc_begin0
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC0@toc@ha
	ld %r6, .LC0@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC1@toc@ha
	ld %r4, .LC1@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
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
	.p2align	2
	.type	make_tu,@function
	.section	.opd,"aw",@progbits
make_tu:                                # @make_tu
	.p2align	3, 0x0
	.quad	.Lfunc_begin1
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC2@toc@ha
	ld %r6, .LC2@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
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
	.p2align	2
	.type	memmove,@function
	.section	.opd,"aw",@progbits
memmove:                                # @memmove
	.p2align	3, 0x0
	.quad	.Lfunc_begin2
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
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
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB2_6
# %bb.1:
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
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
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
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
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 8(%r4)
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
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	std %r3, 24(%r4)
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC4@toc@ha
	ld %r3, .LC4@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
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
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 24(%r4)
.LBB2_12:
	addis %r3, %r2, .LC5@toc@ha
	ld %r3, .LC5@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	std %r3, 32(%r4)
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
	.p2align	2
	.type	memccpy,@function
	.section	.opd,"aw",@progbits
memccpy:                                # @memccpy
	.p2align	3, 0x0
	.quad	.Lfunc_begin3
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:
	std %r5, -72(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -72(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -24(%r1)
	std %r4, -32(%r1)
	stw %r3, -36(%r1)
	std %r6, -48(%r1)
	addis %r3, %r2, .LC6@toc@ha
	ld %r3, .LC6@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC6@toc@ha
	ld %r4, .LC6@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -56(%r1)
	ld %r3, -32(%r1)
	std %r3, -64(%r1)
	lwz %r3, -36(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -36(%r1)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld %r4, -48(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -76(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB3_6
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	addis %r3, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC6@toc@ha
	ld %r4, .LC6@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -64(%r1)
	lbz %r3, 0(%r3)
	stw %r3, -92(%r1)                       # 4-byte Folded Spill
	ld %r4, -56(%r1)
	stb %r3, 0(%r4)
	lwz %r4, -36(%r1)
	stw %r4, -88(%r1)                       # 4-byte Folded Spill
	xor %r3, %r3, %r4
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -84(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -80(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB3_4
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, -84(%r1)                       # 4-byte Folded Reload
	stw %r3, -80(%r1)                       # 4-byte Folded Spill
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r4, -92(%r1)                       # 4-byte Folded Reload
	lwz %r5, -88(%r1)                       # 4-byte Folded Reload
	lwz %r3, -80(%r1)                       # 4-byte Folded Reload
	stw %r3, -96(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -76(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, -96(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r4)
	ld %r4, 8(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC7@toc@ha
	ld %r5, .LC7@toc@l(%r5)
	std %r4, 8(%r5)
	addis %r4, %r2, .LC6@toc@ha
	ld %r4, .LC6@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC6@toc@ha
	ld %r5, .LC6@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -76(%r1)                       # 4-byte Folded Spill
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, -76(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB3_9
	b .LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	addis %r3, %r2, .LC6@toc@ha
	ld %r3, .LC6@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC6@toc@ha
	ld %r4, .LC6@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB3_1 Depth=1
	addis %r3, %r2, .LC7@toc@ha
	ld %r3, .LC7@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r4)
	std %r3, 16(%r4)
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
.LBB3_9:
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB3_11
# %bb.10:
	addis %r3, %r2, .LC7@toc@ha
	ld %r3, .LC7@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC6@toc@ha
	ld %r3, .LC6@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC6@toc@ha
	ld %r4, .LC6@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -56(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB3_12
.LBB3_11:
	addis %r3, %r2, .LC7@toc@ha
	ld %r3, .LC7@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 0
	std %r3, -16(%r1)
.LBB3_12:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-.Lfunc_begin3
	.cfi_endproc
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	2
	.type	memchr,@function
	.section	.opd,"aw",@progbits
memchr:                                 # @memchr
	.p2align	3, 0x0
	.quad	.Lfunc_begin4
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
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
	lwz %r3, -20(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -20(%r1)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB4_6
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	addis %r3, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC8@toc@ha
	ld %r4, .LC8@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
	lwz %r4, -20(%r1)
	stw %r4, -64(%r1)                       # 4-byte Folded Spill
	xor %r3, %r3, %r4
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r3, -60(%r1)                       # 4-byte Folded Reload
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r4, -68(%r1)                       # 4-byte Folded Reload
	lwz %r5, -64(%r1)                       # 4-byte Folded Reload
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	stw %r3, -72(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r3, -72(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r4)
	ld %r4, 8(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC9@toc@ha
	ld %r5, .LC9@toc@l(%r5)
	std %r4, 8(%r5)
	addis %r4, %r2, .LC8@toc@ha
	ld %r4, .LC8@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC8@toc@ha
	ld %r5, .LC8@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB4_9
	b .LBB4_7
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	addis %r3, %r2, .LC8@toc@ha
	ld %r3, .LC8@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC8@toc@ha
	ld %r4, .LC8@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB4_1 Depth=1
	addis %r3, %r2, .LC9@toc@ha
	ld %r3, .LC9@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -40(%r1)
	addi %r3, %r3, 1
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB4_1
.LBB4_9:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB4_11
# %bb.10:
	addis %r3, %r2, .LC9@toc@ha
	ld %r3, .LC9@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC8@toc@ha
	ld %r3, .LC8@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC8@toc@ha
	ld %r4, .LC8@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -40(%r1)
	std %r3, -80(%r1)                       # 8-byte Folded Spill
	b .LBB4_12
.LBB4_11:
	addis %r3, %r2, .LC9@toc@ha
	ld %r3, .LC9@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 0
	std %r3, -80(%r1)                       # 8-byte Folded Spill
.LBB4_12:
	ld %r3, -80(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-.Lfunc_begin4
	.cfi_endproc
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
	.section	.opd,"aw",@progbits
memcmp:                                 # @memcmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin5
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC10@toc@ha
	ld %r3, .LC10@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB5_4
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	addis %r3, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -40(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -48(%r1)
	lbz %r5, 0(%r3)
	xor %r3, %r4, %r5
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_1 Depth=1
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r4)
	ld %r4, 8(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC11@toc@ha
	ld %r5, .LC11@toc@l(%r5)
	std %r4, 8(%r5)
	addis %r4, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC10@toc@ha
	ld %r5, .LC10@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB5_7
	b .LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	addis %r3, %r2, .LC10@toc@ha
	ld %r3, .LC10@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	addis %r3, %r2, .LC11@toc@ha
	ld %r3, .LC11@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r4)
	std %r3, 16(%r4)
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
	addis %r3, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC10@toc@ha
	ld %r4, .LC10@toc@l(%r3)
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
	addis %r3, %r2, .LC11@toc@ha
	ld %r3, .LC11@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
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
	.p2align	2
	.type	memcpy,@function
	.section	.opd,"aw",@progbits
memcpy:                                 # @memcpy
	.p2align	3, 0x0
	.quad	.Lfunc_begin6
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:
	addis %r6, %r2, .LC12@toc@ha
	ld %r6, .LC12@toc@l(%r6)
	ld %r6, 0(%r6)
	addi %r6, %r6, 1
	addis %r7, %r2, .LC12@toc@ha
	ld %r7, .LC12@toc@l(%r7)
	std %r6, 0(%r7)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC13@toc@ha
	ld %r3, .LC13@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC13@toc@ha
	ld %r4, .LC13@toc@l(%r4)
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
	addis %r3, %r2, .LC13@toc@ha
	ld %r3, .LC13@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC13@toc@ha
	ld %r4, .LC13@toc@l(%r4)
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
	addis %r3, %r2, .LC12@toc@ha
	ld %r3, .LC12@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC12@toc@ha
	ld %r4, .LC12@toc@l(%r4)
	std %r3, 8(%r4)
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
	.p2align	2
	.type	memrchr,@function
	.section	.opd,"aw",@progbits
memrchr:                                # @memrchr
	.p2align	3, 0x0
	.quad	.Lfunc_begin7
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
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
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	lwz %r4, -28(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB7_4
# %bb.3:
	addis %r3, %r2, .LC15@toc@ha
	ld %r3, .LC15@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC15@toc@ha
	ld %r4, .LC15@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC14@toc@ha
	ld %r3, .LC14@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC14@toc@ha
	ld %r4, .LC14@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -16(%r1)
	b .LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	addis %r3, %r2, .LC15@toc@ha
	ld %r3, .LC15@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC15@toc@ha
	ld %r4, .LC15@toc@l(%r4)
	std %r3, 8(%r4)
	b .LBB7_1
.LBB7_5:
	addis %r3, %r2, .LC15@toc@ha
	ld %r3, .LC15@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC15@toc@ha
	ld %r4, .LC15@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	memset,@function
	.section	.opd,"aw",@progbits
memset:                                 # @memset
	.p2align	3, 0x0
	.quad	.Lfunc_begin8
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r6, %r2, .LC16@toc@ha
	ld %r6, .LC16@toc@l(%r6)
	ld %r6, 0(%r6)
	addi %r6, %r6, 1
	addis %r7, %r2, .LC16@toc@ha
	ld %r7, .LC16@toc@l(%r7)
	std %r6, 0(%r7)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC17@toc@ha
	ld %r3, .LC17@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC17@toc@ha
	ld %r4, .LC17@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	addis %r3, %r2, .LC17@toc@ha
	ld %r3, .LC17@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC17@toc@ha
	ld %r4, .LC17@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -20(%r1)
	ld %r4, -40(%r1)
	stb %r3, 0(%r4)
# %bb.3:                                #   in Loop: Header=BB8_1 Depth=1
	addis %r3, %r2, .LC16@toc@ha
	ld %r3, .LC16@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC16@toc@ha
	ld %r4, .LC16@toc@l(%r4)
	std %r3, 8(%r4)
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
	.p2align	2
	.type	stpcpy,@function
	.section	.opd,"aw",@progbits
stpcpy:                                 # @stpcpy
	.p2align	3, 0x0
	.quad	.Lfunc_begin9
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC18@toc@ha
	ld %r5, .LC18@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC18@toc@ha
	ld %r6, .LC18@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC19@toc@ha
	ld %r3, .LC19@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC19@toc@ha
	ld %r4, .LC19@toc@l(%r4)
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
	addis %r3, %r2, .LC19@toc@ha
	ld %r3, .LC19@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC19@toc@ha
	ld %r4, .LC19@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.3:                                #   in Loop: Header=BB9_1 Depth=1
	addis %r3, %r2, .LC18@toc@ha
	ld %r3, .LC18@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC18@toc@ha
	ld %r4, .LC18@toc@l(%r4)
	std %r3, 8(%r4)
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
	.p2align	2
	.type	strchrnul,@function
	.section	.opd,"aw",@progbits
strchrnul:                              # @strchrnul
	.p2align	3, 0x0
	.quad	.Lfunc_begin10
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC20@toc@ha
	ld %r5, .LC20@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC20@toc@ha
	ld %r6, .LC20@toc@l(%r6)
	std %r5, 0(%r6)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC21@toc@ha
	ld %r3, .LC21@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC21@toc@ha
	ld %r4, .LC21@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -20(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -20(%r1)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB10_6
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	addis %r3, %r2, .LC20@toc@ha
	ld %r4, .LC20@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC21@toc@ha
	ld %r4, .LC21@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	lwz %r4, -20(%r1)
	stw %r4, -48(%r1)                       # 4-byte Folded Spill
	xor %r3, %r3, %r4
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r4, -52(%r1)                       # 4-byte Folded Reload
	lwz %r5, -48(%r1)                       # 4-byte Folded Reload
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB10_6
# %bb.5:                                #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC20@toc@ha
	ld %r4, .LC20@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC20@toc@ha
	ld %r5, .LC20@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC21@toc@ha
	ld %r4, .LC21@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC21@toc@ha
	ld %r5, .LC21@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB10_9
	b .LBB10_7
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	addis %r3, %r2, .LC21@toc@ha
	ld %r3, .LC21@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC21@toc@ha
	ld %r4, .LC21@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB10_1 Depth=1
	addis %r3, %r2, .LC20@toc@ha
	ld %r3, .LC20@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC20@toc@ha
	ld %r4, .LC20@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB10_1
.LBB10_9:
	ld %r3, -16(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-.Lfunc_begin10
	.cfi_endproc
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	2
	.type	strchr,@function
	.section	.opd,"aw",@progbits
strchr:                                 # @strchr
	.p2align	3, 0x0
	.quad	.Lfunc_begin11
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC22@toc@ha
	ld %r3, .LC22@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC22@toc@ha
	ld %r4, .LC22@toc@l(%r4)
	std %r3, 0(%r4)
	b .LBB11_2
.LBB11_1:                               #   in Loop: Header=BB11_2 Depth=1
	addis %r3, %r2, .LC23@toc@ha
	ld %r3, .LC23@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC23@toc@ha
	ld %r4, .LC23@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC22@toc@ha
	ld %r3, .LC22@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC22@toc@ha
	ld %r4, .LC22@toc@l(%r4)
	std %r3, 8(%r4)
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -28(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB11_4
# %bb.3:
	addis %r3, %r2, .LC23@toc@ha
	ld %r3, .LC23@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC23@toc@ha
	ld %r4, .LC23@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC22@toc@ha
	ld %r3, .LC22@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC22@toc@ha
	ld %r4, .LC22@toc@l(%r4)
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
	addis %r3, %r2, .LC23@toc@ha
	ld %r3, .LC23@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC23@toc@ha
	ld %r4, .LC23@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	strcmp,@function
	.section	.opd,"aw",@progbits
strcmp:                                 # @strcmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin12
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC24@toc@ha
	ld %r5, .LC24@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC24@toc@ha
	ld %r6, .LC24@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC25@toc@ha
	ld %r3, .LC25@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC25@toc@ha
	ld %r4, .LC25@toc@l(%r4)
	std %r3, 0(%r4)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lbz %r5, 0(%r3)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB12_6
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	addis %r3, %r2, .LC24@toc@ha
	ld %r4, .LC24@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC25@toc@ha
	ld %r4, .LC25@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB12_4
# %bb.3:                                #   in Loop: Header=BB12_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	lwz %r4, -40(%r1)                       # 4-byte Folded Reload
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	cmpwi	%r4, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB12_6
# %bb.5:                                #   in Loop: Header=BB12_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC24@toc@ha
	ld %r4, .LC24@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC24@toc@ha
	ld %r5, .LC24@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC25@toc@ha
	ld %r4, .LC25@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC25@toc@ha
	ld %r5, .LC25@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB12_9
	b .LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_1 Depth=1
	addis %r3, %r2, .LC25@toc@ha
	ld %r3, .LC25@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC25@toc@ha
	ld %r4, .LC25@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB12_1 Depth=1
	addis %r3, %r2, .LC24@toc@ha
	ld %r3, .LC24@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC24@toc@ha
	ld %r4, .LC24@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	addi %r3, %r3, 1
	std %r3, -24(%r1)
	b .LBB12_1
.LBB12_9:
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
	.p2align	2
	.type	strlen,@function
	.section	.opd,"aw",@progbits
strlen:                                 # @strlen
	.p2align	3, 0x0
	.quad	.Lfunc_begin13
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC26@toc@ha
	ld %r5, .LC26@toc@l(%r5)
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC27@toc@ha
	ld %r3, .LC27@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC27@toc@ha
	ld %r4, .LC27@toc@l(%r4)
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
	addis %r3, %r2, .LC27@toc@ha
	ld %r3, .LC27@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC27@toc@ha
	ld %r4, .LC27@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.3:                                #   in Loop: Header=BB13_1 Depth=1
	addis %r3, %r2, .LC26@toc@ha
	ld %r3, .LC26@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r4)
	std %r3, 8(%r4)
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
	.p2align	2
	.type	strncmp,@function
	.section	.opd,"aw",@progbits
strncmp:                                # @strncmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin14
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin14:
	.cfi_startproc
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	std %r5, -40(%r1)
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
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
	addis %r3, %r2, .LC29@toc@ha
	ld %r3, .LC29@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB14_14
.LBB14_2:
	addis %r3, %r2, .LC29@toc@ha
	ld %r3, .LC29@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	std %r3, 0(%r4)
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -48(%r1)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB14_10
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC29@toc@ha
	ld %r3, .LC29@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 56(%r4)
	ld %r3, -56(%r1)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB14_10
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC29@toc@ha
	ld %r3, .LC29@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 64(%r4)
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 40(%r4)
	ld %r4, -40(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB14_10
# %bb.7:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC29@toc@ha
	ld %r3, .LC29@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.8:                                #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, -48(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -56(%r1)
	lbz %r5, 0(%r3)
	xor %r3, %r4, %r5
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -64(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB14_10
# %bb.9:                                #   in Loop: Header=BB14_3 Depth=1
	lwz %r3, -64(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	ld %r4, 40(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC29@toc@ha
	ld %r5, .LC29@toc@l(%r5)
	std %r4, 40(%r5)
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	ld %r4, 32(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC28@toc@ha
	ld %r5, .LC28@toc@l(%r5)
	std %r4, 32(%r5)
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
.LBB14_10:                              #   in Loop: Header=BB14_3 Depth=1
	lwz %r3, -60(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB14_13
	b .LBB14_11
.LBB14_11:                              #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC28@toc@ha
	ld %r3, .LC28@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC28@toc@ha
	ld %r4, .LC28@toc@l(%r4)
	std %r3, 16(%r4)
# %bb.12:                               #   in Loop: Header=BB14_3 Depth=1
	addis %r3, %r2, .LC29@toc@ha
	ld %r3, .LC29@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r4)
	std %r3, 48(%r4)
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
	.p2align	2
	.type	swab,@function
	.section	.opd,"aw",@progbits
swab:                                   # @swab
	.p2align	3, 0x0
	.quad	.Lfunc_begin15
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin15:
	.cfi_startproc
# %bb.0:
	addis %r6, %r2, .LC30@toc@ha
	ld %r6, .LC30@toc@l(%r6)
	ld %r6, 0(%r6)
	addi %r6, %r6, 1
	addis %r7, %r2, .LC30@toc@ha
	ld %r7, .LC30@toc@l(%r7)
	std %r6, 0(%r7)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC31@toc@ha
	ld %r3, .LC31@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC31@toc@ha
	ld %r4, .LC31@toc@l(%r4)
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
	addis %r3, %r2, .LC31@toc@ha
	ld %r3, .LC31@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC31@toc@ha
	ld %r4, .LC31@toc@l(%r4)
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
	addis %r3, %r2, .LC30@toc@ha
	ld %r4, .LC30@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
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
	.p2align	2
	.type	isalpha,@function
	.section	.opd,"aw",@progbits
isalpha:                                # @isalpha
	.p2align	3, 0x0
	.quad	.Lfunc_begin16
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC32@toc@ha
	ld %r5, .LC32@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC33@toc@ha
	ld %r4, .LC33@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
	cmplwi	%r3, 26
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB16_2
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
	.p2align	2
	.type	isascii,@function
	.section	.opd,"aw",@progbits
isascii:                                # @isascii
	.p2align	3, 0x0
	.quad	.Lfunc_begin17
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC34@toc@ha
	ld %r5, .LC34@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC35@toc@ha
	ld %r4, .LC35@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	rlwinm %r3, %r3, 0, 0, 24
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
                                        # kill: def $r4 killed $r3
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-.Lfunc_begin17
	.cfi_endproc
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	2
	.type	isblank,@function
	.section	.opd,"aw",@progbits
isblank:                                # @isblank
	.p2align	3, 0x0
	.quad	.Lfunc_begin18
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin18:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC36@toc@ha
	ld %r5, .LC36@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC37@toc@ha
	ld %r3, .LC37@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmpwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB18_3
# %bb.1:
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r4, -12(%r1)
	xori %r3, %r4, 9
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	cmpwi	%r4, 9
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB18_3
# %bb.2:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC36@toc@ha
	ld %r5, .LC36@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC37@toc@ha
	ld %r4, .LC37@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC37@toc@ha
	ld %r5, .LC37@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB18_3:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-.Lfunc_begin18
	.cfi_endproc
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
	.section	.opd,"aw",@progbits
iscntrl:                                # @iscntrl
	.p2align	3, 0x0
	.quad	.Lfunc_begin19
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin19:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC38@toc@ha
	ld %r5, .LC38@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC39@toc@ha
	ld %r3, .LC39@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC39@toc@ha
	ld %r4, .LC39@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB19_3
# %bb.1:
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC39@toc@ha
	ld %r4, .LC39@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r4, -12(%r1)
	xori %r3, %r4, 127
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	cmpwi	%r4, 127
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB19_3
# %bb.2:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC38@toc@ha
	ld %r5, .LC38@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC39@toc@ha
	ld %r4, .LC39@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC39@toc@ha
	ld %r5, .LC39@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB19_3:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-.Lfunc_begin19
	.cfi_endproc
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
	.section	.opd,"aw",@progbits
isdigit:                                # @isdigit
	.p2align	3, 0x0
	.quad	.Lfunc_begin20
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin20:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC40@toc@ha
	ld %r5, .LC40@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC41@toc@ha
	ld %r4, .LC41@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -48
	cmplwi	%r3, 10
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB20_2
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
	.p2align	2
	.type	isgraph,@function
	.section	.opd,"aw",@progbits
isgraph:                                # @isgraph
	.p2align	3, 0x0
	.quad	.Lfunc_begin21
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin21:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC42@toc@ha
	ld %r5, .LC42@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC43@toc@ha
	ld %r4, .LC43@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -33
	cmplwi	%r3, 94
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB21_2
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
	.p2align	2
	.type	islower,@function
	.section	.opd,"aw",@progbits
islower:                                # @islower
	.p2align	3, 0x0
	.quad	.Lfunc_begin22
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin22:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC44@toc@ha
	ld %r5, .LC44@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC45@toc@ha
	ld %r4, .LC45@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -97
	cmplwi	%r3, 26
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB22_2
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
	.p2align	2
	.type	isprint,@function
	.section	.opd,"aw",@progbits
isprint:                                # @isprint
	.p2align	3, 0x0
	.quad	.Lfunc_begin23
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin23:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC46@toc@ha
	ld %r5, .LC46@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC47@toc@ha
	ld %r4, .LC47@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -32
	cmplwi	%r3, 95
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB23_2
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
	.p2align	2
	.type	isspace,@function
	.section	.opd,"aw",@progbits
isspace:                                # @isspace
	.p2align	3, 0x0
	.quad	.Lfunc_begin24
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin24:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC48@toc@ha
	ld %r4, .LC48@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC48@toc@ha
	ld %r5, .LC48@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC49@toc@ha
	ld %r3, .LC49@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC49@toc@ha
	ld %r4, .LC49@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmpwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB24_5
# %bb.1:
	addis %r3, %r2, .LC48@toc@ha
	ld %r4, .LC48@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC49@toc@ha
	ld %r4, .LC49@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -9
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	cmplwi	%r3, 5
	li %r3, 0
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_3
# %bb.2:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
.LBB24_3:
	lwz %r4, -28(%r1)                       # 4-byte Folded Reload
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	cmplwi	%r4, 5
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB24_5
# %bb.4:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC48@toc@ha
	ld %r4, .LC48@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC48@toc@ha
	ld %r5, .LC48@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC49@toc@ha
	ld %r4, .LC49@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC49@toc@ha
	ld %r5, .LC49@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB24_5:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-.Lfunc_begin24
	.cfi_endproc
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	2
	.type	isupper,@function
	.section	.opd,"aw",@progbits
isupper:                                # @isupper
	.p2align	3, 0x0
	.quad	.Lfunc_begin25
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin25:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC50@toc@ha
	ld %r5, .LC50@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC51@toc@ha
	ld %r4, .LC51@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -65
	cmplwi	%r3, 26
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB25_2
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
	.p2align	2
	.type	iswcntrl,@function
	.section	.opd,"aw",@progbits
iswcntrl:                               # @iswcntrl
	.p2align	3, 0x0
	.quad	.Lfunc_begin26
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin26:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC52@toc@ha
	ld %r5, .LC52@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_9
# %bb.1:
	addis %r3, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, -12(%r1)
	addi %r4, %r3, -127
	li %r3, 1
	cmplwi	%r4, 33
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_9
# %bb.2:
	addis %r3, %r2, .LC52@toc@ha
	ld %r3, .LC52@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.3:
	addis %r3, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, -12(%r1)
	addi %r4, %r3, -8232
	li %r3, 1
	cmplwi	%r4, 2
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_9
# %bb.4:
	addis %r3, %r2, .LC52@toc@ha
	ld %r3, .LC52@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC53@toc@ha
	ld %r3, .LC53@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	std %r3, 32(%r4)
# %bb.5:
	addis %r3, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, 7
	addis %r3, %r3, -1
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	cmplwi	%r3, 3
	li %r3, 0
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_7
# %bb.6:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
.LBB26_7:
	lwz %r4, -28(%r1)                       # 4-byte Folded Reload
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	cmplwi	%r4, 3
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_9
# %bb.8:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r4)
	ld %r4, 32(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC52@toc@ha
	ld %r5, .LC52@toc@l(%r5)
	std %r4, 32(%r5)
	addis %r4, %r2, .LC53@toc@ha
	ld %r4, .LC53@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC53@toc@ha
	ld %r5, .LC53@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB26_9:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-.Lfunc_begin26
	.cfi_endproc
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
	.section	.opd,"aw",@progbits
iswdigit:                               # @iswdigit
	.p2align	3, 0x0
	.quad	.Lfunc_begin27
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin27:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC54@toc@ha
	ld %r5, .LC54@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC55@toc@ha
	ld %r4, .LC55@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -48
	cmplwi	%r3, 10
	li %r3, 0
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB27_2
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
	.p2align	2
	.type	iswprint,@function
	.section	.opd,"aw",@progbits
iswprint:                               # @iswprint
	.p2align	3, 0x0
	.quad	.Lfunc_begin28
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin28:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -16(%r1)
	cmplwi	%r3, 255
	bge %cr0, .LBB28_4
# %bb.1:
	addis %r3, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -16(%r1)
	addi %r3, %r3, 1
	clrlwi	%r3, %r3, 25
	cmpwi	%r3, 32
	li %r3, 0
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB28_3
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
	addis %r3, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, -16(%r1)
	addi %r3, %r3, -8234
	cmplwi	%r3, 47062
	blt	%cr0, .LBB28_9
# %bb.6:
	addis %r3, %r2, .LC57@toc@ha
	ld %r3, .LC57@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.7:
	addis %r3, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, -16(%r1)
	addi %r3, %r3, 8192
	addis %r3, %r3, -1
	cmplwi	%r3, 8185
	blt	%cr0, .LBB28_9
# %bb.8:
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 32(%r4)
	b .LBB28_10
.LBB28_9:
	addis %r3, %r2, .LC57@toc@ha
	ld %r3, .LC57@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
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
	addis %r3, %r2, .LC57@toc@ha
	ld %r3, .LC57@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
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
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 72(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 72(%r4)
	b .LBB28_14
.LBB28_13:
	addis %r3, %r2, .LC57@toc@ha
	ld %r3, .LC57@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r4)
	std %r3, 40(%r4)
	addis %r3, %r2, .LC56@toc@ha
	ld %r3, .LC56@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC56@toc@ha
	ld %r4, .LC56@toc@l(%r4)
	std %r3, 56(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB28_15
.LBB28_14:
	addis %r3, %r2, .LC57@toc@ha
	ld %r3, .LC57@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r4)
	std %r3, 48(%r4)
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
	.p2align	2
	.type	iswxdigit,@function
	.section	.opd,"aw",@progbits
iswxdigit:                              # @iswxdigit
	.p2align	3, 0x0
	.quad	.Lfunc_begin29
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin29:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC58@toc@ha
	ld %r5, .LC58@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC59@toc@ha
	ld %r4, .LC59@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r4, %r3, -48
	li %r3, 1
	cmplwi	%r4, 10
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB29_5
# %bb.1:
	addis %r3, %r2, .LC58@toc@ha
	ld %r4, .LC58@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC59@toc@ha
	ld %r4, .LC59@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	cmplwi	%r3, 6
	li %r3, 0
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB29_3
# %bb.2:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
.LBB29_3:
	lwz %r4, -28(%r1)                       # 4-byte Folded Reload
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	cmplwi	%r4, 6
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB29_5
# %bb.4:
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC58@toc@ha
	ld %r4, .LC58@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC58@toc@ha
	ld %r5, .LC58@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC59@toc@ha
	ld %r4, .LC59@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC59@toc@ha
	ld %r5, .LC59@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB29_5:
	lwz %r3, -16(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-.Lfunc_begin29
	.cfi_endproc
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	2
	.type	toascii,@function
	.section	.opd,"aw",@progbits
toascii:                                # @toascii
	.p2align	3, 0x0
	.quad	.Lfunc_begin30
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin30:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC60@toc@ha
	ld %r4, .LC60@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC60@toc@ha
	ld %r5, .LC60@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC61@toc@ha
	ld %r3, .LC61@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC61@toc@ha
	ld %r4, .LC61@toc@l(%r4)
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
	.p2align	2
	.type	fdim,@function
	.section	.opd,"aw",@progbits
fdim:                                   # @fdim
	.p2align	3, 0x0
	.quad	.Lfunc_begin31
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin31:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 136(%r31)
	std %r4, 128(%r31)
	addis %r3, %r2, .LC62@toc@ha
	ld %r4, .LC62@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 136(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB31_2
	b .LBB31_1
.LBB31_1:
	addis %r3, %r2, .LC63@toc@ha
	ld %r4, .LC63@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC62@toc@ha
	ld %r4, .LC62@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 136(%r31)
	std %r3, 144(%r31)
	b .LBB31_8
.LBB31_2:
	ld %r3, 128(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB31_4
	b .LBB31_3
.LBB31_3:
	addis %r3, %r2, .LC63@toc@ha
	ld %r4, .LC63@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC62@toc@ha
	ld %r4, .LC62@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 128(%r31)
	std %r3, 144(%r31)
	b .LBB31_8
.LBB31_4:
	ld %r3, 136(%r31)
	ld %r4, 128(%r31)
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB31_6
	b .LBB31_5
.LBB31_5:
	addis %r3, %r2, .LC63@toc@ha
	ld %r4, .LC63@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC62@toc@ha
	ld %r4, .LC62@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 136(%r31)
	ld %r4, 128(%r31)
	bl __subdf3
	nop
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB31_7
.LBB31_6:
	addis %r3, %r2, .LC63@toc@ha
	ld %r4, .LC63@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	li %r3, 0
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB31_7
.LBB31_7:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r3, 144(%r31)
.LBB31_8:
	ld %r3, 144(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	fdimf,@function
	.section	.opd,"aw",@progbits
fdimf:                                  # @fdimf
	.p2align	3, 0x0
	.quad	.Lfunc_begin32
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin32:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 144(%r31)
	stw %r3, 140(%r31)
	addis %r3, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 144(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_2
	b .LBB32_1
.LBB32_1:
	addis %r3, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 144(%r31)
	stw %r3, 148(%r31)
	b .LBB32_8
.LBB32_2:
	lwz %r3, 140(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_4
	b .LBB32_3
.LBB32_3:
	addis %r3, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, 140(%r31)
	stw %r3, 148(%r31)
	b .LBB32_8
.LBB32_4:
	lwz %r3, 144(%r31)
	lwz %r4, 140(%r31)
	bl __gtsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB32_6
	b .LBB32_5
.LBB32_5:
	addis %r3, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC64@toc@ha
	ld %r4, .LC64@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 144(%r31)
	lwz %r4, 140(%r31)
	bl __subsf3
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB32_7
.LBB32_6:
	addis %r3, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB32_7
.LBB32_7:
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	stw %r3, 148(%r31)
.LBB32_8:
	lwz %r3, 148(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	fmax,@function
	.section	.opd,"aw",@progbits
fmax:                                   # @fmax
	.p2align	3, 0x0
	.quad	.Lfunc_begin33
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin33:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 136(%r31)
	std %r4, 128(%r31)
	addis %r3, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 136(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB33_2
	b .LBB33_1
.LBB33_1:
	addis %r3, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 128(%r31)
	std %r3, 144(%r31)
	b .LBB33_13
.LBB33_2:
	ld %r3, 128(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB33_4
	b .LBB33_3
.LBB33_3:
	addis %r3, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 136(%r31)
	std %r3, 144(%r31)
	b .LBB33_13
.LBB33_4:
	ld %r3, 136(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 128(%r31)
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
	cmpw	%r3, %r4
	beq	%cr0, .LBB33_9
# %bb.5:
	addis %r3, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 136(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB33_7
# %bb.6:
	addis %r3, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 128(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB33_8
.LBB33_7:
	addis %r3, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 136(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB33_8
.LBB33_8:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r3, 144(%r31)
	b .LBB33_13
.LBB33_9:
	ld %r3, 136(%r31)
	ld %r4, 128(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB33_11
	b .LBB33_10
.LBB33_10:
	addis %r3, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC66@toc@ha
	ld %r4, .LC66@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 128(%r31)
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB33_12
.LBB33_11:
	addis %r3, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 136(%r31)
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB33_12
.LBB33_12:
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
	std %r3, 144(%r31)
.LBB33_13:
	ld %r3, 144(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	fmaxf,@function
	.section	.opd,"aw",@progbits
fmaxf:                                  # @fmaxf
	.p2align	3, 0x0
	.quad	.Lfunc_begin34
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin34:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 144(%r31)
	stw %r3, 140(%r31)
	addis %r3, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 144(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB34_2
	b .LBB34_1
.LBB34_1:
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 140(%r31)
	stw %r3, 148(%r31)
	b .LBB34_13
.LBB34_2:
	lwz %r3, 140(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB34_4
	b .LBB34_3
.LBB34_3:
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, 144(%r31)
	stw %r3, 148(%r31)
	b .LBB34_13
.LBB34_4:
	lwz %r3, 144(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 140(%r31)
	srwi %r4, %r4, 31
                                        # kill: def $r5 killed $r4
	cmpw	%r3, %r4
	beq	%cr0, .LBB34_9
# %bb.5:
	addis %r3, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB34_7
# %bb.6:
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	lwz %r3, 140(%r31)
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB34_8
.LBB34_7:
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 144(%r31)
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB34_8
.LBB34_8:
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	stw %r3, 148(%r31)
	b .LBB34_13
.LBB34_9:
	lwz %r3, 144(%r31)
	lwz %r4, 140(%r31)
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB34_11
	b .LBB34_10
.LBB34_10:
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC68@toc@ha
	ld %r4, .LC68@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 140(%r31)
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	b .LBB34_12
.LBB34_11:
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 144(%r31)
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	b .LBB34_12
.LBB34_12:
	lwz %r3, 120(%r31)                      # 4-byte Folded Reload
	stw %r3, 148(%r31)
.LBB34_13:
	lwz %r3, 148(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	fmaxl,@function
	.section	.opd,"aw",@progbits
fmaxl:                                  # @fmaxl
	.p2align	3, 0x0
	.quad	.Lfunc_begin35
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin35:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -208(%r1)
	std %r0, 224(%r1)
	.cfi_def_cfa_offset 208
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 160(%r31)
	std %r4, 168(%r31)
	std %r6, 152(%r31)
	std %r5, 144(%r31)
	addis %r3, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 160(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB35_2
	b .LBB35_1
.LBB35_1:
	addis %r3, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 144(%r31)
	ld %r4, 152(%r31)
	std %r4, 184(%r31)
	std %r3, 176(%r31)
	b .LBB35_13
.LBB35_2:
	ld %r3, 144(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB35_4
	b .LBB35_3
.LBB35_3:
	addis %r3, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 160(%r31)
	ld %r4, 168(%r31)
	std %r4, 184(%r31)
	std %r3, 176(%r31)
	b .LBB35_13
.LBB35_4:
	ld %r3, 160(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 144(%r31)
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
                                        # kill: def $r5 killed $r4
	cmpw	%r3, %r4
	beq	%cr0, .LBB35_9
# %bb.5:
	addis %r3, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 160(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB35_7
# %bb.6:
	addis %r3, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 152(%r31)
	ld %r4, 144(%r31)
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	std %r3, 136(%r31)                      # 8-byte Folded Spill
	b .LBB35_8
.LBB35_7:
	addis %r3, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 168(%r31)
	ld %r4, 160(%r31)
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	std %r3, 136(%r31)                      # 8-byte Folded Spill
	b .LBB35_8
.LBB35_8:
	ld %r4, 128(%r31)                       # 8-byte Folded Reload
	ld %r3, 136(%r31)                       # 8-byte Folded Reload
	std %r4, 176(%r31)
	std %r3, 184(%r31)
	b .LBB35_13
.LBB35_9:
	ld %r3, 160(%r31)
	ld %r4, 168(%r31)
	ld %r5, 144(%r31)
	ld %r6, 152(%r31)
	bl __gcc_qlt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB35_11
	b .LBB35_10
.LBB35_10:
	addis %r3, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC70@toc@ha
	ld %r4, .LC70@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 152(%r31)
	ld %r4, 144(%r31)
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB35_12
.LBB35_11:
	addis %r3, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 168(%r31)
	ld %r4, 160(%r31)
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB35_12
.LBB35_12:
	ld %r4, 112(%r31)                       # 8-byte Folded Reload
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r4, 176(%r31)
	std %r3, 184(%r31)
.LBB35_13:
	ld %r3, 176(%r31)
	ld %r4, 184(%r31)
	addi %r1, %r1, 208
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
	.p2align	2
	.type	fmin,@function
	.section	.opd,"aw",@progbits
fmin:                                   # @fmin
	.p2align	3, 0x0
	.quad	.Lfunc_begin36
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin36:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 136(%r31)
	std %r4, 128(%r31)
	addis %r3, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 136(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB36_2
	b .LBB36_1
.LBB36_1:
	addis %r3, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 128(%r31)
	std %r3, 144(%r31)
	b .LBB36_13
.LBB36_2:
	ld %r3, 128(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB36_4
	b .LBB36_3
.LBB36_3:
	addis %r3, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 136(%r31)
	std %r3, 144(%r31)
	b .LBB36_13
.LBB36_4:
	ld %r3, 136(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 128(%r31)
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
	cmpw	%r3, %r4
	beq	%cr0, .LBB36_9
# %bb.5:
	addis %r3, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 136(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB36_7
# %bb.6:
	addis %r3, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 136(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB36_8
.LBB36_7:
	addis %r3, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 128(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB36_8
.LBB36_8:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r3, 144(%r31)
	b .LBB36_13
.LBB36_9:
	ld %r3, 136(%r31)
	ld %r4, 128(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB36_11
	b .LBB36_10
.LBB36_10:
	addis %r3, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC72@toc@ha
	ld %r4, .LC72@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 136(%r31)
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB36_12
.LBB36_11:
	addis %r3, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 128(%r31)
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB36_12
.LBB36_12:
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
	std %r3, 144(%r31)
.LBB36_13:
	ld %r3, 144(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	fminf,@function
	.section	.opd,"aw",@progbits
fminf:                                  # @fminf
	.p2align	3, 0x0
	.quad	.Lfunc_begin37
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin37:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 144(%r31)
	stw %r3, 140(%r31)
	addis %r3, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 144(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB37_2
	b .LBB37_1
.LBB37_1:
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 140(%r31)
	stw %r3, 148(%r31)
	b .LBB37_13
.LBB37_2:
	lwz %r3, 140(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB37_4
	b .LBB37_3
.LBB37_3:
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, 144(%r31)
	stw %r3, 148(%r31)
	b .LBB37_13
.LBB37_4:
	lwz %r3, 144(%r31)
	srwi %r3, %r3, 31
	lwz %r4, 140(%r31)
	srwi %r4, %r4, 31
                                        # kill: def $r5 killed $r4
	cmpw	%r3, %r4
	beq	%cr0, .LBB37_9
# %bb.5:
	addis %r3, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB37_7
# %bb.6:
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	lwz %r3, 144(%r31)
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB37_8
.LBB37_7:
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 140(%r31)
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB37_8
.LBB37_8:
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	stw %r3, 148(%r31)
	b .LBB37_13
.LBB37_9:
	lwz %r3, 144(%r31)
	lwz %r4, 140(%r31)
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB37_11
	b .LBB37_10
.LBB37_10:
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC74@toc@ha
	ld %r4, .LC74@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 144(%r31)
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	b .LBB37_12
.LBB37_11:
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 140(%r31)
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	b .LBB37_12
.LBB37_12:
	lwz %r3, 120(%r31)                      # 4-byte Folded Reload
	stw %r3, 148(%r31)
.LBB37_13:
	lwz %r3, 148(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	fminl,@function
	.section	.opd,"aw",@progbits
fminl:                                  # @fminl
	.p2align	3, 0x0
	.quad	.Lfunc_begin38
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin38:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -208(%r1)
	std %r0, 224(%r1)
	.cfi_def_cfa_offset 208
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 160(%r31)
	std %r4, 168(%r31)
	std %r6, 152(%r31)
	std %r5, 144(%r31)
	addis %r3, %r2, .LC76@toc@ha
	ld %r4, .LC76@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 160(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB38_2
	b .LBB38_1
.LBB38_1:
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC76@toc@ha
	ld %r4, .LC76@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 144(%r31)
	ld %r4, 152(%r31)
	std %r4, 184(%r31)
	std %r3, 176(%r31)
	b .LBB38_13
.LBB38_2:
	ld %r3, 144(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB38_4
	b .LBB38_3
.LBB38_3:
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC76@toc@ha
	ld %r4, .LC76@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 160(%r31)
	ld %r4, 168(%r31)
	std %r4, 184(%r31)
	std %r3, 176(%r31)
	b .LBB38_13
.LBB38_4:
	ld %r3, 160(%r31)
	rldicl %r3, %r3, 1, 63
                                        # kill: def $r3 killed $r3 killed $x3
	ld %r4, 144(%r31)
	rldicl %r4, %r4, 1, 63
                                        # kill: def $r4 killed $r4 killed $x4
                                        # kill: def $r5 killed $r4
	cmpw	%r3, %r4
	beq	%cr0, .LBB38_9
# %bb.5:
	addis %r3, %r2, .LC76@toc@ha
	ld %r4, .LC76@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 160(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB38_7
# %bb.6:
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC76@toc@ha
	ld %r4, .LC76@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 168(%r31)
	ld %r4, 160(%r31)
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	std %r3, 136(%r31)                      # 8-byte Folded Spill
	b .LBB38_8
.LBB38_7:
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 152(%r31)
	ld %r4, 144(%r31)
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	std %r3, 136(%r31)                      # 8-byte Folded Spill
	b .LBB38_8
.LBB38_8:
	ld %r4, 128(%r31)                       # 8-byte Folded Reload
	ld %r3, 136(%r31)                       # 8-byte Folded Reload
	std %r4, 176(%r31)
	std %r3, 184(%r31)
	b .LBB38_13
.LBB38_9:
	ld %r3, 160(%r31)
	ld %r4, 168(%r31)
	ld %r5, 144(%r31)
	ld %r6, 152(%r31)
	bl __gcc_qlt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB38_11
	b .LBB38_10
.LBB38_10:
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC76@toc@ha
	ld %r4, .LC76@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 168(%r31)
	ld %r4, 160(%r31)
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB38_12
.LBB38_11:
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 152(%r31)
	ld %r4, 144(%r31)
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB38_12
.LBB38_12:
	ld %r4, 112(%r31)                       # 8-byte Folded Reload
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r4, 176(%r31)
	std %r3, 184(%r31)
.LBB38_13:
	ld %r3, 176(%r31)
	ld %r4, 184(%r31)
	addi %r1, %r1, 208
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
	.p2align	2
	.type	l64a,@function
	.section	.opd,"aw",@progbits
l64a:                                   # @l64a
	.p2align	3, 0x0
	.quad	.Lfunc_begin39
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin39:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC78@toc@ha
	ld %r4, .LC78@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC78@toc@ha
	ld %r5, .LC78@toc@l(%r5)
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC79@toc@ha
	ld %r3, .LC79@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC79@toc@ha
	ld %r4, .LC79@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC80@toc@ha
	ld %r3, .LC80@toc@l(%r3)
	std %r3, -24(%r1)
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB39_4
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	addis %r3, %r2, .LC79@toc@ha
	ld %r3, .LC79@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC79@toc@ha
	ld %r4, .LC79@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -28(%r1)
	li %r4, 63
	and %r3, %r3, %r4
	clrldi	%r4, %r3, 32
	addis %r3, %r2, .LC81@toc@ha
	ld %r3, .LC81@toc@l(%r3)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -24(%r1)
	stb %r3, 0(%r4)
# %bb.3:                                #   in Loop: Header=BB39_1 Depth=1
	addis %r3, %r2, .LC78@toc@ha
	ld %r3, .LC78@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC78@toc@ha
	ld %r4, .LC78@toc@l(%r4)
	std %r3, 8(%r4)
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
	addis %r3, %r2, .LC80@toc@ha
	ld %r3, .LC80@toc@l(%r3)
	blr
	.long	0
	.quad	0
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-.Lfunc_begin39
	.cfi_endproc
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	2
	.type	srand,@function
	.section	.opd,"aw",@progbits
srand:                                  # @srand
	.p2align	3, 0x0
	.quad	.Lfunc_begin40
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin40:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC82@toc@ha
	ld %r5, .LC82@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC83@toc@ha
	ld %r4, .LC83@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -1
	clrldi	%r3, %r3, 32
	addis %r4, %r2, .LC84@toc@ha
	ld %r4, .LC84@toc@l(%r4)
	std %r3, 0(%r4)
	blr
	.long	0
	.quad	0
.Lfunc_end40:
	.size	srand, .Lfunc_end40-.Lfunc_begin40
	.cfi_endproc
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	2
	.type	rand,@function
	.section	.opd,"aw",@progbits
rand:                                   # @rand
	.p2align	3, 0x0
	.quad	.Lfunc_begin41
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin41:
	.cfi_startproc
# %bb.0:
	addis %r3, %r2, .LC85@toc@ha
	ld %r4, .LC85@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC86@toc@ha
	ld %r4, .LC86@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC84@toc@ha
	ld %r3, .LC84@toc@l(%r3)
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
	.p2align	2
	.type	insque,@function
	.section	.opd,"aw",@progbits
insque:                                 # @insque
	.p2align	3, 0x0
	.quad	.Lfunc_begin42
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin42:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC87@toc@ha
	ld %r3, .LC87@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC87@toc@ha
	ld %r4, .LC87@toc@l(%r4)
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
	addis %r3, %r2, .LC88@toc@ha
	ld %r3, .LC88@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC88@toc@ha
	ld %r4, .LC88@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC87@toc@ha
	ld %r3, .LC87@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC87@toc@ha
	ld %r4, .LC87@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r4, -32(%r1)
	li %r3, 0
	std %r3, 8(%r4)
	ld %r4, -32(%r1)
	li %r3, 0
	std %r3, 0(%r4)
	b .LBB42_4
.LBB42_2:
	addis %r3, %r2, .LC88@toc@ha
	ld %r3, .LC88@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC88@toc@ha
	ld %r4, .LC88@toc@l(%r4)
	std %r3, 0(%r4)
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
	addis %r3, %r2, .LC88@toc@ha
	ld %r3, .LC88@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC88@toc@ha
	ld %r4, .LC88@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC87@toc@ha
	ld %r3, .LC87@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC87@toc@ha
	ld %r4, .LC87@toc@l(%r4)
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
	.p2align	2
	.type	remque,@function
	.section	.opd,"aw",@progbits
remque:                                 # @remque
	.p2align	3, 0x0
	.quad	.Lfunc_begin43
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin43:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC89@toc@ha
	ld %r4, .LC89@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC89@toc@ha
	ld %r5, .LC89@toc@l(%r5)
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC90@toc@ha
	ld %r3, .LC90@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC90@toc@ha
	ld %r4, .LC90@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
	ld %r3, -24(%r1)
	ld %r3, 0(%r3)
	li %r4, 0
	cmpd	%r3, %r4
	beq	%cr0, .LBB43_2
# %bb.1:
	addis %r3, %r2, .LC89@toc@ha
	ld %r3, .LC89@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC89@toc@ha
	ld %r4, .LC89@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC90@toc@ha
	ld %r3, .LC90@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC90@toc@ha
	ld %r4, .LC90@toc@l(%r4)
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
	addis %r3, %r2, .LC89@toc@ha
	ld %r3, .LC89@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC89@toc@ha
	ld %r4, .LC89@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC90@toc@ha
	ld %r3, .LC90@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC90@toc@ha
	ld %r4, .LC90@toc@l(%r4)
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
	.p2align	2
	.type	lsearch,@function
	.section	.opd,"aw",@progbits
lsearch:                                # @lsearch
	.p2align	3, 0x0
	.quad	.Lfunc_begin44
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin44:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -208(%r1)
	std %r0, 224(%r1)
	.cfi_def_cfa_offset 208
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 184(%r31)
	std %r4, 176(%r31)
	std %r5, 168(%r31)
	std %r6, 160(%r31)
	std %r7, 152(%r31)
	addis %r3, %r2, .LC91@toc@ha
	ld %r3, .LC91@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC91@toc@ha
	ld %r4, .LC91@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 160(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	ld %r3, 176(%r31)
	std %r3, 144(%r31)
	ld %r3, 168(%r31)
	ld %r3, 0(%r3)
	std %r3, 136(%r31)
	li %r3, 0
	std %r3, 128(%r31)
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	ld %r4, 136(%r31)
	cmpld	%r3, %r4
	bge %cr0, .LBB44_6
# %bb.2:                                #   in Loop: Header=BB44_1 Depth=1
	ld %r7, 120(%r31)                       # 8-byte Folded Reload
	addis %r3, %r2, .LC91@toc@ha
	ld %r3, .LC91@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC91@toc@ha
	ld %r4, .LC91@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r5, 152(%r31)
	ld %r3, 184(%r31)
	ld %r4, 144(%r31)
	ld %r6, 128(%r31)
	mulld %r6, %r6, %r7
	add %r4, %r4, %r6
	mr	%r6, %r2
	std %r6, 40(%r1)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB44_4
# %bb.3:
	ld %r5, 120(%r31)                       # 8-byte Folded Reload
	addis %r3, %r2, .LC92@toc@ha
	ld %r3, .LC92@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC92@toc@ha
	ld %r4, .LC92@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC91@toc@ha
	ld %r3, .LC91@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC91@toc@ha
	ld %r4, .LC91@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 144(%r31)
	ld %r4, 128(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 192(%r31)
	b .LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	b .LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	addis %r3, %r2, .LC92@toc@ha
	ld %r3, .LC92@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC92@toc@ha
	ld %r4, .LC92@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 128(%r31)
	addi %r3, %r3, 1
	std %r3, 128(%r31)
	b .LBB44_1
.LBB44_6:
	ld %r5, 120(%r31)                       # 8-byte Folded Reload
	addis %r3, %r2, .LC92@toc@ha
	ld %r3, .LC92@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC92@toc@ha
	ld %r4, .LC92@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 136(%r31)
	addi %r3, %r3, 1
	ld %r4, 168(%r31)
	std %r3, 0(%r4)
	ld %r3, 144(%r31)
	ld %r4, 136(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	ld %r4, 184(%r31)
	ld %r5, 160(%r31)
	bl memcpy
	nop
                                        # kill: def $x4 killed $x3
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
	std %r3, 192(%r31)
.LBB44_7:
	ld %r3, 192(%r31)
	addi %r1, %r1, 208
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
	.p2align	2
	.type	lfind,@function
	.section	.opd,"aw",@progbits
lfind:                                  # @lfind
	.p2align	3, 0x0
	.quad	.Lfunc_begin45
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin45:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -208(%r1)
	std %r0, 224(%r1)
	.cfi_def_cfa_offset 208
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 184(%r31)
	std %r4, 176(%r31)
	std %r5, 168(%r31)
	std %r6, 160(%r31)
	std %r7, 152(%r31)
	addis %r3, %r2, .LC93@toc@ha
	ld %r3, .LC93@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC93@toc@ha
	ld %r4, .LC93@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 160(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	ld %r3, 176(%r31)
	std %r3, 144(%r31)
	ld %r3, 168(%r31)
	ld %r3, 0(%r3)
	std %r3, 136(%r31)
	li %r3, 0
	std %r3, 128(%r31)
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	ld %r4, 136(%r31)
	cmpld	%r3, %r4
	bge %cr0, .LBB45_6
# %bb.2:                                #   in Loop: Header=BB45_1 Depth=1
	ld %r7, 120(%r31)                       # 8-byte Folded Reload
	addis %r3, %r2, .LC93@toc@ha
	ld %r3, .LC93@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC93@toc@ha
	ld %r4, .LC93@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r5, 152(%r31)
	ld %r3, 184(%r31)
	ld %r4, 144(%r31)
	ld %r6, 128(%r31)
	mulld %r6, %r6, %r7
	add %r4, %r4, %r6
	mr	%r6, %r2
	std %r6, 40(%r1)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB45_4
# %bb.3:
	ld %r5, 120(%r31)                       # 8-byte Folded Reload
	addis %r3, %r2, .LC94@toc@ha
	ld %r3, .LC94@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC93@toc@ha
	ld %r3, .LC93@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC93@toc@ha
	ld %r4, .LC93@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 144(%r31)
	ld %r4, 128(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 192(%r31)
	b .LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	b .LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	addis %r3, %r2, .LC94@toc@ha
	ld %r3, .LC94@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 128(%r31)
	addi %r3, %r3, 1
	std %r3, 128(%r31)
	b .LBB45_1
.LBB45_6:
	addis %r3, %r2, .LC94@toc@ha
	ld %r3, .LC94@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 0
	std %r3, 192(%r31)
.LBB45_7:
	ld %r3, 192(%r31)
	addi %r1, %r1, 208
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
	.p2align	2
	.type	abs,@function
	.section	.opd,"aw",@progbits
abs:                                    # @abs
	.p2align	3, 0x0
	.quad	.Lfunc_begin46
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin46:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC95@toc@ha
	ld %r3, .LC95@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	ble %cr0, .LBB46_2
# %bb.1:
	addis %r3, %r2, .LC96@toc@ha
	ld %r3, .LC96@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC95@toc@ha
	ld %r3, .LC95@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC95@toc@ha
	ld %r4, .LC95@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	b .LBB46_3
.LBB46_2:
	addis %r3, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
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
	.p2align	2
	.type	atoi,@function
	.section	.opd,"aw",@progbits
atoi:                                   # @atoi
	.p2align	3, 0x0
	.quad	.Lfunc_begin47
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin47:
	.cfi_startproc
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
	std %r3, 128(%r31)
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, 124(%r31)
	li %r3, 0
	stw %r3, 120(%r31)
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_3
# %bb.2:                                #   in Loop: Header=BB47_1 Depth=1
	addis %r3, %r2, .LC99@toc@ha
	ld %r3, .LC99@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 128(%r31)
	addi %r3, %r3, 1
	std %r3, 128(%r31)
	b .LBB47_1
.LBB47_3:
	ld %r3, 128(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB47_6
	b .LBB47_4
.LBB47_4:
	lwz %r3, 116(%r31)                      # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB47_8
	b .LBB47_5
.LBB47_5:
	addis %r3, %r2, .LC99@toc@ha
	ld %r3, .LC99@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 1
	stw %r3, 120(%r31)
	b .LBB47_7
.LBB47_6:
	addis %r3, %r2, .LC99@toc@ha
	ld %r3, .LC99@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 32(%r4)
.LBB47_7:
	ld %r3, 128(%r31)
	addi %r3, %r3, 1
	std %r3, 128(%r31)
.LBB47_8:
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 16(%r4)
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC100@toc@ha
	ld %r4, .LC100@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_11
# %bb.10:                               #   in Loop: Header=BB47_9 Depth=1
	addis %r3, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 124(%r31)
	mulli %r4, %r3, 10
	ld %r3, 128(%r31)
	addi %r5, %r3, 1
	std %r5, 128(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	sub	%r3, %r4, %r3
	stw %r3, 124(%r31)
	b .LBB47_9
.LBB47_11:
	lwz %r3, 120(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_13
# %bb.12:
	addis %r3, %r2, .LC99@toc@ha
	ld %r3, .LC99@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC97@toc@ha
	ld %r3, .LC97@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC97@toc@ha
	ld %r4, .LC97@toc@l(%r4)
	std %r3, 48(%r4)
	lwz %r3, 124(%r31)
	stw %r3, 112(%r31)                      # 4-byte Folded Spill
	b .LBB47_14
.LBB47_13:
	addis %r3, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r3, 124(%r31)
	neg %r3, %r3
	stw %r3, 112(%r31)                      # 4-byte Folded Spill
.LBB47_14:
	lwz %r3, 112(%r31)                      # 4-byte Folded Reload
	extsw %r3, %r3
	addi %r1, %r1, 144
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
	.p2align	2
	.type	atol,@function
	.section	.opd,"aw",@progbits
atol:                                   # @atol
	.p2align	3, 0x0
	.quad	.Lfunc_begin48
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin48:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 144(%r31)
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, 136(%r31)
	li %r3, 0
	stw %r3, 132(%r31)
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_3
# %bb.2:                                #   in Loop: Header=BB48_1 Depth=1
	addis %r3, %r2, .LC102@toc@ha
	ld %r3, .LC102@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 144(%r31)
	addi %r3, %r3, 1
	std %r3, 144(%r31)
	b .LBB48_1
.LBB48_3:
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 128(%r31)                      # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB48_6
	b .LBB48_4
.LBB48_4:
	lwz %r3, 128(%r31)                      # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB48_8
	b .LBB48_5
.LBB48_5:
	addis %r3, %r2, .LC102@toc@ha
	ld %r3, .LC102@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 1
	stw %r3, 132(%r31)
	b .LBB48_7
.LBB48_6:
	addis %r3, %r2, .LC102@toc@ha
	ld %r3, .LC102@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 32(%r4)
.LBB48_7:
	ld %r3, 144(%r31)
	addi %r3, %r3, 1
	std %r3, 144(%r31)
.LBB48_8:
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 16(%r4)
.LBB48_9:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC100@toc@ha
	ld %r4, .LC100@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_11
# %bb.10:                               #   in Loop: Header=BB48_9 Depth=1
	addis %r3, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 136(%r31)
	mulli %r4, %r3, 10
	ld %r3, 144(%r31)
	addi %r5, %r3, 1
	std %r5, 144(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	extsw %r3, %r3
	sub	%r3, %r4, %r3
	std %r3, 136(%r31)
	b .LBB48_9
.LBB48_11:
	lwz %r3, 132(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_13
# %bb.12:
	addis %r3, %r2, .LC102@toc@ha
	ld %r3, .LC102@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC101@toc@ha
	ld %r3, .LC101@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC101@toc@ha
	ld %r4, .LC101@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, 136(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB48_14
.LBB48_13:
	addis %r3, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 136(%r31)
	neg %r3, %r3
	std %r3, 120(%r31)                      # 8-byte Folded Spill
.LBB48_14:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	addi %r1, %r1, 160
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
	.p2align	2
	.type	atoll,@function
	.section	.opd,"aw",@progbits
atoll:                                  # @atoll
	.p2align	3, 0x0
	.quad	.Lfunc_begin49
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin49:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 144(%r31)
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, 136(%r31)
	li %r3, 0
	stw %r3, 132(%r31)
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC98@toc@ha
	ld %r4, .LC98@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_3
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	addis %r3, %r2, .LC104@toc@ha
	ld %r3, .LC104@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC104@toc@ha
	ld %r4, .LC104@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 144(%r31)
	addi %r3, %r3, 1
	std %r3, 144(%r31)
	b .LBB49_1
.LBB49_3:
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 128(%r31)                      # 4-byte Folded Spill
	cmplwi	%r3, 43
	beq	%cr0, .LBB49_6
	b .LBB49_4
.LBB49_4:
	lwz %r3, 128(%r31)                      # 4-byte Folded Reload
	cmplwi	%r3, 45
	bne	%cr0, .LBB49_8
	b .LBB49_5
.LBB49_5:
	addis %r3, %r2, .LC104@toc@ha
	ld %r3, .LC104@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC104@toc@ha
	ld %r4, .LC104@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 1
	stw %r3, 132(%r31)
	b .LBB49_7
.LBB49_6:
	addis %r3, %r2, .LC104@toc@ha
	ld %r3, .LC104@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC104@toc@ha
	ld %r4, .LC104@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 32(%r4)
.LBB49_7:
	ld %r3, 144(%r31)
	addi %r3, %r3, 1
	std %r3, 144(%r31)
.LBB49_8:
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 16(%r4)
.LBB49_9:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC100@toc@ha
	ld %r4, .LC100@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_11
# %bb.10:                               #   in Loop: Header=BB49_9 Depth=1
	addis %r3, %r2, .LC104@toc@ha
	ld %r4, .LC104@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 136(%r31)
	mulli %r4, %r3, 10
	ld %r3, 144(%r31)
	addi %r5, %r3, 1
	std %r5, 144(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	extsw %r3, %r3
	sub	%r3, %r4, %r3
	std %r3, 136(%r31)
	b .LBB49_9
.LBB49_11:
	lwz %r3, 132(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_13
# %bb.12:
	addis %r3, %r2, .LC104@toc@ha
	ld %r3, .LC104@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC104@toc@ha
	ld %r4, .LC104@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC103@toc@ha
	ld %r3, .LC103@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC103@toc@ha
	ld %r4, .LC103@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, 136(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB49_14
.LBB49_13:
	addis %r3, %r2, .LC104@toc@ha
	ld %r4, .LC104@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 136(%r31)
	neg %r3, %r3
	std %r3, 120(%r31)                      # 8-byte Folded Spill
.LBB49_14:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	addi %r1, %r1, 160
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
	.p2align	2
	.type	bsearch,@function
	.section	.opd,"aw",@progbits
bsearch:                                # @bsearch
	.p2align	3, 0x0
	.quad	.Lfunc_begin50
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin50:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -192(%r1)
	std %r0, 208(%r1)
	.cfi_def_cfa_offset 192
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 168(%r31)
	std %r4, 160(%r31)
	std %r5, 152(%r31)
	std %r6, 144(%r31)
	std %r7, 136(%r31)
	addis %r3, %r2, .LC105@toc@ha
	ld %r3, .LC105@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC105@toc@ha
	ld %r4, .LC105@toc@l(%r4)
	std %r3, 0(%r4)
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 152(%r31)
	cmpldi	%r3, 0
	ble %cr0, .LBB50_9
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
	addis %r3, %r2, .LC105@toc@ha
	ld %r4, .LC105@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 160(%r31)
	ld %r4, 144(%r31)
	ld %r5, 152(%r31)
	rldicl %r5, %r5, 63, 1
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 128(%r31)
	ld %r5, 136(%r31)
	ld %r3, 168(%r31)
	ld %r4, 128(%r31)
	mr	%r6, %r2
	std %r6, 40(%r1)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 124(%r31)
	lwz %r3, 124(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB50_4
# %bb.3:                                #   in Loop: Header=BB50_1 Depth=1
	addis %r3, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC105@toc@ha
	ld %r4, .LC105@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 152(%r31)
	rldicl %r3, %r3, 63, 1
	std %r3, 152(%r31)
	b .LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	lwz %r3, 124(%r31)
	cmpwi	%r3, 0
	ble %cr0, .LBB50_6
# %bb.5:                                #   in Loop: Header=BB50_1 Depth=1
	addis %r3, %r2, .LC105@toc@ha
	ld %r4, .LC105@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 128(%r31)
	ld %r4, 144(%r31)
	add %r3, %r3, %r4
	std %r3, 160(%r31)
	ld %r4, 152(%r31)
	rldicl %r3, %r4, 63, 1
	addi %r3, %r3, 1
	sub	%r3, %r4, %r3
	std %r3, 152(%r31)
	b .LBB50_7
.LBB50_6:
	addis %r3, %r2, .LC106@toc@ha
	ld %r3, .LC106@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 128(%r31)
	std %r3, 176(%r31)
	b .LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	addis %r3, %r2, .LC106@toc@ha
	ld %r3, .LC106@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r4)
	std %r3, 24(%r4)
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	b .LBB50_1
.LBB50_9:
	addis %r3, %r2, .LC106@toc@ha
	ld %r3, .LC106@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, 176(%r31)
.LBB50_10:
	ld %r3, 176(%r31)
	addi %r1, %r1, 192
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
	.p2align	2
	.type	bsearch_r,@function
	.section	.opd,"aw",@progbits
bsearch_r:                              # @bsearch_r
	.p2align	3, 0x0
	.quad	.Lfunc_begin51
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin51:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -208(%r1)
	std %r0, 224(%r1)
	.cfi_def_cfa_offset 208
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 184(%r31)
	std %r4, 176(%r31)
	std %r5, 168(%r31)
	std %r6, 160(%r31)
	std %r7, 152(%r31)
	std %r8, 144(%r31)
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 176(%r31)
	std %r3, 136(%r31)
	ld %r3, 168(%r31)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 132(%r31)
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, 132(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB51_8
# %bb.2:                                #   in Loop: Header=BB51_1 Depth=1
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 136(%r31)
	lwz %r4, 132(%r31)
	srawi %r4, %r4, 1
	extsw %r4, %r4
	ld %r5, 160(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 120(%r31)
	ld %r6, 152(%r31)
	ld %r3, 184(%r31)
	ld %r4, 120(%r31)
	ld %r5, 144(%r31)
	mr	%r7, %r2
	std %r7, 40(%r1)
	ld %r7, 8(%r6)
	ld %r11, 16(%r6)
	ld %r6, 0(%r6)
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 128(%r31)
	lwz %r3, 128(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB51_4
# %bb.3:
	addis %r3, %r2, .LC108@toc@ha
	ld %r3, .LC108@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC108@toc@ha
	ld %r4, .LC108@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 120(%r31)
	std %r3, 192(%r31)
	b .LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	lwz %r3, 128(%r31)
	cmpwi	%r3, 0
	ble %cr0, .LBB51_6
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
	addis %r3, %r2, .LC108@toc@ha
	ld %r3, .LC108@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC108@toc@ha
	ld %r4, .LC108@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC107@toc@ha
	ld %r3, .LC107@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC107@toc@ha
	ld %r4, .LC107@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, 120(%r31)
	ld %r4, 160(%r31)
	add %r3, %r3, %r4
	std %r3, 136(%r31)
	lwz %r3, 132(%r31)
	addi %r3, %r3, -1
	stw %r3, 132(%r31)
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	b .LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	addis %r3, %r2, .LC108@toc@ha
	ld %r3, .LC108@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC108@toc@ha
	ld %r4, .LC108@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, 132(%r31)
	srawi %r3, %r3, 1
	stw %r3, 132(%r31)
	b .LBB51_1
.LBB51_8:
	addis %r3, %r2, .LC108@toc@ha
	ld %r3, .LC108@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC108@toc@ha
	ld %r4, .LC108@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	std %r3, 192(%r31)
.LBB51_9:
	ld %r3, 192(%r31)
	addi %r1, %r1, 208
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
	.p2align	2
	.type	div,@function
	.section	.opd,"aw",@progbits
div:                                    # @div
	.p2align	3, 0x0
	.quad	.Lfunc_begin52
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin52:
	.cfi_startproc
# %bb.0:
	std %r5, -24(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r4
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r5 killed $r5 killed $x5
	addis %r6, %r2, .LC109@toc@ha
	ld %r7, .LC109@toc@l(%r6)
	ld %r6, 0(%r7)
	addi %r6, %r6, 1
	std %r6, 0(%r7)
	stw %r5, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC110@toc@ha
	ld %r5, .LC110@toc@l(%r3)
	ld %r3, 0(%r5)
	addi %r3, %r3, 1
	std %r3, 0(%r5)
	lwz %r3, -12(%r1)
	lwz %r5, -16(%r1)
	divw %r3, %r3, %r5
	stw %r3, 0(%r4)
	lwz %r5, -12(%r1)
	lwz %r6, -16(%r1)
	divw %r3, %r5, %r6
	mullw %r3, %r3, %r6
	sub	%r3, %r5, %r3
	stw %r3, 4(%r4)
	blr
	.long	0
	.quad	0
.Lfunc_end52:
	.size	div, .Lfunc_end52-.Lfunc_begin52
	.cfi_endproc
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
	.section	.opd,"aw",@progbits
imaxabs:                                # @imaxabs
	.p2align	3, 0x0
	.quad	.Lfunc_begin53
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin53:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC111@toc@ha
	ld %r3, .LC111@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC111@toc@ha
	ld %r4, .LC111@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB53_2
# %bb.1:
	addis %r3, %r2, .LC112@toc@ha
	ld %r3, .LC112@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC111@toc@ha
	ld %r3, .LC111@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC111@toc@ha
	ld %r4, .LC111@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)                       # 8-byte Folded Spill
	b .LBB53_3
.LBB53_2:
	addis %r3, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
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
	.p2align	2
	.type	imaxdiv,@function
	.section	.opd,"aw",@progbits
imaxdiv:                                # @imaxdiv
	.p2align	3, 0x0
	.quad	.Lfunc_begin54
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin54:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
	addis %r6, %r2, .LC113@toc@ha
	ld %r7, .LC113@toc@l(%r6)
	ld %r6, 0(%r7)
	addi %r6, %r6, 1
	std %r6, 0(%r7)
	std %r3, -16(%r1)
	std %r5, -24(%r1)
	addis %r3, %r2, .LC114@toc@ha
	ld %r5, .LC114@toc@l(%r3)
	ld %r3, 0(%r5)
	addi %r3, %r3, 1
	std %r3, 0(%r5)
	ld %r3, -16(%r1)
	ld %r5, -24(%r1)
	divd %r3, %r3, %r5
	std %r3, 0(%r4)
	ld %r5, -16(%r1)
	ld %r6, -24(%r1)
	divd %r3, %r5, %r6
	mulld %r3, %r3, %r6
	sub	%r3, %r5, %r3
	std %r3, 8(%r4)
	blr
	.long	0
	.quad	0
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-.Lfunc_begin54
	.cfi_endproc
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	2
	.type	labs,@function
	.section	.opd,"aw",@progbits
labs:                                   # @labs
	.p2align	3, 0x0
	.quad	.Lfunc_begin55
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin55:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC115@toc@ha
	ld %r3, .LC115@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC115@toc@ha
	ld %r4, .LC115@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB55_2
# %bb.1:
	addis %r3, %r2, .LC116@toc@ha
	ld %r3, .LC116@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC115@toc@ha
	ld %r3, .LC115@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC115@toc@ha
	ld %r4, .LC115@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)                       # 8-byte Folded Spill
	b .LBB55_3
.LBB55_2:
	addis %r3, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
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
	.p2align	2
	.type	ldiv,@function
	.section	.opd,"aw",@progbits
ldiv:                                   # @ldiv
	.p2align	3, 0x0
	.quad	.Lfunc_begin56
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin56:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
	addis %r6, %r2, .LC117@toc@ha
	ld %r7, .LC117@toc@l(%r6)
	ld %r6, 0(%r7)
	addi %r6, %r6, 1
	std %r6, 0(%r7)
	std %r3, -16(%r1)
	std %r5, -24(%r1)
	addis %r3, %r2, .LC118@toc@ha
	ld %r5, .LC118@toc@l(%r3)
	ld %r3, 0(%r5)
	addi %r3, %r3, 1
	std %r3, 0(%r5)
	ld %r3, -16(%r1)
	ld %r5, -24(%r1)
	divd %r3, %r3, %r5
	std %r3, 0(%r4)
	ld %r5, -16(%r1)
	ld %r6, -24(%r1)
	divd %r3, %r5, %r6
	mulld %r3, %r3, %r6
	sub	%r3, %r5, %r3
	std %r3, 8(%r4)
	blr
	.long	0
	.quad	0
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-.Lfunc_begin56
	.cfi_endproc
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	2
	.type	llabs,@function
	.section	.opd,"aw",@progbits
llabs:                                  # @llabs
	.p2align	3, 0x0
	.quad	.Lfunc_begin57
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin57:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	addis %r3, %r2, .LC119@toc@ha
	ld %r3, .LC119@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC119@toc@ha
	ld %r4, .LC119@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB57_2
# %bb.1:
	addis %r3, %r2, .LC120@toc@ha
	ld %r3, .LC120@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC120@toc@ha
	ld %r4, .LC120@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC119@toc@ha
	ld %r3, .LC119@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC119@toc@ha
	ld %r4, .LC119@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)                       # 8-byte Folded Spill
	b .LBB57_3
.LBB57_2:
	addis %r3, %r2, .LC120@toc@ha
	ld %r4, .LC120@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
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
	.p2align	2
	.type	lldiv,@function
	.section	.opd,"aw",@progbits
lldiv:                                  # @lldiv
	.p2align	3, 0x0
	.quad	.Lfunc_begin58
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin58:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
	addis %r6, %r2, .LC121@toc@ha
	ld %r7, .LC121@toc@l(%r6)
	ld %r6, 0(%r7)
	addi %r6, %r6, 1
	std %r6, 0(%r7)
	std %r3, -16(%r1)
	std %r5, -24(%r1)
	addis %r3, %r2, .LC122@toc@ha
	ld %r5, .LC122@toc@l(%r3)
	ld %r3, 0(%r5)
	addi %r3, %r3, 1
	std %r3, 0(%r5)
	ld %r3, -16(%r1)
	ld %r5, -24(%r1)
	divd %r3, %r3, %r5
	std %r3, 0(%r4)
	ld %r5, -16(%r1)
	ld %r6, -24(%r1)
	divd %r3, %r5, %r6
	mulld %r3, %r3, %r6
	sub	%r3, %r5, %r3
	std %r3, 8(%r4)
	blr
	.long	0
	.quad	0
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-.Lfunc_begin58
	.cfi_endproc
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
	.section	.opd,"aw",@progbits
wcschr:                                 # @wcschr
	.p2align	3, 0x0
	.quad	.Lfunc_begin59
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin59:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC123@toc@ha
	ld %r3, .LC123@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC123@toc@ha
	ld %r4, .LC123@toc@l(%r4)
	std %r3, 0(%r4)
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB59_6
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	addis %r3, %r2, .LC124@toc@ha
	ld %r4, .LC124@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC123@toc@ha
	ld %r4, .LC123@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	lwz %r4, -20(%r1)
	stw %r4, -48(%r1)                       # 4-byte Folded Spill
	xor %r3, %r3, %r4
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB59_4
# %bb.3:                                #   in Loop: Header=BB59_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	lwz %r4, -52(%r1)                       # 4-byte Folded Reload
	lwz %r5, -48(%r1)                       # 4-byte Folded Reload
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB59_6
# %bb.5:                                #   in Loop: Header=BB59_1 Depth=1
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC124@toc@ha
	ld %r4, .LC124@toc@l(%r4)
	ld %r4, 8(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC124@toc@ha
	ld %r5, .LC124@toc@l(%r5)
	std %r4, 8(%r5)
	addis %r4, %r2, .LC123@toc@ha
	ld %r4, .LC123@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC123@toc@ha
	ld %r5, .LC123@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB59_9
	b .LBB59_7
.LBB59_7:                               #   in Loop: Header=BB59_1 Depth=1
	addis %r3, %r2, .LC123@toc@ha
	ld %r3, .LC123@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC123@toc@ha
	ld %r4, .LC123@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB59_1 Depth=1
	addis %r3, %r2, .LC124@toc@ha
	ld %r3, .LC124@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC124@toc@ha
	ld %r4, .LC124@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	b .LBB59_1
.LBB59_9:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB59_11
# %bb.10:
	addis %r3, %r2, .LC124@toc@ha
	ld %r3, .LC124@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC124@toc@ha
	ld %r4, .LC124@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC123@toc@ha
	ld %r3, .LC123@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC123@toc@ha
	ld %r4, .LC123@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	std %r3, -64(%r1)                       # 8-byte Folded Spill
	b .LBB59_12
.LBB59_11:
	addis %r3, %r2, .LC124@toc@ha
	ld %r3, .LC124@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC124@toc@ha
	ld %r4, .LC124@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 0
	std %r3, -64(%r1)                       # 8-byte Folded Spill
.LBB59_12:
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-.Lfunc_begin59
	.cfi_endproc
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
	.section	.opd,"aw",@progbits
wcscmp:                                 # @wcscmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin60
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin60:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC125@toc@ha
	ld %r3, .LC125@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	std %r3, 0(%r4)
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB60_8
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC126@toc@ha
	ld %r3, .LC126@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC125@toc@ha
	ld %r3, .LC125@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB60_8
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC126@toc@ha
	ld %r3, .LC126@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC125@toc@ha
	ld %r3, .LC125@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	lwz %r3, 0(%r3)
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB60_6
# %bb.5:                                #   in Loop: Header=BB60_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	lwz %r4, -40(%r1)                       # 4-byte Folded Reload
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	cmpwi	%r4, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB60_8
# %bb.7:                                #   in Loop: Header=BB60_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC126@toc@ha
	ld %r5, .LC126@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC125@toc@ha
	ld %r5, .LC125@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB60_11
	b .LBB60_9
.LBB60_9:                               #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC125@toc@ha
	ld %r3, .LC125@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.10:                               #   in Loop: Header=BB60_1 Depth=1
	addis %r3, %r2, .LC126@toc@ha
	ld %r3, .LC126@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	addi %r3, %r3, 4
	std %r3, -24(%r1)
	b .LBB60_1
.LBB60_11:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB60_13
# %bb.12:
	addis %r3, %r2, .LC126@toc@ha
	ld %r3, .LC126@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC125@toc@ha
	ld %r3, .LC125@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC125@toc@ha
	ld %r4, .LC125@toc@l(%r4)
	std %r3, 48(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	b .LBB60_16
.LBB60_13:
	addis %r3, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB60_15
# %bb.14:
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB60_15:
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
.LBB60_16:
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-.Lfunc_begin60
	.cfi_endproc
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
	.section	.opd,"aw",@progbits
wcscpy:                                 # @wcscpy
	.p2align	3, 0x0
	.quad	.Lfunc_begin61
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin61:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC127@toc@ha
	ld %r5, .LC127@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC127@toc@ha
	ld %r6, .LC127@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC128@toc@ha
	ld %r3, .LC128@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC128@toc@ha
	ld %r4, .LC128@toc@l(%r4)
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
	addis %r3, %r2, .LC127@toc@ha
	ld %r3, .LC127@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC127@toc@ha
	ld %r4, .LC127@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC128@toc@ha
	ld %r3, .LC128@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC128@toc@ha
	ld %r4, .LC128@toc@l(%r4)
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
	.p2align	2
	.type	wcslen,@function
	.section	.opd,"aw",@progbits
wcslen:                                 # @wcslen
	.p2align	3, 0x0
	.quad	.Lfunc_begin62
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin62:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC129@toc@ha
	ld %r4, .LC129@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC129@toc@ha
	ld %r5, .LC129@toc@l(%r5)
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC130@toc@ha
	ld %r3, .LC130@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC130@toc@ha
	ld %r4, .LC130@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB62_4
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	addis %r3, %r2, .LC130@toc@ha
	ld %r3, .LC130@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC130@toc@ha
	ld %r4, .LC130@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.3:                                #   in Loop: Header=BB62_1 Depth=1
	addis %r3, %r2, .LC129@toc@ha
	ld %r3, .LC129@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC129@toc@ha
	ld %r4, .LC129@toc@l(%r4)
	std %r3, 8(%r4)
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
	.p2align	2
	.type	wcsncmp,@function
	.section	.opd,"aw",@progbits
wcsncmp:                                # @wcsncmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin63
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin63:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 0(%r4)
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB63_10
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB63_10
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 56(%r4)
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB63_10
# %bb.5:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.6:                                #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	lwz %r3, 0(%r3)
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB63_8
# %bb.7:                                #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r4, -48(%r1)                       # 4-byte Folded Reload
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB63_10
# %bb.9:                                #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC132@toc@ha
	ld %r5, .LC132@toc@l(%r5)
	std %r4, 24(%r5)
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC131@toc@ha
	ld %r5, .LC131@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB63_10:                              #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB63_13
	b .LBB63_11
.LBB63_11:                              #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.12:                               #   in Loop: Header=BB63_1 Depth=1
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 32(%r4)
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
.LBB63_13:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB63_20
# %bb.14:
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 64(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB63_16
# %bb.15:
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 40(%r4)
	addis %r3, %r2, .LC131@toc@ha
	ld %r3, .LC131@toc@l(%r3)
	ld %r3, 72(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC131@toc@ha
	ld %r4, .LC131@toc@l(%r4)
	std %r3, 72(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB63_19
.LBB63_16:
	addis %r3, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -64(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB63_18
# %bb.17:
	lwz %r3, -64(%r1)                       # 4-byte Folded Reload
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
.LBB63_18:
	lwz %r3, -60(%r1)                       # 4-byte Folded Reload
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
.LBB63_19:
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
	b .LBB63_21
.LBB63_20:
	addis %r3, %r2, .LC132@toc@ha
	ld %r3, .LC132@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r4)
	std %r3, 56(%r4)
	li %r3, 0
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
.LBB63_21:
	lwz %r3, -68(%r1)                       # 4-byte Folded Reload
	extsw %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-.Lfunc_begin63
	.cfi_endproc
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
	.section	.opd,"aw",@progbits
wmemchr:                                # @wmemchr
	.p2align	3, 0x0
	.quad	.Lfunc_begin64
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin64:
	.cfi_startproc
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC133@toc@ha
	ld %r3, .LC133@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r4)
	std %r3, 0(%r4)
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB64_6
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	addis %r3, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	lwz %r4, -20(%r1)
	stw %r4, -56(%r1)                       # 4-byte Folded Spill
	xor %r3, %r3, %r4
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB64_4
# %bb.3:                                #   in Loop: Header=BB64_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	lwz %r4, -60(%r1)                       # 4-byte Folded Reload
	lwz %r5, -56(%r1)                       # 4-byte Folded Reload
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -64(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB64_6
# %bb.5:                                #   in Loop: Header=BB64_1 Depth=1
	lwz %r3, -64(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r4)
	ld %r4, 8(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC134@toc@ha
	ld %r5, .LC134@toc@l(%r5)
	std %r4, 8(%r5)
	addis %r4, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC133@toc@ha
	ld %r5, .LC133@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB64_9
	b .LBB64_7
.LBB64_7:                               #   in Loop: Header=BB64_1 Depth=1
	addis %r3, %r2, .LC133@toc@ha
	ld %r3, .LC133@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB64_1 Depth=1
	addis %r3, %r2, .LC134@toc@ha
	ld %r3, .LC134@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	b .LBB64_1
.LBB64_9:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB64_11
# %bb.10:
	addis %r3, %r2, .LC134@toc@ha
	ld %r3, .LC134@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC133@toc@ha
	ld %r3, .LC133@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC133@toc@ha
	ld %r4, .LC133@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	std %r3, -72(%r1)                       # 8-byte Folded Spill
	b .LBB64_12
.LBB64_11:
	addis %r3, %r2, .LC134@toc@ha
	ld %r3, .LC134@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 0
	std %r3, -72(%r1)                       # 8-byte Folded Spill
.LBB64_12:
	ld %r3, -72(%r1)                        # 8-byte Folded Reload
	blr
	.long	0
	.quad	0
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-.Lfunc_begin64
	.cfi_endproc
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
	.section	.opd,"aw",@progbits
wmemcmp:                                # @wmemcmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin65
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin65:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC135@toc@ha
	ld %r3, .LC135@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC135@toc@ha
	ld %r4, .LC135@toc@l(%r4)
	std %r3, 0(%r4)
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB65_4
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	addis %r3, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC135@toc@ha
	ld %r4, .LC135@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lwz %r5, 0(%r3)
	xor %r3, %r4, %r5
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	cmpw	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB65_4
# %bb.3:                                #   in Loop: Header=BB65_1 Depth=1
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r4)
	ld %r4, 8(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC136@toc@ha
	ld %r5, .LC136@toc@l(%r5)
	std %r4, 8(%r5)
	addis %r4, %r2, .LC135@toc@ha
	ld %r4, .LC135@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC135@toc@ha
	ld %r5, .LC135@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB65_7
	b .LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	addis %r3, %r2, .LC135@toc@ha
	ld %r3, .LC135@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC135@toc@ha
	ld %r4, .LC135@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.6:                                #   in Loop: Header=BB65_1 Depth=1
	addis %r3, %r2, .LC136@toc@ha
	ld %r3, .LC136@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r4)
	std %r3, 16(%r4)
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
	addis %r3, %r2, .LC135@toc@ha
	ld %r3, .LC135@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC135@toc@ha
	ld %r4, .LC135@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB65_10
# %bb.9:
	addis %r3, %r2, .LC136@toc@ha
	ld %r3, .LC136@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC135@toc@ha
	ld %r3, .LC135@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC135@toc@ha
	ld %r4, .LC135@toc@l(%r4)
	std %r3, 40(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	b .LBB65_13
.LBB65_10:
	addis %r3, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB65_12
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
	addis %r3, %r2, .LC136@toc@ha
	ld %r3, .LC136@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r4)
	std %r3, 40(%r4)
	li %r3, 0
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
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
	.p2align	2
	.type	wmemcpy,@function
	.section	.opd,"aw",@progbits
wmemcpy:                                # @wmemcpy
	.p2align	3, 0x0
	.quad	.Lfunc_begin66
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin66:
	.cfi_startproc
# %bb.0:
	addis %r6, %r2, .LC137@toc@ha
	ld %r6, .LC137@toc@l(%r6)
	ld %r6, 0(%r6)
	addi %r6, %r6, 1
	addis %r7, %r2, .LC137@toc@ha
	ld %r7, .LC137@toc@l(%r7)
	std %r6, 0(%r7)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC138@toc@ha
	ld %r3, .LC138@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC138@toc@ha
	ld %r4, .LC138@toc@l(%r4)
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
	addis %r3, %r2, .LC137@toc@ha
	ld %r3, .LC137@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC138@toc@ha
	ld %r3, .LC138@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC138@toc@ha
	ld %r4, .LC138@toc@l(%r4)
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
	.p2align	2
	.type	wmemmove,@function
	.section	.opd,"aw",@progbits
wmemmove:                               # @wmemmove
	.p2align	3, 0x0
	.quad	.Lfunc_begin67
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin67:
	.cfi_startproc
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	std %r5, -40(%r1)
	addis %r3, %r2, .LC139@toc@ha
	ld %r3, .LC139@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC139@toc@ha
	ld %r4, .LC139@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	ld %r4, -32(%r1)
	cmpd	%r3, %r4
	bne	%cr0, .LBB67_2
# %bb.1:
	addis %r3, %r2, .LC140@toc@ha
	ld %r3, .LC140@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC139@toc@ha
	ld %r3, .LC139@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC139@toc@ha
	ld %r4, .LC139@toc@l(%r4)
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
	addis %r3, %r2, .LC140@toc@ha
	ld %r3, .LC140@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC139@toc@ha
	ld %r3, .LC139@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC139@toc@ha
	ld %r4, .LC139@toc@l(%r4)
	std %r3, 16(%r4)
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -40(%r1)
	addi %r4, %r3, -1
	std %r4, -40(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB67_6
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
	addis %r3, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC139@toc@ha
	ld %r4, .LC139@toc@l(%r3)
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
	addis %r3, %r2, .LC140@toc@ha
	ld %r3, .LC140@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC139@toc@ha
	ld %r3, .LC139@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC139@toc@ha
	ld %r4, .LC139@toc@l(%r4)
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
	addis %r3, %r2, .LC140@toc@ha
	ld %r3, .LC140@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r4)
	std %r3, 32(%r4)
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
	.p2align	2
	.type	wmemset,@function
	.section	.opd,"aw",@progbits
wmemset:                                # @wmemset
	.p2align	3, 0x0
	.quad	.Lfunc_begin68
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin68:
	.cfi_startproc
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r6, %r2, .LC141@toc@ha
	ld %r6, .LC141@toc@l(%r6)
	ld %r6, 0(%r6)
	addi %r6, %r6, 1
	addis %r7, %r2, .LC141@toc@ha
	ld %r7, .LC141@toc@l(%r7)
	std %r6, 0(%r7)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
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
	addis %r3, %r2, .LC141@toc@ha
	ld %r3, .LC141@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC142@toc@ha
	ld %r3, .LC142@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC142@toc@ha
	ld %r4, .LC142@toc@l(%r4)
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
	.p2align	2
	.type	bcopy,@function
	.section	.opd,"aw",@progbits
bcopy:                                  # @bcopy
	.p2align	3, 0x0
	.quad	.Lfunc_begin69
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin69:
	.cfi_startproc
# %bb.0:
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC143@toc@ha
	ld %r3, .LC143@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r4)
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
	addis %r3, %r2, .LC144@toc@ha
	ld %r3, .LC144@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC143@toc@ha
	ld %r3, .LC143@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r4)
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
	addis %r3, %r2, .LC143@toc@ha
	ld %r3, .LC143@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r4)
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
	addis %r3, %r2, .LC144@toc@ha
	ld %r3, .LC144@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r4)
	std %r3, 8(%r4)
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
	addis %r3, %r2, .LC143@toc@ha
	ld %r3, .LC143@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r4)
	std %r3, 24(%r4)
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB69_11
# %bb.9:                                #   in Loop: Header=BB69_8 Depth=1
	addis %r3, %r2, .LC144@toc@ha
	ld %r3, .LC144@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC143@toc@ha
	ld %r3, .LC143@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC143@toc@ha
	ld %r4, .LC143@toc@l(%r4)
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
	addis %r3, %r2, .LC144@toc@ha
	ld %r3, .LC144@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r4)
	std %r3, 24(%r4)
.LBB69_12:
	addis %r3, %r2, .LC144@toc@ha
	ld %r3, .LC144@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r4)
	std %r3, 32(%r4)
.LBB69_13:
	blr
	.long	0
	.quad	0
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-.Lfunc_begin69
	.cfi_endproc
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
	.section	.opd,"aw",@progbits
rotl64:                                 # @rotl64
	.p2align	3, 0x0
	.quad	.Lfunc_begin70
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin70:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC145@toc@ha
	ld %r6, .LC145@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC146@toc@ha
	ld %r4, .LC146@toc@l(%r3)
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
	.p2align	2
	.type	rotr64,@function
	.section	.opd,"aw",@progbits
rotr64:                                 # @rotr64
	.p2align	3, 0x0
	.quad	.Lfunc_begin71
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin71:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC147@toc@ha
	ld %r6, .LC147@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC148@toc@ha
	ld %r4, .LC148@toc@l(%r3)
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
	.p2align	2
	.type	rotl32,@function
	.section	.opd,"aw",@progbits
rotl32:                                 # @rotl32
	.p2align	3, 0x0
	.quad	.Lfunc_begin72
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin72:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC149@toc@ha
	ld %r6, .LC149@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC150@toc@ha
	ld %r4, .LC150@toc@l(%r3)
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
	.p2align	2
	.type	rotr32,@function
	.section	.opd,"aw",@progbits
rotr32:                                 # @rotr32
	.p2align	3, 0x0
	.quad	.Lfunc_begin73
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin73:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC151@toc@ha
	ld %r6, .LC151@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC152@toc@ha
	ld %r4, .LC152@toc@l(%r3)
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
	.p2align	2
	.type	rotl_sz,@function
	.section	.opd,"aw",@progbits
rotl_sz:                                # @rotl_sz
	.p2align	3, 0x0
	.quad	.Lfunc_begin74
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin74:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC153@toc@ha
	ld %r6, .LC153@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC154@toc@ha
	ld %r4, .LC154@toc@l(%r3)
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
	.p2align	2
	.type	rotr_sz,@function
	.section	.opd,"aw",@progbits
rotr_sz:                                # @rotr_sz
	.p2align	3, 0x0
	.quad	.Lfunc_begin75
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin75:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC155@toc@ha
	ld %r6, .LC155@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC156@toc@ha
	ld %r4, .LC156@toc@l(%r3)
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
	.p2align	2
	.type	rotl16,@function
	.section	.opd,"aw",@progbits
rotl16:                                 # @rotl16
	.p2align	3, 0x0
	.quad	.Lfunc_begin76
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin76:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC157@toc@ha
	ld %r6, .LC157@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	sth %r4, -10(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC158@toc@ha
	ld %r4, .LC158@toc@l(%r3)
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
	.p2align	2
	.type	rotr16,@function
	.section	.opd,"aw",@progbits
rotr16:                                 # @rotr16
	.p2align	3, 0x0
	.quad	.Lfunc_begin77
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin77:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC159@toc@ha
	ld %r6, .LC159@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	sth %r4, -10(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC160@toc@ha
	ld %r4, .LC160@toc@l(%r3)
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
	.p2align	2
	.type	rotl8,@function
	.section	.opd,"aw",@progbits
rotl8:                                  # @rotl8
	.p2align	3, 0x0
	.quad	.Lfunc_begin78
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin78:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC161@toc@ha
	ld %r6, .LC161@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	stb %r4, -9(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC162@toc@ha
	ld %r4, .LC162@toc@l(%r3)
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
	.p2align	2
	.type	rotr8,@function
	.section	.opd,"aw",@progbits
rotr8:                                  # @rotr8
	.p2align	3, 0x0
	.quad	.Lfunc_begin79
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin79:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC163@toc@ha
	ld %r6, .LC163@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	stb %r4, -9(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC164@toc@ha
	ld %r4, .LC164@toc@l(%r3)
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
	.p2align	2
	.type	bswap_16,@function
	.section	.opd,"aw",@progbits
bswap_16:                               # @bswap_16
	.p2align	3, 0x0
	.quad	.Lfunc_begin80
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin80:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC165@toc@ha
	ld %r4, .LC165@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC165@toc@ha
	ld %r5, .LC165@toc@l(%r5)
	std %r4, 0(%r5)
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC166@toc@ha
	ld %r3, .LC166@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC166@toc@ha
	ld %r4, .LC166@toc@l(%r4)
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
	.p2align	2
	.type	bswap_32,@function
	.section	.opd,"aw",@progbits
bswap_32:                               # @bswap_32
	.p2align	3, 0x0
	.quad	.Lfunc_begin81
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin81:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC167@toc@ha
	ld %r4, .LC167@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC167@toc@ha
	ld %r5, .LC167@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC168@toc@ha
	ld %r3, .LC168@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC168@toc@ha
	ld %r4, .LC168@toc@l(%r4)
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
	.p2align	2
	.type	bswap_64,@function
	.section	.opd,"aw",@progbits
bswap_64:                               # @bswap_64
	.p2align	3, 0x0
	.quad	.Lfunc_begin82
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin82:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC169@toc@ha
	ld %r5, .LC169@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC170@toc@ha
	ld %r4, .LC170@toc@l(%r3)
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
	.p2align	2
	.type	ffs,@function
	.section	.opd,"aw",@progbits
ffs:                                    # @ffs
	.p2align	3, 0x0
	.quad	.Lfunc_begin83
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin83:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC171@toc@ha
	ld %r3, .LC171@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC171@toc@ha
	ld %r4, .LC171@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, -20(%r1)
	cmpldi	%r3, 32
	bge %cr0, .LBB83_6
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	addis %r3, %r2, .LC171@toc@ha
	ld %r3, .LC171@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC171@toc@ha
	ld %r4, .LC171@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -16(%r1)
	lwz %r5, -20(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB83_4
# %bb.3:
	addis %r3, %r2, .LC172@toc@ha
	ld %r3, .LC172@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC172@toc@ha
	ld %r4, .LC172@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC171@toc@ha
	ld %r3, .LC171@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC171@toc@ha
	ld %r4, .LC171@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -12(%r1)
	b .LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	b .LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	addis %r3, %r2, .LC172@toc@ha
	ld %r3, .LC172@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC172@toc@ha
	ld %r4, .LC172@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -20(%r1)
	b .LBB83_1
.LBB83_6:
	addis %r3, %r2, .LC172@toc@ha
	ld %r3, .LC172@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC172@toc@ha
	ld %r4, .LC172@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	libiberty_ffs,@function
	.section	.opd,"aw",@progbits
libiberty_ffs:                          # @libiberty_ffs
	.p2align	3, 0x0
	.quad	.Lfunc_begin84
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin84:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC173@toc@ha
	ld %r3, .LC173@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC173@toc@ha
	ld %r4, .LC173@toc@l(%r4)
	std %r3, 0(%r4)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB84_2
# %bb.1:
	addis %r3, %r2, .LC174@toc@ha
	ld %r3, .LC174@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC173@toc@ha
	ld %r3, .LC173@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC173@toc@ha
	ld %r4, .LC173@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB84_7
.LBB84_2:
	addis %r3, %r2, .LC174@toc@ha
	ld %r3, .LC174@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	stw %r3, -20(%r1)
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	lbz %r3, -13(%r1)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	bne	%cr0, .LBB84_6
	b .LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	addis %r3, %r2, .LC173@toc@ha
	ld %r3, .LC173@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC173@toc@ha
	ld %r4, .LC173@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -16(%r1)
	srawi %r3, %r3, 1
	stw %r3, -16(%r1)
# %bb.5:                                #   in Loop: Header=BB84_3 Depth=1
	addis %r3, %r2, .LC174@toc@ha
	ld %r3, .LC174@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	gl_isinff,@function
	.section	.opd,"aw",@progbits
gl_isinff:                              # @gl_isinff
	.p2align	3, 0x0
	.quad	.Lfunc_begin85
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin85:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC175@toc@ha
	ld %r5, .LC175@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, 148(%r31)
	addis %r3, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 148(%r31)
	li %r4, -129
	rldicl %r4, %r4, 16, 32
	bl __ltsf2
	nop
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 144(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB85_5
	b .LBB85_1
.LBB85_1:
	addis %r3, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 148(%r31)
	lis %r4, 32639
	ori %r4, %r4, 65535
	bl __gtsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	mfcr %r3                                # cr0
	stw %r3, 132(%r31)
	li %r3, 0
	stw %r3, 136(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 140(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB85_3
# %bb.2:
	lwz %r3, 136(%r31)                      # 4-byte Folded Reload
	stw %r3, 140(%r31)                      # 4-byte Folded Spill
.LBB85_3:
	lwz %r3, 132(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 140(%r31)                      # 4-byte Folded Reload
	stw %r3, 128(%r31)                      # 4-byte Folded Spill
	stw %r3, 144(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB85_5
	b .LBB85_4
.LBB85_4:
	lwz %r3, 128(%r31)                      # 4-byte Folded Reload
	addis %r4, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC175@toc@ha
	ld %r5, .LC175@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC176@toc@ha
	ld %r4, .LC176@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC176@toc@ha
	ld %r5, .LC176@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, 144(%r31)                      # 4-byte Folded Spill
.LBB85_5:
	lwz %r3, 144(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	addi %r1, %r1, 160
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
	.p2align	2
	.type	gl_isinfd,@function
	.section	.opd,"aw",@progbits
gl_isinfd:                              # @gl_isinfd
	.p2align	3, 0x0
	.quad	.Lfunc_begin86
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin86:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -176(%r1)
	std %r0, 192(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	addis %r4, %r2, .LC177@toc@ha
	ld %r5, .LC177@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	std %r3, 160(%r31)
	addis %r3, %r2, .LC178@toc@ha
	ld %r4, .LC178@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 160(%r31)
	li %r4, -17
	rotldi	%r4, %r4, 48
	bl __ltdf2
	nop
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 156(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB86_5
	b .LBB86_1
.LBB86_1:
	addis %r3, %r2, .LC177@toc@ha
	ld %r4, .LC177@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC178@toc@ha
	ld %r4, .LC178@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 160(%r31)
	li %r4, -33
	rldicl %r4, %r4, 47, 1
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	mfcr %r3                                # cr0
	stw %r3, 144(%r31)
	li %r3, 0
	stw %r3, 148(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 152(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB86_3
# %bb.2:
	lwz %r3, 148(%r31)                      # 4-byte Folded Reload
	stw %r3, 152(%r31)                      # 4-byte Folded Spill
.LBB86_3:
	lwz %r3, 144(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 152(%r31)                      # 4-byte Folded Reload
	stw %r3, 140(%r31)                      # 4-byte Folded Spill
	stw %r3, 156(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB86_5
	b .LBB86_4
.LBB86_4:
	lwz %r3, 140(%r31)                      # 4-byte Folded Reload
	addis %r4, %r2, .LC177@toc@ha
	ld %r4, .LC177@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC177@toc@ha
	ld %r5, .LC177@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC178@toc@ha
	ld %r4, .LC178@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC178@toc@ha
	ld %r5, .LC178@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, 156(%r31)                      # 4-byte Folded Spill
.LBB86_5:
	lwz %r3, 156(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	addi %r1, %r1, 176
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
	.p2align	2
	.type	gl_isinfl,@function
	.section	.opd,"aw",@progbits
gl_isinfl:                              # @gl_isinfl
	.p2align	3, 0x0
	.quad	.Lfunc_begin87
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin87:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -192(%r1)
	std %r0, 208(%r1)
	.cfi_def_cfa_offset 192
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	addis %r5, %r2, .LC179@toc@ha
	ld %r6, .LC179@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, 168(%r31)
	std %r3, 160(%r31)
	addis %r3, %r2, .LC180@toc@ha
	ld %r4, .LC180@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 160(%r31)
	ld %r4, 168(%r31)
	li %r5, -17
	rotldi	%r5, %r5, 48
	li %r6, -4152
	rotldi	%r6, %r6, 52
	bl __gcc_qlt
	nop
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 156(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB87_5
	b .LBB87_1
.LBB87_1:
	addis %r3, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC180@toc@ha
	ld %r4, .LC180@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 160(%r31)
	ld %r4, 168(%r31)
	li %r5, -33
	rldicl %r5, %r5, 47, 1
	li %r6, -6200
	rotldi	%r6, %r6, 52
	bl __gcc_qgt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	mfcr %r3                                # cr0
	stw %r3, 144(%r31)
	li %r3, 0
	stw %r3, 148(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 152(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB87_3
# %bb.2:
	lwz %r3, 148(%r31)                      # 4-byte Folded Reload
	stw %r3, 152(%r31)                      # 4-byte Folded Spill
.LBB87_3:
	lwz %r3, 144(%r31)
	mtcrf 128, %r3                          # cr0
	lwz %r3, 152(%r31)                      # 4-byte Folded Reload
	stw %r3, 140(%r31)                      # 4-byte Folded Spill
	stw %r3, 156(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB87_5
	b .LBB87_4
.LBB87_4:
	lwz %r3, 140(%r31)                      # 4-byte Folded Reload
	addis %r4, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC179@toc@ha
	ld %r5, .LC179@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC180@toc@ha
	ld %r4, .LC180@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC180@toc@ha
	ld %r5, .LC180@toc@l(%r5)
	std %r4, 16(%r5)
	stw %r3, 156(%r31)                      # 4-byte Folded Spill
.LBB87_5:
	lwz %r3, 156(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	addi %r1, %r1, 192
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
	.p2align	2
	.type	_Qp_itoq,@function
	.section	.opd,"aw",@progbits
_Qp_itoq:                               # @_Qp_itoq
	.p2align	3, 0x0
	.quad	.Lfunc_begin88
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin88:
	.cfi_startproc
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
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC181@toc@ha
	ld %r6, .LC181@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, 128(%r31)
	stw %r3, 124(%r31)
	addis %r3, %r2, .LC182@toc@ha
	ld %r4, .LC182@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwa %r3, 124(%r31)
	bl __floatsidf
	nop
	bl __gcc_dtoq
	nop
	mr	%r5, %r4
	ld %r4, 128(%r31)
	std %r5, 8(%r4)
	std %r3, 0(%r4)
	addi %r1, %r1, 144
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
	.p2align	2
	.type	ldexpf,@function
	.section	.opd,"aw",@progbits
ldexpf:                                 # @ldexpf
	.p2align	3, 0x0
	.quad	.Lfunc_begin89
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin89:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC183@toc@ha
	ld %r6, .LC183@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	stw %r4, 148(%r31)
	stw %r3, 144(%r31)
	addis %r3, %r2, .LC184@toc@ha
	ld %r4, .LC184@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 148(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	cmpw	%r3, %r4
	bgt	%cr0, .LBB89_12
	b .LBB89_1
.LBB89_1:
	addis %r3, %r2, .LC183@toc@ha
	ld %r4, .LC183@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC184@toc@ha
	ld %r4, .LC184@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r4, 148(%r31)
	std %r4, 120(%r31)                      # 8-byte Folded Spill
	mr	%r3, %r4
	bl __addsf3
	nop
	ld %r4, 120(%r31)                       # 8-byte Folded Reload
	bl __eqsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB89_12
	b .LBB89_2
.LBB89_2:
	addis %r3, %r2, .LC183@toc@ha
	ld %r3, .LC183@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC183@toc@ha
	ld %r4, .LC183@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC184@toc@ha
	ld %r3, .LC184@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC184@toc@ha
	ld %r4, .LC184@toc@l(%r4)
	std %r3, 24(%r4)
# %bb.3:
	addis %r3, %r2, .LC184@toc@ha
	ld %r5, .LC184@toc@l(%r3)
	ld %r3, 8(%r5)
	addi %r3, %r3, 1
	std %r3, 8(%r5)
	lwz %r3, 144(%r31)
	srwi %r6, %r3, 31
                                        # implicit-def: $x4
	mr	%r4, %r6
	clrldi	%r6, %r4, 32
	ld %r4, 32(%r5)
	add %r4, %r4, %r6
	std %r4, 32(%r5)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 112(%r31)                      # 4-byte Folded Spill
	lis %r3, 16128
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB89_5
# %bb.4:
	lwz %r3, 112(%r31)                      # 4-byte Folded Reload
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
.LBB89_5:
	lwz %r3, 116(%r31)                      # 4-byte Folded Reload
	stw %r3, 140(%r31)
.LBB89_6:                               # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC184@toc@ha
	ld %r4, .LC184@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r4, 144(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB89_8
# %bb.7:                                #   in Loop: Header=BB89_6 Depth=1
	addis %r3, %r2, .LC183@toc@ha
	ld %r4, .LC183@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC184@toc@ha
	ld %r4, .LC184@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	lwz %r4, 140(%r31)
	lwz %r3, 148(%r31)
	bl __mulsf3
	nop
	stw %r3, 148(%r31)
.LBB89_8:                               #   in Loop: Header=BB89_6 Depth=1
	lwz %r3, 144(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 144(%r31)
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB89_10
# %bb.9:
	addis %r3, %r2, .LC184@toc@ha
	ld %r3, .LC184@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC184@toc@ha
	ld %r4, .LC184@toc@l(%r4)
	std %r3, 56(%r4)
	b .LBB89_11
.LBB89_10:                              #   in Loop: Header=BB89_6 Depth=1
	addis %r3, %r2, .LC183@toc@ha
	ld %r4, .LC183@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	lwz %r4, 140(%r31)
	mr	%r3, %r4
	bl __mulsf3
	nop
	stw %r3, 140(%r31)
	b .LBB89_6
.LBB89_11:
	b .LBB89_12
.LBB89_12:
	lwz %r3, 148(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	ldexp,@function
	.section	.opd,"aw",@progbits
ldexp:                                  # @ldexp
	.p2align	3, 0x0
	.quad	.Lfunc_begin90
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin90:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -176(%r1)
	std %r0, 192(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 136(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 136(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC185@toc@ha
	ld %r6, .LC185@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, 160(%r31)
	stw %r3, 156(%r31)
	addis %r3, %r2, .LC186@toc@ha
	ld %r4, .LC186@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 160(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 2047
	rldic %r4, %r4, 52, 1
	cmpd	%r3, %r4
	bgt	%cr0, .LBB90_12
	b .LBB90_1
.LBB90_1:
	addis %r3, %r2, .LC185@toc@ha
	ld %r4, .LC185@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC186@toc@ha
	ld %r4, .LC186@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r4, 160(%r31)
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	mr	%r3, %r4
	bl __adddf3
	nop
	ld %r4, 128(%r31)                       # 8-byte Folded Reload
	bl __eqdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB90_12
	b .LBB90_2
.LBB90_2:
	addis %r3, %r2, .LC185@toc@ha
	ld %r3, .LC185@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC185@toc@ha
	ld %r4, .LC185@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC186@toc@ha
	ld %r3, .LC186@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC186@toc@ha
	ld %r4, .LC186@toc@l(%r4)
	std %r3, 24(%r4)
# %bb.3:
	addis %r3, %r2, .LC186@toc@ha
	ld %r5, .LC186@toc@l(%r3)
	ld %r3, 8(%r5)
	addi %r3, %r3, 1
	std %r3, 8(%r5)
	lwz %r3, 156(%r31)
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
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	li %r3, 511
	rldic %r3, %r3, 53, 2
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	blt	%cr0, .LBB90_5
# %bb.4:
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
	std %r3, 120(%r31)                      # 8-byte Folded Spill
.LBB90_5:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r3, 144(%r31)
.LBB90_6:                               # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC186@toc@ha
	ld %r4, .LC186@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r4, 156(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB90_8
# %bb.7:                                #   in Loop: Header=BB90_6 Depth=1
	addis %r3, %r2, .LC185@toc@ha
	ld %r4, .LC185@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC186@toc@ha
	ld %r4, .LC186@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	ld %r4, 144(%r31)
	ld %r3, 160(%r31)
	bl __muldf3
	nop
	std %r3, 160(%r31)
.LBB90_8:                               #   in Loop: Header=BB90_6 Depth=1
	lwz %r3, 156(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 156(%r31)
	lwz %r3, 156(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB90_10
# %bb.9:
	addis %r3, %r2, .LC186@toc@ha
	ld %r3, .LC186@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC186@toc@ha
	ld %r4, .LC186@toc@l(%r4)
	std %r3, 56(%r4)
	b .LBB90_11
.LBB90_10:                              #   in Loop: Header=BB90_6 Depth=1
	addis %r3, %r2, .LC185@toc@ha
	ld %r4, .LC185@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r4, 144(%r31)
	mr	%r3, %r4
	bl __muldf3
	nop
	std %r3, 144(%r31)
	b .LBB90_6
.LBB90_11:
	b .LBB90_12
.LBB90_12:
	ld %r3, 160(%r31)
	addi %r1, %r1, 176
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
	.p2align	2
	.type	ldexpl,@function
	.section	.opd,"aw",@progbits
ldexpl:                                 # @ldexpl
	.p2align	3, 0x0
	.quad	.Lfunc_begin91
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin91:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -224(%r1)
	std %r0, 240(%r1)
	.cfi_def_cfa_offset 224
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r5, 152(%r31)                      # 8-byte Folded Spill
	mr	%r5, %r4
	mr	%r4, %r3
	ld %r3, 152(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r6, %r2, .LC187@toc@ha
	ld %r7, .LC187@toc@l(%r6)
	ld %r6, 0(%r7)
	addi %r6, %r6, 1
	std %r6, 0(%r7)
	std %r5, 200(%r31)
	std %r4, 192(%r31)
	stw %r3, 188(%r31)
	addis %r3, %r2, .LC188@toc@ha
	ld %r4, .LC188@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 192(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 2047
	rldic %r4, %r4, 52, 1
	cmpd	%r3, %r4
	bgt	%cr0, .LBB91_12
	b .LBB91_1
.LBB91_1:
	addis %r3, %r2, .LC187@toc@ha
	ld %r4, .LC187@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC188@toc@ha
	ld %r4, .LC188@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r5, 192(%r31)
	std %r5, 136(%r31)                      # 8-byte Folded Spill
	ld %r6, 200(%r31)
	std %r6, 144(%r31)                      # 8-byte Folded Spill
	mr	%r3, %r5
	mr	%r4, %r6
	bl __gcc_qadd
	nop
	ld %r5, 136(%r31)                       # 8-byte Folded Reload
	ld %r6, 144(%r31)                       # 8-byte Folded Reload
	bl __gcc_qeq
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB91_12
	b .LBB91_2
.LBB91_2:
	addis %r3, %r2, .LC187@toc@ha
	ld %r3, .LC187@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC187@toc@ha
	ld %r4, .LC187@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC188@toc@ha
	ld %r3, .LC188@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC188@toc@ha
	ld %r4, .LC188@toc@l(%r4)
	std %r3, 24(%r4)
# %bb.3:
	addis %r3, %r2, .LC188@toc@ha
	ld %r5, .LC188@toc@l(%r3)
	ld %r3, 8(%r5)
	addi %r3, %r3, 1
	std %r3, 8(%r5)
	lwz %r3, 188(%r31)
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
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	li %r3, 511
	rldic %r3, %r3, 53, 2
	std %r3, 128(%r31)                      # 8-byte Folded Spill
	blt	%cr0, .LBB91_5
# %bb.4:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r3, 128(%r31)                      # 8-byte Folded Spill
.LBB91_5:
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
	li %r4, 0
	std %r4, 168(%r31)
	std %r3, 160(%r31)
.LBB91_6:                               # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC188@toc@ha
	ld %r4, .LC188@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	lwz %r4, 188(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB91_8
# %bb.7:                                #   in Loop: Header=BB91_6 Depth=1
	addis %r3, %r2, .LC187@toc@ha
	ld %r4, .LC187@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC188@toc@ha
	ld %r4, .LC188@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	ld %r5, 160(%r31)
	ld %r6, 168(%r31)
	ld %r3, 192(%r31)
	ld %r4, 200(%r31)
	bl __gcc_qmul
	nop
	std %r4, 200(%r31)
	std %r3, 192(%r31)
.LBB91_8:                               #   in Loop: Header=BB91_6 Depth=1
	lwz %r3, 188(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 188(%r31)
	lwz %r3, 188(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB91_10
# %bb.9:
	addis %r3, %r2, .LC188@toc@ha
	ld %r3, .LC188@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC188@toc@ha
	ld %r4, .LC188@toc@l(%r4)
	std %r3, 56(%r4)
	b .LBB91_11
.LBB91_10:                              #   in Loop: Header=BB91_6 Depth=1
	addis %r3, %r2, .LC187@toc@ha
	ld %r4, .LC187@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r5, 160(%r31)
	ld %r6, 168(%r31)
	mr	%r3, %r5
	mr	%r4, %r6
	bl __gcc_qmul
	nop
	std %r4, 168(%r31)
	std %r3, 160(%r31)
	b .LBB91_6
.LBB91_11:
	b .LBB91_12
.LBB91_12:
	ld %r3, 192(%r31)
	ld %r4, 200(%r31)
	addi %r1, %r1, 224
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
	.p2align	2
	.type	memxor,@function
	.section	.opd,"aw",@progbits
memxor:                                 # @memxor
	.p2align	3, 0x0
	.quad	.Lfunc_begin92
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin92:
	.cfi_startproc
# %bb.0:
	addis %r6, %r2, .LC189@toc@ha
	ld %r6, .LC189@toc@l(%r6)
	ld %r6, 0(%r6)
	addi %r6, %r6, 1
	addis %r7, %r2, .LC189@toc@ha
	ld %r7, .LC189@toc@l(%r7)
	std %r6, 0(%r7)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC190@toc@ha
	ld %r3, .LC190@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC190@toc@ha
	ld %r4, .LC190@toc@l(%r4)
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
	addis %r3, %r2, .LC190@toc@ha
	ld %r3, .LC190@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC190@toc@ha
	ld %r4, .LC190@toc@l(%r4)
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
	addis %r3, %r2, .LC189@toc@ha
	ld %r3, .LC189@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC189@toc@ha
	ld %r4, .LC189@toc@l(%r4)
	std %r3, 8(%r4)
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
	.p2align	2
	.type	strncat,@function
	.section	.opd,"aw",@progbits
strncat:                                # @strncat
	.p2align	3, 0x0
	.quad	.Lfunc_begin93
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin93:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -192(%r1)
	std %r0, 208(%r1)
	.cfi_def_cfa_offset 192
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 176(%r31)
	std %r4, 168(%r31)
	std %r5, 160(%r31)
	addis %r3, %r2, .LC191@toc@ha
	ld %r3, .LC191@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC191@toc@ha
	ld %r4, .LC191@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 176(%r31)
	std %r3, 144(%r31)                      # 8-byte Folded Spill
	ld %r3, 176(%r31)
	mr	%r4, %r2
	std %r4, 40(%r1)
	addis %r4, %r2, .LC192@toc@ha
	ld %r4, .LC192@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
	mr	%r4, %r3
	ld %r3, 144(%r31)                       # 8-byte Folded Reload
	add %r3, %r3, %r4
	std %r3, 152(%r31)
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, 160(%r31)
	li %r3, 0
	cmpldi	%r4, 0
	stw %r3, 140(%r31)                      # 4-byte Folded Spill
	ble %cr0, .LBB93_6
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	addis %r3, %r2, .LC193@toc@ha
	ld %r4, .LC193@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC191@toc@ha
	ld %r4, .LC191@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 168(%r31)
	lbz %r3, 0(%r3)
	stw %r3, 128(%r31)                      # 4-byte Folded Spill
	ld %r4, 152(%r31)
	stb %r3, 0(%r4)
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, 132(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 136(%r31)                      # 4-byte Folded Spill
	bne	%cr0, .LBB93_4
# %bb.3:                                #   in Loop: Header=BB93_1 Depth=1
	lwz %r3, 132(%r31)                      # 4-byte Folded Reload
	stw %r3, 136(%r31)                      # 4-byte Folded Spill
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	lwz %r4, 128(%r31)                      # 4-byte Folded Reload
	lwz %r3, 136(%r31)                      # 4-byte Folded Reload
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	cmpwi	%r4, 0
	stw %r3, 140(%r31)                      # 4-byte Folded Spill
	beq	%cr0, .LBB93_6
# %bb.5:                                #   in Loop: Header=BB93_1 Depth=1
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	addis %r4, %r2, .LC193@toc@ha
	ld %r4, .LC193@toc@l(%r4)
	ld %r4, 8(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC193@toc@ha
	ld %r5, .LC193@toc@l(%r5)
	std %r4, 8(%r5)
	addis %r4, %r2, .LC191@toc@ha
	ld %r4, .LC191@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC191@toc@ha
	ld %r5, .LC191@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, 140(%r31)                      # 4-byte Folded Spill
.LBB93_6:                               #   in Loop: Header=BB93_1 Depth=1
	lwz %r3, 140(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB93_9
	b .LBB93_7
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	addis %r3, %r2, .LC191@toc@ha
	ld %r3, .LC191@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC191@toc@ha
	ld %r4, .LC191@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB93_1 Depth=1
	addis %r3, %r2, .LC193@toc@ha
	ld %r3, .LC193@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC193@toc@ha
	ld %r4, .LC193@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, 168(%r31)
	addi %r3, %r3, 1
	std %r3, 168(%r31)
	ld %r3, 152(%r31)
	addi %r3, %r3, 1
	std %r3, 152(%r31)
	ld %r3, 160(%r31)
	addi %r3, %r3, -1
	std %r3, 160(%r31)
	b .LBB93_1
.LBB93_9:
	addis %r3, %r2, .LC193@toc@ha
	ld %r3, .LC193@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC193@toc@ha
	ld %r4, .LC193@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 160(%r31)
	cmpdi	%r3, 0
	bne	%cr0, .LBB93_11
# %bb.10:
	addis %r3, %r2, .LC193@toc@ha
	ld %r3, .LC193@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC193@toc@ha
	ld %r4, .LC193@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC191@toc@ha
	ld %r3, .LC191@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC191@toc@ha
	ld %r4, .LC191@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r4, 152(%r31)
	li %r3, 0
	stb %r3, 0(%r4)
.LBB93_11:
	ld %r3, 176(%r31)
	addi %r1, %r1, 192
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
	.p2align	2
	.type	strnlen,@function
	.section	.opd,"aw",@progbits
strnlen:                                # @strnlen
	.p2align	3, 0x0
	.quad	.Lfunc_begin94
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin94:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC194@toc@ha
	ld %r5, .LC194@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC194@toc@ha
	ld %r6, .LC194@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC195@toc@ha
	ld %r3, .LC195@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC195@toc@ha
	ld %r4, .LC195@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, -32(%r1)
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	ld %r5, -24(%r1)
	li %r3, 0
	cmpld	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bge %cr0, .LBB94_6
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	addis %r3, %r2, .LC194@toc@ha
	ld %r4, .LC194@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC195@toc@ha
	ld %r4, .LC195@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -16(%r1)
	ld %r4, -32(%r1)
	lbzx %r3, %r3, %r4
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB94_4
# %bb.3:                                #   in Loop: Header=BB94_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	lwz %r4, -48(%r1)                       # 4-byte Folded Reload
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB94_6
# %bb.5:                                #   in Loop: Header=BB94_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC194@toc@ha
	ld %r4, .LC194@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC194@toc@ha
	ld %r5, .LC194@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC195@toc@ha
	ld %r4, .LC195@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC195@toc@ha
	ld %r5, .LC195@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB94_9
	b .LBB94_7
.LBB94_7:                               #   in Loop: Header=BB94_1 Depth=1
	addis %r3, %r2, .LC195@toc@ha
	ld %r3, .LC195@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC195@toc@ha
	ld %r4, .LC195@toc@l(%r4)
	std %r3, 8(%r4)
# %bb.8:                                #   in Loop: Header=BB94_1 Depth=1
	addis %r3, %r2, .LC194@toc@ha
	ld %r3, .LC194@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC194@toc@ha
	ld %r4, .LC194@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, -32(%r1)
	addi %r3, %r3, 1
	std %r3, -32(%r1)
	b .LBB94_1
.LBB94_9:
	ld %r3, -32(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-.Lfunc_begin94
	.cfi_endproc
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
	.section	.opd,"aw",@progbits
strpbrk:                                # @strpbrk
	.p2align	3, 0x0
	.quad	.Lfunc_begin95
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin95:
	.cfi_startproc
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	addis %r3, %r2, .LC196@toc@ha
	ld %r3, .LC196@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC196@toc@ha
	ld %r4, .LC196@toc@l(%r4)
	std %r3, 0(%r4)
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB95_8
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	addis %r3, %r2, .LC196@toc@ha
	ld %r3, .LC196@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC196@toc@ha
	ld %r4, .LC196@toc@l(%r4)
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
	addis %r3, %r2, .LC196@toc@ha
	ld %r3, .LC196@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC196@toc@ha
	ld %r4, .LC196@toc@l(%r4)
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
	addis %r3, %r2, .LC197@toc@ha
	ld %r3, .LC197@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC197@toc@ha
	ld %r4, .LC197@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC196@toc@ha
	ld %r3, .LC196@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC196@toc@ha
	ld %r4, .LC196@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	addis %r3, %r2, .LC197@toc@ha
	ld %r3, .LC197@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC197@toc@ha
	ld %r4, .LC197@toc@l(%r4)
	std %r3, 16(%r4)
	b .LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	addis %r3, %r2, .LC197@toc@ha
	ld %r3, .LC197@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC197@toc@ha
	ld %r4, .LC197@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, -24(%r1)
	addi %r3, %r3, 1
	std %r3, -24(%r1)
	b .LBB95_1
.LBB95_8:
	addis %r3, %r2, .LC197@toc@ha
	ld %r3, .LC197@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC197@toc@ha
	ld %r4, .LC197@toc@l(%r4)
	std %r3, 0(%r4)
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
	.p2align	2
	.type	strrchr,@function
	.section	.opd,"aw",@progbits
strrchr:                                # @strrchr
	.p2align	3, 0x0
	.quad	.Lfunc_begin96
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin96:
	.cfi_startproc
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r5, %r2, .LC198@toc@ha
	ld %r5, .LC198@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC198@toc@ha
	ld %r6, .LC198@toc@l(%r6)
	std %r5, 0(%r6)
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC199@toc@ha
	ld %r3, .LC199@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC199@toc@ha
	ld %r4, .LC199@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	std %r3, -32(%r1)
	b .LBB96_2
.LBB96_1:                               #   in Loop: Header=BB96_2 Depth=1
	addis %r3, %r2, .LC198@toc@ha
	ld %r3, .LC198@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC198@toc@ha
	ld %r4, .LC198@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC199@toc@ha
	ld %r3, .LC199@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC199@toc@ha
	ld %r4, .LC199@toc@l(%r4)
	std %r3, 8(%r4)
.LBB96_2:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -20(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB96_4
# %bb.3:                                #   in Loop: Header=BB96_2 Depth=1
	addis %r3, %r2, .LC198@toc@ha
	ld %r3, .LC198@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC198@toc@ha
	ld %r4, .LC198@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC199@toc@ha
	ld %r3, .LC199@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC199@toc@ha
	ld %r4, .LC199@toc@l(%r4)
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
	.p2align	2
	.type	strstr,@function
	.section	.opd,"aw",@progbits
strstr:                                 # @strstr
	.p2align	3, 0x0
	.quad	.Lfunc_begin97
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin97:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 136(%r31)
	std %r4, 128(%r31)
	addis %r3, %r2, .LC200@toc@ha
	ld %r3, .LC200@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC200@toc@ha
	ld %r4, .LC200@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 136(%r31)
	std %r3, 120(%r31)
	ld %r3, 128(%r31)
	mr	%r4, %r2
	std %r4, 40(%r1)
	addis %r4, %r2, .LC192@toc@ha
	ld %r4, .LC192@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
	std %r3, 112(%r31)
	ld %r3, 112(%r31)
	cmpdi	%r3, 0
	bne	%cr0, .LBB97_2
# %bb.1:
	addis %r3, %r2, .LC201@toc@ha
	ld %r3, .LC201@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC201@toc@ha
	ld %r4, .LC201@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC200@toc@ha
	ld %r3, .LC200@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC200@toc@ha
	ld %r4, .LC200@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 136(%r31)
	std %r3, 144(%r31)
	b .LBB97_9
.LBB97_2:
	b .LBB97_3
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 120(%r31)
	ld %r4, 128(%r31)
	lbz %r4, 0(%r4)
	mr	%r5, %r2
	std %r5, 40(%r1)
	extsw %r4, %r4
	addis %r5, %r2, .LC202@toc@ha
	ld %r5, .LC202@toc@l(%r5)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
	std %r3, 120(%r31)
	li %r4, 0
	cmpd	%r3, %r4
	beq	%cr0, .LBB97_8
# %bb.4:                                #   in Loop: Header=BB97_3 Depth=1
	addis %r3, %r2, .LC200@toc@ha
	ld %r3, .LC200@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC200@toc@ha
	ld %r4, .LC200@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 120(%r31)
	ld %r4, 128(%r31)
	ld %r5, 112(%r31)
	mr	%r6, %r2
	std %r6, 40(%r1)
	addis %r6, %r2, .LC203@toc@ha
	ld %r6, .LC203@toc@l(%r6)
	ld %r7, 8(%r6)
	ld %r11, 16(%r6)
	ld %r6, 0(%r6)
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB97_6
# %bb.5:
	addis %r3, %r2, .LC201@toc@ha
	ld %r3, .LC201@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC201@toc@ha
	ld %r4, .LC201@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC200@toc@ha
	ld %r3, .LC200@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC200@toc@ha
	ld %r4, .LC200@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, 120(%r31)
	std %r3, 144(%r31)
	b .LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	b .LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	addis %r3, %r2, .LC201@toc@ha
	ld %r3, .LC201@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC201@toc@ha
	ld %r4, .LC201@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, 120(%r31)
	addi %r3, %r3, 1
	std %r3, 120(%r31)
	b .LBB97_3
.LBB97_8:
	addis %r3, %r2, .LC201@toc@ha
	ld %r3, .LC201@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC201@toc@ha
	ld %r4, .LC201@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	std %r3, 144(%r31)
.LBB97_9:
	ld %r3, 144(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	copysign,@function
	.section	.opd,"aw",@progbits
copysign:                               # @copysign
	.p2align	3, 0x0
	.quad	.Lfunc_begin98
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin98:
	.cfi_startproc
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
	std %r3, 120(%r31)
	std %r4, 112(%r31)
	addis %r3, %r2, .LC204@toc@ha
	ld %r4, .LC204@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 120(%r31)
	li %r4, 0
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB98_3
	b .LBB98_1
.LBB98_1:
	addis %r3, %r2, .LC205@toc@ha
	ld %r4, .LC205@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC204@toc@ha
	ld %r4, .LC204@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 112(%r31)
	li %r4, 0
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB98_3
	b .LBB98_2
.LBB98_2:
	addis %r3, %r2, .LC205@toc@ha
	ld %r3, .LC205@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC205@toc@ha
	ld %r4, .LC205@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC204@toc@ha
	ld %r3, .LC204@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC204@toc@ha
	ld %r4, .LC204@toc@l(%r4)
	std %r3, 32(%r4)
	b .LBB98_6
.LBB98_3:
	addis %r3, %r2, .LC204@toc@ha
	ld %r4, .LC204@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 120(%r31)
	li %r4, 0
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB98_7
	b .LBB98_4
.LBB98_4:
	addis %r3, %r2, .LC205@toc@ha
	ld %r4, .LC205@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC204@toc@ha
	ld %r4, .LC204@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 112(%r31)
	li %r4, 0
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB98_7
	b .LBB98_5
.LBB98_5:
	addis %r3, %r2, .LC205@toc@ha
	ld %r3, .LC205@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC205@toc@ha
	ld %r4, .LC205@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC204@toc@ha
	ld %r3, .LC204@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC204@toc@ha
	ld %r4, .LC204@toc@l(%r4)
	std %r3, 48(%r4)
.LBB98_6:
	addis %r3, %r2, .LC204@toc@ha
	ld %r4, .LC204@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 120(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 128(%r31)
	b .LBB98_8
.LBB98_7:
	addis %r3, %r2, .LC205@toc@ha
	ld %r4, .LC205@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r3, 120(%r31)
	std %r3, 128(%r31)
.LBB98_8:
	ld %r3, 128(%r31)
	addi %r1, %r1, 144
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
	.p2align	2
	.type	memmem,@function
	.section	.opd,"aw",@progbits
memmem:                                 # @memmem
	.p2align	3, 0x0
	.quad	.Lfunc_begin99
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin99:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -176(%r1)
	std %r0, 192(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 152(%r31)
	std %r4, 144(%r31)
	std %r5, 136(%r31)
	std %r6, 128(%r31)
	addis %r3, %r2, .LC206@toc@ha
	ld %r4, .LC206@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 152(%r31)
	ld %r4, 144(%r31)
	add %r3, %r3, %r4
	ld %r4, 128(%r31)
	neg %r4, %r4
	add %r3, %r3, %r4
	std %r3, 112(%r31)
	ld %r3, 128(%r31)
	cmpdi	%r3, 0
	bne	%cr0, .LBB99_2
# %bb.1:
	addis %r3, %r2, .LC207@toc@ha
	ld %r3, .LC207@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC207@toc@ha
	ld %r4, .LC207@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC206@toc@ha
	ld %r3, .LC206@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC206@toc@ha
	ld %r4, .LC206@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, 152(%r31)
	std %r3, 160(%r31)
	b .LBB99_13
.LBB99_2:
	ld %r3, 144(%r31)
	ld %r4, 128(%r31)
	cmpld %cr7, %r3, %r4
	mfcr %r3                                # cr7
	rlwinm %r3, %r3, 29, 31, 31
                                        # kill: def $r4 killed $r3
	extsw %r3, %r3
	cmpdi	%r3, 0
	beq	%cr0, .LBB99_4
# %bb.3:
	addis %r3, %r2, .LC207@toc@ha
	ld %r3, .LC207@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC207@toc@ha
	ld %r4, .LC207@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC206@toc@ha
	ld %r3, .LC206@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC206@toc@ha
	ld %r4, .LC206@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 0
	std %r3, 160(%r31)
	b .LBB99_13
.LBB99_4:
	ld %r3, 152(%r31)
	std %r3, 120(%r31)
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 120(%r31)
	ld %r4, 112(%r31)
	cmpld	%r3, %r4
	bgt	%cr0, .LBB99_12
# %bb.6:                                #   in Loop: Header=BB99_5 Depth=1
	addis %r3, %r2, .LC206@toc@ha
	ld %r3, .LC206@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC206@toc@ha
	ld %r4, .LC206@toc@l(%r4)
	std %r3, 24(%r4)
	ld %r3, 120(%r31)
	lbz %r3, 0(%r3)
	ld %r4, 136(%r31)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	bne	%cr0, .LBB99_10
# %bb.7:                                #   in Loop: Header=BB99_5 Depth=1
	addis %r3, %r2, .LC207@toc@ha
	ld %r4, .LC207@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC206@toc@ha
	ld %r4, .LC206@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 120(%r31)
	addi %r3, %r3, 1
	ld %r4, 136(%r31)
	addi %r4, %r4, 1
	ld %r5, 128(%r31)
	addi %r5, %r5, -1
	mr	%r6, %r2
	std %r6, 40(%r1)
	addis %r6, %r2, .LC208@toc@ha
	ld %r6, .LC208@toc@l(%r6)
	ld %r7, 8(%r6)
	ld %r11, 16(%r6)
	ld %r6, 0(%r6)
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB99_10
# %bb.8:
	addis %r3, %r2, .LC207@toc@ha
	ld %r3, .LC207@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC207@toc@ha
	ld %r4, .LC207@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC206@toc@ha
	ld %r3, .LC206@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC206@toc@ha
	ld %r4, .LC206@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.9:
	addis %r3, %r2, .LC206@toc@ha
	ld %r3, .LC206@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC206@toc@ha
	ld %r4, .LC206@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, 120(%r31)
	std %r3, 160(%r31)
	b .LBB99_13
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	b .LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_5 Depth=1
	addis %r3, %r2, .LC207@toc@ha
	ld %r3, .LC207@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC207@toc@ha
	ld %r4, .LC207@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r3, 120(%r31)
	addi %r3, %r3, 1
	std %r3, 120(%r31)
	b .LBB99_5
.LBB99_12:
	addis %r3, %r2, .LC207@toc@ha
	ld %r3, .LC207@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC207@toc@ha
	ld %r4, .LC207@toc@l(%r4)
	std %r3, 40(%r4)
	li %r3, 0
	std %r3, 160(%r31)
.LBB99_13:
	ld %r3, 160(%r31)
	addi %r1, %r1, 176
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
	.p2align	2
	.type	mempcpy,@function
	.section	.opd,"aw",@progbits
mempcpy:                                # @mempcpy
	.p2align	3, 0x0
	.quad	.Lfunc_begin100
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin100:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	addis %r6, %r2, .LC209@toc@ha
	ld %r6, .LC209@toc@l(%r6)
	ld %r6, 0(%r6)
	addi %r6, %r6, 1
	addis %r7, %r2, .LC209@toc@ha
	ld %r7, .LC209@toc@l(%r7)
	std %r6, 0(%r7)
	std %r3, 144(%r31)
	std %r4, 136(%r31)
	std %r5, 128(%r31)
	addis %r3, %r2, .LC210@toc@ha
	ld %r3, .LC210@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC210@toc@ha
	ld %r4, .LC210@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 144(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	ld %r4, 136(%r31)
	ld %r5, 128(%r31)
	bl memcpy
	nop
                                        # kill: def $x4 killed $x3
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	ld %r4, 128(%r31)
	add %r3, %r3, %r4
	addi %r1, %r1, 160
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
	.p2align	2
	.type	frexp,@function
	.section	.opd,"aw",@progbits
frexp:                                  # @frexp
	.p2align	3, 0x0
	.quad	.Lfunc_begin101
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin101:
	.cfi_startproc
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
	std %r3, 128(%r31)
	std %r4, 120(%r31)
	addis %r3, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r4, 0
	stw %r4, 112(%r31)
	stw %r4, 116(%r31)
	ld %r3, 128(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_2
	b .LBB101_1
.LBB101_1:
	addis %r3, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 128(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 128(%r31)
	li %r3, 1
	stw %r3, 116(%r31)
.LBB101_2:
	ld %r3, 128(%r31)
	li %r4, 1023
	rldic %r4, %r4, 52, 2
	bl __gedf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	blt	%cr0, .LBB101_7
	b .LBB101_3
.LBB101_3:
	addis %r3, %r2, .LC212@toc@ha
	ld %r3, .LC212@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC211@toc@ha
	ld %r3, .LC211@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r4)
	std %r3, 16(%r4)
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	li %r4, 1023
	rldic %r4, %r4, 52, 2
	bl __gedf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	blt	%cr0, .LBB101_6
	b .LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
	addis %r3, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 112(%r31)
	addi %r3, %r3, 1
	stw %r3, 112(%r31)
	ld %r3, 128(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __muldf3
	nop
	std %r3, 128(%r31)
	b .LBB101_4
.LBB101_6:
	b .LBB101_15
.LBB101_7:
	ld %r3, 128(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_14
	b .LBB101_8
.LBB101_8:
	addis %r3, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	ld %r3, 128(%r31)
	li %r4, 0
	bl __eqdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_14
	b .LBB101_9
.LBB101_9:
	addis %r3, %r2, .LC211@toc@ha
	ld %r3, .LC211@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r4)
	std %r3, 48(%r4)
# %bb.10:
	addis %r3, %r2, .LC211@toc@ha
	ld %r3, .LC211@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r4)
	std %r3, 32(%r4)
.LBB101_11:                             # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_13
	b .LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_11 Depth=1
	addis %r3, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r3)
	ld %r3, 56(%r4)
	addi %r3, %r3, 1
	std %r3, 56(%r4)
	lwz %r3, 112(%r31)
	addi %r3, %r3, -1
	stw %r3, 112(%r31)
	ld %r4, 128(%r31)
	mr	%r3, %r4
	bl __adddf3
	nop
	std %r3, 128(%r31)
	b .LBB101_11
.LBB101_13:
	addis %r3, %r2, .LC212@toc@ha
	ld %r3, .LC212@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r4)
	std %r3, 40(%r4)
.LBB101_14:
	addis %r3, %r2, .LC212@toc@ha
	ld %r3, .LC212@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r4)
	std %r3, 48(%r4)
.LBB101_15:
	lwz %r3, 112(%r31)
	ld %r4, 120(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 116(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB101_17
# %bb.16:
	addis %r3, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r3)
	ld %r3, 56(%r4)
	addi %r3, %r3, 1
	std %r3, 56(%r4)
	addis %r3, %r2, .LC211@toc@ha
	ld %r4, .LC211@toc@l(%r3)
	ld %r3, 64(%r4)
	addi %r3, %r3, 1
	std %r3, 64(%r4)
	ld %r3, 128(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 128(%r31)
.LBB101_17:
	ld %r3, 128(%r31)
	addi %r1, %r1, 144
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
	.p2align	2
	.type	__muldi3,@function
	.section	.opd,"aw",@progbits
__muldi3:                               # @__muldi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin102
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin102:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC213@toc@ha
	ld %r5, .LC213@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC213@toc@ha
	ld %r6, .LC213@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC214@toc@ha
	ld %r3, .LC214@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC214@toc@ha
	ld %r4, .LC214@toc@l(%r4)
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
	addis %r3, %r2, .LC214@toc@ha
	ld %r3, .LC214@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC214@toc@ha
	ld %r4, .LC214@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -40(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpdi	%r3, 0
	beq	%cr0, .LBB102_4
# %bb.3:                                #   in Loop: Header=BB102_1 Depth=1
	addis %r3, %r2, .LC213@toc@ha
	ld %r3, .LC213@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC213@toc@ha
	ld %r4, .LC213@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC214@toc@ha
	ld %r3, .LC214@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC214@toc@ha
	ld %r4, .LC214@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r4, -24(%r1)
	ld %r3, -32(%r1)
	add %r3, %r3, %r4
	std %r3, -32(%r1)
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	addis %r3, %r2, .LC213@toc@ha
	ld %r4, .LC213@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
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
	.p2align	2
	.type	udivmodsi4,@function
	.section	.opd,"aw",@progbits
udivmodsi4:                             # @udivmodsi4
	.p2align	3, 0x0
	.quad	.Lfunc_begin103
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin103:
	.cfi_startproc
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	addis %r3, %r2, .LC215@toc@ha
	ld %r3, .LC215@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	stw %r3, -36(%r1)
	li %r3, 0
	stw %r3, -40(%r1)
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, -20(%r1)
	lwz %r5, -16(%r1)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	bge %cr0, .LBB103_6
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC216@toc@ha
	ld %r3, .LC216@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC215@toc@ha
	ld %r3, .LC215@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r4)
	std %r3, 32(%r4)
	lwz %r4, -36(%r1)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB103_6
# %bb.3:                                #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC216@toc@ha
	ld %r3, .LC216@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC215@toc@ha
	ld %r3, .LC215@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	rlwinm %r3, %r3, 0, 0, 0
	cmpldi	%r3, 0
	mcrf %cr7, %cr0
	mfcr %r3                                # cr7
	rlwinm %r3, %r3, 31, 31, 31
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB103_6
	b .LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC216@toc@ha
	ld %r5, .LC216@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC215@toc@ha
	ld %r5, .LC215@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB103_6:                              #   in Loop: Header=BB103_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB103_8
	b .LBB103_7
.LBB103_7:                              #   in Loop: Header=BB103_1 Depth=1
	addis %r3, %r2, .LC216@toc@ha
	ld %r3, .LC216@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC215@toc@ha
	ld %r3, .LC215@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r4)
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
	addis %r3, %r2, .LC215@toc@ha
	ld %r3, .LC215@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r4)
	std %r3, 48(%r4)
	lwz %r3, -16(%r1)
	lwz %r4, -20(%r1)
	cmplw	%r3, %r4
	blt	%cr0, .LBB103_12
# %bb.11:                               #   in Loop: Header=BB103_9 Depth=1
	addis %r3, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r3)
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
	addis %r3, %r2, .LC216@toc@ha
	ld %r3, .LC216@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r4)
	std %r3, 40(%r4)
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
	addis %r3, %r2, .LC216@toc@ha
	ld %r3, .LC216@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r4)
	std %r3, 48(%r4)
	addis %r3, %r2, .LC215@toc@ha
	ld %r3, .LC215@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC215@toc@ha
	ld %r4, .LC215@toc@l(%r4)
	std %r3, 64(%r4)
	lwz %r3, -16(%r1)
	stw %r3, -12(%r1)
	b .LBB103_16
.LBB103_15:
	addis %r3, %r2, .LC216@toc@ha
	ld %r3, .LC216@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r4)
	std %r3, 56(%r4)
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
	.p2align	2
	.type	__clrsbqi2,@function
	.section	.opd,"aw",@progbits
__clrsbqi2:                             # @__clrsbqi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin104
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin104:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	stb %r3, -13(%r1)
	addis %r3, %r2, .LC217@toc@ha
	ld %r3, .LC217@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC217@toc@ha
	ld %r4, .LC217@toc@l(%r4)
	std %r3, 0(%r4)
	lbz %r3, -13(%r1)
	cmpwi	%r3, 0
	bge %cr0, .LBB104_2
# %bb.1:
	addis %r3, %r2, .LC218@toc@ha
	ld %r3, .LC218@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC218@toc@ha
	ld %r4, .LC218@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC217@toc@ha
	ld %r3, .LC217@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC217@toc@ha
	ld %r4, .LC217@toc@l(%r4)
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
	addis %r3, %r2, .LC218@toc@ha
	ld %r3, .LC218@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC218@toc@ha
	ld %r4, .LC218@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC217@toc@ha
	ld %r3, .LC217@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC217@toc@ha
	ld %r4, .LC217@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 7
	stw %r3, -12(%r1)
	b .LBB104_5
.LBB104_4:
	addis %r3, %r2, .LC218@toc@ha
	ld %r4, .LC218@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__clrsbdi2,@function
	.section	.opd,"aw",@progbits
__clrsbdi2:                             # @__clrsbdi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin105
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin105:
	.cfi_startproc
# %bb.0:
	std %r3, -24(%r1)
	addis %r3, %r2, .LC219@toc@ha
	ld %r3, .LC219@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC219@toc@ha
	ld %r4, .LC219@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	cmpdi	%r3, 0
	bge %cr0, .LBB105_2
# %bb.1:
	addis %r3, %r2, .LC220@toc@ha
	ld %r3, .LC220@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC220@toc@ha
	ld %r4, .LC220@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC219@toc@ha
	ld %r3, .LC219@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC219@toc@ha
	ld %r4, .LC219@toc@l(%r4)
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
	addis %r3, %r2, .LC220@toc@ha
	ld %r3, .LC220@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC220@toc@ha
	ld %r4, .LC220@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC219@toc@ha
	ld %r3, .LC219@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC219@toc@ha
	ld %r4, .LC219@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 63
	stw %r3, -12(%r1)
	b .LBB105_5
.LBB105_4:
	addis %r3, %r2, .LC220@toc@ha
	ld %r4, .LC220@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__mulsi3,@function
	.section	.opd,"aw",@progbits
__mulsi3:                               # @__mulsi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin106
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin106:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC221@toc@ha
	ld %r5, .LC221@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC221@toc@ha
	ld %r6, .LC221@toc@l(%r6)
	std %r5, 0(%r6)
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC222@toc@ha
	ld %r3, .LC222@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC222@toc@ha
	ld %r4, .LC222@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB106_5
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	addis %r3, %r2, .LC222@toc@ha
	ld %r3, .LC222@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC222@toc@ha
	ld %r4, .LC222@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB106_4
# %bb.3:                                #   in Loop: Header=BB106_1 Depth=1
	addis %r3, %r2, .LC221@toc@ha
	ld %r3, .LC221@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC221@toc@ha
	ld %r4, .LC221@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC222@toc@ha
	ld %r3, .LC222@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC222@toc@ha
	ld %r4, .LC222@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r4, -16(%r1)
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	addis %r3, %r2, .LC221@toc@ha
	ld %r3, .LC221@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC221@toc@ha
	ld %r4, .LC221@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__cmovd,@function
	.section	.opd,"aw",@progbits
__cmovd:                                # @__cmovd
	.p2align	3, 0x0
	.quad	.Lfunc_begin107
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin107:
	.cfi_startproc
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -16(%r1)
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC223@toc@ha
	ld %r3, .LC223@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC223@toc@ha
	ld %r4, .LC223@toc@l(%r4)
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
	addis %r3, %r2, .LC224@toc@ha
	ld %r3, .LC224@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC224@toc@ha
	ld %r4, .LC224@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC223@toc@ha
	ld %r3, .LC223@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC223@toc@ha
	ld %r4, .LC223@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	bgt	%cr0, .LBB107_3
# %bb.2:
	addis %r3, %r2, .LC223@toc@ha
	ld %r3, .LC223@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC223@toc@ha
	ld %r4, .LC223@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB107_11
.LBB107_3:
	addis %r3, %r2, .LC223@toc@ha
	ld %r3, .LC223@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC223@toc@ha
	ld %r4, .LC223@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB107_7
# %bb.5:                                #   in Loop: Header=BB107_4 Depth=1
	addis %r3, %r2, .LC223@toc@ha
	ld %r4, .LC223@toc@l(%r3)
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
	addis %r3, %r2, .LC224@toc@ha
	ld %r3, .LC224@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC224@toc@ha
	ld %r4, .LC224@toc@l(%r4)
	std %r3, 8(%r4)
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
	addis %r3, %r2, .LC224@toc@ha
	ld %r3, .LC224@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC224@toc@ha
	ld %r4, .LC224@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC223@toc@ha
	ld %r3, .LC223@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC223@toc@ha
	ld %r4, .LC223@toc@l(%r4)
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
	addis %r3, %r2, .LC224@toc@ha
	ld %r3, .LC224@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC224@toc@ha
	ld %r4, .LC224@toc@l(%r4)
	std %r3, 24(%r4)
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
	addis %r3, %r2, .LC224@toc@ha
	ld %r3, .LC224@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC224@toc@ha
	ld %r4, .LC224@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC223@toc@ha
	ld %r3, .LC223@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC223@toc@ha
	ld %r4, .LC223@toc@l(%r4)
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
	addis %r3, %r2, .LC224@toc@ha
	ld %r3, .LC224@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC224@toc@ha
	ld %r4, .LC224@toc@l(%r4)
	std %r3, 40(%r4)
.LBB107_15:
	blr
	.long	0
	.quad	0
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-.Lfunc_begin107
	.cfi_endproc
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
	.section	.opd,"aw",@progbits
__cmovh:                                # @__cmovh
	.p2align	3, 0x0
	.quad	.Lfunc_begin108
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin108:
	.cfi_startproc
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -16(%r1)
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC225@toc@ha
	ld %r3, .LC225@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC225@toc@ha
	ld %r4, .LC225@toc@l(%r4)
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
	addis %r3, %r2, .LC226@toc@ha
	ld %r3, .LC226@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC226@toc@ha
	ld %r4, .LC226@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC225@toc@ha
	ld %r3, .LC225@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC225@toc@ha
	ld %r4, .LC225@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	bgt	%cr0, .LBB108_3
# %bb.2:
	addis %r3, %r2, .LC225@toc@ha
	ld %r3, .LC225@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC225@toc@ha
	ld %r4, .LC225@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB108_10
.LBB108_3:
	addis %r3, %r2, .LC225@toc@ha
	ld %r3, .LC225@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC225@toc@ha
	ld %r4, .LC225@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB108_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB108_7
# %bb.5:                                #   in Loop: Header=BB108_4 Depth=1
	addis %r3, %r2, .LC225@toc@ha
	ld %r4, .LC225@toc@l(%r3)
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
	addis %r3, %r2, .LC226@toc@ha
	ld %r3, .LC226@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC226@toc@ha
	ld %r4, .LC226@toc@l(%r4)
	std %r3, 8(%r4)
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
	addis %r3, %r2, .LC226@toc@ha
	ld %r4, .LC226@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC225@toc@ha
	ld %r4, .LC225@toc@l(%r3)
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
	addis %r3, %r2, .LC226@toc@ha
	ld %r3, .LC226@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC226@toc@ha
	ld %r4, .LC226@toc@l(%r4)
	std %r3, 24(%r4)
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
	addis %r3, %r2, .LC226@toc@ha
	ld %r3, .LC226@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC226@toc@ha
	ld %r4, .LC226@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC225@toc@ha
	ld %r3, .LC225@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC225@toc@ha
	ld %r4, .LC225@toc@l(%r4)
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
	addis %r3, %r2, .LC226@toc@ha
	ld %r3, .LC226@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC226@toc@ha
	ld %r4, .LC226@toc@l(%r4)
	std %r3, 40(%r4)
.LBB108_14:
	blr
	.long	0
	.quad	0
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-.Lfunc_begin108
	.cfi_endproc
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
	.section	.opd,"aw",@progbits
__cmovw:                                # @__cmovw
	.p2align	3, 0x0
	.quad	.Lfunc_begin109
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin109:
	.cfi_startproc
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -16(%r1)
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC227@toc@ha
	ld %r3, .LC227@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC227@toc@ha
	ld %r4, .LC227@toc@l(%r4)
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
	addis %r3, %r2, .LC228@toc@ha
	ld %r3, .LC228@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC228@toc@ha
	ld %r4, .LC228@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC227@toc@ha
	ld %r3, .LC227@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC227@toc@ha
	ld %r4, .LC227@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	bgt	%cr0, .LBB109_3
# %bb.2:
	addis %r3, %r2, .LC227@toc@ha
	ld %r3, .LC227@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC227@toc@ha
	ld %r4, .LC227@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB109_11
.LBB109_3:
	addis %r3, %r2, .LC227@toc@ha
	ld %r3, .LC227@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC227@toc@ha
	ld %r4, .LC227@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB109_4:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB109_7
# %bb.5:                                #   in Loop: Header=BB109_4 Depth=1
	addis %r3, %r2, .LC227@toc@ha
	ld %r4, .LC227@toc@l(%r3)
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
	addis %r3, %r2, .LC228@toc@ha
	ld %r3, .LC228@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC228@toc@ha
	ld %r4, .LC228@toc@l(%r4)
	std %r3, 8(%r4)
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
	addis %r3, %r2, .LC228@toc@ha
	ld %r3, .LC228@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC228@toc@ha
	ld %r4, .LC228@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC227@toc@ha
	ld %r3, .LC227@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC227@toc@ha
	ld %r4, .LC227@toc@l(%r4)
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
	addis %r3, %r2, .LC228@toc@ha
	ld %r3, .LC228@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC228@toc@ha
	ld %r4, .LC228@toc@l(%r4)
	std %r3, 24(%r4)
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
	addis %r3, %r2, .LC228@toc@ha
	ld %r3, .LC228@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC228@toc@ha
	ld %r4, .LC228@toc@l(%r4)
	std %r3, 32(%r4)
	addis %r3, %r2, .LC227@toc@ha
	ld %r3, .LC227@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC227@toc@ha
	ld %r4, .LC227@toc@l(%r4)
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
	addis %r3, %r2, .LC228@toc@ha
	ld %r3, .LC228@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC228@toc@ha
	ld %r4, .LC228@toc@l(%r4)
	std %r3, 40(%r4)
.LBB109_15:
	blr
	.long	0
	.quad	0
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-.Lfunc_begin109
	.cfi_endproc
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	2
	.type	__modi,@function
	.section	.opd,"aw",@progbits
__modi:                                 # @__modi
	.p2align	3, 0x0
	.quad	.Lfunc_begin110
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin110:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC229@toc@ha
	ld %r6, .LC229@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC230@toc@ha
	ld %r4, .LC230@toc@l(%r3)
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
	.p2align	2
	.type	__uitod,@function
	.section	.opd,"aw",@progbits
__uitod:                                # @__uitod
	.p2align	3, 0x0
	.quad	.Lfunc_begin111
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin111:
	.cfi_startproc
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
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC231@toc@ha
	ld %r5, .LC231@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, 116(%r31)
	addis %r3, %r2, .LC232@toc@ha
	ld %r4, .LC232@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 116(%r31)
	bl __floatunsidf
	nop
	addi %r1, %r1, 128
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
	.p2align	2
	.type	__uitof,@function
	.section	.opd,"aw",@progbits
__uitof:                                # @__uitof
	.p2align	3, 0x0
	.quad	.Lfunc_begin112
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin112:
	.cfi_startproc
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
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC233@toc@ha
	ld %r5, .LC233@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, 116(%r31)
	addis %r3, %r2, .LC234@toc@ha
	ld %r4, .LC234@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 116(%r31)
	bl __floatunsisf
	nop
	addi %r1, %r1, 128
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
	.p2align	2
	.type	__ulltod,@function
	.section	.opd,"aw",@progbits
__ulltod:                               # @__ulltod
	.p2align	3, 0x0
	.quad	.Lfunc_begin113
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin113:
	.cfi_startproc
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
	addis %r4, %r2, .LC235@toc@ha
	ld %r5, .LC235@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	std %r3, 112(%r31)
	addis %r3, %r2, .LC236@toc@ha
	ld %r4, .LC236@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 112(%r31)
	bl __floatundidf
	nop
	addi %r1, %r1, 128
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
	.p2align	2
	.type	__ulltof,@function
	.section	.opd,"aw",@progbits
__ulltof:                               # @__ulltof
	.p2align	3, 0x0
	.quad	.Lfunc_begin114
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin114:
	.cfi_startproc
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
	addis %r4, %r2, .LC237@toc@ha
	ld %r5, .LC237@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	std %r3, 112(%r31)
	addis %r3, %r2, .LC238@toc@ha
	ld %r4, .LC238@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 112(%r31)
	bl __floatundisf
	nop
	addi %r1, %r1, 128
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
	.p2align	2
	.type	__umodi,@function
	.section	.opd,"aw",@progbits
__umodi:                                # @__umodi
	.p2align	3, 0x0
	.quad	.Lfunc_begin115
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin115:
	.cfi_startproc
# %bb.0:
	std %r4, -24(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -24(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC239@toc@ha
	ld %r6, .LC239@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC240@toc@ha
	ld %r4, .LC240@toc@l(%r3)
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
	.p2align	2
	.type	__clzhi2,@function
	.section	.opd,"aw",@progbits
__clzhi2:                               # @__clzhi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin116
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin116:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC241@toc@ha
	ld %r4, .LC241@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC241@toc@ha
	ld %r5, .LC241@toc@l(%r5)
	std %r4, 0(%r5)
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC242@toc@ha
	ld %r3, .LC242@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC242@toc@ha
	ld %r4, .LC242@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB116_6
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
	addis %r3, %r2, .LC242@toc@ha
	ld %r4, .LC242@toc@l(%r3)
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
	addis %r3, %r2, .LC241@toc@ha
	ld %r3, .LC241@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC241@toc@ha
	ld %r4, .LC241@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC242@toc@ha
	ld %r3, .LC242@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC242@toc@ha
	ld %r4, .LC242@toc@l(%r4)
	std %r3, 16(%r4)
	b .LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	b .LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
	addis %r3, %r2, .LC241@toc@ha
	ld %r3, .LC241@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC241@toc@ha
	ld %r4, .LC241@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__ctzhi2,@function
	.section	.opd,"aw",@progbits
__ctzhi2:                               # @__ctzhi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin117
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin117:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC243@toc@ha
	ld %r4, .LC243@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC243@toc@ha
	ld %r5, .LC243@toc@l(%r5)
	std %r4, 0(%r5)
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC244@toc@ha
	ld %r3, .LC244@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC244@toc@ha
	ld %r4, .LC244@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB117_6
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	addis %r3, %r2, .LC244@toc@ha
	ld %r3, .LC244@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC244@toc@ha
	ld %r4, .LC244@toc@l(%r4)
	std %r3, 8(%r4)
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB117_4
# %bb.3:
	addis %r3, %r2, .LC243@toc@ha
	ld %r3, .LC243@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC243@toc@ha
	ld %r4, .LC243@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC244@toc@ha
	ld %r3, .LC244@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC244@toc@ha
	ld %r4, .LC244@toc@l(%r4)
	std %r3, 16(%r4)
	b .LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	b .LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	addis %r3, %r2, .LC243@toc@ha
	ld %r3, .LC243@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC243@toc@ha
	ld %r4, .LC243@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__fixunssfsi,@function
	.section	.opd,"aw",@progbits
__fixunssfsi:                           # @__fixunssfsi
	.p2align	3, 0x0
	.quad	.Lfunc_begin118
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin118:
	.cfi_startproc
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
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 124(%r31)
	addis %r3, %r2, .LC245@toc@ha
	ld %r4, .LC245@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 124(%r31)
	lis %r4, 18176
	bl __gesf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	blt	%cr0, .LBB118_2
	b .LBB118_1
.LBB118_1:
	addis %r3, %r2, .LC246@toc@ha
	ld %r4, .LC246@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC245@toc@ha
	ld %r4, .LC245@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 124(%r31)
	li %r4, 199
	rldic %r4, %r4, 24, 32
	bl __addsf3
	nop
	bl __fixsfdi
	nop
	lis %r4, 0
	ori %r4, %r4, 32768
	add %r3, %r3, %r4
	std %r3, 128(%r31)
	b .LBB118_3
.LBB118_2:
	addis %r3, %r2, .LC246@toc@ha
	ld %r4, .LC246@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, 124(%r31)
	bl __fixsfdi
	nop
	std %r3, 128(%r31)
.LBB118_3:
	ld %r3, 128(%r31)
	addi %r1, %r1, 144
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
	.p2align	2
	.type	__parityhi2,@function
	.section	.opd,"aw",@progbits
__parityhi2:                            # @__parityhi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin119
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin119:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC247@toc@ha
	ld %r4, .LC247@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC247@toc@ha
	ld %r5, .LC247@toc@l(%r5)
	std %r4, 0(%r5)
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC248@toc@ha
	ld %r3, .LC248@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC248@toc@ha
	ld %r4, .LC248@toc@l(%r4)
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
	addis %r3, %r2, .LC248@toc@ha
	ld %r3, .LC248@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC248@toc@ha
	ld %r4, .LC248@toc@l(%r4)
	std %r3, 8(%r4)
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB119_4
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
	addis %r3, %r2, .LC247@toc@ha
	ld %r3, .LC247@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC247@toc@ha
	ld %r4, .LC247@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC248@toc@ha
	ld %r3, .LC248@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC248@toc@ha
	ld %r4, .LC248@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -20(%r1)
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	b .LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	addis %r3, %r2, .LC247@toc@ha
	ld %r3, .LC247@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC247@toc@ha
	ld %r4, .LC247@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__popcounthi2,@function
	.section	.opd,"aw",@progbits
__popcounthi2:                          # @__popcounthi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin120
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin120:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC249@toc@ha
	ld %r4, .LC249@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC249@toc@ha
	ld %r5, .LC249@toc@l(%r5)
	std %r4, 0(%r5)
	sth %r3, -10(%r1)
	addis %r3, %r2, .LC250@toc@ha
	ld %r3, .LC250@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC250@toc@ha
	ld %r4, .LC250@toc@l(%r4)
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
	addis %r3, %r2, .LC250@toc@ha
	ld %r3, .LC250@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC250@toc@ha
	ld %r4, .LC250@toc@l(%r4)
	std %r3, 8(%r4)
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB120_4
# %bb.3:                                #   in Loop: Header=BB120_1 Depth=1
	addis %r3, %r2, .LC249@toc@ha
	ld %r3, .LC249@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC249@toc@ha
	ld %r4, .LC249@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC250@toc@ha
	ld %r3, .LC250@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC250@toc@ha
	ld %r4, .LC250@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	addi %r3, %r3, 1
	stw %r3, -20(%r1)
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	b .LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	addis %r3, %r2, .LC249@toc@ha
	ld %r3, .LC249@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC249@toc@ha
	ld %r4, .LC249@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__mulsi3_iq2000,@function
	.section	.opd,"aw",@progbits
__mulsi3_iq2000:                        # @__mulsi3_iq2000
	.p2align	3, 0x0
	.quad	.Lfunc_begin121
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin121:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC251@toc@ha
	ld %r5, .LC251@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC251@toc@ha
	ld %r6, .LC251@toc@l(%r6)
	std %r5, 0(%r6)
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC252@toc@ha
	ld %r3, .LC252@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC252@toc@ha
	ld %r4, .LC252@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB121_5
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	addis %r3, %r2, .LC252@toc@ha
	ld %r3, .LC252@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC252@toc@ha
	ld %r4, .LC252@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, -12(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB121_4
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
	addis %r3, %r2, .LC251@toc@ha
	ld %r3, .LC251@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC251@toc@ha
	ld %r4, .LC251@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC252@toc@ha
	ld %r3, .LC252@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC252@toc@ha
	ld %r4, .LC252@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r4, -16(%r1)
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	addis %r3, %r2, .LC251@toc@ha
	ld %r3, .LC251@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC251@toc@ha
	ld %r4, .LC251@toc@l(%r4)
	std %r3, 16(%r4)
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
	.p2align	2
	.type	__mulsi3_lm32,@function
	.section	.opd,"aw",@progbits
__mulsi3_lm32:                          # @__mulsi3_lm32
	.p2align	3, 0x0
	.quad	.Lfunc_begin122
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin122:
	.cfi_startproc
# %bb.0:
	std %r4, -32(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -32(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -16(%r1)
	stw %r3, -20(%r1)
	addis %r3, %r2, .LC253@toc@ha
	ld %r3, .LC253@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC253@toc@ha
	ld %r4, .LC253@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB122_2
# %bb.1:
	addis %r3, %r2, .LC254@toc@ha
	ld %r3, .LC254@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC254@toc@ha
	ld %r4, .LC254@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC253@toc@ha
	ld %r3, .LC253@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC253@toc@ha
	ld %r4, .LC253@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB122_8
.LBB122_2:
	addis %r3, %r2, .LC254@toc@ha
	ld %r3, .LC254@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC254@toc@ha
	ld %r4, .LC254@toc@l(%r4)
	std %r3, 0(%r4)
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -20(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB122_7
# %bb.4:                                #   in Loop: Header=BB122_3 Depth=1
	addis %r3, %r2, .LC253@toc@ha
	ld %r3, .LC253@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC253@toc@ha
	ld %r4, .LC253@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB122_6
# %bb.5:                                #   in Loop: Header=BB122_3 Depth=1
	addis %r3, %r2, .LC254@toc@ha
	ld %r3, .LC254@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC254@toc@ha
	ld %r4, .LC254@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC253@toc@ha
	ld %r3, .LC253@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC253@toc@ha
	ld %r4, .LC253@toc@l(%r4)
	std %r3, 24(%r4)
	lwz %r4, -16(%r1)
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	addis %r3, %r2, .LC254@toc@ha
	ld %r3, .LC254@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC254@toc@ha
	ld %r4, .LC254@toc@l(%r4)
	std %r3, 24(%r4)
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
	.p2align	2
	.type	__udivmodsi4,@function
	.section	.opd,"aw",@progbits
__udivmodsi4:                           # @__udivmodsi4
	.p2align	3, 0x0
	.quad	.Lfunc_begin123
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin123:
	.cfi_startproc
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
	addis %r3, %r2, .LC255@toc@ha
	ld %r3, .LC255@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	stw %r3, -28(%r1)
	li %r3, 0
	stw %r3, -32(%r1)
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r4, -20(%r1)
	lwz %r5, -16(%r1)
	li %r3, 0
	cmplw	%r4, %r5
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	bge %cr0, .LBB123_6
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC256@toc@ha
	ld %r3, .LC256@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC255@toc@ha
	ld %r3, .LC255@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r4)
	std %r3, 32(%r4)
	lwz %r4, -28(%r1)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB123_6
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC256@toc@ha
	ld %r3, .LC256@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC255@toc@ha
	ld %r3, .LC255@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, -20(%r1)
	rlwinm %r3, %r3, 0, 0, 0
	cmpldi	%r3, 0
	mcrf %cr7, %cr0
	mfcr %r3                                # cr7
	rlwinm %r3, %r3, 31, 31, 31
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB123_6
	b .LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC256@toc@ha
	ld %r5, .LC256@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC255@toc@ha
	ld %r5, .LC255@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB123_6:                              #   in Loop: Header=BB123_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB123_8
	b .LBB123_7
.LBB123_7:                              #   in Loop: Header=BB123_1 Depth=1
	addis %r3, %r2, .LC256@toc@ha
	ld %r3, .LC256@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC255@toc@ha
	ld %r3, .LC255@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r4)
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
	addis %r3, %r2, .LC255@toc@ha
	ld %r3, .LC255@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r4)
	std %r3, 48(%r4)
	lwz %r3, -16(%r1)
	lwz %r4, -20(%r1)
	cmplw	%r3, %r4
	blt	%cr0, .LBB123_12
# %bb.11:                               #   in Loop: Header=BB123_9 Depth=1
	addis %r3, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r3)
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
	addis %r3, %r2, .LC256@toc@ha
	ld %r3, .LC256@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r4)
	std %r3, 40(%r4)
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
	addis %r3, %r2, .LC256@toc@ha
	ld %r3, .LC256@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r4)
	std %r3, 48(%r4)
	addis %r3, %r2, .LC255@toc@ha
	ld %r3, .LC255@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC255@toc@ha
	ld %r4, .LC255@toc@l(%r4)
	std %r3, 64(%r4)
	lwz %r3, -16(%r1)
	stw %r3, -12(%r1)
	b .LBB123_16
.LBB123_15:
	addis %r3, %r2, .LC256@toc@ha
	ld %r3, .LC256@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r4)
	std %r3, 56(%r4)
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
	.p2align	2
	.type	__mspabi_cmpf,@function
	.section	.opd,"aw",@progbits
__mspabi_cmpf:                          # @__mspabi_cmpf
	.p2align	3, 0x0
	.quad	.Lfunc_begin124
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin124:
	.cfi_startproc
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
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 128(%r31)
	stw %r3, 124(%r31)
	addis %r3, %r2, .LC257@toc@ha
	ld %r4, .LC257@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 128(%r31)
	lwz %r4, 124(%r31)
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB124_2
	b .LBB124_1
.LBB124_1:
	addis %r3, %r2, .LC258@toc@ha
	ld %r3, .LC258@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC258@toc@ha
	ld %r4, .LC258@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC257@toc@ha
	ld %r3, .LC257@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC257@toc@ha
	ld %r4, .LC257@toc@l(%r4)
	std %r3, 8(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, 132(%r31)
	b .LBB124_5
.LBB124_2:
	lwz %r3, 128(%r31)
	lwz %r4, 124(%r31)
	bl __gtsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB124_4
	b .LBB124_3
.LBB124_3:
	addis %r3, %r2, .LC258@toc@ha
	ld %r3, .LC258@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC258@toc@ha
	ld %r4, .LC258@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC257@toc@ha
	ld %r3, .LC257@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC257@toc@ha
	ld %r4, .LC257@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 1
	stw %r3, 132(%r31)
	b .LBB124_5
.LBB124_4:
	addis %r3, %r2, .LC258@toc@ha
	ld %r3, .LC258@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC258@toc@ha
	ld %r4, .LC258@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 0
	stw %r3, 132(%r31)
.LBB124_5:
	lwa %r3, 132(%r31)
	addi %r1, %r1, 144
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
	.p2align	2
	.type	__mspabi_cmpd,@function
	.section	.opd,"aw",@progbits
__mspabi_cmpd:                          # @__mspabi_cmpd
	.p2align	3, 0x0
	.quad	.Lfunc_begin125
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin125:
	.cfi_startproc
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
	std %r3, 120(%r31)
	std %r4, 112(%r31)
	addis %r3, %r2, .LC259@toc@ha
	ld %r4, .LC259@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 120(%r31)
	ld %r4, 112(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB125_2
	b .LBB125_1
.LBB125_1:
	addis %r3, %r2, .LC260@toc@ha
	ld %r3, .LC260@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC260@toc@ha
	ld %r4, .LC260@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC259@toc@ha
	ld %r3, .LC259@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC259@toc@ha
	ld %r4, .LC259@toc@l(%r4)
	std %r3, 8(%r4)
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, 132(%r31)
	b .LBB125_5
.LBB125_2:
	ld %r3, 120(%r31)
	ld %r4, 112(%r31)
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB125_4
	b .LBB125_3
.LBB125_3:
	addis %r3, %r2, .LC260@toc@ha
	ld %r3, .LC260@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC260@toc@ha
	ld %r4, .LC260@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC259@toc@ha
	ld %r3, .LC259@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC259@toc@ha
	ld %r4, .LC259@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 1
	stw %r3, 132(%r31)
	b .LBB125_5
.LBB125_4:
	addis %r3, %r2, .LC260@toc@ha
	ld %r3, .LC260@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC260@toc@ha
	ld %r4, .LC260@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 0
	stw %r3, 132(%r31)
.LBB125_5:
	lwa %r3, 132(%r31)
	addi %r1, %r1, 144
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
	.p2align	2
	.type	__mspabi_mpysll,@function
	.section	.opd,"aw",@progbits
__mspabi_mpysll:                        # @__mspabi_mpysll
	.p2align	3, 0x0
	.quad	.Lfunc_begin126
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin126:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC261@toc@ha
	ld %r5, .LC261@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC261@toc@ha
	ld %r6, .LC261@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC262@toc@ha
	ld %r3, .LC262@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC262@toc@ha
	ld %r4, .LC262@toc@l(%r4)
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
	.p2align	2
	.type	__mspabi_mpyull,@function
	.section	.opd,"aw",@progbits
__mspabi_mpyull:                        # @__mspabi_mpyull
	.p2align	3, 0x0
	.quad	.Lfunc_begin127
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin127:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC263@toc@ha
	ld %r5, .LC263@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC263@toc@ha
	ld %r6, .LC263@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC264@toc@ha
	ld %r3, .LC264@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC264@toc@ha
	ld %r4, .LC264@toc@l(%r4)
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
	.p2align	2
	.type	__mulhi3,@function
	.section	.opd,"aw",@progbits
__mulhi3:                               # @__mulhi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin128
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin128:
	.cfi_startproc
# %bb.0:
	std %r4, -40(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -40(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC265@toc@ha
	ld %r3, .LC265@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC265@toc@ha
	ld %r4, .LC265@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, -24(%r1)
	li %r3, 0
	stw %r3, -28(%r1)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bge %cr0, .LBB128_2
# %bb.1:
	addis %r3, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC265@toc@ha
	ld %r4, .LC265@toc@l(%r3)
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
	lwz %r4, -16(%r1)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB128_6
# %bb.4:                                #   in Loop: Header=BB128_3 Depth=1
	addis %r3, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC265@toc@ha
	ld %r4, .LC265@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lbz %r4, -17(%r1)
	cmpldi %cr7, %r4, 32
	mfcr %r3                                # cr7
	rlwinm %r3, %r3, 29, 31, 31
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	cmpldi	%r4, 32
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	bge %cr0, .LBB128_6
# %bb.5:                                #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC266@toc@ha
	ld %r5, .LC266@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC265@toc@ha
	ld %r4, .LC265@toc@l(%r4)
	ld %r4, 32(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC265@toc@ha
	ld %r5, .LC265@toc@l(%r5)
	std %r4, 32(%r5)
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB128_11
	b .LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	addis %r3, %r2, .LC265@toc@ha
	ld %r3, .LC265@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC265@toc@ha
	ld %r4, .LC265@toc@l(%r4)
	std %r3, 16(%r4)
	lwz %r3, -16(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB128_9
# %bb.8:                                #   in Loop: Header=BB128_3 Depth=1
	addis %r3, %r2, .LC266@toc@ha
	ld %r3, .LC266@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC265@toc@ha
	ld %r3, .LC265@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC265@toc@ha
	ld %r4, .LC265@toc@l(%r4)
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
	addis %r3, %r2, .LC266@toc@ha
	ld %r3, .LC266@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r4)
	std %r3, 32(%r4)
	lbz %r3, -17(%r1)
	addi %r3, %r3, 1
	stb %r3, -17(%r1)
	b .LBB128_3
.LBB128_11:
	lwz %r3, -24(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB128_13
# %bb.12:
	addis %r3, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
	addis %r3, %r2, .LC265@toc@ha
	ld %r4, .LC265@toc@l(%r3)
	ld %r3, 48(%r4)
	addi %r3, %r3, 1
	std %r3, 48(%r4)
	lwz %r3, -28(%r1)
	neg %r3, %r3
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	b .LBB128_14
.LBB128_13:
	addis %r3, %r2, .LC266@toc@ha
	ld %r3, .LC266@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r4)
	std %r3, 48(%r4)
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
	.p2align	2
	.type	__divsi3,@function
	.section	.opd,"aw",@progbits
__divsi3:                               # @__divsi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin129
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin129:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	addis %r5, %r2, .LC267@toc@ha
	ld %r5, .LC267@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC267@toc@ha
	ld %r6, .LC267@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, 144(%r31)
	std %r4, 136(%r31)
	addis %r3, %r2, .LC268@toc@ha
	ld %r3, .LC268@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC268@toc@ha
	ld %r4, .LC268@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, 132(%r31)
	ld %r3, 144(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB129_2
# %bb.1:
	addis %r3, %r2, .LC267@toc@ha
	ld %r4, .LC267@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC268@toc@ha
	ld %r4, .LC268@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 144(%r31)
	neg %r3, %r3
	std %r3, 144(%r31)
	lwz %r3, 132(%r31)
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
                                        # kill: def $r4 killed $r3
	stw %r3, 132(%r31)
.LBB129_2:
	ld %r3, 136(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB129_4
# %bb.3:
	addis %r3, %r2, .LC267@toc@ha
	ld %r4, .LC267@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC268@toc@ha
	ld %r4, .LC268@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 136(%r31)
	neg %r3, %r3
	std %r3, 136(%r31)
	lwz %r3, 132(%r31)
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
                                        # kill: def $r4 killed $r3
	stw %r3, 132(%r31)
.LBB129_4:
	ld %r3, 144(%r31)
	mr	%r4, %r3
	ld %r3, 136(%r31)
	mr	%r5, %r3
	mr	%r3, %r2
	std %r3, 40(%r1)
                                        # implicit-def: $x3
	mr	%r3, %r4
	clrldi	%r3, %r3, 32
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
	addis %r5, %r2, .LC269@toc@ha
	ld %r5, .LC269@toc@l(%r5)
	ld %r7, 8(%r5)
	ld %r11, 16(%r5)
	ld %r6, 0(%r5)
	li %r5, 0
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	clrldi	%r3, %r3, 32
	std %r3, 120(%r31)
	lwz %r3, 132(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB129_6
# %bb.5:
	addis %r3, %r2, .LC267@toc@ha
	ld %r4, .LC267@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC268@toc@ha
	ld %r4, .LC268@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 120(%r31)
	neg %r3, %r3
	std %r3, 120(%r31)
.LBB129_6:
	ld %r3, 120(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	__modsi3,@function
	.section	.opd,"aw",@progbits
__modsi3:                               # @__modsi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin130
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin130:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	addis %r5, %r2, .LC270@toc@ha
	ld %r5, .LC270@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC270@toc@ha
	ld %r6, .LC270@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, 144(%r31)
	std %r4, 136(%r31)
	addis %r3, %r2, .LC271@toc@ha
	ld %r3, .LC271@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC271@toc@ha
	ld %r4, .LC271@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 0
	stw %r3, 132(%r31)
	ld %r3, 144(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB130_2
# %bb.1:
	addis %r3, %r2, .LC270@toc@ha
	ld %r4, .LC270@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC271@toc@ha
	ld %r4, .LC271@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, 144(%r31)
	neg %r3, %r3
	std %r3, 144(%r31)
	li %r3, 1
	stw %r3, 132(%r31)
.LBB130_2:
	ld %r3, 136(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB130_4
# %bb.3:
	addis %r3, %r2, .LC270@toc@ha
	ld %r4, .LC270@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC271@toc@ha
	ld %r4, .LC271@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, 136(%r31)
	neg %r3, %r3
	std %r3, 136(%r31)
.LBB130_4:
	ld %r3, 144(%r31)
	mr	%r4, %r3
	ld %r3, 136(%r31)
	mr	%r5, %r3
	mr	%r3, %r2
	std %r3, 40(%r1)
                                        # implicit-def: $x3
	mr	%r3, %r4
	clrldi	%r3, %r3, 32
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
	addis %r5, %r2, .LC269@toc@ha
	ld %r5, .LC269@toc@l(%r5)
	ld %r7, 8(%r5)
	ld %r11, 16(%r5)
	ld %r6, 0(%r5)
	li %r5, 1
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	clrldi	%r3, %r3, 32
	std %r3, 120(%r31)
	lwz %r3, 132(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB130_6
# %bb.5:
	addis %r3, %r2, .LC270@toc@ha
	ld %r4, .LC270@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC271@toc@ha
	ld %r4, .LC271@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 120(%r31)
	neg %r3, %r3
	std %r3, 120(%r31)
.LBB130_6:
	ld %r3, 120(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	__udivmodhi4,@function
	.section	.opd,"aw",@progbits
__udivmodhi4:                           # @__udivmodhi4
	.p2align	3, 0x0
	.quad	.Lfunc_begin131
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin131:
	.cfi_startproc
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
	addis %r3, %r2, .LC272@toc@ha
	ld %r3, .LC272@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	sth %r3, -22(%r1)
	li %r3, 0
	sth %r3, -24(%r1)
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	lhz %r4, -14(%r1)
	lhz %r5, -12(%r1)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bge %cr0, .LBB131_6
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC273@toc@ha
	ld %r3, .LC273@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC272@toc@ha
	ld %r3, .LC272@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r4)
	std %r3, 32(%r4)
	lhz %r4, -22(%r1)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB131_6
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC273@toc@ha
	ld %r3, .LC273@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC272@toc@ha
	ld %r3, .LC272@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lhz %r3, -14(%r1)
	rlwinm %r4, %r3, 0, 16, 16
	srwi %r3, %r3, 15
	xori %r3, %r3, 1
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	cmplwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB131_6
	b .LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC273@toc@ha
	ld %r5, .LC273@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC272@toc@ha
	ld %r5, .LC272@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB131_6:                              #   in Loop: Header=BB131_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB131_8
	b .LBB131_7
.LBB131_7:                              #   in Loop: Header=BB131_1 Depth=1
	addis %r3, %r2, .LC273@toc@ha
	ld %r3, .LC273@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC272@toc@ha
	ld %r3, .LC272@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r4)
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
	addis %r3, %r2, .LC272@toc@ha
	ld %r3, .LC272@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r4)
	std %r3, 48(%r4)
	lhz %r3, -12(%r1)
	lhz %r4, -14(%r1)
	cmpw	%r3, %r4
	blt	%cr0, .LBB131_12
# %bb.11:                               #   in Loop: Header=BB131_9 Depth=1
	addis %r3, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r3)
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
	addis %r3, %r2, .LC273@toc@ha
	ld %r3, .LC273@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r4)
	std %r3, 40(%r4)
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
	addis %r3, %r2, .LC273@toc@ha
	ld %r3, .LC273@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r4)
	std %r3, 48(%r4)
	addis %r3, %r2, .LC272@toc@ha
	ld %r3, .LC272@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC272@toc@ha
	ld %r4, .LC272@toc@l(%r4)
	std %r3, 64(%r4)
	lhz %r3, -12(%r1)
	sth %r3, -10(%r1)
	b .LBB131_16
.LBB131_15:
	addis %r3, %r2, .LC273@toc@ha
	ld %r3, .LC273@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r4)
	std %r3, 56(%r4)
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
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
	.section	.opd,"aw",@progbits
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
	.p2align	3, 0x0
	.quad	.Lfunc_begin132
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin132:
	.cfi_startproc
# %bb.0:
	std %r5, -64(%r1)                       # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -24(%r1)
	std %r4, -32(%r1)
	stw %r3, -36(%r1)
	addis %r3, %r2, .LC274@toc@ha
	ld %r3, .LC274@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r4)
	std %r3, 0(%r4)
	li %r3, 1
	std %r3, -48(%r1)
	li %r3, 0
	std %r3, -56(%r1)
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	ld %r5, -24(%r1)
	li %r3, 0
	cmpld	%r4, %r5
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
	bge %cr0, .LBB132_6
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC275@toc@ha
	ld %r3, .LC275@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC274@toc@ha
	ld %r3, .LC274@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r4)
	std %r3, 32(%r4)
	ld %r4, -48(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB132_6
# %bb.3:                                #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC275@toc@ha
	ld %r3, .LC275@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC274@toc@ha
	ld %r3, .LC274@toc@l(%r3)
	ld %r3, 40(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r4)
	std %r3, 40(%r4)
# %bb.4:                                #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -32(%r1)
	rlwinm %r3, %r3, 0, 0, 0
	cmpldi	%r3, 0
	mcrf %cr7, %cr0
	mfcr %r3                                # cr7
	rlwinm %r3, %r3, 31, 31, 31
	stw %r3, -72(%r1)                       # 4-byte Folded Spill
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB132_6
	b .LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	lwz %r3, -72(%r1)                       # 4-byte Folded Reload
	addis %r4, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r4)
	ld %r4, 16(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC275@toc@ha
	ld %r5, .LC275@toc@l(%r5)
	std %r4, 16(%r5)
	addis %r4, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r4)
	ld %r4, 24(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC274@toc@ha
	ld %r5, .LC274@toc@l(%r5)
	std %r4, 24(%r5)
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
.LBB132_6:                              #   in Loop: Header=BB132_1 Depth=1
	lwz %r3, -68(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB132_8
	b .LBB132_7
.LBB132_7:                              #   in Loop: Header=BB132_1 Depth=1
	addis %r3, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	addis %r3, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r3)
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
	addis %r3, %r2, .LC274@toc@ha
	ld %r3, .LC274@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r4)
	std %r3, 48(%r4)
	ld %r3, -24(%r1)
	ld %r4, -32(%r1)
	cmpld	%r3, %r4
	blt	%cr0, .LBB132_12
# %bb.11:                               #   in Loop: Header=BB132_9 Depth=1
	addis %r3, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	addis %r3, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r3)
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
	addis %r3, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r3)
	ld %r3, 40(%r4)
	addi %r3, %r3, 1
	std %r3, 40(%r4)
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
	addis %r3, %r2, .LC275@toc@ha
	ld %r3, .LC275@toc@l(%r3)
	ld %r3, 48(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r4)
	std %r3, 48(%r4)
	addis %r3, %r2, .LC274@toc@ha
	ld %r3, .LC274@toc@l(%r3)
	ld %r3, 64(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC274@toc@ha
	ld %r4, .LC274@toc@l(%r4)
	std %r3, 64(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB132_16
.LBB132_15:
	addis %r3, %r2, .LC275@toc@ha
	ld %r3, .LC275@toc@l(%r3)
	ld %r3, 56(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r4)
	std %r3, 56(%r4)
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
	.p2align	2
	.type	__ashldi3,@function
	.section	.opd,"aw",@progbits
__ashldi3:                              # @__ashldi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin133
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin133:
	.cfi_startproc
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC276@toc@ha
	ld %r3, .LC276@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC276@toc@ha
	ld %r4, .LC276@toc@l(%r4)
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
	addis %r3, %r2, .LC277@toc@ha
	ld %r4, .LC277@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC276@toc@ha
	ld %r4, .LC276@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -44(%r1)
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	addi %r4, %r4, -32
	slw %r3, %r3, %r4
	stw %r3, -48(%r1)
	b .LBB133_5
.LBB133_2:
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB133_4
# %bb.3:
	addis %r3, %r2, .LC277@toc@ha
	ld %r3, .LC277@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC277@toc@ha
	ld %r4, .LC277@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC276@toc@ha
	ld %r3, .LC276@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC276@toc@ha
	ld %r4, .LC276@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB133_6
.LBB133_4:
	addis %r3, %r2, .LC277@toc@ha
	ld %r4, .LC277@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, -36(%r1)
	lwz %r4, -28(%r1)
	slw %r3, %r3, %r4
	stw %r3, -44(%r1)
	lwz %r3, -40(%r1)
	lwz %r5, -28(%r1)
	slw %r3, %r3, %r5
	lwz %r4, -36(%r1)
	subfic %r5, %r5, 32
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	stw %r3, -48(%r1)
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
	.p2align	2
	.type	__ashlti3,@function
	.section	.opd,"aw",@progbits
__ashlti3:                              # @__ashlti3
	.p2align	3, 0x0
	.quad	.Lfunc_begin134
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin134:
	.cfi_startproc
# %bb.0:
	std %r5, -104(%r1)                      # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -104(%r1)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -48(%r1)
	std %r4, -40(%r1)
	stw %r3, -52(%r1)
	addis %r3, %r2, .LC278@toc@ha
	ld %r4, .LC278@toc@l(%r3)
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
	addis %r3, %r2, .LC279@toc@ha
	ld %r4, .LC279@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC278@toc@ha
	ld %r4, .LC278@toc@l(%r3)
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
	sld %r3, %r3, %r4
	std %r3, -96(%r1)
	b .LBB134_5
.LBB134_2:
	lwz %r3, -52(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB134_4
# %bb.3:
	addis %r3, %r2, .LC279@toc@ha
	ld %r4, .LC279@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC278@toc@ha
	ld %r4, .LC278@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB134_6
.LBB134_4:
	addis %r3, %r2, .LC279@toc@ha
	ld %r4, .LC279@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -72(%r1)
	lwz %r4, -52(%r1)
	sld %r3, %r3, %r4
	std %r3, -88(%r1)
	ld %r3, -80(%r1)
	lwz %r5, -52(%r1)
	sld %r3, %r3, %r5
	ld %r4, -72(%r1)
	subfic %r5, %r5, 64
                                        # implicit-def: $x6
	mr	%r6, %r5
	clrldi	%r6, %r6, 32
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	std %r3, -96(%r1)
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
	.p2align	2
	.type	__ashrdi3,@function
	.section	.opd,"aw",@progbits
__ashrdi3:                              # @__ashrdi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin135
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin135:
	.cfi_startproc
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC280@toc@ha
	ld %r3, .LC280@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC280@toc@ha
	ld %r4, .LC280@toc@l(%r4)
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
	addis %r3, %r2, .LC281@toc@ha
	ld %r4, .LC281@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC280@toc@ha
	ld %r4, .LC280@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r3, -40(%r1)
	srawi %r3, %r3, 31
	stw %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	addi %r4, %r4, -32
	sraw %r3, %r3, %r4
	stw %r3, -44(%r1)
	b .LBB135_5
.LBB135_2:
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB135_4
# %bb.3:
	addis %r3, %r2, .LC281@toc@ha
	ld %r3, .LC281@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC281@toc@ha
	ld %r4, .LC281@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC280@toc@ha
	ld %r3, .LC280@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC280@toc@ha
	ld %r4, .LC280@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB135_6
.LBB135_4:
	addis %r3, %r2, .LC281@toc@ha
	ld %r4, .LC281@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	sraw %r3, %r3, %r4
	stw %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	subfic %r4, %r4, 32
	slw %r3, %r3, %r4
	lwz %r4, -36(%r1)
	lwz %r5, -28(%r1)
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	stw %r3, -44(%r1)
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
	.p2align	2
	.type	__ashrti3,@function
	.section	.opd,"aw",@progbits
__ashrti3:                              # @__ashrti3
	.p2align	3, 0x0
	.quad	.Lfunc_begin136
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin136:
	.cfi_startproc
# %bb.0:
	std %r5, -104(%r1)                      # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -104(%r1)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -48(%r1)
	std %r4, -40(%r1)
	stw %r3, -52(%r1)
	addis %r3, %r2, .LC282@toc@ha
	ld %r4, .LC282@toc@l(%r3)
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
	addis %r3, %r2, .LC283@toc@ha
	ld %r4, .LC283@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC282@toc@ha
	ld %r4, .LC282@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r3, -80(%r1)
	sradi %r3, %r3, 63
	std %r3, -96(%r1)
	ld %r3, -80(%r1)
	lwz %r4, -52(%r1)
	addi %r4, %r4, -64
                                        # implicit-def: $x5
	mr	%r5, %r4
	clrldi	%r5, %r5, 32
	srad %r3, %r3, %r4
	std %r3, -88(%r1)
	b .LBB136_5
.LBB136_2:
	lwz %r3, -52(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB136_4
# %bb.3:
	addis %r3, %r2, .LC283@toc@ha
	ld %r4, .LC283@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC282@toc@ha
	ld %r4, .LC282@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB136_6
.LBB136_4:
	addis %r3, %r2, .LC283@toc@ha
	ld %r4, .LC283@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -80(%r1)
	lwz %r4, -52(%r1)
	srad %r3, %r3, %r4
	std %r3, -96(%r1)
	ld %r3, -80(%r1)
	lwz %r4, -52(%r1)
	mr	%r5, %r4
	subfic %r4, %r5, 64
	sld %r3, %r3, %r4
	ld %r4, -72(%r1)
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	std %r3, -88(%r1)
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
	.p2align	2
	.type	__bswapdi2,@function
	.section	.opd,"aw",@progbits
__bswapdi2:                             # @__bswapdi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin137
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin137:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC284@toc@ha
	ld %r5, .LC284@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC285@toc@ha
	ld %r4, .LC285@toc@l(%r3)
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
	.p2align	2
	.type	__bswapsi2,@function
	.section	.opd,"aw",@progbits
__bswapsi2:                             # @__bswapsi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin138
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin138:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC286@toc@ha
	ld %r4, .LC286@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC286@toc@ha
	ld %r5, .LC286@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC287@toc@ha
	ld %r3, .LC287@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC287@toc@ha
	ld %r4, .LC287@toc@l(%r4)
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
	.p2align	2
	.type	__clzsi2,@function
	.section	.opd,"aw",@progbits
__clzsi2:                               # @__clzsi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin139
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin139:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC288@toc@ha
	ld %r5, .LC288@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC289@toc@ha
	ld %r4, .LC289@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)
	lhz %r3, -16(%r1)
	slwi %r3, %r3, 16
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 31, 27, 27
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	subfic %r4, %r3, 16
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -20(%r1)
	stw %r3, -24(%r1)
	lbz %r3, -14(%r1)
	slwi %r3, %r3, 8
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 30, 28, 28
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
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 29, 29, 29
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
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 28, 30, 30
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
	rlwinm %r5, %r5, 31, 31, 31
	xori %r5, %r5, 1
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
	.p2align	2
	.type	__clzti2,@function
	.section	.opd,"aw",@progbits
__clzti2:                               # @__clzti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin140
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin140:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC290@toc@ha
	ld %r6, .LC290@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	addis %r3, %r2, .LC291@toc@ha
	ld %r4, .LC291@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	cmpldi %cr7, %r3, 0
	mfcr %r3                                # cr7
	rlwinm %r3, %r3, 31, 31, 31
	neg %r3, %r3
	extsw %r3, %r3
	std %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	li %r5, -1
	xor %r4, %r4, %r5
	and %r3, %r3, %r4
	ld %r4, -40(%r1)
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
	.p2align	2
	.type	__cmpdi2,@function
	.section	.opd,"aw",@progbits
__cmpdi2:                               # @__cmpdi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin141
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin141:
	.cfi_startproc
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	addis %r3, %r2, .LC292@toc@ha
	ld %r3, .LC292@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC292@toc@ha
	ld %r4, .LC292@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	std %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmpw	%r3, %r4
	bge %cr0, .LBB141_2
# %bb.1:
	addis %r3, %r2, .LC293@toc@ha
	ld %r3, .LC293@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC293@toc@ha
	ld %r4, .LC293@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC292@toc@ha
	ld %r3, .LC292@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC292@toc@ha
	ld %r4, .LC292@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_2:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmpw	%r3, %r4
	ble %cr0, .LBB141_4
# %bb.3:
	addis %r3, %r2, .LC293@toc@ha
	ld %r3, .LC293@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC293@toc@ha
	ld %r4, .LC293@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC292@toc@ha
	ld %r3, .LC292@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC292@toc@ha
	ld %r4, .LC292@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_4:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB141_6
# %bb.5:
	addis %r3, %r2, .LC293@toc@ha
	ld %r3, .LC293@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC293@toc@ha
	ld %r4, .LC293@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC292@toc@ha
	ld %r3, .LC292@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC292@toc@ha
	ld %r4, .LC292@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_6:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB141_8
# %bb.7:
	addis %r3, %r2, .LC293@toc@ha
	ld %r3, .LC293@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC293@toc@ha
	ld %r4, .LC293@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC292@toc@ha
	ld %r3, .LC292@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC292@toc@ha
	ld %r4, .LC292@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_8:
	addis %r3, %r2, .LC293@toc@ha
	ld %r3, .LC293@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC293@toc@ha
	ld %r4, .LC293@toc@l(%r4)
	std %r3, 32(%r4)
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
	.p2align	2
	.type	__aeabi_lcmp,@function
	.section	.opd,"aw",@progbits
__aeabi_lcmp:                           # @__aeabi_lcmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin142
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin142:
	.cfi_startproc
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
	addis %r5, %r2, .LC294@toc@ha
	ld %r6, .LC294@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r3, 128(%r31)
	std %r4, 120(%r31)
	addis %r3, %r2, .LC295@toc@ha
	ld %r4, .LC295@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 128(%r31)
	ld %r4, 120(%r31)
	mr	%r5, %r2
	std %r5, 40(%r1)
	addis %r5, %r2, .LC296@toc@ha
	ld %r5, .LC296@toc@l(%r5)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	addi %r3, %r3, -1
	extsw %r3, %r3
	addi %r1, %r1, 144
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
	.p2align	2
	.type	__cmpti2,@function
	.section	.opd,"aw",@progbits
__cmpti2:                               # @__cmpti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin143
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin143:
	.cfi_startproc
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	std %r6, -40(%r1)
	std %r5, -48(%r1)
	addis %r3, %r2, .LC297@toc@ha
	ld %r4, .LC297@toc@l(%r3)
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
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpd	%r3, %r4
	bge %cr0, .LBB143_2
# %bb.1:
	addis %r3, %r2, .LC298@toc@ha
	ld %r3, .LC298@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC298@toc@ha
	ld %r4, .LC298@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC297@toc@ha
	ld %r3, .LC297@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC297@toc@ha
	ld %r4, .LC297@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_2:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpd	%r3, %r4
	ble %cr0, .LBB143_4
# %bb.3:
	addis %r3, %r2, .LC298@toc@ha
	ld %r3, .LC298@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC298@toc@ha
	ld %r4, .LC298@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC297@toc@ha
	ld %r3, .LC297@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC297@toc@ha
	ld %r4, .LC297@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_4:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB143_6
# %bb.5:
	addis %r3, %r2, .LC298@toc@ha
	ld %r3, .LC298@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC298@toc@ha
	ld %r4, .LC298@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC297@toc@ha
	ld %r3, .LC297@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC297@toc@ha
	ld %r4, .LC297@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_6:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB143_8
# %bb.7:
	addis %r3, %r2, .LC298@toc@ha
	ld %r3, .LC298@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC298@toc@ha
	ld %r4, .LC298@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC297@toc@ha
	ld %r3, .LC297@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC297@toc@ha
	ld %r4, .LC297@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_8:
	addis %r3, %r2, .LC298@toc@ha
	ld %r3, .LC298@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC298@toc@ha
	ld %r4, .LC298@toc@l(%r4)
	std %r3, 32(%r4)
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
	.p2align	2
	.type	__ctzsi2,@function
	.section	.opd,"aw",@progbits
__ctzsi2:                               # @__ctzsi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin144
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin144:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC299@toc@ha
	ld %r5, .LC299@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC300@toc@ha
	ld %r4, .LC300@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, -12(%r1)
	stw %r3, -16(%r1)
	lhz %r3, -14(%r1)
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 31, 27, 27
	stw %r3, -20(%r1)
	lwz %r4, -20(%r1)
	lwz %r3, -16(%r1)
	srw %r3, %r3, %r4
	stw %r3, -16(%r1)
	lwz %r3, -20(%r1)
	stw %r3, -24(%r1)
	lbz %r3, -13(%r1)
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 30, 28, 28
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
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 29, 29, 29
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
	cntlzw	%r3, %r3
	rlwinm %r3, %r3, 28, 30, 30
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
	xori %r6, %r5, 1
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
	.p2align	2
	.type	__ctzti2,@function
	.section	.opd,"aw",@progbits
__ctzti2:                               # @__ctzti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin145
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin145:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC301@toc@ha
	ld %r6, .LC301@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	addis %r3, %r2, .LC302@toc@ha
	ld %r4, .LC302@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	cmpldi %cr7, %r3, 0
	mfcr %r3                                # cr7
	rlwinm %r3, %r3, 31, 31, 31
	neg %r3, %r3
	extsw %r3, %r3
	std %r3, -56(%r1)
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	and %r3, %r3, %r4
	ld %r4, -40(%r1)
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
	.p2align	2
	.type	__ffsti2,@function
	.section	.opd,"aw",@progbits
__ffsti2:                               # @__ffsti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin146
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin146:
	.cfi_startproc
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC303@toc@ha
	ld %r4, .LC303@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB146_4
# %bb.1:
	addis %r3, %r2, .LC303@toc@ha
	ld %r3, .LC303@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC303@toc@ha
	ld %r4, .LC303@toc@l(%r4)
	std %r3, 8(%r4)
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB146_3
# %bb.2:
	addis %r3, %r2, .LC304@toc@ha
	ld %r3, .LC304@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC304@toc@ha
	ld %r4, .LC304@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC303@toc@ha
	ld %r3, .LC303@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC303@toc@ha
	ld %r4, .LC303@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB146_5
.LBB146_3:
	addis %r3, %r2, .LC304@toc@ha
	ld %r3, .LC304@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC304@toc@ha
	ld %r4, .LC304@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r4, -48(%r1)
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
	addis %r3, %r2, .LC304@toc@ha
	ld %r3, .LC304@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC304@toc@ha
	ld %r4, .LC304@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r4, -40(%r1)
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
	.p2align	2
	.type	__lshrdi3,@function
	.section	.opd,"aw",@progbits
__lshrdi3:                              # @__lshrdi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin147
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin147:
	.cfi_startproc
# %bb.0:
	std %r4, -56(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, -24(%r1)
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC305@toc@ha
	ld %r3, .LC305@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC305@toc@ha
	ld %r4, .LC305@toc@l(%r4)
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
	addis %r3, %r2, .LC306@toc@ha
	ld %r4, .LC306@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC305@toc@ha
	ld %r4, .LC305@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	addi %r4, %r4, -32
	srw %r3, %r3, %r4
	stw %r3, -44(%r1)
	b .LBB147_5
.LBB147_2:
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB147_4
# %bb.3:
	addis %r3, %r2, .LC306@toc@ha
	ld %r3, .LC306@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC306@toc@ha
	ld %r4, .LC306@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC305@toc@ha
	ld %r3, .LC305@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC305@toc@ha
	ld %r4, .LC305@toc@l(%r4)
	std %r3, 16(%r4)
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB147_6
.LBB147_4:
	addis %r3, %r2, .LC306@toc@ha
	ld %r4, .LC306@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	srw %r3, %r3, %r4
	stw %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -28(%r1)
	subfic %r4, %r4, 32
	slw %r3, %r3, %r4
	lwz %r4, -36(%r1)
	lwz %r5, -28(%r1)
	srw %r4, %r4, %r5
	or %r3, %r3, %r4
	stw %r3, -44(%r1)
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
	.p2align	2
	.type	__lshrti3,@function
	.section	.opd,"aw",@progbits
__lshrti3:                              # @__lshrti3
	.p2align	3, 0x0
	.quad	.Lfunc_begin148
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin148:
	.cfi_startproc
# %bb.0:
	std %r5, -104(%r1)                      # 8-byte Folded Spill
	mr	%r5, %r3
	ld %r3, -104(%r1)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, -48(%r1)
	std %r4, -40(%r1)
	stw %r3, -52(%r1)
	addis %r3, %r2, .LC307@toc@ha
	ld %r4, .LC307@toc@l(%r3)
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
	addis %r3, %r2, .LC308@toc@ha
	ld %r4, .LC308@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC307@toc@ha
	ld %r4, .LC307@toc@l(%r3)
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
	srd %r3, %r3, %r4
	std %r3, -88(%r1)
	b .LBB148_5
.LBB148_2:
	lwz %r3, -52(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB148_4
# %bb.3:
	addis %r3, %r2, .LC308@toc@ha
	ld %r4, .LC308@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	addis %r3, %r2, .LC307@toc@ha
	ld %r4, .LC307@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB148_6
.LBB148_4:
	addis %r3, %r2, .LC308@toc@ha
	ld %r4, .LC308@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r3, -80(%r1)
	lwz %r4, -52(%r1)
	srd %r3, %r3, %r4
	std %r3, -96(%r1)
	ld %r3, -80(%r1)
	lwz %r4, -52(%r1)
	mr	%r5, %r4
	subfic %r4, %r5, 64
	sld %r3, %r3, %r4
	ld %r4, -72(%r1)
	srd %r4, %r4, %r5
	or %r3, %r3, %r4
	std %r3, -88(%r1)
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
	.p2align	2
	.type	__muldsi3,@function
	.section	.opd,"aw",@progbits
__muldsi3:                              # @__muldsi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin149
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin149:
	.cfi_startproc
# %bb.0:
	std %r4, -48(%r1)                       # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, -48(%r1)                        # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	addis %r5, %r2, .LC309@toc@ha
	ld %r5, .LC309@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC309@toc@ha
	ld %r6, .LC309@toc@l(%r6)
	std %r5, 0(%r6)
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	addis %r3, %r2, .LC310@toc@ha
	ld %r3, .LC310@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC310@toc@ha
	ld %r4, .LC310@toc@l(%r4)
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
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -20(%r1)
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	stw %r3, -20(%r1)
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
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -36(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -20(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -20(%r1)
	lis %r4, 0
	ori %r4, %r4, 65535
	and %r3, %r3, %r4
	stw %r3, -20(%r1)
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
	lwz %r3, -20(%r1)
	add %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -36(%r1)
	li %r4, 16
	srw %r4, %r3, %r4
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	lwz %r3, -12(%r1)
	li %r4, 16
	srw %r3, %r3, %r4
	lwz %r4, -16(%r1)
	li %r5, 16
	srw %r4, %r4, %r5
	mullw %r4, %r3, %r4
	lwz %r3, -24(%r1)
	add %r3, %r3, %r4
	stw %r3, -24(%r1)
	ld %r3, -24(%r1)
	blr
	.long	0
	.quad	0
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-.Lfunc_begin149
	.cfi_endproc
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
	.section	.opd,"aw",@progbits
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
	.p2align	3, 0x0
	.quad	.Lfunc_begin150
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin150:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	addis %r5, %r2, .LC311@toc@ha
	ld %r5, .LC311@toc@l(%r5)
	ld %r5, 0(%r5)
	addi %r5, %r5, 1
	addis %r6, %r2, .LC311@toc@ha
	ld %r6, .LC311@toc@l(%r6)
	std %r5, 0(%r6)
	std %r3, 144(%r31)
	std %r4, 136(%r31)
	addis %r3, %r2, .LC312@toc@ha
	ld %r3, .LC312@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC312@toc@ha
	ld %r4, .LC312@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, 144(%r31)
	std %r3, 128(%r31)
	ld %r3, 136(%r31)
	std %r3, 120(%r31)
	lwz %r4, 132(%r31)
	lwz %r5, 124(%r31)
	mr	%r3, %r2
	std %r3, 40(%r1)
                                        # implicit-def: $x3
	mr	%r3, %r4
	clrldi	%r3, %r3, 32
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
	addis %r5, %r2, .LC313@toc@ha
	ld %r5, .LC313@toc@l(%r5)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
	std %r3, 112(%r31)
	lwz %r3, 128(%r31)
	lwz %r4, 124(%r31)
	mullw %r3, %r3, %r4
	lwz %r4, 132(%r31)
	lwz %r5, 120(%r31)
	mullw %r4, %r4, %r5
	add %r4, %r3, %r4
	lwz %r3, 112(%r31)
	add %r3, %r3, %r4
	stw %r3, 112(%r31)
	ld %r3, 112(%r31)
	addi %r1, %r1, 160
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
	.p2align	2
	.type	__mulddi3,@function
	.section	.opd,"aw",@progbits
__mulddi3:                              # @__mulddi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin151
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin151:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC314@toc@ha
	ld %r6, .LC314@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	addis %r3, %r2, .LC315@toc@ha
	ld %r4, .LC315@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	li %r3, 32
	stw %r3, -52(%r1)
	li %r3, -1
	rldic %r3, %r3, 0, 32
	std %r3, -64(%r1)
	lwz %r3, -12(%r1)
	lwz %r4, -20(%r1)
	mulld %r3, %r3, %r4
	std %r3, -40(%r1)
	lwz %r3, -40(%r1)
	std %r3, -72(%r1)
	lwz %r3, -36(%r1)
	std %r3, -40(%r1)
	lwz %r3, -16(%r1)
	lwz %r4, -20(%r1)
	mulld %r4, %r3, %r4
	ld %r3, -72(%r1)
	add %r3, %r3, %r4
	std %r3, -72(%r1)
	ld %r3, -72(%r1)
	sldi %r4, %r3, 32
	ld %r3, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -40(%r1)
	lwz %r3, -72(%r1)
	std %r3, -48(%r1)
	lwz %r3, -40(%r1)
	std %r3, -72(%r1)
	lwz %r3, -36(%r1)
	std %r3, -40(%r1)
	lwz %r3, -24(%r1)
	lwz %r4, -12(%r1)
	mulld %r4, %r3, %r4
	ld %r3, -72(%r1)
	add %r3, %r3, %r4
	std %r3, -72(%r1)
	ld %r3, -72(%r1)
	sldi %r4, %r3, 32
	ld %r3, -40(%r1)
	add %r3, %r3, %r4
	std %r3, -40(%r1)
	lwz %r4, -72(%r1)
	ld %r3, -48(%r1)
	add %r3, %r3, %r4
	std %r3, -48(%r1)
	lwz %r3, -16(%r1)
	lwz %r4, -24(%r1)
	mulld %r4, %r3, %r4
	ld %r3, -48(%r1)
	add %r3, %r3, %r4
	std %r3, -48(%r1)
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
	.p2align	2
	.type	__multi3,@function
	.section	.opd,"aw",@progbits
__multi3:                               # @__multi3
	.p2align	3, 0x0
	.quad	.Lfunc_begin152
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin152:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -208(%r1)
	std %r0, 224(%r1)
	.cfi_def_cfa_offset 208
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	addis %r7, %r2, .LC316@toc@ha
	ld %r8, .LC316@toc@l(%r7)
	ld %r7, 0(%r8)
	addi %r7, %r7, 1
	std %r7, 0(%r8)
	std %r4, 184(%r31)
	std %r3, 176(%r31)
	std %r6, 168(%r31)
	std %r5, 160(%r31)
	addis %r3, %r2, .LC317@toc@ha
	ld %r4, .LC317@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 176(%r31)
	ld %r4, 184(%r31)
	std %r4, 152(%r31)
	std %r3, 144(%r31)
	ld %r3, 160(%r31)
	ld %r4, 168(%r31)
	std %r4, 136(%r31)
	std %r3, 128(%r31)
	ld %r3, 152(%r31)
	ld %r4, 136(%r31)
	mr	%r5, %r2
	std %r5, 40(%r1)
	addis %r5, %r2, .LC318@toc@ha
	ld %r5, .LC318@toc@l(%r5)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
	std %r4, 120(%r31)
	std %r3, 112(%r31)
	ld %r3, 144(%r31)
	ld %r4, 136(%r31)
	mulld %r3, %r3, %r4
	ld %r4, 152(%r31)
	ld %r5, 128(%r31)
	mulld %r4, %r4, %r5
	add %r4, %r3, %r4
	ld %r3, 112(%r31)
	add %r3, %r3, %r4
	std %r3, 112(%r31)
	ld %r3, 112(%r31)
	ld %r4, 120(%r31)
	addi %r1, %r1, 208
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
	.p2align	2
	.type	__negdi2,@function
	.section	.opd,"aw",@progbits
__negdi2:                               # @__negdi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin153
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin153:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC319@toc@ha
	ld %r5, .LC319@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC320@toc@ha
	ld %r4, .LC320@toc@l(%r3)
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
	.p2align	2
	.type	__negti2,@function
	.section	.opd,"aw",@progbits
__negti2:                               # @__negti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin154
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin154:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC321@toc@ha
	ld %r6, .LC321@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	addis %r3, %r2, .LC322@toc@ha
	ld %r4, .LC322@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r4, -24(%r1)
	ld %r3, -32(%r1)
	subfic %r4, %r4, 0
	subfze %r3, %r3
	blr
	.long	0
	.quad	0
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-.Lfunc_begin154
	.cfi_endproc
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
	.section	.opd,"aw",@progbits
__paritydi2:                            # @__paritydi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin155
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin155:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC323@toc@ha
	ld %r4, .LC323@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC323@toc@ha
	ld %r5, .LC323@toc@l(%r5)
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC324@toc@ha
	ld %r3, .LC324@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC324@toc@ha
	ld %r4, .LC324@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
	lwz %r3, -24(%r1)
	lwz %r4, -20(%r1)
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
	.p2align	2
	.type	__parityti2,@function
	.section	.opd,"aw",@progbits
__parityti2:                            # @__parityti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin156
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin156:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC325@toc@ha
	ld %r6, .LC325@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	addis %r3, %r2, .LC326@toc@ha
	ld %r4, .LC326@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	xor %r3, %r3, %r4
	std %r3, -56(%r1)
	lwz %r3, -56(%r1)
	lwz %r4, -52(%r1)
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
	.p2align	2
	.type	__paritysi2,@function
	.section	.opd,"aw",@progbits
__paritysi2:                            # @__paritysi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin157
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin157:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC327@toc@ha
	ld %r4, .LC327@toc@l(%r4)
	ld %r4, 0(%r4)
	addi %r4, %r4, 1
	addis %r5, %r2, .LC327@toc@ha
	ld %r5, .LC327@toc@l(%r5)
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC328@toc@ha
	ld %r3, .LC328@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC328@toc@ha
	ld %r4, .LC328@toc@l(%r4)
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
	.p2align	2
	.type	__popcountdi2,@function
	.section	.opd,"aw",@progbits
__popcountdi2:                          # @__popcountdi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin158
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin158:
	.cfi_startproc
# %bb.0:
	addis %r4, %r2, .LC329@toc@ha
	ld %r5, .LC329@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	std %r3, -16(%r1)
	addis %r3, %r2, .LC330@toc@ha
	ld %r4, .LC330@toc@l(%r3)
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
	.p2align	2
	.type	__popcountsi2,@function
	.section	.opd,"aw",@progbits
__popcountsi2:                          # @__popcountsi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin159
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin159:
	.cfi_startproc
# %bb.0:
                                        # kill: def $r3 killed $r3 killed $x3
	addis %r4, %r2, .LC331@toc@ha
	ld %r5, .LC331@toc@l(%r4)
	ld %r4, 0(%r5)
	addi %r4, %r4, 1
	std %r4, 0(%r5)
	stw %r3, -12(%r1)
	addis %r3, %r2, .LC332@toc@ha
	ld %r4, .LC332@toc@l(%r3)
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
	.p2align	2
	.type	__popcountti2,@function
	.section	.opd,"aw",@progbits
__popcountti2:                          # @__popcountti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin160
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin160:
	.cfi_startproc
# %bb.0:
	addis %r5, %r2, .LC333@toc@ha
	ld %r6, .LC333@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	addis %r3, %r2, .LC334@toc@ha
	ld %r4, .LC334@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r5, -48(%r1)
	ld %r6, -40(%r1)
	lis %r3, 21845
	ori %r7, %r3, 21845
	rldimi %r7, %r7, 32, 0
	rotldi	%r3, %r6, 63
	and %r4, %r3, %r7
	rotldi	%r3, %r5, 63
	and %r3, %r3, %r7
	subc	%r4, %r6, %r4
	subfe %r3, %r3, %r5
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
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	rotldi	%r6, %r4, 60
	rldimi %r6, %r3, 60, 0
	rldicl %r5, %r3, 60, 4
	addc %r4, %r4, %r6
	adde %r3, %r3, %r5
	lis %r5, 3855
	ori %r5, %r5, 3855
	rldimi %r5, %r5, 32, 0
	and %r3, %r3, %r5
	and %r4, %r4, %r5
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r4, -48(%r1)
	ld %r3, -40(%r1)
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
	.p2align	2
	.type	__powidf2,@function
	.section	.opd,"aw",@progbits
__powidf2:                              # @__powidf2
	.p2align	3, 0x0
	.quad	.Lfunc_begin161
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin161:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 120(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r4, 144(%r31)
	stw %r3, 140(%r31)
	addis %r3, %r2, .LC335@toc@ha
	ld %r4, .LC335@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 140(%r31)
	srwi %r3, %r3, 31
	stw %r3, 136(%r31)
	li %r3, 1023
	rldic %r3, %r3, 52, 2
	std %r3, 128(%r31)
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC335@toc@ha
	ld %r3, .LC335@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC335@toc@ha
	ld %r4, .LC335@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, 140(%r31)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB161_3
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
	addis %r3, %r2, .LC336@toc@ha
	ld %r4, .LC336@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC335@toc@ha
	ld %r4, .LC335@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	ld %r4, 144(%r31)
	ld %r3, 128(%r31)
	bl __muldf3
	nop
	std %r3, 128(%r31)
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	lwz %r3, 140(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 140(%r31)
	lwz %r3, 140(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB161_5
# %bb.4:
	addis %r3, %r2, .LC335@toc@ha
	ld %r3, .LC335@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC335@toc@ha
	ld %r4, .LC335@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	addis %r3, %r2, .LC336@toc@ha
	ld %r4, .LC336@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	ld %r4, 144(%r31)
	mr	%r3, %r4
	bl __muldf3
	nop
	std %r3, 144(%r31)
	b .LBB161_1
.LBB161_6:
	lwz %r3, 136(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB161_8
# %bb.7:
	addis %r3, %r2, .LC336@toc@ha
	ld %r4, .LC336@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC335@toc@ha
	ld %r4, .LC335@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	ld %r4, 128(%r31)
	li %r3, 1023
	rldic %r3, %r3, 52, 2
	bl __divdf3
	nop
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB161_9
.LBB161_8:
	addis %r3, %r2, .LC336@toc@ha
	ld %r4, .LC336@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	ld %r3, 128(%r31)
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB161_9
.LBB161_9:
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
	addi %r1, %r1, 160
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
	.p2align	2
	.type	__powisf2,@function
	.section	.opd,"aw",@progbits
__powisf2:                              # @__powisf2
	.p2align	3, 0x0
	.quad	.Lfunc_begin162
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin162:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	mr	%r4, %r3
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
                                        # kill: def $r4 killed $r4 killed $x4
	stw %r4, 148(%r31)
	stw %r3, 144(%r31)
	addis %r3, %r2, .LC337@toc@ha
	ld %r4, .LC337@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	lwz %r3, 144(%r31)
	srwi %r3, %r3, 31
	stw %r3, 140(%r31)
	lis %r3, 16256
	stw %r3, 136(%r31)
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	addis %r3, %r2, .LC337@toc@ha
	ld %r3, .LC337@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC337@toc@ha
	ld %r4, .LC337@toc@l(%r4)
	std %r3, 8(%r4)
	lwz %r3, 144(%r31)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB162_3
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
	addis %r3, %r2, .LC338@toc@ha
	ld %r4, .LC338@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	addis %r3, %r2, .LC337@toc@ha
	ld %r4, .LC337@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	lwz %r4, 148(%r31)
	lwz %r3, 136(%r31)
	bl __mulsf3
	nop
	stw %r3, 136(%r31)
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	lwz %r3, 144(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 144(%r31)
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB162_5
# %bb.4:
	addis %r3, %r2, .LC337@toc@ha
	ld %r3, .LC337@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC337@toc@ha
	ld %r4, .LC337@toc@l(%r4)
	std %r3, 24(%r4)
	b .LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	addis %r3, %r2, .LC338@toc@ha
	ld %r4, .LC338@toc@l(%r3)
	ld %r3, 8(%r4)
	addi %r3, %r3, 1
	std %r3, 8(%r4)
	lwz %r4, 148(%r31)
	mr	%r3, %r4
	bl __mulsf3
	nop
	stw %r3, 148(%r31)
	b .LBB162_1
.LBB162_6:
	lwz %r3, 140(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB162_8
# %bb.7:
	addis %r3, %r2, .LC338@toc@ha
	ld %r4, .LC338@toc@l(%r3)
	ld %r3, 16(%r4)
	addi %r3, %r3, 1
	std %r3, 16(%r4)
	addis %r3, %r2, .LC337@toc@ha
	ld %r4, .LC337@toc@l(%r3)
	ld %r3, 32(%r4)
	addi %r3, %r3, 1
	std %r3, 32(%r4)
	lwz %r4, 136(%r31)
	lis %r3, 16256
	bl __divsf3
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB162_9
.LBB162_8:
	addis %r3, %r2, .LC338@toc@ha
	ld %r4, .LC338@toc@l(%r3)
	ld %r3, 24(%r4)
	addi %r3, %r3, 1
	std %r3, 24(%r4)
	lwz %r3, 136(%r31)
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB162_9
.LBB162_9:
	lwz %r4, 124(%r31)                      # 4-byte Folded Reload
                                        # implicit-def: $x3
	mr	%r3, %r4
	addi %r1, %r1, 160
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
	.p2align	2
	.type	__ucmpdi2,@function
	.section	.opd,"aw",@progbits
__ucmpdi2:                              # @__ucmpdi2
	.p2align	3, 0x0
	.quad	.Lfunc_begin163
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin163:
	.cfi_startproc
# %bb.0:
	std %r3, -24(%r1)
	std %r4, -32(%r1)
	addis %r3, %r2, .LC339@toc@ha
	ld %r3, .LC339@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC339@toc@ha
	ld %r4, .LC339@toc@l(%r4)
	std %r3, 0(%r4)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	std %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB163_2
# %bb.1:
	addis %r3, %r2, .LC340@toc@ha
	ld %r3, .LC340@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC340@toc@ha
	ld %r4, .LC340@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC339@toc@ha
	ld %r3, .LC339@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC339@toc@ha
	ld %r4, .LC339@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_2:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB163_4
# %bb.3:
	addis %r3, %r2, .LC340@toc@ha
	ld %r3, .LC340@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC340@toc@ha
	ld %r4, .LC340@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC339@toc@ha
	ld %r3, .LC339@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC339@toc@ha
	ld %r4, .LC339@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_4:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB163_6
# %bb.5:
	addis %r3, %r2, .LC340@toc@ha
	ld %r3, .LC340@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC340@toc@ha
	ld %r4, .LC340@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC339@toc@ha
	ld %r3, .LC339@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC339@toc@ha
	ld %r4, .LC339@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_6:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB163_8
# %bb.7:
	addis %r3, %r2, .LC340@toc@ha
	ld %r3, .LC340@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC340@toc@ha
	ld %r4, .LC340@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC339@toc@ha
	ld %r3, .LC339@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC339@toc@ha
	ld %r4, .LC339@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_8:
	addis %r3, %r2, .LC340@toc@ha
	ld %r3, .LC340@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC340@toc@ha
	ld %r4, .LC340@toc@l(%r4)
	std %r3, 32(%r4)
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
	.p2align	2
	.type	__aeabi_ulcmp,@function
	.section	.opd,"aw",@progbits
__aeabi_ulcmp:                          # @__aeabi_ulcmp
	.p2align	3, 0x0
	.quad	.Lfunc_begin164
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin164:
	.cfi_startproc
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
	addis %r5, %r2, .LC341@toc@ha
	ld %r6, .LC341@toc@l(%r5)
	ld %r5, 0(%r6)
	addi %r5, %r5, 1
	std %r5, 0(%r6)
	std %r3, 128(%r31)
	std %r4, 120(%r31)
	addis %r3, %r2, .LC342@toc@ha
	ld %r4, .LC342@toc@l(%r3)
	ld %r3, 0(%r4)
	addi %r3, %r3, 1
	std %r3, 0(%r4)
	ld %r3, 128(%r31)
	ld %r4, 120(%r31)
	mr	%r5, %r2
	std %r5, 40(%r1)
	addis %r5, %r2, .LC343@toc@ha
	ld %r5, .LC343@toc@l(%r5)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	addi %r3, %r3, -1
	extsw %r3, %r3
	addi %r1, %r1, 144
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
	.p2align	2
	.type	__ucmpti2,@function
	.section	.opd,"aw",@progbits
__ucmpti2:                              # @__ucmpti2
	.p2align	3, 0x0
	.quad	.Lfunc_begin165
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin165:
	.cfi_startproc
# %bb.0:
	std %r3, -32(%r1)
	std %r4, -24(%r1)
	std %r6, -40(%r1)
	std %r5, -48(%r1)
	addis %r3, %r2, .LC344@toc@ha
	ld %r4, .LC344@toc@l(%r3)
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
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB165_2
# %bb.1:
	addis %r3, %r2, .LC345@toc@ha
	ld %r3, .LC345@toc@l(%r3)
	ld %r3, 0(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC345@toc@ha
	ld %r4, .LC345@toc@l(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC344@toc@ha
	ld %r3, .LC344@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC344@toc@ha
	ld %r4, .LC344@toc@l(%r4)
	std %r3, 8(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_2:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB165_4
# %bb.3:
	addis %r3, %r2, .LC345@toc@ha
	ld %r3, .LC345@toc@l(%r3)
	ld %r3, 8(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC345@toc@ha
	ld %r4, .LC345@toc@l(%r4)
	std %r3, 8(%r4)
	addis %r3, %r2, .LC344@toc@ha
	ld %r3, .LC344@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC344@toc@ha
	ld %r4, .LC344@toc@l(%r4)
	std %r3, 16(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_4:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB165_6
# %bb.5:
	addis %r3, %r2, .LC345@toc@ha
	ld %r3, .LC345@toc@l(%r3)
	ld %r3, 16(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC345@toc@ha
	ld %r4, .LC345@toc@l(%r4)
	std %r3, 16(%r4)
	addis %r3, %r2, .LC344@toc@ha
	ld %r3, .LC344@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC344@toc@ha
	ld %r4, .LC344@toc@l(%r4)
	std %r3, 24(%r4)
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_6:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB165_8
# %bb.7:
	addis %r3, %r2, .LC345@toc@ha
	ld %r3, .LC345@toc@l(%r3)
	ld %r3, 24(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC345@toc@ha
	ld %r4, .LC345@toc@l(%r4)
	std %r3, 24(%r4)
	addis %r3, %r2, .LC344@toc@ha
	ld %r3, .LC344@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC344@toc@ha
	ld %r4, .LC344@toc@l(%r4)
	std %r3, 32(%r4)
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_8:
	addis %r3, %r2, .LC345@toc@ha
	ld %r3, .LC345@toc@l(%r3)
	ld %r3, 32(%r3)
	addi %r3, %r3, 1
	addis %r4, %r2, .LC345@toc@ha
	ld %r4, .LC345@toc@l(%r4)
	std %r3, 32(%r4)
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
	.p2align	2                               # -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
	.section	.opd,"aw",@progbits
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
	.p2align	3, 0x0
	.quad	.Lfunc_begin166
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin166:
	.cfi_startproc
# %bb.0:
	mflr %r0
	std %r31, -8(%r1)
	stdu %r1, -176(%r1)
	std %r0, 192(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	li %r3, 0
	stw %r3, 164(%r31)                      # 4-byte Folded Spill
	b .LBB166_1
.LBB166_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB166_2 Depth 2
	lwz %r4, 164(%r31)                      # 4-byte Folded Reload
	stw %r4, 124(%r31)                      # 4-byte Folded Spill
	addis %r3, %r2, .LC346@toc@ha
	ld %r3, .LC346@toc@l(%r3)
	extsw %r4, %r4
	mulli %r4, %r4, 40
	add %r4, %r3, %r4
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	ld %r3, 0(%r4)
	lwz %r5, 8(%r4)
	lwz %r6, 12(%r4)
	mr	%r4, %r2
	std %r4, 40(%r1)
                                        # implicit-def: $x4
	mr	%r4, %r5
	clrldi	%r4, %r4, 32
                                        # implicit-def: $x5
	mr	%r5, %r6
	clrldi	%r5, %r5, 32
	addis %r6, %r2, .LC347@toc@ha
	ld %r6, .LC347@toc@l(%r6)
	ld %r7, 8(%r6)
	ld %r11, 16(%r6)
	ld %r6, 0(%r6)
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
	lwz %r4, 16(%r3)
	stw %r4, 140(%r31)                      # 4-byte Folded Spill
	ld %r5, 24(%r3)
	std %r5, 144(%r31)                      # 8-byte Folded Spill
	ld %r3, 32(%r3)
	std %r3, 152(%r31)                      # 8-byte Folded Spill
	li %r3, 0
	cmpw	%r3, %r4
	stw %r3, 160(%r31)                      # 4-byte Folded Spill
	bge %cr0, .LBB166_3
.LBB166_2:                              #   Parent Loop BB166_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lwz %r3, 160(%r31)                      # 4-byte Folded Reload
	ld %r5, 144(%r31)                       # 8-byte Folded Reload
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	extsw %r3, %r3
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	mulli %r3, %r3, 12
	lwzux %r3, %r5, %r3
	lwz %r4, 4(%r5)
	lwz %r5, 8(%r5)
	mr	%r6, %r2
	std %r6, 40(%r1)
	addis %r6, %r2, .LC348@toc@ha
	ld %r6, .LC348@toc@l(%r6)
	ld %r7, 8(%r6)
	ld %r11, 16(%r6)
	ld %r6, 0(%r6)
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
	ld %r4, 112(%r31)                       # 8-byte Folded Reload
	ld %r3, 152(%r31)                       # 8-byte Folded Reload
	sldi %r4, %r4, 4
	add %r3, %r3, %r4
	lwz %r5, 0(%r3)
	ld %r4, 8(%r3)
	mr	%r3, %r2
	std %r3, 40(%r1)
                                        # implicit-def: $x3
	mr	%r3, %r5
	clrldi	%r3, %r3, 32
	addis %r5, %r2, .LC349@toc@ha
	ld %r5, .LC349@toc@l(%r5)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
	lwz %r3, 120(%r31)                      # 4-byte Folded Reload
	lwz %r4, 140(%r31)                      # 4-byte Folded Reload
	addi %r3, %r3, 1
	cmpw	%r3, %r4
	stw %r3, 160(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB166_2
.LBB166_3:                              #   in Loop: Header=BB166_1 Depth=1
	mr	%r3, %r2
	std %r3, 40(%r1)
	addis %r3, %r2, .LC350@toc@ha
	ld %r3, .LC350@toc@l(%r3)
	ld %r4, 8(%r3)
	ld %r11, 16(%r3)
	ld %r3, 0(%r3)
	mr	%r2, %r4
	mtctr %r3
	bctrl
	ld 2, 40(%r1)
	mr	%r3, %r2
	std %r3, 40(%r1)
	addis %r3, %r2, .LC351@toc@ha
	ld %r3, .LC351@toc@l(%r3)
	ld %r4, 8(%r3)
	ld %r11, 16(%r3)
	ld %r3, 0(%r3)
	mr	%r2, %r4
	mtctr %r3
	bctrl
	ld 2, 40(%r1)
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	addi %r3, %r3, 1
	cmpwi	%r3, 1
	stw %r3, 164(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB166_1
# %bb.4:
	addi %r1, %r1, 176
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end166:
	.size	__llvm_gcov_writeout, .Lfunc_end166-.Lfunc_begin166
	.cfi_endproc
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
	.section	.opd,"aw",@progbits
__llvm_gcov_reset:                      # @__llvm_gcov_reset
	.p2align	3, 0x0
	.quad	.Lfunc_begin167
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin167:
	.cfi_startproc
# %bb.0:
	addis %r3, %r2, .LC0@toc@ha
	ld %r4, .LC0@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC2@toc@ha
	ld %r4, .LC2@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC7@toc@ha
	ld %r4, .LC7@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC9@toc@ha
	ld %r4, .LC9@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC11@toc@ha
	ld %r4, .LC11@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC12@toc@ha
	ld %r4, .LC12@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC15@toc@ha
	ld %r4, .LC15@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC16@toc@ha
	ld %r4, .LC16@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC18@toc@ha
	ld %r4, .LC18@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC20@toc@ha
	ld %r4, .LC20@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC23@toc@ha
	ld %r4, .LC23@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC24@toc@ha
	ld %r4, .LC24@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC26@toc@ha
	ld %r4, .LC26@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC29@toc@ha
	ld %r4, .LC29@toc@l(%r3)
	li %r3, 0
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC30@toc@ha
	ld %r4, .LC30@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC32@toc@ha
	ld %r4, .LC32@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC34@toc@ha
	ld %r4, .LC34@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC36@toc@ha
	ld %r4, .LC36@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC38@toc@ha
	ld %r4, .LC38@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC40@toc@ha
	ld %r4, .LC40@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC42@toc@ha
	ld %r4, .LC42@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC44@toc@ha
	ld %r4, .LC44@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC46@toc@ha
	ld %r4, .LC46@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC48@toc@ha
	ld %r4, .LC48@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC50@toc@ha
	ld %r4, .LC50@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC52@toc@ha
	ld %r4, .LC52@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC54@toc@ha
	ld %r4, .LC54@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC57@toc@ha
	ld %r4, .LC57@toc@l(%r3)
	li %r3, 0
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC58@toc@ha
	ld %r4, .LC58@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC60@toc@ha
	ld %r4, .LC60@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC63@toc@ha
	ld %r4, .LC63@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC65@toc@ha
	ld %r4, .LC65@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC67@toc@ha
	ld %r4, .LC67@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC69@toc@ha
	ld %r4, .LC69@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC71@toc@ha
	ld %r4, .LC71@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC73@toc@ha
	ld %r4, .LC73@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC75@toc@ha
	ld %r4, .LC75@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC77@toc@ha
	ld %r4, .LC77@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC78@toc@ha
	ld %r4, .LC78@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC82@toc@ha
	ld %r4, .LC82@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC85@toc@ha
	ld %r4, .LC85@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC88@toc@ha
	ld %r4, .LC88@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC89@toc@ha
	ld %r4, .LC89@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC92@toc@ha
	ld %r4, .LC92@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC94@toc@ha
	ld %r4, .LC94@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC96@toc@ha
	ld %r4, .LC96@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC99@toc@ha
	ld %r4, .LC99@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC102@toc@ha
	ld %r4, .LC102@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC104@toc@ha
	ld %r4, .LC104@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC106@toc@ha
	ld %r4, .LC106@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC108@toc@ha
	ld %r4, .LC108@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC109@toc@ha
	ld %r4, .LC109@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC112@toc@ha
	ld %r4, .LC112@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC113@toc@ha
	ld %r4, .LC113@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC116@toc@ha
	ld %r4, .LC116@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC117@toc@ha
	ld %r4, .LC117@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC120@toc@ha
	ld %r4, .LC120@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC121@toc@ha
	ld %r4, .LC121@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC124@toc@ha
	ld %r4, .LC124@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC126@toc@ha
	ld %r4, .LC126@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC127@toc@ha
	ld %r4, .LC127@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC129@toc@ha
	ld %r4, .LC129@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC132@toc@ha
	ld %r4, .LC132@toc@l(%r3)
	li %r3, 0
	std %r3, 56(%r4)
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC134@toc@ha
	ld %r4, .LC134@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC136@toc@ha
	ld %r4, .LC136@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC137@toc@ha
	ld %r4, .LC137@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC140@toc@ha
	ld %r4, .LC140@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC141@toc@ha
	ld %r4, .LC141@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC144@toc@ha
	ld %r4, .LC144@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC145@toc@ha
	ld %r4, .LC145@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC147@toc@ha
	ld %r4, .LC147@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC149@toc@ha
	ld %r4, .LC149@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC151@toc@ha
	ld %r4, .LC151@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC153@toc@ha
	ld %r4, .LC153@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC155@toc@ha
	ld %r4, .LC155@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC157@toc@ha
	ld %r4, .LC157@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC159@toc@ha
	ld %r4, .LC159@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC161@toc@ha
	ld %r4, .LC161@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC163@toc@ha
	ld %r4, .LC163@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC165@toc@ha
	ld %r4, .LC165@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC167@toc@ha
	ld %r4, .LC167@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC169@toc@ha
	ld %r4, .LC169@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC172@toc@ha
	ld %r4, .LC172@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC174@toc@ha
	ld %r4, .LC174@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC175@toc@ha
	ld %r4, .LC175@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC177@toc@ha
	ld %r4, .LC177@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC179@toc@ha
	ld %r4, .LC179@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC181@toc@ha
	ld %r4, .LC181@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC183@toc@ha
	ld %r4, .LC183@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC185@toc@ha
	ld %r4, .LC185@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC187@toc@ha
	ld %r4, .LC187@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC189@toc@ha
	ld %r4, .LC189@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC193@toc@ha
	ld %r4, .LC193@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC194@toc@ha
	ld %r4, .LC194@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC197@toc@ha
	ld %r4, .LC197@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC198@toc@ha
	ld %r4, .LC198@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC201@toc@ha
	ld %r4, .LC201@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC205@toc@ha
	ld %r4, .LC205@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC207@toc@ha
	ld %r4, .LC207@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC209@toc@ha
	ld %r4, .LC209@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC212@toc@ha
	ld %r4, .LC212@toc@l(%r3)
	li %r3, 0
	std %r3, 56(%r4)
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC213@toc@ha
	ld %r4, .LC213@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC216@toc@ha
	ld %r4, .LC216@toc@l(%r3)
	li %r3, 0
	std %r3, 56(%r4)
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC218@toc@ha
	ld %r4, .LC218@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC220@toc@ha
	ld %r4, .LC220@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC221@toc@ha
	ld %r4, .LC221@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC224@toc@ha
	ld %r4, .LC224@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC226@toc@ha
	ld %r4, .LC226@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC228@toc@ha
	ld %r4, .LC228@toc@l(%r3)
	li %r3, 0
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC229@toc@ha
	ld %r4, .LC229@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC231@toc@ha
	ld %r4, .LC231@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC233@toc@ha
	ld %r4, .LC233@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC235@toc@ha
	ld %r4, .LC235@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC237@toc@ha
	ld %r4, .LC237@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC239@toc@ha
	ld %r4, .LC239@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC241@toc@ha
	ld %r4, .LC241@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC243@toc@ha
	ld %r4, .LC243@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC246@toc@ha
	ld %r4, .LC246@toc@l(%r3)
	li %r3, 0
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC247@toc@ha
	ld %r4, .LC247@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC249@toc@ha
	ld %r4, .LC249@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC251@toc@ha
	ld %r4, .LC251@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC254@toc@ha
	ld %r4, .LC254@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC256@toc@ha
	ld %r4, .LC256@toc@l(%r3)
	li %r3, 0
	std %r3, 56(%r4)
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC258@toc@ha
	ld %r4, .LC258@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC260@toc@ha
	ld %r4, .LC260@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC261@toc@ha
	ld %r4, .LC261@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC263@toc@ha
	ld %r4, .LC263@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC266@toc@ha
	ld %r4, .LC266@toc@l(%r3)
	li %r3, 0
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC267@toc@ha
	ld %r4, .LC267@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC270@toc@ha
	ld %r4, .LC270@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC273@toc@ha
	ld %r4, .LC273@toc@l(%r3)
	li %r3, 0
	std %r3, 56(%r4)
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC275@toc@ha
	ld %r4, .LC275@toc@l(%r3)
	li %r3, 0
	std %r3, 56(%r4)
	std %r3, 48(%r4)
	std %r3, 40(%r4)
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC277@toc@ha
	ld %r4, .LC277@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC279@toc@ha
	ld %r4, .LC279@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC281@toc@ha
	ld %r4, .LC281@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC283@toc@ha
	ld %r4, .LC283@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC284@toc@ha
	ld %r4, .LC284@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC286@toc@ha
	ld %r4, .LC286@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC288@toc@ha
	ld %r4, .LC288@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC290@toc@ha
	ld %r4, .LC290@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC293@toc@ha
	ld %r4, .LC293@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC294@toc@ha
	ld %r4, .LC294@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC298@toc@ha
	ld %r4, .LC298@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC299@toc@ha
	ld %r4, .LC299@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC301@toc@ha
	ld %r4, .LC301@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC304@toc@ha
	ld %r4, .LC304@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC306@toc@ha
	ld %r4, .LC306@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC308@toc@ha
	ld %r4, .LC308@toc@l(%r3)
	li %r3, 0
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC309@toc@ha
	ld %r4, .LC309@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC311@toc@ha
	ld %r4, .LC311@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC314@toc@ha
	ld %r4, .LC314@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC316@toc@ha
	ld %r4, .LC316@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC319@toc@ha
	ld %r4, .LC319@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC321@toc@ha
	ld %r4, .LC321@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC323@toc@ha
	ld %r4, .LC323@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC325@toc@ha
	ld %r4, .LC325@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC327@toc@ha
	ld %r4, .LC327@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC329@toc@ha
	ld %r4, .LC329@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC331@toc@ha
	ld %r4, .LC331@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC333@toc@ha
	ld %r4, .LC333@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC336@toc@ha
	ld %r4, .LC336@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC338@toc@ha
	ld %r4, .LC338@toc@l(%r3)
	li %r3, 0
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC340@toc@ha
	ld %r4, .LC340@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	addis %r3, %r2, .LC341@toc@ha
	ld %r4, .LC341@toc@l(%r3)
	li %r3, 0
	std %r3, 0(%r4)
	addis %r3, %r2, .LC345@toc@ha
	ld %r4, .LC345@toc@l(%r3)
	li %r3, 0
	std %r3, 32(%r4)
	std %r3, 24(%r4)
	std %r3, 16(%r4)
	std %r3, 8(%r4)
	std %r3, 0(%r4)
	blr
	.long	0
	.quad	0
.Lfunc_end167:
	.size	__llvm_gcov_reset, .Lfunc_end167-.Lfunc_begin167
	.cfi_endproc
                                        # -- End function
	.p2align	2                               # -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
	.section	.opd,"aw",@progbits
__llvm_gcov_init:                       # @__llvm_gcov_init
	.p2align	3, 0x0
	.quad	.Lfunc_begin168
	.quad	.TOC.@tocbase
	.quad	0
	.text
.Lfunc_begin168:
	.cfi_startproc
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
	mr	%r3, %r2
	std %r3, 40(%r1)
	addis %r3, %r2, .LC352@toc@ha
	ld %r3, .LC352@toc@l(%r3)
	addis %r4, %r2, .LC353@toc@ha
	ld %r4, .LC353@toc@l(%r4)
	addis %r5, %r2, .LC354@toc@ha
	ld %r5, .LC354@toc@l(%r5)
	ld %r6, 8(%r5)
	ld %r11, 16(%r5)
	ld %r5, 0(%r5)
	mr	%r2, %r6
	mtctr %r5
	bctrl
	ld 2, 40(%r1)
	addi %r1, %r1, 128
	ld %r0, 16(%r1)
	ld %r31, -8(%r1)
	mtlr %r0
	blr
	.long	0
	.quad	0
.Lfunc_end168:
	.size	__llvm_gcov_init, .Lfunc_end168-.Lfunc_begin168
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
	.type	__llvm_gcov_ctr,@object         # @__llvm_gcov_ctr
	.lcomm	__llvm_gcov_ctr,8,8
	.type	__llvm_gcov_ctr.1,@object       # @__llvm_gcov_ctr.1
	.lcomm	__llvm_gcov_ctr.1,8,8
	.type	__llvm_gcov_ctr.2,@object       # @__llvm_gcov_ctr.2
	.lcomm	__llvm_gcov_ctr.2,40,16
	.type	__llvm_gcov_ctr.3,@object       # @__llvm_gcov_ctr.3
	.lcomm	__llvm_gcov_ctr.3,40,16
	.type	__llvm_gcov_ctr.4,@object       # @__llvm_gcov_ctr.4
	.lcomm	__llvm_gcov_ctr.4,40,16
	.type	__llvm_gcov_ctr.5,@object       # @__llvm_gcov_ctr.5
	.lcomm	__llvm_gcov_ctr.5,40,16
	.type	__llvm_gcov_ctr.6,@object       # @__llvm_gcov_ctr.6
	.lcomm	__llvm_gcov_ctr.6,16,8
	.type	__llvm_gcov_ctr.7,@object       # @__llvm_gcov_ctr.7
	.lcomm	__llvm_gcov_ctr.7,24,16
	.type	__llvm_gcov_ctr.8,@object       # @__llvm_gcov_ctr.8
	.lcomm	__llvm_gcov_ctr.8,16,8
	.type	__llvm_gcov_ctr.9,@object       # @__llvm_gcov_ctr.9
	.lcomm	__llvm_gcov_ctr.9,16,8
	.type	__llvm_gcov_ctr.10,@object      # @__llvm_gcov_ctr.10
	.lcomm	__llvm_gcov_ctr.10,32,16
	.type	__llvm_gcov_ctr.11,@object      # @__llvm_gcov_ctr.11
	.lcomm	__llvm_gcov_ctr.11,24,16
	.type	__llvm_gcov_ctr.12,@object      # @__llvm_gcov_ctr.12
	.lcomm	__llvm_gcov_ctr.12,32,16
	.type	__llvm_gcov_ctr.13,@object      # @__llvm_gcov_ctr.13
	.lcomm	__llvm_gcov_ctr.13,16,8
	.type	__llvm_gcov_ctr.14,@object      # @__llvm_gcov_ctr.14
	.lcomm	__llvm_gcov_ctr.14,56,16
	.type	__llvm_gcov_ctr.15,@object      # @__llvm_gcov_ctr.15
	.lcomm	__llvm_gcov_ctr.15,16,8
	.type	__llvm_gcov_ctr.16,@object      # @__llvm_gcov_ctr.16
	.lcomm	__llvm_gcov_ctr.16,8,8
	.type	__llvm_gcov_ctr.17,@object      # @__llvm_gcov_ctr.17
	.lcomm	__llvm_gcov_ctr.17,8,8
	.type	__llvm_gcov_ctr.18,@object      # @__llvm_gcov_ctr.18
	.lcomm	__llvm_gcov_ctr.18,24,16
	.type	__llvm_gcov_ctr.19,@object      # @__llvm_gcov_ctr.19
	.lcomm	__llvm_gcov_ctr.19,24,16
	.type	__llvm_gcov_ctr.20,@object      # @__llvm_gcov_ctr.20
	.lcomm	__llvm_gcov_ctr.20,8,8
	.type	__llvm_gcov_ctr.21,@object      # @__llvm_gcov_ctr.21
	.lcomm	__llvm_gcov_ctr.21,8,8
	.type	__llvm_gcov_ctr.22,@object      # @__llvm_gcov_ctr.22
	.lcomm	__llvm_gcov_ctr.22,8,8
	.type	__llvm_gcov_ctr.23,@object      # @__llvm_gcov_ctr.23
	.lcomm	__llvm_gcov_ctr.23,8,8
	.type	__llvm_gcov_ctr.24,@object      # @__llvm_gcov_ctr.24
	.lcomm	__llvm_gcov_ctr.24,24,16
	.type	__llvm_gcov_ctr.25,@object      # @__llvm_gcov_ctr.25
	.lcomm	__llvm_gcov_ctr.25,8,8
	.type	__llvm_gcov_ctr.26,@object      # @__llvm_gcov_ctr.26
	.lcomm	__llvm_gcov_ctr.26,40,16
	.type	__llvm_gcov_ctr.27,@object      # @__llvm_gcov_ctr.27
	.lcomm	__llvm_gcov_ctr.27,8,8
	.type	__llvm_gcov_ctr.28,@object      # @__llvm_gcov_ctr.28
	.lcomm	__llvm_gcov_ctr.28,56,16
	.type	__llvm_gcov_ctr.29,@object      # @__llvm_gcov_ctr.29
	.lcomm	__llvm_gcov_ctr.29,24,16
	.type	__llvm_gcov_ctr.30,@object      # @__llvm_gcov_ctr.30
	.lcomm	__llvm_gcov_ctr.30,8,8
	.type	__llvm_gcov_ctr.31,@object      # @__llvm_gcov_ctr.31
	.lcomm	__llvm_gcov_ctr.31,32,16
	.type	__llvm_gcov_ctr.32,@object      # @__llvm_gcov_ctr.32
	.lcomm	__llvm_gcov_ctr.32,32,16
	.type	__llvm_gcov_ctr.33,@object      # @__llvm_gcov_ctr.33
	.lcomm	__llvm_gcov_ctr.33,48,16
	.type	__llvm_gcov_ctr.34,@object      # @__llvm_gcov_ctr.34
	.lcomm	__llvm_gcov_ctr.34,48,16
	.type	__llvm_gcov_ctr.35,@object      # @__llvm_gcov_ctr.35
	.lcomm	__llvm_gcov_ctr.35,48,16
	.type	__llvm_gcov_ctr.36,@object      # @__llvm_gcov_ctr.36
	.lcomm	__llvm_gcov_ctr.36,48,16
	.type	__llvm_gcov_ctr.37,@object      # @__llvm_gcov_ctr.37
	.lcomm	__llvm_gcov_ctr.37,48,16
	.type	__llvm_gcov_ctr.38,@object      # @__llvm_gcov_ctr.38
	.lcomm	__llvm_gcov_ctr.38,48,16
	.type	__llvm_gcov_ctr.39,@object      # @__llvm_gcov_ctr.39
	.lcomm	__llvm_gcov_ctr.39,16,8
	.type	__llvm_gcov_ctr.40,@object      # @__llvm_gcov_ctr.40
	.lcomm	__llvm_gcov_ctr.40,8,8
	.type	__llvm_gcov_ctr.41,@object      # @__llvm_gcov_ctr.41
	.lcomm	__llvm_gcov_ctr.41,8,8
	.type	__llvm_gcov_ctr.42,@object      # @__llvm_gcov_ctr.42
	.lcomm	__llvm_gcov_ctr.42,24,16
	.type	__llvm_gcov_ctr.43,@object      # @__llvm_gcov_ctr.43
	.lcomm	__llvm_gcov_ctr.43,24,16
	.type	__llvm_gcov_ctr.44,@object      # @__llvm_gcov_ctr.44
	.lcomm	__llvm_gcov_ctr.44,24,16
	.type	__llvm_gcov_ctr.45,@object      # @__llvm_gcov_ctr.45
	.lcomm	__llvm_gcov_ctr.45,24,16
	.type	__llvm_gcov_ctr.46,@object      # @__llvm_gcov_ctr.46
	.lcomm	__llvm_gcov_ctr.46,16,8
	.type	__llvm_gcov_ctr.47,@object      # @__llvm_gcov_ctr.47
	.lcomm	__llvm_gcov_ctr.47,48,16
	.type	__llvm_gcov_ctr.48,@object      # @__llvm_gcov_ctr.48
	.lcomm	__llvm_gcov_ctr.48,48,16
	.type	__llvm_gcov_ctr.49,@object      # @__llvm_gcov_ctr.49
	.lcomm	__llvm_gcov_ctr.49,48,16
	.type	__llvm_gcov_ctr.50,@object      # @__llvm_gcov_ctr.50
	.lcomm	__llvm_gcov_ctr.50,32,16
	.type	__llvm_gcov_ctr.51,@object      # @__llvm_gcov_ctr.51
	.lcomm	__llvm_gcov_ctr.51,32,16
	.type	__llvm_gcov_ctr.52,@object      # @__llvm_gcov_ctr.52
	.lcomm	__llvm_gcov_ctr.52,8,8
	.type	__llvm_gcov_ctr.53,@object      # @__llvm_gcov_ctr.53
	.lcomm	__llvm_gcov_ctr.53,16,8
	.type	__llvm_gcov_ctr.54,@object      # @__llvm_gcov_ctr.54
	.lcomm	__llvm_gcov_ctr.54,8,8
	.type	__llvm_gcov_ctr.55,@object      # @__llvm_gcov_ctr.55
	.lcomm	__llvm_gcov_ctr.55,16,8
	.type	__llvm_gcov_ctr.56,@object      # @__llvm_gcov_ctr.56
	.lcomm	__llvm_gcov_ctr.56,8,8
	.type	__llvm_gcov_ctr.57,@object      # @__llvm_gcov_ctr.57
	.lcomm	__llvm_gcov_ctr.57,16,8
	.type	__llvm_gcov_ctr.58,@object      # @__llvm_gcov_ctr.58
	.lcomm	__llvm_gcov_ctr.58,8,8
	.type	__llvm_gcov_ctr.59,@object      # @__llvm_gcov_ctr.59
	.lcomm	__llvm_gcov_ctr.59,40,16
	.type	__llvm_gcov_ctr.60,@object      # @__llvm_gcov_ctr.60
	.lcomm	__llvm_gcov_ctr.60,48,16
	.type	__llvm_gcov_ctr.61,@object      # @__llvm_gcov_ctr.61
	.lcomm	__llvm_gcov_ctr.61,16,8
	.type	__llvm_gcov_ctr.62,@object      # @__llvm_gcov_ctr.62
	.lcomm	__llvm_gcov_ctr.62,16,8
	.type	__llvm_gcov_ctr.63,@object      # @__llvm_gcov_ctr.63
	.lcomm	__llvm_gcov_ctr.63,64,16
	.type	__llvm_gcov_ctr.64,@object      # @__llvm_gcov_ctr.64
	.lcomm	__llvm_gcov_ctr.64,40,16
	.type	__llvm_gcov_ctr.65,@object      # @__llvm_gcov_ctr.65
	.lcomm	__llvm_gcov_ctr.65,48,16
	.type	__llvm_gcov_ctr.66,@object      # @__llvm_gcov_ctr.66
	.lcomm	__llvm_gcov_ctr.66,16,8
	.type	__llvm_gcov_ctr.67,@object      # @__llvm_gcov_ctr.67
	.lcomm	__llvm_gcov_ctr.67,40,16
	.type	__llvm_gcov_ctr.68,@object      # @__llvm_gcov_ctr.68
	.lcomm	__llvm_gcov_ctr.68,16,8
	.type	__llvm_gcov_ctr.69,@object      # @__llvm_gcov_ctr.69
	.lcomm	__llvm_gcov_ctr.69,40,16
	.type	__llvm_gcov_ctr.70,@object      # @__llvm_gcov_ctr.70
	.lcomm	__llvm_gcov_ctr.70,8,8
	.type	__llvm_gcov_ctr.71,@object      # @__llvm_gcov_ctr.71
	.lcomm	__llvm_gcov_ctr.71,8,8
	.type	__llvm_gcov_ctr.72,@object      # @__llvm_gcov_ctr.72
	.lcomm	__llvm_gcov_ctr.72,8,8
	.type	__llvm_gcov_ctr.73,@object      # @__llvm_gcov_ctr.73
	.lcomm	__llvm_gcov_ctr.73,8,8
	.type	__llvm_gcov_ctr.74,@object      # @__llvm_gcov_ctr.74
	.lcomm	__llvm_gcov_ctr.74,8,8
	.type	__llvm_gcov_ctr.75,@object      # @__llvm_gcov_ctr.75
	.lcomm	__llvm_gcov_ctr.75,8,8
	.type	__llvm_gcov_ctr.76,@object      # @__llvm_gcov_ctr.76
	.lcomm	__llvm_gcov_ctr.76,8,8
	.type	__llvm_gcov_ctr.77,@object      # @__llvm_gcov_ctr.77
	.lcomm	__llvm_gcov_ctr.77,8,8
	.type	__llvm_gcov_ctr.78,@object      # @__llvm_gcov_ctr.78
	.lcomm	__llvm_gcov_ctr.78,8,8
	.type	__llvm_gcov_ctr.79,@object      # @__llvm_gcov_ctr.79
	.lcomm	__llvm_gcov_ctr.79,8,8
	.type	__llvm_gcov_ctr.80,@object      # @__llvm_gcov_ctr.80
	.lcomm	__llvm_gcov_ctr.80,8,8
	.type	__llvm_gcov_ctr.81,@object      # @__llvm_gcov_ctr.81
	.lcomm	__llvm_gcov_ctr.81,8,8
	.type	__llvm_gcov_ctr.82,@object      # @__llvm_gcov_ctr.82
	.lcomm	__llvm_gcov_ctr.82,8,8
	.type	__llvm_gcov_ctr.83,@object      # @__llvm_gcov_ctr.83
	.lcomm	__llvm_gcov_ctr.83,24,16
	.type	__llvm_gcov_ctr.84,@object      # @__llvm_gcov_ctr.84
	.lcomm	__llvm_gcov_ctr.84,24,16
	.type	__llvm_gcov_ctr.85,@object      # @__llvm_gcov_ctr.85
	.lcomm	__llvm_gcov_ctr.85,24,16
	.type	__llvm_gcov_ctr.86,@object      # @__llvm_gcov_ctr.86
	.lcomm	__llvm_gcov_ctr.86,24,16
	.type	__llvm_gcov_ctr.87,@object      # @__llvm_gcov_ctr.87
	.lcomm	__llvm_gcov_ctr.87,24,16
	.type	__llvm_gcov_ctr.88,@object      # @__llvm_gcov_ctr.88
	.lcomm	__llvm_gcov_ctr.88,8,8
	.type	__llvm_gcov_ctr.89,@object      # @__llvm_gcov_ctr.89
	.lcomm	__llvm_gcov_ctr.89,40,16
	.type	__llvm_gcov_ctr.90,@object      # @__llvm_gcov_ctr.90
	.lcomm	__llvm_gcov_ctr.90,40,16
	.type	__llvm_gcov_ctr.91,@object      # @__llvm_gcov_ctr.91
	.lcomm	__llvm_gcov_ctr.91,40,16
	.type	__llvm_gcov_ctr.92,@object      # @__llvm_gcov_ctr.92
	.lcomm	__llvm_gcov_ctr.92,16,8
	.type	__llvm_gcov_ctr.93,@object      # @__llvm_gcov_ctr.93
	.lcomm	__llvm_gcov_ctr.93,40,16
	.type	__llvm_gcov_ctr.94,@object      # @__llvm_gcov_ctr.94
	.lcomm	__llvm_gcov_ctr.94,32,16
	.type	__llvm_gcov_ctr.95,@object      # @__llvm_gcov_ctr.95
	.lcomm	__llvm_gcov_ctr.95,32,16
	.type	__llvm_gcov_ctr.96,@object      # @__llvm_gcov_ctr.96
	.lcomm	__llvm_gcov_ctr.96,24,16
	.type	__llvm_gcov_ctr.97,@object      # @__llvm_gcov_ctr.97
	.lcomm	__llvm_gcov_ctr.97,32,16
	.type	__llvm_gcov_ctr.98,@object      # @__llvm_gcov_ctr.98
	.lcomm	__llvm_gcov_ctr.98,40,16
	.type	__llvm_gcov_ctr.99,@object      # @__llvm_gcov_ctr.99
	.lcomm	__llvm_gcov_ctr.99,48,16
	.type	__llvm_gcov_ctr.100,@object     # @__llvm_gcov_ctr.100
	.lcomm	__llvm_gcov_ctr.100,8,8
	.type	__llvm_gcov_ctr.101,@object     # @__llvm_gcov_ctr.101
	.lcomm	__llvm_gcov_ctr.101,64,16
	.type	__llvm_gcov_ctr.102,@object     # @__llvm_gcov_ctr.102
	.lcomm	__llvm_gcov_ctr.102,24,16
	.type	__llvm_gcov_ctr.103,@object     # @__llvm_gcov_ctr.103
	.lcomm	__llvm_gcov_ctr.103,64,16
	.type	__llvm_gcov_ctr.104,@object     # @__llvm_gcov_ctr.104
	.lcomm	__llvm_gcov_ctr.104,24,16
	.type	__llvm_gcov_ctr.105,@object     # @__llvm_gcov_ctr.105
	.lcomm	__llvm_gcov_ctr.105,24,16
	.type	__llvm_gcov_ctr.106,@object     # @__llvm_gcov_ctr.106
	.lcomm	__llvm_gcov_ctr.106,24,16
	.type	__llvm_gcov_ctr.107,@object     # @__llvm_gcov_ctr.107
	.lcomm	__llvm_gcov_ctr.107,48,16
	.type	__llvm_gcov_ctr.108,@object     # @__llvm_gcov_ctr.108
	.lcomm	__llvm_gcov_ctr.108,48,16
	.type	__llvm_gcov_ctr.109,@object     # @__llvm_gcov_ctr.109
	.lcomm	__llvm_gcov_ctr.109,48,16
	.type	__llvm_gcov_ctr.110,@object     # @__llvm_gcov_ctr.110
	.lcomm	__llvm_gcov_ctr.110,8,8
	.type	__llvm_gcov_ctr.111,@object     # @__llvm_gcov_ctr.111
	.lcomm	__llvm_gcov_ctr.111,8,8
	.type	__llvm_gcov_ctr.112,@object     # @__llvm_gcov_ctr.112
	.lcomm	__llvm_gcov_ctr.112,8,8
	.type	__llvm_gcov_ctr.113,@object     # @__llvm_gcov_ctr.113
	.lcomm	__llvm_gcov_ctr.113,8,8
	.type	__llvm_gcov_ctr.114,@object     # @__llvm_gcov_ctr.114
	.lcomm	__llvm_gcov_ctr.114,8,8
	.type	__llvm_gcov_ctr.115,@object     # @__llvm_gcov_ctr.115
	.lcomm	__llvm_gcov_ctr.115,8,8
	.type	__llvm_gcov_ctr.116,@object     # @__llvm_gcov_ctr.116
	.lcomm	__llvm_gcov_ctr.116,24,16
	.type	__llvm_gcov_ctr.117,@object     # @__llvm_gcov_ctr.117
	.lcomm	__llvm_gcov_ctr.117,24,16
	.type	__llvm_gcov_ctr.118,@object     # @__llvm_gcov_ctr.118
	.lcomm	__llvm_gcov_ctr.118,16,8
	.type	__llvm_gcov_ctr.119,@object     # @__llvm_gcov_ctr.119
	.lcomm	__llvm_gcov_ctr.119,24,16
	.type	__llvm_gcov_ctr.120,@object     # @__llvm_gcov_ctr.120
	.lcomm	__llvm_gcov_ctr.120,24,16
	.type	__llvm_gcov_ctr.121,@object     # @__llvm_gcov_ctr.121
	.lcomm	__llvm_gcov_ctr.121,24,16
	.type	__llvm_gcov_ctr.122,@object     # @__llvm_gcov_ctr.122
	.lcomm	__llvm_gcov_ctr.122,32,16
	.type	__llvm_gcov_ctr.123,@object     # @__llvm_gcov_ctr.123
	.lcomm	__llvm_gcov_ctr.123,64,16
	.type	__llvm_gcov_ctr.124,@object     # @__llvm_gcov_ctr.124
	.lcomm	__llvm_gcov_ctr.124,24,16
	.type	__llvm_gcov_ctr.125,@object     # @__llvm_gcov_ctr.125
	.lcomm	__llvm_gcov_ctr.125,24,16
	.type	__llvm_gcov_ctr.126,@object     # @__llvm_gcov_ctr.126
	.lcomm	__llvm_gcov_ctr.126,8,8
	.type	__llvm_gcov_ctr.127,@object     # @__llvm_gcov_ctr.127
	.lcomm	__llvm_gcov_ctr.127,8,8
	.type	__llvm_gcov_ctr.128,@object     # @__llvm_gcov_ctr.128
	.lcomm	__llvm_gcov_ctr.128,56,16
	.type	__llvm_gcov_ctr.129,@object     # @__llvm_gcov_ctr.129
	.lcomm	__llvm_gcov_ctr.129,32,16
	.type	__llvm_gcov_ctr.130,@object     # @__llvm_gcov_ctr.130
	.lcomm	__llvm_gcov_ctr.130,32,16
	.type	__llvm_gcov_ctr.131,@object     # @__llvm_gcov_ctr.131
	.lcomm	__llvm_gcov_ctr.131,64,16
	.type	__llvm_gcov_ctr.132,@object     # @__llvm_gcov_ctr.132
	.lcomm	__llvm_gcov_ctr.132,64,16
	.type	__llvm_gcov_ctr.133,@object     # @__llvm_gcov_ctr.133
	.lcomm	__llvm_gcov_ctr.133,24,16
	.type	__llvm_gcov_ctr.134,@object     # @__llvm_gcov_ctr.134
	.lcomm	__llvm_gcov_ctr.134,24,16
	.type	__llvm_gcov_ctr.135,@object     # @__llvm_gcov_ctr.135
	.lcomm	__llvm_gcov_ctr.135,24,16
	.type	__llvm_gcov_ctr.136,@object     # @__llvm_gcov_ctr.136
	.lcomm	__llvm_gcov_ctr.136,24,16
	.type	__llvm_gcov_ctr.137,@object     # @__llvm_gcov_ctr.137
	.lcomm	__llvm_gcov_ctr.137,8,8
	.type	__llvm_gcov_ctr.138,@object     # @__llvm_gcov_ctr.138
	.lcomm	__llvm_gcov_ctr.138,8,8
	.type	__llvm_gcov_ctr.139,@object     # @__llvm_gcov_ctr.139
	.lcomm	__llvm_gcov_ctr.139,8,8
	.type	__llvm_gcov_ctr.140,@object     # @__llvm_gcov_ctr.140
	.lcomm	__llvm_gcov_ctr.140,8,8
	.type	__llvm_gcov_ctr.141,@object     # @__llvm_gcov_ctr.141
	.lcomm	__llvm_gcov_ctr.141,40,16
	.type	__llvm_gcov_ctr.142,@object     # @__llvm_gcov_ctr.142
	.lcomm	__llvm_gcov_ctr.142,8,8
	.type	__llvm_gcov_ctr.143,@object     # @__llvm_gcov_ctr.143
	.lcomm	__llvm_gcov_ctr.143,40,16
	.type	__llvm_gcov_ctr.144,@object     # @__llvm_gcov_ctr.144
	.lcomm	__llvm_gcov_ctr.144,8,8
	.type	__llvm_gcov_ctr.145,@object     # @__llvm_gcov_ctr.145
	.lcomm	__llvm_gcov_ctr.145,8,8
	.type	__llvm_gcov_ctr.146,@object     # @__llvm_gcov_ctr.146
	.lcomm	__llvm_gcov_ctr.146,24,16
	.type	__llvm_gcov_ctr.147,@object     # @__llvm_gcov_ctr.147
	.lcomm	__llvm_gcov_ctr.147,24,16
	.type	__llvm_gcov_ctr.148,@object     # @__llvm_gcov_ctr.148
	.lcomm	__llvm_gcov_ctr.148,24,16
	.type	__llvm_gcov_ctr.149,@object     # @__llvm_gcov_ctr.149
	.lcomm	__llvm_gcov_ctr.149,8,8
	.type	__llvm_gcov_ctr.150,@object     # @__llvm_gcov_ctr.150
	.lcomm	__llvm_gcov_ctr.150,8,8
	.type	__llvm_gcov_ctr.151,@object     # @__llvm_gcov_ctr.151
	.lcomm	__llvm_gcov_ctr.151,8,8
	.type	__llvm_gcov_ctr.152,@object     # @__llvm_gcov_ctr.152
	.lcomm	__llvm_gcov_ctr.152,8,8
	.type	__llvm_gcov_ctr.153,@object     # @__llvm_gcov_ctr.153
	.lcomm	__llvm_gcov_ctr.153,8,8
	.type	__llvm_gcov_ctr.154,@object     # @__llvm_gcov_ctr.154
	.lcomm	__llvm_gcov_ctr.154,8,8
	.type	__llvm_gcov_ctr.155,@object     # @__llvm_gcov_ctr.155
	.lcomm	__llvm_gcov_ctr.155,8,8
	.type	__llvm_gcov_ctr.156,@object     # @__llvm_gcov_ctr.156
	.lcomm	__llvm_gcov_ctr.156,8,8
	.type	__llvm_gcov_ctr.157,@object     # @__llvm_gcov_ctr.157
	.lcomm	__llvm_gcov_ctr.157,8,8
	.type	__llvm_gcov_ctr.158,@object     # @__llvm_gcov_ctr.158
	.lcomm	__llvm_gcov_ctr.158,8,8
	.type	__llvm_gcov_ctr.159,@object     # @__llvm_gcov_ctr.159
	.lcomm	__llvm_gcov_ctr.159,8,8
	.type	__llvm_gcov_ctr.160,@object     # @__llvm_gcov_ctr.160
	.lcomm	__llvm_gcov_ctr.160,8,8
	.type	__llvm_gcov_ctr.161,@object     # @__llvm_gcov_ctr.161
	.lcomm	__llvm_gcov_ctr.161,32,16
	.type	__llvm_gcov_ctr.162,@object     # @__llvm_gcov_ctr.162
	.lcomm	__llvm_gcov_ctr.162,32,16
	.type	__llvm_gcov_ctr.163,@object     # @__llvm_gcov_ctr.163
	.lcomm	__llvm_gcov_ctr.163,40,16
	.type	__llvm_gcov_ctr.164,@object     # @__llvm_gcov_ctr.164
	.lcomm	__llvm_gcov_ctr.164,8,8
	.type	__llvm_gcov_ctr.165,@object     # @__llvm_gcov_ctr.165
	.lcomm	__llvm_gcov_ctr.165,40,16
	.type	.L__unnamed_1,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-powerpc64.gcda"
	.size	.L__unnamed_1, 53

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
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
	.section	.data.rel.ro,"aw",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.1
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.2
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.3
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.4
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.5
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.6
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.7
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.8
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.9
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.10
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.11
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.12
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.13
	.long	7                               # 0x7
	.space	4
	.quad	__llvm_gcov_ctr.14
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.15
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.16
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.17
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.18
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.19
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.20
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.21
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.22
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.23
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.24
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.25
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.26
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.27
	.long	7                               # 0x7
	.space	4
	.quad	__llvm_gcov_ctr.28
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.29
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.30
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.31
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.32
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.33
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.34
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.35
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.36
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.37
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.38
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.39
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.40
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.41
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.42
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.43
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.44
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.45
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.46
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.47
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.48
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.49
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.50
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.51
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.52
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.53
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.54
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.55
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.56
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.57
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.58
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.59
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.60
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.61
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.62
	.long	8                               # 0x8
	.space	4
	.quad	__llvm_gcov_ctr.63
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.64
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.65
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.66
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.67
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.68
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.69
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.70
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.71
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.72
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.73
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.74
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.75
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.76
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.77
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.78
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.79
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.80
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.81
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.82
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.83
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.84
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.85
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.86
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.87
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.88
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.89
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.90
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.91
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.92
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.93
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.94
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.95
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.96
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.97
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.98
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.99
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.100
	.long	8                               # 0x8
	.space	4
	.quad	__llvm_gcov_ctr.101
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.102
	.long	8                               # 0x8
	.space	4
	.quad	__llvm_gcov_ctr.103
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.104
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.105
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.106
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.107
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.108
	.long	6                               # 0x6
	.space	4
	.quad	__llvm_gcov_ctr.109
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.110
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.111
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.112
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.113
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.114
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.115
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.116
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.117
	.long	2                               # 0x2
	.space	4
	.quad	__llvm_gcov_ctr.118
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.119
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.120
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.121
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.122
	.long	8                               # 0x8
	.space	4
	.quad	__llvm_gcov_ctr.123
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.124
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.125
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.126
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.127
	.long	7                               # 0x7
	.space	4
	.quad	__llvm_gcov_ctr.128
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.129
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.130
	.long	8                               # 0x8
	.space	4
	.quad	__llvm_gcov_ctr.131
	.long	8                               # 0x8
	.space	4
	.quad	__llvm_gcov_ctr.132
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.133
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.134
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.135
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.136
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.137
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.138
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.139
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.140
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.141
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.142
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.143
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.144
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.145
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.146
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.147
	.long	3                               # 0x3
	.space	4
	.quad	__llvm_gcov_ctr.148
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.149
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.150
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.151
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.152
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.153
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.154
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.155
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.156
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.157
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.158
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.159
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.160
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.161
	.long	4                               # 0x4
	.space	4
	.quad	__llvm_gcov_ctr.162
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.163
	.long	1                               # 0x1
	.space	4
	.quad	__llvm_gcov_ctr.164
	.long	5                               # 0x5
	.space	4
	.quad	__llvm_gcov_ctr.165
	.size	__llvm_internal_gcov_emit_arcs_args.0, 2656

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.quad	.L__unnamed_1
	.long	875575338                       # 0x3430382a
	.long	2102079853                      # 0x7d4b316d
	.long	166                             # 0xa6
	.space	4
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
	.gnu_attribute 4, 5
	.section	.toc,"aw",@progbits
.LC0:
	.tc __llvm_gcov_ctr[TC],__llvm_gcov_ctr
.LC1:
	.tc .L__profc_make_ti[TC],.L__profc_make_ti
.LC2:
	.tc __llvm_gcov_ctr.1[TC],__llvm_gcov_ctr.1
.LC3:
	.tc .L__profc_make_tu[TC],.L__profc_make_tu
.LC4:
	.tc .L__profc_memmove[TC],.L__profc_memmove
.LC5:
	.tc __llvm_gcov_ctr.2[TC],__llvm_gcov_ctr.2
.LC6:
	.tc .L__profc_memccpy[TC],.L__profc_memccpy
.LC7:
	.tc __llvm_gcov_ctr.3[TC],__llvm_gcov_ctr.3
.LC8:
	.tc .L__profc_memchr[TC],.L__profc_memchr
.LC9:
	.tc __llvm_gcov_ctr.4[TC],__llvm_gcov_ctr.4
.LC10:
	.tc .L__profc_memcmp[TC],.L__profc_memcmp
.LC11:
	.tc __llvm_gcov_ctr.5[TC],__llvm_gcov_ctr.5
.LC12:
	.tc __llvm_gcov_ctr.6[TC],__llvm_gcov_ctr.6
.LC13:
	.tc .L__profc_memcpy[TC],.L__profc_memcpy
.LC14:
	.tc .L__profc_memrchr[TC],.L__profc_memrchr
.LC15:
	.tc __llvm_gcov_ctr.7[TC],__llvm_gcov_ctr.7
.LC16:
	.tc __llvm_gcov_ctr.8[TC],__llvm_gcov_ctr.8
.LC17:
	.tc .L__profc_memset[TC],.L__profc_memset
.LC18:
	.tc __llvm_gcov_ctr.9[TC],__llvm_gcov_ctr.9
.LC19:
	.tc .L__profc_stpcpy[TC],.L__profc_stpcpy
.LC20:
	.tc __llvm_gcov_ctr.10[TC],__llvm_gcov_ctr.10
.LC21:
	.tc .L__profc_strchrnul[TC],.L__profc_strchrnul
.LC22:
	.tc .L__profc_strchr[TC],.L__profc_strchr
.LC23:
	.tc __llvm_gcov_ctr.11[TC],__llvm_gcov_ctr.11
.LC24:
	.tc __llvm_gcov_ctr.12[TC],__llvm_gcov_ctr.12
.LC25:
	.tc .L__profc_strcmp[TC],.L__profc_strcmp
.LC26:
	.tc __llvm_gcov_ctr.13[TC],__llvm_gcov_ctr.13
.LC27:
	.tc .L__profc_strlen[TC],.L__profc_strlen
.LC28:
	.tc .L__profc_strncmp[TC],.L__profc_strncmp
.LC29:
	.tc __llvm_gcov_ctr.14[TC],__llvm_gcov_ctr.14
.LC30:
	.tc __llvm_gcov_ctr.15[TC],__llvm_gcov_ctr.15
.LC31:
	.tc .L__profc_swab[TC],.L__profc_swab
.LC32:
	.tc __llvm_gcov_ctr.16[TC],__llvm_gcov_ctr.16
.LC33:
	.tc .L__profc_isalpha[TC],.L__profc_isalpha
.LC34:
	.tc __llvm_gcov_ctr.17[TC],__llvm_gcov_ctr.17
.LC35:
	.tc .L__profc_isascii[TC],.L__profc_isascii
.LC36:
	.tc __llvm_gcov_ctr.18[TC],__llvm_gcov_ctr.18
.LC37:
	.tc .L__profc_isblank[TC],.L__profc_isblank
.LC38:
	.tc __llvm_gcov_ctr.19[TC],__llvm_gcov_ctr.19
.LC39:
	.tc .L__profc_iscntrl[TC],.L__profc_iscntrl
.LC40:
	.tc __llvm_gcov_ctr.20[TC],__llvm_gcov_ctr.20
.LC41:
	.tc .L__profc_isdigit[TC],.L__profc_isdigit
.LC42:
	.tc __llvm_gcov_ctr.21[TC],__llvm_gcov_ctr.21
.LC43:
	.tc .L__profc_isgraph[TC],.L__profc_isgraph
.LC44:
	.tc __llvm_gcov_ctr.22[TC],__llvm_gcov_ctr.22
.LC45:
	.tc .L__profc_islower[TC],.L__profc_islower
.LC46:
	.tc __llvm_gcov_ctr.23[TC],__llvm_gcov_ctr.23
.LC47:
	.tc .L__profc_isprint[TC],.L__profc_isprint
.LC48:
	.tc __llvm_gcov_ctr.24[TC],__llvm_gcov_ctr.24
.LC49:
	.tc .L__profc_isspace[TC],.L__profc_isspace
.LC50:
	.tc __llvm_gcov_ctr.25[TC],__llvm_gcov_ctr.25
.LC51:
	.tc .L__profc_isupper[TC],.L__profc_isupper
.LC52:
	.tc __llvm_gcov_ctr.26[TC],__llvm_gcov_ctr.26
.LC53:
	.tc .L__profc_iswcntrl[TC],.L__profc_iswcntrl
.LC54:
	.tc __llvm_gcov_ctr.27[TC],__llvm_gcov_ctr.27
.LC55:
	.tc .L__profc_iswdigit[TC],.L__profc_iswdigit
.LC56:
	.tc .L__profc_iswprint[TC],.L__profc_iswprint
.LC57:
	.tc __llvm_gcov_ctr.28[TC],__llvm_gcov_ctr.28
.LC58:
	.tc __llvm_gcov_ctr.29[TC],__llvm_gcov_ctr.29
.LC59:
	.tc .L__profc_iswxdigit[TC],.L__profc_iswxdigit
.LC60:
	.tc __llvm_gcov_ctr.30[TC],__llvm_gcov_ctr.30
.LC61:
	.tc .L__profc_toascii[TC],.L__profc_toascii
.LC62:
	.tc .L__profc_fdim[TC],.L__profc_fdim
.LC63:
	.tc __llvm_gcov_ctr.31[TC],__llvm_gcov_ctr.31
.LC64:
	.tc .L__profc_fdimf[TC],.L__profc_fdimf
.LC65:
	.tc __llvm_gcov_ctr.32[TC],__llvm_gcov_ctr.32
.LC66:
	.tc .L__profc_fmax[TC],.L__profc_fmax
.LC67:
	.tc __llvm_gcov_ctr.33[TC],__llvm_gcov_ctr.33
.LC68:
	.tc .L__profc_fmaxf[TC],.L__profc_fmaxf
.LC69:
	.tc __llvm_gcov_ctr.34[TC],__llvm_gcov_ctr.34
.LC70:
	.tc .L__profc_fmaxl[TC],.L__profc_fmaxl
.LC71:
	.tc __llvm_gcov_ctr.35[TC],__llvm_gcov_ctr.35
.LC72:
	.tc .L__profc_fmin[TC],.L__profc_fmin
.LC73:
	.tc __llvm_gcov_ctr.36[TC],__llvm_gcov_ctr.36
.LC74:
	.tc .L__profc_fminf[TC],.L__profc_fminf
.LC75:
	.tc __llvm_gcov_ctr.37[TC],__llvm_gcov_ctr.37
.LC76:
	.tc .L__profc_fminl[TC],.L__profc_fminl
.LC77:
	.tc __llvm_gcov_ctr.38[TC],__llvm_gcov_ctr.38
.LC78:
	.tc __llvm_gcov_ctr.39[TC],__llvm_gcov_ctr.39
.LC79:
	.tc .L__profc_l64a[TC],.L__profc_l64a
.LC80:
	.tc l64a.s[TC],l64a.s
.LC81:
	.tc digits[TC],digits
.LC82:
	.tc __llvm_gcov_ctr.40[TC],__llvm_gcov_ctr.40
.LC83:
	.tc .L__profc_srand[TC],.L__profc_srand
.LC84:
	.tc seed[TC],seed
.LC85:
	.tc __llvm_gcov_ctr.41[TC],__llvm_gcov_ctr.41
.LC86:
	.tc .L__profc_rand[TC],.L__profc_rand
.LC87:
	.tc .L__profc_insque[TC],.L__profc_insque
.LC88:
	.tc __llvm_gcov_ctr.42[TC],__llvm_gcov_ctr.42
.LC89:
	.tc __llvm_gcov_ctr.43[TC],__llvm_gcov_ctr.43
.LC90:
	.tc .L__profc_remque[TC],.L__profc_remque
.LC91:
	.tc .L__profc_lsearch[TC],.L__profc_lsearch
.LC92:
	.tc __llvm_gcov_ctr.44[TC],__llvm_gcov_ctr.44
.LC93:
	.tc .L__profc_lfind[TC],.L__profc_lfind
.LC94:
	.tc __llvm_gcov_ctr.45[TC],__llvm_gcov_ctr.45
.LC95:
	.tc .L__profc_abs[TC],.L__profc_abs
.LC96:
	.tc __llvm_gcov_ctr.46[TC],__llvm_gcov_ctr.46
.LC97:
	.tc .L__profc_atoi[TC],.L__profc_atoi
.LC98:
	.tc isspace[TC],isspace
.LC99:
	.tc __llvm_gcov_ctr.47[TC],__llvm_gcov_ctr.47
.LC100:
	.tc isdigit[TC],isdigit
.LC101:
	.tc .L__profc_atol[TC],.L__profc_atol
.LC102:
	.tc __llvm_gcov_ctr.48[TC],__llvm_gcov_ctr.48
.LC103:
	.tc .L__profc_atoll[TC],.L__profc_atoll
.LC104:
	.tc __llvm_gcov_ctr.49[TC],__llvm_gcov_ctr.49
.LC105:
	.tc .L__profc_bsearch[TC],.L__profc_bsearch
.LC106:
	.tc __llvm_gcov_ctr.50[TC],__llvm_gcov_ctr.50
.LC107:
	.tc .L__profc_bsearch_r[TC],.L__profc_bsearch_r
.LC108:
	.tc __llvm_gcov_ctr.51[TC],__llvm_gcov_ctr.51
.LC109:
	.tc __llvm_gcov_ctr.52[TC],__llvm_gcov_ctr.52
.LC110:
	.tc .L__profc_div[TC],.L__profc_div
.LC111:
	.tc .L__profc_imaxabs[TC],.L__profc_imaxabs
.LC112:
	.tc __llvm_gcov_ctr.53[TC],__llvm_gcov_ctr.53
.LC113:
	.tc __llvm_gcov_ctr.54[TC],__llvm_gcov_ctr.54
.LC114:
	.tc .L__profc_imaxdiv[TC],.L__profc_imaxdiv
.LC115:
	.tc .L__profc_labs[TC],.L__profc_labs
.LC116:
	.tc __llvm_gcov_ctr.55[TC],__llvm_gcov_ctr.55
.LC117:
	.tc __llvm_gcov_ctr.56[TC],__llvm_gcov_ctr.56
.LC118:
	.tc .L__profc_ldiv[TC],.L__profc_ldiv
.LC119:
	.tc .L__profc_llabs[TC],.L__profc_llabs
.LC120:
	.tc __llvm_gcov_ctr.57[TC],__llvm_gcov_ctr.57
.LC121:
	.tc __llvm_gcov_ctr.58[TC],__llvm_gcov_ctr.58
.LC122:
	.tc .L__profc_lldiv[TC],.L__profc_lldiv
.LC123:
	.tc .L__profc_wcschr[TC],.L__profc_wcschr
.LC124:
	.tc __llvm_gcov_ctr.59[TC],__llvm_gcov_ctr.59
.LC125:
	.tc .L__profc_wcscmp[TC],.L__profc_wcscmp
.LC126:
	.tc __llvm_gcov_ctr.60[TC],__llvm_gcov_ctr.60
.LC127:
	.tc __llvm_gcov_ctr.61[TC],__llvm_gcov_ctr.61
.LC128:
	.tc .L__profc_wcscpy[TC],.L__profc_wcscpy
.LC129:
	.tc __llvm_gcov_ctr.62[TC],__llvm_gcov_ctr.62
.LC130:
	.tc .L__profc_wcslen[TC],.L__profc_wcslen
.LC131:
	.tc .L__profc_wcsncmp[TC],.L__profc_wcsncmp
.LC132:
	.tc __llvm_gcov_ctr.63[TC],__llvm_gcov_ctr.63
.LC133:
	.tc .L__profc_wmemchr[TC],.L__profc_wmemchr
.LC134:
	.tc __llvm_gcov_ctr.64[TC],__llvm_gcov_ctr.64
.LC135:
	.tc .L__profc_wmemcmp[TC],.L__profc_wmemcmp
.LC136:
	.tc __llvm_gcov_ctr.65[TC],__llvm_gcov_ctr.65
.LC137:
	.tc __llvm_gcov_ctr.66[TC],__llvm_gcov_ctr.66
.LC138:
	.tc .L__profc_wmemcpy[TC],.L__profc_wmemcpy
.LC139:
	.tc .L__profc_wmemmove[TC],.L__profc_wmemmove
.LC140:
	.tc __llvm_gcov_ctr.67[TC],__llvm_gcov_ctr.67
.LC141:
	.tc __llvm_gcov_ctr.68[TC],__llvm_gcov_ctr.68
.LC142:
	.tc .L__profc_wmemset[TC],.L__profc_wmemset
.LC143:
	.tc .L__profc_bcopy[TC],.L__profc_bcopy
.LC144:
	.tc __llvm_gcov_ctr.69[TC],__llvm_gcov_ctr.69
.LC145:
	.tc __llvm_gcov_ctr.70[TC],__llvm_gcov_ctr.70
.LC146:
	.tc .L__profc_rotl64[TC],.L__profc_rotl64
.LC147:
	.tc __llvm_gcov_ctr.71[TC],__llvm_gcov_ctr.71
.LC148:
	.tc .L__profc_rotr64[TC],.L__profc_rotr64
.LC149:
	.tc __llvm_gcov_ctr.72[TC],__llvm_gcov_ctr.72
.LC150:
	.tc .L__profc_rotl32[TC],.L__profc_rotl32
.LC151:
	.tc __llvm_gcov_ctr.73[TC],__llvm_gcov_ctr.73
.LC152:
	.tc .L__profc_rotr32[TC],.L__profc_rotr32
.LC153:
	.tc __llvm_gcov_ctr.74[TC],__llvm_gcov_ctr.74
.LC154:
	.tc .L__profc_rotl_sz[TC],.L__profc_rotl_sz
.LC155:
	.tc __llvm_gcov_ctr.75[TC],__llvm_gcov_ctr.75
.LC156:
	.tc .L__profc_rotr_sz[TC],.L__profc_rotr_sz
.LC157:
	.tc __llvm_gcov_ctr.76[TC],__llvm_gcov_ctr.76
.LC158:
	.tc .L__profc_rotl16[TC],.L__profc_rotl16
.LC159:
	.tc __llvm_gcov_ctr.77[TC],__llvm_gcov_ctr.77
.LC160:
	.tc .L__profc_rotr16[TC],.L__profc_rotr16
.LC161:
	.tc __llvm_gcov_ctr.78[TC],__llvm_gcov_ctr.78
.LC162:
	.tc .L__profc_rotl8[TC],.L__profc_rotl8
.LC163:
	.tc __llvm_gcov_ctr.79[TC],__llvm_gcov_ctr.79
.LC164:
	.tc .L__profc_rotr8[TC],.L__profc_rotr8
.LC165:
	.tc __llvm_gcov_ctr.80[TC],__llvm_gcov_ctr.80
.LC166:
	.tc .L__profc_bswap_16[TC],.L__profc_bswap_16
.LC167:
	.tc __llvm_gcov_ctr.81[TC],__llvm_gcov_ctr.81
.LC168:
	.tc .L__profc_bswap_32[TC],.L__profc_bswap_32
.LC169:
	.tc __llvm_gcov_ctr.82[TC],__llvm_gcov_ctr.82
.LC170:
	.tc .L__profc_bswap_64[TC],.L__profc_bswap_64
.LC171:
	.tc .L__profc_ffs[TC],.L__profc_ffs
.LC172:
	.tc __llvm_gcov_ctr.83[TC],__llvm_gcov_ctr.83
.LC173:
	.tc .L__profc_libiberty_ffs[TC],.L__profc_libiberty_ffs
.LC174:
	.tc __llvm_gcov_ctr.84[TC],__llvm_gcov_ctr.84
.LC175:
	.tc __llvm_gcov_ctr.85[TC],__llvm_gcov_ctr.85
.LC176:
	.tc .L__profc_gl_isinff[TC],.L__profc_gl_isinff
.LC177:
	.tc __llvm_gcov_ctr.86[TC],__llvm_gcov_ctr.86
.LC178:
	.tc .L__profc_gl_isinfd[TC],.L__profc_gl_isinfd
.LC179:
	.tc __llvm_gcov_ctr.87[TC],__llvm_gcov_ctr.87
.LC180:
	.tc .L__profc_gl_isinfl[TC],.L__profc_gl_isinfl
.LC181:
	.tc __llvm_gcov_ctr.88[TC],__llvm_gcov_ctr.88
.LC182:
	.tc .L__profc__Qp_itoq[TC],.L__profc__Qp_itoq
.LC183:
	.tc __llvm_gcov_ctr.89[TC],__llvm_gcov_ctr.89
.LC184:
	.tc .L__profc_ldexpf[TC],.L__profc_ldexpf
.LC185:
	.tc __llvm_gcov_ctr.90[TC],__llvm_gcov_ctr.90
.LC186:
	.tc .L__profc_ldexp[TC],.L__profc_ldexp
.LC187:
	.tc __llvm_gcov_ctr.91[TC],__llvm_gcov_ctr.91
.LC188:
	.tc .L__profc_ldexpl[TC],.L__profc_ldexpl
.LC189:
	.tc __llvm_gcov_ctr.92[TC],__llvm_gcov_ctr.92
.LC190:
	.tc .L__profc_memxor[TC],.L__profc_memxor
.LC191:
	.tc .L__profc_strncat[TC],.L__profc_strncat
.LC192:
	.tc strlen[TC],strlen
.LC193:
	.tc __llvm_gcov_ctr.93[TC],__llvm_gcov_ctr.93
.LC194:
	.tc __llvm_gcov_ctr.94[TC],__llvm_gcov_ctr.94
.LC195:
	.tc .L__profc_strnlen[TC],.L__profc_strnlen
.LC196:
	.tc .L__profc_strpbrk[TC],.L__profc_strpbrk
.LC197:
	.tc __llvm_gcov_ctr.95[TC],__llvm_gcov_ctr.95
.LC198:
	.tc __llvm_gcov_ctr.96[TC],__llvm_gcov_ctr.96
.LC199:
	.tc .L__profc_strrchr[TC],.L__profc_strrchr
.LC200:
	.tc .L__profc_strstr[TC],.L__profc_strstr
.LC201:
	.tc __llvm_gcov_ctr.97[TC],__llvm_gcov_ctr.97
.LC202:
	.tc strchr[TC],strchr
.LC203:
	.tc strncmp[TC],strncmp
.LC204:
	.tc .L__profc_copysign[TC],.L__profc_copysign
.LC205:
	.tc __llvm_gcov_ctr.98[TC],__llvm_gcov_ctr.98
.LC206:
	.tc .L__profc_memmem[TC],.L__profc_memmem
.LC207:
	.tc __llvm_gcov_ctr.99[TC],__llvm_gcov_ctr.99
.LC208:
	.tc memcmp[TC],memcmp
.LC209:
	.tc __llvm_gcov_ctr.100[TC],__llvm_gcov_ctr.100
.LC210:
	.tc .L__profc_mempcpy[TC],.L__profc_mempcpy
.LC211:
	.tc .L__profc_frexp[TC],.L__profc_frexp
.LC212:
	.tc __llvm_gcov_ctr.101[TC],__llvm_gcov_ctr.101
.LC213:
	.tc __llvm_gcov_ctr.102[TC],__llvm_gcov_ctr.102
.LC214:
	.tc .L__profc___muldi3[TC],.L__profc___muldi3
.LC215:
	.tc .L__profc_udivmodsi4[TC],.L__profc_udivmodsi4
.LC216:
	.tc __llvm_gcov_ctr.103[TC],__llvm_gcov_ctr.103
.LC217:
	.tc .L__profc___clrsbqi2[TC],.L__profc___clrsbqi2
.LC218:
	.tc __llvm_gcov_ctr.104[TC],__llvm_gcov_ctr.104
.LC219:
	.tc .L__profc___clrsbdi2[TC],.L__profc___clrsbdi2
.LC220:
	.tc __llvm_gcov_ctr.105[TC],__llvm_gcov_ctr.105
.LC221:
	.tc __llvm_gcov_ctr.106[TC],__llvm_gcov_ctr.106
.LC222:
	.tc .L__profc___mulsi3[TC],.L__profc___mulsi3
.LC223:
	.tc .L__profc___cmovd[TC],.L__profc___cmovd
.LC224:
	.tc __llvm_gcov_ctr.107[TC],__llvm_gcov_ctr.107
.LC225:
	.tc .L__profc___cmovh[TC],.L__profc___cmovh
.LC226:
	.tc __llvm_gcov_ctr.108[TC],__llvm_gcov_ctr.108
.LC227:
	.tc .L__profc___cmovw[TC],.L__profc___cmovw
.LC228:
	.tc __llvm_gcov_ctr.109[TC],__llvm_gcov_ctr.109
.LC229:
	.tc __llvm_gcov_ctr.110[TC],__llvm_gcov_ctr.110
.LC230:
	.tc .L__profc___modi[TC],.L__profc___modi
.LC231:
	.tc __llvm_gcov_ctr.111[TC],__llvm_gcov_ctr.111
.LC232:
	.tc .L__profc___uitod[TC],.L__profc___uitod
.LC233:
	.tc __llvm_gcov_ctr.112[TC],__llvm_gcov_ctr.112
.LC234:
	.tc .L__profc___uitof[TC],.L__profc___uitof
.LC235:
	.tc __llvm_gcov_ctr.113[TC],__llvm_gcov_ctr.113
.LC236:
	.tc .L__profc___ulltod[TC],.L__profc___ulltod
.LC237:
	.tc __llvm_gcov_ctr.114[TC],__llvm_gcov_ctr.114
.LC238:
	.tc .L__profc___ulltof[TC],.L__profc___ulltof
.LC239:
	.tc __llvm_gcov_ctr.115[TC],__llvm_gcov_ctr.115
.LC240:
	.tc .L__profc___umodi[TC],.L__profc___umodi
.LC241:
	.tc __llvm_gcov_ctr.116[TC],__llvm_gcov_ctr.116
.LC242:
	.tc .L__profc___clzhi2[TC],.L__profc___clzhi2
.LC243:
	.tc __llvm_gcov_ctr.117[TC],__llvm_gcov_ctr.117
.LC244:
	.tc .L__profc___ctzhi2[TC],.L__profc___ctzhi2
.LC245:
	.tc .L__profc___fixunssfsi[TC],.L__profc___fixunssfsi
.LC246:
	.tc __llvm_gcov_ctr.118[TC],__llvm_gcov_ctr.118
.LC247:
	.tc __llvm_gcov_ctr.119[TC],__llvm_gcov_ctr.119
.LC248:
	.tc .L__profc___parityhi2[TC],.L__profc___parityhi2
.LC249:
	.tc __llvm_gcov_ctr.120[TC],__llvm_gcov_ctr.120
.LC250:
	.tc .L__profc___popcounthi2[TC],.L__profc___popcounthi2
.LC251:
	.tc __llvm_gcov_ctr.121[TC],__llvm_gcov_ctr.121
.LC252:
	.tc .L__profc___mulsi3_iq2000[TC],.L__profc___mulsi3_iq2000
.LC253:
	.tc .L__profc___mulsi3_lm32[TC],.L__profc___mulsi3_lm32
.LC254:
	.tc __llvm_gcov_ctr.122[TC],__llvm_gcov_ctr.122
.LC255:
	.tc .L__profc___udivmodsi4[TC],.L__profc___udivmodsi4
.LC256:
	.tc __llvm_gcov_ctr.123[TC],__llvm_gcov_ctr.123
.LC257:
	.tc .L__profc___mspabi_cmpf[TC],.L__profc___mspabi_cmpf
.LC258:
	.tc __llvm_gcov_ctr.124[TC],__llvm_gcov_ctr.124
.LC259:
	.tc .L__profc___mspabi_cmpd[TC],.L__profc___mspabi_cmpd
.LC260:
	.tc __llvm_gcov_ctr.125[TC],__llvm_gcov_ctr.125
.LC261:
	.tc __llvm_gcov_ctr.126[TC],__llvm_gcov_ctr.126
.LC262:
	.tc .L__profc___mspabi_mpysll[TC],.L__profc___mspabi_mpysll
.LC263:
	.tc __llvm_gcov_ctr.127[TC],__llvm_gcov_ctr.127
.LC264:
	.tc .L__profc___mspabi_mpyull[TC],.L__profc___mspabi_mpyull
.LC265:
	.tc .L__profc___mulhi3[TC],.L__profc___mulhi3
.LC266:
	.tc __llvm_gcov_ctr.128[TC],__llvm_gcov_ctr.128
.LC267:
	.tc __llvm_gcov_ctr.129[TC],__llvm_gcov_ctr.129
.LC268:
	.tc .L__profc___divsi3[TC],.L__profc___divsi3
.LC269:
	.tc __udivmodsi4[TC],__udivmodsi4
.LC270:
	.tc __llvm_gcov_ctr.130[TC],__llvm_gcov_ctr.130
.LC271:
	.tc .L__profc___modsi3[TC],.L__profc___modsi3
.LC272:
	.tc .L__profc___udivmodhi4[TC],.L__profc___udivmodhi4
.LC273:
	.tc __llvm_gcov_ctr.131[TC],__llvm_gcov_ctr.131
.LC274:
	.tc .L__profc___udivmodsi4_libgcc[TC],.L__profc___udivmodsi4_libgcc
.LC275:
	.tc __llvm_gcov_ctr.132[TC],__llvm_gcov_ctr.132
.LC276:
	.tc .L__profc___ashldi3[TC],.L__profc___ashldi3
.LC277:
	.tc __llvm_gcov_ctr.133[TC],__llvm_gcov_ctr.133
.LC278:
	.tc .L__profc___ashlti3[TC],.L__profc___ashlti3
.LC279:
	.tc __llvm_gcov_ctr.134[TC],__llvm_gcov_ctr.134
.LC280:
	.tc .L__profc___ashrdi3[TC],.L__profc___ashrdi3
.LC281:
	.tc __llvm_gcov_ctr.135[TC],__llvm_gcov_ctr.135
.LC282:
	.tc .L__profc___ashrti3[TC],.L__profc___ashrti3
.LC283:
	.tc __llvm_gcov_ctr.136[TC],__llvm_gcov_ctr.136
.LC284:
	.tc __llvm_gcov_ctr.137[TC],__llvm_gcov_ctr.137
.LC285:
	.tc .L__profc___bswapdi2[TC],.L__profc___bswapdi2
.LC286:
	.tc __llvm_gcov_ctr.138[TC],__llvm_gcov_ctr.138
.LC287:
	.tc .L__profc___bswapsi2[TC],.L__profc___bswapsi2
.LC288:
	.tc __llvm_gcov_ctr.139[TC],__llvm_gcov_ctr.139
.LC289:
	.tc .L__profc___clzsi2[TC],.L__profc___clzsi2
.LC290:
	.tc __llvm_gcov_ctr.140[TC],__llvm_gcov_ctr.140
.LC291:
	.tc .L__profc___clzti2[TC],.L__profc___clzti2
.LC292:
	.tc .L__profc___cmpdi2[TC],.L__profc___cmpdi2
.LC293:
	.tc __llvm_gcov_ctr.141[TC],__llvm_gcov_ctr.141
.LC294:
	.tc __llvm_gcov_ctr.142[TC],__llvm_gcov_ctr.142
.LC295:
	.tc .L__profc___aeabi_lcmp[TC],.L__profc___aeabi_lcmp
.LC296:
	.tc __cmpdi2[TC],__cmpdi2
.LC297:
	.tc .L__profc___cmpti2[TC],.L__profc___cmpti2
.LC298:
	.tc __llvm_gcov_ctr.143[TC],__llvm_gcov_ctr.143
.LC299:
	.tc __llvm_gcov_ctr.144[TC],__llvm_gcov_ctr.144
.LC300:
	.tc .L__profc___ctzsi2[TC],.L__profc___ctzsi2
.LC301:
	.tc __llvm_gcov_ctr.145[TC],__llvm_gcov_ctr.145
.LC302:
	.tc .L__profc___ctzti2[TC],.L__profc___ctzti2
.LC303:
	.tc .L__profc___ffsti2[TC],.L__profc___ffsti2
.LC304:
	.tc __llvm_gcov_ctr.146[TC],__llvm_gcov_ctr.146
.LC305:
	.tc .L__profc___lshrdi3[TC],.L__profc___lshrdi3
.LC306:
	.tc __llvm_gcov_ctr.147[TC],__llvm_gcov_ctr.147
.LC307:
	.tc .L__profc___lshrti3[TC],.L__profc___lshrti3
.LC308:
	.tc __llvm_gcov_ctr.148[TC],__llvm_gcov_ctr.148
.LC309:
	.tc __llvm_gcov_ctr.149[TC],__llvm_gcov_ctr.149
.LC310:
	.tc .L__profc___muldsi3[TC],.L__profc___muldsi3
.LC311:
	.tc __llvm_gcov_ctr.150[TC],__llvm_gcov_ctr.150
.LC312:
	.tc .L__profc___muldi3_compiler_rt[TC],.L__profc___muldi3_compiler_rt
.LC313:
	.tc __muldsi3[TC],__muldsi3
.LC314:
	.tc __llvm_gcov_ctr.151[TC],__llvm_gcov_ctr.151
.LC315:
	.tc .L__profc___mulddi3[TC],.L__profc___mulddi3
.LC316:
	.tc __llvm_gcov_ctr.152[TC],__llvm_gcov_ctr.152
.LC317:
	.tc .L__profc___multi3[TC],.L__profc___multi3
.LC318:
	.tc __mulddi3[TC],__mulddi3
.LC319:
	.tc __llvm_gcov_ctr.153[TC],__llvm_gcov_ctr.153
.LC320:
	.tc .L__profc___negdi2[TC],.L__profc___negdi2
.LC321:
	.tc __llvm_gcov_ctr.154[TC],__llvm_gcov_ctr.154
.LC322:
	.tc .L__profc___negti2[TC],.L__profc___negti2
.LC323:
	.tc __llvm_gcov_ctr.155[TC],__llvm_gcov_ctr.155
.LC324:
	.tc .L__profc___paritydi2[TC],.L__profc___paritydi2
.LC325:
	.tc __llvm_gcov_ctr.156[TC],__llvm_gcov_ctr.156
.LC326:
	.tc .L__profc___parityti2[TC],.L__profc___parityti2
.LC327:
	.tc __llvm_gcov_ctr.157[TC],__llvm_gcov_ctr.157
.LC328:
	.tc .L__profc___paritysi2[TC],.L__profc___paritysi2
.LC329:
	.tc __llvm_gcov_ctr.158[TC],__llvm_gcov_ctr.158
.LC330:
	.tc .L__profc___popcountdi2[TC],.L__profc___popcountdi2
.LC331:
	.tc __llvm_gcov_ctr.159[TC],__llvm_gcov_ctr.159
.LC332:
	.tc .L__profc___popcountsi2[TC],.L__profc___popcountsi2
.LC333:
	.tc __llvm_gcov_ctr.160[TC],__llvm_gcov_ctr.160
.LC334:
	.tc .L__profc___popcountti2[TC],.L__profc___popcountti2
.LC335:
	.tc .L__profc___powidf2[TC],.L__profc___powidf2
.LC336:
	.tc __llvm_gcov_ctr.161[TC],__llvm_gcov_ctr.161
.LC337:
	.tc .L__profc___powisf2[TC],.L__profc___powisf2
.LC338:
	.tc __llvm_gcov_ctr.162[TC],__llvm_gcov_ctr.162
.LC339:
	.tc .L__profc___ucmpdi2[TC],.L__profc___ucmpdi2
.LC340:
	.tc __llvm_gcov_ctr.163[TC],__llvm_gcov_ctr.163
.LC341:
	.tc __llvm_gcov_ctr.164[TC],__llvm_gcov_ctr.164
.LC342:
	.tc .L__profc___aeabi_ulcmp[TC],.L__profc___aeabi_ulcmp
.LC343:
	.tc __ucmpdi2[TC],__ucmpdi2
.LC344:
	.tc .L__profc___ucmpti2[TC],.L__profc___ucmpti2
.LC345:
	.tc __llvm_gcov_ctr.165[TC],__llvm_gcov_ctr.165
.LC346:
	.tc __llvm_internal_gcov_emit_file_info[TC],__llvm_internal_gcov_emit_file_info
.LC347:
	.tc llvm_gcda_start_file[TC],llvm_gcda_start_file
.LC348:
	.tc llvm_gcda_emit_function[TC],llvm_gcda_emit_function
.LC349:
	.tc llvm_gcda_emit_arcs[TC],llvm_gcda_emit_arcs
.LC350:
	.tc llvm_gcda_summary_info[TC],llvm_gcda_summary_info
.LC351:
	.tc llvm_gcda_end_file[TC],llvm_gcda_end_file
.LC352:
	.tc __llvm_gcov_writeout[TC],__llvm_gcov_writeout
.LC353:
	.tc __llvm_gcov_reset[TC],__llvm_gcov_reset
.LC354:
	.tc llvm_gcov_init[TC],llvm_gcov_init
