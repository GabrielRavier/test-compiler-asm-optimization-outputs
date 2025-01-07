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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
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
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB2_6
# %bb.1:
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
	b .LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_8 Depth=1
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
	beq	%cr0, .LBB3_5
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	ld %r3, -64(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -56(%r1)
	stb %r3, 0(%r4)
	lwz %r4, -36(%r1)
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
	lwz %r3, -80(%r1)                       # 4-byte Folded Reload
	stw %r3, -76(%r1)                       # 4-byte Folded Spill
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lwz %r3, -76(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB3_8
	b .LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	b .LBB3_7
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_8:
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB3_10
# %bb.9:
	ld %r3, -56(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB3_11
.LBB3_10:
	li %r3, 0
	std %r3, -16(%r1)
.LBB3_11:
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
	beq	%cr0, .LBB4_5
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -20(%r1)
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
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB4_8
	b .LBB4_6
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	b .LBB4_7
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	ld %r3, -40(%r1)
	addi %r3, %r3, 1
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	b .LBB4_1
.LBB4_8:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB4_10
# %bb.9:
	ld %r3, -40(%r1)
	std %r3, -72(%r1)                       # 8-byte Folded Spill
	b .LBB4_11
.LBB4_10:
	li %r3, 0
	std %r3, -72(%r1)                       # 8-byte Folded Spill
	b .LBB4_11
.LBB4_11:
	ld %r3, -72(%r1)                        # 8-byte Folded Reload
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
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lbz %r4, 0(%r4)
	xor %r3, %r3, %r4
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB5_6
	b .LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	b .LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
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
.LBB5_6:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB5_8
# %bb.7:
	ld %r3, -40(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -48(%r1)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB5_9
.LBB5_8:
	li %r3, 0
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB5_9
.LBB5_9:
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB6_4
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
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
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	lwz %r4, -28(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB7_4
# %bb.3:
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB8_4
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -16(%r1)
	stb %r3, 0(%r4)
	extsb %r3, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	b .LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	lwz %r3, -20(%r1)
	clrlwi	%r3, %r3, 24
	stw %r3, -20(%r1)
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB10_5
# %bb.2:                                #   in Loop: Header=BB10_1 Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -20(%r1)
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
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB10_8
	b .LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	b .LBB10_7
.LBB10_7:                               #   in Loop: Header=BB10_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	b .LBB10_1
.LBB10_8:
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
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -28(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB11_3
# %bb.2:
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB11_6
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	b .LBB11_4
.LBB11_4:                               #   in Loop: Header=BB11_1 Depth=1
	ld %r3, -24(%r1)
	addi %r4, %r3, 1
	std %r4, -24(%r1)
	lbz %r3, 0(%r3)
	extsb %r3, %r3
	cmpwi	%r3, 0
	bne	%cr0, .LBB11_1
# %bb.5:
	li %r3, 0
	std %r3, -16(%r1)
.LBB11_6:
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lbz %r5, 0(%r3)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB12_5
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
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
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB12_8
	b .LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_1 Depth=1
	b .LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 1
	std %r3, -16(%r1)
	ld %r3, -24(%r1)
	addi %r3, %r3, 1
	std %r3, -24(%r1)
	b .LBB12_1
.LBB12_8:
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
	std %r3, -16(%r1)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	extsb %r3, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB13_4
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	b .LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
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
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB14_11
.LBB14_2:
	b .LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -48(%r1)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB14_7
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=1
	ld %r3, -56(%r1)
	lbz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB14_7
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=1
	ld %r4, -40(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB14_7
# %bb.6:                                #   in Loop: Header=BB14_3 Depth=1
	ld %r3, -48(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -56(%r1)
	lbz %r4, 0(%r4)
	xor %r3, %r3, %r4
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	lwz %r3, -60(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB14_10
	b .LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	b .LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
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
.LBB14_10:
	ld %r3, -48(%r1)
	lbz %r4, 0(%r3)
	ld %r3, -56(%r1)
	lbz %r3, 0(%r3)
	sub	%r3, %r4, %r3
	stw %r3, -12(%r1)
.LBB14_11:
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 1
	ble %cr0, .LBB15_4
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmpwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB18_2
# %bb.1:
	lwz %r3, -12(%r1)
	xori %r3, %r3, 9
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB18_2:
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
	stw %r3, -12(%r1)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB19_2
# %bb.1:
	lwz %r3, -12(%r1)
	xori %r3, %r3, 127
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB19_2:
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmpwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB24_4
# %bb.1:
	lwz %r3, -12(%r1)
	addi %r3, %r3, -9
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
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB24_4:
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
	lwz %r4, -12(%r1)
	li %r3, 1
	cmplwi	%r4, 32
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_6
# %bb.1:
	lwz %r3, -12(%r1)
	addi %r4, %r3, -127
	li %r3, 1
	cmplwi	%r4, 33
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_6
# %bb.2:
	lwz %r3, -12(%r1)
	addi %r4, %r3, -8232
	li %r3, 1
	cmplwi	%r4, 2
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_6
# %bb.3:
	lwz %r3, -12(%r1)
	addi %r3, %r3, 7
	addis %r3, %r3, -1
	cmplwi	%r3, 3
	li %r3, 0
	stw %r3, -24(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB26_5
# %bb.4:
	lwz %r3, -24(%r1)                       # 4-byte Folded Reload
	stw %r3, -20(%r1)                       # 4-byte Folded Spill
.LBB26_5:
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB26_6:
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
	stw %r3, -12(%r1)
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
	lwz %r3, -16(%r1)
	cmplwi	%r3, 255
	bge %cr0, .LBB28_4
# %bb.1:
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
	b .LBB28_12
.LBB28_4:
	lwz %r3, -16(%r1)
	cmplwi	%r3, 8232
	blt	%cr0, .LBB28_7
# %bb.5:
	lwz %r3, -16(%r1)
	addi %r3, %r3, -8234
	cmplwi	%r3, 47062
	blt	%cr0, .LBB28_7
# %bb.6:
	lwz %r3, -16(%r1)
	addi %r3, %r3, 8192
	addis %r3, %r3, -1
	cmplwi	%r3, 8185
	bge %cr0, .LBB28_8
.LBB28_7:
	li %r3, 1
	stw %r3, -12(%r1)
	b .LBB28_12
.LBB28_8:
	lwz %r3, -16(%r1)
	addi %r3, %r3, 4
	addis %r3, %r3, -1
	lis %r4, 16
	ori %r4, %r4, 3
	cmplw	%r3, %r4
	bgt	%cr0, .LBB28_10
# %bb.9:
	lwz %r3, -16(%r1)
	lis %r4, 0
	ori %r4, %r4, 65534
	and %r3, %r3, %r4
	lis %r4, 0
	ori %r4, %r4, 65534
	cmpw	%r3, %r4
	bne	%cr0, .LBB28_11
.LBB28_10:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB28_12
.LBB28_11:
	li %r3, 1
	stw %r3, -12(%r1)
.LBB28_12:
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
	stw %r3, -12(%r1)
	lwz %r3, -12(%r1)
	addi %r4, %r3, -48
	li %r3, 1
	cmplwi	%r4, 10
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB29_4
# %bb.1:
	lwz %r3, -12(%r1)
	ori %r3, %r3, 32
	addi %r3, %r3, -97
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
	lwz %r3, -20(%r1)                       # 4-byte Folded Reload
	stw %r3, -16(%r1)                       # 4-byte Folded Spill
.LBB29_4:
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
	stw %r3, -12(%r1)
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
	ld %r3, 136(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB31_2
	b .LBB31_1
.LBB31_1:
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
	ld %r3, 136(%r31)
	ld %r4, 128(%r31)
	bl __subdf3
	nop
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB31_7
.LBB31_6:
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
	lwz %r3, 144(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB32_2
	b .LBB32_1
.LBB32_1:
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
	lwz %r3, 144(%r31)
	lwz %r4, 140(%r31)
	bl __subsf3
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB32_7
.LBB32_6:
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
	ld %r3, 136(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB33_2
	b .LBB33_1
.LBB33_1:
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
	ld %r3, 136(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB33_7
# %bb.6:
	ld %r3, 128(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB33_8
.LBB33_7:
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
	ld %r3, 128(%r31)
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB33_12
.LBB33_11:
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
	lwz %r3, 144(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB34_2
	b .LBB34_1
.LBB34_1:
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
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB34_7
# %bb.6:
	lwz %r3, 140(%r31)
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB34_8
.LBB34_7:
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
	lwz %r3, 140(%r31)
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	b .LBB34_12
.LBB34_11:
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
	ld %r3, 160(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB35_2
	b .LBB35_1
.LBB35_1:
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
	ld %r3, 160(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB35_7
# %bb.6:
	ld %r3, 152(%r31)
	ld %r4, 144(%r31)
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	std %r3, 136(%r31)                      # 8-byte Folded Spill
	b .LBB35_8
.LBB35_7:
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
	ld %r3, 152(%r31)
	ld %r4, 144(%r31)
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB35_12
.LBB35_11:
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
	ld %r3, 136(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB36_2
	b .LBB36_1
.LBB36_1:
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
	ld %r3, 136(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB36_7
# %bb.6:
	ld %r3, 136(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB36_8
.LBB36_7:
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
	ld %r3, 136(%r31)
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB36_12
.LBB36_11:
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
	lwz %r3, 144(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	ori %r4, %r4, 1
	cmpw	%r3, %r4
	blt	%cr0, .LBB37_2
	b .LBB37_1
.LBB37_1:
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
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	bge %cr0, .LBB37_7
# %bb.6:
	lwz %r3, 144(%r31)
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB37_8
.LBB37_7:
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
	lwz %r3, 144(%r31)
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	b .LBB37_12
.LBB37_11:
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
	ld %r3, 160(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 6143
	rotldi	%r4, %r4, 52
	cmpd	%r3, %r4
	blt	%cr0, .LBB38_2
	b .LBB38_1
.LBB38_1:
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
	ld %r3, 160(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB38_7
# %bb.6:
	ld %r3, 168(%r31)
	ld %r4, 160(%r31)
	std %r4, 128(%r31)                      # 8-byte Folded Spill
	std %r3, 136(%r31)                      # 8-byte Folded Spill
	b .LBB38_8
.LBB38_7:
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
	ld %r3, 168(%r31)
	ld %r4, 160(%r31)
	std %r4, 112(%r31)                      # 8-byte Folded Spill
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB38_12
.LBB38_11:
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
	std %r3, -16(%r1)
	ld %r3, -16(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, -28(%r1)
	addis %r3, %r2, .LC0@toc@ha
	ld %r3, .LC0@toc@l(%r3)
	std %r3, -24(%r1)
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB39_4
# %bb.2:                                #   in Loop: Header=BB39_1 Depth=1
	lwz %r3, -28(%r1)
	li %r4, 63
	and %r3, %r3, %r4
	clrldi	%r4, %r3, 32
	addis %r3, %r2, .LC1@toc@ha
	ld %r3, .LC1@toc@l(%r3)
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
	addis %r3, %r2, .LC0@toc@ha
	ld %r3, .LC0@toc@l(%r3)
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
	stw %r3, -12(%r1)
	lwz %r3, -12(%r1)
	addi %r3, %r3, -1
	clrldi	%r3, %r3, 32
	addis %r4, %r2, .LC2@toc@ha
	ld %r4, .LC2@toc@l(%r4)
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
	addis %r3, %r2, .LC2@toc@ha
	ld %r3, .LC2@toc@l(%r3)
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
	ld %r3, -16(%r1)
	std %r3, -32(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -40(%r1)
	li %r4, 0
	cmpd	%r3, %r4
	bne	%cr0, .LBB42_2
# %bb.1:
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
	std %r3, -16(%r1)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
	ld %r3, -24(%r1)
	ld %r3, 0(%r3)
	li %r4, 0
	cmpd	%r3, %r4
	beq	%cr0, .LBB43_2
# %bb.1:
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
	ld %r3, 144(%r31)
	ld %r4, 128(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 192(%r31)
	b .LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	b .LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	ld %r3, 128(%r31)
	addi %r3, %r3, 1
	std %r3, 128(%r31)
	b .LBB44_1
.LBB44_6:
	ld %r5, 120(%r31)                       # 8-byte Folded Reload
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
	ld %r3, 144(%r31)
	ld %r4, 128(%r31)
	mulld %r4, %r4, %r5
	add %r3, %r3, %r4
	std %r3, 192(%r31)
	b .LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	b .LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	ld %r3, 128(%r31)
	addi %r3, %r3, 1
	std %r3, 128(%r31)
	b .LBB45_1
.LBB45_6:
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
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	ble %cr0, .LBB46_2
# %bb.1:
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
	addis %r4, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r4)
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
	bne	%cr0, .LBB47_7
	b .LBB47_5
.LBB47_5:
	li %r3, 1
	stw %r3, 120(%r31)
.LBB47_6:
	ld %r3, 128(%r31)
	addi %r3, %r3, 1
	std %r3, 128(%r31)
.LBB47_7:
	b .LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_10
# %bb.9:                                #   in Loop: Header=BB47_8 Depth=1
	lwz %r3, 124(%r31)
	mulli %r4, %r3, 10
	ld %r3, 128(%r31)
	addi %r5, %r3, 1
	std %r5, 128(%r31)
	lbz %r3, 0(%r3)
	addi %r3, %r3, -48
	sub	%r3, %r4, %r3
	stw %r3, 124(%r31)
	b .LBB47_8
.LBB47_10:
	lwz %r3, 120(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB47_12
# %bb.11:
	lwz %r3, 124(%r31)
	stw %r3, 112(%r31)                      # 4-byte Folded Spill
	b .LBB47_13
.LBB47_12:
	lwz %r3, 124(%r31)
	neg %r3, %r3
	stw %r3, 112(%r31)                      # 4-byte Folded Spill
.LBB47_13:
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
	addis %r4, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r4)
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
	bne	%cr0, .LBB48_7
	b .LBB48_5
.LBB48_5:
	li %r3, 1
	stw %r3, 132(%r31)
.LBB48_6:
	ld %r3, 144(%r31)
	addi %r3, %r3, 1
	std %r3, 144(%r31)
.LBB48_7:
	b .LBB48_8
.LBB48_8:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_10
# %bb.9:                                #   in Loop: Header=BB48_8 Depth=1
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
	b .LBB48_8
.LBB48_10:
	lwz %r3, 132(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB48_12
# %bb.11:
	ld %r3, 136(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB48_13
.LBB48_12:
	ld %r3, 136(%r31)
	neg %r3, %r3
	std %r3, 120(%r31)                      # 8-byte Folded Spill
.LBB48_13:
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
	addis %r4, %r2, .LC3@toc@ha
	ld %r4, .LC3@toc@l(%r4)
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
	bne	%cr0, .LBB49_7
	b .LBB49_5
.LBB49_5:
	li %r3, 1
	stw %r3, 132(%r31)
.LBB49_6:
	ld %r3, 144(%r31)
	addi %r3, %r3, 1
	std %r3, 144(%r31)
.LBB49_7:
	b .LBB49_8
.LBB49_8:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 144(%r31)
	lbz %r3, 0(%r3)
	mr	%r4, %r2
	std %r4, 40(%r1)
	extsw %r3, %r3
	addis %r4, %r2, .LC4@toc@ha
	ld %r4, .LC4@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_10
# %bb.9:                                #   in Loop: Header=BB49_8 Depth=1
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
	b .LBB49_8
.LBB49_10:
	lwz %r3, 132(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB49_12
# %bb.11:
	ld %r3, 136(%r31)
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	b .LBB49_13
.LBB49_12:
	ld %r3, 136(%r31)
	neg %r3, %r3
	std %r3, 120(%r31)                      # 8-byte Folded Spill
.LBB49_13:
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
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 152(%r31)
	cmpldi	%r3, 0
	ble %cr0, .LBB50_9
# %bb.2:                                #   in Loop: Header=BB50_1 Depth=1
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
	ld %r3, 152(%r31)
	rldicl %r3, %r3, 63, 1
	std %r3, 152(%r31)
	b .LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	lwz %r3, 124(%r31)
	cmpwi	%r3, 0
	ble %cr0, .LBB50_6
# %bb.5:                                #   in Loop: Header=BB50_1 Depth=1
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
	ld %r3, 128(%r31)
	std %r3, 176(%r31)
	b .LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	b .LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	b .LBB50_1
.LBB50_9:
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
	ld %r3, 120(%r31)
	std %r3, 192(%r31)
	b .LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	lwz %r3, 128(%r31)
	cmpwi	%r3, 0
	ble %cr0, .LBB51_6
# %bb.5:                                #   in Loop: Header=BB51_1 Depth=1
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
	lwz %r3, 132(%r31)
	srawi %r3, %r3, 1
	stw %r3, 132(%r31)
	b .LBB51_1
.LBB51_8:
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
	stw %r5, -12(%r1)
	stw %r3, -16(%r1)
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
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB53_2
# %bb.1:
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
	std %r3, -16(%r1)
	std %r5, -24(%r1)
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
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB55_2
# %bb.1:
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
	std %r3, -16(%r1)
	std %r5, -24(%r1)
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
	ld %r3, -16(%r1)
	cmpdi	%r3, 0
	ble %cr0, .LBB57_2
# %bb.1:
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
	std %r3, -16(%r1)
	std %r5, -24(%r1)
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
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB59_5
# %bb.2:                                #   in Loop: Header=BB59_1 Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	lwz %r4, -20(%r1)
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
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB59_8
	b .LBB59_6
.LBB59_6:                               #   in Loop: Header=BB59_1 Depth=1
	b .LBB59_7
.LBB59_7:                               #   in Loop: Header=BB59_1 Depth=1
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	b .LBB59_1
.LBB59_8:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB59_10
# %bb.9:
	ld %r3, -16(%r1)
	std %r3, -56(%r1)                       # 8-byte Folded Spill
	b .LBB59_11
.LBB59_10:
	li %r3, 0
	std %r3, -56(%r1)                       # 8-byte Folded Spill
	b .LBB59_11
.LBB59_11:
	ld %r3, -56(%r1)                        # 8-byte Folded Reload
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
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB60_6
# %bb.2:                                #   in Loop: Header=BB60_1 Depth=1
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB60_6
# %bb.3:                                #   in Loop: Header=BB60_1 Depth=1
	ld %r3, -24(%r1)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB60_5
# %bb.4:                                #   in Loop: Header=BB60_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	stw %r3, -32(%r1)                       # 4-byte Folded Spill
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	lwz %r3, -32(%r1)                       # 4-byte Folded Reload
	stw %r3, -28(%r1)                       # 4-byte Folded Spill
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	lwz %r3, -28(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB60_9
	b .LBB60_7
.LBB60_7:                               #   in Loop: Header=BB60_1 Depth=1
	b .LBB60_8
.LBB60_8:                               #   in Loop: Header=BB60_1 Depth=1
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
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	b .LBB60_14
.LBB60_11:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB60_13
# %bb.12:
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB60_13:
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB60_14:
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
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
	std %r3, -16(%r1)
	ld %r3, -16(%r1)
	std %r3, -24(%r1)
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB62_4
# %bb.2:                                #   in Loop: Header=BB62_1 Depth=1
	b .LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
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
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB63_7
# %bb.2:                                #   in Loop: Header=BB63_1 Depth=1
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	ld %r3, -24(%r1)
	lwz %r5, 0(%r3)
	li %r3, 0
	cmpw	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB63_7
# %bb.3:                                #   in Loop: Header=BB63_1 Depth=1
	ld %r3, -16(%r1)
	lwz %r4, 0(%r3)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB63_7
# %bb.4:                                #   in Loop: Header=BB63_1 Depth=1
	ld %r3, -24(%r1)
	lwz %r3, 0(%r3)
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	bne	%cr0, .LBB63_6
# %bb.5:                                #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB63_10
	b .LBB63_8
.LBB63_8:                               #   in Loop: Header=BB63_1 Depth=1
	b .LBB63_9
.LBB63_9:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_10:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB63_17
# %bb.11:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB63_13
# %bb.12:
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	b .LBB63_16
.LBB63_13:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB63_15
# %bb.14:
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB63_15:
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
.LBB63_16:
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	b .LBB63_18
.LBB63_17:
	li %r3, 0
	stw %r3, -60(%r1)                       # 4-byte Folded Spill
	b .LBB63_18
.LBB63_18:
	lwz %r3, -60(%r1)                       # 4-byte Folded Reload
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
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB64_5
# %bb.2:                                #   in Loop: Header=BB64_1 Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	lwz %r4, -20(%r1)
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
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB64_8
	b .LBB64_6
.LBB64_6:                               #   in Loop: Header=BB64_1 Depth=1
	b .LBB64_7
.LBB64_7:                               #   in Loop: Header=BB64_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, -1
	std %r3, -32(%r1)
	ld %r3, -16(%r1)
	addi %r3, %r3, 4
	std %r3, -16(%r1)
	b .LBB64_1
.LBB64_8:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB64_10
# %bb.9:
	ld %r3, -16(%r1)
	std %r3, -64(%r1)                       # 8-byte Folded Spill
	b .LBB64_11
.LBB64_10:
	li %r3, 0
	std %r3, -64(%r1)                       # 8-byte Folded Spill
	b .LBB64_11
.LBB64_11:
	ld %r3, -64(%r1)                        # 8-byte Folded Reload
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
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB65_3
# %bb.2:                                #   in Loop: Header=BB65_1 Depth=1
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	xor %r3, %r3, %r4
	cntlzw	%r3, %r3
	srwi %r3, %r3, 5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB65_6
	b .LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	b .LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
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
.LBB65_6:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB65_13
# %bb.7:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	bge %cr0, .LBB65_9
# %bb.8:
	lis %r3, -1
	ori %r3, %r3, 65535
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
	b .LBB65_12
.LBB65_9:
	ld %r3, -16(%r1)
	lwz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lwz %r4, 0(%r4)
	cmpw	%r3, %r4
	li %r3, 0
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	bgt	%cr0, .LBB65_11
# %bb.10:
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB65_11:
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	stw %r3, -40(%r1)                       # 4-byte Folded Spill
.LBB65_12:
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	b .LBB65_14
.LBB65_13:
	li %r3, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	b .LBB65_14
.LBB65_14:
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	addi %r4, %r3, -1
	std %r4, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB66_3
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
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
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -24(%r1)
	ld %r4, -32(%r1)
	cmpd	%r3, %r4
	bne	%cr0, .LBB67_2
# %bb.1:
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
	b .LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -40(%r1)
	addi %r4, %r3, -1
	std %r4, -40(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB67_6
# %bb.5:                                #   in Loop: Header=BB67_4 Depth=1
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	std %r5, -32(%r1)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	addi %r4, %r3, -1
	std %r4, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB68_3
# %bb.2:                                #   in Loop: Header=BB68_1 Depth=1
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
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
	ld %r3, -24(%r1)
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	ld %r4, -48(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB69_6
# %bb.1:
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
	b .LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB69_11
# %bb.9:                                #   in Loop: Header=BB69_8 Depth=1
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
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
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
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
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
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
	sth %r4, -10(%r1)
	stw %r3, -16(%r1)
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
	sth %r4, -10(%r1)
	stw %r3, -16(%r1)
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
	stb %r4, -9(%r1)
	stw %r3, -16(%r1)
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
	stb %r4, -9(%r1)
	stw %r3, -16(%r1)
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
	sth %r3, -10(%r1)
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
	stw %r3, -12(%r1)
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
	std %r3, -16(%r1)
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
	li %r3, 0
	stw %r3, -20(%r1)
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	lwz %r3, -20(%r1)
	cmpldi	%r3, 32
	bge %cr0, .LBB83_6
# %bb.2:                                #   in Loop: Header=BB83_1 Depth=1
	lwz %r3, -16(%r1)
	lwz %r5, -20(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB83_4
# %bb.3:
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
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB84_2
# %bb.1:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB84_7
.LBB84_2:
	li %r3, 1
	stw %r3, -20(%r1)
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	lbz %r3, -13(%r1)
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	bne	%cr0, .LBB84_6
	b .LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
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
	stdu %r1, -144(%r1)
	std %r0, 160(%r1)
	.cfi_def_cfa_offset 144
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 132(%r31)
	lwz %r3, 132(%r31)
	li %r4, -129
	rldicl %r4, %r4, 16, 32
	bl __ltsf2
	nop
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 128(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB85_4
	b .LBB85_1
.LBB85_1:
	lwz %r3, 132(%r31)
	lis %r4, 32639
	ori %r4, %r4, 65535
	bl __gtsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB85_3
# %bb.2:
	lwz %r3, 120(%r31)                      # 4-byte Folded Reload
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
.LBB85_3:
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	stw %r3, 128(%r31)                      # 4-byte Folded Spill
.LBB85_4:
	lwz %r3, 128(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	addi %r1, %r1, 144
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
	stdu %r1, -144(%r1)
	std %r0, 160(%r1)
	.cfi_def_cfa_offset 144
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 128(%r31)
	ld %r3, 128(%r31)
	li %r4, -17
	rotldi	%r4, %r4, 48
	bl __ltdf2
	nop
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB86_4
	b .LBB86_1
.LBB86_1:
	ld %r3, 128(%r31)
	li %r4, -33
	rldicl %r4, %r4, 47, 1
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB86_3
# %bb.2:
	lwz %r3, 116(%r31)                      # 4-byte Folded Reload
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
.LBB86_3:
	lwz %r3, 120(%r31)                      # 4-byte Folded Reload
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
.LBB86_4:
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	addi %r1, %r1, 144
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
	stdu %r1, -160(%r1)
	std %r0, 176(%r1)
	.cfi_def_cfa_offset 160
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 128(%r31)
	std %r4, 136(%r31)
	ld %r3, 128(%r31)
	ld %r4, 136(%r31)
	li %r5, -17
	rotldi	%r5, %r5, 48
	li %r6, -4152
	rotldi	%r6, %r6, 52
	bl __gcc_qlt
	nop
	mr	%r4, %r3
	li %r3, 1
	cmpwi	%r4, 0
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB87_4
	b .LBB87_1
.LBB87_1:
	ld %r3, 128(%r31)
	ld %r4, 136(%r31)
	li %r5, -33
	rldicl %r5, %r5, 47, 1
	li %r6, -6200
	rotldi	%r6, %r6, 52
	bl __gcc_qgt
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	li %r3, 0
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	bgt	%cr0, .LBB87_3
# %bb.2:
	lwz %r3, 116(%r31)                      # 4-byte Folded Reload
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
.LBB87_3:
	lwz %r3, 120(%r31)                      # 4-byte Folded Reload
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
.LBB87_4:
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	extsw %r3, %r3
	addi %r1, %r1, 160
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
	std %r4, 128(%r31)
	stw %r3, 124(%r31)
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
	stw %r4, 148(%r31)
	stw %r3, 144(%r31)
	lwz %r3, 148(%r31)
	clrlwi	%r3, %r3, 1
	lis %r4, 32640
	cmpw	%r3, %r4
	bgt	%cr0, .LBB89_11
	b .LBB89_1
.LBB89_1:
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
	beq	%cr0, .LBB89_11
	b .LBB89_2
.LBB89_2:
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	lis %r3, 16384
	stw %r3, 112(%r31)                      # 4-byte Folded Spill
	lis %r3, 16128
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
	blt	%cr0, .LBB89_4
# %bb.3:
	lwz %r3, 112(%r31)                      # 4-byte Folded Reload
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
.LBB89_4:
	lwz %r3, 116(%r31)                      # 4-byte Folded Reload
	stw %r3, 140(%r31)
.LBB89_5:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 144(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB89_7
# %bb.6:                                #   in Loop: Header=BB89_5 Depth=1
	lwz %r4, 140(%r31)
	lwz %r3, 148(%r31)
	bl __mulsf3
	nop
	stw %r3, 148(%r31)
.LBB89_7:                               #   in Loop: Header=BB89_5 Depth=1
	lwz %r3, 144(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 144(%r31)
	lwz %r3, 144(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB89_9
# %bb.8:
	b .LBB89_10
.LBB89_9:                               #   in Loop: Header=BB89_5 Depth=1
	lwz %r4, 140(%r31)
	mr	%r3, %r4
	bl __mulsf3
	nop
	stw %r3, 140(%r31)
	b .LBB89_5
.LBB89_10:
	b .LBB89_11
.LBB89_11:
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
	std %r4, 160(%r31)
	stw %r3, 156(%r31)
	ld %r3, 160(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 2047
	rldic %r4, %r4, 52, 1
	cmpd	%r3, %r4
	bgt	%cr0, .LBB90_11
	b .LBB90_1
.LBB90_1:
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
	beq	%cr0, .LBB90_11
	b .LBB90_2
.LBB90_2:
	lwz %r3, 156(%r31)
	cmpwi	%r3, 0
	li %r3, 1
	rldic %r3, %r3, 62, 1
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	li %r3, 511
	rldic %r3, %r3, 53, 2
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	blt	%cr0, .LBB90_4
# %bb.3:
	ld %r3, 112(%r31)                       # 8-byte Folded Reload
	std %r3, 120(%r31)                      # 8-byte Folded Spill
.LBB90_4:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r3, 144(%r31)
.LBB90_5:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 156(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB90_7
# %bb.6:                                #   in Loop: Header=BB90_5 Depth=1
	ld %r4, 144(%r31)
	ld %r3, 160(%r31)
	bl __muldf3
	nop
	std %r3, 160(%r31)
.LBB90_7:                               #   in Loop: Header=BB90_5 Depth=1
	lwz %r3, 156(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 156(%r31)
	lwz %r3, 156(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB90_9
# %bb.8:
	b .LBB90_10
.LBB90_9:                               #   in Loop: Header=BB90_5 Depth=1
	ld %r4, 144(%r31)
	mr	%r3, %r4
	bl __muldf3
	nop
	std %r3, 144(%r31)
	b .LBB90_5
.LBB90_10:
	b .LBB90_11
.LBB90_11:
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
	mr	%r5, %r3
	ld %r3, 152(%r31)                       # 8-byte Folded Reload
                                        # kill: def $r3 killed $r3 killed $x3
	std %r5, 192(%r31)
	std %r4, 200(%r31)
	stw %r3, 188(%r31)
	ld %r3, 192(%r31)
	clrldi	%r3, %r3, 1
	li %r4, 2047
	rldic %r4, %r4, 52, 1
	cmpd	%r3, %r4
	bgt	%cr0, .LBB91_11
	b .LBB91_1
.LBB91_1:
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
	beq	%cr0, .LBB91_11
	b .LBB91_2
.LBB91_2:
	lwz %r3, 188(%r31)
	cmpwi	%r3, 0
	li %r3, 1
	rldic %r3, %r3, 62, 1
	std %r3, 120(%r31)                      # 8-byte Folded Spill
	li %r3, 511
	rldic %r3, %r3, 53, 2
	std %r3, 128(%r31)                      # 8-byte Folded Spill
	blt	%cr0, .LBB91_4
# %bb.3:
	ld %r3, 120(%r31)                       # 8-byte Folded Reload
	std %r3, 128(%r31)                      # 8-byte Folded Spill
.LBB91_4:
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
	li %r4, 0
	std %r4, 168(%r31)
	std %r3, 160(%r31)
.LBB91_5:                               # =>This Inner Loop Header: Depth=1
	lwz %r4, 188(%r31)
	srawi %r3, %r4, 1
	addze %r3, %r3
	slwi %r3, %r3, 1
	sub	%r3, %r4, %r3
	cmpwi	%r3, 0
	beq	%cr0, .LBB91_7
# %bb.6:                                #   in Loop: Header=BB91_5 Depth=1
	ld %r5, 160(%r31)
	ld %r6, 168(%r31)
	ld %r3, 192(%r31)
	ld %r4, 200(%r31)
	bl __gcc_qmul
	nop
	std %r4, 200(%r31)
	std %r3, 192(%r31)
.LBB91_7:                               #   in Loop: Header=BB91_5 Depth=1
	lwz %r3, 188(%r31)
	li %r4, 2
	divw %r3, %r3, %r4
	stw %r3, 188(%r31)
	lwz %r3, 188(%r31)
	cmpwi	%r3, 0
	bne	%cr0, .LBB91_9
# %bb.8:
	b .LBB91_10
.LBB91_9:                               #   in Loop: Header=BB91_5 Depth=1
	ld %r5, 160(%r31)
	ld %r6, 168(%r31)
	mr	%r3, %r5
	mr	%r4, %r6
	bl __gcc_qmul
	nop
	std %r4, 168(%r31)
	std %r3, 160(%r31)
	b .LBB91_5
.LBB91_10:
	b .LBB91_11
.LBB91_11:
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	std %r5, -32(%r1)
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -16(%r1)
	std %r3, -48(%r1)
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -32(%r1)
	cmpldi	%r3, 0
	ble %cr0, .LBB92_4
# %bb.2:                                #   in Loop: Header=BB92_1 Depth=1
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
	stdu %r1, -176(%r1)
	std %r0, 192(%r1)
	.cfi_def_cfa_offset 176
	.cfi_offset r31, -8
	.cfi_offset lr, 16
	mr	%r31, %r1
	.cfi_def_cfa_register r31
	std %r3, 160(%r31)
	std %r4, 152(%r31)
	std %r5, 144(%r31)
	ld %r3, 160(%r31)
	std %r3, 128(%r31)                      # 8-byte Folded Spill
	ld %r3, 160(%r31)
	mr	%r4, %r2
	std %r4, 40(%r1)
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
	ld %r5, 8(%r4)
	ld %r11, 16(%r4)
	ld %r4, 0(%r4)
	mr	%r2, %r5
	mtctr %r4
	bctrl
	ld 2, 40(%r1)
	mr	%r4, %r3
	ld %r3, 128(%r31)                       # 8-byte Folded Reload
	add %r3, %r3, %r4
	std %r3, 136(%r31)
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, 144(%r31)
	li %r3, 0
	cmpldi	%r4, 0
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	ble %cr0, .LBB93_5
# %bb.2:                                #   in Loop: Header=BB93_1 Depth=1
	ld %r3, 152(%r31)
	lbz %r3, 0(%r3)
	ld %r4, 136(%r31)
	stb %r3, 0(%r4)
	cmplwi	%r3, 0
	li %r3, 0
	stw %r3, 116(%r31)                      # 4-byte Folded Spill
	li %r3, 1
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
	bne	%cr0, .LBB93_4
# %bb.3:                                #   in Loop: Header=BB93_1 Depth=1
	lwz %r3, 116(%r31)                      # 4-byte Folded Reload
	stw %r3, 120(%r31)                      # 4-byte Folded Spill
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	lwz %r3, 120(%r31)                      # 4-byte Folded Reload
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
	lwz %r3, 124(%r31)                      # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB93_8
	b .LBB93_6
.LBB93_6:                               #   in Loop: Header=BB93_1 Depth=1
	b .LBB93_7
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	ld %r3, 152(%r31)
	addi %r3, %r3, 1
	std %r3, 152(%r31)
	ld %r3, 136(%r31)
	addi %r3, %r3, 1
	std %r3, 136(%r31)
	ld %r3, 144(%r31)
	addi %r3, %r3, -1
	std %r3, 144(%r31)
	b .LBB93_1
.LBB93_8:
	ld %r3, 144(%r31)
	cmpdi	%r3, 0
	bne	%cr0, .LBB93_10
# %bb.9:
	ld %r4, 136(%r31)
	li %r3, 0
	stb %r3, 0(%r4)
.LBB93_10:
	ld %r3, 160(%r31)
	addi %r1, %r1, 176
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	li %r3, 0
	std %r3, -32(%r1)
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld %r4, -32(%r1)
	ld %r5, -24(%r1)
	li %r3, 0
	cmpld	%r4, %r5
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	bge %cr0, .LBB94_5
# %bb.2:                                #   in Loop: Header=BB94_1 Depth=1
	ld %r3, -16(%r1)
	ld %r4, -32(%r1)
	lbzx %r3, %r3, %r4
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
	lwz %r3, -40(%r1)                       # 4-byte Folded Reload
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB94_8
	b .LBB94_6
.LBB94_6:                               #   in Loop: Header=BB94_1 Depth=1
	b .LBB94_7
.LBB94_7:                               #   in Loop: Header=BB94_1 Depth=1
	ld %r3, -32(%r1)
	addi %r3, %r3, 1
	std %r3, -32(%r1)
	b .LBB94_1
.LBB94_8:
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
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld %r3, -24(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB95_8
# %bb.2:                                #   in Loop: Header=BB95_1 Depth=1
	ld %r3, -32(%r1)
	std %r3, -40(%r1)
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld %r3, -40(%r1)
	lbz %r3, 0(%r3)
	cmpwi	%r3, 0
	beq	%cr0, .LBB95_7
# %bb.4:                                #   in Loop: Header=BB95_3 Depth=2
	ld %r3, -40(%r1)
	addi %r4, %r3, 1
	std %r4, -40(%r1)
	lbz %r3, 0(%r3)
	ld %r4, -24(%r1)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	bne	%cr0, .LBB95_6
# %bb.5:
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
	std %r4, -16(%r1)
	stw %r3, -20(%r1)
	li %r3, 0
	std %r3, -32(%r1)
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	ld %r3, -16(%r1)
	lbz %r3, 0(%r3)
	lwz %r4, -20(%r1)
	cmpw	%r3, %r4
	bne	%cr0, .LBB96_3
# %bb.2:                                #   in Loop: Header=BB96_1 Depth=1
	ld %r3, -16(%r1)
	std %r3, -32(%r1)
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	b .LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_1 Depth=1
	ld %r3, -16(%r1)
	addi %r4, %r3, 1
	std %r4, -16(%r1)
	lbz %r3, 0(%r3)
	extsb %r3, %r3
	cmpwi	%r3, 0
	bne	%cr0, .LBB96_1
# %bb.5:
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
	ld %r3, 136(%r31)
	std %r3, 120(%r31)
	ld %r3, 128(%r31)
	mr	%r4, %r2
	std %r4, 40(%r1)
	addis %r4, %r2, .LC5@toc@ha
	ld %r4, .LC5@toc@l(%r4)
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
	addis %r5, %r2, .LC6@toc@ha
	ld %r5, .LC6@toc@l(%r5)
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
	ld %r3, 120(%r31)
	ld %r4, 128(%r31)
	ld %r5, 112(%r31)
	mr	%r6, %r2
	std %r6, 40(%r1)
	addis %r6, %r2, .LC7@toc@ha
	ld %r6, .LC7@toc@l(%r6)
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
	ld %r3, 120(%r31)
	std %r3, 144(%r31)
	b .LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	b .LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	ld %r3, 120(%r31)
	addi %r3, %r3, 1
	std %r3, 120(%r31)
	b .LBB97_3
.LBB97_8:
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
	ld %r3, 120(%r31)
	li %r4, 0
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB98_2
	b .LBB98_1
.LBB98_1:
	ld %r3, 112(%r31)
	li %r4, 0
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bgt	%cr0, .LBB98_4
	b .LBB98_2
.LBB98_2:
	ld %r3, 120(%r31)
	li %r4, 0
	bl __gtdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 1
	blt	%cr0, .LBB98_5
	b .LBB98_3
.LBB98_3:
	ld %r3, 112(%r31)
	li %r4, 0
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB98_5
	b .LBB98_4
.LBB98_4:
	ld %r3, 120(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 128(%r31)
	b .LBB98_6
.LBB98_5:
	ld %r3, 120(%r31)
	std %r3, 128(%r31)
.LBB98_6:
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
	ld %r3, 152(%r31)
	std %r3, 160(%r31)
	b .LBB99_12
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
	li %r3, 0
	std %r3, 160(%r31)
	b .LBB99_12
.LBB99_4:
	ld %r3, 152(%r31)
	std %r3, 120(%r31)
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld %r3, 120(%r31)
	ld %r4, 112(%r31)
	cmpld	%r3, %r4
	bgt	%cr0, .LBB99_11
# %bb.6:                                #   in Loop: Header=BB99_5 Depth=1
	ld %r3, 120(%r31)
	lbz %r3, 0(%r3)
	ld %r4, 136(%r31)
	lbz %r4, 0(%r4)
	cmpw	%r3, %r4
	bne	%cr0, .LBB99_9
# %bb.7:                                #   in Loop: Header=BB99_5 Depth=1
	ld %r3, 120(%r31)
	addi %r3, %r3, 1
	ld %r4, 136(%r31)
	addi %r4, %r4, 1
	ld %r5, 128(%r31)
	addi %r5, %r5, -1
	mr	%r6, %r2
	std %r6, 40(%r1)
	addis %r6, %r2, .LC8@toc@ha
	ld %r6, .LC8@toc@l(%r6)
	ld %r7, 8(%r6)
	ld %r11, 16(%r6)
	ld %r6, 0(%r6)
	mr	%r2, %r7
	mtctr %r6
	bctrl
	ld 2, 40(%r1)
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	bne	%cr0, .LBB99_9
# %bb.8:
	ld %r3, 120(%r31)
	std %r3, 160(%r31)
	b .LBB99_12
.LBB99_9:                               #   in Loop: Header=BB99_5 Depth=1
	b .LBB99_10
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	ld %r3, 120(%r31)
	addi %r3, %r3, 1
	std %r3, 120(%r31)
	b .LBB99_5
.LBB99_11:
	li %r3, 0
	std %r3, 160(%r31)
.LBB99_12:
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
	std %r3, 144(%r31)
	std %r4, 136(%r31)
	std %r5, 128(%r31)
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
	b .LBB101_4
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
	b .LBB101_14
.LBB101_7:
	ld %r3, 128(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_13
	b .LBB101_8
.LBB101_8:
	ld %r3, 128(%r31)
	li %r4, 0
	bl __eqdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmplwi	%r3, 0
	beq	%cr0, .LBB101_13
	b .LBB101_9
.LBB101_9:
	b .LBB101_10
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
	ld %r3, 128(%r31)
	li %r4, 511
	rldic %r4, %r4, 53, 2
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB101_12
	b .LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_10 Depth=1
	lwz %r3, 112(%r31)
	addi %r3, %r3, -1
	stw %r3, 112(%r31)
	ld %r4, 128(%r31)
	mr	%r3, %r4
	bl __adddf3
	nop
	std %r3, 128(%r31)
	b .LBB101_10
.LBB101_12:
	b .LBB101_13
.LBB101_13:
	b .LBB101_14
.LBB101_14:
	lwz %r3, 112(%r31)
	ld %r4, 120(%r31)
	stw %r3, 0(%r4)
	lwz %r3, 116(%r31)
	cmpwi	%r3, 0
	beq	%cr0, .LBB101_16
# %bb.15:
	ld %r3, 128(%r31)
	li %r4, 1
	rldic %r4, %r4, 63, 0
	xor %r3, %r3, %r4
	std %r3, 128(%r31)
.LBB101_16:
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
	li %r3, 0
	std %r3, -32(%r1)
	ld %r3, -16(%r1)
	std %r3, -40(%r1)
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld %r3, -40(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB102_5
# %bb.2:                                #   in Loop: Header=BB102_1 Depth=1
	ld %r3, -40(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpdi	%r3, 0
	beq	%cr0, .LBB102_4
# %bb.3:                                #   in Loop: Header=BB102_1 Depth=1
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
	bge %cr0, .LBB103_4
# %bb.2:                                #   in Loop: Header=BB103_1 Depth=1
	lwz %r4, -36(%r1)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB103_4
# %bb.3:                                #   in Loop: Header=BB103_1 Depth=1
	lwz %r3, -20(%r1)
	srwi %r3, %r3, 31
	li %r4, -1
	xor %r3, %r3, %r4
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB103_6
	b .LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	lwz %r3, -20(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -36(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -36(%r1)
	b .LBB103_1
.LBB103_6:
	b .LBB103_7
.LBB103_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -36(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB103_11
# %bb.8:                                #   in Loop: Header=BB103_7 Depth=1
	lwz %r3, -16(%r1)
	lwz %r4, -20(%r1)
	cmplw	%r3, %r4
	blt	%cr0, .LBB103_10
# %bb.9:                                #   in Loop: Header=BB103_7 Depth=1
	lwz %r3, -20(%r1)
	lwz %r4, -16(%r1)
	sub	%r3, %r4, %r3
	stw %r3, -16(%r1)
	lwz %r4, -36(%r1)
	lwz %r3, -40(%r1)
	or %r3, %r3, %r4
	stw %r3, -40(%r1)
.LBB103_10:                             #   in Loop: Header=BB103_7 Depth=1
	lwz %r3, -36(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -36(%r1)
	lwz %r3, -20(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -20(%r1)
	b .LBB103_7
.LBB103_11:
	ld %r3, -32(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB103_13
# %bb.12:
	lwz %r3, -16(%r1)
	stw %r3, -12(%r1)
	b .LBB103_14
.LBB103_13:
	lwz %r3, -40(%r1)
	stw %r3, -12(%r1)
.LBB103_14:
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
	lbz %r3, -13(%r1)
	cmpwi	%r3, 0
	bge %cr0, .LBB104_2
# %bb.1:
	lbz %r3, -13(%r1)
	li %r4, -1
	xor %r3, %r3, %r4
	stb %r3, -13(%r1)
.LBB104_2:
	lbz %r3, -13(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB104_4
# %bb.3:
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
	ld %r3, -24(%r1)
	cmpdi	%r3, 0
	bge %cr0, .LBB105_2
# %bb.1:
	ld %r3, -24(%r1)
	li %r4, -1
	xor %r3, %r3, %r4
	std %r3, -24(%r1)
.LBB105_2:
	ld %r3, -24(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB105_4
# %bb.3:
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
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB106_5
# %bb.2:                                #   in Loop: Header=BB106_1 Depth=1
	lwz %r3, -12(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB106_4
# %bb.3:                                #   in Loop: Header=BB106_1 Depth=1
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
	blt	%cr0, .LBB107_2
# %bb.1:
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	ble %cr0, .LBB107_10
.LBB107_2:
	li %r3, 0
	stw %r3, -32(%r1)
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB107_6
# %bb.4:                                #   in Loop: Header=BB107_3 Depth=1
	ld %r3, -24(%r1)
	lwz %r4, -32(%r1)
	sldi %r5, %r4, 3
	ldx %r3, %r3, %r5
	ld %r4, -16(%r1)
	add %r4, %r4, %r5
	std %r3, 0(%r4)
# %bb.5:                                #   in Loop: Header=BB107_3 Depth=1
	lwz %r3, -32(%r1)
	addi %r3, %r3, 1
	stw %r3, -32(%r1)
	b .LBB107_3
.LBB107_6:
	b .LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	lwz %r4, -40(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB107_9
# %bb.8:                                #   in Loop: Header=BB107_7 Depth=1
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
	b .LBB107_7
.LBB107_9:
	b .LBB107_14
.LBB107_10:
	b .LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	addi %r4, %r3, -1
	stw %r4, -28(%r1)
	cmplwi	%r3, 0
	ble %cr0, .LBB107_13
# %bb.12:                               #   in Loop: Header=BB107_11 Depth=1
	ld %r3, -56(%r1)
	lwz %r4, -28(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	b .LBB107_11
.LBB107_13:
	b .LBB107_14
.LBB107_14:
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
	blt	%cr0, .LBB108_2
# %bb.1:
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	ble %cr0, .LBB108_9
.LBB108_2:
	li %r3, 0
	stw %r3, -32(%r1)
.LBB108_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB108_6
# %bb.4:                                #   in Loop: Header=BB108_3 Depth=1
	ld %r3, -24(%r1)
	lwz %r4, -32(%r1)
	sldi %r5, %r4, 1
	lhzx %r3, %r3, %r5
	ld %r4, -16(%r1)
	add %r4, %r4, %r5
	sth %r3, 0(%r4)
# %bb.5:                                #   in Loop: Header=BB108_3 Depth=1
	lwz %r3, -32(%r1)
	addi %r3, %r3, 1
	stw %r3, -32(%r1)
	b .LBB108_3
.LBB108_6:
	lwz %r3, -28(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB108_8
# %bb.7:
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
.LBB108_8:
	b .LBB108_13
.LBB108_9:
	b .LBB108_10
.LBB108_10:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	addi %r4, %r3, -1
	stw %r4, -28(%r1)
	cmplwi	%r3, 0
	ble %cr0, .LBB108_12
# %bb.11:                               #   in Loop: Header=BB108_10 Depth=1
	ld %r3, -56(%r1)
	lwz %r4, -28(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	b .LBB108_10
.LBB108_12:
	b .LBB108_13
.LBB108_13:
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
	blt	%cr0, .LBB109_2
# %bb.1:
	ld %r3, -48(%r1)
	ld %r4, -56(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	cmpld	%r3, %r4
	ble %cr0, .LBB109_10
.LBB109_2:
	li %r3, 0
	stw %r3, -32(%r1)
.LBB109_3:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -32(%r1)
	lwz %r4, -36(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB109_6
# %bb.4:                                #   in Loop: Header=BB109_3 Depth=1
	ld %r3, -24(%r1)
	lwz %r4, -32(%r1)
	sldi %r5, %r4, 2
	lwzx %r3, %r3, %r5
	ld %r4, -16(%r1)
	add %r4, %r4, %r5
	stw %r3, 0(%r4)
# %bb.5:                                #   in Loop: Header=BB109_3 Depth=1
	lwz %r3, -32(%r1)
	addi %r3, %r3, 1
	stw %r3, -32(%r1)
	b .LBB109_3
.LBB109_6:
	b .LBB109_7
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	lwz %r4, -40(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB109_9
# %bb.8:                                #   in Loop: Header=BB109_7 Depth=1
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
	b .LBB109_7
.LBB109_9:
	b .LBB109_14
.LBB109_10:
	b .LBB109_11
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	addi %r4, %r3, -1
	stw %r4, -28(%r1)
	cmplwi	%r3, 0
	ble %cr0, .LBB109_13
# %bb.12:                               #   in Loop: Header=BB109_11 Depth=1
	ld %r3, -56(%r1)
	lwz %r4, -28(%r1)
	add %r3, %r3, %r4
	lbz %r3, 0(%r3)
	ld %r4, -48(%r1)
	lwz %r5, -28(%r1)
	add %r4, %r4, %r5
	stb %r3, 0(%r4)
	b .LBB109_11
.LBB109_13:
	b .LBB109_14
.LBB109_14:
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
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
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
	stw %r3, 116(%r31)
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
	stw %r3, 116(%r31)
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
	std %r3, 112(%r31)
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
	std %r3, 112(%r31)
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
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
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
	sth %r3, -10(%r1)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB116_6
# %bb.2:                                #   in Loop: Header=BB116_1 Depth=1
	lhz %r3, -10(%r1)
	lwz %r4, -16(%r1)
	subfic %r5, %r4, 15
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB116_4
# %bb.3:
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
	sth %r3, -10(%r1)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB117_6
# %bb.2:                                #   in Loop: Header=BB117_1 Depth=1
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB117_4
# %bb.3:
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
	lwz %r3, 124(%r31)
	lis %r4, 18176
	bl __gesf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, 0
	blt	%cr0, .LBB118_2
	b .LBB118_1
.LBB118_1:
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
	sth %r3, -10(%r1)
	li %r3, 0
	stw %r3, -20(%r1)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB119_6
# %bb.2:                                #   in Loop: Header=BB119_1 Depth=1
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB119_4
# %bb.3:                                #   in Loop: Header=BB119_1 Depth=1
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
	sth %r3, -10(%r1)
	li %r3, 0
	stw %r3, -20(%r1)
	li %r3, 0
	stw %r3, -16(%r1)
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -16(%r1)
	cmpwi	%r3, 16
	bge %cr0, .LBB120_6
# %bb.2:                                #   in Loop: Header=BB120_1 Depth=1
	lhz %r3, -10(%r1)
	lwz %r5, -16(%r1)
	li %r4, 1
	slw %r4, %r4, %r5
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB120_4
# %bb.3:                                #   in Loop: Header=BB120_1 Depth=1
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
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
	li %r3, 0
	stw %r3, -20(%r1)
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -12(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB121_5
# %bb.2:                                #   in Loop: Header=BB121_1 Depth=1
	lwz %r3, -12(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB121_4
# %bb.3:                                #   in Loop: Header=BB121_1 Depth=1
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
	li %r3, 0
	stw %r3, -24(%r1)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bne	%cr0, .LBB122_2
# %bb.1:
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
	lwz %r3, -20(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB122_6
# %bb.5:                                #   in Loop: Header=BB122_3 Depth=1
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
	bge %cr0, .LBB123_4
# %bb.2:                                #   in Loop: Header=BB123_1 Depth=1
	lwz %r4, -28(%r1)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB123_4
# %bb.3:                                #   in Loop: Header=BB123_1 Depth=1
	lwz %r3, -20(%r1)
	srwi %r3, %r3, 31
	li %r4, -1
	xor %r3, %r3, %r4
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB123_6
	b .LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	lwz %r3, -20(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -20(%r1)
	lwz %r3, -28(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -28(%r1)
	b .LBB123_1
.LBB123_6:
	b .LBB123_7
.LBB123_7:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, -28(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB123_11
# %bb.8:                                #   in Loop: Header=BB123_7 Depth=1
	lwz %r3, -16(%r1)
	lwz %r4, -20(%r1)
	cmplw	%r3, %r4
	blt	%cr0, .LBB123_10
# %bb.9:                                #   in Loop: Header=BB123_7 Depth=1
	lwz %r3, -20(%r1)
	lwz %r4, -16(%r1)
	sub	%r3, %r4, %r3
	stw %r3, -16(%r1)
	lwz %r4, -28(%r1)
	lwz %r3, -32(%r1)
	or %r3, %r3, %r4
	stw %r3, -32(%r1)
.LBB123_10:                             #   in Loop: Header=BB123_7 Depth=1
	lwz %r3, -28(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -28(%r1)
	lwz %r3, -20(%r1)
	li %r4, 1
	srw %r3, %r3, %r4
	stw %r3, -20(%r1)
	b .LBB123_7
.LBB123_11:
	lwz %r3, -24(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB123_13
# %bb.12:
	lwz %r3, -16(%r1)
	stw %r3, -12(%r1)
	b .LBB123_14
.LBB123_13:
	lwz %r3, -32(%r1)
	stw %r3, -12(%r1)
.LBB123_14:
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
	lwz %r3, 128(%r31)
	lwz %r4, 124(%r31)
	bl __ltsf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB124_2
	b .LBB124_1
.LBB124_1:
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
	li %r3, 1
	stw %r3, 132(%r31)
	b .LBB124_5
.LBB124_4:
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
	ld %r3, 120(%r31)
	ld %r4, 112(%r31)
	bl __ltdf2
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	cmpwi	%r3, -1
	bgt	%cr0, .LBB125_2
	b .LBB125_1
.LBB125_1:
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
	li %r3, 1
	stw %r3, 132(%r31)
	b .LBB125_5
.LBB125_4:
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
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
	li %r3, 0
	stw %r3, -24(%r1)
	li %r3, 0
	stw %r3, -28(%r1)
	lwz %r3, -16(%r1)
	cmpwi	%r3, 0
	bge %cr0, .LBB128_2
# %bb.1:
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
	beq	%cr0, .LBB128_7
# %bb.4:                                #   in Loop: Header=BB128_3 Depth=1
	lbz %r3, -17(%r1)
	cmplwi	%r3, 32
	li %r3, 0
	stw %r3, -52(%r1)                       # 4-byte Folded Spill
	li %r3, 1
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
	blt	%cr0, .LBB128_6
# %bb.5:                                #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -52(%r1)                       # 4-byte Folded Reload
	stw %r3, -48(%r1)                       # 4-byte Folded Spill
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -48(%r1)                       # 4-byte Folded Reload
	stw %r3, -44(%r1)                       # 4-byte Folded Spill
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -44(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB128_12
	b .LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -16(%r1)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB128_10
# %bb.9:                                #   in Loop: Header=BB128_3 Depth=1
	lwz %r4, -12(%r1)
	lwz %r3, -28(%r1)
	add %r3, %r3, %r4
	stw %r3, -28(%r1)
.LBB128_10:                             #   in Loop: Header=BB128_3 Depth=1
	lwz %r3, -12(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	stw %r3, -12(%r1)
	lwz %r3, -16(%r1)
	srawi %r3, %r3, 1
	stw %r3, -16(%r1)
# %bb.11:                               #   in Loop: Header=BB128_3 Depth=1
	lbz %r3, -17(%r1)
	addi %r3, %r3, 1
	stb %r3, -17(%r1)
	b .LBB128_3
.LBB128_12:
	lwz %r3, -24(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB128_14
# %bb.13:
	lwz %r3, -28(%r1)
	neg %r3, %r3
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
	b .LBB128_15
.LBB128_14:
	lwz %r3, -28(%r1)
	stw %r3, -56(%r1)                       # 4-byte Folded Spill
.LBB128_15:
	lwz %r3, -56(%r1)                       # 4-byte Folded Reload
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
	std %r3, 144(%r31)
	std %r4, 136(%r31)
	li %r3, 0
	stw %r3, 132(%r31)
	ld %r3, 144(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB129_2
# %bb.1:
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
	addis %r5, %r2, .LC9@toc@ha
	ld %r5, .LC9@toc@l(%r5)
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
	std %r3, 144(%r31)
	std %r4, 136(%r31)
	li %r3, 0
	stw %r3, 132(%r31)
	ld %r3, 144(%r31)
	cmpdi	%r3, 0
	bge %cr0, .LBB130_2
# %bb.1:
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
	addis %r5, %r2, .LC9@toc@ha
	ld %r5, .LC9@toc@l(%r5)
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
	bge %cr0, .LBB131_4
# %bb.2:                                #   in Loop: Header=BB131_1 Depth=1
	lhz %r4, -22(%r1)
	li %r3, 0
	cmpwi	%r4, 0
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB131_4
# %bb.3:                                #   in Loop: Header=BB131_1 Depth=1
	lhz %r3, -14(%r1)
	srwi %r3, %r3, 15
	li %r4, -1
	xor %r3, %r3, %r4
	stw %r3, -36(%r1)                       # 4-byte Folded Spill
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	lwz %r3, -36(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB131_6
	b .LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	lhz %r3, -14(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	sth %r3, -14(%r1)
	lhz %r3, -22(%r1)
	li %r4, 1
	slw %r3, %r3, %r4
	sth %r3, -22(%r1)
	b .LBB131_1
.LBB131_6:
	b .LBB131_7
.LBB131_7:                              # =>This Inner Loop Header: Depth=1
	lha %r3, -22(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB131_11
# %bb.8:                                #   in Loop: Header=BB131_7 Depth=1
	lhz %r3, -12(%r1)
	lhz %r4, -14(%r1)
	cmpw	%r3, %r4
	blt	%cr0, .LBB131_10
# %bb.9:                                #   in Loop: Header=BB131_7 Depth=1
	lhz %r3, -14(%r1)
	lhz %r4, -12(%r1)
	sub	%r3, %r4, %r3
	sth %r3, -12(%r1)
	lhz %r4, -22(%r1)
	lhz %r3, -24(%r1)
	or %r3, %r3, %r4
	sth %r3, -24(%r1)
.LBB131_10:                             #   in Loop: Header=BB131_7 Depth=1
	lhz %r3, -22(%r1)
	srawi %r3, %r3, 1
	sth %r3, -22(%r1)
	lhz %r3, -14(%r1)
	srawi %r3, %r3, 1
	sth %r3, -14(%r1)
	b .LBB131_7
.LBB131_11:
	lwz %r3, -20(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB131_13
# %bb.12:
	lhz %r3, -12(%r1)
	sth %r3, -10(%r1)
	b .LBB131_14
.LBB131_13:
	lhz %r3, -24(%r1)
	sth %r3, -10(%r1)
.LBB131_14:
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
	bge %cr0, .LBB132_4
# %bb.2:                                #   in Loop: Header=BB132_1 Depth=1
	ld %r4, -48(%r1)
	li %r3, 0
	cmpdi	%r4, 0
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
	beq	%cr0, .LBB132_4
# %bb.3:                                #   in Loop: Header=BB132_1 Depth=1
	lbz %r3, -28(%r1)
	srwi %r3, %r3, 7
	li %r4, -1
	xor %r3, %r3, %r4
	stw %r3, -68(%r1)                       # 4-byte Folded Spill
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	lwz %r3, -68(%r1)                       # 4-byte Folded Reload
	clrlwi	%r3, %r3, 31
	cmplwi	%r3, 0
	beq	%cr0, .LBB132_6
	b .LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ld %r3, -32(%r1)
	sldi %r3, %r3, 1
	std %r3, -32(%r1)
	ld %r3, -48(%r1)
	sldi %r3, %r3, 1
	std %r3, -48(%r1)
	b .LBB132_1
.LBB132_6:
	b .LBB132_7
.LBB132_7:                              # =>This Inner Loop Header: Depth=1
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	beq	%cr0, .LBB132_11
# %bb.8:                                #   in Loop: Header=BB132_7 Depth=1
	ld %r3, -24(%r1)
	ld %r4, -32(%r1)
	cmpld	%r3, %r4
	blt	%cr0, .LBB132_10
# %bb.9:                                #   in Loop: Header=BB132_7 Depth=1
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	sub	%r3, %r4, %r3
	std %r3, -24(%r1)
	ld %r4, -48(%r1)
	ld %r3, -56(%r1)
	or %r3, %r3, %r4
	std %r3, -56(%r1)
.LBB132_10:                             #   in Loop: Header=BB132_7 Depth=1
	ld %r3, -48(%r1)
	rldicl %r3, %r3, 63, 1
	std %r3, -48(%r1)
	ld %r3, -32(%r1)
	rldicl %r3, %r3, 63, 1
	std %r3, -32(%r1)
	b .LBB132_7
.LBB132_11:
	lwz %r3, -36(%r1)
	cmpwi	%r3, 0
	beq	%cr0, .LBB132_13
# %bb.12:
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB132_14
.LBB132_13:
	ld %r3, -56(%r1)
	std %r3, -16(%r1)
.LBB132_14:
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
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB133_6
.LBB133_4:
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
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB134_6
.LBB134_4:
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
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB135_6
.LBB135_4:
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
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB136_6
.LBB136_4:
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
	std %r3, -16(%r1)
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
	stw %r3, -12(%r1)
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
	stw %r3, -12(%r1)
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
	std %r3, -32(%r1)
	std %r4, -24(%r1)
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
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	std %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmpw	%r3, %r4
	bge %cr0, .LBB141_2
# %bb.1:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_2:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmpw	%r3, %r4
	ble %cr0, .LBB141_4
# %bb.3:
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_4:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB141_6
# %bb.5:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB141_9
.LBB141_6:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB141_8
# %bb.7:
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
	std %r3, 128(%r31)
	std %r4, 120(%r31)
	ld %r3, 128(%r31)
	ld %r4, 120(%r31)
	mr	%r5, %r2
	std %r5, 40(%r1)
	addis %r5, %r2, .LC10@toc@ha
	ld %r5, .LC10@toc@l(%r5)
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
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_2:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpd	%r3, %r4
	ble %cr0, .LBB143_4
# %bb.3:
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_4:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB143_6
# %bb.5:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB143_9
.LBB143_6:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB143_8
# %bb.7:
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
	stw %r3, -12(%r1)
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
	std %r3, -32(%r1)
	std %r4, -24(%r1)
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
	ld %r3, -32(%r1)
	ld %r4, -24(%r1)
	std %r4, -40(%r1)
	std %r3, -48(%r1)
	ld %r3, -40(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB146_4
# %bb.1:
	ld %r3, -48(%r1)
	cmpdi	%r3, 0
	bne	%cr0, .LBB146_3
# %bb.2:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB146_5
.LBB146_3:
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
	ld %r3, -24(%r1)
	std %r3, -16(%r1)
	b .LBB147_6
.LBB147_4:
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
	ld %r3, -48(%r1)
	ld %r4, -40(%r1)
	std %r4, -24(%r1)
	std %r3, -32(%r1)
	b .LBB148_6
.LBB148_4:
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
	stw %r4, -12(%r1)
	stw %r3, -16(%r1)
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
	std %r3, 144(%r31)
	std %r4, 136(%r31)
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
	addis %r5, %r2, .LC11@toc@ha
	ld %r5, .LC11@toc@l(%r5)
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
	std %r3, -16(%r1)
	std %r4, -24(%r1)
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
	std %r3, 176(%r31)
	std %r4, 184(%r31)
	std %r6, 168(%r31)
	std %r5, 160(%r31)
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
	addis %r5, %r2, .LC12@toc@ha
	ld %r5, .LC12@toc@l(%r5)
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
	std %r3, -16(%r1)
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
	std %r3, -32(%r1)
	std %r4, -24(%r1)
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
	std %r3, -16(%r1)
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
	std %r3, -32(%r1)
	std %r4, -24(%r1)
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
	stw %r3, -12(%r1)
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
	std %r3, -16(%r1)
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
	stw %r3, -12(%r1)
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
	std %r3, -32(%r1)
	std %r4, -24(%r1)
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
	lwz %r3, 140(%r31)
	srwi %r3, %r3, 31
	stw %r3, 136(%r31)
	li %r3, 1023
	rldic %r3, %r3, 52, 2
	std %r3, 128(%r31)
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 140(%r31)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB161_3
# %bb.2:                                #   in Loop: Header=BB161_1 Depth=1
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
	b .LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
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
	ld %r4, 128(%r31)
	li %r3, 1023
	rldic %r3, %r3, 52, 2
	bl __divdf3
	nop
	std %r3, 112(%r31)                      # 8-byte Folded Spill
	b .LBB161_9
.LBB161_8:
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
	lwz %r3, 144(%r31)
	srwi %r3, %r3, 31
	stw %r3, 140(%r31)
	lis %r3, 16256
	stw %r3, 136(%r31)
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	lwz %r3, 144(%r31)
	li %r4, 1
	and %r3, %r3, %r4
	cmpwi	%r3, 0
	beq	%cr0, .LBB162_3
# %bb.2:                                #   in Loop: Header=BB162_1 Depth=1
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
	b .LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
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
	lwz %r4, 136(%r31)
	lis %r3, 16256
	bl __divsf3
	nop
                                        # kill: def $r3 killed $r3 killed $x3
	stw %r3, 124(%r31)                      # 4-byte Folded Spill
	b .LBB162_9
.LBB162_8:
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
	ld %r3, -24(%r1)
	std %r3, -40(%r1)
	ld %r3, -32(%r1)
	std %r3, -48(%r1)
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB163_2
# %bb.1:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_2:
	lwz %r3, -40(%r1)
	lwz %r4, -48(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB163_4
# %bb.3:
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_4:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	bge %cr0, .LBB163_6
# %bb.5:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB163_9
.LBB163_6:
	lwz %r3, -36(%r1)
	lwz %r4, -44(%r1)
	cmplw	%r3, %r4
	ble %cr0, .LBB163_8
# %bb.7:
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
	std %r3, 128(%r31)
	std %r4, 120(%r31)
	ld %r3, 128(%r31)
	ld %r4, 120(%r31)
	mr	%r5, %r2
	std %r5, 40(%r1)
	addis %r5, %r2, .LC13@toc@ha
	ld %r5, .LC13@toc@l(%r5)
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
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_2:
	ld %r3, -64(%r1)
	ld %r4, -80(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB165_4
# %bb.3:
	li %r3, 2
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_4:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	bge %cr0, .LBB165_6
# %bb.5:
	li %r3, 0
	stw %r3, -12(%r1)
	b .LBB165_9
.LBB165_6:
	ld %r3, -56(%r1)
	ld %r4, -72(%r1)
	cmpld	%r3, %r4
	ble %cr0, .LBB165_8
# %bb.7:
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
	.gnu_attribute 4, 5
	.section	.toc,"aw",@progbits
.LC0:
	.tc l64a.s[TC],l64a.s
.LC1:
	.tc digits[TC],digits
.LC2:
	.tc seed[TC],seed
.LC3:
	.tc isspace[TC],isspace
.LC4:
	.tc isdigit[TC],isdigit
.LC5:
	.tc strlen[TC],strlen
.LC6:
	.tc strchr[TC],strchr
.LC7:
	.tc strncmp[TC],strncmp
.LC8:
	.tc memcmp[TC],memcmp
.LC9:
	.tc __udivmodsi4[TC],__udivmodsi4
.LC10:
	.tc __cmpdi2[TC],__cmpdi2
.LC11:
	.tc __muldsi3[TC],__muldsi3
.LC12:
	.tc __mulddi3[TC],__mulddi3
.LC13:
	.tc __ucmpdi2[TC],__ucmpdi2
