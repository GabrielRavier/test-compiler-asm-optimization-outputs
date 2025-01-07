	.text
	.attribute	4, 16
	.attribute	5, "rv64i2p1_m2p0_a2p1_c2p0_zmmul1p0"
	.file	"mini-libc.c"
	.globl	make_ti                         # -- Begin function make_ti
	.p2align	1
	.type	make_ti,@function
make_ti:                                # @make_ti
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end0:
	.size	make_ti, .Lfunc_end0-make_ti
                                        # -- End function
	.globl	make_tu                         # -- Begin function make_tu
	.p2align	1
	.type	make_tu,@function
make_tu:                                # @make_tu
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	make_tu, .Lfunc_end1-make_tu
                                        # -- End function
	.globl	memmove                         # -- Begin function memmove
	.p2align	1
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	bgeu	a0, a1, .LBB2_6
	j	.LBB2_1
.LBB2_1:
	ld	a1, -40(s0)
	ld	a0, -56(s0)
	add	a0, a0, a1
	sd	a0, -56(s0)
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB2_2
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB2_5
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_2 Depth=1
	ld	a0, -56(s0)
	addi	a1, a0, -1
	sd	a1, -56(s0)
	lbu	a0, -1(a0)
	ld	a1, -48(s0)
	addi	a2, a1, -1
	sd	a2, -48(s0)
	sb	a0, -1(a1)
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_2 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB2_2
.LBB2_5:
	j	.LBB2_13
.LBB2_6:
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	beq	a0, a1, .LBB2_12
	j	.LBB2_7
.LBB2_7:
	j	.LBB2_8
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB2_11
	j	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_8 Depth=1
	ld	a0, -56(s0)
	addi	a1, a0, 1
	sd	a1, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	addi	a2, a1, 1
	sd	a2, -48(s0)
	sb	a0, 0(a1)
	j	.LBB2_10
.LBB2_10:                               #   in Loop: Header=BB2_8 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB2_8
.LBB2_11:
	j	.LBB2_12
.LBB2_12:
	j	.LBB2_13
.LBB2_13:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end2:
	.size	memmove, .Lfunc_end2-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	1
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
                                        # kill: def $x1 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	sd	a3, -56(s0)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -40(s0)
	sd	a0, -72(s0)
	lbu	a0, -44(s0)
	sw	a0, -44(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	li	a1, 0
	sd	a1, -80(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB3_3
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -72(s0)
	lbu	a0, 0(a0)
	ld	a1, -64(s0)
	sb	a0, 0(a1)
	lw	a1, -44(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB3_6
	j	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	ld	a0, -56(s0)
	addi	a0, a0, -1
	sd	a0, -56(s0)
	ld	a0, -72(s0)
	addi	a0, a0, 1
	sd	a0, -72(s0)
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -64(s0)
	j	.LBB3_1
.LBB3_6:
	ld	a0, -56(s0)
	beqz	a0, .LBB3_8
	j	.LBB3_7
.LBB3_7:
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB3_9
.LBB3_8:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB3_9
.LBB3_9:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end3:
	.size	memccpy, .Lfunc_end3-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	1
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	lbu	a0, -28(s0)
	sw	a0, -28(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB4_3
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB4_6
	j	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	j	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB4_1
.LBB4_6:
	ld	a0, -40(s0)
	beqz	a0, .LBB4_8
	j	.LBB4_7
.LBB4_7:
	ld	a0, -48(s0)
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB4_9
.LBB4_8:
	li	a0, 0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB4_9
.LBB4_9:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end4:
	.size	memchr, .Lfunc_end4-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	1
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	j	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB5_3
	j	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	lbu	a1, 0(a1)
	xor	a0, a0, a1
	seqz	a0, a0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB5_3
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB5_6
	j	.LBB5_4
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	j	.LBB5_5
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB5_1
.LBB5_6:
	ld	a0, -40(s0)
	beqz	a0, .LBB5_8
	j	.LBB5_7
.LBB5_7:
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB5_9
.LBB5_8:
	li	a0, 0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB5_9
.LBB5_9:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end5:
	.size	memcmp, .Lfunc_end5-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	1
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	j	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB6_4
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	ld	a0, -56(s0)
	addi	a1, a0, 1
	sd	a1, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	addi	a2, a1, 1
	sd	a2, -48(s0)
	sb	a0, 0(a1)
	j	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB6_1
.LBB6_4:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end6:
	.size	memcpy, .Lfunc_end6-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	1
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	sd	a2, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	lbu	a0, -36(s0)
	sw	a0, -36(s0)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	beqz	a0, .LBB7_5
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	bne	a0, a1, .LBB7_4
	j	.LBB7_3
.LBB7_3:
	ld	a0, -56(s0)
	ld	a1, -48(s0)
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB7_6
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	j	.LBB7_1
.LBB7_5:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB7_6
.LBB7_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end7:
	.size	memrchr, .Lfunc_end7-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	1
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB8_4
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lbu	a0, -28(s0)
	ld	a1, -48(s0)
	sb	a0, 0(a1)
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB8_1
.LBB8_4:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end8:
	.size	memset, .Lfunc_end8-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	1
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	ld	a1, -24(s0)
	sb	a0, 0(a1)
	beqz	a0, .LBB9_4
	j	.LBB9_2
.LBB9_2:                                #   in Loop: Header=BB9_1 Depth=1
	j	.LBB9_3
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB9_1
.LBB9_4:
	ld	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	stpcpy, .Lfunc_end9-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	1
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	lbu	a0, -28(s0)
	sw	a0, -28(s0)
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB10_3
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB10_6
	j	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	j	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB10_1
.LBB10_6:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end10:
	.size	strchrnul, .Lfunc_end10-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	1
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	j	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	bne	a0, a1, .LBB11_3
	j	.LBB11_2
.LBB11_2:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB11_6
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	j	.LBB11_4
.LBB11_4:                               #   in Loop: Header=BB11_1 Depth=1
	ld	a0, -32(s0)
	addi	a1, a0, 1
	sd	a1, -32(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB11_1
	j	.LBB11_5
.LBB11_5:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB11_6
.LBB11_6:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end11:
	.size	strchr, .Lfunc_end11-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	1
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	j	.LBB12_1
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	li	a2, 0
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB12_3
	j	.LBB12_2
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	snez	a0, a0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB12_3
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB12_6
	j	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	j	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	j	.LBB12_1
.LBB12_6:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end12:
	.size	strcmp, .Lfunc_end12-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	1
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	j	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB13_4
	j	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	j	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB13_1
.LBB13_4:
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	sub	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end13:
	.size	strlen, .Lfunc_end13-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	1
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	sd	a0, -64(s0)
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	bnez	a0, .LBB14_2
	j	.LBB14_1
.LBB14_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB14_11
.LBB14_2:
	j	.LBB14_3
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB14_7
	j	.LBB14_4
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=1
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB14_7
	j	.LBB14_5
.LBB14_5:                               #   in Loop: Header=BB14_3 Depth=1
	ld	a0, -48(s0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB14_7
	j	.LBB14_6
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=1
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -64(s0)
	lbu	a1, 0(a1)
	xor	a0, a0, a1
	seqz	a0, a0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB14_10
	j	.LBB14_8
.LBB14_8:                               #   in Loop: Header=BB14_3 Depth=1
	j	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_3 Depth=1
	ld	a0, -56(s0)
	addi	a0, a0, 1
	sd	a0, -56(s0)
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -64(s0)
	ld	a0, -48(s0)
	addi	a0, a0, -1
	sd	a0, -48(s0)
	j	.LBB14_3
.LBB14_10:
	ld	a0, -56(s0)
	lbu	a0, 0(a0)
	ld	a1, -64(s0)
	lbu	a1, 0(a1)
	subw	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB14_11
.LBB14_11:
	lw	a0, -20(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end14:
	.size	strncmp, .Lfunc_end14-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	1
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	j	.LBB15_1
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 2
	blt	a0, a1, .LBB15_4
	j	.LBB15_2
.LBB15_2:                               #   in Loop: Header=BB15_1 Depth=1
	ld	a0, -48(s0)
	lbu	a0, 1(a0)
	ld	a1, -56(s0)
	sb	a0, 0(a1)
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	sb	a0, 1(a1)
	ld	a0, -56(s0)
	addi	a0, a0, 2
	sd	a0, -56(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 2
	sd	a0, -48(s0)
	j	.LBB15_3
.LBB15_3:                               #   in Loop: Header=BB15_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -2
	sd	a0, -40(s0)
	j	.LBB15_1
.LBB15_4:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end15:
	.size	swab, .Lfunc_end15-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	1
	.type	isalpha,@function
isalpha:                                # @isalpha
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	ori	a0, a0, 32
	addiw	a0, a0, -97
	sltiu	a0, a0, 26
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end16:
	.size	isalpha, .Lfunc_end16-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	1
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	andi	a0, a0, -128
	seqz	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end17:
	.size	isascii, .Lfunc_end17-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	1
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB18_2
	j	.LBB18_1
.LBB18_1:
	lw	a0, -20(s0)
	addi	a0, a0, -9
	seqz	a0, a0
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB18_2
.LBB18_2:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end18:
	.size	isblank, .Lfunc_end18-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	1
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB19_2
	j	.LBB19_1
.LBB19_1:
	lw	a0, -20(s0)
	addi	a0, a0, -127
	seqz	a0, a0
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB19_2
.LBB19_2:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end19:
	.size	iscntrl, .Lfunc_end19-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	1
	.type	isdigit,@function
isdigit:                                # @isdigit
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -48
	sltiu	a0, a0, 10
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end20:
	.size	isdigit, .Lfunc_end20-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	1
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -33
	sltiu	a0, a0, 94
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end21:
	.size	isgraph, .Lfunc_end21-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	1
	.type	islower,@function
islower:                                # @islower
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -97
	sltiu	a0, a0, 26
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end22:
	.size	islower, .Lfunc_end22-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	1
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -32
	sltiu	a0, a0, 95
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end23:
	.size	isprint, .Lfunc_end23-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	1
	.type	isspace,@function
isspace:                                # @isspace
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB24_2
	j	.LBB24_1
.LBB24_1:
	lw	a0, -20(s0)
	addiw	a0, a0, -9
	sltiu	a0, a0, 5
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB24_2
.LBB24_2:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end24:
	.size	isspace, .Lfunc_end24-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	1
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -65
	sltiu	a0, a0, 26
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end25:
	.size	isupper, .Lfunc_end25-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	1
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	li	a2, 1
	li	a1, 32
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB26_4
	j	.LBB26_1
.LBB26_1:
	lw	a0, -20(s0)
	addiw	a0, a0, -127
	li	a2, 1
	li	a1, 33
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB26_4
	j	.LBB26_2
.LBB26_2:
	lw	a0, -20(s0)
	lui	a1, 1048574
	addiw	a1, a1, -40
	addw	a0, a0, a1
	li	a2, 1
	li	a1, 2
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB26_4
	j	.LBB26_3
.LBB26_3:
	lw	a0, -20(s0)
	lui	a1, 1048560
	addiw	a1, a1, 7
	addw	a0, a0, a1
	sltiu	a0, a0, 3
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB26_4
.LBB26_4:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end26:
	.size	iswcntrl, .Lfunc_end26-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	1
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -48
	sltiu	a0, a0, 10
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end27:
	.size	iswdigit, .Lfunc_end27-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	1
	.type	iswprint,@function
iswprint:                               # @iswprint
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -24(s0)
	lw	a1, -24(s0)
	li	a0, 254
	bltu	a0, a1, .LBB28_2
	j	.LBB28_1
.LBB28_1:
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	andi	a0, a0, 127
	sltiu	a0, a0, 33
	xori	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB28_10
.LBB28_2:
	lwu	a0, -24(s0)
	srli	a0, a0, 3
	li	a1, 1029
	bltu	a0, a1, .LBB28_5
	j	.LBB28_3
.LBB28_3:
	lw	a0, -24(s0)
	lui	a1, 1048574
	addiw	a1, a1, -42
	addw	a0, a0, a1
	lui	a1, 11
	addiw	a1, a1, 2006
	bltu	a0, a1, .LBB28_5
	j	.LBB28_4
.LBB28_4:
	lw	a0, -24(s0)
	lui	a1, 1048562
	addw	a1, a1, a0
	lui	a0, 2
	addiw	a0, a0, -8
	bltu	a0, a1, .LBB28_6
	j	.LBB28_5
.LBB28_5:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB28_10
.LBB28_6:
	lw	a0, -24(s0)
	lui	a1, 1048560
	addiw	a1, a1, 4
	addw	a1, a1, a0
	lui	a0, 256
	addiw	a0, a0, 3
	bltu	a0, a1, .LBB28_8
	j	.LBB28_7
.LBB28_7:
	lwu	a0, -24(s0)
	lui	a1, 16
	addiw	a1, a1, -2
	and	a0, a0, a1
	bne	a0, a1, .LBB28_9
	j	.LBB28_8
.LBB28_8:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB28_10
.LBB28_9:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB28_10
.LBB28_10:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end28:
	.size	iswprint, .Lfunc_end28-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	1
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -48
	li	a2, 1
	li	a1, 10
	sd	a2, -32(s0)                     # 8-byte Folded Spill
	bltu	a0, a1, .LBB29_2
	j	.LBB29_1
.LBB29_1:
	lw	a0, -20(s0)
	ori	a0, a0, 32
	addiw	a0, a0, -97
	sltiu	a0, a0, 6
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB29_2
.LBB29_2:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end29:
	.size	iswxdigit, .Lfunc_end29-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	1
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lwu	a0, -20(s0)
	andi	a0, a0, 127
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end30:
	.size	toascii, .Lfunc_end30-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	1
	.type	fdim,@function
fdim:                                   # @fdim
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB31_2
	j	.LBB31_1
.LBB31_1:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB31_8
.LBB31_2:
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB31_4
	j	.LBB31_3
.LBB31_3:
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB31_8
.LBB31_4:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB31_6
	j	.LBB31_5
.LBB31_5:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__subdf3
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB31_7
.LBB31_6:
	li	a0, 0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB31_7
.LBB31_7:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB31_8
.LBB31_8:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end31:
	.size	fdim, .Lfunc_end31-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	1
	.type	fdimf,@function
fdimf:                                  # @fdimf
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	lwu	a0, -24(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB32_2
	j	.LBB32_1
.LBB32_1:
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB32_8
.LBB32_2:
	lwu	a0, -28(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB32_4
	j	.LBB32_3
.LBB32_3:
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB32_8
.LBB32_4:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB32_6
	j	.LBB32_5
.LBB32_5:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__subsf3
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB32_7
.LBB32_6:
	li	a0, 0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB32_7
.LBB32_7:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB32_8
.LBB32_8:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end32:
	.size	fdimf, .Lfunc_end32-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	1
	.type	fmax,@function
fmax:                                   # @fmax
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB33_2
	j	.LBB33_1
.LBB33_1:
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_2:
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB33_4
	j	.LBB33_3
.LBB33_3:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_4:
	ld	a0, -32(s0)
	srli	a0, a0, 63
	ld	a1, -40(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB33_9
	j	.LBB33_5
.LBB33_5:
	ld	a0, -32(s0)
	bgez	a0, .LBB33_7
	j	.LBB33_6
.LBB33_6:
	ld	a0, -40(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB33_8
.LBB33_7:
	ld	a0, -32(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB33_8
.LBB33_8:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_9:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__ltdf2
	bgez	a0, .LBB33_11
	j	.LBB33_10
.LBB33_10:
	ld	a0, -40(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB33_12
.LBB33_11:
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB33_12
.LBB33_12:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB33_13
.LBB33_13:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end33:
	.size	fmax, .Lfunc_end33-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	1
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	lwu	a0, -24(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB34_2
	j	.LBB34_1
.LBB34_1:
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_2:
	lwu	a0, -28(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB34_4
	j	.LBB34_3
.LBB34_3:
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_4:
	lwu	a0, -24(s0)
	srli	a0, a0, 31
	lwu	a1, -28(s0)
	srli	a1, a1, 31
	beq	a0, a1, .LBB34_9
	j	.LBB34_5
.LBB34_5:
	lw	a0, -24(s0)
	bgez	a0, .LBB34_7
	j	.LBB34_6
.LBB34_6:
	lw	a0, -28(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB34_8
.LBB34_7:
	lw	a0, -24(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB34_8
.LBB34_8:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_9:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__ltsf2
	bgez	a0, .LBB34_11
	j	.LBB34_10
.LBB34_10:
	lw	a0, -28(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB34_12
.LBB34_11:
	lw	a0, -24(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB34_12
.LBB34_12:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB34_13
.LBB34_13:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end34:
	.size	fmaxf, .Lfunc_end34-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	1
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	addi	s0, sp, 128
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
	ld	a2, -48(s0)
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -80(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB35_2
# %bb.1:
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
.LBB35_2:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB35_4
	j	.LBB35_3
.LBB35_3:
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB35_17
.LBB35_4:
	ld	a2, -64(s0)
	ld	a0, -56(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -96(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -88(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB35_6
# %bb.5:
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	sd	a0, -88(s0)                     # 8-byte Folded Spill
.LBB35_6:
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB35_8
	j	.LBB35_7
.LBB35_7:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB35_17
.LBB35_8:
	ld	a0, -40(s0)
	srli	a0, a0, 63
	ld	a1, -56(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB35_13
	j	.LBB35_9
.LBB35_9:
	ld	a0, -40(s0)
	bgez	a0, .LBB35_11
	j	.LBB35_10
.LBB35_10:
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB35_12
.LBB35_11:
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB35_12
.LBB35_12:
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB35_17
.LBB35_13:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	call	__lttf2
	bgez	a0, .LBB35_15
	j	.LBB35_14
.LBB35_14:
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB35_16
.LBB35_15:
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB35_16
.LBB35_16:
	ld	a1, -128(s0)                    # 8-byte Folded Reload
	ld	a0, -120(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB35_17
.LBB35_17:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end35:
	.size	fmaxl, .Lfunc_end35-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	1
	.type	fmin,@function
fmin:                                   # @fmin
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB36_2
	j	.LBB36_1
.LBB36_1:
	ld	a0, -40(s0)
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_2:
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, 1
	blt	a0, a1, .LBB36_4
	j	.LBB36_3
.LBB36_3:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_4:
	ld	a0, -32(s0)
	srli	a0, a0, 63
	ld	a1, -40(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB36_9
	j	.LBB36_5
.LBB36_5:
	ld	a0, -32(s0)
	bgez	a0, .LBB36_7
	j	.LBB36_6
.LBB36_6:
	ld	a0, -32(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB36_8
.LBB36_7:
	ld	a0, -40(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB36_8
.LBB36_8:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_9:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__ltdf2
	bgez	a0, .LBB36_11
	j	.LBB36_10
.LBB36_10:
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB36_12
.LBB36_11:
	ld	a0, -40(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB36_12
.LBB36_12:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB36_13
.LBB36_13:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end36:
	.size	fmin, .Lfunc_end36-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	1
	.type	fminf,@function
fminf:                                  # @fminf
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	lwu	a0, -24(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB37_2
	j	.LBB37_1
.LBB37_1:
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_2:
	lwu	a0, -28(s0)
	slli	a0, a0, 33
	srli	a0, a0, 33
	lui	a1, 522240
	addiw	a1, a1, 1
	blt	a0, a1, .LBB37_4
	j	.LBB37_3
.LBB37_3:
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_4:
	lwu	a0, -24(s0)
	srli	a0, a0, 31
	lwu	a1, -28(s0)
	srli	a1, a1, 31
	beq	a0, a1, .LBB37_9
	j	.LBB37_5
.LBB37_5:
	lw	a0, -24(s0)
	bgez	a0, .LBB37_7
	j	.LBB37_6
.LBB37_6:
	lw	a0, -24(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB37_8
.LBB37_7:
	lw	a0, -28(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB37_8
.LBB37_8:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_9:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__ltsf2
	bgez	a0, .LBB37_11
	j	.LBB37_10
.LBB37_10:
	lw	a0, -24(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB37_12
.LBB37_11:
	lw	a0, -28(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB37_12
.LBB37_12:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB37_13
.LBB37_13:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end37:
	.size	fminf, .Lfunc_end37-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	1
	.type	fminl,@function
fminl:                                  # @fminl
# %bb.0:
	addi	sp, sp, -128
	sd	ra, 120(sp)                     # 8-byte Folded Spill
	sd	s0, 112(sp)                     # 8-byte Folded Spill
	addi	s0, sp, 128
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
	ld	a2, -48(s0)
	ld	a0, -40(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -80(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB38_2
# %bb.1:
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
.LBB38_2:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB38_4
	j	.LBB38_3
.LBB38_3:
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB38_17
.LBB38_4:
	ld	a2, -64(s0)
	ld	a0, -56(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a0, a1
	sd	a3, -96(s0)                     # 8-byte Folded Spill
	seqz	a2, a2
	sd	a2, -88(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB38_6
# %bb.5:
	ld	a0, -96(s0)                     # 8-byte Folded Reload
	sd	a0, -88(s0)                     # 8-byte Folded Spill
.LBB38_6:
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB38_8
	j	.LBB38_7
.LBB38_7:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB38_17
.LBB38_8:
	ld	a0, -40(s0)
	srli	a0, a0, 63
	ld	a1, -56(s0)
	srli	a1, a1, 63
	beq	a0, a1, .LBB38_13
	j	.LBB38_9
.LBB38_9:
	ld	a0, -40(s0)
	bgez	a0, .LBB38_11
	j	.LBB38_10
.LBB38_10:
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB38_12
.LBB38_11:
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	sd	a0, -104(s0)                    # 8-byte Folded Spill
	j	.LBB38_12
.LBB38_12:
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB38_17
.LBB38_13:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	call	__lttf2
	bgez	a0, .LBB38_15
	j	.LBB38_14
.LBB38_14:
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB38_16
.LBB38_15:
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	sd	a1, -128(s0)                    # 8-byte Folded Spill
	sd	a0, -120(s0)                    # 8-byte Folded Spill
	j	.LBB38_16
.LBB38_16:
	ld	a1, -128(s0)                    # 8-byte Folded Reload
	ld	a0, -120(s0)                    # 8-byte Folded Reload
	sd	a1, -32(s0)
	sd	a0, -24(s0)
	j	.LBB38_17
.LBB38_17:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 120(sp)                     # 8-byte Folded Reload
	ld	s0, 112(sp)                     # 8-byte Folded Reload
	addi	sp, sp, 128
	ret
.Lfunc_end38:
	.size	fminl, .Lfunc_end38-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	1
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	sw	a0, -36(s0)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	sd	a0, -32(s0)
	j	.LBB39_1
.LBB39_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	beqz	a0, .LBB39_4
	j	.LBB39_2
.LBB39_2:                               #   in Loop: Header=BB39_1 Depth=1
	lwu	a0, -36(s0)
	andi	a1, a0, 63
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(digits)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	sb	a0, 0(a1)
	j	.LBB39_3
.LBB39_3:                               #   in Loop: Header=BB39_1 Depth=1
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	lwu	a0, -36(s0)
	srli	a0, a0, 6
	sw	a0, -36(s0)
	j	.LBB39_1
.LBB39_4:
	ld	a1, -32(s0)
	li	a0, 0
	sb	a0, 0(a1)
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi2)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end39:
	.size	l64a, .Lfunc_end39-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	1
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addiw	a0, a0, -1
	slli	a0, a0, 32
	srli	a0, a0, 32
.Lpcrel_hi3:
	auipc	a1, %pcrel_hi(seed)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi3)
	sd	a0, 0(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end40:
	.size	srand, .Lfunc_end40-srand
                                        # -- End function
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function rand
.LCPI41_0:
	.quad	6364136223846793005             # 0x5851f42d4c957f2d
	.text
	.globl	rand
	.p2align	1
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	addi	sp, sp, -16
	sd	ra, 8(sp)                       # 8-byte Folded Spill
	sd	s0, 0(sp)                       # 8-byte Folded Spill
	addi	s0, sp, 16
.Lpcrel_hi4:
	auipc	a0, %pcrel_hi(seed)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi4)
	ld	a1, 0(a0)
.Lpcrel_hi5:
	auipc	a2, %pcrel_hi(.LCPI41_0)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi5)
	ld	a2, 0(a2)
	mul	a1, a1, a2
	addi	a1, a1, 1
	sd	a1, 0(a0)
	ld	a0, 0(a0)
	srli	a0, a0, 33
	ld	ra, 8(sp)                       # 8-byte Folded Reload
	ld	s0, 0(sp)                       # 8-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end41:
	.size	rand, .Lfunc_end41-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	1
	.type	insque,@function
insque:                                 # @insque
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	bnez	a0, .LBB42_2
	j	.LBB42_1
.LBB42_1:
	ld	a1, -40(s0)
	li	a0, 0
	sd	a0, 8(a1)
	ld	a1, -40(s0)
	sd	a0, 0(a1)
	j	.LBB42_4
.LBB42_2:
	ld	a0, -48(s0)
	ld	a0, 0(a0)
	ld	a1, -40(s0)
	sd	a0, 0(a1)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a0, 8(a1)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	sd	a0, 0(a1)
	ld	a0, -40(s0)
	ld	a0, 0(a0)
	beqz	a0, .LBB42_4
	j	.LBB42_3
.LBB42_3:
	ld	a0, -40(s0)
	ld	a1, 0(a0)
	sd	a0, 8(a1)
	j	.LBB42_4
.LBB42_4:
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end42:
	.size	insque, .Lfunc_end42-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	1
	.type	remque,@function
remque:                                 # @remque
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	ld	a0, 0(a0)
	beqz	a0, .LBB43_2
	j	.LBB43_1
.LBB43_1:
	ld	a1, -32(s0)
	ld	a0, 8(a1)
	ld	a1, 0(a1)
	sd	a0, 8(a1)
	j	.LBB43_2
.LBB43_2:
	ld	a0, -32(s0)
	ld	a0, 8(a0)
	beqz	a0, .LBB43_4
	j	.LBB43_3
.LBB43_3:
	ld	a1, -32(s0)
	ld	a0, 0(a1)
	ld	a1, 8(a1)
	sd	a0, 0(a1)
	j	.LBB43_4
.LBB43_4:
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end43:
	.size	remque, .Lfunc_end43-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	1
	.type	lsearch,@function
lsearch:                                # @lsearch
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
	mv	ra, a4
	sd	ra, -104(s0)                    # 8-byte Folded Spill
	mv	ra, a0
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	ra, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	ld	a0, -40(s0)
	sd	a0, -72(s0)
	ld	a0, -48(s0)
	ld	a0, 0(a0)
	sd	a0, -80(s0)
	li	a0, 0
	sd	a0, -88(s0)
	j	.LBB44_1
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -88(s0)
	ld	a1, -80(s0)
	bgeu	a0, a1, .LBB44_6
	j	.LBB44_2
.LBB44_2:                               #   in Loop: Header=BB44_1 Depth=1
	ld	ra, -96(s0)                     # 8-byte Folded Reload
	ld	a2, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -72(s0)
	ld	a3, -88(s0)
	mul	a3, a3, ra
	add	a1, a1, a3
	jalr	a2
	bnez	a0, .LBB44_4
	j	.LBB44_3
.LBB44_3:
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB44_7
.LBB44_4:                               #   in Loop: Header=BB44_1 Depth=1
	j	.LBB44_5
.LBB44_5:                               #   in Loop: Header=BB44_1 Depth=1
	ld	a0, -88(s0)
	addi	a0, a0, 1
	sd	a0, -88(s0)
	j	.LBB44_1
.LBB44_6:
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a0, -80(s0)
	addi	a0, a0, 1
	ld	a1, -48(s0)
	sd	a0, 0(a1)
	ld	a0, -72(s0)
	ld	a1, -80(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -112(s0)                    # 8-byte Folded Spill
	ld	a1, -32(s0)
	ld	a2, -56(s0)
	call	memcpy
                                        # kill: def $x11 killed $x10
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	sd	a0, -24(s0)
	j	.LBB44_7
.LBB44_7:
	ld	a0, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end44:
	.size	lsearch, .Lfunc_end44-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	1
	.type	lfind,@function
lfind:                                  # @lfind
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
	mv	ra, a4
	sd	ra, -104(s0)                    # 8-byte Folded Spill
	mv	ra, a0
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	ra, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	sd	a0, -96(s0)                     # 8-byte Folded Spill
	ld	a0, -40(s0)
	sd	a0, -72(s0)
	ld	a0, -48(s0)
	ld	a0, 0(a0)
	sd	a0, -80(s0)
	li	a0, 0
	sd	a0, -88(s0)
	j	.LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -88(s0)
	ld	a1, -80(s0)
	bgeu	a0, a1, .LBB45_6
	j	.LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	ld	ra, -96(s0)                     # 8-byte Folded Reload
	ld	a2, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -72(s0)
	ld	a3, -88(s0)
	mul	a3, a3, ra
	add	a1, a1, a3
	jalr	a2
	bnez	a0, .LBB45_4
	j	.LBB45_3
.LBB45_3:
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB45_7
.LBB45_4:                               #   in Loop: Header=BB45_1 Depth=1
	j	.LBB45_5
.LBB45_5:                               #   in Loop: Header=BB45_1 Depth=1
	ld	a0, -88(s0)
	addi	a0, a0, 1
	sd	a0, -88(s0)
	j	.LBB45_1
.LBB45_6:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB45_7
.LBB45_7:
	ld	a0, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end45:
	.size	lfind, .Lfunc_end45-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	1
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	li	a0, 0
	bge	a0, a1, .LBB46_2
	j	.LBB46_1
.LBB46_1:
	lw	a0, -20(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB46_3
.LBB46_2:
	lw	a1, -20(s0)
	li	a0, 0
	subw	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB46_3
.LBB46_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end46:
	.size	abs, .Lfunc_end46-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	1
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	li	a0, 0
	sw	a0, -28(s0)
	sw	a0, -32(s0)
	j	.LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB47_3
	j	.LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB47_1
.LBB47_3:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB47_6
	j	.LBB47_4
.LBB47_4:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	li	a1, 45
	bne	a0, a1, .LBB47_7
	j	.LBB47_5
.LBB47_5:
	li	a0, 1
	sw	a0, -32(s0)
	j	.LBB47_6
.LBB47_6:
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB47_7
.LBB47_7:
	j	.LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB47_10
	j	.LBB47_9
.LBB47_9:                               #   in Loop: Header=BB47_8 Depth=1
	lw	a0, -28(s0)
	li	a1, 10
	mulw	a0, a0, a1
	ld	a1, -24(s0)
	addi	a2, a1, 1
	sd	a2, -24(s0)
	lbu	a1, 0(a1)
	subw	a0, a0, a1
	addiw	a0, a0, 48
	sw	a0, -28(s0)
	j	.LBB47_8
.LBB47_10:
	lw	a0, -32(s0)
	beqz	a0, .LBB47_12
	j	.LBB47_11
.LBB47_11:
	lw	a0, -28(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB47_13
.LBB47_12:
	lw	a1, -28(s0)
	li	a0, 0
	subw	a0, a0, a1
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB47_13
.LBB47_13:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end47:
	.size	atoi, .Lfunc_end47-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	1
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	li	a0, 0
	sd	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB48_3
	j	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB48_1
.LBB48_3:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB48_6
	j	.LBB48_4
.LBB48_4:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	li	a1, 45
	bne	a0, a1, .LBB48_7
	j	.LBB48_5
.LBB48_5:
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB48_6
.LBB48_6:
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB48_7
.LBB48_7:
	j	.LBB48_8
.LBB48_8:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB48_10
	j	.LBB48_9
.LBB48_9:                               #   in Loop: Header=BB48_8 Depth=1
	ld	a0, -32(s0)
	li	a1, 10
	mul	a0, a0, a1
	ld	a1, -24(s0)
	addi	a2, a1, 1
	sd	a2, -24(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	addi	a0, a0, 48
	sd	a0, -32(s0)
	j	.LBB48_8
.LBB48_10:
	lw	a0, -36(s0)
	beqz	a0, .LBB48_12
	j	.LBB48_11
.LBB48_11:
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB48_13
.LBB48_12:
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB48_13
.LBB48_13:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end48:
	.size	atol, .Lfunc_end48-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	1
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	li	a0, 0
	sd	a0, -32(s0)
	sw	a0, -36(s0)
	j	.LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB49_3
	j	.LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB49_1
.LBB49_3:
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB49_6
	j	.LBB49_4
.LBB49_4:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	li	a1, 45
	bne	a0, a1, .LBB49_7
	j	.LBB49_5
.LBB49_5:
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB49_6
.LBB49_6:
	ld	a0, -24(s0)
	addi	a0, a0, 1
	sd	a0, -24(s0)
	j	.LBB49_7
.LBB49_7:
	j	.LBB49_8
.LBB49_8:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB49_10
	j	.LBB49_9
.LBB49_9:                               #   in Loop: Header=BB49_8 Depth=1
	ld	a0, -32(s0)
	li	a1, 10
	mul	a0, a0, a1
	ld	a1, -24(s0)
	addi	a2, a1, 1
	sd	a2, -24(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	addi	a0, a0, 48
	sd	a0, -32(s0)
	j	.LBB49_8
.LBB49_10:
	lw	a0, -36(s0)
	beqz	a0, .LBB49_12
	j	.LBB49_11
.LBB49_11:
	ld	a0, -32(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB49_13
.LBB49_12:
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB49_13
.LBB49_13:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end49:
	.size	atoll, .Lfunc_end49-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	1
	.type	bsearch,@function
bsearch:                                # @bsearch
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
	mv	ra, a4
	sd	ra, -88(s0)                     # 8-byte Folded Spill
	mv	ra, a0
	ld	a0, -88(s0)                     # 8-byte Folded Reload
	sd	ra, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a0, -64(s0)
	j	.LBB50_1
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	beqz	a0, .LBB50_9
	j	.LBB50_2
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	ld	a2, -48(s0)
	srli	a2, a2, 1
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -72(s0)
	ld	a2, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -72(s0)
	jalr	a2
	sw	a0, -76(s0)
	lw	a0, -76(s0)
	bgez	a0, .LBB50_4
	j	.LBB50_3
.LBB50_3:                               #   in Loop: Header=BB50_1 Depth=1
	ld	a0, -48(s0)
	srli	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB50_8
.LBB50_4:                               #   in Loop: Header=BB50_1 Depth=1
	lw	a1, -76(s0)
	li	a0, 0
	bge	a0, a1, .LBB50_6
	j	.LBB50_5
.LBB50_5:                               #   in Loop: Header=BB50_1 Depth=1
	ld	a0, -72(s0)
	ld	a1, -56(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	ld	a1, -48(s0)
	srli	a0, a1, 1
	not	a0, a0
	add	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB50_7
.LBB50_6:
	ld	a0, -72(s0)
	sd	a0, -24(s0)
	j	.LBB50_10
.LBB50_7:                               #   in Loop: Header=BB50_1 Depth=1
	j	.LBB50_8
.LBB50_8:                               #   in Loop: Header=BB50_1 Depth=1
	j	.LBB50_1
.LBB50_9:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB50_10
.LBB50_10:
	ld	a0, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end50:
	.size	bsearch, .Lfunc_end50-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	1
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
	mv	ra, a5
	sd	ra, -104(s0)                    # 8-byte Folded Spill
	mv	ra, a4
	sd	ra, -112(s0)                    # 8-byte Folded Spill
	mv	ra, a1
	ld	a1, -112(s0)                    # 8-byte Folded Reload
	sd	a0, -32(s0)
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	sd	ra, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	sd	a1, -64(s0)
	sd	a0, -72(s0)
	ld	a0, -40(s0)
	sd	a0, -80(s0)
	ld	a0, -48(s0)
	sw	a0, -84(s0)
	j	.LBB51_1
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -84(s0)
	beqz	a0, .LBB51_8
	j	.LBB51_2
.LBB51_2:                               #   in Loop: Header=BB51_1 Depth=1
	ld	a0, -80(s0)
	lw	a1, -84(s0)
	srai	a1, a1, 1
	ld	a2, -56(s0)
	mul	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -96(s0)
	ld	a3, -64(s0)
	ld	a0, -32(s0)
	ld	a1, -96(s0)
	ld	a2, -72(s0)
	jalr	a3
	sw	a0, -88(s0)
	lw	a0, -88(s0)
	bnez	a0, .LBB51_4
	j	.LBB51_3
.LBB51_3:
	ld	a0, -96(s0)
	sd	a0, -24(s0)
	j	.LBB51_9
.LBB51_4:                               #   in Loop: Header=BB51_1 Depth=1
	lw	a1, -88(s0)
	li	a0, 0
	bge	a0, a1, .LBB51_6
	j	.LBB51_5
.LBB51_5:                               #   in Loop: Header=BB51_1 Depth=1
	ld	a0, -96(s0)
	ld	a1, -56(s0)
	add	a0, a0, a1
	sd	a0, -80(s0)
	lw	a0, -84(s0)
	addiw	a0, a0, -1
	sw	a0, -84(s0)
	j	.LBB51_6
.LBB51_6:                               #   in Loop: Header=BB51_1 Depth=1
	j	.LBB51_7
.LBB51_7:                               #   in Loop: Header=BB51_1 Depth=1
	lw	a0, -84(s0)
	srli	a0, a0, 1
	sw	a0, -84(s0)
	j	.LBB51_1
.LBB51_8:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB51_9
.LBB51_9:
	ld	a0, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end51:
	.size	bsearch_r, .Lfunc_end51-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	1
	.type	div,@function
div:                                    # @div
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -28(s0)
	sw	a1, -32(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	divw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	remw	a0, a0, a1
	sw	a0, -20(s0)
	lwu	a0, -20(s0)
	slli	a0, a0, 32
	lwu	a1, -24(s0)
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end52:
	.size	div, .Lfunc_end52-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	1
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a1, -24(s0)
	li	a0, 0
	bge	a0, a1, .LBB53_2
	j	.LBB53_1
.LBB53_1:
	ld	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB53_3
.LBB53_2:
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB53_3
.LBB53_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end53:
	.size	imaxabs, .Lfunc_end53-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	1
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -40(s0)
	sd	a1, -48(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	div	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	rem	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end54:
	.size	imaxdiv, .Lfunc_end54-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	1
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a1, -24(s0)
	li	a0, 0
	bge	a0, a1, .LBB55_2
	j	.LBB55_1
.LBB55_1:
	ld	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB55_3
.LBB55_2:
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB55_3
.LBB55_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end55:
	.size	labs, .Lfunc_end55-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	1
	.type	ldiv,@function
ldiv:                                   # @ldiv
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -40(s0)
	sd	a1, -48(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	div	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	rem	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end56:
	.size	ldiv, .Lfunc_end56-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	1
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a1, -24(s0)
	li	a0, 0
	bge	a0, a1, .LBB57_2
	j	.LBB57_1
.LBB57_1:
	ld	a0, -24(s0)
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB57_3
.LBB57_2:
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB57_3
.LBB57_3:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end57:
	.size	llabs, .Lfunc_end57-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	1
	.type	lldiv,@function
lldiv:                                  # @lldiv
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -40(s0)
	sd	a1, -48(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	div	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	rem	a0, a0, a1
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end58:
	.size	lldiv, .Lfunc_end58-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	1
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	j	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB59_3
	j	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB59_3
.LBB59_3:                               #   in Loop: Header=BB59_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB59_6
	j	.LBB59_4
.LBB59_4:                               #   in Loop: Header=BB59_1 Depth=1
	j	.LBB59_5
.LBB59_5:                               #   in Loop: Header=BB59_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	j	.LBB59_1
.LBB59_6:
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB59_8
	j	.LBB59_7
.LBB59_7:
	ld	a0, -24(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB59_9
.LBB59_8:
	li	a0, 0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB59_9
.LBB59_9:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end59:
	.size	wcschr, .Lfunc_end59-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	1
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	j	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB60_4
	j	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB60_4
	j	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	snez	a0, a0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB60_4
.LBB60_4:                               #   in Loop: Header=BB60_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB60_7
	j	.LBB60_5
.LBB60_5:                               #   in Loop: Header=BB60_1 Depth=1
	j	.LBB60_6
.LBB60_6:                               #   in Loop: Header=BB60_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 4
	sd	a0, -32(s0)
	j	.LBB60_1
.LBB60_7:
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB60_9
	j	.LBB60_8
.LBB60_8:
	li	a0, -1
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB60_10
.LBB60_9:
	ld	a0, -24(s0)
	lw	a1, 0(a0)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB60_10
.LBB60_10:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end60:
	.size	wcscmp, .Lfunc_end60-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	1
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	j	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -32(s0)
	addi	a1, a0, 4
	sd	a1, -32(s0)
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	addi	a2, a1, 4
	sd	a2, -24(s0)
	sw	a0, 0(a1)
	beqz	a0, .LBB61_3
	j	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	j	.LBB61_1
.LBB61_3:
	ld	a0, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end61:
	.size	wcscpy, .Lfunc_end61-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	1
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	j	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB62_4
	j	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	j	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	j	.LBB62_1
.LBB62_4:
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	sub	a0, a0, a1
	srai	a0, a0, 2
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end62:
	.size	wcslen, .Lfunc_end62-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	1
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	j	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB63_5
	j	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bne	a0, a1, .LBB63_5
	j	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB63_5
	j	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	snez	a0, a0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB63_8
	j	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	j	.LBB63_7
.LBB63_7:                               #   in Loop: Header=BB63_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 4
	sd	a0, -32(s0)
	j	.LBB63_1
.LBB63_8:
	ld	a0, -40(s0)
	beqz	a0, .LBB63_13
	j	.LBB63_9
.LBB63_9:
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB63_11
	j	.LBB63_10
.LBB63_10:
	li	a0, -1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB63_12
.LBB63_11:
	ld	a0, -24(s0)
	lw	a1, 0(a0)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB63_12
.LBB63_12:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB63_14
.LBB63_13:
	li	a0, 0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB63_14
.LBB63_14:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end63:
	.size	wcsncmp, .Lfunc_end63-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	1
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
	j	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB64_3
	j	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	lw	a1, -28(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB64_3
.LBB64_3:                               #   in Loop: Header=BB64_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB64_6
	j	.LBB64_4
.LBB64_4:                               #   in Loop: Header=BB64_1 Depth=1
	j	.LBB64_5
.LBB64_5:                               #   in Loop: Header=BB64_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	j	.LBB64_1
.LBB64_6:
	ld	a0, -40(s0)
	beqz	a0, .LBB64_8
	j	.LBB64_7
.LBB64_7:
	ld	a0, -24(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB64_9
.LBB64_8:
	li	a0, 0
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB64_9
.LBB64_9:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end64:
	.size	wmemchr, .Lfunc_end64-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	1
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	j	.LBB65_1
.LBB65_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB65_3
	j	.LBB65_2
.LBB65_2:                               #   in Loop: Header=BB65_1 Depth=1
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	xor	a0, a0, a1
	seqz	a0, a0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB65_3
.LBB65_3:                               #   in Loop: Header=BB65_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB65_6
	j	.LBB65_4
.LBB65_4:                               #   in Loop: Header=BB65_1 Depth=1
	j	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	addi	a0, a0, 4
	sd	a0, -24(s0)
	ld	a0, -32(s0)
	addi	a0, a0, 4
	sd	a0, -32(s0)
	j	.LBB65_1
.LBB65_6:
	ld	a0, -40(s0)
	beqz	a0, .LBB65_11
	j	.LBB65_7
.LBB65_7:
	ld	a0, -24(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB65_9
	j	.LBB65_8
.LBB65_8:
	li	a0, -1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB65_10
.LBB65_9:
	ld	a0, -24(s0)
	lw	a1, 0(a0)
	ld	a0, -32(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB65_10
.LBB65_10:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB65_12
.LBB65_11:
	li	a0, 0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB65_12
.LBB65_12:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end65:
	.size	wmemcmp, .Lfunc_end65-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	1
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	addi	a1, a0, -1
	sd	a1, -40(s0)
	beqz	a0, .LBB66_3
	j	.LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
	ld	a0, -32(s0)
	addi	a1, a0, 4
	sd	a1, -32(s0)
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	addi	a2, a1, 4
	sd	a2, -24(s0)
	sw	a0, 0(a1)
	j	.LBB66_1
.LBB66_3:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end66:
	.size	wmemcpy, .Lfunc_end66-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	1
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	bne	a0, a1, .LBB67_2
	j	.LBB67_1
.LBB67_1:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB67_12
.LBB67_2:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	sub	a0, a0, a1
	ld	a1, -48(s0)
	slli	a1, a1, 2
	bgeu	a0, a1, .LBB67_7
	j	.LBB67_3
.LBB67_3:
	j	.LBB67_4
.LBB67_4:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	beqz	a0, .LBB67_6
	j	.LBB67_5
.LBB67_5:                               #   in Loop: Header=BB67_4 Depth=1
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB67_4
.LBB67_6:
	j	.LBB67_11
.LBB67_7:
	j	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	beqz	a0, .LBB67_10
	j	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	ld	a0, -40(s0)
	addi	a1, a0, 4
	sd	a1, -40(s0)
	lw	a0, 0(a0)
	ld	a1, -32(s0)
	addi	a2, a1, 4
	sd	a2, -32(s0)
	sw	a0, 0(a1)
	j	.LBB67_8
.LBB67_10:
	j	.LBB67_11
.LBB67_11:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB67_12
.LBB67_12:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end67:
	.size	wmemmove, .Lfunc_end67-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	1
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x13 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB68_1
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	addi	a1, a0, -1
	sd	a1, -40(s0)
	beqz	a0, .LBB68_3
	j	.LBB68_2
.LBB68_2:                               #   in Loop: Header=BB68_1 Depth=1
	lw	a0, -28(s0)
	ld	a1, -24(s0)
	addi	a2, a1, 4
	sd	a2, -24(s0)
	sw	a0, 0(a1)
	j	.LBB68_1
.LBB68_3:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end68:
	.size	wmemset, .Lfunc_end68-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	1
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	ld	a0, -32(s0)
	sd	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	bgeu	a0, a1, .LBB69_6
	j	.LBB69_1
.LBB69_1:
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a0, -56(s0)
	add	a0, a0, a1
	sd	a0, -56(s0)
	j	.LBB69_2
.LBB69_2:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB69_5
	j	.LBB69_3
.LBB69_3:                               #   in Loop: Header=BB69_2 Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, -1
	sd	a1, -48(s0)
	lbu	a0, -1(a0)
	ld	a1, -56(s0)
	addi	a2, a1, -1
	sd	a2, -56(s0)
	sb	a0, -1(a1)
	j	.LBB69_4
.LBB69_4:                               #   in Loop: Header=BB69_2 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB69_2
.LBB69_5:
	j	.LBB69_13
.LBB69_6:
	ld	a0, -48(s0)
	ld	a1, -56(s0)
	beq	a0, a1, .LBB69_12
	j	.LBB69_7
.LBB69_7:
	j	.LBB69_8
.LBB69_8:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB69_11
	j	.LBB69_9
.LBB69_9:                               #   in Loop: Header=BB69_8 Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, 1
	sd	a1, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	addi	a2, a1, 1
	sd	a2, -56(s0)
	sb	a0, 0(a1)
	j	.LBB69_10
.LBB69_10:                              #   in Loop: Header=BB69_8 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB69_8
.LBB69_11:
	j	.LBB69_12
.LBB69_12:
	j	.LBB69_13
.LBB69_13:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end69:
	.size	bcopy, .Lfunc_end69-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	1
	.type	rotl64,@function
rotl64:                                 # @rotl64
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	ld	a1, -24(s0)
	lwu	a2, -28(s0)
	sll	a0, a1, a2
	negw	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end70:
	.size	rotl64, .Lfunc_end70-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	1
	.type	rotr64,@function
rotr64:                                 # @rotr64
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	ld	a1, -24(s0)
	lwu	a2, -28(s0)
	srl	a0, a1, a2
	negw	a2, a2
	sll	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end71:
	.size	rotr64, .Lfunc_end71-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	1
	.type	rotl32,@function
rotl32:                                 # @rotl32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a1, -20(s0)
	lwu	a2, -24(s0)
	sllw	a0, a1, a2
	negw	a2, a2
	srlw	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end72:
	.size	rotl32, .Lfunc_end72-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	1
	.type	rotr32,@function
rotr32:                                 # @rotr32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a1, -20(s0)
	lwu	a2, -24(s0)
	srlw	a0, a1, a2
	negw	a2, a2
	sllw	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end73:
	.size	rotr32, .Lfunc_end73-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	1
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	ld	a1, -24(s0)
	lw	a2, -28(s0)
	sll	a0, a1, a2
	negw	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end74:
	.size	rotl_sz, .Lfunc_end74-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	1
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	ld	a1, -24(s0)
	lw	a2, -28(s0)
	srl	a0, a1, a2
	negw	a2, a2
	sll	a1, a1, a2
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end75:
	.size	rotr_sz, .Lfunc_end75-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	1
	.type	rotl16,@function
rotl16:                                 # @rotl16
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sh	a0, -18(s0)
	sw	a1, -24(s0)
	lhu	a1, -18(s0)
	lwu	a3, -24(s0)
	sllw	a0, a1, a3
	li	a2, 16
	subw	a2, a2, a3
	srlw	a1, a1, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srli	a0, a0, 48
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end76:
	.size	rotl16, .Lfunc_end76-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	1
	.type	rotr16,@function
rotr16:                                 # @rotr16
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sh	a0, -18(s0)
	sw	a1, -24(s0)
	lhu	a1, -18(s0)
	lwu	a3, -24(s0)
	srlw	a0, a1, a3
	li	a2, 16
	subw	a2, a2, a3
	sllw	a1, a1, a2
	or	a0, a0, a1
	slli	a0, a0, 48
	srli	a0, a0, 48
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end77:
	.size	rotr16, .Lfunc_end77-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	1
	.type	rotl8,@function
rotl8:                                  # @rotl8
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sb	a0, -17(s0)
	sw	a1, -24(s0)
	lbu	a1, -17(s0)
	lwu	a3, -24(s0)
	sllw	a0, a1, a3
	li	a2, 8
	subw	a2, a2, a3
	srlw	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end78:
	.size	rotl8, .Lfunc_end78-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	1
	.type	rotr8,@function
rotr8:                                  # @rotr8
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sb	a0, -17(s0)
	sw	a1, -24(s0)
	lbu	a1, -17(s0)
	lwu	a3, -24(s0)
	srlw	a0, a1, a3
	li	a2, 8
	subw	a2, a2, a3
	sllw	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end79:
	.size	rotr8, .Lfunc_end79-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	1
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sh	a0, -18(s0)
	li	a0, 255
	sh	a0, -20(s0)
	lhu	a1, -18(s0)
	lhu	a2, -20(s0)
	slliw	a0, a2, 8
	and	a0, a0, a1
	srli	a0, a0, 8
	and	a1, a1, a2
	slliw	a1, a1, 8
	or	a0, a0, a1
	slli	a0, a0, 48
	srli	a0, a0, 48
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end80:
	.size	bswap_16, .Lfunc_end80-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	1
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	li	a0, 255
	sw	a0, -24(s0)
	lw	a1, -20(s0)
	lw	a2, -24(s0)
	slliw	a0, a2, 24
	and	a0, a0, a1
	srliw	a0, a0, 24
	slliw	a3, a2, 16
	and	ra, a1, a3
	srliw	ra, ra, 8
	or	a0, a0, ra
	slliw	ra, a1, 8
	and	a3, a3, ra
	sext.w	a3, a3
	or	a0, a0, a3
	and	a1, a1, a2
	slliw	a1, a1, 24
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end81:
	.size	bswap_32, .Lfunc_end81-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	1
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -24(s0)
	li	a0, 255
	sd	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	ld	a2, -32(s0)
	slli	a0, a2, 56
	and	a0, a0, a1
	srli	a0, a0, 56
	slli	a3, a2, 48
	and	ra, a1, a3
	srli	ra, ra, 40
	or	a0, a0, ra
	slli	ra, a2, 40
	and	a1, a1, ra
	srli	a1, a1, 24
	or	a0, a0, a1
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	slli	a0, a2, 32
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	and	a1, a1, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	srli	a1, a1, 8
	or	a0, a0, a1
	ld	a1, -64(s0)                     # 8-byte Folded Reload
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	slli	a0, a0, 8
	and	a1, a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	or	a0, a0, a1
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	slli	a0, a1, 24
	and	ra, ra, a0
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	or	a0, a0, ra
	slli	ra, a1, 40
	and	a3, a3, ra
	or	a0, a0, a3
	and	a1, a1, a2
	slli	a1, a1, 56
	or	a0, a0, a1
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end82:
	.size	bswap_64, .Lfunc_end82-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	1
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -24(s0)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB83_1
.LBB83_1:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -28(s0)
	li	a0, 31
	bltu	a0, a1, .LBB83_6
	j	.LBB83_2
.LBB83_2:                               #   in Loop: Header=BB83_1 Depth=1
	lw	a0, -24(s0)
	lwu	a1, -28(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB83_4
	j	.LBB83_3
.LBB83_3:
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB83_7
.LBB83_4:                               #   in Loop: Header=BB83_1 Depth=1
	j	.LBB83_5
.LBB83_5:                               #   in Loop: Header=BB83_1 Depth=1
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB83_1
.LBB83_6:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB83_7
.LBB83_7:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end83:
	.size	ffs, .Lfunc_end83-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	1
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB84_2
	j	.LBB84_1
.LBB84_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB84_7
.LBB84_2:
	li	a0, 1
	sw	a0, -28(s0)
	j	.LBB84_3
.LBB84_3:                               # =>This Inner Loop Header: Depth=1
	lbu	a0, -24(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB84_6
	j	.LBB84_4
.LBB84_4:                               #   in Loop: Header=BB84_3 Depth=1
	lw	a0, -24(s0)
	srli	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB84_5
.LBB84_5:                               #   in Loop: Header=BB84_3 Depth=1
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB84_3
.LBB84_6:
	lw	a0, -28(s0)
	sw	a0, -20(s0)
	j	.LBB84_7
.LBB84_7:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end84:
	.size	libiberty_ffs, .Lfunc_end84-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	1
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	lui	a1, 1046528
	addiw	a1, a1, -1
	call	__ltsf2
	li	a1, 1
	sd	a1, -32(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB85_2
	j	.LBB85_1
.LBB85_1:
	lw	a0, -20(s0)
	lui	a1, 522240
	addiw	a1, a1, -1
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	slt	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB85_2
.LBB85_2:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end85:
	.size	gl_isinff, .Lfunc_end85-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	1
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	li	a1, -1
	slli	a1, a1, 52
	addi	a1, a1, -1
	call	__ltdf2
	li	a1, 1
	sd	a1, -32(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB86_2
	j	.LBB86_1
.LBB86_1:
	ld	a0, -24(s0)
	li	a1, 2047
	slli	a1, a1, 52
	addi	a1, a1, -1
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	slt	a0, a0, a1
	sd	a0, -32(s0)                     # 8-byte Folded Spill
	j	.LBB86_2
.LBB86_2:
	ld	a0, -32(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end86:
	.size	gl_isinfd, .Lfunc_end86-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	1
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	li	a2, -1
	slli	a3, a2, 48
	addi	a3, a3, -1
	call	__lttf2
	li	a1, 1
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB87_2
	j	.LBB87_1
.LBB87_1:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	lui	a2, 32767
	slli	a2, a2, 36
	addi	a3, a2, -1
	li	a2, -1
	call	__gttf2
	mv	a1, a0
	li	a0, 0
	slt	a0, a0, a1
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB87_2
.LBB87_2:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end87:
	.size	gl_isinfl, .Lfunc_end87-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	1
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	lw	a0, -28(s0)
	call	__floatsidf
	call	__extenddftf2
	mv	a2, a1
	ld	a1, -24(s0)
	sd	a2, 8(a1)
	sd	a0, 0(a1)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end88:
	.size	_Qp_itoq, .Lfunc_end88-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	1
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lwu	a0, -20(s0)
	slli	a0, a0, 33
	srli	a1, a0, 33
	lui	a0, 522240
	blt	a0, a1, .LBB89_11
	j	.LBB89_1
.LBB89_1:
	lw	a1, -20(s0)
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	mv	a0, a1
	call	__addsf3
	ld	a1, -40(s0)                     # 8-byte Folded Reload
	call	__eqsf2
	beqz	a0, .LBB89_11
	j	.LBB89_2
.LBB89_2:
	lw	a0, -24(s0)
	lui	a1, 262144
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	lui	a1, 258048
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB89_4
# %bb.3:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -48(s0)                     # 8-byte Folded Spill
.LBB89_4:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	sw	a0, -28(s0)
	j	.LBB89_5
.LBB89_5:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	srliw	a1, a0, 31
	addw	a1, a1, a0
	andi	a1, a1, -2
	subw	a0, a0, a1
	beqz	a0, .LBB89_7
	j	.LBB89_6
.LBB89_6:                               #   in Loop: Header=BB89_5 Depth=1
	lw	a1, -28(s0)
	lw	a0, -20(s0)
	call	__mulsf3
	sw	a0, -20(s0)
	j	.LBB89_7
.LBB89_7:                               #   in Loop: Header=BB89_5 Depth=1
	lw	a0, -24(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB89_9
	j	.LBB89_8
.LBB89_8:
	j	.LBB89_10
.LBB89_9:                               #   in Loop: Header=BB89_5 Depth=1
	lw	a1, -28(s0)
	mv	a0, a1
	call	__mulsf3
	sw	a0, -28(s0)
	j	.LBB89_5
.LBB89_10:
	j	.LBB89_11
.LBB89_11:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end89:
	.size	ldexpf, .Lfunc_end89-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	1
	.type	ldexp,@function
ldexp:                                  # @ldexp
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	ld	a0, -24(s0)
	slli	a0, a0, 1
	srli	a1, a0, 1
	li	a0, 2047
	slli	a0, a0, 52
	blt	a0, a1, .LBB90_11
	j	.LBB90_1
.LBB90_1:
	ld	a1, -24(s0)
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	mv	a0, a1
	call	__adddf3
	ld	a1, -48(s0)                     # 8-byte Folded Reload
	call	__eqdf2
	beqz	a0, .LBB90_11
	j	.LBB90_2
.LBB90_2:
	lw	a0, -28(s0)
	li	a1, 1
	slli	a1, a1, 62
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	li	a1, 511
	slli	a1, a1, 53
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	bltz	a0, .LBB90_4
# %bb.3:
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	sd	a0, -56(s0)                     # 8-byte Folded Spill
.LBB90_4:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sd	a0, -40(s0)
	j	.LBB90_5
.LBB90_5:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	srliw	a1, a0, 31
	addw	a1, a1, a0
	andi	a1, a1, -2
	subw	a0, a0, a1
	beqz	a0, .LBB90_7
	j	.LBB90_6
.LBB90_6:                               #   in Loop: Header=BB90_5 Depth=1
	ld	a1, -40(s0)
	ld	a0, -24(s0)
	call	__muldf3
	sd	a0, -24(s0)
	j	.LBB90_7
.LBB90_7:                               #   in Loop: Header=BB90_5 Depth=1
	lw	a0, -28(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	bnez	a0, .LBB90_9
	j	.LBB90_8
.LBB90_8:
	j	.LBB90_10
.LBB90_9:                               #   in Loop: Header=BB90_5 Depth=1
	ld	a1, -40(s0)
	mv	a0, a1
	call	__muldf3
	sd	a0, -40(s0)
	j	.LBB90_5
.LBB90_10:
	j	.LBB90_11
.LBB90_11:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end90:
	.size	ldexp, .Lfunc_end90-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	1
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
# %bb.0:
	addi	sp, sp, -112
	sd	ra, 104(sp)                     # 8-byte Folded Spill
	sd	s0, 96(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 112
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	sw	a2, -36(s0)
	ld	a2, -32(s0)
	ld	a0, -24(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 32767
	slli	a1, a1, 36
	slt	a3, a1, a0
	sd	a3, -80(s0)                     # 8-byte Folded Spill
	snez	a2, a2
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	beq	a0, a1, .LBB91_2
# %bb.1:
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	sd	a0, -72(s0)                     # 8-byte Folded Spill
.LBB91_2:
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	bnez	a0, .LBB91_13
	j	.LBB91_3
.LBB91_3:
	ld	a2, -32(s0)
	sd	a2, -96(s0)                     # 8-byte Folded Spill
	ld	a3, -24(s0)
	sd	a3, -88(s0)                     # 8-byte Folded Spill
	mv	a0, a2
	mv	a1, a3
	call	__addtf3
	ld	a2, -96(s0)                     # 8-byte Folded Reload
	ld	a3, -88(s0)                     # 8-byte Folded Reload
	call	__eqtf2
	beqz	a0, .LBB91_13
	j	.LBB91_4
.LBB91_4:
	lw	a0, -36(s0)
	li	a1, 1
	slli	a1, a1, 62
	sd	a1, -112(s0)                    # 8-byte Folded Spill
	lui	a1, 8191
	slli	a1, a1, 37
	sd	a1, -104(s0)                    # 8-byte Folded Spill
	bltz	a0, .LBB91_6
# %bb.5:
	ld	a0, -112(s0)                    # 8-byte Folded Reload
	sd	a0, -104(s0)                    # 8-byte Folded Spill
.LBB91_6:
	ld	a0, -104(s0)                    # 8-byte Folded Reload
	li	a1, 0
	sd	a1, -64(s0)
	sd	a0, -56(s0)
	j	.LBB91_7
.LBB91_7:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	srliw	a1, a0, 31
	addw	a1, a1, a0
	andi	a1, a1, -2
	subw	a0, a0, a1
	beqz	a0, .LBB91_9
	j	.LBB91_8
.LBB91_8:                               #   in Loop: Header=BB91_7 Depth=1
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	call	__multf3
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB91_9
.LBB91_9:                               #   in Loop: Header=BB91_7 Depth=1
	lw	a0, -36(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	bnez	a0, .LBB91_11
	j	.LBB91_10
.LBB91_10:
	j	.LBB91_12
.LBB91_11:                              #   in Loop: Header=BB91_7 Depth=1
	ld	a2, -64(s0)
	ld	a3, -56(s0)
	mv	a0, a2
	mv	a1, a3
	call	__multf3
	sd	a1, -56(s0)
	sd	a0, -64(s0)
	j	.LBB91_7
.LBB91_12:
	j	.LBB91_13
.LBB91_13:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 104(sp)                     # 8-byte Folded Reload
	ld	s0, 96(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end91:
	.size	ldexpl, .Lfunc_end91-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	1
	.type	memxor,@function
memxor:                                 # @memxor
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	j	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	beqz	a0, .LBB92_4
	j	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	ld	a0, -48(s0)
	addi	a1, a0, 1
	sd	a1, -48(s0)
	lbu	a2, 0(a0)
	ld	a1, -56(s0)
	addi	a0, a1, 1
	sd	a0, -56(s0)
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB92_1
.LBB92_4:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end92:
	.size	memxor, .Lfunc_end92-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	1
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	call	strlen
	mv	a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	add	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB93_1
.LBB93_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -64(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB93_3
	j	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	sb	a0, 0(a1)
	snez	a0, a0
	sd	a0, -64(s0)                     # 8-byte Folded Spill
	j	.LBB93_3
.LBB93_3:                               #   in Loop: Header=BB93_1 Depth=1
	ld	a0, -64(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB93_6
	j	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_1 Depth=1
	j	.LBB93_5
.LBB93_5:                               #   in Loop: Header=BB93_1 Depth=1
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	addi	a0, a0, -1
	sd	a0, -40(s0)
	j	.LBB93_1
.LBB93_6:
	ld	a0, -40(s0)
	bnez	a0, .LBB93_8
	j	.LBB93_7
.LBB93_7:
	ld	a1, -48(s0)
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB93_8
.LBB93_8:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end93:
	.size	strncat, .Lfunc_end93-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	1
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 0
	sd	a0, -40(s0)
	j	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	li	a2, 0
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB94_3
	j	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	ld	a0, -24(s0)
	ld	a1, -40(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a0, a0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB94_6
	j	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	j	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_1 Depth=1
	ld	a0, -40(s0)
	addi	a0, a0, 1
	sd	a0, -40(s0)
	j	.LBB94_1
.LBB94_6:
	ld	a0, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end94:
	.size	strnlen, .Lfunc_end94-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	1
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	j	.LBB95_1
.LBB95_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB95_3 Depth 2
	ld	a0, -32(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB95_8
	j	.LBB95_2
.LBB95_2:                               #   in Loop: Header=BB95_1 Depth=1
	ld	a0, -40(s0)
	sd	a0, -48(s0)
	j	.LBB95_3
.LBB95_3:                               #   Parent Loop BB95_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld	a0, -48(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB95_7
	j	.LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=2
	ld	a0, -48(s0)
	addi	a1, a0, 1
	sd	a1, -48(s0)
	lbu	a0, 0(a0)
	ld	a1, -32(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB95_6
	j	.LBB95_5
.LBB95_5:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=2
	j	.LBB95_3
.LBB95_7:                               #   in Loop: Header=BB95_1 Depth=1
	ld	a0, -32(s0)
	addi	a0, a0, 1
	sd	a0, -32(s0)
	j	.LBB95_1
.LBB95_8:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB95_9
.LBB95_9:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end95:
	.size	strpbrk, .Lfunc_end95-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	1
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	li	a0, 0
	sd	a0, -40(s0)
	j	.LBB96_1
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	bne	a0, a1, .LBB96_3
	j	.LBB96_2
.LBB96_2:                               #   in Loop: Header=BB96_1 Depth=1
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	j	.LBB96_3
.LBB96_3:                               #   in Loop: Header=BB96_1 Depth=1
	j	.LBB96_4
.LBB96_4:                               #   in Loop: Header=BB96_1 Depth=1
	ld	a0, -24(s0)
	addi	a1, a0, 1
	sd	a1, -24(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB96_1
	j	.LBB96_5
.LBB96_5:
	ld	a0, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end96:
	.size	strrchr, .Lfunc_end96-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	1
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	call	strlen
	sd	a0, -56(s0)
	ld	a0, -56(s0)
	bnez	a0, .LBB97_2
	j	.LBB97_1
.LBB97_1:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB97_9
.LBB97_2:
	j	.LBB97_3
.LBB97_3:                               # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	lbu	a1, 0(a1)
	call	strchr
	sd	a0, -48(s0)
	beqz	a0, .LBB97_8
	j	.LBB97_4
.LBB97_4:                               #   in Loop: Header=BB97_3 Depth=1
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	a2, -56(s0)
	call	strncmp
	bnez	a0, .LBB97_6
	j	.LBB97_5
.LBB97_5:
	ld	a0, -48(s0)
	sd	a0, -24(s0)
	j	.LBB97_9
.LBB97_6:                               #   in Loop: Header=BB97_3 Depth=1
	j	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_3 Depth=1
	ld	a0, -48(s0)
	addi	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB97_3
.LBB97_8:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB97_9
.LBB97_9:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end97:
	.size	strstr, .Lfunc_end97-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	1
	.type	copysign,@function
copysign:                               # @copysign
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	li	a1, 0
	call	__ltdf2
	bgez	a0, .LBB98_2
	j	.LBB98_1
.LBB98_1:
	ld	a0, -40(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	call	__gtdf2
	mv	a1, a0
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	blt	a0, a1, .LBB98_4
	j	.LBB98_2
.LBB98_2:
	ld	a0, -32(s0)
	li	a1, 0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	call	__gtdf2
	mv	a1, a0
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	bge	a0, a1, .LBB98_5
	j	.LBB98_3
.LBB98_3:
	ld	a0, -40(s0)
	li	a1, 0
	call	__ltdf2
	bgez	a0, .LBB98_5
	j	.LBB98_4
.LBB98_4:
	ld	a0, -32(s0)
	li	a1, -1
	slli	a1, a1, 63
	xor	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB98_6
.LBB98_5:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB98_6
.LBB98_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end98:
	.size	copysign, .Lfunc_end98-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	1
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sd	a2, -48(s0)
	sd	a3, -56(s0)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	add	a0, a0, a1
	ld	a1, -56(s0)
	sub	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -56(s0)
	bnez	a0, .LBB99_2
	j	.LBB99_1
.LBB99_1:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB99_12
.LBB99_2:
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	bgeu	a0, a1, .LBB99_4
	j	.LBB99_3
.LBB99_3:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB99_12
.LBB99_4:
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	j	.LBB99_5
.LBB99_5:                               # =>This Inner Loop Header: Depth=1
	ld	a1, -64(s0)
	ld	a0, -72(s0)
	bltu	a0, a1, .LBB99_11
	j	.LBB99_6
.LBB99_6:                               #   in Loop: Header=BB99_5 Depth=1
	ld	a0, -64(s0)
	lbu	a0, 0(a0)
	ld	a1, -48(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB99_9
	j	.LBB99_7
.LBB99_7:                               #   in Loop: Header=BB99_5 Depth=1
	ld	a0, -64(s0)
	addi	a0, a0, 1
	ld	a1, -48(s0)
	addi	a1, a1, 1
	ld	a2, -56(s0)
	addi	a2, a2, -1
	call	memcmp
	bnez	a0, .LBB99_9
	j	.LBB99_8
.LBB99_8:
	ld	a0, -64(s0)
	sd	a0, -24(s0)
	j	.LBB99_12
.LBB99_9:                               #   in Loop: Header=BB99_5 Depth=1
	j	.LBB99_10
.LBB99_10:                              #   in Loop: Header=BB99_5 Depth=1
	ld	a0, -64(s0)
	addi	a0, a0, 1
	sd	a0, -64(s0)
	j	.LBB99_5
.LBB99_11:
	li	a0, 0
	sd	a0, -24(s0)
	j	.LBB99_12
.LBB99_12:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end99:
	.size	memmem, .Lfunc_end99-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	1
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sd	a2, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	ld	a1, -32(s0)
	ld	a2, -40(s0)
	call	memcpy
                                        # kill: def $x11 killed $x10
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	ld	a1, -40(s0)
	add	a0, a0, a1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end100:
	.size	mempcpy, .Lfunc_end100-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	1
	.type	frexp,@function
frexp:                                  # @frexp
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x10
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a1, 0
	sw	a1, -40(s0)
	sw	a1, -36(s0)
	ld	a0, -24(s0)
	call	__ltdf2
	bgez	a0, .LBB101_2
	j	.LBB101_1
.LBB101_1:
	ld	a0, -24(s0)
	li	a1, -1
	slli	a1, a1, 63
	xor	a0, a0, a1
	sd	a0, -24(s0)
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB101_2
.LBB101_2:
	ld	a0, -24(s0)
	li	a1, 1023
	slli	a1, a1, 52
	call	__gedf2
	bltz	a0, .LBB101_7
	j	.LBB101_3
.LBB101_3:
	j	.LBB101_4
.LBB101_4:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	li	a1, 1023
	slli	a1, a1, 52
	call	__gedf2
	bltz	a0, .LBB101_6
	j	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_4 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	ld	a0, -24(s0)
	li	a1, 511
	slli	a1, a1, 53
	call	__muldf3
	sd	a0, -24(s0)
	j	.LBB101_4
.LBB101_6:
	j	.LBB101_14
.LBB101_7:
	ld	a0, -24(s0)
	li	a1, 511
	slli	a1, a1, 53
	call	__ltdf2
	bgez	a0, .LBB101_13
	j	.LBB101_8
.LBB101_8:
	ld	a0, -24(s0)
	li	a1, 0
	call	__eqdf2
	beqz	a0, .LBB101_13
	j	.LBB101_9
.LBB101_9:
	j	.LBB101_10
.LBB101_10:                             # =>This Inner Loop Header: Depth=1
	ld	a0, -24(s0)
	li	a1, 511
	slli	a1, a1, 53
	call	__ltdf2
	bgez	a0, .LBB101_12
	j	.LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_10 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, -1
	sw	a0, -40(s0)
	ld	a1, -24(s0)
	mv	a0, a1
	call	__adddf3
	sd	a0, -24(s0)
	j	.LBB101_10
.LBB101_12:
	j	.LBB101_13
.LBB101_13:
	j	.LBB101_14
.LBB101_14:
	lw	a0, -40(s0)
	ld	a1, -32(s0)
	sw	a0, 0(a1)
	lw	a0, -36(s0)
	beqz	a0, .LBB101_16
	j	.LBB101_15
.LBB101_15:
	ld	a0, -24(s0)
	li	a1, -1
	slli	a1, a1, 63
	xor	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB101_16
.LBB101_16:
	ld	a0, -24(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end101:
	.size	frexp, .Lfunc_end101-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	1
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 0
	sd	a0, -40(s0)
	ld	a0, -24(s0)
	sd	a0, -48(s0)
	j	.LBB102_1
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -48(s0)
	beqz	a0, .LBB102_5
	j	.LBB102_2
.LBB102_2:                              #   in Loop: Header=BB102_1 Depth=1
	lbu	a0, -48(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB102_4
	j	.LBB102_3
.LBB102_3:                              #   in Loop: Header=BB102_1 Depth=1
	ld	a1, -32(s0)
	ld	a0, -40(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	j	.LBB102_4
.LBB102_4:                              #   in Loop: Header=BB102_1 Depth=1
	ld	a0, -32(s0)
	slli	a0, a0, 1
	sd	a0, -32(s0)
	ld	a0, -48(s0)
	srli	a0, a0, 1
	sd	a0, -48(s0)
	j	.LBB102_1
.LBB102_5:
	ld	a0, -40(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end102:
	.size	__muldi3, .Lfunc_end102-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	1
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	sd	a2, -40(s0)
	li	a0, 1
	sw	a0, -44(s0)
	li	a0, 0
	sw	a0, -48(s0)
	j	.LBB103_1
.LBB103_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	li	a2, 0
	sd	a2, -56(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB103_4
	j	.LBB103_2
.LBB103_2:                              #   in Loop: Header=BB103_1 Depth=1
	lw	a0, -44(s0)
	li	a1, 0
	sd	a1, -56(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB103_4
	j	.LBB103_3
.LBB103_3:                              #   in Loop: Header=BB103_1 Depth=1
	lwu	a0, -28(s0)
	lui	a1, 524288
	and	a0, a0, a1
	seqz	a0, a0
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB103_4
.LBB103_4:                              #   in Loop: Header=BB103_1 Depth=1
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB103_6
	j	.LBB103_5
.LBB103_5:                              #   in Loop: Header=BB103_1 Depth=1
	lw	a0, -28(s0)
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -44(s0)
	slliw	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB103_1
.LBB103_6:
	j	.LBB103_7
.LBB103_7:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	beqz	a0, .LBB103_11
	j	.LBB103_8
.LBB103_8:                              #   in Loop: Header=BB103_7 Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bltu	a0, a1, .LBB103_10
	j	.LBB103_9
.LBB103_9:                              #   in Loop: Header=BB103_7 Depth=1
	lw	a1, -28(s0)
	lw	a0, -24(s0)
	subw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -44(s0)
	lw	a0, -48(s0)
	or	a0, a0, a1
	sw	a0, -48(s0)
	j	.LBB103_10
.LBB103_10:                             #   in Loop: Header=BB103_7 Depth=1
	lwu	a0, -44(s0)
	srli	a0, a0, 1
	sw	a0, -44(s0)
	lwu	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB103_7
.LBB103_11:
	ld	a0, -40(s0)
	beqz	a0, .LBB103_13
	j	.LBB103_12
.LBB103_12:
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB103_14
.LBB103_13:
	lw	a0, -48(s0)
	sw	a0, -20(s0)
	j	.LBB103_14
.LBB103_14:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end103:
	.size	udivmodsi4, .Lfunc_end103-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	1
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sb	a0, -21(s0)
	li	a0, 1
	bnez	a0, .LBB104_2
	j	.LBB104_1
.LBB104_1:
	lbu	a0, -21(s0)
	not	a0, a0
	sb	a0, -21(s0)
	j	.LBB104_2
.LBB104_2:
	lbu	a0, -21(s0)
	bnez	a0, .LBB104_4
	j	.LBB104_3
.LBB104_3:
	li	a0, 7
	sw	a0, -20(s0)
	j	.LBB104_5
.LBB104_4:
	lbu	a0, -21(s0)
	slli	a0, a0, 8
	srli	a1, a0, 1
	or	a0, a0, a1
	srli	a1, a0, 2
	or	a0, a0, a1
	srli	a1, a0, 4
	or	a0, a0, a1
	slli	a1, a0, 33
	srli	a1, a1, 41
	or	a0, a0, a1
	srliw	a1, a0, 16
	or	a0, a0, a1
	not	a0, a0
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	and	a1, a1, a2
	sub	a1, a0, a1
	lui	a0, 209715
	addiw	a2, a0, 819
	and	a0, a1, a2
	srli	a1, a1, 2
	and	a1, a1, a2
	add	a0, a0, a1
	srli	a1, a0, 4
	addw	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	and	a0, a0, a1
	lui	a1, 4112
	addiw	a1, a1, 257
	mulw	a0, a0, a1
	srliw	a0, a0, 24
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	addiw	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB104_5
.LBB104_5:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end104:
	.size	__clrsbqi2, .Lfunc_end104-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	1
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	bgez	a0, .LBB105_2
	j	.LBB105_1
.LBB105_1:
	ld	a0, -32(s0)
	not	a0, a0
	sd	a0, -32(s0)
	j	.LBB105_2
.LBB105_2:
	ld	a0, -32(s0)
	bnez	a0, .LBB105_4
	j	.LBB105_3
.LBB105_3:
	li	a0, 63
	sw	a0, -20(s0)
	j	.LBB105_5
.LBB105_4:
	ld	a0, -32(s0)
	srli	a1, a0, 1
	or	a0, a0, a1
	srli	a1, a0, 2
	or	a0, a0, a1
	srli	a1, a0, 4
	or	a0, a0, a1
	srli	a1, a0, 8
	or	a0, a0, a1
	srli	a1, a0, 16
	or	a0, a0, a1
	srli	a1, a0, 32
	or	a0, a0, a1
	not	a0, a0
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a1, a1, a2
	sub	a1, a0, a1
	lui	a0, 209715
	addiw	a0, a0, 819
	slli	a2, a0, 32
	add	a2, a2, a0
	and	a0, a1, a2
	srli	a1, a1, 2
	and	a1, a1, a2
	add	a0, a0, a1
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	slli	a2, a1, 32
	add	a1, a1, a2
	and	a0, a0, a1
	lui	a1, 4112
	addiw	a1, a1, 257
	slli	a2, a1, 32
	add	a1, a1, a2
	mul	a0, a0, a1
	srli	a0, a0, 56
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	addiw	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB105_5
.LBB105_5:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end105:
	.size	__clrsbdi2, .Lfunc_end105-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	1
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB106_1
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB106_5
	j	.LBB106_2
.LBB106_2:                              #   in Loop: Header=BB106_1 Depth=1
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB106_4
	j	.LBB106_3
.LBB106_3:                              #   in Loop: Header=BB106_1 Depth=1
	lw	a1, -24(s0)
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_1 Depth=1
	lwu	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	slliw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB106_1
.LBB106_5:
	lw	a0, -28(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end106:
	.size	__mulsi3, .Lfunc_end106-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	1
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
	lwu	a0, -36(s0)
	srli	a0, a0, 3
	sw	a0, -44(s0)
	lwu	a0, -36(s0)
	andi	a0, a0, -8
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	bltu	a0, a1, .LBB107_2
	j	.LBB107_1
.LBB107_1:
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	bgeu	a0, a1, .LBB107_10
	j	.LBB107_2
.LBB107_2:
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB107_3
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	bgeu	a0, a1, .LBB107_6
	j	.LBB107_4
.LBB107_4:                              #   in Loop: Header=BB107_3 Depth=1
	ld	a0, -32(s0)
	lwu	a1, -40(s0)
	slli	a2, a1, 3
	add	a0, a0, a2
	ld	a0, 0(a0)
	ld	a1, -24(s0)
	add	a1, a1, a2
	sd	a0, 0(a1)
	j	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB107_3
.LBB107_6:
	j	.LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	lw	a0, -48(s0)
	bgeu	a0, a1, .LBB107_9
	j	.LBB107_8
.LBB107_8:                              #   in Loop: Header=BB107_7 Depth=1
	ld	a0, -64(s0)
	lwu	a2, -48(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -48(s0)
	addiw	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB107_7
.LBB107_9:
	j	.LBB107_14
.LBB107_10:
	j	.LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addiw	a1, a0, -1
	sw	a1, -36(s0)
	beqz	a0, .LBB107_13
	j	.LBB107_12
.LBB107_12:                             #   in Loop: Header=BB107_11 Depth=1
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB107_11
.LBB107_13:
	j	.LBB107_14
.LBB107_14:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end107:
	.size	__cmovd, .Lfunc_end107-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	1
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
	lwu	a0, -36(s0)
	srli	a0, a0, 1
	sw	a0, -44(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	bltu	a0, a1, .LBB108_2
	j	.LBB108_1
.LBB108_1:
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	bgeu	a0, a1, .LBB108_9
	j	.LBB108_2
.LBB108_2:
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB108_3
.LBB108_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	bgeu	a0, a1, .LBB108_6
	j	.LBB108_4
.LBB108_4:                              #   in Loop: Header=BB108_3 Depth=1
	ld	a0, -32(s0)
	lwu	a1, -40(s0)
	slli	a2, a1, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	ld	a1, -24(s0)
	add	a1, a1, a2
	sh	a0, 0(a1)
	j	.LBB108_5
.LBB108_5:                              #   in Loop: Header=BB108_3 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB108_3
.LBB108_6:
	lbu	a0, -36(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB108_8
	j	.LBB108_7
.LBB108_7:
	ld	a0, -64(s0)
	lw	a1, -36(s0)
	addiw	a1, a1, -1
	slli	a1, a1, 32
	srli	a2, a1, 32
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB108_8
.LBB108_8:
	j	.LBB108_13
.LBB108_9:
	j	.LBB108_10
.LBB108_10:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addiw	a1, a0, -1
	sw	a1, -36(s0)
	beqz	a0, .LBB108_12
	j	.LBB108_11
.LBB108_11:                             #   in Loop: Header=BB108_10 Depth=1
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB108_10
.LBB108_12:
	j	.LBB108_13
.LBB108_13:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end108:
	.size	__cmovh, .Lfunc_end108-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	1
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x13 killed $x12
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	sw	a2, -36(s0)
	lwu	a0, -36(s0)
	srli	a0, a0, 2
	sw	a0, -44(s0)
	lwu	a0, -36(s0)
	andi	a0, a0, -4
	sw	a0, -48(s0)
	ld	a0, -24(s0)
	sd	a0, -56(s0)
	ld	a0, -32(s0)
	sd	a0, -64(s0)
	ld	a0, -56(s0)
	ld	a1, -64(s0)
	bltu	a0, a1, .LBB109_2
	j	.LBB109_1
.LBB109_1:
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	bgeu	a0, a1, .LBB109_10
	j	.LBB109_2
.LBB109_2:
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB109_3
.LBB109_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -40(s0)
	lw	a1, -44(s0)
	bgeu	a0, a1, .LBB109_6
	j	.LBB109_4
.LBB109_4:                              #   in Loop: Header=BB109_3 Depth=1
	ld	a0, -32(s0)
	lwu	a1, -40(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	ld	a1, -24(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB109_5
.LBB109_5:                              #   in Loop: Header=BB109_3 Depth=1
	lw	a0, -40(s0)
	addiw	a0, a0, 1
	sw	a0, -40(s0)
	j	.LBB109_3
.LBB109_6:
	j	.LBB109_7
.LBB109_7:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -36(s0)
	lw	a0, -48(s0)
	bgeu	a0, a1, .LBB109_9
	j	.LBB109_8
.LBB109_8:                              #   in Loop: Header=BB109_7 Depth=1
	ld	a0, -64(s0)
	lwu	a2, -48(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -48(s0)
	addiw	a0, a0, 1
	sw	a0, -48(s0)
	j	.LBB109_7
.LBB109_9:
	j	.LBB109_14
.LBB109_10:
	j	.LBB109_11
.LBB109_11:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	addiw	a1, a0, -1
	sw	a1, -36(s0)
	beqz	a0, .LBB109_13
	j	.LBB109_12
.LBB109_12:                             #   in Loop: Header=BB109_11 Depth=1
	ld	a0, -64(s0)
	lwu	a2, -36(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	ld	a1, -56(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB109_11
.LBB109_13:
	j	.LBB109_14
.LBB109_14:
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end109:
	.size	__cmovw, .Lfunc_end109-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	1
	.type	__modi,@function
__modi:                                 # @__modi
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	remw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end110:
	.size	__modi, .Lfunc_end110-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	1
	.type	__uitod,@function
__uitod:                                # @__uitod
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	call	__floatunsidf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end111:
	.size	__uitod, .Lfunc_end111-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	1
	.type	__uitof,@function
__uitof:                                # @__uitof
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	call	__floatunsisf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end112:
	.size	__uitof, .Lfunc_end112-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	1
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	call	__floatundidf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end113:
	.size	__ulltod, .Lfunc_end113-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	1
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	call	__floatundisf
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end114:
	.size	__ulltof, .Lfunc_end114-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	1
	.type	__umodi,@function
__umodi:                                # @__umodi
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	remuw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end115:
	.size	__umodi, .Lfunc_end115-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	1
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sh	a0, -18(s0)
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB116_1
.LBB116_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB116_6
	j	.LBB116_2
.LBB116_2:                              #   in Loop: Header=BB116_1 Depth=1
	lhu	a0, -18(s0)
	lw	a2, -24(s0)
	li	a1, 15
	subw	a1, a1, a2
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB116_4
	j	.LBB116_3
.LBB116_3:
	j	.LBB116_6
.LBB116_4:                              #   in Loop: Header=BB116_1 Depth=1
	j	.LBB116_5
.LBB116_5:                              #   in Loop: Header=BB116_1 Depth=1
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB116_1
.LBB116_6:
	lw	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end116:
	.size	__clzhi2, .Lfunc_end116-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	1
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sh	a0, -18(s0)
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB117_6
	j	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	lhu	a0, -18(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB117_4
	j	.LBB117_3
.LBB117_3:
	j	.LBB117_6
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	j	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB117_1
.LBB117_6:
	lw	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end117:
	.size	__ctzhi2, .Lfunc_end117-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	1
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	lui	a1, 290816
	call	__gesf2
	bltz	a0, .LBB118_2
	j	.LBB118_1
.LBB118_1:
	lw	a0, -28(s0)
	lui	a1, 815104
	call	__addsf3
	call	__fixsfdi
	lui	a1, 8
	add	a0, a0, a1
	sd	a0, -24(s0)
	j	.LBB118_3
.LBB118_2:
	lw	a0, -28(s0)
	call	__fixsfdi
	sd	a0, -24(s0)
	j	.LBB118_3
.LBB118_3:
	ld	a0, -24(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end118:
	.size	__fixunssfsi, .Lfunc_end118-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	1
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sh	a0, -18(s0)
	li	a0, 0
	sw	a0, -28(s0)
	sw	a0, -24(s0)
	j	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB119_6
	j	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	lhu	a0, -18(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB119_4
	j	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	j	.LBB119_5
.LBB119_5:                              #   in Loop: Header=BB119_1 Depth=1
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB119_1
.LBB119_6:
	lwu	a0, -28(s0)
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end119:
	.size	__parityhi2, .Lfunc_end119-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	1
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sh	a0, -18(s0)
	li	a0, 0
	sw	a0, -28(s0)
	sw	a0, -24(s0)
	j	.LBB120_1
.LBB120_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -24(s0)
	li	a0, 15
	blt	a0, a1, .LBB120_6
	j	.LBB120_2
.LBB120_2:                              #   in Loop: Header=BB120_1 Depth=1
	lhu	a0, -18(s0)
	lwu	a1, -24(s0)
	srlw	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB120_4
	j	.LBB120_3
.LBB120_3:                              #   in Loop: Header=BB120_1 Depth=1
	lw	a0, -28(s0)
	addiw	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_1 Depth=1
	j	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_1 Depth=1
	lw	a0, -24(s0)
	addiw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB120_1
.LBB120_6:
	lw	a0, -28(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end120:
	.size	__popcounthi2, .Lfunc_end120-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	1
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	li	a0, 0
	sw	a0, -28(s0)
	j	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB121_5
	j	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB121_4
	j	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	lw	a1, -24(s0)
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	lwu	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	slliw	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB121_1
.LBB121_5:
	lw	a0, -28(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end121:
	.size	__mulsi3_iq2000, .Lfunc_end121-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	1
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	li	a0, 0
	sw	a0, -32(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB122_2
	j	.LBB122_1
.LBB122_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB122_8
.LBB122_2:
	j	.LBB122_3
.LBB122_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB122_7
	j	.LBB122_4
.LBB122_4:                              #   in Loop: Header=BB122_3 Depth=1
	lbu	a0, -28(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB122_6
	j	.LBB122_5
.LBB122_5:                              #   in Loop: Header=BB122_3 Depth=1
	lw	a1, -24(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB122_6
.LBB122_6:                              #   in Loop: Header=BB122_3 Depth=1
	lw	a0, -24(s0)
	slliw	a0, a0, 1
	sw	a0, -24(s0)
	lwu	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB122_3
.LBB122_7:
	lw	a0, -32(s0)
	sw	a0, -20(s0)
	j	.LBB122_8
.LBB122_8:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end122:
	.size	__mulsi3_lm32, .Lfunc_end122-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	1
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x13 killed $x12
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	sw	a2, -32(s0)
	li	a0, 1
	sw	a0, -36(s0)
	li	a0, 0
	sw	a0, -40(s0)
	j	.LBB123_1
.LBB123_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	li	a2, 0
	sd	a2, -48(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB123_4
	j	.LBB123_2
.LBB123_2:                              #   in Loop: Header=BB123_1 Depth=1
	lw	a0, -36(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB123_4
	j	.LBB123_3
.LBB123_3:                              #   in Loop: Header=BB123_1 Depth=1
	lwu	a0, -28(s0)
	lui	a1, 524288
	and	a0, a0, a1
	seqz	a0, a0
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB123_4
.LBB123_4:                              #   in Loop: Header=BB123_1 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB123_6
	j	.LBB123_5
.LBB123_5:                              #   in Loop: Header=BB123_1 Depth=1
	lw	a0, -28(s0)
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -36(s0)
	slliw	a0, a0, 1
	sw	a0, -36(s0)
	j	.LBB123_1
.LBB123_6:
	j	.LBB123_7
.LBB123_7:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -36(s0)
	beqz	a0, .LBB123_11
	j	.LBB123_8
.LBB123_8:                              #   in Loop: Header=BB123_7 Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bltu	a0, a1, .LBB123_10
	j	.LBB123_9
.LBB123_9:                              #   in Loop: Header=BB123_7 Depth=1
	lw	a1, -28(s0)
	lw	a0, -24(s0)
	subw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -36(s0)
	lw	a0, -40(s0)
	or	a0, a0, a1
	sw	a0, -40(s0)
	j	.LBB123_10
.LBB123_10:                             #   in Loop: Header=BB123_7 Depth=1
	lwu	a0, -36(s0)
	srli	a0, a0, 1
	sw	a0, -36(s0)
	lwu	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB123_7
.LBB123_11:
	lw	a0, -32(s0)
	beqz	a0, .LBB123_13
	j	.LBB123_12
.LBB123_12:
	lw	a0, -24(s0)
	sw	a0, -20(s0)
	j	.LBB123_14
.LBB123_13:
	lw	a0, -40(s0)
	sw	a0, -20(s0)
	j	.LBB123_14
.LBB123_14:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end123:
	.size	__udivmodsi4, .Lfunc_end123-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	1
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -24(s0)
	sw	a1, -28(s0)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__ltsf2
	bgez	a0, .LBB124_2
	j	.LBB124_1
.LBB124_1:
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB124_5
.LBB124_2:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB124_4
	j	.LBB124_3
.LBB124_3:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB124_5
.LBB124_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB124_5
.LBB124_5:
	lw	a0, -20(s0)
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end124:
	.size	__mspabi_cmpf, .Lfunc_end124-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	1
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__ltdf2
	bgez	a0, .LBB125_2
	j	.LBB125_1
.LBB125_1:
	li	a0, -1
	sw	a0, -20(s0)
	j	.LBB125_5
.LBB125_2:
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB125_4
	j	.LBB125_3
.LBB125_3:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB125_5
.LBB125_4:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB125_5
.LBB125_5:
	lw	a0, -20(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end125:
	.size	__mspabi_cmpd, .Lfunc_end125-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	1
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	mul	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end126:
	.size	__mspabi_mpysll, .Lfunc_end126-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	1
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	mul	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end127:
	.size	__mspabi_mpyull, .Lfunc_end127-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	1
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	li	a0, 0
	sw	a0, -32(s0)
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	bgez	a0, .LBB128_2
	j	.LBB128_1
.LBB128_1:
	lw	a1, -24(s0)
	li	a0, 0
	subw	a0, a0, a1
	sw	a0, -24(s0)
	li	a0, 1
	sw	a0, -32(s0)
	j	.LBB128_2
.LBB128_2:
	li	a0, 0
	sb	a0, -25(s0)
	j	.LBB128_3
.LBB128_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	li	a1, 0
	sd	a1, -48(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB128_5
	j	.LBB128_4
.LBB128_4:                              #   in Loop: Header=BB128_3 Depth=1
	lbu	a0, -25(s0)
	sltiu	a0, a0, 32
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB128_5
.LBB128_5:                              #   in Loop: Header=BB128_3 Depth=1
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB128_10
	j	.LBB128_6
.LBB128_6:                              #   in Loop: Header=BB128_3 Depth=1
	lbu	a0, -24(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB128_8
	j	.LBB128_7
.LBB128_7:                              #   in Loop: Header=BB128_3 Depth=1
	lw	a1, -20(s0)
	lw	a0, -36(s0)
	addw	a0, a0, a1
	sw	a0, -36(s0)
	j	.LBB128_8
.LBB128_8:                              #   in Loop: Header=BB128_3 Depth=1
	lw	a0, -20(s0)
	slliw	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	srli	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB128_9
.LBB128_9:                              #   in Loop: Header=BB128_3 Depth=1
	lbu	a0, -25(s0)
	addiw	a0, a0, 1
	sb	a0, -25(s0)
	j	.LBB128_3
.LBB128_10:
	lw	a0, -32(s0)
	beqz	a0, .LBB128_12
	j	.LBB128_11
.LBB128_11:
	lw	a1, -36(s0)
	li	a0, 0
	subw	a0, a0, a1
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB128_13
.LBB128_12:
	lw	a0, -36(s0)
	sd	a0, -56(s0)                     # 8-byte Folded Spill
	j	.LBB128_13
.LBB128_13:
	ld	a0, -56(s0)                     # 8-byte Folded Reload
	sext.w	a0, a0
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end128:
	.size	__mulhi3, .Lfunc_end128-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	1
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 0
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	bgez	a0, .LBB129_2
	j	.LBB129_1
.LBB129_1:
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -24(s0)
	lw	a0, -36(s0)
	seqz	a0, a0
	sw	a0, -36(s0)
	j	.LBB129_2
.LBB129_2:
	ld	a0, -32(s0)
	bgez	a0, .LBB129_4
	j	.LBB129_3
.LBB129_3:
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)
	lw	a0, -36(s0)
	seqz	a0, a0
	sw	a0, -36(s0)
	j	.LBB129_4
.LBB129_4:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	li	a2, 0
	call	__udivmodsi4
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, -48(s0)
	lw	a0, -36(s0)
	beqz	a0, .LBB129_6
	j	.LBB129_5
.LBB129_5:
	ld	a1, -48(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB129_6
.LBB129_6:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end129:
	.size	__divsi3, .Lfunc_end129-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	1
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 0
	sw	a0, -36(s0)
	ld	a0, -24(s0)
	bgez	a0, .LBB130_2
	j	.LBB130_1
.LBB130_1:
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -24(s0)
	li	a0, 1
	sw	a0, -36(s0)
	j	.LBB130_2
.LBB130_2:
	ld	a0, -32(s0)
	bgez	a0, .LBB130_4
	j	.LBB130_3
.LBB130_3:
	ld	a1, -32(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -32(s0)
	j	.LBB130_4
.LBB130_4:
	lw	a0, -24(s0)
	lw	a1, -32(s0)
	li	a2, 1
	call	__udivmodsi4
	slli	a0, a0, 32
	srli	a0, a0, 32
	sd	a0, -48(s0)
	lw	a0, -36(s0)
	beqz	a0, .LBB130_6
	j	.LBB130_5
.LBB130_5:
	ld	a1, -48(s0)
	li	a0, 0
	sub	a0, a0, a1
	sd	a0, -48(s0)
	j	.LBB130_6
.LBB130_6:
	ld	a0, -48(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end130:
	.size	__modsi3, .Lfunc_end130-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	1
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x13 killed $x12
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sh	a0, -20(s0)
	sh	a1, -22(s0)
	sw	a2, -28(s0)
	li	a0, 1
	sh	a0, -30(s0)
	li	a0, 0
	sh	a0, -32(s0)
	j	.LBB131_1
.LBB131_1:                              # =>This Inner Loop Header: Depth=1
	lhu	a0, -22(s0)
	lhu	a1, -20(s0)
	li	a2, 0
	sd	a2, -40(s0)                     # 8-byte Folded Spill
	bge	a0, a1, .LBB131_4
	j	.LBB131_2
.LBB131_2:                              #   in Loop: Header=BB131_1 Depth=1
	lhu	a0, -30(s0)
	li	a1, 0
	sd	a1, -40(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB131_4
	j	.LBB131_3
.LBB131_3:                              #   in Loop: Header=BB131_1 Depth=1
	lhu	a0, -22(s0)
	lui	a1, 8
	and	a0, a0, a1
	seqz	a0, a0
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB131_4
.LBB131_4:                              #   in Loop: Header=BB131_1 Depth=1
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB131_6
	j	.LBB131_5
.LBB131_5:                              #   in Loop: Header=BB131_1 Depth=1
	lh	a0, -22(s0)
	slliw	a0, a0, 1
	sh	a0, -22(s0)
	lh	a0, -30(s0)
	slliw	a0, a0, 1
	sh	a0, -30(s0)
	j	.LBB131_1
.LBB131_6:
	j	.LBB131_7
.LBB131_7:                              # =>This Inner Loop Header: Depth=1
	lhu	a0, -30(s0)
	beqz	a0, .LBB131_11
	j	.LBB131_8
.LBB131_8:                              #   in Loop: Header=BB131_7 Depth=1
	lhu	a0, -20(s0)
	lhu	a1, -22(s0)
	blt	a0, a1, .LBB131_10
	j	.LBB131_9
.LBB131_9:                              #   in Loop: Header=BB131_7 Depth=1
	lh	a1, -22(s0)
	lh	a0, -20(s0)
	subw	a0, a0, a1
	sh	a0, -20(s0)
	lh	a1, -30(s0)
	lh	a0, -32(s0)
	or	a0, a0, a1
	sh	a0, -32(s0)
	j	.LBB131_10
.LBB131_10:                             #   in Loop: Header=BB131_7 Depth=1
	lhu	a0, -30(s0)
	srli	a0, a0, 1
	sh	a0, -30(s0)
	lhu	a0, -22(s0)
	srli	a0, a0, 1
	sh	a0, -22(s0)
	j	.LBB131_7
.LBB131_11:
	lw	a0, -28(s0)
	beqz	a0, .LBB131_13
	j	.LBB131_12
.LBB131_12:
	lh	a0, -20(s0)
	sh	a0, -18(s0)
	j	.LBB131_14
.LBB131_13:
	lh	a0, -32(s0)
	sh	a0, -18(s0)
	j	.LBB131_14
.LBB131_14:
	lhu	a0, -18(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end131:
	.size	__udivmodhi4, .Lfunc_end131-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	1
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
                                        # kill: def $x13 killed $x12
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	sw	a2, -44(s0)
	li	a0, 1
	sd	a0, -56(s0)
	li	a0, 0
	sd	a0, -64(s0)
	j	.LBB132_1
.LBB132_1:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -40(s0)
	ld	a1, -32(s0)
	li	a2, 0
	sd	a2, -72(s0)                     # 8-byte Folded Spill
	bgeu	a0, a1, .LBB132_4
	j	.LBB132_2
.LBB132_2:                              #   in Loop: Header=BB132_1 Depth=1
	ld	a0, -56(s0)
	li	a1, 0
	sd	a1, -72(s0)                     # 8-byte Folded Spill
	beqz	a0, .LBB132_4
	j	.LBB132_3
.LBB132_3:                              #   in Loop: Header=BB132_1 Depth=1
	lbu	a0, -37(s0)
	andi	a0, a0, 128
	seqz	a0, a0
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	j	.LBB132_4
.LBB132_4:                              #   in Loop: Header=BB132_1 Depth=1
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB132_6
	j	.LBB132_5
.LBB132_5:                              #   in Loop: Header=BB132_1 Depth=1
	ld	a0, -40(s0)
	slli	a0, a0, 1
	sd	a0, -40(s0)
	ld	a0, -56(s0)
	slli	a0, a0, 1
	sd	a0, -56(s0)
	j	.LBB132_1
.LBB132_6:
	j	.LBB132_7
.LBB132_7:                              # =>This Inner Loop Header: Depth=1
	ld	a0, -56(s0)
	beqz	a0, .LBB132_11
	j	.LBB132_8
.LBB132_8:                              #   in Loop: Header=BB132_7 Depth=1
	ld	a0, -32(s0)
	ld	a1, -40(s0)
	bltu	a0, a1, .LBB132_10
	j	.LBB132_9
.LBB132_9:                              #   in Loop: Header=BB132_7 Depth=1
	ld	a1, -40(s0)
	ld	a0, -32(s0)
	sub	a0, a0, a1
	sd	a0, -32(s0)
	ld	a1, -56(s0)
	ld	a0, -64(s0)
	or	a0, a0, a1
	sd	a0, -64(s0)
	j	.LBB132_10
.LBB132_10:                             #   in Loop: Header=BB132_7 Depth=1
	ld	a0, -56(s0)
	srli	a0, a0, 1
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	srli	a0, a0, 1
	sd	a0, -40(s0)
	j	.LBB132_7
.LBB132_11:
	lw	a0, -44(s0)
	beqz	a0, .LBB132_13
	j	.LBB132_12
.LBB132_12:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB132_14
.LBB132_13:
	ld	a0, -64(s0)
	sd	a0, -24(s0)
	j	.LBB132_14
.LBB132_14:
	ld	a0, -24(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end132:
	.size	__udivmodsi4_libgcc, .Lfunc_end132-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	1
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	li	a0, 32
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lbu	a0, -36(s0)
	andi	a0, a0, 32
	beqz	a0, .LBB133_2
	j	.LBB133_1
.LBB133_1:
	li	a0, 0
	sw	a0, -56(s0)
	lw	a0, -48(s0)
	lw	a1, -36(s0)
	sllw	a0, a0, a1
	sw	a0, -52(s0)
	j	.LBB133_5
.LBB133_2:
	lw	a0, -36(s0)
	bnez	a0, .LBB133_4
	j	.LBB133_3
.LBB133_3:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB133_6
.LBB133_4:
	lw	a0, -48(s0)
	lwu	a1, -36(s0)
	sllw	a0, a0, a1
	sw	a0, -56(s0)
	lw	a0, -44(s0)
	lwu	a2, -36(s0)
	sllw	a0, a0, a2
	lw	a1, -48(s0)
	negw	a2, a2
	srlw	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -52(s0)
	j	.LBB133_5
.LBB133_5:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB133_6
.LBB133_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end133:
	.size	__ashldi3, .Lfunc_end133-__ashldi3
                                        # -- End function
	.globl	__ashlti3                       # -- Begin function __ashlti3
	.p2align	1
	.type	__ashlti3,@function
__ashlti3:                              # @__ashlti3
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sw	a2, -52(s0)
	li	a0, 64
	sw	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	lbu	a0, -52(s0)
	andi	a0, a0, 64
	beqz	a0, .LBB134_2
	j	.LBB134_1
.LBB134_1:
	li	a0, 0
	sd	a0, -96(s0)
	ld	a0, -80(s0)
	lw	a1, -52(s0)
	sll	a0, a0, a1
	sd	a0, -88(s0)
	j	.LBB134_5
.LBB134_2:
	lw	a0, -52(s0)
	bnez	a0, .LBB134_4
	j	.LBB134_3
.LBB134_3:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB134_6
.LBB134_4:
	ld	a0, -80(s0)
	lwu	a1, -52(s0)
	sll	a0, a0, a1
	sd	a0, -96(s0)
	ld	a0, -72(s0)
	lwu	a2, -52(s0)
	sll	a0, a0, a2
	ld	a1, -80(s0)
	negw	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	sd	a0, -88(s0)
	j	.LBB134_5
.LBB134_5:
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB134_6
.LBB134_6:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end134:
	.size	__ashlti3, .Lfunc_end134-__ashlti3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	1
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	li	a0, 32
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lbu	a0, -36(s0)
	andi	a0, a0, 32
	beqz	a0, .LBB135_2
	j	.LBB135_1
.LBB135_1:
	lw	a0, -44(s0)
	srli	a0, a0, 31
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lw	a1, -36(s0)
	sraw	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB135_5
.LBB135_2:
	lw	a0, -36(s0)
	bnez	a0, .LBB135_4
	j	.LBB135_3
.LBB135_3:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB135_6
.LBB135_4:
	lw	a0, -44(s0)
	lwu	a1, -36(s0)
	sraw	a0, a0, a1
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lwu	a2, -36(s0)
	negw	a1, a2
	sllw	a0, a0, a1
	lw	a1, -48(s0)
	srlw	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB135_5
.LBB135_5:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB135_6
.LBB135_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end135:
	.size	__ashrdi3, .Lfunc_end135-__ashrdi3
                                        # -- End function
	.globl	__ashrti3                       # -- Begin function __ashrti3
	.p2align	1
	.type	__ashrti3,@function
__ashrti3:                              # @__ashrti3
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sw	a2, -52(s0)
	li	a0, 64
	sw	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	lbu	a0, -52(s0)
	andi	a0, a0, 64
	beqz	a0, .LBB136_2
	j	.LBB136_1
.LBB136_1:
	ld	a0, -72(s0)
	srai	a0, a0, 63
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lw	a1, -52(s0)
	sra	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB136_5
.LBB136_2:
	lw	a0, -52(s0)
	bnez	a0, .LBB136_4
	j	.LBB136_3
.LBB136_3:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB136_6
.LBB136_4:
	ld	a0, -72(s0)
	lwu	a1, -52(s0)
	sra	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lwu	a2, -52(s0)
	negw	a1, a2
	sll	a0, a0, a1
	ld	a1, -80(s0)
	srl	a1, a1, a2
	or	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB136_5
.LBB136_5:
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB136_6
.LBB136_6:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end136:
	.size	__ashrti3, .Lfunc_end136-__ashrti3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	1
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a1, -24(s0)
	srli	a0, a1, 56
	li	a2, 255
	slli	a3, a2, 48
	and	a3, a3, a1
	srli	a3, a3, 40
	or	a0, a0, a3
	slli	a3, a2, 40
	and	a3, a3, a1
	srli	a3, a3, 24
	or	a0, a0, a3
	slli	a2, a2, 32
	and	a2, a2, a1
	srli	a2, a2, 8
	or	a0, a0, a2
	srliw	a2, a1, 24
	slli	a2, a2, 32
	or	a0, a0, a2
	lui	a2, 4080
	and	a2, a2, a1
	slli	a2, a2, 24
	or	a0, a0, a2
	lui	a2, 16
	addiw	a2, a2, -256
	and	a2, a2, a1
	slli	a2, a2, 40
	or	a0, a0, a2
	slli	a1, a1, 56
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end137:
	.size	__bswapdi2, .Lfunc_end137-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	1
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	srliw	a0, a1, 24
	lui	a2, 4080
	and	a2, a2, a1
	srli	a2, a2, 8
	or	a0, a0, a2
	lui	a2, 16
	addiw	a2, a2, -256
	and	a2, a2, a1
	slli	a2, a2, 8
	or	a0, a0, a2
	slliw	a1, a1, 24
	or	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end138:
	.size	__bswapsi2, .Lfunc_end138-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	1
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lhu	a0, -22(s0)
	slliw	a0, a0, 16
	seqz	a0, a0
	slliw	a0, a0, 4
	sw	a0, -28(s0)
	lw	a1, -28(s0)
	li	a0, 16
	subw	a1, a0, a1
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	sw	a0, -32(s0)
	lbu	a0, -23(s0)
	slli	a0, a0, 8
	seqz	a0, a0
	slliw	a0, a0, 3
	sw	a0, -28(s0)
	lw	a1, -28(s0)
	li	a0, 8
	subw	a1, a0, a1
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 240
	seqz	a0, a0
	slliw	a0, a0, 2
	sw	a0, -28(s0)
	lw	a1, -28(s0)
	li	a0, 4
	subw	a1, a0, a1
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 12
	seqz	a0, a0
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	li	a1, 2
	subw	a2, a1, a0
	lw	a0, -24(s0)
	srlw	a0, a0, a2
	sw	a0, -24(s0)
	lw	a2, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a2
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	lw	a2, -24(s0)
	subw	a1, a1, a2
	slli	a2, a2, 62
	srli	a2, a2, 63
	addiw	a2, a2, -1
	and	a1, a1, a2
	addw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end139:
	.size	__clzsi2, .Lfunc_end139-__clzsi2
                                        # -- End function
	.globl	__clzti2                        # -- Begin function __clzti2
	.p2align	1
	.type	__clzti2,@function
__clzti2:                               # @__clzti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	snez	a0, a0
	addi	a0, a0, -1
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	not	a2, a1
	and	a0, a0, a2
	ld	a2, -48(s0)
	and	a2, a2, a1
	or	a0, a0, a2
	srli	a2, a0, 1
	or	a0, a0, a2
	srli	a2, a0, 2
	or	a0, a0, a2
	srli	a2, a0, 4
	or	a0, a0, a2
	srli	a2, a0, 8
	or	a0, a0, a2
	srli	a2, a0, 16
	or	a0, a0, a2
	srli	a2, a0, 32
	or	a0, a0, a2
	not	a0, a0
	srli	a2, a0, 1
	lui	a3, 349525
	addiw	a3, a3, 1365
	slli	ra, a3, 32
	add	a3, a3, ra
	and	a2, a2, a3
	sub	a2, a0, a2
	lui	a0, 209715
	addiw	a0, a0, 819
	slli	a3, a0, 32
	add	a3, a3, a0
	and	a0, a2, a3
	srli	a2, a2, 2
	and	a2, a2, a3
	add	a0, a0, a2
	srli	a2, a0, 4
	add	a0, a0, a2
	lui	a2, 61681
	addiw	a2, a2, -241
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a0, a0, a2
	lui	a2, 4112
	addiw	a2, a2, 257
	slli	a3, a2, 32
	add	a2, a2, a3
	mul	a0, a0, a2
	srli	a0, a0, 56
	andi	a1, a1, 64
	add	a0, a0, a1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end140:
	.size	__clzti2, .Lfunc_end140-__clzti2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	1
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	sd	a0, -56(s0)
	lw	a0, -44(s0)
	lw	a1, -52(s0)
	bge	a0, a1, .LBB141_2
	j	.LBB141_1
.LBB141_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_2:
	lw	a1, -44(s0)
	lw	a0, -52(s0)
	bge	a0, a1, .LBB141_4
	j	.LBB141_3
.LBB141_3:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_4:
	lw	a0, -48(s0)
	lw	a1, -56(s0)
	bgeu	a0, a1, .LBB141_6
	j	.LBB141_5
.LBB141_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_6:
	lw	a1, -48(s0)
	lw	a0, -56(s0)
	bgeu	a0, a1, .LBB141_8
	j	.LBB141_7
.LBB141_7:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_8:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB141_9
.LBB141_9:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end141:
	.size	__cmpdi2, .Lfunc_end141-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	1
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	call	__cmpdi2
	addiw	a0, a0, -1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end142:
	.size	__aeabi_lcmp, .Lfunc_end142-__aeabi_lcmp
                                        # -- End function
	.globl	__cmpti2                        # -- Begin function __cmpti2
	.p2align	1
	.type	__cmpti2,@function
__cmpti2:                               # @__cmpti2
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -88(s0)
	sd	a0, -96(s0)
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	bge	a0, a1, .LBB143_2
	j	.LBB143_1
.LBB143_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_2:
	ld	a1, -72(s0)
	ld	a0, -88(s0)
	bge	a0, a1, .LBB143_4
	j	.LBB143_3
.LBB143_3:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_4:
	ld	a0, -80(s0)
	ld	a1, -96(s0)
	bgeu	a0, a1, .LBB143_6
	j	.LBB143_5
.LBB143_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_6:
	ld	a1, -80(s0)
	ld	a0, -96(s0)
	bgeu	a0, a1, .LBB143_8
	j	.LBB143_7
.LBB143_7:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_8:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB143_9
.LBB143_9:
	lw	a0, -20(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end143:
	.size	__cmpti2, .Lfunc_end143-__cmpti2
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	1
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lhu	a0, -24(s0)
	seqz	a0, a0
	slliw	a0, a0, 4
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	sw	a0, -32(s0)
	lbu	a0, -24(s0)
	seqz	a0, a0
	slliw	a0, a0, 3
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 15
	seqz	a0, a0
	slliw	a0, a0, 2
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 3
	seqz	a0, a0
	slliw	a0, a0, 1
	sw	a0, -28(s0)
	lwu	a1, -28(s0)
	lw	a0, -24(s0)
	srlw	a0, a0, a1
	sw	a0, -24(s0)
	lwu	a0, -24(s0)
	andi	a0, a0, 3
	sw	a0, -24(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lw	a0, -32(s0)
	lw	a2, -24(s0)
	srliw	a3, a2, 1
	li	a1, 2
	subw	a1, a1, a3
	andi	a2, a2, 1
	addiw	a2, a2, -1
	and	a1, a1, a2
	addw	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end144:
	.size	__ctzsi2, .Lfunc_end144-__ctzsi2
                                        # -- End function
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __ctzti2
.LCPI145_0:
	.quad	151050438420815295              # 0x218a392cd3d5dbf
	.section	.rodata,"a",@progbits
.LCPI145_1:
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ctzti2
	.p2align	1
	.type	__ctzti2,@function
__ctzti2:                               # @__ctzti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	snez	a0, a0
	addi	a0, a0, -1
	sd	a0, -56(s0)
	ld	a0, -40(s0)
	ld	a1, -56(s0)
	and	a0, a0, a1
	ld	a2, -48(s0)
	not	a3, a1
	and	a2, a2, a3
	or	a0, a0, a2
	li	a2, 0
	sub	a2, a2, a0
	and	a0, a0, a2
.Lpcrel_hi6:
	auipc	a2, %pcrel_hi(.LCPI145_0)
	addi	a2, a2, %pcrel_lo(.Lpcrel_hi6)
	ld	a2, 0(a2)
	mul	a0, a0, a2
	srli	a2, a0, 58
.Lpcrel_hi7:
	auipc	a0, %pcrel_hi(.LCPI145_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi7)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	andi	a1, a1, 64
	add	a0, a0, a1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end145:
	.size	__ctzti2, .Lfunc_end145-__ctzti2
                                        # -- End function
	.section	.srodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function __ffsti2
.LCPI146_0:
	.quad	151050438420815295              # 0x218a392cd3d5dbf
	.section	.rodata,"a",@progbits
.LCPI146_1:
	.ascii	"\000\001\002\007\003\r\b\023\004\031\016\034\t\"\024(\005\021\032&\017.\0350\n\037#6\0252)9?\006\f\022\030\033!'\020%-/\036518>\013\027 $,47=\026+3<*;:"
	.text
	.globl	__ffsti2
	.p2align	1
	.type	__ffsti2,@function
__ffsti2:                               # @__ffsti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -56(s0)
	sd	a0, -64(s0)
	ld	a0, -64(s0)
	bnez	a0, .LBB146_4
	j	.LBB146_1
.LBB146_1:
	ld	a0, -56(s0)
	bnez	a0, .LBB146_3
	j	.LBB146_2
.LBB146_2:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB146_5
.LBB146_3:
	ld	a0, -56(s0)
	li	a1, 0
	sub	a1, a1, a0
	and	a0, a0, a1
.Lpcrel_hi8:
	auipc	a1, %pcrel_hi(.LCPI146_0)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi8)
	ld	a1, 0(a1)
	mul	a0, a0, a1
	srli	a1, a0, 58
.Lpcrel_hi9:
	auipc	a0, %pcrel_hi(.LCPI146_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi9)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addiw	a0, a0, 65
	sw	a0, -20(s0)
	j	.LBB146_5
.LBB146_4:
	ld	a0, -64(s0)
	li	a1, 0
	sub	a1, a1, a0
	and	a0, a0, a1
.Lpcrel_hi10:
	auipc	a1, %pcrel_hi(.LCPI146_0)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi10)
	ld	a1, 0(a1)
	mul	a0, a0, a1
	srli	a1, a0, 58
.Lpcrel_hi11:
	auipc	a0, %pcrel_hi(.LCPI146_1)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi11)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	addiw	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB146_5
.LBB146_5:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end146:
	.size	__ffsti2, .Lfunc_end146-__ffsti2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	1
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
	sd	a0, -32(s0)
	sw	a1, -36(s0)
	li	a0, 32
	sw	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lbu	a0, -36(s0)
	andi	a0, a0, 32
	beqz	a0, .LBB147_2
	j	.LBB147_1
.LBB147_1:
	li	a0, 0
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lw	a1, -36(s0)
	srlw	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB147_5
.LBB147_2:
	lw	a0, -36(s0)
	bnez	a0, .LBB147_4
	j	.LBB147_3
.LBB147_3:
	ld	a0, -32(s0)
	sd	a0, -24(s0)
	j	.LBB147_6
.LBB147_4:
	lw	a0, -44(s0)
	lwu	a1, -36(s0)
	srlw	a0, a0, a1
	sw	a0, -52(s0)
	lw	a0, -44(s0)
	lwu	a2, -36(s0)
	negw	a1, a2
	sllw	a0, a0, a1
	lw	a1, -48(s0)
	srlw	a1, a1, a2
	or	a0, a0, a1
	sw	a0, -56(s0)
	j	.LBB147_5
.LBB147_5:
	ld	a0, -56(s0)
	sd	a0, -24(s0)
	j	.LBB147_6
.LBB147_6:
	ld	a0, -24(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end147:
	.size	__lshrdi3, .Lfunc_end147-__lshrdi3
                                        # -- End function
	.globl	__lshrti3                       # -- Begin function __lshrti3
	.p2align	1
	.type	__lshrti3,@function
__lshrti3:                              # @__lshrti3
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
                                        # kill: def $x13 killed $x12
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sw	a2, -52(s0)
	li	a0, 64
	sw	a0, -56(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	lbu	a0, -52(s0)
	andi	a0, a0, 64
	beqz	a0, .LBB148_2
	j	.LBB148_1
.LBB148_1:
	li	a0, 0
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lw	a1, -52(s0)
	srl	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB148_5
.LBB148_2:
	lw	a0, -52(s0)
	bnez	a0, .LBB148_4
	j	.LBB148_3
.LBB148_3:
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB148_6
.LBB148_4:
	ld	a0, -72(s0)
	lwu	a1, -52(s0)
	srl	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -72(s0)
	lwu	a2, -52(s0)
	negw	a1, a2
	sll	a0, a0, a1
	ld	a1, -80(s0)
	srl	a1, a1, a2
	or	a0, a0, a1
	sd	a0, -96(s0)
	j	.LBB148_5
.LBB148_5:
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	j	.LBB148_6
.LBB148_6:
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end148:
	.size	__lshrti3, .Lfunc_end148-__lshrti3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	1
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	li	a0, 16
	sw	a0, -36(s0)
	lui	a0, 16
	addiw	a0, a0, -1
	sw	a0, -40(s0)
	lhu	a0, -20(s0)
	lhu	a1, -24(s0)
	mulw	a0, a0, a1
	sw	a0, -32(s0)
	lhu	a0, -30(s0)
	sw	a0, -44(s0)
	lhu	a0, -32(s0)
	sw	a0, -32(s0)
	lhu	a0, -18(s0)
	lhu	a1, -24(s0)
	mulw	a1, a0, a1
	lw	a0, -44(s0)
	addw	a0, a0, a1
	sw	a0, -44(s0)
	lw	a0, -44(s0)
	slliw	a1, a0, 16
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lhu	a0, -42(s0)
	sw	a0, -28(s0)
	lhu	a0, -30(s0)
	sw	a0, -44(s0)
	lhu	a0, -32(s0)
	sw	a0, -32(s0)
	lhu	a0, -22(s0)
	lhu	a1, -20(s0)
	mulw	a1, a0, a1
	lw	a0, -44(s0)
	addw	a0, a0, a1
	sw	a0, -44(s0)
	lw	a0, -44(s0)
	slliw	a1, a0, 16
	lw	a0, -32(s0)
	addw	a0, a0, a1
	sw	a0, -32(s0)
	lhu	a1, -42(s0)
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	lhu	a0, -18(s0)
	lhu	a1, -22(s0)
	mulw	a1, a0, a1
	lw	a0, -28(s0)
	addw	a0, a0, a1
	sw	a0, -28(s0)
	ld	a0, -32(s0)
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end149:
	.size	__muldsi3, .Lfunc_end149-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	1
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	sd	a0, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	lw	a0, -40(s0)
	lw	a1, -48(s0)
	call	__muldsi3
	sd	a0, -56(s0)
	lw	a0, -36(s0)
	lw	a1, -48(s0)
	mulw	a0, a0, a1
	lw	a1, -40(s0)
	lw	a2, -44(s0)
	mulw	a1, a1, a2
	addw	a1, a1, a0
	lw	a0, -52(s0)
	addw	a0, a0, a1
	sw	a0, -52(s0)
	ld	a0, -56(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end150:
	.size	__muldi3_compiler_rt, .Lfunc_end150-__muldi3_compiler_rt
                                        # -- End function
	.globl	__mulddi3                       # -- Begin function __mulddi3
	.p2align	1
	.type	__mulddi3,@function
__mulddi3:                              # @__mulddi3
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	li	a0, 32
	sw	a0, -52(s0)
	li	a0, -1
	srli	a0, a0, 32
	sd	a0, -64(s0)
	lwu	a0, -24(s0)
	lwu	a1, -32(s0)
	mul	a0, a0, a1
	sd	a0, -48(s0)
	lwu	a0, -44(s0)
	sd	a0, -72(s0)
	lwu	a0, -48(s0)
	sd	a0, -48(s0)
	lwu	a0, -20(s0)
	lwu	a1, -32(s0)
	mul	a1, a0, a1
	ld	a0, -72(s0)
	add	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -72(s0)
	slli	a1, a0, 32
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	lwu	a0, -68(s0)
	sd	a0, -40(s0)
	lwu	a0, -44(s0)
	sd	a0, -72(s0)
	lwu	a0, -48(s0)
	sd	a0, -48(s0)
	lwu	a0, -28(s0)
	lwu	a1, -24(s0)
	mul	a1, a0, a1
	ld	a0, -72(s0)
	add	a0, a0, a1
	sd	a0, -72(s0)
	ld	a0, -72(s0)
	slli	a1, a0, 32
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -48(s0)
	lwu	a1, -68(s0)
	ld	a0, -40(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	lwu	a0, -20(s0)
	lwu	a1, -28(s0)
	mul	a1, a0, a1
	ld	a0, -40(s0)
	add	a0, a0, a1
	sd	a0, -40(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end151:
	.size	__mulddi3, .Lfunc_end151-__mulddi3
                                        # -- End function
	.globl	__multi3                        # -- Begin function __multi3
	.p2align	1
	.type	__multi3,@function
__multi3:                               # @__multi3
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	sd	a3, -40(s0)
	sd	a2, -48(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -56(s0)
	sd	a0, -64(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	ld	a0, -64(s0)
	ld	a1, -80(s0)
	call	__mulddi3
	sd	a1, -88(s0)
	sd	a0, -96(s0)
	ld	a0, -56(s0)
	ld	a1, -80(s0)
	mul	a0, a0, a1
	ld	a1, -64(s0)
	ld	a2, -72(s0)
	mul	a1, a1, a2
	add	a1, a1, a0
	ld	a0, -88(s0)
	add	a0, a0, a1
	sd	a0, -88(s0)
	ld	a0, -96(s0)
	ld	a1, -88(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end152:
	.size	__multi3, .Lfunc_end152-__multi3
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	1
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	ld	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end153:
	.size	__negdi2, .Lfunc_end153-__negdi2
                                        # -- End function
	.globl	__negti2                        # -- Begin function __negti2
	.p2align	1
	.type	__negti2,@function
__negti2:                               # @__negti2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	ld	a2, -24(s0)
	ld	a3, -32(s0)
	li	a1, 0
	sub	a0, a1, a3
	snez	a3, a3
	add	a2, a2, a3
	sub	a1, a1, a2
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end154:
	.size	__negti2, .Lfunc_end154-__negti2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	1
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, -36(s0)
	lwu	a0, -36(s0)
	andi	a1, a0, 15
	lui	a0, 7
	addiw	a0, a0, -1642
	srlw	a0, a0, a1
	andi	a0, a0, 1
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end155:
	.size	__paritydi2, .Lfunc_end155-__paritydi2
                                        # -- End function
	.globl	__parityti2                     # -- Begin function __parityti2
	.p2align	1
	.type	__parityti2,@function
__parityti2:                            # @__parityti2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	ld	a1, -48(s0)
	xor	a0, a0, a1
	sd	a0, -56(s0)
	lw	a0, -52(s0)
	lw	a1, -56(s0)
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, -60(s0)
	lwu	a0, -60(s0)
	andi	a1, a0, 15
	lui	a0, 7
	addiw	a0, a0, -1642
	srlw	a0, a0, a1
	andi	a0, a0, 1
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end156:
	.size	__parityti2, .Lfunc_end156-__parityti2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	1
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, -24(s0)
	lwu	a0, -24(s0)
	andi	a1, a0, 15
	lui	a0, 7
	addiw	a0, a0, -1642
	srlw	a0, a0, a1
	andi	a0, a0, 1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end157:
	.size	__paritysi2, .Lfunc_end157-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	1
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
	sd	a0, -24(s0)
	ld	a0, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a1, a1, a2
	sub	a0, a0, a1
	sd	a0, -32(s0)
	ld	a1, -32(s0)
	srli	a0, a1, 2
	lui	a2, 209715
	addiw	a2, a2, 819
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a0, a0, a2
	and	a1, a1, a2
	add	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	slli	a2, a1, 32
	add	a1, a1, a2
	and	a0, a0, a1
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	srli	a1, a0, 32
	addw	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srliw	a1, a0, 16
	addw	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -36(s0)
	srli	a1, a0, 8
	addw	a0, a0, a1
	andi	a0, a0, 127
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end158:
	.size	__popcountdi2, .Lfunc_end158-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	1
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x11 killed $x10
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srli	a1, a0, 1
	lui	a2, 349525
	addiw	a2, a2, 1365
	and	a1, a1, a2
	subw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -24(s0)
	srli	a0, a1, 2
	lui	a2, 209715
	addiw	a2, a2, 819
	and	a0, a0, a2
	and	a1, a1, a2
	addw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srli	a1, a0, 4
	addw	a0, a0, a1
	lui	a1, 61681
	addiw	a1, a1, -241
	and	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srliw	a1, a0, 16
	addw	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	srli	a1, a0, 8
	addw	a0, a0, a1
	andi	a0, a0, 63
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end159:
	.size	__popcountsi2, .Lfunc_end159-__popcountsi2
                                        # -- End function
	.globl	__popcountti2                   # -- Begin function __popcountti2
	.p2align	1
	.type	__popcountti2,@function
__popcountti2:                          # @__popcountti2
# %bb.0:
	addi	sp, sp, -80
	sd	ra, 72(sp)                      # 8-byte Folded Spill
	sd	s0, 64(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 80
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a1, -24(s0)
	sd	a0, -32(s0)
	ld	a0, -32(s0)
	ld	a1, -24(s0)
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	sd	a0, -80(s0)                     # 8-byte Folded Spill
	ld	a1, -48(s0)
	srli	a2, a1, 1
	srli	ra, a0, 1
	lui	a0, 349525
	addiw	a3, a0, 1365
	slli	a0, a3, 32
	add	a3, a3, a0
	ld	a0, -80(s0)                     # 8-byte Folded Reload
	and	ra, ra, a3
	and	a2, a2, a3
	sltu	a3, a1, a2
	sub	a0, a0, ra
	sub	a0, a0, a3
	sub	a1, a1, a2
	sd	a1, -48(s0)
	sd	a0, -40(s0)
	ld	a1, -48(s0)
	ld	a3, -40(s0)
	srli	a0, a3, 2
	sd	a0, -72(s0)                     # 8-byte Folded Spill
	srli	a2, a1, 2
	lui	a0, 209715
	addiw	ra, a0, 819
	slli	a0, ra, 32
	add	ra, ra, a0
	ld	a0, -72(s0)                     # 8-byte Folded Reload
	and	a2, a2, ra
	and	a0, a0, ra
	and	a1, a1, ra
	and	a3, a3, ra
	add	a0, a0, a3
	add	a1, a1, a2
	sltu	a2, a1, a2
	add	a0, a0, a2
	sd	a1, -48(s0)
	sd	a0, -40(s0)
	ld	a2, -48(s0)
	ld	a0, -40(s0)
	slli	a3, a0, 60
	srli	a1, a2, 4
	or	a1, a1, a3
	srli	a3, a0, 4
	add	a0, a0, a3
	add	a1, a1, a2
	sltu	a2, a1, a2
	add	a0, a0, a2
	lui	a2, 61681
	addiw	a2, a2, -241
	slli	a3, a2, 32
	add	a2, a2, a3
	and	a0, a0, a2
	and	a1, a1, a2
	sd	a1, -48(s0)
	sd	a0, -40(s0)
	ld	a1, -40(s0)
	ld	a0, -48(s0)
	add	a0, a0, a1
	sd	a0, -56(s0)
	ld	a0, -56(s0)
	srli	a1, a0, 32
	addw	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srliw	a1, a0, 16
	addw	a0, a0, a1
	sw	a0, -60(s0)
	lw	a0, -60(s0)
	srli	a1, a0, 8
	addw	a0, a0, a1
	andi	a0, a0, 255
	ld	ra, 72(sp)                      # 8-byte Folded Reload
	ld	s0, 64(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 80
	ret
.Lfunc_end160:
	.size	__popcountti2, .Lfunc_end160-__popcountti2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	1
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sd	a0, -24(s0)
	sw	a1, -28(s0)
	lwu	a0, -28(s0)
	srli	a0, a0, 31
	sw	a0, -32(s0)
	li	a0, 1023
	slli	a0, a0, 52
	sd	a0, -40(s0)
	j	.LBB161_1
.LBB161_1:                              # =>This Inner Loop Header: Depth=1
	lbu	a0, -28(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB161_3
	j	.LBB161_2
.LBB161_2:                              #   in Loop: Header=BB161_1 Depth=1
	ld	a1, -24(s0)
	ld	a0, -40(s0)
	call	__muldf3
	sd	a0, -40(s0)
	j	.LBB161_3
.LBB161_3:                              #   in Loop: Header=BB161_1 Depth=1
	lw	a0, -28(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	bnez	a0, .LBB161_5
	j	.LBB161_4
.LBB161_4:
	j	.LBB161_6
.LBB161_5:                              #   in Loop: Header=BB161_1 Depth=1
	ld	a1, -24(s0)
	mv	a0, a1
	call	__muldf3
	sd	a0, -24(s0)
	j	.LBB161_1
.LBB161_6:
	lw	a0, -32(s0)
	beqz	a0, .LBB161_8
	j	.LBB161_7
.LBB161_7:
	ld	a1, -40(s0)
	li	a0, 1023
	slli	a0, a0, 52
	call	__divdf3
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB161_9
.LBB161_8:
	ld	a0, -40(s0)
	sd	a0, -48(s0)                     # 8-byte Folded Spill
	j	.LBB161_9
.LBB161_9:
	ld	a0, -48(s0)                     # 8-byte Folded Reload
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end161:
	.size	__powidf2, .Lfunc_end161-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	1
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
# %bb.0:
	addi	sp, sp, -48
	sd	ra, 40(sp)                      # 8-byte Folded Spill
	sd	s0, 32(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 48
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lwu	a0, -24(s0)
	srli	a0, a0, 31
	sw	a0, -28(s0)
	lui	a0, 260096
	sw	a0, -32(s0)
	j	.LBB162_1
.LBB162_1:                              # =>This Inner Loop Header: Depth=1
	lbu	a0, -24(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB162_3
	j	.LBB162_2
.LBB162_2:                              #   in Loop: Header=BB162_1 Depth=1
	lw	a1, -20(s0)
	lw	a0, -32(s0)
	call	__mulsf3
	sw	a0, -32(s0)
	j	.LBB162_3
.LBB162_3:                              #   in Loop: Header=BB162_1 Depth=1
	lw	a0, -24(s0)
	srliw	a1, a0, 31
	addw	a0, a0, a1
	sraiw	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB162_5
	j	.LBB162_4
.LBB162_4:
	j	.LBB162_6
.LBB162_5:                              #   in Loop: Header=BB162_1 Depth=1
	lw	a1, -20(s0)
	mv	a0, a1
	call	__mulsf3
	sw	a0, -20(s0)
	j	.LBB162_1
.LBB162_6:
	lw	a0, -28(s0)
	beqz	a0, .LBB162_8
	j	.LBB162_7
.LBB162_7:
	lw	a1, -32(s0)
	lui	a0, 260096
	call	__divsf3
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB162_9
.LBB162_8:
	lw	a0, -32(s0)
	sd	a0, -40(s0)                     # 8-byte Folded Spill
	j	.LBB162_9
.LBB162_9:
	ld	a0, -40(s0)                     # 8-byte Folded Reload
	ld	ra, 40(sp)                      # 8-byte Folded Reload
	ld	s0, 32(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end162:
	.size	__powisf2, .Lfunc_end162-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	1
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
# %bb.0:
	addi	sp, sp, -64
	sd	ra, 56(sp)                      # 8-byte Folded Spill
	sd	s0, 48(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 64
	sd	a0, -32(s0)
	sd	a1, -40(s0)
	ld	a0, -32(s0)
	sd	a0, -48(s0)
	ld	a0, -40(s0)
	sd	a0, -56(s0)
	lw	a0, -44(s0)
	lw	a1, -52(s0)
	bgeu	a0, a1, .LBB163_2
	j	.LBB163_1
.LBB163_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_2:
	lw	a1, -44(s0)
	lw	a0, -52(s0)
	bgeu	a0, a1, .LBB163_4
	j	.LBB163_3
.LBB163_3:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_4:
	lw	a0, -48(s0)
	lw	a1, -56(s0)
	bgeu	a0, a1, .LBB163_6
	j	.LBB163_5
.LBB163_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_6:
	lw	a1, -48(s0)
	lw	a0, -56(s0)
	bgeu	a0, a1, .LBB163_8
	j	.LBB163_7
.LBB163_7:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_8:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB163_9
.LBB163_9:
	lw	a0, -20(s0)
	ld	ra, 56(sp)                      # 8-byte Folded Reload
	ld	s0, 48(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end163:
	.size	__ucmpdi2, .Lfunc_end163-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	1
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
# %bb.0:
	addi	sp, sp, -32
	sd	ra, 24(sp)                      # 8-byte Folded Spill
	sd	s0, 16(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 32
	sd	a0, -24(s0)
	sd	a1, -32(s0)
	ld	a0, -24(s0)
	ld	a1, -32(s0)
	call	__ucmpdi2
	addiw	a0, a0, -1
	ld	ra, 24(sp)                      # 8-byte Folded Reload
	ld	s0, 16(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end164:
	.size	__aeabi_ulcmp, .Lfunc_end164-__aeabi_ulcmp
                                        # -- End function
	.globl	__ucmpti2                       # -- Begin function __ucmpti2
	.p2align	1
	.type	__ucmpti2,@function
__ucmpti2:                              # @__ucmpti2
# %bb.0:
	addi	sp, sp, -96
	sd	ra, 88(sp)                      # 8-byte Folded Spill
	sd	s0, 80(sp)                      # 8-byte Folded Spill
	addi	s0, sp, 96
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sd	a1, -40(s0)
	sd	a0, -48(s0)
	sd	a3, -56(s0)
	sd	a2, -64(s0)
	ld	a0, -48(s0)
	ld	a1, -40(s0)
	sd	a1, -72(s0)
	sd	a0, -80(s0)
	ld	a0, -64(s0)
	ld	a1, -56(s0)
	sd	a1, -88(s0)
	sd	a0, -96(s0)
	ld	a0, -72(s0)
	ld	a1, -88(s0)
	bgeu	a0, a1, .LBB165_2
	j	.LBB165_1
.LBB165_1:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_2:
	ld	a1, -72(s0)
	ld	a0, -88(s0)
	bgeu	a0, a1, .LBB165_4
	j	.LBB165_3
.LBB165_3:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_4:
	ld	a0, -80(s0)
	ld	a1, -96(s0)
	bgeu	a0, a1, .LBB165_6
	j	.LBB165_5
.LBB165_5:
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_6:
	ld	a1, -80(s0)
	ld	a0, -96(s0)
	bgeu	a0, a1, .LBB165_8
	j	.LBB165_7
.LBB165_7:
	li	a0, 2
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_8:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB165_9
.LBB165_9:
	lw	a0, -20(s0)
	ld	ra, 88(sp)                      # 8-byte Folded Reload
	ld	s0, 80(sp)                      # 8-byte Folded Reload
	addi	sp, sp, 96
	ret
.Lfunc_end165:
	.size	__ucmpti2, .Lfunc_end165-__ucmpti2
                                        # -- End function
	.type	l64a.s,@object                  # @l64a.s
	.section	.sbss,"aw",@nobits
l64a.s:
	.zero	7
	.size	l64a.s, 7

	.type	digits,@object                  # @digits
	.section	.rodata,"a",@progbits
digits:
	.asciz	"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
	.size	digits, 65

	.type	seed,@object                    # @seed
	.section	.sbss,"aw",@nobits
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
