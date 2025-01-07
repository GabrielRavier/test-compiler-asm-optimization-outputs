	.text
	.attribute	4, 4
	.attribute	5, "rv32e2p0"
	.file	"mini-libc.c"
	.globl	memmove                         # -- Begin function memmove
	.p2align	2
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	bgeu	a0, a1, .LBB0_6
	j	.LBB0_1
.LBB0_1:
	lw	a1, -20(s0)
	lw	a0, -28(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB0_2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB0_5
	j	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	lw	a0, -28(s0)
	addi	a1, a0, -1
	sw	a1, -28(s0)
	lbu	a0, -1(a0)
	lw	a1, -24(s0)
	addi	a2, a1, -1
	sw	a2, -24(s0)
	sb	a0, -1(a1)
	j	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB0_2
.LBB0_5:
	j	.LBB0_13
.LBB0_6:
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	beq	a0, a1, .LBB0_12
	j	.LBB0_7
.LBB0_7:
	j	.LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB0_11
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	lw	a0, -28(s0)
	addi	a1, a0, 1
	sw	a1, -28(s0)
	lbu	a0, 0(a0)
	lw	a1, -24(s0)
	addi	a2, a1, 1
	sw	a2, -24(s0)
	sb	a0, 0(a1)
	j	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB0_8
.LBB0_11:
	j	.LBB0_12
.LBB0_12:
	j	.LBB0_13
.LBB0_13:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	2
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	sw	a3, -28(s0)
	lw	a0, -16(s0)
	sw	a0, -32(s0)
	lw	a0, -20(s0)
	sw	a0, -36(s0)
	lbu	a0, -24(s0)
	sw	a0, -24(s0)
	j	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	li	a1, 0
	sw	a1, -40(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB1_3
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -36(s0)
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	sb	a0, 0(a1)
	lw	a1, -24(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sw	a0, -40(s0)                     # 4-byte Folded Spill
	j	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -40(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB1_6
	j	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	j	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, -1
	sw	a0, -28(s0)
	lw	a0, -36(s0)
	addi	a0, a0, 1
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB1_1
.LBB1_6:
	lw	a0, -28(s0)
	beqz	a0, .LBB1_8
	j	.LBB1_7
.LBB1_7:
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB1_9
.LBB1_8:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB1_9
.LBB1_9:
	lw	a0, -12(s0)
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lbu	a0, -16(s0)
	sw	a0, -16(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB2_3
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB2_6
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	j	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB2_1
.LBB2_6:
	lw	a0, -20(s0)
	beqz	a0, .LBB2_8
	j	.LBB2_7
.LBB2_7:
	lw	a0, -24(s0)
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB2_9
.LBB2_8:
	li	a0, 0
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB2_9
.LBB2_9:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB3_3
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	lbu	a1, 0(a1)
	xor	a0, a0, a1
	seqz	a0, a0
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB3_6
	j	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB3_1
.LBB3_6:
	lw	a0, -20(s0)
	beqz	a0, .LBB3_8
	j	.LBB3_7
.LBB3_7:
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB3_9
.LBB3_8:
	li	a0, 0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB3_9
.LBB3_9:
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	j	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB4_4
	j	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -28(s0)
	addi	a1, a0, 1
	sw	a1, -28(s0)
	lbu	a0, 0(a0)
	lw	a1, -24(s0)
	addi	a2, a1, 1
	sw	a2, -24(s0)
	sb	a0, 0(a1)
	j	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB4_1
.LBB4_4:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	2
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lbu	a0, -20(s0)
	sw	a0, -20(s0)
	j	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, -1
	sw	a1, -24(s0)
	beqz	a0, .LBB5_5
	j	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a1, -20(s0)
	bne	a0, a1, .LBB5_4
	j	.LBB5_3
.LBB5_3:
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	sw	a0, -12(s0)
	j	.LBB5_6
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	j	.LBB5_1
.LBB5_5:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB5_6
.LBB5_6:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	2
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	j	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB6_4
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	sb	a0, 0(a1)
	j	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB6_1
.LBB6_4:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	2
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	lw	a1, -12(s0)
	sb	a0, 0(a1)
	beqz	a0, .LBB7_4
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	j	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB7_1
.LBB7_4:
	lw	a0, -12(s0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	2
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lbu	a0, -16(s0)
	sw	a0, -16(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB8_3
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB8_6
	j	.LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	j	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB8_1
.LBB8_6:
	lw	a0, -12(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	2
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	j	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	lw	a1, -20(s0)
	bne	a0, a1, .LBB9_3
	j	.LBB9_2
.LBB9_2:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB9_6
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	j	.LBB9_4
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	lw	a0, -16(s0)
	addi	a1, a0, 1
	sw	a1, -16(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB9_1
	j	.LBB9_5
.LBB9_5:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB9_6
.LBB9_6:
	lw	a0, -12(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	2
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	lbu	a1, 0(a1)
	li	a2, 0
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB10_3
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	snez	a0, a0
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB10_6
	j	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	j	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB10_1
.LBB10_6:
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	j	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB11_4
	j	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	j	.LBB11_3
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB11_1
.LBB11_4:
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	sub	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	2
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	sw	a0, -32(s0)
	lw	a0, -24(s0)
	addi	a1, a0, -1
	sw	a1, -24(s0)
	bnez	a0, .LBB12_2
	j	.LBB12_1
.LBB12_1:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB12_11
.LBB12_2:
	j	.LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB12_7
	j	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_3 Depth=1
	lw	a0, -32(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB12_7
	j	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_3 Depth=1
	lw	a0, -24(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB12_7
	j	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
	lw	a0, -28(s0)
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	lbu	a1, 0(a1)
	xor	a0, a0, a1
	seqz	a0, a0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB12_10
	j	.LBB12_8
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
	j	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
	lw	a0, -28(s0)
	addi	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	lw	a0, -24(s0)
	addi	a0, a0, -1
	sw	a0, -24(s0)
	j	.LBB12_3
.LBB12_10:
	lw	a0, -28(s0)
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	sw	a0, -12(s0)
	j	.LBB12_11
.LBB12_11:
	lw	a0, -12(s0)
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	2
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	j	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 2
	blt	a0, a1, .LBB13_4
	j	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	lw	a0, -24(s0)
	lbu	a0, 1(a0)
	lw	a1, -28(s0)
	sb	a0, 0(a1)
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	sb	a0, 1(a1)
	lw	a0, -28(s0)
	addi	a0, a0, 2
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 2
	sw	a0, -24(s0)
	j	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -2
	sw	a0, -20(s0)
	j	.LBB13_1
.LBB13_4:
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	2
	.type	isalpha,@function
isalpha:                                # @isalpha
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	ori	a0, a0, 32
	addi	a0, a0, -97
	sltiu	a0, a0, 26
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	2
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	andi	a0, a0, -128
	seqz	a0, a0
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	2
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB16_2
	j	.LBB16_1
.LBB16_1:
	lw	a0, -12(s0)
	addi	a0, a0, -9
	seqz	a0, a0
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB16_2
.LBB16_2:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB17_2
	j	.LBB17_1
.LBB17_1:
	lw	a0, -12(s0)
	addi	a0, a0, -127
	seqz	a0, a0
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB17_2
.LBB17_2:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	2
	.type	isdigit,@function
isdigit:                                # @isdigit
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -48
	sltiu	a0, a0, 10
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	2
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -33
	sltiu	a0, a0, 94
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	2
	.type	islower,@function
islower:                                # @islower
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -97
	sltiu	a0, a0, 26
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	2
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -32
	sltiu	a0, a0, 95
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	2
	.type	isspace,@function
isspace:                                # @isspace
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB22_2
	j	.LBB22_1
.LBB22_1:
	lw	a0, -12(s0)
	addi	a0, a0, -9
	sltiu	a0, a0, 5
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB22_2
.LBB22_2:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	2
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -65
	sltiu	a0, a0, 26
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	2
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB24_4
	j	.LBB24_1
.LBB24_1:
	lw	a0, -12(s0)
	addi	a0, a0, -127
	li	a2, 1
	li	a1, 33
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB24_4
	j	.LBB24_2
.LBB24_2:
	lw	a0, -12(s0)
	lui	a1, 1048574
	addi	a1, a1, -40
	add	a0, a0, a1
	li	a2, 1
	li	a1, 2
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB24_4
	j	.LBB24_3
.LBB24_3:
	lw	a0, -12(s0)
	lui	a1, 1048560
	addi	a1, a1, 7
	add	a0, a0, a1
	sltiu	a0, a0, 3
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB24_4
.LBB24_4:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	2
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -48
	sltiu	a0, a0, 10
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	2
	.type	iswprint,@function
iswprint:                               # @iswprint
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	li	a0, 254
	bltu	a0, a1, .LBB26_2
	j	.LBB26_1
.LBB26_1:
	lw	a0, -16(s0)
	addi	a0, a0, 1
	andi	a0, a0, 127
	sltiu	a0, a0, 33
	xori	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB26_10
.LBB26_2:
	lw	a0, -16(s0)
	srli	a0, a0, 3
	li	a1, 1029
	bltu	a0, a1, .LBB26_5
	j	.LBB26_3
.LBB26_3:
	lw	a0, -16(s0)
	lui	a1, 1048574
	addi	a1, a1, -42
	add	a0, a0, a1
	lui	a1, 11
	addi	a1, a1, 2006
	bltu	a0, a1, .LBB26_5
	j	.LBB26_4
.LBB26_4:
	lw	a0, -16(s0)
	lui	a1, 1048562
	add	a1, a0, a1
	lui	a0, 2
	addi	a0, a0, -8
	bltu	a0, a1, .LBB26_6
	j	.LBB26_5
.LBB26_5:
	li	a0, 1
	sw	a0, -12(s0)
	j	.LBB26_10
.LBB26_6:
	lw	a0, -16(s0)
	lui	a1, 1048560
	addi	a1, a1, 4
	add	a1, a0, a1
	lui	a0, 256
	addi	a0, a0, 3
	bltu	a0, a1, .LBB26_8
	j	.LBB26_7
.LBB26_7:
	lw	a0, -16(s0)
	lui	a1, 16
	addi	a1, a1, -2
	and	a0, a0, a1
	bne	a0, a1, .LBB26_9
	j	.LBB26_8
.LBB26_8:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB26_10
.LBB26_9:
	li	a0, 1
	sw	a0, -12(s0)
	j	.LBB26_10
.LBB26_10:
	lw	a0, -12(s0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	2
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -48
	li	a2, 1
	li	a1, 10
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB27_2
	j	.LBB27_1
.LBB27_1:
	lw	a0, -12(s0)
	ori	a0, a0, 32
	addi	a0, a0, -97
	sltiu	a0, a0, 6
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB27_2
.LBB27_2:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	2
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	andi	a0, a0, 127
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	2
	.type	fdim,@function
fdim:                                   # @fdim
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 64
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 44(sp)
	sw	a0, 40(sp)
	sw	a3, 36(sp)
	sw	a2, 32(sp)
	lw	a2, 40(sp)
	lw	a0, 44(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a0, a1
	sw	a3, 24(sp)                      # 4-byte Folded Spill
	seqz	a2, a2
	sw	a2, 28(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB29_2
# %bb.1:
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a0, 28(sp)                      # 4-byte Folded Spill
.LBB29_2:
	lw	a0, 28(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB29_4
	j	.LBB29_3
.LBB29_3:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	j	.LBB29_12
.LBB29_4:
	lw	a2, 32(sp)
	lw	a0, 36(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a0, a1
	sw	a3, 16(sp)                      # 4-byte Folded Spill
	seqz	a2, a2
	sw	a2, 20(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB29_6
# %bb.5:
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 20(sp)                      # 4-byte Folded Spill
.LBB29_6:
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB29_8
	j	.LBB29_7
.LBB29_7:
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	j	.LBB29_12
.LBB29_8:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	lw	a2, 32(sp)
	lw	a3, 36(sp)
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB29_10
	j	.LBB29_9
.LBB29_9:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	lw	a2, 32(sp)
	lw	a3, 36(sp)
	call	__subdf3
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	mv	a0, a1
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB29_11
.LBB29_10:
	li	a1, 0
	mv	a0, a1
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB29_11
.LBB29_11:
	lw	a1, 8(sp)                       # 4-byte Folded Reload
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	j	.LBB29_12
.LBB29_12:
	lw	a0, 48(sp)
	lw	a1, 52(sp)
	addi	sp, s0, -64
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	2
	.type	fdimf,@function
fdimf:                                  # @fdimf
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB30_2
	j	.LBB30_1
.LBB30_1:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB30_8
.LBB30_2:
	lw	a0, -20(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB30_4
	j	.LBB30_3
.LBB30_3:
	lw	a0, -20(s0)
	sw	a0, -12(s0)
	j	.LBB30_8
.LBB30_4:
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB30_6
	j	.LBB30_5
.LBB30_5:
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	__subsf3
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB30_7
.LBB30_6:
	li	a0, 0
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB30_7
.LBB30_7:
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	sw	a0, -12(s0)
	j	.LBB30_8
.LBB30_8:
	lw	a0, -12(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	2
	.type	fmax,@function
fmax:                                   # @fmax
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 64
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 44(sp)
	sw	a0, 40(sp)
	sw	a3, 36(sp)
	sw	a2, 32(sp)
	lw	a2, 40(sp)
	lw	a0, 44(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a0, a1
	sw	a3, 24(sp)                      # 4-byte Folded Spill
	seqz	a2, a2
	sw	a2, 28(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB31_2
# %bb.1:
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a0, 28(sp)                      # 4-byte Folded Spill
.LBB31_2:
	lw	a0, 28(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB31_4
	j	.LBB31_3
.LBB31_3:
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	j	.LBB31_17
.LBB31_4:
	lw	a2, 32(sp)
	lw	a0, 36(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a0, a1
	sw	a3, 16(sp)                      # 4-byte Folded Spill
	seqz	a2, a2
	sw	a2, 20(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB31_6
# %bb.5:
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 20(sp)                      # 4-byte Folded Spill
.LBB31_6:
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB31_8
	j	.LBB31_7
.LBB31_7:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	j	.LBB31_17
.LBB31_8:
	lw	a0, 44(sp)
	srli	a0, a0, 31
	lw	a1, 36(sp)
	srli	a1, a1, 31
	beq	a0, a1, .LBB31_13
	j	.LBB31_9
.LBB31_9:
	lw	a0, 44(sp)
	bgez	a0, .LBB31_11
	j	.LBB31_10
.LBB31_10:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB31_12
.LBB31_11:
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB31_12
.LBB31_12:
	lw	a1, 8(sp)                       # 4-byte Folded Reload
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	j	.LBB31_17
.LBB31_13:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	lw	a2, 32(sp)
	lw	a3, 36(sp)
	call	__ltdf2
	bgez	a0, .LBB31_15
	j	.LBB31_14
.LBB31_14:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB31_16
.LBB31_15:
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB31_16
.LBB31_16:
	lw	a1, 0(sp)                       # 4-byte Folded Reload
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	j	.LBB31_17
.LBB31_17:
	lw	a0, 48(sp)
	lw	a1, 52(sp)
	addi	sp, s0, -64
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	2
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB32_2
	j	.LBB32_1
.LBB32_1:
	lw	a0, -20(s0)
	sw	a0, -12(s0)
	j	.LBB32_13
.LBB32_2:
	lw	a0, -20(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB32_4
	j	.LBB32_3
.LBB32_3:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB32_13
.LBB32_4:
	lw	a0, -16(s0)
	srli	a0, a0, 31
	lw	a1, -20(s0)
	srli	a1, a1, 31
	beq	a0, a1, .LBB32_9
	j	.LBB32_5
.LBB32_5:
	lw	a0, -16(s0)
	bgez	a0, .LBB32_7
	j	.LBB32_6
.LBB32_6:
	lw	a0, -20(s0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB32_8
.LBB32_7:
	lw	a0, -16(s0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB32_8
.LBB32_8:
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	sw	a0, -12(s0)
	j	.LBB32_13
.LBB32_9:
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	__ltsf2
	bgez	a0, .LBB32_11
	j	.LBB32_10
.LBB32_10:
	lw	a0, -20(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB32_12
.LBB32_11:
	lw	a0, -16(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB32_12
.LBB32_12:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	sw	a0, -12(s0)
	j	.LBB32_13
.LBB32_13:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	2
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
# %bb.0:
	addi	sp, sp, -192
	sw	ra, 188(sp)                     # 4-byte Folded Spill
	sw	s0, 184(sp)                     # 4-byte Folded Spill
	addi	s0, sp, 192
	andi	sp, sp, -16
	mv	a3, a2
	sw	a1, 56(sp)                      # 4-byte Folded Spill
	mv	a1, a0
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	sw	a1, 60(sp)                      # 4-byte Folded Spill
	lw	a1, 0(a3)
	sw	a1, 80(sp)                      # 4-byte Folded Spill
	lw	a1, 4(a3)
	lw	a2, 8(a3)
	lw	a3, 12(a3)
	lw	ra, 0(a0)
	lw	a0, 4(a0)
	sw	a0, 76(sp)                      # 4-byte Folded Spill
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	lw	a0, 8(a0)
	sw	a0, 72(sp)                      # 4-byte Folded Spill
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	lw	a0, 12(a0)
	sw	a0, 68(sp)                      # 4-byte Folded Spill
	lw	a0, 60(sp)                      # 4-byte Folded Reload
	sw	a0, 64(sp)                      # 4-byte Folded Spill
	lw	a0, 68(sp)                      # 4-byte Folded Reload
	sw	a0, 156(sp)
	lw	a0, 72(sp)                      # 4-byte Folded Reload
	sw	a0, 152(sp)
	lw	a0, 76(sp)                      # 4-byte Folded Reload
	sw	a0, 148(sp)
	lw	a0, 80(sp)                      # 4-byte Folded Reload
	sw	ra, 144(sp)
	sw	a3, 140(sp)
	sw	a2, 136(sp)
	sw	a1, 132(sp)
	sw	a0, 128(sp)
	lw	a2, 144(sp)
	lw	a1, 148(sp)
	lw	a0, 152(sp)
	sw	a0, 88(sp)                      # 4-byte Folded Spill
	lw	a0, 156(sp)
	slli	a0, a0, 1
	srli	a3, a0, 1
	lui	ra, 524272
	slt	a0, a3, ra
	sw	a0, 84(sp)                      # 4-byte Folded Spill
	lw	a0, 88(sp)                      # 4-byte Folded Reload
	xor	a3, a3, ra
	or	a0, a0, a3
	or	a1, a1, a2
	seqz	a1, a1
	sw	a1, 92(sp)                      # 4-byte Folded Spill
	beqz	a0, .LBB33_2
# %bb.1:
	lw	a0, 84(sp)                      # 4-byte Folded Reload
	sw	a0, 92(sp)                      # 4-byte Folded Spill
.LBB33_2:
	lw	a0, 92(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB33_4
	j	.LBB33_3
.LBB33_3:
	lw	a0, 128(sp)
	lw	a1, 132(sp)
	lw	a2, 136(sp)
	lw	a3, 140(sp)
	sw	a3, 172(sp)
	sw	a2, 168(sp)
	sw	a1, 164(sp)
	sw	a0, 160(sp)
	j	.LBB33_17
.LBB33_4:
	lw	a2, 128(sp)
	lw	a1, 132(sp)
	lw	a0, 136(sp)
	sw	a0, 48(sp)                      # 4-byte Folded Spill
	lw	a0, 140(sp)
	slli	a0, a0, 1
	srli	a3, a0, 1
	lui	ra, 524272
	slt	a0, a3, ra
	sw	a0, 44(sp)                      # 4-byte Folded Spill
	lw	a0, 48(sp)                      # 4-byte Folded Reload
	xor	a3, a3, ra
	or	a0, a0, a3
	or	a1, a1, a2
	seqz	a1, a1
	sw	a1, 52(sp)                      # 4-byte Folded Spill
	beqz	a0, .LBB33_6
# %bb.5:
	lw	a0, 44(sp)                      # 4-byte Folded Reload
	sw	a0, 52(sp)                      # 4-byte Folded Spill
.LBB33_6:
	lw	a0, 52(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB33_8
	j	.LBB33_7
.LBB33_7:
	lw	a0, 144(sp)
	lw	a1, 148(sp)
	lw	a2, 152(sp)
	lw	a3, 156(sp)
	sw	a3, 172(sp)
	sw	a2, 168(sp)
	sw	a1, 164(sp)
	sw	a0, 160(sp)
	j	.LBB33_17
.LBB33_8:
	lw	a0, 156(sp)
	srli	a0, a0, 31
	lw	a1, 140(sp)
	srli	a1, a1, 31
	beq	a0, a1, .LBB33_13
	j	.LBB33_9
.LBB33_9:
	lw	a0, 156(sp)
	bgez	a0, .LBB33_11
	j	.LBB33_10
.LBB33_10:
	lw	a0, 140(sp)
	lw	a1, 136(sp)
	lw	a2, 132(sp)
	lw	a3, 128(sp)
	sw	a3, 28(sp)                      # 4-byte Folded Spill
	sw	a2, 32(sp)                      # 4-byte Folded Spill
	sw	a1, 36(sp)                      # 4-byte Folded Spill
	sw	a0, 40(sp)                      # 4-byte Folded Spill
	j	.LBB33_12
.LBB33_11:
	lw	a0, 156(sp)
	lw	a1, 152(sp)
	lw	a2, 148(sp)
	lw	a3, 144(sp)
	sw	a3, 28(sp)                      # 4-byte Folded Spill
	sw	a2, 32(sp)                      # 4-byte Folded Spill
	sw	a1, 36(sp)                      # 4-byte Folded Spill
	sw	a0, 40(sp)                      # 4-byte Folded Spill
	j	.LBB33_12
.LBB33_12:
	lw	a3, 28(sp)                      # 4-byte Folded Reload
	lw	a2, 32(sp)                      # 4-byte Folded Reload
	lw	a1, 36(sp)                      # 4-byte Folded Reload
	lw	a0, 40(sp)                      # 4-byte Folded Reload
	sw	a3, 160(sp)
	sw	a2, 164(sp)
	sw	a1, 168(sp)
	sw	a0, 172(sp)
	j	.LBB33_17
.LBB33_13:
	lw	a0, 144(sp)
	sw	a0, 24(sp)                      # 4-byte Folded Spill
	lw	a1, 148(sp)
	lw	a2, 152(sp)
	lw	a3, 156(sp)
	lw	ra, 128(sp)
	lw	a0, 132(sp)
	sw	a0, 20(sp)                      # 4-byte Folded Spill
	lw	a0, 136(sp)
	sw	a0, 16(sp)                      # 4-byte Folded Spill
	lw	a0, 140(sp)
	sw	a0, 108(sp)
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 104(sp)
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	sw	a0, 100(sp)
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	ra, 96(sp)
	sw	a3, 124(sp)
	sw	a2, 120(sp)
	sw	a1, 116(sp)
	sw	a0, 112(sp)
	addi	a0, sp, 112
	addi	a1, sp, 96
	call	__lttf2
	bgez	a0, .LBB33_15
	j	.LBB33_14
.LBB33_14:
	lw	a0, 140(sp)
	lw	a1, 136(sp)
	lw	a2, 132(sp)
	lw	a3, 128(sp)
	sw	a3, 0(sp)                       # 4-byte Folded Spill
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB33_16
.LBB33_15:
	lw	a0, 156(sp)
	lw	a1, 152(sp)
	lw	a2, 148(sp)
	lw	a3, 144(sp)
	sw	a3, 0(sp)                       # 4-byte Folded Spill
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB33_16
.LBB33_16:
	lw	a3, 0(sp)                       # 4-byte Folded Reload
	lw	a2, 4(sp)                       # 4-byte Folded Reload
	lw	a1, 8(sp)                       # 4-byte Folded Reload
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a3, 160(sp)
	sw	a2, 164(sp)
	sw	a1, 168(sp)
	sw	a0, 172(sp)
	j	.LBB33_17
.LBB33_17:
	lw	a1, 64(sp)                      # 4-byte Folded Reload
	lw	a0, 160(sp)
	lw	a2, 164(sp)
	lw	a3, 168(sp)
	lw	ra, 172(sp)
	sw	ra, 12(a1)
	sw	a3, 8(a1)
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	addi	sp, s0, -192
	lw	ra, 188(sp)                     # 4-byte Folded Reload
	lw	s0, 184(sp)                     # 4-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	2
	.type	fmin,@function
fmin:                                   # @fmin
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 64
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 44(sp)
	sw	a0, 40(sp)
	sw	a3, 36(sp)
	sw	a2, 32(sp)
	lw	a2, 40(sp)
	lw	a0, 44(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a0, a1
	sw	a3, 24(sp)                      # 4-byte Folded Spill
	seqz	a2, a2
	sw	a2, 28(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB34_2
# %bb.1:
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a0, 28(sp)                      # 4-byte Folded Spill
.LBB34_2:
	lw	a0, 28(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB34_4
	j	.LBB34_3
.LBB34_3:
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	j	.LBB34_17
.LBB34_4:
	lw	a2, 32(sp)
	lw	a0, 36(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a0, a1
	sw	a3, 16(sp)                      # 4-byte Folded Spill
	seqz	a2, a2
	sw	a2, 20(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB34_6
# %bb.5:
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 20(sp)                      # 4-byte Folded Spill
.LBB34_6:
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB34_8
	j	.LBB34_7
.LBB34_7:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	j	.LBB34_17
.LBB34_8:
	lw	a0, 44(sp)
	srli	a0, a0, 31
	lw	a1, 36(sp)
	srli	a1, a1, 31
	beq	a0, a1, .LBB34_13
	j	.LBB34_9
.LBB34_9:
	lw	a0, 44(sp)
	bgez	a0, .LBB34_11
	j	.LBB34_10
.LBB34_10:
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB34_12
.LBB34_11:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB34_12
.LBB34_12:
	lw	a1, 8(sp)                       # 4-byte Folded Reload
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	j	.LBB34_17
.LBB34_13:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	lw	a2, 32(sp)
	lw	a3, 36(sp)
	call	__ltdf2
	bgez	a0, .LBB34_15
	j	.LBB34_14
.LBB34_14:
	lw	a0, 44(sp)
	lw	a1, 40(sp)
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB34_16
.LBB34_15:
	lw	a0, 36(sp)
	lw	a1, 32(sp)
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB34_16
.LBB34_16:
	lw	a1, 0(sp)                       # 4-byte Folded Reload
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	sw	a1, 48(sp)
	sw	a0, 52(sp)
	j	.LBB34_17
.LBB34_17:
	lw	a0, 48(sp)
	lw	a1, 52(sp)
	addi	sp, s0, -64
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	2
	.type	fminf,@function
fminf:                                  # @fminf
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB35_2
	j	.LBB35_1
.LBB35_1:
	lw	a0, -20(s0)
	sw	a0, -12(s0)
	j	.LBB35_13
.LBB35_2:
	lw	a0, -20(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB35_4
	j	.LBB35_3
.LBB35_3:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB35_13
.LBB35_4:
	lw	a0, -16(s0)
	srli	a0, a0, 31
	lw	a1, -20(s0)
	srli	a1, a1, 31
	beq	a0, a1, .LBB35_9
	j	.LBB35_5
.LBB35_5:
	lw	a0, -16(s0)
	bgez	a0, .LBB35_7
	j	.LBB35_6
.LBB35_6:
	lw	a0, -16(s0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB35_8
.LBB35_7:
	lw	a0, -20(s0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB35_8
.LBB35_8:
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	sw	a0, -12(s0)
	j	.LBB35_13
.LBB35_9:
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	__ltsf2
	bgez	a0, .LBB35_11
	j	.LBB35_10
.LBB35_10:
	lw	a0, -16(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB35_12
.LBB35_11:
	lw	a0, -20(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB35_12
.LBB35_12:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	sw	a0, -12(s0)
	j	.LBB35_13
.LBB35_13:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	2
	.type	fminl,@function
fminl:                                  # @fminl
# %bb.0:
	addi	sp, sp, -192
	sw	ra, 188(sp)                     # 4-byte Folded Spill
	sw	s0, 184(sp)                     # 4-byte Folded Spill
	addi	s0, sp, 192
	andi	sp, sp, -16
	mv	a3, a2
	sw	a1, 56(sp)                      # 4-byte Folded Spill
	mv	a1, a0
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	sw	a1, 60(sp)                      # 4-byte Folded Spill
	lw	a1, 0(a3)
	sw	a1, 80(sp)                      # 4-byte Folded Spill
	lw	a1, 4(a3)
	lw	a2, 8(a3)
	lw	a3, 12(a3)
	lw	ra, 0(a0)
	lw	a0, 4(a0)
	sw	a0, 76(sp)                      # 4-byte Folded Spill
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	lw	a0, 8(a0)
	sw	a0, 72(sp)                      # 4-byte Folded Spill
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	lw	a0, 12(a0)
	sw	a0, 68(sp)                      # 4-byte Folded Spill
	lw	a0, 60(sp)                      # 4-byte Folded Reload
	sw	a0, 64(sp)                      # 4-byte Folded Spill
	lw	a0, 68(sp)                      # 4-byte Folded Reload
	sw	a0, 156(sp)
	lw	a0, 72(sp)                      # 4-byte Folded Reload
	sw	a0, 152(sp)
	lw	a0, 76(sp)                      # 4-byte Folded Reload
	sw	a0, 148(sp)
	lw	a0, 80(sp)                      # 4-byte Folded Reload
	sw	ra, 144(sp)
	sw	a3, 140(sp)
	sw	a2, 136(sp)
	sw	a1, 132(sp)
	sw	a0, 128(sp)
	lw	a2, 144(sp)
	lw	a1, 148(sp)
	lw	a0, 152(sp)
	sw	a0, 88(sp)                      # 4-byte Folded Spill
	lw	a0, 156(sp)
	slli	a0, a0, 1
	srli	a3, a0, 1
	lui	ra, 524272
	slt	a0, a3, ra
	sw	a0, 84(sp)                      # 4-byte Folded Spill
	lw	a0, 88(sp)                      # 4-byte Folded Reload
	xor	a3, a3, ra
	or	a0, a0, a3
	or	a1, a1, a2
	seqz	a1, a1
	sw	a1, 92(sp)                      # 4-byte Folded Spill
	beqz	a0, .LBB36_2
# %bb.1:
	lw	a0, 84(sp)                      # 4-byte Folded Reload
	sw	a0, 92(sp)                      # 4-byte Folded Spill
.LBB36_2:
	lw	a0, 92(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB36_4
	j	.LBB36_3
.LBB36_3:
	lw	a0, 128(sp)
	lw	a1, 132(sp)
	lw	a2, 136(sp)
	lw	a3, 140(sp)
	sw	a3, 172(sp)
	sw	a2, 168(sp)
	sw	a1, 164(sp)
	sw	a0, 160(sp)
	j	.LBB36_17
.LBB36_4:
	lw	a2, 128(sp)
	lw	a1, 132(sp)
	lw	a0, 136(sp)
	sw	a0, 48(sp)                      # 4-byte Folded Spill
	lw	a0, 140(sp)
	slli	a0, a0, 1
	srli	a3, a0, 1
	lui	ra, 524272
	slt	a0, a3, ra
	sw	a0, 44(sp)                      # 4-byte Folded Spill
	lw	a0, 48(sp)                      # 4-byte Folded Reload
	xor	a3, a3, ra
	or	a0, a0, a3
	or	a1, a1, a2
	seqz	a1, a1
	sw	a1, 52(sp)                      # 4-byte Folded Spill
	beqz	a0, .LBB36_6
# %bb.5:
	lw	a0, 44(sp)                      # 4-byte Folded Reload
	sw	a0, 52(sp)                      # 4-byte Folded Spill
.LBB36_6:
	lw	a0, 52(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB36_8
	j	.LBB36_7
.LBB36_7:
	lw	a0, 144(sp)
	lw	a1, 148(sp)
	lw	a2, 152(sp)
	lw	a3, 156(sp)
	sw	a3, 172(sp)
	sw	a2, 168(sp)
	sw	a1, 164(sp)
	sw	a0, 160(sp)
	j	.LBB36_17
.LBB36_8:
	lw	a0, 156(sp)
	srli	a0, a0, 31
	lw	a1, 140(sp)
	srli	a1, a1, 31
	beq	a0, a1, .LBB36_13
	j	.LBB36_9
.LBB36_9:
	lw	a0, 156(sp)
	bgez	a0, .LBB36_11
	j	.LBB36_10
.LBB36_10:
	lw	a0, 156(sp)
	lw	a1, 152(sp)
	lw	a2, 148(sp)
	lw	a3, 144(sp)
	sw	a3, 28(sp)                      # 4-byte Folded Spill
	sw	a2, 32(sp)                      # 4-byte Folded Spill
	sw	a1, 36(sp)                      # 4-byte Folded Spill
	sw	a0, 40(sp)                      # 4-byte Folded Spill
	j	.LBB36_12
.LBB36_11:
	lw	a0, 140(sp)
	lw	a1, 136(sp)
	lw	a2, 132(sp)
	lw	a3, 128(sp)
	sw	a3, 28(sp)                      # 4-byte Folded Spill
	sw	a2, 32(sp)                      # 4-byte Folded Spill
	sw	a1, 36(sp)                      # 4-byte Folded Spill
	sw	a0, 40(sp)                      # 4-byte Folded Spill
	j	.LBB36_12
.LBB36_12:
	lw	a3, 28(sp)                      # 4-byte Folded Reload
	lw	a2, 32(sp)                      # 4-byte Folded Reload
	lw	a1, 36(sp)                      # 4-byte Folded Reload
	lw	a0, 40(sp)                      # 4-byte Folded Reload
	sw	a3, 160(sp)
	sw	a2, 164(sp)
	sw	a1, 168(sp)
	sw	a0, 172(sp)
	j	.LBB36_17
.LBB36_13:
	lw	a0, 144(sp)
	sw	a0, 24(sp)                      # 4-byte Folded Spill
	lw	a1, 148(sp)
	lw	a2, 152(sp)
	lw	a3, 156(sp)
	lw	ra, 128(sp)
	lw	a0, 132(sp)
	sw	a0, 20(sp)                      # 4-byte Folded Spill
	lw	a0, 136(sp)
	sw	a0, 16(sp)                      # 4-byte Folded Spill
	lw	a0, 140(sp)
	sw	a0, 108(sp)
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 104(sp)
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	sw	a0, 100(sp)
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	ra, 96(sp)
	sw	a3, 124(sp)
	sw	a2, 120(sp)
	sw	a1, 116(sp)
	sw	a0, 112(sp)
	addi	a0, sp, 112
	addi	a1, sp, 96
	call	__lttf2
	bgez	a0, .LBB36_15
	j	.LBB36_14
.LBB36_14:
	lw	a0, 156(sp)
	lw	a1, 152(sp)
	lw	a2, 148(sp)
	lw	a3, 144(sp)
	sw	a3, 0(sp)                       # 4-byte Folded Spill
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB36_16
.LBB36_15:
	lw	a0, 140(sp)
	lw	a1, 136(sp)
	lw	a2, 132(sp)
	lw	a3, 128(sp)
	sw	a3, 0(sp)                       # 4-byte Folded Spill
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB36_16
.LBB36_16:
	lw	a3, 0(sp)                       # 4-byte Folded Reload
	lw	a2, 4(sp)                       # 4-byte Folded Reload
	lw	a1, 8(sp)                       # 4-byte Folded Reload
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a3, 160(sp)
	sw	a2, 164(sp)
	sw	a1, 168(sp)
	sw	a0, 172(sp)
	j	.LBB36_17
.LBB36_17:
	lw	a1, 64(sp)                      # 4-byte Folded Reload
	lw	a0, 160(sp)
	lw	a2, 164(sp)
	lw	a3, 168(sp)
	lw	ra, 172(sp)
	sw	ra, 12(a1)
	sw	a3, 8(a1)
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	addi	sp, s0, -192
	lw	ra, 188(sp)                     # 4-byte Folded Reload
	lw	s0, 184(sp)                     # 4-byte Folded Reload
	addi	sp, sp, 192
	ret
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	2
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -20(s0)
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi0)
	sw	a0, -16(s0)
	j	.LBB37_1
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB37_4
	j	.LBB37_2
.LBB37_2:                               #   in Loop: Header=BB37_1 Depth=1
	lw	a0, -20(s0)
	andi	a1, a0, 63
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(digits)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi1)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	sb	a0, 0(a1)
	j	.LBB37_3
.LBB37_3:                               #   in Loop: Header=BB37_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 6
	sw	a0, -20(s0)
	j	.LBB37_1
.LBB37_4:
	lw	a1, -16(s0)
	li	a0, 0
	sb	a0, 0(a1)
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi2)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	2
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a0, a0, -1
.Lpcrel_hi3:
	auipc	a1, %pcrel_hi(seed)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi3)
	li	a2, 0
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	2
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
.Lpcrel_hi4:
	auipc	a0, %pcrel_hi(seed)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi4)
	sw	a1, -12(s0)                     # 4-byte Folded Spill
	lw	a0, 0(a1)
	lw	a1, 4(a1)
	lui	a2, 313688
	addi	a2, a2, -211
	lui	a3, 361759
	addi	a3, a3, 1069
	call	__muldi3
	mv	a2, a0
	lw	a0, -12(s0)                     # 4-byte Folded Reload
	addi	a2, a2, 1
	seqz	a3, a2
	add	a1, a1, a3
	sw	a2, 0(a0)
	sw	a1, 4(a0)
	lw	a0, 4(a0)
	srli	a0, a0, 1
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	2
	.type	insque,@function
insque:                                 # @insque
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	sw	a0, -20(s0)
	lw	a0, -16(s0)
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB40_2
	j	.LBB40_1
.LBB40_1:
	lw	a1, -20(s0)
	li	a0, 0
	sw	a0, 4(a1)
	lw	a1, -20(s0)
	sw	a0, 0(a1)
	j	.LBB40_4
.LBB40_2:
	lw	a0, -24(s0)
	lw	a0, 0(a0)
	lw	a1, -20(s0)
	sw	a0, 0(a1)
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	sw	a0, 4(a1)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	sw	a0, 0(a1)
	lw	a0, -20(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB40_4
	j	.LBB40_3
.LBB40_3:
	lw	a0, -20(s0)
	lw	a1, 0(a0)
	sw	a0, 4(a1)
	j	.LBB40_4
.LBB40_4:
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	2
	.type	remque,@function
remque:                                 # @remque
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB41_2
	j	.LBB41_1
.LBB41_1:
	lw	a1, -16(s0)
	lw	a0, 4(a1)
	lw	a1, 0(a1)
	sw	a0, 4(a1)
	j	.LBB41_2
.LBB41_2:
	lw	a0, -16(s0)
	lw	a0, 4(a0)
	beqz	a0, .LBB41_4
	j	.LBB41_3
.LBB41_3:
	lw	a1, -16(s0)
	lw	a0, 0(a1)
	lw	a1, 4(a1)
	sw	a0, 0(a1)
	j	.LBB41_4
.LBB41_4:
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	2
	.type	lsearch,@function
lsearch:                                # @lsearch
# %bb.0:
	addi	sp, sp, -76
	sw	ra, 72(sp)                      # 4-byte Folded Spill
	sw	s0, 68(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 76
	mv	ra, a4
	sw	ra, -52(s0)                     # 4-byte Folded Spill
	mv	ra, a0
	lw	a0, -52(s0)                     # 4-byte Folded Reload
	sw	ra, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	sw	a3, -28(s0)
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	sw	a0, -48(s0)                     # 4-byte Folded Spill
	lw	a0, -20(s0)
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	lw	a0, 0(a0)
	sw	a0, -40(s0)
	li	a0, 0
	sw	a0, -44(s0)
	j	.LBB42_1
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	lw	a1, -40(s0)
	bgeu	a0, a1, .LBB42_6
	j	.LBB42_2
.LBB42_2:                               #   in Loop: Header=BB42_1 Depth=1
	lw	a1, -48(s0)                     # 4-byte Folded Reload
	lw	a0, -32(s0)
	sw	a0, -60(s0)                     # 4-byte Folded Spill
	lw	a0, -16(s0)
	sw	a0, -56(s0)                     # 4-byte Folded Spill
	lw	a0, -36(s0)
	sw	a0, -64(s0)                     # 4-byte Folded Spill
	lw	a0, -44(s0)
	call	__mulsi3
	lw	a1, -64(s0)                     # 4-byte Folded Reload
	lw	a2, -60(s0)                     # 4-byte Folded Reload
	mv	a3, a0
	lw	a0, -56(s0)                     # 4-byte Folded Reload
	add	a1, a1, a3
	jalr	a2
	bnez	a0, .LBB42_4
	j	.LBB42_3
.LBB42_3:
	lw	a1, -48(s0)                     # 4-byte Folded Reload
	lw	a0, -36(s0)
	sw	a0, -68(s0)                     # 4-byte Folded Spill
	lw	a0, -44(s0)
	call	__mulsi3
	mv	a1, a0
	lw	a0, -68(s0)                     # 4-byte Folded Reload
	add	a0, a0, a1
	sw	a0, -12(s0)
	j	.LBB42_7
.LBB42_4:                               #   in Loop: Header=BB42_1 Depth=1
	j	.LBB42_5
.LBB42_5:                               #   in Loop: Header=BB42_1 Depth=1
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB42_1
.LBB42_6:
	lw	a1, -48(s0)                     # 4-byte Folded Reload
	lw	a0, -40(s0)
	addi	a0, a0, 1
	lw	a2, -24(s0)
	sw	a0, 0(a2)
	lw	a0, -36(s0)
	sw	a0, -76(s0)                     # 4-byte Folded Spill
	lw	a0, -40(s0)
	call	__mulsi3
	mv	a1, a0
	lw	a0, -76(s0)                     # 4-byte Folded Reload
	add	a0, a0, a1
	sw	a0, -72(s0)                     # 4-byte Folded Spill
	lw	a1, -16(s0)
	lw	a2, -28(s0)
	call	memcpy
                                        # kill: def $x11 killed $x10
	lw	a0, -72(s0)                     # 4-byte Folded Reload
	sw	a0, -12(s0)
	j	.LBB42_7
.LBB42_7:
	lw	a0, -12(s0)
	lw	ra, 72(sp)                      # 4-byte Folded Reload
	lw	s0, 68(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 76
	ret
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	2
	.type	lfind,@function
lfind:                                  # @lfind
# %bb.0:
	addi	sp, sp, -68
	sw	ra, 64(sp)                      # 4-byte Folded Spill
	sw	s0, 60(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 68
	mv	ra, a4
	sw	ra, -52(s0)                     # 4-byte Folded Spill
	mv	ra, a0
	lw	a0, -52(s0)                     # 4-byte Folded Reload
	sw	ra, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	sw	a3, -28(s0)
	sw	a0, -32(s0)
	lw	a0, -28(s0)
	sw	a0, -48(s0)                     # 4-byte Folded Spill
	lw	a0, -20(s0)
	sw	a0, -36(s0)
	lw	a0, -24(s0)
	lw	a0, 0(a0)
	sw	a0, -40(s0)
	li	a0, 0
	sw	a0, -44(s0)
	j	.LBB43_1
.LBB43_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	lw	a1, -40(s0)
	bgeu	a0, a1, .LBB43_6
	j	.LBB43_2
.LBB43_2:                               #   in Loop: Header=BB43_1 Depth=1
	lw	a1, -48(s0)                     # 4-byte Folded Reload
	lw	a0, -32(s0)
	sw	a0, -60(s0)                     # 4-byte Folded Spill
	lw	a0, -16(s0)
	sw	a0, -56(s0)                     # 4-byte Folded Spill
	lw	a0, -36(s0)
	sw	a0, -64(s0)                     # 4-byte Folded Spill
	lw	a0, -44(s0)
	call	__mulsi3
	lw	a1, -64(s0)                     # 4-byte Folded Reload
	lw	a2, -60(s0)                     # 4-byte Folded Reload
	mv	a3, a0
	lw	a0, -56(s0)                     # 4-byte Folded Reload
	add	a1, a1, a3
	jalr	a2
	bnez	a0, .LBB43_4
	j	.LBB43_3
.LBB43_3:
	lw	a1, -48(s0)                     # 4-byte Folded Reload
	lw	a0, -36(s0)
	sw	a0, -68(s0)                     # 4-byte Folded Spill
	lw	a0, -44(s0)
	call	__mulsi3
	mv	a1, a0
	lw	a0, -68(s0)                     # 4-byte Folded Reload
	add	a0, a0, a1
	sw	a0, -12(s0)
	j	.LBB43_7
.LBB43_4:                               #   in Loop: Header=BB43_1 Depth=1
	j	.LBB43_5
.LBB43_5:                               #   in Loop: Header=BB43_1 Depth=1
	lw	a0, -44(s0)
	addi	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB43_1
.LBB43_6:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB43_7
.LBB43_7:
	lw	a0, -12(s0)
	lw	ra, 64(sp)                      # 4-byte Folded Reload
	lw	s0, 60(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 68
	ret
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	2
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	li	a0, 0
	bge	a0, a1, .LBB44_2
	j	.LBB44_1
.LBB44_1:
	lw	a0, -12(s0)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB44_3
.LBB44_2:
	lw	a1, -12(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB44_3
.LBB44_3:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	2
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	li	a0, 0
	sw	a0, -16(s0)
	sw	a0, -20(s0)
	j	.LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB45_3
	j	.LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB45_1
.LBB45_3:
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB45_6
	j	.LBB45_4
.LBB45_4:
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	li	a1, 45
	bne	a0, a1, .LBB45_7
	j	.LBB45_5
.LBB45_5:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB45_6
.LBB45_6:
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB45_7
.LBB45_7:
	j	.LBB45_8
.LBB45_8:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB45_10
	j	.LBB45_9
.LBB45_9:                               #   in Loop: Header=BB45_8 Depth=1
	lw	a0, -16(s0)
	li	a1, 10
	call	__mulsi3
	lw	a1, -12(s0)
	addi	a2, a1, 1
	sw	a2, -12(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	addi	a0, a0, 48
	sw	a0, -16(s0)
	j	.LBB45_8
.LBB45_10:
	lw	a0, -20(s0)
	beqz	a0, .LBB45_12
	j	.LBB45_11
.LBB45_11:
	lw	a0, -16(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB45_13
.LBB45_12:
	lw	a1, -16(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB45_13
.LBB45_13:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	2
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	li	a0, 0
	sw	a0, -16(s0)
	sw	a0, -20(s0)
	j	.LBB46_1
.LBB46_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB46_3
	j	.LBB46_2
.LBB46_2:                               #   in Loop: Header=BB46_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB46_1
.LBB46_3:
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB46_6
	j	.LBB46_4
.LBB46_4:
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	li	a1, 45
	bne	a0, a1, .LBB46_7
	j	.LBB46_5
.LBB46_5:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB46_6
.LBB46_6:
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB46_7
.LBB46_7:
	j	.LBB46_8
.LBB46_8:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB46_10
	j	.LBB46_9
.LBB46_9:                               #   in Loop: Header=BB46_8 Depth=1
	lw	a0, -16(s0)
	li	a1, 10
	call	__mulsi3
	lw	a1, -12(s0)
	addi	a2, a1, 1
	sw	a2, -12(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	addi	a0, a0, 48
	sw	a0, -16(s0)
	j	.LBB46_8
.LBB46_10:
	lw	a0, -20(s0)
	beqz	a0, .LBB46_12
	j	.LBB46_11
.LBB46_11:
	lw	a0, -16(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB46_13
.LBB46_12:
	lw	a1, -16(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB46_13
.LBB46_13:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	2
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	andi	sp, sp, -8
	sw	a0, 36(sp)
	li	a0, 0
	sw	a0, 28(sp)
	sw	a0, 24(sp)
	sw	a0, 20(sp)
	j	.LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 36(sp)
	lbu	a0, 0(a0)
	call	isspace
	beqz	a0, .LBB47_3
	j	.LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
	lw	a0, 36(sp)
	addi	a0, a0, 1
	sw	a0, 36(sp)
	j	.LBB47_1
.LBB47_3:
	lw	a0, 36(sp)
	lbu	a0, 0(a0)
	sw	a0, 16(sp)                      # 4-byte Folded Spill
	li	a1, 43
	beq	a0, a1, .LBB47_6
	j	.LBB47_4
.LBB47_4:
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	li	a1, 45
	bne	a0, a1, .LBB47_7
	j	.LBB47_5
.LBB47_5:
	li	a0, 1
	sw	a0, 20(sp)
	j	.LBB47_6
.LBB47_6:
	lw	a0, 36(sp)
	addi	a0, a0, 1
	sw	a0, 36(sp)
	j	.LBB47_7
.LBB47_7:
	j	.LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 36(sp)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB47_10
	j	.LBB47_9
.LBB47_9:                               #   in Loop: Header=BB47_8 Depth=1
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	li	a2, 10
	li	a3, 0
	call	__muldi3
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	mv	a0, a1
	lw	a1, 12(sp)                      # 4-byte Folded Reload
	lw	a2, 36(sp)
	addi	a3, a2, 1
	sw	a3, 36(sp)
	lbu	a2, 0(a2)
	addi	a2, a2, -48
	srai	ra, a2, 31
	sltu	a3, a1, a2
	sub	a0, a0, ra
	sub	a0, a0, a3
	sub	a1, a1, a2
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	j	.LBB47_8
.LBB47_10:
	lw	a0, 20(sp)
	beqz	a0, .LBB47_12
	j	.LBB47_11
.LBB47_11:
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	sw	a0, 8(sp)                       # 4-byte Folded Spill
	j	.LBB47_13
.LBB47_12:
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	li	a0, 0
	sub	a1, a0, a3
	snez	a3, a3
	add	a2, a2, a3
	sub	a0, a0, a2
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	sw	a0, 8(sp)                       # 4-byte Folded Spill
	j	.LBB47_13
.LBB47_13:
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	lw	a1, 8(sp)                       # 4-byte Folded Reload
	addi	sp, s0, -48
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	2
	.type	bsearch,@function
bsearch:                                # @bsearch
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	mv	ra, a4
	sw	ra, -44(s0)                     # 4-byte Folded Spill
	mv	ra, a0
	lw	a0, -44(s0)                     # 4-byte Folded Reload
	sw	ra, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	sw	a3, -28(s0)
	sw	a0, -32(s0)
	j	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	beqz	a0, .LBB48_9
	j	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
	lw	a0, -20(s0)
	sw	a0, -48(s0)                     # 4-byte Folded Spill
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	srli	a1, a1, 1
	call	__mulsi3
	mv	a1, a0
	lw	a0, -48(s0)                     # 4-byte Folded Reload
	add	a0, a0, a1
	sw	a0, -36(s0)
	lw	a2, -32(s0)
	lw	a0, -16(s0)
	lw	a1, -36(s0)
	jalr	a2
	sw	a0, -40(s0)
	lw	a0, -40(s0)
	bgez	a0, .LBB48_4
	j	.LBB48_3
.LBB48_3:                               #   in Loop: Header=BB48_1 Depth=1
	lw	a0, -24(s0)
	srli	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB48_8
.LBB48_4:                               #   in Loop: Header=BB48_1 Depth=1
	lw	a1, -40(s0)
	li	a0, 0
	bge	a0, a1, .LBB48_6
	j	.LBB48_5
.LBB48_5:                               #   in Loop: Header=BB48_1 Depth=1
	lw	a0, -36(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	sw	a0, -20(s0)
	lw	a1, -24(s0)
	srli	a0, a1, 1
	not	a0, a0
	add	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB48_7
.LBB48_6:
	lw	a0, -36(s0)
	sw	a0, -12(s0)
	j	.LBB48_10
.LBB48_7:                               #   in Loop: Header=BB48_1 Depth=1
	j	.LBB48_8
.LBB48_8:                               #   in Loop: Header=BB48_1 Depth=1
	j	.LBB48_1
.LBB48_9:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB48_10
.LBB48_10:
	lw	a0, -12(s0)
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	2
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 64
	mv	ra, a5
	sw	ra, -56(s0)                     # 4-byte Folded Spill
	mv	ra, a4
	sw	ra, -60(s0)                     # 4-byte Folded Spill
	mv	ra, a1
	lw	a1, -60(s0)                     # 4-byte Folded Reload
	sw	a0, -16(s0)
	lw	a0, -56(s0)                     # 4-byte Folded Reload
	sw	ra, -20(s0)
	sw	a2, -24(s0)
	sw	a3, -28(s0)
	sw	a1, -32(s0)
	sw	a0, -36(s0)
	lw	a0, -20(s0)
	sw	a0, -40(s0)
	lw	a0, -24(s0)
	sw	a0, -44(s0)
	j	.LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -44(s0)
	beqz	a0, .LBB49_8
	j	.LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	lw	a0, -40(s0)
	sw	a0, -64(s0)                     # 4-byte Folded Spill
	lw	a0, -44(s0)
	srai	a0, a0, 1
	lw	a1, -28(s0)
	call	__mulsi3
	mv	a1, a0
	lw	a0, -64(s0)                     # 4-byte Folded Reload
	add	a0, a0, a1
	sw	a0, -52(s0)
	lw	a3, -32(s0)
	lw	a0, -16(s0)
	lw	a1, -52(s0)
	lw	a2, -36(s0)
	jalr	a3
	sw	a0, -48(s0)
	lw	a0, -48(s0)
	bnez	a0, .LBB49_4
	j	.LBB49_3
.LBB49_3:
	lw	a0, -52(s0)
	sw	a0, -12(s0)
	j	.LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	lw	a1, -48(s0)
	li	a0, 0
	bge	a0, a1, .LBB49_6
	j	.LBB49_5
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
	lw	a0, -52(s0)
	lw	a1, -28(s0)
	add	a0, a0, a1
	sw	a0, -40(s0)
	lw	a0, -44(s0)
	addi	a0, a0, -1
	sw	a0, -44(s0)
	j	.LBB49_6
.LBB49_6:                               #   in Loop: Header=BB49_1 Depth=1
	j	.LBB49_7
.LBB49_7:                               #   in Loop: Header=BB49_1 Depth=1
	lw	a0, -44(s0)
	srai	a0, a0, 1
	sw	a0, -44(s0)
	j	.LBB49_1
.LBB49_8:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB49_9
.LBB49_9:
	lw	a0, -12(s0)
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	2
	.type	div,@function
div:                                    # @div
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	call	__divsi3
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	call	__modsi3
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	2
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	lw	a1, 16(sp)
	lw	a0, 20(sp)
	slti	a2, a0, 0
	sw	a2, 8(sp)                       # 4-byte Folded Spill
	seqz	a1, a1
	sw	a1, 12(sp)                      # 4-byte Folded Spill
	beqz	a0, .LBB51_2
# %bb.1:
	lw	a0, 8(sp)                       # 4-byte Folded Reload
	sw	a0, 12(sp)                      # 4-byte Folded Spill
.LBB51_2:
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB51_4
	j	.LBB51_3
.LBB51_3:
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB51_5
.LBB51_4:
	lw	a2, 20(sp)
	lw	a3, 16(sp)
	li	a0, 0
	sub	a1, a0, a3
	snez	a3, a3
	add	a2, a2, a3
	sub	a0, a0, a2
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB51_5
.LBB51_5:
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	addi	sp, s0, -32
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	2
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	andi	sp, sp, -8
	mv	ra, a4
	sw	ra, 0(sp)                       # 4-byte Folded Spill
	mv	ra, a0
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	sw	ra, 4(sp)                       # 4-byte Folded Spill
                                        # kill: def $x1 killed $x10
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
	lw	ra, 4(sp)                       # 4-byte Folded Reload
	sw	ra, 28(sp)
	sw	a2, 20(sp)
	sw	a1, 16(sp)
	sw	a0, 12(sp)
	sw	a3, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	call	__divdi3
	mv	a2, a1
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	call	__moddi3
	mv	a2, a1
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	sw	a2, 12(a1)
	sw	a0, 8(a1)
	addi	sp, s0, -40
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	2
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	li	a0, 0
	bge	a0, a1, .LBB53_2
	j	.LBB53_1
.LBB53_1:
	lw	a0, -12(s0)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB53_3
.LBB53_2:
	lw	a1, -12(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB53_3
.LBB53_3:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	2
	.type	ldiv,@function
ldiv:                                   # @ldiv
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -20(s0)
	sw	a1, -24(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	call	__divsi3
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	call	__modsi3
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	2
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	lw	a1, 16(sp)
	lw	a0, 20(sp)
	slti	a2, a0, 0
	sw	a2, 8(sp)                       # 4-byte Folded Spill
	seqz	a1, a1
	sw	a1, 12(sp)                      # 4-byte Folded Spill
	beqz	a0, .LBB55_2
# %bb.1:
	lw	a0, 8(sp)                       # 4-byte Folded Reload
	sw	a0, 12(sp)                      # 4-byte Folded Spill
.LBB55_2:
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB55_4
	j	.LBB55_3
.LBB55_3:
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB55_5
.LBB55_4:
	lw	a2, 20(sp)
	lw	a3, 16(sp)
	li	a0, 0
	sub	a1, a0, a3
	snez	a3, a3
	add	a2, a2, a3
	sub	a0, a0, a2
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB55_5
.LBB55_5:
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	addi	sp, s0, -32
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	2
	.type	lldiv,@function
lldiv:                                  # @lldiv
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	andi	sp, sp, -8
	mv	ra, a4
	sw	ra, 0(sp)                       # 4-byte Folded Spill
	mv	ra, a0
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	sw	ra, 4(sp)                       # 4-byte Folded Spill
                                        # kill: def $x1 killed $x10
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
	lw	ra, 4(sp)                       # 4-byte Folded Reload
	sw	ra, 28(sp)
	sw	a2, 20(sp)
	sw	a1, 16(sp)
	sw	a0, 12(sp)
	sw	a3, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	call	__divdi3
	mv	a2, a1
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	call	__moddi3
	mv	a2, a1
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	sw	a2, 12(a1)
	sw	a0, 8(a1)
	addi	sp, s0, -40
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	2
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	j	.LBB57_1
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB57_3
	j	.LBB57_2
.LBB57_2:                               #   in Loop: Header=BB57_1 Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB57_3
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB57_6
	j	.LBB57_4
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	j	.LBB57_5
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	j	.LBB57_1
.LBB57_6:
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB57_8
	j	.LBB57_7
.LBB57_7:
	lw	a0, -12(s0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB57_9
.LBB57_8:
	li	a0, 0
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB57_9
.LBB57_9:
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	j	.LBB58_1
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB58_4
	j	.LBB58_2
.LBB58_2:                               #   in Loop: Header=BB58_1 Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB58_4
	j	.LBB58_3
.LBB58_3:                               #   in Loop: Header=BB58_1 Depth=1
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	snez	a0, a0
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB58_4
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB58_7
	j	.LBB58_5
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	j	.LBB58_6
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	addi	a0, a0, 4
	sw	a0, -16(s0)
	j	.LBB58_1
.LBB58_7:
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB58_9
	j	.LBB58_8
.LBB58_8:
	li	a0, -1
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB58_10
.LBB58_9:
	lw	a0, -12(s0)
	lw	a1, 0(a0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB58_10
.LBB58_10:
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	2
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	sw	a0, -20(s0)
	j	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	addi	a1, a0, 4
	sw	a1, -16(s0)
	lw	a0, 0(a0)
	lw	a1, -12(s0)
	addi	a2, a1, 4
	sw	a2, -12(s0)
	sw	a0, 0(a1)
	beqz	a0, .LBB59_3
	j	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	j	.LBB59_1
.LBB59_3:
	lw	a0, -20(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	2
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	j	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB60_4
	j	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	j	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	j	.LBB60_1
.LBB60_4:
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	sub	a0, a0, a1
	srai	a0, a0, 2
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	2
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	j	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB61_5
	j	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB61_5
	j	.LBB61_3
.LBB61_3:                               #   in Loop: Header=BB61_1 Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB61_5
	j	.LBB61_4
.LBB61_4:                               #   in Loop: Header=BB61_1 Depth=1
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	snez	a0, a0
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB61_5
.LBB61_5:                               #   in Loop: Header=BB61_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB61_8
	j	.LBB61_6
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
	j	.LBB61_7
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	addi	a0, a0, 4
	sw	a0, -16(s0)
	j	.LBB61_1
.LBB61_8:
	lw	a0, -20(s0)
	beqz	a0, .LBB61_13
	j	.LBB61_9
.LBB61_9:
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB61_11
	j	.LBB61_10
.LBB61_10:
	li	a0, -1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB61_12
.LBB61_11:
	lw	a0, -12(s0)
	lw	a1, 0(a0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB61_12
.LBB61_12:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB61_14
.LBB61_13:
	li	a0, 0
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB61_14
.LBB61_14:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	j	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB62_3
	j	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a0, a0, a1
	snez	a0, a0
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB62_6
	j	.LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	j	.LBB62_5
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	j	.LBB62_1
.LBB62_6:
	lw	a0, -20(s0)
	beqz	a0, .LBB62_8
	j	.LBB62_7
.LBB62_7:
	lw	a0, -12(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB62_9
.LBB62_8:
	li	a0, 0
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB62_9
.LBB62_9:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	j	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB63_3
	j	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	xor	a0, a0, a1
	seqz	a0, a0
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB63_6
	j	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	j	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	addi	a0, a0, 4
	sw	a0, -16(s0)
	j	.LBB63_1
.LBB63_6:
	lw	a0, -20(s0)
	beqz	a0, .LBB63_11
	j	.LBB63_7
.LBB63_7:
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB63_9
	j	.LBB63_8
.LBB63_8:
	li	a0, -1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB63_10
.LBB63_9:
	lw	a0, -12(s0)
	lw	a1, 0(a0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB63_10
.LBB63_10:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB63_12
.LBB63_11:
	li	a0, 0
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB63_12
.LBB63_12:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	2
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	j	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB64_3
	j	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	lw	a0, -16(s0)
	addi	a1, a0, 4
	sw	a1, -16(s0)
	lw	a0, 0(a0)
	lw	a1, -12(s0)
	addi	a2, a1, 4
	sw	a2, -12(s0)
	sw	a0, 0(a1)
	j	.LBB64_1
.LBB64_3:
	lw	a0, -24(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	2
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bne	a0, a1, .LBB65_2
	j	.LBB65_1
.LBB65_1:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB65_12
.LBB65_2:
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	sub	a0, a0, a1
	lw	a1, -24(s0)
	slli	a1, a1, 2
	bgeu	a0, a1, .LBB65_7
	j	.LBB65_3
.LBB65_3:
	j	.LBB65_4
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, -1
	sw	a1, -24(s0)
	beqz	a0, .LBB65_6
	j	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_4 Depth=1
	lw	a0, -20(s0)
	lw	a1, -24(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB65_4
.LBB65_6:
	j	.LBB65_11
.LBB65_7:
	j	.LBB65_8
.LBB65_8:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, -1
	sw	a1, -24(s0)
	beqz	a0, .LBB65_10
	j	.LBB65_9
.LBB65_9:                               #   in Loop: Header=BB65_8 Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, 4
	sw	a1, -20(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	addi	a2, a1, 4
	sw	a2, -16(s0)
	sw	a0, 0(a1)
	j	.LBB65_8
.LBB65_10:
	j	.LBB65_11
.LBB65_11:
	lw	a0, -28(s0)
	sw	a0, -12(s0)
	j	.LBB65_12
.LBB65_12:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	2
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	j	.LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB66_3
	j	.LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -12(s0)
	addi	a2, a1, 4
	sw	a2, -12(s0)
	sw	a0, 0(a1)
	j	.LBB66_1
.LBB66_3:
	lw	a0, -24(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	2
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB67_6
	j	.LBB67_1
.LBB67_1:
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a1, -20(s0)
	lw	a0, -28(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB67_2
.LBB67_2:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB67_5
	j	.LBB67_3
.LBB67_3:                               #   in Loop: Header=BB67_2 Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, -1
	sw	a1, -24(s0)
	lbu	a0, -1(a0)
	lw	a1, -28(s0)
	addi	a2, a1, -1
	sw	a2, -28(s0)
	sb	a0, -1(a1)
	j	.LBB67_4
.LBB67_4:                               #   in Loop: Header=BB67_2 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB67_2
.LBB67_5:
	j	.LBB67_13
.LBB67_6:
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	beq	a0, a1, .LBB67_12
	j	.LBB67_7
.LBB67_7:
	j	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB67_11
	j	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, 1
	sw	a1, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	addi	a2, a1, 1
	sw	a2, -28(s0)
	sb	a0, 0(a1)
	j	.LBB67_10
.LBB67_10:                              #   in Loop: Header=BB67_8 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB67_8
.LBB67_11:
	j	.LBB67_12
.LBB67_12:
	j	.LBB67_13
.LBB67_13:
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	2
	.type	rotl64,@function
rotl64:                                 # @rotl64
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 64
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	sw	a2, 44(sp)
	lw	a2, 48(sp)
	sw	a2, 20(sp)                      # 4-byte Folded Spill
	lw	a1, 52(sp)
	sw	a1, 24(sp)                      # 4-byte Folded Spill
	lw	a0, 44(sp)
	sw	a0, 28(sp)                      # 4-byte Folded Spill
	sll	a1, a1, a0
	not	ra, a0
	srli	a3, a2, 1
	srl	a3, a3, ra
	or	a1, a1, a3
	sll	a2, a2, a0
	sw	a2, 32(sp)                      # 4-byte Folded Spill
	addi	a0, a0, -32
	sw	a0, 36(sp)                      # 4-byte Folded Spill
	sw	a1, 40(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB68_2
# %bb.1:
	lw	a0, 32(sp)                      # 4-byte Folded Reload
	sw	a0, 40(sp)                      # 4-byte Folded Spill
.LBB68_2:
	lw	a1, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	a2, 36(sp)                      # 4-byte Folded Reload
	lw	a3, 32(sp)                      # 4-byte Folded Reload
	lw	a0, 40(sp)                      # 4-byte Folded Reload
	sw	a0, 0(sp)                       # 4-byte Folded Spill
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	srai	a2, a2, 31
	and	a2, a2, a3
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	li	a2, 64
	sub	a2, a2, ra
	neg	a3, ra
	srl	a0, a0, a3
	not	a2, a2
	slli	a1, a1, 1
	sll	a1, a1, a2
	lw	a2, 24(sp)                      # 4-byte Folded Reload
	or	a1, a0, a1
	li	a0, 32
	sub	a0, a0, ra
	sw	a0, 8(sp)                       # 4-byte Folded Spill
	srl	a2, a2, a3
	sw	a2, 12(sp)                      # 4-byte Folded Spill
	sw	a1, 16(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB68_4
# %bb.3:
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a0, 16(sp)                      # 4-byte Folded Spill
.LBB68_4:
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	lw	a1, 0(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	a3, 8(sp)                       # 4-byte Folded Reload
	lw	a2, 16(sp)                      # 4-byte Folded Reload
	srai	a3, a3, 31
	and	a3, a3, ra
	or	a1, a1, a3
	or	a0, a0, a2
	addi	sp, s0, -64
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	2
	.type	rotr64,@function
rotr64:                                 # @rotr64
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 64
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	sw	a2, 44(sp)
	lw	a2, 52(sp)
	sw	a2, 20(sp)                      # 4-byte Folded Spill
	lw	a1, 48(sp)
	sw	a1, 24(sp)                      # 4-byte Folded Spill
	lw	a0, 44(sp)
	sw	a0, 28(sp)                      # 4-byte Folded Spill
	srl	a1, a1, a0
	not	ra, a0
	slli	a3, a2, 1
	sll	a3, a3, ra
	or	a1, a1, a3
	srl	a2, a2, a0
	sw	a2, 32(sp)                      # 4-byte Folded Spill
	addi	a0, a0, -32
	sw	a0, 36(sp)                      # 4-byte Folded Spill
	sw	a1, 40(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB69_2
# %bb.1:
	lw	a0, 32(sp)                      # 4-byte Folded Reload
	sw	a0, 40(sp)                      # 4-byte Folded Spill
.LBB69_2:
	lw	a1, 24(sp)                      # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	a2, 36(sp)                      # 4-byte Folded Reload
	lw	a3, 32(sp)                      # 4-byte Folded Reload
	lw	a0, 40(sp)                      # 4-byte Folded Reload
	sw	a0, 0(sp)                       # 4-byte Folded Spill
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	srai	a2, a2, 31
	and	a2, a2, a3
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	li	a2, 64
	sub	a2, a2, ra
	neg	a3, ra
	sll	a0, a0, a3
	not	a2, a2
	srli	a1, a1, 1
	srl	a1, a1, a2
	lw	a2, 24(sp)                      # 4-byte Folded Reload
	or	a1, a0, a1
	li	a0, 32
	sub	a0, a0, ra
	sw	a0, 8(sp)                       # 4-byte Folded Spill
	sll	a2, a2, a3
	sw	a2, 12(sp)                      # 4-byte Folded Spill
	sw	a1, 16(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB69_4
# %bb.3:
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a0, 16(sp)                      # 4-byte Folded Spill
.LBB69_4:
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	a3, 8(sp)                       # 4-byte Folded Reload
	lw	a2, 16(sp)                      # 4-byte Folded Reload
	srai	a3, a3, 31
	and	a3, a3, ra
	or	a0, a0, a3
	or	a1, a1, a2
	addi	sp, s0, -64
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	2
	.type	rotl32,@function
rotl32:                                 # @rotl32
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a1, -12(s0)
	lw	a2, -16(s0)
	sll	a0, a1, a2
	neg	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	2
	.type	rotr32,@function
rotr32:                                 # @rotr32
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a1, -12(s0)
	lw	a2, -16(s0)
	srl	a0, a1, a2
	neg	a2, a2
	sll	a1, a1, a2
	or	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	2
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a1, -12(s0)
	lw	a2, -16(s0)
	sll	a0, a1, a2
	neg	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	2
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a1, -12(s0)
	lw	a2, -16(s0)
	srl	a0, a1, a2
	neg	a2, a2
	sll	a1, a1, a2
	or	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	2
	.type	rotl16,@function
rotl16:                                 # @rotl16
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x12 killed $x10
	sh	a0, -10(s0)
	sw	a1, -16(s0)
	lhu	a1, -10(s0)
	lw	a3, -16(s0)
	sll	a0, a1, a3
	li	a2, 16
	sub	a2, a2, a3
	srl	a1, a1, a2
	or	a0, a0, a1
	slli	a0, a0, 16
	srli	a0, a0, 16
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	2
	.type	rotr16,@function
rotr16:                                 # @rotr16
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x12 killed $x10
	sh	a0, -10(s0)
	sw	a1, -16(s0)
	lhu	a1, -10(s0)
	lw	a3, -16(s0)
	srl	a0, a1, a3
	li	a2, 16
	sub	a2, a2, a3
	sll	a1, a1, a2
	or	a0, a0, a1
	slli	a0, a0, 16
	srli	a0, a0, 16
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	2
	.type	rotl8,@function
rotl8:                                  # @rotl8
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x12 killed $x10
	sb	a0, -9(s0)
	sw	a1, -16(s0)
	lbu	a1, -9(s0)
	lw	a3, -16(s0)
	sll	a0, a1, a3
	li	a2, 8
	sub	a2, a2, a3
	srl	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	2
	.type	rotr8,@function
rotr8:                                  # @rotr8
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x12 killed $x10
	sb	a0, -9(s0)
	sw	a1, -16(s0)
	lbu	a1, -9(s0)
	lw	a3, -16(s0)
	srl	a0, a1, a3
	li	a2, 8
	sub	a2, a2, a3
	sll	a1, a1, a2
	or	a0, a0, a1
	andi	a0, a0, 255
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	2
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
                                        # kill: def $x11 killed $x10
	sh	a0, -10(s0)
	li	a0, 255
	sh	a0, -12(s0)
	lhu	a1, -10(s0)
	lhu	a2, -12(s0)
	slli	a0, a2, 8
	and	a0, a1, a0
	srli	a0, a0, 8
	and	a1, a1, a2
	slli	a1, a1, 8
	or	a0, a0, a1
	slli	a0, a0, 16
	srli	a0, a0, 16
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	2
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	li	a0, 255
	sw	a0, -16(s0)
	lw	a1, -12(s0)
	lw	a2, -16(s0)
	slli	a0, a2, 24
	and	a0, a1, a0
	srli	a0, a0, 24
	slli	a3, a2, 16
	and	ra, a1, a3
	srli	ra, ra, 8
	or	a0, a0, ra
	slli	ra, a1, 8
	and	a3, a3, ra
	or	a0, a0, a3
	and	a1, a1, a2
	slli	a1, a1, 24
	or	a0, a0, a1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	2
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
# %bb.0:
	addi	sp, sp, -64
	sw	ra, 60(sp)                      # 4-byte Folded Spill
	sw	s0, 56(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 64
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	li	a0, 0
	sw	a0, 44(sp)
	li	a0, 255
	sw	a0, 40(sp)
	lw	a2, 48(sp)
	lw	a0, 52(sp)
	sw	a0, 24(sp)                      # 4-byte Folded Spill
	lw	a3, 40(sp)
	slli	a1, a3, 24
	and	a1, a0, a1
	srli	a1, a1, 24
	slli	ra, a3, 16
	and	a0, a0, ra
	srli	a0, a0, 8
	or	a1, a1, a0
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	slli	a1, a3, 8
	sw	a1, 28(sp)                      # 4-byte Folded Spill
	and	a0, a0, a1
	lw	a1, 0(sp)                       # 4-byte Folded Reload
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	srli	a0, a0, 24
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	slli	a0, a0, 8
	or	a1, a1, a0
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	and	a1, a0, a3
	srli	a0, a1, 8
	sw	a0, 16(sp)                      # 4-byte Folded Spill
	lw	a0, 8(sp)                       # 4-byte Folded Reload
	slli	a1, a1, 24
	or	a0, a0, a1
	lw	a1, 12(sp)                      # 4-byte Folded Reload
	sw	a0, 36(sp)                      # 4-byte Folded Spill
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	or	a1, a1, a0
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a1, 20(sp)                      # 4-byte Folded Spill
	srli	a1, a2, 24
	slli	a0, a0, 8
	or	a0, a0, a1
	lw	a1, 20(sp)                      # 4-byte Folded Reload
	and	a0, a3, a0
	or	a1, a1, a0
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a1, 32(sp)                      # 4-byte Folded Spill
	srli	a1, a2, 8
	slli	a0, a0, 24
	or	a0, a0, a1
	lw	a1, 28(sp)                      # 4-byte Folded Reload
	and	a1, a1, a0
	lw	a0, 32(sp)                      # 4-byte Folded Reload
	or	a1, a0, a1
	slli	a0, a2, 8
	and	ra, ra, a0
	lw	a0, 36(sp)                      # 4-byte Folded Reload
	or	a1, a1, ra
	and	a2, a2, a3
	slli	a2, a2, 24
	or	a1, a1, a2
	addi	sp, s0, -64
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
	ret
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	2
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -16(s0)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB81_1
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -20(s0)
	li	a0, 31
	bltu	a0, a1, .LBB81_6
	j	.LBB81_2
.LBB81_2:                               #   in Loop: Header=BB81_1 Depth=1
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB81_4
	j	.LBB81_3
.LBB81_3:
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB81_7
.LBB81_4:                               #   in Loop: Header=BB81_1 Depth=1
	j	.LBB81_5
.LBB81_5:                               #   in Loop: Header=BB81_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB81_1
.LBB81_6:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB81_7
.LBB81_7:
	lw	a0, -12(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	2
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	bnez	a0, .LBB82_2
	j	.LBB82_1
.LBB82_1:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB82_7
.LBB82_2:
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB82_3
.LBB82_3:                               # =>This Inner Loop Header: Depth=1
	lbu	a0, -16(s0)
	andi	a0, a0, 1
	bnez	a0, .LBB82_6
	j	.LBB82_4
.LBB82_4:                               #   in Loop: Header=BB82_3 Depth=1
	lw	a0, -16(s0)
	srai	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB82_5
.LBB82_5:                               #   in Loop: Header=BB82_3 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB82_3
.LBB82_6:
	lw	a0, -20(s0)
	sw	a0, -12(s0)
	j	.LBB82_7
.LBB82_7:
	lw	a0, -12(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	2
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x11 killed $x10
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	lui	a1, 1046528
	addi	a1, a1, -1
	call	__ltsf2
	li	a1, 1
	sw	a1, -16(s0)                     # 4-byte Folded Spill
	bltz	a0, .LBB83_2
	j	.LBB83_1
.LBB83_1:
	lw	a0, -12(s0)
	lui	a1, 522240
	addi	a1, a1, -1
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	slt	a0, a0, a1
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB83_2
.LBB83_2:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	2
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	lui	a2, 1048320
	addi	a3, a2, -1
	li	a2, -1
	call	__ltdf2
	li	a1, 1
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	bltz	a0, .LBB84_2
	j	.LBB84_1
.LBB84_1:
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	lui	a2, 524032
	addi	a3, a2, -1
	li	a2, -1
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	slt	a0, a0, a1
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB84_2
.LBB84_2:
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	andi	a0, a0, 1
	addi	sp, s0, -24
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	2
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
# %bb.0:
	addi	sp, sp, -112
	sw	ra, 108(sp)                     # 4-byte Folded Spill
	sw	s0, 104(sp)                     # 4-byte Folded Spill
	addi	s0, sp, 112
	andi	sp, sp, -16
	mv	a3, a0
	lw	a0, 0(a3)
	lw	a1, 4(a3)
	lw	a2, 8(a3)
	lw	a3, 12(a3)
	sw	a3, 92(sp)
	sw	a2, 88(sp)
	sw	a1, 84(sp)
	sw	a0, 80(sp)
	lw	a0, 80(sp)
	lw	a1, 84(sp)
	lw	a2, 88(sp)
	lw	a3, 92(sp)
	li	ra, -1
	sw	ra, 56(sp)
	sw	ra, 52(sp)
	sw	ra, 48(sp)
	lui	ra, 1048560
	addi	ra, ra, -1
	sw	ra, 60(sp)
	sw	a3, 76(sp)
	sw	a2, 72(sp)
	sw	a1, 68(sp)
	sw	a0, 64(sp)
	addi	a0, sp, 64
	addi	a1, sp, 48
	call	__lttf2
	li	a1, 1
	sw	a1, 12(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB85_2
	j	.LBB85_1
.LBB85_1:
	lw	a0, 80(sp)
	lw	a1, 84(sp)
	lw	a2, 88(sp)
	lw	a3, 92(sp)
	li	ra, -1
	sw	ra, 24(sp)
	sw	ra, 20(sp)
	sw	ra, 16(sp)
	sw	a3, 44(sp)
	sw	a2, 40(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	lui	a0, 524272
	addi	a0, a0, -1
	sw	a0, 28(sp)
	addi	a0, sp, 32
	addi	a1, sp, 16
	call	__gttf2
	mv	a1, a0
	li	a0, 0
	slt	a0, a0, a1
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB85_2
.LBB85_2:
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	andi	a0, a0, 1
	addi	sp, s0, -112
	lw	ra, 108(sp)                     # 4-byte Folded Reload
	lw	s0, 104(sp)                     # 4-byte Folded Reload
	addi	sp, sp, 112
	ret
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	2
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	andi	sp, sp, -8
	sw	a0, 28(sp)
	sw	a1, 24(sp)
	lw	a0, 24(sp)
	call	__floatsidf
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	mv	a2, a1
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	addi	a0, sp, 8
	call	__extenddftf2
	lw	a0, 8(sp)
	lw	a2, 12(sp)
	lw	a3, 16(sp)
	lw	ra, 20(sp)
	lw	a1, 28(sp)
	sw	ra, 12(a1)
	sw	a3, 8(a1)
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	addi	sp, s0, -40
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	2
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x12 killed $x10
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	slli	a0, a0, 1
	srli	a1, a0, 1
	lui	a0, 522240
	blt	a0, a1, .LBB87_11
	j	.LBB87_1
.LBB87_1:
	lw	a1, -12(s0)
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	mv	a0, a1
	call	__addsf3
	lw	a1, -24(s0)                     # 4-byte Folded Reload
	call	__eqsf2
	beqz	a0, .LBB87_11
	j	.LBB87_2
.LBB87_2:
	lw	a0, -16(s0)
	lui	a1, 262144
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	lui	a1, 258048
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	bltz	a0, .LBB87_4
# %bb.3:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	sw	a0, -28(s0)                     # 4-byte Folded Spill
.LBB87_4:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB87_5
.LBB87_5:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	srli	a1, a0, 31
	add	a1, a0, a1
	andi	a1, a1, -2
	sub	a0, a0, a1
	beqz	a0, .LBB87_7
	j	.LBB87_6
.LBB87_6:                               #   in Loop: Header=BB87_5 Depth=1
	lw	a1, -20(s0)
	lw	a0, -12(s0)
	call	__mulsf3
	sw	a0, -12(s0)
	j	.LBB87_7
.LBB87_7:                               #   in Loop: Header=BB87_5 Depth=1
	lw	a0, -16(s0)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	bnez	a0, .LBB87_9
	j	.LBB87_8
.LBB87_8:
	j	.LBB87_10
.LBB87_9:                               #   in Loop: Header=BB87_5 Depth=1
	lw	a1, -20(s0)
	mv	a0, a1
	call	__mulsf3
	sw	a0, -20(s0)
	j	.LBB87_5
.LBB87_10:
	j	.LBB87_11
.LBB87_11:
	lw	a0, -12(s0)
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
ldexp:                                  # @ldexp
# %bb.0:
	addi	sp, sp, -56
	sw	ra, 52(sp)                      # 4-byte Folded Spill
	sw	s0, 48(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 56
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 44(sp)
	sw	a0, 40(sp)
	sw	a2, 36(sp)
	lw	a2, 40(sp)
	lw	a0, 44(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a1, a0
	sw	a3, 16(sp)                      # 4-byte Folded Spill
	snez	a2, a2
	sw	a2, 20(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB88_2
# %bb.1:
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 20(sp)                      # 4-byte Folded Spill
.LBB88_2:
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB88_13
	j	.LBB88_3
.LBB88_3:
	lw	a2, 40(sp)
	sw	a2, 8(sp)                       # 4-byte Folded Spill
	lw	a3, 44(sp)
	sw	a3, 12(sp)                      # 4-byte Folded Spill
	mv	a0, a2
	mv	a1, a3
	call	__adddf3
	lw	a2, 8(sp)                       # 4-byte Folded Reload
	lw	a3, 12(sp)                      # 4-byte Folded Reload
	call	__eqdf2
	beqz	a0, .LBB88_13
	j	.LBB88_4
.LBB88_4:
	lw	a0, 36(sp)
	lui	a1, 262144
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	lui	a1, 261632
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	bltz	a0, .LBB88_6
# %bb.5:
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	sw	a0, 4(sp)                       # 4-byte Folded Spill
.LBB88_6:
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	li	a1, 0
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	j	.LBB88_7
.LBB88_7:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 36(sp)
	srli	a1, a0, 31
	add	a1, a0, a1
	andi	a1, a1, -2
	sub	a0, a0, a1
	beqz	a0, .LBB88_9
	j	.LBB88_8
.LBB88_8:                               #   in Loop: Header=BB88_7 Depth=1
	lw	a2, 24(sp)
	lw	a3, 28(sp)
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	call	__muldf3
	sw	a1, 44(sp)
	sw	a0, 40(sp)
	j	.LBB88_9
.LBB88_9:                               #   in Loop: Header=BB88_7 Depth=1
	lw	a0, 36(sp)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, 36(sp)
	lw	a0, 36(sp)
	bnez	a0, .LBB88_11
	j	.LBB88_10
.LBB88_10:
	j	.LBB88_12
.LBB88_11:                              #   in Loop: Header=BB88_7 Depth=1
	lw	a2, 24(sp)
	lw	a3, 28(sp)
	mv	a0, a2
	mv	a1, a3
	call	__muldf3
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	j	.LBB88_7
.LBB88_12:
	j	.LBB88_13
.LBB88_13:
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	addi	sp, s0, -56
	lw	ra, 52(sp)                      # 4-byte Folded Reload
	lw	s0, 48(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 56
	ret
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	2
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
# %bb.0:
	addi	sp, sp, -336
	sw	ra, 332(sp)                     # 4-byte Folded Spill
	sw	s0, 328(sp)                     # 4-byte Folded Spill
	addi	s0, sp, 336
	andi	sp, sp, -16
	mv	ra, a1
	lw	a1, 0(ra)
	sw	a1, 64(sp)                      # 4-byte Folded Spill
	lw	a1, 4(ra)
	lw	a3, 8(ra)
	lw	ra, 12(ra)
	sw	a0, 60(sp)                      # 4-byte Folded Spill
	lw	a0, 64(sp)                      # 4-byte Folded Reload
	sw	ra, 316(sp)
	sw	a3, 312(sp)
	sw	a1, 308(sp)
	sw	a0, 304(sp)
	sw	a2, 300(sp)
	lw	a0, 304(sp)
	sw	a0, 68(sp)                      # 4-byte Folded Spill
	lw	a0, 308(sp)
	sw	a0, 72(sp)                      # 4-byte Folded Spill
	lw	a2, 312(sp)
	sw	a2, 76(sp)                      # 4-byte Folded Spill
	lw	a0, 316(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	sw	a0, 80(sp)                      # 4-byte Folded Spill
	lui	a1, 524272
	sw	a1, 84(sp)                      # 4-byte Folded Spill
	slt	a3, a1, a0
	sw	a3, 88(sp)                      # 4-byte Folded Spill
	snez	a2, a2
	sw	a2, 92(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB89_2
# %bb.1:
	lw	a0, 88(sp)                      # 4-byte Folded Reload
	sw	a0, 92(sp)                      # 4-byte Folded Spill
.LBB89_2:
	lw	a1, 68(sp)                      # 4-byte Folded Reload
	lw	a2, 72(sp)                      # 4-byte Folded Reload
	lw	a3, 80(sp)                      # 4-byte Folded Reload
	lw	ra, 84(sp)                      # 4-byte Folded Reload
	lw	a0, 92(sp)                      # 4-byte Folded Reload
	sw	a0, 52(sp)                      # 4-byte Folded Spill
	lw	a0, 76(sp)                      # 4-byte Folded Reload
	xor	a3, a3, ra
	or	a0, a0, a3
	or	a1, a1, a2
	snez	a1, a1
	sw	a1, 56(sp)                      # 4-byte Folded Spill
	beqz	a0, .LBB89_4
# %bb.3:
	lw	a0, 52(sp)                      # 4-byte Folded Reload
	sw	a0, 56(sp)                      # 4-byte Folded Spill
.LBB89_4:
	lw	a0, 56(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB89_15
	j	.LBB89_5
.LBB89_5:
	lw	a0, 304(sp)
	sw	a0, 36(sp)                      # 4-byte Folded Spill
	lw	a1, 308(sp)
	sw	a1, 44(sp)                      # 4-byte Folded Spill
	lw	a2, 312(sp)
	sw	a2, 40(sp)                      # 4-byte Folded Spill
	lw	a3, 316(sp)
	sw	a3, 32(sp)                      # 4-byte Folded Spill
	sw	a3, 236(sp)
	sw	a2, 232(sp)
	sw	a1, 228(sp)
	sw	a0, 224(sp)
	sw	a3, 252(sp)
	sw	a2, 248(sp)
	sw	a1, 244(sp)
	sw	a0, 240(sp)
	addi	a0, sp, 256
	addi	a1, sp, 240
	addi	a2, sp, 224
	call	__addtf3
	lw	a0, 32(sp)                      # 4-byte Folded Reload
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	a1, 256(sp)
	sw	a1, 48(sp)                      # 4-byte Folded Spill
	lw	a1, 260(sp)
	lw	a2, 264(sp)
	lw	a3, 268(sp)
	sw	a0, 204(sp)
	lw	a0, 40(sp)                      # 4-byte Folded Reload
	sw	a0, 200(sp)
	lw	a0, 44(sp)                      # 4-byte Folded Reload
	sw	a0, 196(sp)
	lw	a0, 48(sp)                      # 4-byte Folded Reload
	sw	ra, 192(sp)
	sw	a3, 220(sp)
	sw	a2, 216(sp)
	sw	a1, 212(sp)
	sw	a0, 208(sp)
	addi	a0, sp, 208
	addi	a1, sp, 192
	call	__eqtf2
	beqz	a0, .LBB89_15
	j	.LBB89_6
.LBB89_6:
	lw	a0, 300(sp)
	lui	a1, 262144
	sw	a1, 24(sp)                      # 4-byte Folded Spill
	lui	a1, 262112
	sw	a1, 28(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB89_8
# %bb.7:
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a0, 28(sp)                      # 4-byte Folded Spill
.LBB89_8:
	lw	a0, 28(sp)                      # 4-byte Folded Reload
	li	a1, 0
	sw	a1, 276(sp)
	sw	a1, 272(sp)
	sw	a1, 280(sp)
	sw	a0, 284(sp)
	j	.LBB89_9
.LBB89_9:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 300(sp)
	srli	a1, a0, 31
	add	a1, a0, a1
	andi	a1, a1, -2
	sub	a0, a0, a1
	beqz	a0, .LBB89_11
	j	.LBB89_10
.LBB89_10:                              #   in Loop: Header=BB89_9 Depth=1
	lw	ra, 272(sp)
	lw	a0, 276(sp)
	sw	a0, 16(sp)                      # 4-byte Folded Spill
	lw	a0, 280(sp)
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	lw	a0, 284(sp)
	lw	a1, 304(sp)
	sw	a1, 20(sp)                      # 4-byte Folded Spill
	lw	a1, 308(sp)
	lw	a2, 312(sp)
	lw	a3, 316(sp)
	sw	a0, 156(sp)
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a0, 152(sp)
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 148(sp)
	lw	a0, 20(sp)                      # 4-byte Folded Reload
	sw	ra, 144(sp)
	sw	a3, 172(sp)
	sw	a2, 168(sp)
	sw	a1, 164(sp)
	sw	a0, 160(sp)
	addi	a0, sp, 176
	addi	a1, sp, 160
	addi	a2, sp, 144
	call	__multf3
	lw	a0, 176(sp)
	lw	a1, 180(sp)
	lw	a2, 184(sp)
	lw	a3, 188(sp)
	sw	a3, 316(sp)
	sw	a2, 312(sp)
	sw	a1, 308(sp)
	sw	a0, 304(sp)
	j	.LBB89_11
.LBB89_11:                              #   in Loop: Header=BB89_9 Depth=1
	lw	a0, 300(sp)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, 300(sp)
	lw	a0, 300(sp)
	bnez	a0, .LBB89_13
	j	.LBB89_12
.LBB89_12:
	j	.LBB89_14
.LBB89_13:                              #   in Loop: Header=BB89_9 Depth=1
	lw	a0, 272(sp)
	lw	a1, 276(sp)
	lw	a2, 280(sp)
	lw	a3, 284(sp)
	sw	a3, 108(sp)
	sw	a2, 104(sp)
	sw	a1, 100(sp)
	sw	a0, 96(sp)
	sw	a3, 124(sp)
	sw	a2, 120(sp)
	sw	a1, 116(sp)
	sw	a0, 112(sp)
	addi	a0, sp, 128
	addi	a1, sp, 112
	addi	a2, sp, 96
	call	__multf3
	lw	a0, 128(sp)
	lw	a1, 132(sp)
	lw	a2, 136(sp)
	lw	a3, 140(sp)
	sw	a3, 284(sp)
	sw	a2, 280(sp)
	sw	a1, 276(sp)
	sw	a0, 272(sp)
	j	.LBB89_9
.LBB89_14:
	j	.LBB89_15
.LBB89_15:
	lw	a1, 60(sp)                      # 4-byte Folded Reload
	lw	a0, 304(sp)
	lw	a2, 308(sp)
	lw	a3, 312(sp)
	lw	ra, 316(sp)
	sw	ra, 12(a1)
	sw	a3, 8(a1)
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	addi	sp, s0, -336
	lw	ra, 332(sp)                     # 4-byte Folded Reload
	lw	s0, 328(sp)                     # 4-byte Folded Reload
	addi	sp, sp, 336
	ret
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	2
	.type	memxor,@function
memxor:                                 # @memxor
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -16(s0)
	sw	a0, -24(s0)
	lw	a0, -12(s0)
	sw	a0, -28(s0)
	j	.LBB90_1
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB90_4
	j	.LBB90_2
.LBB90_2:                               #   in Loop: Header=BB90_1 Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, 1
	sw	a1, -24(s0)
	lbu	a2, 0(a0)
	lw	a1, -28(s0)
	addi	a0, a1, 1
	sw	a0, -28(s0)
	lbu	a0, 0(a1)
	xor	a0, a0, a2
	sb	a0, 0(a1)
	j	.LBB90_3
.LBB90_3:                               #   in Loop: Header=BB90_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB90_1
.LBB90_4:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	2
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	call	strlen
	mv	a1, a0
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	add	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB91_1
.LBB91_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB91_3
	j	.LBB91_2
.LBB91_2:                               #   in Loop: Header=BB91_1 Depth=1
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	lw	a1, -24(s0)
	sb	a0, 0(a1)
	snez	a0, a0
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB91_3
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB91_6
	j	.LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	j	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB91_1
.LBB91_6:
	lw	a0, -20(s0)
	bnez	a0, .LBB91_8
	j	.LBB91_7
.LBB91_7:
	lw	a1, -24(s0)
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB91_8
.LBB91_8:
	lw	a0, -12(s0)
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	li	a2, 0
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	bgeu	a0, a1, .LBB92_3
	j	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a0, a0
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB92_6
	j	.LBB92_4
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	j	.LBB92_5
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB92_1
.LBB92_6:
	lw	a0, -20(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	2
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	j	.LBB93_1
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB93_8
	j	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	j	.LBB93_3
.LBB93_3:                               #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB93_7
	j	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_3 Depth=2
	lw	a0, -24(s0)
	addi	a1, a0, 1
	sw	a1, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB93_6
	j	.LBB93_5
.LBB93_5:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB93_9
.LBB93_6:                               #   in Loop: Header=BB93_3 Depth=2
	j	.LBB93_3
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB93_1
.LBB93_8:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB93_9
.LBB93_9:
	lw	a0, -12(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	2
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	bne	a0, a1, .LBB94_3
	j	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	lw	a0, -12(s0)
	sw	a0, -20(s0)
	j	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	j	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	lw	a0, -12(s0)
	addi	a1, a0, 1
	sw	a1, -12(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB94_1
	j	.LBB94_5
.LBB94_5:
	lw	a0, -20(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	2
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	call	strlen
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	bnez	a0, .LBB95_2
	j	.LBB95_1
.LBB95_1:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB95_9
.LBB95_2:
	j	.LBB95_3
.LBB95_3:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	lbu	a1, 0(a1)
	call	strchr
	sw	a0, -24(s0)
	beqz	a0, .LBB95_8
	j	.LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=1
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	lw	a2, -28(s0)
	call	strncmp
	bnez	a0, .LBB95_6
	j	.LBB95_5
.LBB95_5:
	lw	a0, -24(s0)
	sw	a0, -12(s0)
	j	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=1
	j	.LBB95_7
.LBB95_7:                               #   in Loop: Header=BB95_3 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB95_3
.LBB95_8:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB95_9
.LBB95_9:
	lw	a0, -12(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	2
	.type	copysign,@function
copysign:                               # @copysign
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	sw	a3, 12(sp)
	sw	a2, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a3, 0
	mv	a2, a3
	call	__ltdf2
	bgez	a0, .LBB96_2
	j	.LBB96_1
.LBB96_1:
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	li	a3, 0
	sw	a3, 4(sp)                       # 4-byte Folded Spill
	mv	a2, a3
	call	__gtdf2
	mv	a1, a0
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	blt	a0, a1, .LBB96_4
	j	.LBB96_2
.LBB96_2:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a3, 0
	sw	a3, 0(sp)                       # 4-byte Folded Spill
	mv	a2, a3
	call	__gtdf2
	mv	a1, a0
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	bge	a0, a1, .LBB96_5
	j	.LBB96_3
.LBB96_3:
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	li	a3, 0
	mv	a2, a3
	call	__ltdf2
	bgez	a0, .LBB96_5
	j	.LBB96_4
.LBB96_4:
	lw	a1, 16(sp)
	lw	a0, 20(sp)
	lui	a2, 524288
	xor	a0, a0, a2
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	j	.LBB96_6
.LBB96_5:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	j	.LBB96_6
.LBB96_6:
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	addi	sp, s0, -40
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	2
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	sw	a3, -28(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lw	a1, -28(s0)
	sub	a0, a0, a1
	sw	a0, -36(s0)
	lw	a0, -28(s0)
	bnez	a0, .LBB97_2
	j	.LBB97_1
.LBB97_1:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB97_12
.LBB97_2:
	lw	a0, -20(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB97_4
	j	.LBB97_3
.LBB97_3:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB97_12
.LBB97_4:
	lw	a0, -16(s0)
	sw	a0, -32(s0)
	j	.LBB97_5
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -32(s0)
	lw	a0, -36(s0)
	bltu	a0, a1, .LBB97_11
	j	.LBB97_6
.LBB97_6:                               #   in Loop: Header=BB97_5 Depth=1
	lw	a0, -32(s0)
	lbu	a0, 0(a0)
	lw	a1, -24(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB97_9
	j	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_5 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	lw	a1, -24(s0)
	addi	a1, a1, 1
	lw	a2, -28(s0)
	addi	a2, a2, -1
	call	memcmp
	bnez	a0, .LBB97_9
	j	.LBB97_8
.LBB97_8:
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB97_12
.LBB97_9:                               #   in Loop: Header=BB97_5 Depth=1
	j	.LBB97_10
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB97_5
.LBB97_11:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB97_12
.LBB97_12:
	lw	a0, -12(s0)
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	2
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -12(s0)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	lw	a1, -16(s0)
	lw	a2, -20(s0)
	call	memcpy
                                        # kill: def $x11 killed $x10
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	lw	a1, -20(s0)
	add	a0, a0, a1
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	2
	.type	frexp,@function
frexp:                                  # @frexp
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	sw	a2, 12(sp)
	li	a3, 0
	sw	a3, 4(sp)
	sw	a3, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	mv	a2, a3
	call	__ltdf2
	bgez	a0, .LBB99_2
	j	.LBB99_1
.LBB99_1:
	lw	a0, 20(sp)
	lui	a1, 524288
	xor	a0, a0, a1
	sw	a0, 20(sp)
	li	a0, 1
	sw	a0, 8(sp)
	j	.LBB99_2
.LBB99_2:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a2, 0
	lui	a3, 261888
	call	__gedf2
	bltz	a0, .LBB99_7
	j	.LBB99_3
.LBB99_3:
	j	.LBB99_4
.LBB99_4:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a2, 0
	lui	a3, 261888
	call	__gedf2
	bltz	a0, .LBB99_6
	j	.LBB99_5
.LBB99_5:                               #   in Loop: Header=BB99_4 Depth=1
	lw	a0, 4(sp)
	addi	a0, a0, 1
	sw	a0, 4(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a2, 0
	lui	a3, 261632
	call	__muldf3
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	j	.LBB99_4
.LBB99_6:
	j	.LBB99_14
.LBB99_7:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a2, 0
	lui	a3, 261632
	call	__ltdf2
	bgez	a0, .LBB99_13
	j	.LBB99_8
.LBB99_8:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a3, 0
	mv	a2, a3
	call	__eqdf2
	beqz	a0, .LBB99_13
	j	.LBB99_9
.LBB99_9:
	j	.LBB99_10
.LBB99_10:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a2, 0
	lui	a3, 261632
	call	__ltdf2
	bgez	a0, .LBB99_12
	j	.LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_10 Depth=1
	lw	a0, 4(sp)
	addi	a0, a0, -1
	sw	a0, 4(sp)
	lw	a2, 16(sp)
	lw	a3, 20(sp)
	mv	a0, a2
	mv	a1, a3
	call	__adddf3
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	j	.LBB99_10
.LBB99_12:
	j	.LBB99_13
.LBB99_13:
	j	.LBB99_14
.LBB99_14:
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	sw	a0, 0(a1)
	lw	a0, 8(sp)
	beqz	a0, .LBB99_16
	j	.LBB99_15
.LBB99_15:
	lw	a0, 20(sp)
	lui	a1, 524288
	xor	a0, a0, a1
	sw	a0, 20(sp)
	j	.LBB99_16
.LBB99_16:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	addi	sp, s0, -32
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	sw	a3, 20(sp)
	sw	a2, 16(sp)
	li	a0, 0
	sw	a0, 12(sp)
	sw	a0, 8(sp)
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	j	.LBB100_1
.LBB100_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, 4(sp)
	lw	a0, 0(sp)
	or	a0, a0, a1
	beqz	a0, .LBB100_5
	j	.LBB100_2
.LBB100_2:                              #   in Loop: Header=BB100_1 Depth=1
	lbu	a0, 0(sp)
	andi	a0, a0, 1
	beqz	a0, .LBB100_4
	j	.LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
	lw	a1, 16(sp)
	lw	a3, 20(sp)
	lw	a2, 8(sp)
	lw	a0, 12(sp)
	add	a0, a0, a3
	add	a1, a2, a1
	sltu	a2, a1, a2
	add	a0, a0, a2
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	j	.LBB100_4
.LBB100_4:                              #   in Loop: Header=BB100_1 Depth=1
	lw	a0, 20(sp)
	lw	a1, 16(sp)
	srli	a2, a1, 31
	slli	a0, a0, 1
	or	a0, a0, a2
	slli	a1, a1, 1
	sw	a1, 16(sp)
	sw	a0, 20(sp)
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	slli	a2, a1, 31
	srli	a0, a0, 1
	or	a0, a0, a2
	srli	a1, a1, 1
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	j	.LBB100_1
.LBB100_5:
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	addi	sp, s0, -40
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	2
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	li	a0, 1
	sw	a0, -28(s0)
	li	a0, 0
	sw	a0, -32(s0)
	j	.LBB101_1
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	li	a2, 0
	sw	a2, -36(s0)                     # 4-byte Folded Spill
	bgeu	a0, a1, .LBB101_4
	j	.LBB101_2
.LBB101_2:                              #   in Loop: Header=BB101_1 Depth=1
	lw	a0, -28(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB101_4
	j	.LBB101_3
.LBB101_3:                              #   in Loop: Header=BB101_1 Depth=1
	lbu	a0, -17(s0)
	andi	a0, a0, 128
	seqz	a0, a0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB101_4
.LBB101_4:                              #   in Loop: Header=BB101_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB101_6
	j	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -28(s0)
	slli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB101_1
.LBB101_6:
	j	.LBB101_7
.LBB101_7:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB101_11
	j	.LBB101_8
.LBB101_8:                              #   in Loop: Header=BB101_7 Depth=1
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bltu	a0, a1, .LBB101_10
	j	.LBB101_9
.LBB101_9:                              #   in Loop: Header=BB101_7 Depth=1
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	or	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB101_10
.LBB101_10:                             #   in Loop: Header=BB101_7 Depth=1
	lw	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB101_7
.LBB101_11:
	lw	a0, -24(s0)
	beqz	a0, .LBB101_13
	j	.LBB101_12
.LBB101_12:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB101_14
.LBB101_13:
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB101_14
.LBB101_14:
	lw	a0, -12(s0)
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	2
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
                                        # kill: def $x11 killed $x10
	sb	a0, -13(s0)
	li	a0, 1
	bnez	a0, .LBB102_2
	j	.LBB102_1
.LBB102_1:
	lbu	a0, -13(s0)
	not	a0, a0
	sb	a0, -13(s0)
	j	.LBB102_2
.LBB102_2:
	lbu	a0, -13(s0)
	bnez	a0, .LBB102_4
	j	.LBB102_3
.LBB102_3:
	li	a0, 7
	sw	a0, -12(s0)
	j	.LBB102_5
.LBB102_4:
	lbu	a0, -13(s0)
	slli	a0, a0, 8
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
	not	a0, a0
	srli	a1, a0, 1
	lui	a2, 349525
	addi	a2, a2, 1365
	and	a1, a1, a2
	sub	a1, a0, a1
	lui	a0, 209715
	addi	a2, a0, 819
	and	a0, a1, a2
	srli	a1, a1, 2
	and	a1, a1, a2
	add	a0, a0, a1
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addi	a1, a1, -241
	and	a0, a0, a1
	slli	a1, a0, 8
	add	a0, a0, a1
	slli	a1, a0, 16
	add	a0, a0, a1
	srli	a0, a0, 24
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -12(s0)
	j	.LBB102_5
.LBB102_5:
	lw	a0, -12(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	2
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	lw	a0, 28(sp)
	bgez	a0, .LBB103_2
	j	.LBB103_1
.LBB103_1:
	lw	a1, 28(sp)
	lw	a0, 24(sp)
	not	a0, a0
	not	a1, a1
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	j	.LBB103_2
.LBB103_2:
	lw	a1, 28(sp)
	lw	a0, 24(sp)
	or	a0, a0, a1
	bnez	a0, .LBB103_4
	j	.LBB103_3
.LBB103_3:
	li	a0, 63
	sw	a0, 36(sp)
	j	.LBB103_7
.LBB103_4:
	lw	a2, 24(sp)
	lw	a0, 28(sp)
	sw	a0, 8(sp)                       # 4-byte Folded Spill
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
	not	a1, a0
	srli	a3, a1, 1
	lui	a0, 349525
	addi	a0, a0, 1365
	and	a3, a3, a0
	sub	a3, a1, a3
	lui	a1, 209715
	addi	ra, a1, 819
	sw	ra, 4(sp)                       # 4-byte Folded Spill
	and	a1, a3, ra
	srli	a3, a3, 2
	and	a3, a3, ra
	add	a1, a1, a3
	srli	a3, a1, 4
	add	a1, a1, a3
	lui	a3, 61681
	addi	a3, a3, -241
	and	a1, a1, a3
	slli	ra, a1, 8
	add	a1, a1, ra
	slli	ra, a1, 16
	add	a1, a1, ra
	srli	a1, a1, 24
	srli	ra, a2, 1
	or	a2, a2, ra
	srli	ra, a2, 2
	or	a2, a2, ra
	srli	ra, a2, 4
	or	a2, a2, ra
	srli	ra, a2, 8
	or	a2, a2, ra
	srli	ra, a2, 16
	or	a2, a2, ra
	not	a2, a2
	srli	ra, a2, 1
	and	ra, ra, a0
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	sub	ra, a2, ra
	and	a2, ra, a0
	srli	ra, ra, 2
	and	ra, ra, a0
	lw	a0, 8(sp)                       # 4-byte Folded Reload
	add	a2, a2, ra
	srli	ra, a2, 4
	add	a2, a2, ra
	and	a2, a2, a3
	slli	a3, a2, 8
	add	a2, a2, a3
	slli	a3, a2, 16
	add	a2, a2, a3
	srli	a2, a2, 24
	addi	a2, a2, 32
	sw	a2, 12(sp)                      # 4-byte Folded Spill
	sw	a1, 16(sp)                      # 4-byte Folded Spill
	bnez	a0, .LBB103_6
# %bb.5:
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a0, 16(sp)                      # 4-byte Folded Spill
.LBB103_6:
	lw	a0, 16(sp)                      # 4-byte Folded Reload
	sw	a0, 20(sp)
	lw	a0, 20(sp)
	addi	a0, a0, -1
	sw	a0, 36(sp)
	j	.LBB103_7
.LBB103_7:
	lw	a0, 36(sp)
	addi	sp, s0, -48
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	2
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB104_1
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	beqz	a0, .LBB104_5
	j	.LBB104_2
.LBB104_2:                              #   in Loop: Header=BB104_1 Depth=1
	lbu	a0, -12(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB104_4
	j	.LBB104_3
.LBB104_3:                              #   in Loop: Header=BB104_1 Depth=1
	lw	a1, -16(s0)
	lw	a0, -20(s0)
	add	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB104_4
.LBB104_4:                              #   in Loop: Header=BB104_1 Depth=1
	lw	a0, -12(s0)
	srli	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB104_1
.LBB104_5:
	lw	a0, -20(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	2
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 3
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	andi	a0, a0, -8
	sw	a0, -32(s0)
	lw	a0, -12(s0)
	sw	a0, -36(s0)
	lw	a0, -16(s0)
	sw	a0, -40(s0)
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bltu	a0, a1, .LBB105_2
	j	.LBB105_1
.LBB105_1:
	lw	a1, -36(s0)
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	bgeu	a0, a1, .LBB105_10
	j	.LBB105_2
.LBB105_2:
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB105_3
.LBB105_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB105_6
	j	.LBB105_4
.LBB105_4:                              #   in Loop: Header=BB105_3 Depth=1
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	slli	a3, a1, 3
	add	a1, a0, a3
	lw	a0, 0(a1)
	lw	a2, 4(a1)
	lw	a1, -12(s0)
	add	a1, a1, a3
	sw	a2, 4(a1)
	sw	a0, 0(a1)
	j	.LBB105_5
.LBB105_5:                              #   in Loop: Header=BB105_3 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB105_3
.LBB105_6:
	j	.LBB105_7
.LBB105_7:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -20(s0)
	lw	a0, -32(s0)
	bgeu	a0, a1, .LBB105_9
	j	.LBB105_8
.LBB105_8:                              #   in Loop: Header=BB105_7 Depth=1
	lw	a0, -40(s0)
	lw	a2, -32(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB105_7
.LBB105_9:
	j	.LBB105_14
.LBB105_10:
	j	.LBB105_11
.LBB105_11:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB105_13
	j	.LBB105_12
.LBB105_12:                             #   in Loop: Header=BB105_11 Depth=1
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB105_11
.LBB105_13:
	j	.LBB105_14
.LBB105_14:
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	2
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -12(s0)
	sw	a0, -32(s0)
	lw	a0, -16(s0)
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	lw	a1, -36(s0)
	bltu	a0, a1, .LBB106_2
	j	.LBB106_1
.LBB106_1:
	lw	a1, -32(s0)
	lw	a0, -36(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	bgeu	a0, a1, .LBB106_9
	j	.LBB106_2
.LBB106_2:
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB106_3
.LBB106_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB106_6
	j	.LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_3 Depth=1
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	slli	a2, a1, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	lw	a1, -12(s0)
	add	a1, a1, a2
	sh	a0, 0(a1)
	j	.LBB106_5
.LBB106_5:                              #   in Loop: Header=BB106_3 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB106_3
.LBB106_6:
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB106_8
	j	.LBB106_7
.LBB106_7:
	lw	a0, -36(s0)
	lw	a1, -20(s0)
	addi	a2, a1, -1
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB106_8
.LBB106_8:
	j	.LBB106_13
.LBB106_9:
	j	.LBB106_10
.LBB106_10:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB106_12
	j	.LBB106_11
.LBB106_11:                             #   in Loop: Header=BB106_10 Depth=1
	lw	a0, -36(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB106_10
.LBB106_12:
	j	.LBB106_13
.LBB106_13:
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	2
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 2
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	andi	a0, a0, -4
	sw	a0, -32(s0)
	lw	a0, -12(s0)
	sw	a0, -36(s0)
	lw	a0, -16(s0)
	sw	a0, -40(s0)
	lw	a0, -36(s0)
	lw	a1, -40(s0)
	bltu	a0, a1, .LBB107_2
	j	.LBB107_1
.LBB107_1:
	lw	a1, -36(s0)
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	bgeu	a0, a1, .LBB107_10
	j	.LBB107_2
.LBB107_2:
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB107_3
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB107_6
	j	.LBB107_4
.LBB107_4:                              #   in Loop: Header=BB107_3 Depth=1
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a1, -12(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB107_3
.LBB107_6:
	j	.LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -20(s0)
	lw	a0, -32(s0)
	bgeu	a0, a1, .LBB107_9
	j	.LBB107_8
.LBB107_8:                              #   in Loop: Header=BB107_7 Depth=1
	lw	a0, -40(s0)
	lw	a2, -32(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB107_7
.LBB107_9:
	j	.LBB107_14
.LBB107_10:
	j	.LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB107_13
	j	.LBB107_12
.LBB107_12:                             #   in Loop: Header=BB107_11 Depth=1
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB107_11
.LBB107_13:
	j	.LBB107_14
.LBB107_14:
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	2
	.type	__modi,@function
__modi:                                 # @__modi
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	tail	__modsi3
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	2
	.type	__uitod,@function
__uitod:                                # @__uitod
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	call	__floatunsidf
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	2
	.type	__uitof,@function
__uitof:                                # @__uitof
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	call	__floatunsisf
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	2
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	call	__floatundidf
	addi	sp, s0, -16
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	2
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	call	__floatundisf
	addi	sp, s0, -16
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	2
	.type	__umodi,@function
__umodi:                                # @__umodi
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	tail	__umodsi3
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	2
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x11 killed $x10
	sh	a0, -10(s0)
	li	a0, 0
	sw	a0, -16(s0)
	j	.LBB114_1
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -16(s0)
	li	a0, 15
	blt	a0, a1, .LBB114_6
	j	.LBB114_2
.LBB114_2:                              #   in Loop: Header=BB114_1 Depth=1
	lhu	a0, -10(s0)
	lw	a2, -16(s0)
	li	a1, 15
	sub	a1, a1, a2
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB114_4
	j	.LBB114_3
.LBB114_3:
	j	.LBB114_6
.LBB114_4:                              #   in Loop: Header=BB114_1 Depth=1
	j	.LBB114_5
.LBB114_5:                              #   in Loop: Header=BB114_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB114_1
.LBB114_6:
	lw	a0, -16(s0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	2
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x11 killed $x10
	sh	a0, -10(s0)
	li	a0, 0
	sw	a0, -16(s0)
	j	.LBB115_1
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -16(s0)
	li	a0, 15
	blt	a0, a1, .LBB115_6
	j	.LBB115_2
.LBB115_2:                              #   in Loop: Header=BB115_1 Depth=1
	lhu	a0, -10(s0)
	lw	a1, -16(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB115_4
	j	.LBB115_3
.LBB115_3:
	j	.LBB115_6
.LBB115_4:                              #   in Loop: Header=BB115_1 Depth=1
	j	.LBB115_5
.LBB115_5:                              #   in Loop: Header=BB115_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB115_1
.LBB115_6:
	lw	a0, -16(s0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	2
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
                                        # kill: def $x11 killed $x10
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lui	a1, 290816
	call	__gesf2
	bltz	a0, .LBB116_2
	j	.LBB116_1
.LBB116_1:
	lw	a0, -16(s0)
	lui	a1, 815104
	call	__addsf3
	call	__fixsfsi
	lui	a1, 8
	add	a0, a0, a1
	sw	a0, -12(s0)
	j	.LBB116_3
.LBB116_2:
	lw	a0, -16(s0)
	call	__fixsfsi
	sw	a0, -12(s0)
	j	.LBB116_3
.LBB116_3:
	lw	a0, -12(s0)
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	2
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
                                        # kill: def $x11 killed $x10
	sh	a0, -10(s0)
	li	a0, 0
	sw	a0, -20(s0)
	sw	a0, -16(s0)
	j	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -16(s0)
	li	a0, 15
	blt	a0, a1, .LBB117_6
	j	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	lhu	a0, -10(s0)
	lw	a1, -16(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB117_4
	j	.LBB117_3
.LBB117_3:                              #   in Loop: Header=BB117_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB117_4
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	j	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB117_1
.LBB117_6:
	lw	a0, -20(s0)
	andi	a0, a0, 1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	2
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
                                        # kill: def $x11 killed $x10
	sh	a0, -10(s0)
	li	a0, 0
	sw	a0, -20(s0)
	sw	a0, -16(s0)
	j	.LBB118_1
.LBB118_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -16(s0)
	li	a0, 15
	blt	a0, a1, .LBB118_6
	j	.LBB118_2
.LBB118_2:                              #   in Loop: Header=BB118_1 Depth=1
	lhu	a0, -10(s0)
	lw	a1, -16(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB118_4
	j	.LBB118_3
.LBB118_3:                              #   in Loop: Header=BB118_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB118_4
.LBB118_4:                              #   in Loop: Header=BB118_1 Depth=1
	j	.LBB118_5
.LBB118_5:                              #   in Loop: Header=BB118_1 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB118_1
.LBB118_6:
	lw	a0, -20(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	2
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	beqz	a0, .LBB119_5
	j	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	lbu	a0, -12(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB119_4
	j	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	lw	a1, -16(s0)
	lw	a0, -20(s0)
	add	a0, a0, a1
	sw	a0, -20(s0)
	j	.LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	lw	a0, -12(s0)
	srli	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB119_1
.LBB119_5:
	lw	a0, -20(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	2
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	li	a0, 0
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	bnez	a0, .LBB120_2
	j	.LBB120_1
.LBB120_1:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB120_8
.LBB120_2:
	j	.LBB120_3
.LBB120_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB120_7
	j	.LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_3 Depth=1
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB120_6
	j	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_3 Depth=1
	lw	a1, -16(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB120_6
.LBB120_6:                              #   in Loop: Header=BB120_3 Depth=1
	lw	a0, -16(s0)
	slli	a0, a0, 1
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB120_3
.LBB120_7:
	lw	a0, -24(s0)
	sw	a0, -12(s0)
	j	.LBB120_8
.LBB120_8:
	lw	a0, -12(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	2
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	li	a0, 1
	sw	a0, -28(s0)
	li	a0, 0
	sw	a0, -32(s0)
	j	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	li	a2, 0
	sw	a2, -36(s0)                     # 4-byte Folded Spill
	bgeu	a0, a1, .LBB121_4
	j	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	lw	a0, -28(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB121_4
	j	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	lbu	a0, -17(s0)
	andi	a0, a0, 128
	seqz	a0, a0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB121_6
	j	.LBB121_5
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -28(s0)
	slli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB121_1
.LBB121_6:
	j	.LBB121_7
.LBB121_7:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB121_11
	j	.LBB121_8
.LBB121_8:                              #   in Loop: Header=BB121_7 Depth=1
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bltu	a0, a1, .LBB121_10
	j	.LBB121_9
.LBB121_9:                              #   in Loop: Header=BB121_7 Depth=1
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	or	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB121_10
.LBB121_10:                             #   in Loop: Header=BB121_7 Depth=1
	lw	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB121_7
.LBB121_11:
	lw	a0, -24(s0)
	beqz	a0, .LBB121_13
	j	.LBB121_12
.LBB121_12:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB121_14
.LBB121_13:
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB121_14
.LBB121_14:
	lw	a0, -12(s0)
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	2
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	__ltsf2
	bgez	a0, .LBB122_2
	j	.LBB122_1
.LBB122_1:
	li	a0, -1
	sw	a0, -12(s0)
	j	.LBB122_5
.LBB122_2:
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB122_4
	j	.LBB122_3
.LBB122_3:
	li	a0, 1
	sw	a0, -12(s0)
	j	.LBB122_5
.LBB122_4:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB122_5
.LBB122_5:
	lw	a0, -12(s0)
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	2
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	sw	a3, 4(sp)
	sw	a2, 0(sp)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	lw	a2, 0(sp)
	lw	a3, 4(sp)
	call	__ltdf2
	bgez	a0, .LBB123_2
	j	.LBB123_1
.LBB123_1:
	li	a0, -1
	sw	a0, 20(sp)
	j	.LBB123_5
.LBB123_2:
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	lw	a2, 0(sp)
	lw	a3, 4(sp)
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	bge	a0, a1, .LBB123_4
	j	.LBB123_3
.LBB123_3:
	li	a0, 1
	sw	a0, 20(sp)
	j	.LBB123_5
.LBB123_4:
	li	a0, 0
	sw	a0, 20(sp)
	j	.LBB123_5
.LBB123_5:
	lw	a0, 20(sp)
	addi	sp, s0, -32
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	2
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	srai	a1, a0, 31
	lw	a2, -16(s0)
	srai	a3, a2, 31
	call	__muldi3
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	2
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -12(s0)
	lw	a2, -16(s0)
	li	a3, 0
	mv	a1, a3
	call	__muldi3
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	2
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 0
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	lw	a0, -16(s0)
	bgez	a0, .LBB126_2
	j	.LBB126_1
.LBB126_1:
	lw	a1, -16(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -16(s0)
	li	a0, 1
	sw	a0, -24(s0)
	j	.LBB126_2
.LBB126_2:
	li	a0, 0
	sb	a0, -17(s0)
	j	.LBB126_3
.LBB126_3:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	li	a1, 0
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB126_5
	j	.LBB126_4
.LBB126_4:                              #   in Loop: Header=BB126_3 Depth=1
	lbu	a0, -17(s0)
	sltiu	a0, a0, 32
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB126_5
.LBB126_5:                              #   in Loop: Header=BB126_3 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB126_10
	j	.LBB126_6
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	lbu	a0, -16(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB126_8
	j	.LBB126_7
.LBB126_7:                              #   in Loop: Header=BB126_3 Depth=1
	lw	a1, -12(s0)
	lw	a0, -28(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB126_8
.LBB126_8:                              #   in Loop: Header=BB126_3 Depth=1
	lw	a0, -12(s0)
	slli	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	srai	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB126_9
.LBB126_9:                              #   in Loop: Header=BB126_3 Depth=1
	lbu	a0, -17(s0)
	addi	a0, a0, 1
	sb	a0, -17(s0)
	j	.LBB126_3
.LBB126_10:
	lw	a0, -24(s0)
	beqz	a0, .LBB126_12
	j	.LBB126_11
.LBB126_11:
	lw	a1, -28(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB126_13
.LBB126_12:
	lw	a0, -28(s0)
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB126_13
.LBB126_13:
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	2
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 0
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	bgez	a0, .LBB127_2
	j	.LBB127_1
.LBB127_1:
	lw	a1, -12(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -12(s0)
	lw	a0, -20(s0)
	seqz	a0, a0
	sw	a0, -20(s0)
	j	.LBB127_2
.LBB127_2:
	lw	a0, -16(s0)
	bgez	a0, .LBB127_4
	j	.LBB127_3
.LBB127_3:
	lw	a1, -16(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	seqz	a0, a0
	sw	a0, -20(s0)
	j	.LBB127_4
.LBB127_4:
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	li	a2, 0
	call	__udivmodsi4
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	beqz	a0, .LBB127_6
	j	.LBB127_5
.LBB127_5:
	lw	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB127_6
.LBB127_6:
	lw	a0, -24(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	2
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	li	a0, 0
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	bgez	a0, .LBB128_2
	j	.LBB128_1
.LBB128_1:
	lw	a1, -12(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -12(s0)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB128_2
.LBB128_2:
	lw	a0, -16(s0)
	bgez	a0, .LBB128_4
	j	.LBB128_3
.LBB128_3:
	lw	a1, -16(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -16(s0)
	j	.LBB128_4
.LBB128_4:
	lw	a0, -12(s0)
	lw	a1, -16(s0)
	li	a2, 1
	call	__udivmodsi4
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	beqz	a0, .LBB128_6
	j	.LBB128_5
.LBB128_5:
	lw	a1, -24(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -24(s0)
	j	.LBB128_6
.LBB128_6:
	lw	a0, -24(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	2
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sh	a0, -12(s0)
	sh	a1, -14(s0)
	sw	a2, -20(s0)
	li	a0, 1
	sh	a0, -22(s0)
	li	a0, 0
	sh	a0, -24(s0)
	j	.LBB129_1
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	lhu	a0, -14(s0)
	lhu	a1, -12(s0)
	li	a2, 0
	sw	a2, -28(s0)                     # 4-byte Folded Spill
	bge	a0, a1, .LBB129_4
	j	.LBB129_2
.LBB129_2:                              #   in Loop: Header=BB129_1 Depth=1
	lhu	a0, -22(s0)
	li	a1, 0
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB129_4
	j	.LBB129_3
.LBB129_3:                              #   in Loop: Header=BB129_1 Depth=1
	lhu	a0, -14(s0)
	lui	a1, 8
	and	a0, a0, a1
	seqz	a0, a0
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB129_4
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB129_6
	j	.LBB129_5
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	lh	a0, -14(s0)
	slli	a0, a0, 1
	sh	a0, -14(s0)
	lh	a0, -22(s0)
	slli	a0, a0, 1
	sh	a0, -22(s0)
	j	.LBB129_1
.LBB129_6:
	j	.LBB129_7
.LBB129_7:                              # =>This Inner Loop Header: Depth=1
	lhu	a0, -22(s0)
	beqz	a0, .LBB129_11
	j	.LBB129_8
.LBB129_8:                              #   in Loop: Header=BB129_7 Depth=1
	lhu	a0, -12(s0)
	lhu	a1, -14(s0)
	blt	a0, a1, .LBB129_10
	j	.LBB129_9
.LBB129_9:                              #   in Loop: Header=BB129_7 Depth=1
	lh	a1, -14(s0)
	lh	a0, -12(s0)
	sub	a0, a0, a1
	sh	a0, -12(s0)
	lh	a1, -22(s0)
	lh	a0, -24(s0)
	or	a0, a0, a1
	sh	a0, -24(s0)
	j	.LBB129_10
.LBB129_10:                             #   in Loop: Header=BB129_7 Depth=1
	lhu	a0, -22(s0)
	srli	a0, a0, 1
	sh	a0, -22(s0)
	lhu	a0, -14(s0)
	srli	a0, a0, 1
	sh	a0, -14(s0)
	j	.LBB129_7
.LBB129_11:
	lw	a0, -20(s0)
	beqz	a0, .LBB129_13
	j	.LBB129_12
.LBB129_12:
	lh	a0, -12(s0)
	sh	a0, -10(s0)
	j	.LBB129_14
.LBB129_13:
	lh	a0, -24(s0)
	sh	a0, -10(s0)
	j	.LBB129_14
.LBB129_14:
	lhu	a0, -10(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	li	a0, 1
	sw	a0, -28(s0)
	li	a0, 0
	sw	a0, -32(s0)
	j	.LBB130_1
.LBB130_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	li	a2, 0
	sw	a2, -36(s0)                     # 4-byte Folded Spill
	bgeu	a0, a1, .LBB130_4
	j	.LBB130_2
.LBB130_2:                              #   in Loop: Header=BB130_1 Depth=1
	lw	a0, -28(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB130_4
	j	.LBB130_3
.LBB130_3:                              #   in Loop: Header=BB130_1 Depth=1
	lbu	a0, -17(s0)
	andi	a0, a0, 128
	seqz	a0, a0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB130_4
.LBB130_4:                              #   in Loop: Header=BB130_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB130_6
	j	.LBB130_5
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -28(s0)
	slli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB130_1
.LBB130_6:
	j	.LBB130_7
.LBB130_7:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB130_11
	j	.LBB130_8
.LBB130_8:                              #   in Loop: Header=BB130_7 Depth=1
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bltu	a0, a1, .LBB130_10
	j	.LBB130_9
.LBB130_9:                              #   in Loop: Header=BB130_7 Depth=1
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	or	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB130_10
.LBB130_10:                             #   in Loop: Header=BB130_7 Depth=1
	lw	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB130_7
.LBB130_11:
	lw	a0, -24(s0)
	beqz	a0, .LBB130_13
	j	.LBB130_12
.LBB130_12:
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB130_14
.LBB130_13:
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB130_14
.LBB130_14:
	lw	a0, -12(s0)
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	2
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	sw	a2, 20(sp)
	li	a0, 32
	sw	a0, 16(sp)
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lbu	a0, 20(sp)
	andi	a0, a0, 32
	beqz	a0, .LBB131_2
	j	.LBB131_1
.LBB131_1:
	li	a0, 0
	sw	a0, 0(sp)
	lw	a0, 8(sp)
	lw	a1, 20(sp)
	sll	a0, a0, a1
	sw	a0, 4(sp)
	j	.LBB131_5
.LBB131_2:
	lw	a0, 20(sp)
	bnez	a0, .LBB131_4
	j	.LBB131_3
.LBB131_3:
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	j	.LBB131_6
.LBB131_4:
	lw	a0, 8(sp)
	lw	a1, 20(sp)
	sll	a0, a0, a1
	sw	a0, 0(sp)
	lw	a0, 12(sp)
	lw	a2, 20(sp)
	sll	a0, a0, a2
	lw	a1, 8(sp)
	neg	a2, a2
	srl	a1, a1, a2
	or	a0, a0, a1
	sw	a0, 4(sp)
	j	.LBB131_5
.LBB131_5:
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	j	.LBB131_6
.LBB131_6:
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	addi	sp, s0, -48
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	2
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	sw	a2, 20(sp)
	li	a0, 32
	sw	a0, 16(sp)
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lbu	a0, 20(sp)
	andi	a0, a0, 32
	beqz	a0, .LBB132_2
	j	.LBB132_1
.LBB132_1:
	lw	a0, 12(sp)
	srai	a0, a0, 31
	sw	a0, 4(sp)
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	sra	a0, a0, a1
	sw	a0, 0(sp)
	j	.LBB132_5
.LBB132_2:
	lw	a0, 20(sp)
	bnez	a0, .LBB132_4
	j	.LBB132_3
.LBB132_3:
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	j	.LBB132_6
.LBB132_4:
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	sra	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 12(sp)
	lw	a2, 20(sp)
	neg	a1, a2
	sll	a0, a0, a1
	lw	a1, 8(sp)
	srl	a1, a1, a2
	or	a0, a0, a1
	sw	a0, 0(sp)
	j	.LBB132_5
.LBB132_5:
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	j	.LBB132_6
.LBB132_6:
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	addi	sp, s0, -48
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	2
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lw	a2, 8(sp)
	lw	a1, 12(sp)
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	srli	a0, a1, 24
	lui	ra, 4080
	and	a3, a1, ra
	srli	a3, a3, 8
	or	a0, a0, a3
	lui	a3, 16
	addi	a3, a3, -256
	and	a1, a1, a3
	slli	a1, a1, 8
	or	a0, a0, a1
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	slli	a1, a1, 24
	or	a0, a0, a1
	srli	a1, a2, 24
	and	ra, a2, ra
	srli	ra, ra, 8
	or	a1, a1, ra
	and	a3, a2, a3
	slli	a3, a3, 8
	or	a1, a1, a3
	slli	a2, a2, 24
	or	a1, a1, a2
	addi	sp, s0, -24
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	2
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
# %bb.0:
	addi	sp, sp, -12
	sw	ra, 8(sp)                       # 4-byte Folded Spill
	sw	s0, 4(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 12
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	srli	a0, a1, 24
	lui	a2, 4080
	and	a2, a1, a2
	srli	a2, a2, 8
	or	a0, a0, a2
	lui	a2, 16
	addi	a2, a2, -256
	and	a2, a1, a2
	slli	a2, a2, 8
	or	a0, a0, a2
	slli	a1, a1, 24
	or	a0, a0, a1
	lw	ra, 8(sp)                       # 4-byte Folded Reload
	lw	s0, 4(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 12
	ret
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	2
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	lhu	a0, -14(s0)
	slli	a0, a0, 16
	seqz	a0, a0
	slli	a0, a0, 4
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	li	a0, 16
	sub	a1, a0, a1
	lw	a0, -16(s0)
	srl	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lbu	a0, -15(s0)
	slli	a0, a0, 8
	seqz	a0, a0
	slli	a0, a0, 3
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	li	a0, 8
	sub	a1, a0, a1
	lw	a0, -16(s0)
	srl	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	andi	a0, a0, 240
	seqz	a0, a0
	slli	a0, a0, 2
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	li	a0, 4
	sub	a1, a0, a1
	lw	a0, -16(s0)
	srl	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	andi	a0, a0, 12
	seqz	a0, a0
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -20(s0)
	li	a1, 2
	sub	a2, a1, a0
	lw	a0, -16(s0)
	srl	a0, a0, a2
	sw	a0, -16(s0)
	lw	a2, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a2
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	a2, -16(s0)
	sub	a1, a1, a2
	slli	a2, a2, 30
	srli	a2, a2, 31
	addi	a2, a2, -1
	and	a1, a1, a2
	add	a0, a0, a1
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	2
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	sw	a3, 20(sp)
	sw	a2, 16(sp)
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	lw	a0, 12(sp)
	lw	a1, 4(sp)
	bge	a0, a1, .LBB136_2
	j	.LBB136_1
.LBB136_1:
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_2:
	lw	a1, 12(sp)
	lw	a0, 4(sp)
	bge	a0, a1, .LBB136_4
	j	.LBB136_3
.LBB136_3:
	li	a0, 2
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_4:
	lw	a0, 8(sp)
	lw	a1, 0(sp)
	bgeu	a0, a1, .LBB136_6
	j	.LBB136_5
.LBB136_5:
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_6:
	lw	a1, 8(sp)
	lw	a0, 0(sp)
	bgeu	a0, a1, .LBB136_8
	j	.LBB136_7
.LBB136_7:
	li	a0, 2
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_8:
	li	a0, 1
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_9:
	lw	a0, 36(sp)
	addi	sp, s0, -48
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	2
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	sw	a3, 4(sp)
	sw	a2, 0(sp)
	lw	a1, 12(sp)
	lw	a0, 8(sp)
	lw	a3, 4(sp)
	lw	a2, 0(sp)
	call	__cmpdi2
	addi	a0, a0, -1
	addi	sp, s0, -24
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	2
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	lhu	a0, -16(s0)
	seqz	a0, a0
	slli	a0, a0, 4
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	srl	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -20(s0)
	sw	a0, -24(s0)
	lbu	a0, -16(s0)
	seqz	a0, a0
	slli	a0, a0, 3
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	srl	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	andi	a0, a0, 15
	seqz	a0, a0
	slli	a0, a0, 2
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	srl	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	andi	a0, a0, 3
	seqz	a0, a0
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	srl	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	andi	a0, a0, 3
	sw	a0, -16(s0)
	lw	a1, -20(s0)
	lw	a0, -24(s0)
	add	a0, a0, a1
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	lw	a2, -16(s0)
	srli	a3, a2, 1
	li	a1, 2
	sub	a1, a1, a3
	andi	a2, a2, 1
	addi	a2, a2, -1
	and	a1, a1, a2
	add	a0, a0, a1
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	2
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	sw	a2, 20(sp)
	li	a0, 32
	sw	a0, 16(sp)
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lbu	a0, 20(sp)
	andi	a0, a0, 32
	beqz	a0, .LBB139_2
	j	.LBB139_1
.LBB139_1:
	li	a0, 0
	sw	a0, 4(sp)
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	srl	a0, a0, a1
	sw	a0, 0(sp)
	j	.LBB139_5
.LBB139_2:
	lw	a0, 20(sp)
	bnez	a0, .LBB139_4
	j	.LBB139_3
.LBB139_3:
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	j	.LBB139_6
.LBB139_4:
	lw	a0, 12(sp)
	lw	a1, 20(sp)
	srl	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 12(sp)
	lw	a2, 20(sp)
	neg	a1, a2
	sll	a0, a0, a1
	lw	a1, 8(sp)
	srl	a1, a1, a2
	or	a0, a0, a1
	sw	a0, 0(sp)
	j	.LBB139_5
.LBB139_5:
	lw	a0, 0(sp)
	lw	a1, 4(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	j	.LBB139_6
.LBB139_6:
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	addi	sp, s0, -48
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	2
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	andi	sp, sp, -8
	sw	a0, 28(sp)
	sw	a1, 24(sp)
	li	a0, 16
	sw	a0, 12(sp)
	lui	a0, 16
	addi	a0, a0, -1
	sw	a0, 8(sp)
	lhu	a0, 28(sp)
	lhu	a1, 24(sp)
	call	__mulsi3
	sw	a0, 16(sp)
	lhu	a0, 18(sp)
	sw	a0, 4(sp)
	lhu	a0, 16(sp)
	sw	a0, 16(sp)
	lhu	a0, 30(sp)
	lhu	a1, 24(sp)
	call	__mulsi3
	mv	a1, a0
	lw	a0, 4(sp)
	add	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	slli	a1, a0, 16
	lw	a0, 16(sp)
	add	a0, a0, a1
	sw	a0, 16(sp)
	lhu	a0, 6(sp)
	sw	a0, 20(sp)
	lhu	a0, 18(sp)
	sw	a0, 4(sp)
	lhu	a0, 16(sp)
	sw	a0, 16(sp)
	lhu	a0, 26(sp)
	lhu	a1, 28(sp)
	call	__mulsi3
	mv	a1, a0
	lw	a0, 4(sp)
	add	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	slli	a1, a0, 16
	lw	a0, 16(sp)
	add	a0, a0, a1
	sw	a0, 16(sp)
	lhu	a1, 6(sp)
	lw	a0, 20(sp)
	add	a0, a0, a1
	sw	a0, 20(sp)
	lhu	a0, 30(sp)
	lhu	a1, 26(sp)
	call	__mulsi3
	mv	a1, a0
	lw	a0, 20(sp)
	add	a0, a0, a1
	sw	a0, 20(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	addi	sp, s0, -40
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	2
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
# %bb.0:
	addi	sp, sp, -56
	sw	ra, 52(sp)                      # 4-byte Folded Spill
	sw	s0, 48(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 56
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 44(sp)
	sw	a0, 40(sp)
	sw	a3, 36(sp)
	sw	a2, 32(sp)
	lw	a0, 40(sp)
	lw	a1, 44(sp)
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	lw	a0, 32(sp)
	lw	a1, 36(sp)
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	lw	a0, 24(sp)
	lw	a1, 16(sp)
	call	__muldsi3
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lw	a0, 28(sp)
	lw	a1, 16(sp)
	call	__mulsi3
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	lw	a0, 24(sp)
	lw	a1, 20(sp)
	call	__mulsi3
	mv	a1, a0
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	add	a1, a0, a1
	lw	a0, 12(sp)
	add	a0, a0, a1
	sw	a0, 12(sp)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	addi	sp, s0, -56
	lw	ra, 52(sp)                      # 4-byte Folded Reload
	lw	s0, 48(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 56
	ret
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	2
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	lw	a2, 4(sp)
	lw	a3, 0(sp)
	li	a1, 0
	sub	a0, a1, a3
	snez	a3, a3
	add	a2, a2, a3
	sub	a1, a1, a2
	addi	sp, s0, -16
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	2
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lw	a0, 12(sp)
	lw	a1, 8(sp)
	xor	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	srli	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	srli	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	srli	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	andi	a1, a0, 15
	lui	a0, 7
	addi	a0, a0, -1642
	srl	a0, a0, a1
	andi	a0, a0, 1
	addi	sp, s0, -32
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	2
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	srli	a1, a0, 16
	xor	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	srli	a1, a0, 8
	xor	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	srli	a1, a0, 4
	xor	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	andi	a1, a0, 15
	lui	a0, 7
	addi	a0, a0, -1642
	srl	a0, a0, a1
	andi	a0, a0, 1
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	2
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	andi	sp, sp, -8
                                        # kill: def $x12 killed $x11
                                        # kill: def $x12 killed $x10
	sw	a1, 20(sp)
	sw	a0, 16(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lw	a0, 12(sp)
	lw	a1, 8(sp)
	srli	a2, a1, 1
	srli	ra, a0, 1
	lui	a3, 349525
	addi	a3, a3, 1365
	and	ra, ra, a3
	and	a2, a2, a3
	sltu	a3, a1, a2
	sub	a0, a0, ra
	sub	a0, a0, a3
	sub	a1, a1, a2
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	lw	a1, 8(sp)
	lw	a3, 12(sp)
	srli	a0, a3, 2
	srli	a2, a1, 2
	lui	ra, 209715
	addi	ra, ra, 819
	and	a2, a2, ra
	and	a0, a0, ra
	and	a1, a1, ra
	and	a3, a3, ra
	add	a0, a0, a3
	add	a1, a2, a1
	sltu	a2, a1, a2
	add	a0, a0, a2
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	lw	a2, 8(sp)
	lw	a0, 12(sp)
	slli	a3, a0, 28
	srli	a1, a2, 4
	or	a1, a1, a3
	srli	a3, a0, 4
	add	a0, a0, a3
	add	a1, a2, a1
	sltu	a2, a1, a2
	add	a0, a0, a2
	lui	a2, 61681
	addi	a2, a2, -241
	and	a0, a0, a2
	and	a1, a1, a2
	sw	a1, 8(sp)
	sw	a0, 12(sp)
	lw	a1, 12(sp)
	lw	a0, 8(sp)
	add	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	srli	a1, a0, 16
	add	a0, a0, a1
	sw	a0, 4(sp)
	lw	a0, 4(sp)
	srli	a1, a0, 8
	add	a0, a0, a1
	andi	a0, a0, 127
	addi	sp, s0, -32
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	2
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)                      # 4-byte Folded Spill
	sw	s0, 8(sp)                       # 4-byte Folded Spill
	addi	s0, sp, 16
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	srli	a1, a0, 1
	lui	a2, 349525
	addi	a2, a2, 1365
	and	a1, a1, a2
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	srli	a0, a1, 2
	lui	a2, 209715
	addi	a2, a2, 819
	and	a0, a0, a2
	and	a1, a1, a2
	add	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	srli	a1, a0, 4
	add	a0, a0, a1
	lui	a1, 61681
	addi	a1, a1, -241
	and	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	srli	a1, a0, 16
	add	a0, a0, a1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	srli	a1, a0, 8
	add	a0, a0, a1
	andi	a0, a0, 63
	lw	ra, 12(sp)                      # 4-byte Folded Reload
	lw	s0, 8(sp)                       # 4-byte Folded Reload
	addi	sp, sp, 16
	ret
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	2
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	andi	sp, sp, -8
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	sw	a2, 20(sp)
	lw	a0, 20(sp)
	srli	a0, a0, 31
	sw	a0, 16(sp)
	lui	a0, 261888
	sw	a0, 12(sp)
	li	a0, 0
	sw	a0, 8(sp)
	j	.LBB147_1
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	lbu	a0, 20(sp)
	andi	a0, a0, 1
	beqz	a0, .LBB147_3
	j	.LBB147_2
.LBB147_2:                              #   in Loop: Header=BB147_1 Depth=1
	lw	a2, 24(sp)
	lw	a3, 28(sp)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	call	__muldf3
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	j	.LBB147_3
.LBB147_3:                              #   in Loop: Header=BB147_1 Depth=1
	lw	a0, 20(sp)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, 20(sp)
	lw	a0, 20(sp)
	bnez	a0, .LBB147_5
	j	.LBB147_4
.LBB147_4:
	j	.LBB147_6
.LBB147_5:                              #   in Loop: Header=BB147_1 Depth=1
	lw	a2, 24(sp)
	lw	a3, 28(sp)
	mv	a0, a2
	mv	a1, a3
	call	__muldf3
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	j	.LBB147_1
.LBB147_6:
	lw	a0, 16(sp)
	beqz	a0, .LBB147_8
	j	.LBB147_7
.LBB147_7:
	lw	a2, 8(sp)
	lw	a3, 12(sp)
	li	a0, 0
	lui	a1, 261888
	call	__divdf3
	sw	a0, 0(sp)                       # 4-byte Folded Spill
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	j	.LBB147_9
.LBB147_8:
	lw	a0, 12(sp)
	lw	a1, 8(sp)
	sw	a1, 0(sp)                       # 4-byte Folded Spill
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB147_9
.LBB147_9:
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	lw	a1, 4(sp)                       # 4-byte Folded Reload
	addi	sp, s0, -40
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
	ret
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	2
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
                                        # kill: def $x12 killed $x10
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	lw	a0, -16(s0)
	srli	a0, a0, 31
	sw	a0, -20(s0)
	lui	a0, 260096
	sw	a0, -24(s0)
	j	.LBB148_1
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
	lbu	a0, -16(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB148_3
	j	.LBB148_2
.LBB148_2:                              #   in Loop: Header=BB148_1 Depth=1
	lw	a1, -12(s0)
	lw	a0, -24(s0)
	call	__mulsf3
	sw	a0, -24(s0)
	j	.LBB148_3
.LBB148_3:                              #   in Loop: Header=BB148_1 Depth=1
	lw	a0, -16(s0)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	bnez	a0, .LBB148_5
	j	.LBB148_4
.LBB148_4:
	j	.LBB148_6
.LBB148_5:                              #   in Loop: Header=BB148_1 Depth=1
	lw	a1, -12(s0)
	mv	a0, a1
	call	__mulsf3
	sw	a0, -12(s0)
	j	.LBB148_1
.LBB148_6:
	lw	a0, -20(s0)
	beqz	a0, .LBB148_8
	j	.LBB148_7
.LBB148_7:
	lw	a1, -24(s0)
	lui	a0, 260096
	call	__divsf3
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB148_9
.LBB148_8:
	lw	a0, -24(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB148_9
.LBB148_9:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	2
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
# %bb.0:
	addi	sp, sp, -48
	sw	ra, 44(sp)                      # 4-byte Folded Spill
	sw	s0, 40(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 48
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	sw	a3, 20(sp)
	sw	a2, 16(sp)
	lw	a0, 24(sp)
	lw	a1, 28(sp)
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	sw	a1, 4(sp)
	sw	a0, 0(sp)
	lw	a0, 12(sp)
	lw	a1, 4(sp)
	bgeu	a0, a1, .LBB149_2
	j	.LBB149_1
.LBB149_1:
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_2:
	lw	a1, 12(sp)
	lw	a0, 4(sp)
	bgeu	a0, a1, .LBB149_4
	j	.LBB149_3
.LBB149_3:
	li	a0, 2
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_4:
	lw	a0, 8(sp)
	lw	a1, 0(sp)
	bgeu	a0, a1, .LBB149_6
	j	.LBB149_5
.LBB149_5:
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_6:
	lw	a1, 8(sp)
	lw	a0, 0(sp)
	bgeu	a0, a1, .LBB149_8
	j	.LBB149_7
.LBB149_7:
	li	a0, 2
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_8:
	li	a0, 1
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_9:
	lw	a0, 36(sp)
	addi	sp, s0, -48
	lw	ra, 44(sp)                      # 4-byte Folded Reload
	lw	s0, 40(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 48
	ret
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	2
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
# %bb.0:
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	andi	sp, sp, -8
                                        # kill: def $x1 killed $x13
                                        # kill: def $x1 killed $x12
                                        # kill: def $x1 killed $x11
                                        # kill: def $x1 killed $x10
	sw	a1, 12(sp)
	sw	a0, 8(sp)
	sw	a3, 4(sp)
	sw	a2, 0(sp)
	lw	a1, 12(sp)
	lw	a0, 8(sp)
	lw	a3, 4(sp)
	lw	a2, 0(sp)
	call	__ucmpdi2
	addi	a0, a0, -1
	addi	sp, s0, -24
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
	ret
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
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
	.addrsig_sym __ucmpdi2
	.addrsig_sym l64a.s
	.addrsig_sym digits
	.addrsig_sym seed
