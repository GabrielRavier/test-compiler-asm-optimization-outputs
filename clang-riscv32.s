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
.Lpcrel_hi0:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi0)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	bgeu	a0, a1, .LBB0_6
	j	.LBB0_1
.LBB0_1:
.Lpcrel_hi1:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi1)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi2:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi2)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi3:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi3)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB0_11
	j	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
.Lpcrel_hi4:
	auipc	a0, %pcrel_hi(.L__profc_memmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi4)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
	addi	sp, sp, -44
	sw	ra, 40(sp)                      # 4-byte Folded Spill
	sw	s0, 36(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 44
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	sw	a3, -28(s0)
.Lpcrel_hi5:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi5)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	beqz	a0, .LBB1_4
	j	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
.Lpcrel_hi6:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi6)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -36(s0)
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	sb	a0, 0(a1)
	lw	a1, -24(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sw	a2, -44(s0)                     # 4-byte Folded Spill
	sw	a2, -40(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB1_4
	j	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -44(s0)                     # 4-byte Folded Reload
.Lpcrel_hi7:
	auipc	a1, %pcrel_hi(.L__profc_memccpy)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi7)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -40(s0)                     # 4-byte Folded Spill
	j	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	lw	a0, -40(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB1_7
	j	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
.Lpcrel_hi8:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi8)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
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
.LBB1_7:
	lw	a0, -28(s0)
	beqz	a0, .LBB1_9
	j	.LBB1_8
.LBB1_8:
.Lpcrel_hi9:
	auipc	a0, %pcrel_hi(.L__profc_memccpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi9)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB1_10
.LBB1_9:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB1_10
.LBB1_10:
	lw	a0, -12(s0)
	lw	ra, 40(sp)                      # 4-byte Folded Reload
	lw	s0, 36(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 44
	ret
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
.Lpcrel_hi10:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi10)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lbu	a0, -16(s0)
	sw	a0, -16(s0)
	j	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB2_4
	j	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
.Lpcrel_hi11:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi11)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sw	a2, -32(s0)                     # 4-byte Folded Spill
	sw	a2, -28(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB2_4
	j	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
.Lpcrel_hi12:
	auipc	a1, %pcrel_hi(.L__profc_memchr)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi12)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB2_7
	j	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
.Lpcrel_hi13:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi13)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB2_6
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	j	.LBB2_1
.LBB2_7:
	lw	a0, -20(s0)
	beqz	a0, .LBB2_9
	j	.LBB2_8
.LBB2_8:
.Lpcrel_hi14:
	auipc	a0, %pcrel_hi(.L__profc_memchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi14)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -24(s0)
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB2_10
.LBB2_9:
	li	a0, 0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB2_10
.LBB2_10:
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	2
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
.Lpcrel_hi15:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi15)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	j	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB3_4
	j	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
.Lpcrel_hi16:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi16)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	lbu	a1, 0(a1)
	xor	a2, a0, a1
	seqz	a2, a2
	sw	a2, -36(s0)                     # 4-byte Folded Spill
	sw	a2, -32(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB3_4
	j	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
.Lpcrel_hi17:
	auipc	a1, %pcrel_hi(.L__profc_memcmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi17)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB3_7
	j	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
.Lpcrel_hi18:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi18)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_7:
	lw	a0, -20(s0)
	beqz	a0, .LBB3_9
	j	.LBB3_8
.LBB3_8:
.Lpcrel_hi19:
	auipc	a0, %pcrel_hi(.L__profc_memcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi19)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -28(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	sw	a0, -40(s0)                     # 4-byte Folded Spill
	j	.LBB3_10
.LBB3_9:
	li	a0, 0
	sw	a0, -40(s0)                     # 4-byte Folded Spill
	j	.LBB3_10
.LBB3_10:
	lw	a0, -40(s0)                     # 4-byte Folded Reload
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
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
.Lpcrel_hi20:
	auipc	a0, %pcrel_hi(.L__profc_memcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi20)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi21:
	auipc	a0, %pcrel_hi(.L__profc_memcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi21)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi22:
	auipc	a0, %pcrel_hi(.L__profc_memrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi22)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi23:
	auipc	a0, %pcrel_hi(.L__profc_memrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi23)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -28(s0)
	lw	a1, -24(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	lw	a1, -20(s0)
	bne	a0, a1, .LBB5_4
	j	.LBB5_3
.LBB5_3:
.Lpcrel_hi24:
	auipc	a0, %pcrel_hi(.L__profc_memrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi24)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi25:
	auipc	a0, %pcrel_hi(.L__profc_memset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi25)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	j	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB6_4
	j	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
.Lpcrel_hi26:
	auipc	a0, %pcrel_hi(.L__profc_memset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi26)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi27:
	auipc	a0, %pcrel_hi(.L__profc_stpcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi27)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	lw	a1, -12(s0)
	sb	a0, 0(a1)
	beqz	a0, .LBB7_4
	j	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
.Lpcrel_hi28:
	auipc	a0, %pcrel_hi(.L__profc_stpcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi28)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Lpcrel_hi29:
	auipc	a0, %pcrel_hi(.L__profc_strchrnul)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi29)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lbu	a0, -16(s0)
	sw	a0, -16(s0)
	j	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB8_4
	j	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
.Lpcrel_hi30:
	auipc	a0, %pcrel_hi(.L__profc_strchrnul)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi30)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB8_4
	j	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
.Lpcrel_hi31:
	auipc	a1, %pcrel_hi(.L__profc_strchrnul)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi31)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB8_7
	j	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
.Lpcrel_hi32:
	auipc	a0, %pcrel_hi(.L__profc_strchrnul)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi32)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB8_6
.LBB8_6:                                #   in Loop: Header=BB8_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB8_1
.LBB8_7:
	lw	a0, -12(s0)
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
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
.Lpcrel_hi33:
	auipc	a0, %pcrel_hi(.L__profc_strchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi33)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
.Lpcrel_hi34:
	auipc	a0, %pcrel_hi(.L__profc_strchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi34)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB9_2
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	lw	a1, -20(s0)
	bne	a0, a1, .LBB9_4
	j	.LBB9_3
.LBB9_3:
.Lpcrel_hi35:
	auipc	a0, %pcrel_hi(.L__profc_strchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi35)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB9_7
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	j	.LBB9_5
.LBB9_5:                                #   in Loop: Header=BB9_2 Depth=1
	lw	a0, -16(s0)
	addi	a1, a0, 1
	sw	a1, -16(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB9_1
	j	.LBB9_6
.LBB9_6:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB9_7
.LBB9_7:
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
	addi	sp, sp, -24
	sw	ra, 20(sp)                      # 4-byte Folded Spill
	sw	s0, 16(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 24
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Lpcrel_hi36:
	auipc	a0, %pcrel_hi(.L__profc_strcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi36)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	lbu	a1, 0(a1)
	li	a2, 0
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB10_4
	j	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
.Lpcrel_hi37:
	auipc	a0, %pcrel_hi(.L__profc_strcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi37)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	snez	a1, a0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB10_4
	j	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
.Lpcrel_hi38:
	auipc	a1, %pcrel_hi(.L__profc_strcmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi38)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB10_7
	j	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
.Lpcrel_hi39:
	auipc	a0, %pcrel_hi(.L__profc_strcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi39)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB10_1
.LBB10_7:
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	lw	ra, 20(sp)                      # 4-byte Folded Reload
	lw	s0, 16(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 24
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
.Lpcrel_hi40:
	auipc	a0, %pcrel_hi(.L__profc_strlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi40)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	j	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB11_4
	j	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
.Lpcrel_hi41:
	auipc	a0, %pcrel_hi(.L__profc_strlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi41)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
.Lpcrel_hi42:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi42)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi43:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi43)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB12_14
.LBB12_2:
	j	.LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB12_10
	j	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_3 Depth=1
.Lpcrel_hi44:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi44)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	lw	a0, -32(s0)
	lbu	a0, 0(a0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB12_10
	j	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_3 Depth=1
.Lpcrel_hi45:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi45)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	j	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
.Lpcrel_hi46:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi46)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, -24(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB12_10
	j	.LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
.Lpcrel_hi47:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi47)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	j	.LBB12_8
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
.Lpcrel_hi48:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi48)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, -28(s0)
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	lbu	a1, 0(a1)
	xor	a2, a0, a1
	seqz	a2, a2
	sw	a2, -40(s0)                     # 4-byte Folded Spill
	sw	a2, -36(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB12_10
	j	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
	lw	a0, -40(s0)                     # 4-byte Folded Reload
.Lpcrel_hi49:
	auipc	a1, %pcrel_hi(.L__profc_strncmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi49)
	lw	a1, 36(a2)
	lw	a3, 32(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 32(a2)
	sw	a1, 36(a2)
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB12_10
.LBB12_10:                              #   in Loop: Header=BB12_3 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB12_13
	j	.LBB12_11
.LBB12_11:                              #   in Loop: Header=BB12_3 Depth=1
.Lpcrel_hi50:
	auipc	a0, %pcrel_hi(.L__profc_strncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi50)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	j	.LBB12_12
.LBB12_12:                              #   in Loop: Header=BB12_3 Depth=1
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
.LBB12_13:
	lw	a0, -28(s0)
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	lbu	a1, 0(a1)
	sub	a0, a0, a1
	sw	a0, -12(s0)
	j	.LBB12_14
.LBB12_14:
	lw	a0, -12(s0)
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
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
.Lpcrel_hi51:
	auipc	a0, %pcrel_hi(.L__profc_swab)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi51)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi52:
	auipc	a0, %pcrel_hi(.L__profc_swab)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi52)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi53:
	auipc	a0, %pcrel_hi(.L__profc_isalpha)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi53)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi54:
	auipc	a0, %pcrel_hi(.L__profc_isascii)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi54)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
.Lpcrel_hi55:
	auipc	a0, %pcrel_hi(.L__profc_isblank)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi55)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB16_3
	j	.LBB16_1
.LBB16_1:
.Lpcrel_hi56:
	auipc	a0, %pcrel_hi(.L__profc_isblank)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi56)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -12(s0)
	addi	a1, a0, -9
	seqz	a2, a1
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	li	a1, 9
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB16_3
	j	.LBB16_2
.LBB16_2:
	lw	a0, -20(s0)                     # 4-byte Folded Reload
.Lpcrel_hi57:
	auipc	a1, %pcrel_hi(.L__profc_isblank)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi57)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB16_3
.LBB16_3:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
	ret
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	2
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
.Lpcrel_hi58:
	auipc	a0, %pcrel_hi(.L__profc_iscntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi58)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB17_3
	j	.LBB17_1
.LBB17_1:
.Lpcrel_hi59:
	auipc	a0, %pcrel_hi(.L__profc_iscntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi59)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -12(s0)
	addi	a1, a0, -127
	seqz	a2, a1
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	li	a1, 127
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB17_3
	j	.LBB17_2
.LBB17_2:
	lw	a0, -20(s0)                     # 4-byte Folded Reload
.Lpcrel_hi60:
	auipc	a1, %pcrel_hi(.L__profc_iscntrl)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi60)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB17_3
.LBB17_3:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
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
.Lpcrel_hi61:
	auipc	a0, %pcrel_hi(.L__profc_isdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi61)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi62:
	auipc	a0, %pcrel_hi(.L__profc_isgraph)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi62)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi63:
	auipc	a0, %pcrel_hi(.L__profc_islower)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi63)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi64:
	auipc	a0, %pcrel_hi(.L__profc_isprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi64)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
.Lpcrel_hi65:
	auipc	a0, %pcrel_hi(.L__profc_isspace)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi65)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB22_3
	j	.LBB22_1
.LBB22_1:
.Lpcrel_hi66:
	auipc	a0, %pcrel_hi(.L__profc_isspace)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi66)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -12(s0)
	addi	a0, a0, -9
	sltiu	a2, a0, 5
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	li	a1, 5
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB22_3
	j	.LBB22_2
.LBB22_2:
	lw	a0, -20(s0)                     # 4-byte Folded Reload
.Lpcrel_hi67:
	auipc	a1, %pcrel_hi(.L__profc_isspace)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi67)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB22_3
.LBB22_3:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
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
.Lpcrel_hi68:
	auipc	a0, %pcrel_hi(.L__profc_isupper)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi68)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
.Lpcrel_hi69:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi69)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	li	a2, 1
	li	a1, 32
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB24_7
	j	.LBB24_1
.LBB24_1:
.Lpcrel_hi70:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi70)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, -12(s0)
	addi	a0, a0, -127
	li	a2, 1
	li	a1, 33
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB24_7
	j	.LBB24_2
.LBB24_2:
.Lpcrel_hi71:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi71)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	j	.LBB24_3
.LBB24_3:
.Lpcrel_hi72:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi72)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, -12(s0)
	lui	a1, 1048574
	addi	a1, a1, -40
	add	a0, a0, a1
	li	a2, 1
	li	a1, 2
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB24_7
	j	.LBB24_4
.LBB24_4:
.Lpcrel_hi73:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi73)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	j	.LBB24_5
.LBB24_5:
.Lpcrel_hi74:
	auipc	a0, %pcrel_hi(.L__profc_iswcntrl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi74)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -12(s0)
	lui	a1, 1048560
	addi	a1, a1, 7
	add	a0, a0, a1
	sltiu	a2, a0, 3
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	li	a1, 3
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB24_7
	j	.LBB24_6
.LBB24_6:
	lw	a0, -20(s0)                     # 4-byte Folded Reload
.Lpcrel_hi75:
	auipc	a1, %pcrel_hi(.L__profc_iswcntrl)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi75)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB24_7
.LBB24_7:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
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
.Lpcrel_hi76:
	auipc	a0, %pcrel_hi(.L__profc_iswdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi76)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi77:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi77)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a1, -16(s0)
	li	a0, 254
	bltu	a0, a1, .LBB26_2
	j	.LBB26_1
.LBB26_1:
.Lpcrel_hi78:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi78)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -16(s0)
	addi	a0, a0, 1
	andi	a0, a0, 127
	sltiu	a0, a0, 33
	xori	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB26_13
.LBB26_2:
	lw	a0, -16(s0)
	srli	a0, a0, 3
	li	a1, 1029
	bltu	a0, a1, .LBB26_7
	j	.LBB26_3
.LBB26_3:
.Lpcrel_hi79:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi79)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, -16(s0)
	lui	a1, 1048574
	addi	a1, a1, -42
	add	a0, a0, a1
	lui	a1, 11
	addi	a1, a1, 2006
	bltu	a0, a1, .LBB26_7
	j	.LBB26_4
.LBB26_4:
.Lpcrel_hi80:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi80)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	j	.LBB26_5
.LBB26_5:
.Lpcrel_hi81:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi81)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, -16(s0)
	lui	a1, 1048562
	add	a0, a0, a1
	lui	a1, 2
	addi	a1, a1, -7
	bltu	a0, a1, .LBB26_7
	j	.LBB26_6
.LBB26_6:
.Lpcrel_hi82:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi82)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	j	.LBB26_8
.LBB26_7:
.Lpcrel_hi83:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi83)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	li	a0, 1
	sw	a0, -12(s0)
	j	.LBB26_13
.LBB26_8:
	lw	a0, -16(s0)
	lui	a1, 1048560
	addi	a1, a1, 4
	add	a1, a0, a1
	lui	a0, 256
	addi	a0, a0, 3
	bltu	a0, a1, .LBB26_11
	j	.LBB26_9
.LBB26_9:
.Lpcrel_hi84:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi84)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	lw	a0, -16(s0)
	lui	a1, 16
	addi	a1, a1, -2
	and	a0, a0, a1
	beq	a0, a1, .LBB26_11
	j	.LBB26_10
.LBB26_10:
.Lpcrel_hi85:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi85)
	lw	a0, 76(a1)
	lw	a2, 72(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 72(a1)
	sw	a0, 76(a1)
	j	.LBB26_12
.LBB26_11:
.Lpcrel_hi86:
	auipc	a0, %pcrel_hi(.L__profc_iswprint)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi86)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB26_13
.LBB26_12:
	li	a0, 1
	sw	a0, -12(s0)
	j	.LBB26_13
.LBB26_13:
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
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
	sw	a0, -12(s0)
.Lpcrel_hi87:
	auipc	a0, %pcrel_hi(.L__profc_iswxdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi87)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	addi	a0, a0, -48
	li	a2, 1
	li	a1, 10
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB27_3
	j	.LBB27_1
.LBB27_1:
.Lpcrel_hi88:
	auipc	a0, %pcrel_hi(.L__profc_iswxdigit)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi88)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -12(s0)
	ori	a0, a0, 32
	addi	a0, a0, -97
	sltiu	a2, a0, 6
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	li	a1, 6
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB27_3
	j	.LBB27_2
.LBB27_2:
	lw	a0, -20(s0)                     # 4-byte Folded Reload
.Lpcrel_hi89:
	auipc	a1, %pcrel_hi(.L__profc_iswxdigit)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi89)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB27_3
.LBB27_3:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
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
.Lpcrel_hi90:
	auipc	a0, %pcrel_hi(.L__profc_toascii)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi90)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi91:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi91)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi92:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi92)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi93:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi93)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi94:
	auipc	a0, %pcrel_hi(.L__profc_fdim)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi94)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi95:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi95)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB30_2
	j	.LBB30_1
.LBB30_1:
.Lpcrel_hi96:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi96)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi97:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi97)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi98:
	auipc	a0, %pcrel_hi(.L__profc_fdimf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi98)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi99:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi99)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi100:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi100)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi101:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi101)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi102:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi102)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, 44(sp)
	bgez	a0, .LBB31_11
	j	.LBB31_10
.LBB31_10:
.Lpcrel_hi103:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi103)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi104:
	auipc	a0, %pcrel_hi(.L__profc_fmax)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi104)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
.Lpcrel_hi105:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi105)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB32_2
	j	.LBB32_1
.LBB32_1:
.Lpcrel_hi106:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi106)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi107:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi107)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi108:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi108)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, -16(s0)
	bgez	a0, .LBB32_7
	j	.LBB32_6
.LBB32_6:
.Lpcrel_hi109:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi109)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi110:
	auipc	a0, %pcrel_hi(.L__profc_fmaxf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi110)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
.Lpcrel_hi111:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi111)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi112:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi112)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi113:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi113)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi114:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi114)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, 156(sp)
	bgez	a0, .LBB33_11
	j	.LBB33_10
.LBB33_10:
.Lpcrel_hi115:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi115)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi116:
	auipc	a0, %pcrel_hi(.L__profc_fmaxl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi116)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
.Lpcrel_hi117:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi117)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi118:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi118)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi119:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi119)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi120:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi120)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, 44(sp)
	bgez	a0, .LBB34_11
	j	.LBB34_10
.LBB34_10:
.Lpcrel_hi121:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi121)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi122:
	auipc	a0, %pcrel_hi(.L__profc_fmin)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi122)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
.Lpcrel_hi123:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi123)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 522240
	addi	a1, a1, 1
	blt	a0, a1, .LBB35_2
	j	.LBB35_1
.LBB35_1:
.Lpcrel_hi124:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi124)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi125:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi125)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi126:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi126)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, -16(s0)
	bgez	a0, .LBB35_7
	j	.LBB35_6
.LBB35_6:
.Lpcrel_hi127:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi127)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi128:
	auipc	a0, %pcrel_hi(.L__profc_fminf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi128)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
.Lpcrel_hi129:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi129)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi130:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi130)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi131:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi131)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi132:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi132)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, 156(sp)
	bgez	a0, .LBB36_11
	j	.LBB36_10
.LBB36_10:
.Lpcrel_hi133:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi133)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi134:
	auipc	a0, %pcrel_hi(.L__profc_fminl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi134)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
.Lpcrel_hi135:
	auipc	a0, %pcrel_hi(.L__profc_l64a)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi135)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -20(s0)
.Lpcrel_hi136:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi136)
	sw	a0, -16(s0)
	j	.LBB37_1
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB37_4
	j	.LBB37_2
.LBB37_2:                               #   in Loop: Header=BB37_1 Depth=1
.Lpcrel_hi137:
	auipc	a0, %pcrel_hi(.L__profc_l64a)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi137)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -20(s0)
	andi	a1, a0, 63
.Lpcrel_hi138:
	auipc	a0, %pcrel_hi(digits)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi138)
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
.Lpcrel_hi139:
	auipc	a0, %pcrel_hi(l64a.s)
	addi	a0, a0, %pcrel_lo(.Lpcrel_hi139)
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
.Lpcrel_hi140:
	auipc	a0, %pcrel_hi(.L__profc_srand)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi140)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	addi	a0, a0, -1
.Lpcrel_hi141:
	auipc	a1, %pcrel_hi(seed)
	addi	a1, a1, %pcrel_lo(.Lpcrel_hi141)
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
.Lpcrel_hi142:
	auipc	a0, %pcrel_hi(.L__profc_rand)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi142)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
.Lpcrel_hi143:
	auipc	a0, %pcrel_hi(seed)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi143)
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
.Lpcrel_hi144:
	auipc	a0, %pcrel_hi(.L__profc_insque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi144)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -20(s0)
	lw	a0, -16(s0)
	sw	a0, -24(s0)
	lw	a0, -24(s0)
	bnez	a0, .LBB40_2
	j	.LBB40_1
.LBB40_1:
.Lpcrel_hi145:
	auipc	a0, %pcrel_hi(.L__profc_insque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi145)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi146:
	auipc	a0, %pcrel_hi(.L__profc_insque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi146)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi147:
	auipc	a0, %pcrel_hi(.L__profc_remque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi147)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB41_2
	j	.LBB41_1
.LBB41_1:
.Lpcrel_hi148:
	auipc	a0, %pcrel_hi(.L__profc_remque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi148)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi149:
	auipc	a0, %pcrel_hi(.L__profc_remque)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi149)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi150:
	auipc	a0, %pcrel_hi(.L__profc_lsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi150)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi151:
	auipc	a0, %pcrel_hi(.L__profc_lsearch)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi151)
	lw	a0, 12(a2)
	lw	a3, 8(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a0, a0, ra
	sw	a3, 8(a2)
	sw	a0, 12(a2)
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
.Lpcrel_hi152:
	auipc	a0, %pcrel_hi(.L__profc_lsearch)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi152)
	lw	a0, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a0, a0, ra
	sw	a3, 16(a2)
	sw	a0, 20(a2)
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
.Lpcrel_hi153:
	auipc	a0, %pcrel_hi(.L__profc_lfind)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi153)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi154:
	auipc	a0, %pcrel_hi(.L__profc_lfind)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi154)
	lw	a0, 12(a2)
	lw	a3, 8(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a0, a0, ra
	sw	a3, 8(a2)
	sw	a0, 12(a2)
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
.Lpcrel_hi155:
	auipc	a0, %pcrel_hi(.L__profc_lfind)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi155)
	lw	a0, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a0, a0, ra
	sw	a3, 16(a2)
	sw	a0, 20(a2)
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
.Lpcrel_hi156:
	auipc	a0, %pcrel_hi(.L__profc_abs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi156)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a1, -12(s0)
	li	a0, 0
	bge	a0, a1, .LBB44_2
	j	.LBB44_1
.LBB44_1:
.Lpcrel_hi157:
	auipc	a0, %pcrel_hi(.L__profc_abs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi157)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi158:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi158)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi159:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi159)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	bne	a0, a1, .LBB45_8
	j	.LBB45_5
.LBB45_5:
.Lpcrel_hi160:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi160)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB45_7
.LBB45_6:
.Lpcrel_hi161:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi161)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	j	.LBB45_7
.LBB45_7:
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB45_8
.LBB45_8:
.Lpcrel_hi162:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi162)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	j	.LBB45_9
.LBB45_9:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB45_11
	j	.LBB45_10
.LBB45_10:                              #   in Loop: Header=BB45_9 Depth=1
.Lpcrel_hi163:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi163)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
	j	.LBB45_9
.LBB45_11:
	lw	a0, -20(s0)
	beqz	a0, .LBB45_13
	j	.LBB45_12
.LBB45_12:
.Lpcrel_hi164:
	auipc	a0, %pcrel_hi(.L__profc_atoi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi164)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -16(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB45_14
.LBB45_13:
	lw	a1, -16(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB45_14
.LBB45_14:
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
.Lpcrel_hi165:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi165)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi166:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi166)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	bne	a0, a1, .LBB46_8
	j	.LBB46_5
.LBB46_5:
.Lpcrel_hi167:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi167)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	li	a0, 1
	sw	a0, -20(s0)
	j	.LBB46_7
.LBB46_6:
.Lpcrel_hi168:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi168)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	j	.LBB46_7
.LBB46_7:
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB46_8
.LBB46_8:
.Lpcrel_hi169:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi169)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	j	.LBB46_9
.LBB46_9:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB46_11
	j	.LBB46_10
.LBB46_10:                              #   in Loop: Header=BB46_9 Depth=1
.Lpcrel_hi170:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi170)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
	j	.LBB46_9
.LBB46_11:
	lw	a0, -20(s0)
	beqz	a0, .LBB46_13
	j	.LBB46_12
.LBB46_12:
.Lpcrel_hi171:
	auipc	a0, %pcrel_hi(.L__profc_atol)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi171)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -16(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB46_14
.LBB46_13:
	lw	a1, -16(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB46_14
.LBB46_14:
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
.Lpcrel_hi172:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi172)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi173:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi173)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	bne	a0, a1, .LBB47_8
	j	.LBB47_5
.LBB47_5:
.Lpcrel_hi174:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi174)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	li	a0, 1
	sw	a0, 20(sp)
	j	.LBB47_7
.LBB47_6:
.Lpcrel_hi175:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi175)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	j	.LBB47_7
.LBB47_7:
	lw	a0, 36(sp)
	addi	a0, a0, 1
	sw	a0, 36(sp)
	j	.LBB47_8
.LBB47_8:
.Lpcrel_hi176:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi176)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	j	.LBB47_9
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	lw	a0, 36(sp)
	lbu	a0, 0(a0)
	call	isdigit
	beqz	a0, .LBB47_11
	j	.LBB47_10
.LBB47_10:                              #   in Loop: Header=BB47_9 Depth=1
.Lpcrel_hi177:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi177)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
	j	.LBB47_9
.LBB47_11:
	lw	a0, 20(sp)
	beqz	a0, .LBB47_13
	j	.LBB47_12
.LBB47_12:
.Lpcrel_hi178:
	auipc	a0, %pcrel_hi(.L__profc_atoll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi178)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, 28(sp)
	lw	a1, 24(sp)
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	sw	a0, 8(sp)                       # 4-byte Folded Spill
	j	.LBB47_14
.LBB47_13:
	lw	a2, 28(sp)
	lw	a3, 24(sp)
	li	a0, 0
	sub	a1, a0, a3
	snez	a3, a3
	add	a2, a2, a3
	sub	a0, a0, a2
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	sw	a0, 8(sp)                       # 4-byte Folded Spill
	j	.LBB47_14
.LBB47_14:
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
.Lpcrel_hi179:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi179)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	beqz	a0, .LBB48_9
	j	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
.Lpcrel_hi180:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi180)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi181:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi181)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi182:
	auipc	a0, %pcrel_hi(.L__profc_bsearch)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi182)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi183:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi183)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi184:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi184)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi185:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi185)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -52(s0)
	sw	a0, -12(s0)
	j	.LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	lw	a1, -48(s0)
	li	a0, 0
	bge	a0, a1, .LBB49_6
	j	.LBB49_5
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
.Lpcrel_hi186:
	auipc	a0, %pcrel_hi(.L__profc_bsearch_r)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi186)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi187:
	auipc	a0, %pcrel_hi(.L__profc_div)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi187)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi188:
	auipc	a0, %pcrel_hi(.L__profc_imaxabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi188)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi189:
	auipc	a0, %pcrel_hi(.L__profc_imaxabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi189)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi190:
	auipc	a0, %pcrel_hi(.L__profc_imaxdiv)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi190)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi191:
	auipc	a0, %pcrel_hi(.L__profc_labs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi191)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a1, -12(s0)
	li	a0, 0
	bge	a0, a1, .LBB53_2
	j	.LBB53_1
.LBB53_1:
.Lpcrel_hi192:
	auipc	a0, %pcrel_hi(.L__profc_labs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi192)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi193:
	auipc	a0, %pcrel_hi(.L__profc_ldiv)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi193)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi194:
	auipc	a0, %pcrel_hi(.L__profc_llabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi194)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi195:
	auipc	a0, %pcrel_hi(.L__profc_llabs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi195)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi196:
	auipc	a0, %pcrel_hi(.L__profc_lldiv)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi196)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Lpcrel_hi197:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi197)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB57_1
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB57_4
	j	.LBB57_2
.LBB57_2:                               #   in Loop: Header=BB57_1 Depth=1
.Lpcrel_hi198:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi198)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB57_4
	j	.LBB57_3
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
.Lpcrel_hi199:
	auipc	a1, %pcrel_hi(.L__profc_wcschr)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi199)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB57_4
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB57_7
	j	.LBB57_5
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
.Lpcrel_hi200:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi200)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB57_6
.LBB57_6:                               #   in Loop: Header=BB57_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	j	.LBB57_1
.LBB57_7:
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB57_9
	j	.LBB57_8
.LBB57_8:
.Lpcrel_hi201:
	auipc	a0, %pcrel_hi(.L__profc_wcschr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi201)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -12(s0)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB57_10
.LBB57_9:
	li	a0, 0
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB57_10
.LBB57_10:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
	ret
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	2
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Lpcrel_hi202:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi202)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB58_1
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB58_6
	j	.LBB58_2
.LBB58_2:                               #   in Loop: Header=BB58_1 Depth=1
.Lpcrel_hi203:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi203)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB58_6
	j	.LBB58_3
.LBB58_3:                               #   in Loop: Header=BB58_1 Depth=1
.Lpcrel_hi204:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi204)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	j	.LBB58_4
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
.Lpcrel_hi205:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi205)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	snez	a1, a0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	sw	a1, -20(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB58_6
	j	.LBB58_5
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
.Lpcrel_hi206:
	auipc	a1, %pcrel_hi(.L__profc_wcscmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi206)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -20(s0)                     # 4-byte Folded Spill
	j	.LBB58_6
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	lw	a0, -20(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB58_9
	j	.LBB58_7
.LBB58_7:                               #   in Loop: Header=BB58_1 Depth=1
.Lpcrel_hi207:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi207)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB58_8
.LBB58_8:                               #   in Loop: Header=BB58_1 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	addi	a0, a0, 4
	sw	a0, -16(s0)
	j	.LBB58_1
.LBB58_9:
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB58_11
	j	.LBB58_10
.LBB58_10:
.Lpcrel_hi208:
	auipc	a0, %pcrel_hi(.L__profc_wcscmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi208)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	li	a0, -1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB58_12
.LBB58_11:
	lw	a0, -12(s0)
	lw	a1, 0(a0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB58_12
.LBB58_12:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
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
.Lpcrel_hi209:
	auipc	a0, %pcrel_hi(.L__profc_wcscpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi209)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi210:
	auipc	a0, %pcrel_hi(.L__profc_wcscpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi210)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi211:
	auipc	a0, %pcrel_hi(.L__profc_wcslen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi211)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -16(s0)
	j	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	beqz	a0, .LBB60_4
	j	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
.Lpcrel_hi212:
	auipc	a0, %pcrel_hi(.L__profc_wcslen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi212)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
.Lpcrel_hi213:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi213)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB61_8
	j	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
.Lpcrel_hi214:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi214)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	li	a2, 0
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB61_8
	j	.LBB61_3
.LBB61_3:                               #   in Loop: Header=BB61_1 Depth=1
.Lpcrel_hi215:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi215)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	j	.LBB61_4
.LBB61_4:                               #   in Loop: Header=BB61_1 Depth=1
.Lpcrel_hi216:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi216)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB61_8
	j	.LBB61_5
.LBB61_5:                               #   in Loop: Header=BB61_1 Depth=1
.Lpcrel_hi217:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi217)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	j	.LBB61_6
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
.Lpcrel_hi218:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi218)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	snez	a1, a0
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB61_8
	j	.LBB61_7
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
.Lpcrel_hi219:
	auipc	a1, %pcrel_hi(.L__profc_wcsncmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi219)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB61_8
.LBB61_8:                               #   in Loop: Header=BB61_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB61_11
	j	.LBB61_9
.LBB61_9:                               #   in Loop: Header=BB61_1 Depth=1
.Lpcrel_hi220:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi220)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB61_10
.LBB61_10:                              #   in Loop: Header=BB61_1 Depth=1
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
.LBB61_11:
	lw	a0, -20(s0)
	beqz	a0, .LBB61_16
	j	.LBB61_12
.LBB61_12:
.Lpcrel_hi221:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi221)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB61_14
	j	.LBB61_13
.LBB61_13:
.Lpcrel_hi222:
	auipc	a0, %pcrel_hi(.L__profc_wcsncmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi222)
	lw	a0, 76(a1)
	lw	a2, 72(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 72(a1)
	sw	a0, 76(a1)
	li	a0, -1
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB61_15
.LBB61_14:
	lw	a0, -12(s0)
	lw	a1, 0(a0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB61_15
.LBB61_15:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB61_17
.LBB61_16:
	li	a0, 0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB61_17
.LBB61_17:
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	2
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
.Lpcrel_hi223:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi223)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB62_4
	j	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
.Lpcrel_hi224:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi224)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	xor	a2, a0, a1
	snez	a2, a2
	sw	a2, -28(s0)                     # 4-byte Folded Spill
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	beq	a0, a1, .LBB62_4
	j	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
.Lpcrel_hi225:
	auipc	a1, %pcrel_hi(.L__profc_wmemchr)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi225)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB62_7
	j	.LBB62_5
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
.Lpcrel_hi226:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi226)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB62_6
.LBB62_6:                               #   in Loop: Header=BB62_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, -1
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	j	.LBB62_1
.LBB62_7:
	lw	a0, -20(s0)
	beqz	a0, .LBB62_9
	j	.LBB62_8
.LBB62_8:
.Lpcrel_hi227:
	auipc	a0, %pcrel_hi(.L__profc_wmemchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi227)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -12(s0)
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB62_10
.LBB62_9:
	li	a0, 0
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB62_10
.LBB62_10:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	2
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
.Lpcrel_hi228:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi228)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	li	a1, 0
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB63_4
	j	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi229:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi229)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	xor	a2, a0, a1
	seqz	a2, a2
	sw	a2, -28(s0)                     # 4-byte Folded Spill
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	bne	a0, a1, .LBB63_4
	j	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
.Lpcrel_hi230:
	auipc	a1, %pcrel_hi(.L__profc_wmemcmp)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi230)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB63_7
	j	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
.Lpcrel_hi231:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi231)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_7:
	lw	a0, -20(s0)
	beqz	a0, .LBB63_12
	j	.LBB63_8
.LBB63_8:
.Lpcrel_hi232:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi232)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a1, 0(a1)
	bge	a0, a1, .LBB63_10
	j	.LBB63_9
.LBB63_9:
.Lpcrel_hi233:
	auipc	a0, %pcrel_hi(.L__profc_wmemcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi233)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	li	a0, -1
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB63_11
.LBB63_10:
	lw	a0, -12(s0)
	lw	a1, 0(a0)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	slt	a0, a0, a1
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB63_11
.LBB63_11:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB63_13
.LBB63_12:
	li	a0, 0
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB63_13
.LBB63_13:
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
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
.Lpcrel_hi234:
	auipc	a0, %pcrel_hi(.L__profc_wmemcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi234)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi235:
	auipc	a0, %pcrel_hi(.L__profc_wmemcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi235)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi236:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi236)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bne	a0, a1, .LBB65_2
	j	.LBB65_1
.LBB65_1:
.Lpcrel_hi237:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi237)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi238:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi238)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	j	.LBB65_4
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	addi	a1, a0, -1
	sw	a1, -24(s0)
	beqz	a0, .LBB65_6
	j	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_4 Depth=1
.Lpcrel_hi239:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi239)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi240:
	auipc	a0, %pcrel_hi(.L__profc_wmemmove)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi240)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi241:
	auipc	a0, %pcrel_hi(.L__profc_wmemset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi241)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi242:
	auipc	a0, %pcrel_hi(.L__profc_wmemset)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi242)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi243:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi243)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB67_6
	j	.LBB67_1
.LBB67_1:
.Lpcrel_hi244:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi244)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi245:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi245)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi246:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi246)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	beqz	a0, .LBB67_11
	j	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
.Lpcrel_hi247:
	auipc	a0, %pcrel_hi(.L__profc_bcopy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi247)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi248:
	auipc	a0, %pcrel_hi(.L__profc_rotl64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi248)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi249:
	auipc	a0, %pcrel_hi(.L__profc_rotr64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi249)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi250:
	auipc	a0, %pcrel_hi(.L__profc_rotl32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi250)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi251:
	auipc	a0, %pcrel_hi(.L__profc_rotr32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi251)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi252:
	auipc	a0, %pcrel_hi(.L__profc_rotl_sz)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi252)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi253:
	auipc	a0, %pcrel_hi(.L__profc_rotr_sz)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi253)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi254:
	auipc	a0, %pcrel_hi(.L__profc_rotl16)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi254)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi255:
	auipc	a0, %pcrel_hi(.L__profc_rotr16)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi255)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi256:
	auipc	a0, %pcrel_hi(.L__profc_rotl8)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi256)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi257:
	auipc	a0, %pcrel_hi(.L__profc_rotr8)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi257)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi258:
	auipc	a0, %pcrel_hi(.L__profc_bswap_16)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi258)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi259:
	auipc	a0, %pcrel_hi(.L__profc_bswap_32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi259)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi260:
	auipc	a0, %pcrel_hi(.L__profc_bswap_64)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi260)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi261:
	auipc	a0, %pcrel_hi(.L__profc_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi261)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB81_1
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -20(s0)
	li	a0, 31
	bltu	a0, a1, .LBB81_6
	j	.LBB81_2
.LBB81_2:                               #   in Loop: Header=BB81_1 Depth=1
.Lpcrel_hi262:
	auipc	a0, %pcrel_hi(.L__profc_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi262)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB81_4
	j	.LBB81_3
.LBB81_3:
.Lpcrel_hi263:
	auipc	a0, %pcrel_hi(.L__profc_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi263)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi264:
	auipc	a0, %pcrel_hi(.L__profc_libiberty_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi264)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	bnez	a0, .LBB82_2
	j	.LBB82_1
.LBB82_1:
.Lpcrel_hi265:
	auipc	a0, %pcrel_hi(.L__profc_libiberty_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi265)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi266:
	auipc	a0, %pcrel_hi(.L__profc_libiberty_ffs)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi266)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
	addi	sp, sp, -20
	sw	ra, 16(sp)                      # 4-byte Folded Spill
	sw	s0, 12(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 20
                                        # kill: def $x11 killed $x10
	sw	a0, -12(s0)
.Lpcrel_hi267:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinff)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi267)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	lui	a1, 1046528
	addi	a1, a1, -1
	call	__ltsf2
	li	a1, 1
	sw	a1, -16(s0)                     # 4-byte Folded Spill
	bltz	a0, .LBB83_3
	j	.LBB83_1
.LBB83_1:
.Lpcrel_hi268:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinff)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi268)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -12(s0)
	lui	a1, 522240
	addi	a1, a1, -1
	call	__gtsf2
	mv	a1, a0
	li	a0, 0
	slt	a2, a0, a1
	sw	a2, -20(s0)                     # 4-byte Folded Spill
	sw	a2, -16(s0)                     # 4-byte Folded Spill
	blt	a0, a1, .LBB83_3
	j	.LBB83_2
.LBB83_2:
	lw	a0, -20(s0)                     # 4-byte Folded Reload
.Lpcrel_hi269:
	auipc	a1, %pcrel_hi(.L__profc_gl_isinff)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi269)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, -16(s0)                     # 4-byte Folded Spill
	j	.LBB83_3
.LBB83_3:
	lw	a0, -16(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	lw	ra, 16(sp)                      # 4-byte Folded Reload
	lw	s0, 12(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 20
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
.Lpcrel_hi270:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi270)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	lui	a2, 1048320
	addi	a3, a2, -1
	li	a2, -1
	call	__ltdf2
	li	a1, 1
	sw	a1, 4(sp)                       # 4-byte Folded Spill
	bltz	a0, .LBB84_3
	j	.LBB84_1
.LBB84_1:
.Lpcrel_hi271:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi271)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	lui	a2, 524032
	addi	a3, a2, -1
	li	a2, -1
	call	__gtdf2
	mv	a1, a0
	li	a0, 0
	slt	a2, a0, a1
	sw	a2, 0(sp)                       # 4-byte Folded Spill
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	blt	a0, a1, .LBB84_3
	j	.LBB84_2
.LBB84_2:
	lw	a0, 0(sp)                       # 4-byte Folded Reload
.Lpcrel_hi272:
	auipc	a1, %pcrel_hi(.L__profc_gl_isinfd)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi272)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, 4(sp)                       # 4-byte Folded Spill
	j	.LBB84_3
.LBB84_3:
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
.Lpcrel_hi273:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi273)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bltz	a0, .LBB85_3
	j	.LBB85_1
.LBB85_1:
.Lpcrel_hi274:
	auipc	a0, %pcrel_hi(.L__profc_gl_isinfl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi274)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, 80(sp)
	lw	a1, 84(sp)
	lw	a2, 88(sp)
	lw	a3, 92(sp)
	li	ra, -1
	sw	ra, 24(sp)
	sw	ra, 20(sp)
	sw	ra, 16(sp)
	lui	ra, 524272
	addi	ra, ra, -1
	sw	ra, 28(sp)
	sw	a3, 44(sp)
	sw	a2, 40(sp)
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	addi	a0, sp, 32
	addi	a1, sp, 16
	call	__gttf2
	mv	a1, a0
	li	a0, 0
	slt	a2, a0, a1
	sw	a2, 8(sp)                       # 4-byte Folded Spill
	sw	a2, 12(sp)                      # 4-byte Folded Spill
	blt	a0, a1, .LBB85_3
	j	.LBB85_2
.LBB85_2:
	lw	a0, 8(sp)                       # 4-byte Folded Reload
.Lpcrel_hi275:
	auipc	a1, %pcrel_hi(.L__profc_gl_isinfl)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi275)
	lw	a1, 20(a2)
	lw	a3, 16(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 16(a2)
	sw	a1, 20(a2)
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	j	.LBB85_3
.LBB85_3:
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
.Lpcrel_hi276:
	auipc	a0, %pcrel_hi(.L__profc__Qp_itoq)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi276)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
                                        # kill: def $x12 killed $x10
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Lpcrel_hi277:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi277)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -12(s0)
	slli	a0, a0, 1
	srli	a1, a0, 1
	lui	a0, 522240
	blt	a0, a1, .LBB87_12
	j	.LBB87_1
.LBB87_1:
.Lpcrel_hi278:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi278)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a1, -12(s0)
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	mv	a0, a1
	call	__addsf3
	lw	a1, -24(s0)                     # 4-byte Folded Reload
	call	__eqsf2
	beqz	a0, .LBB87_12
	j	.LBB87_2
.LBB87_2:
.Lpcrel_hi279:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi279)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB87_3
.LBB87_3:
.Lpcrel_hi280:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi280)
	sw	a2, -36(s0)                     # 4-byte Folded Spill
	lw	a0, 12(a2)
	lw	a1, 8(a2)
	addi	a1, a1, 1
	seqz	a3, a1
	add	a0, a0, a3
	sw	a1, 8(a2)
	sw	a0, 12(a2)
	lw	a0, -16(s0)
	srli	a3, a0, 31
	lw	a1, 36(a2)
	lw	ra, 32(a2)
	add	a3, ra, a3
	sltu	ra, a3, ra
	add	a1, a1, ra
	sw	a3, 32(a2)
	sw	a1, 36(a2)
	lui	a1, 262144
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	lui	a1, 258048
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	bltz	a0, .LBB87_5
# %bb.4:
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	sw	a0, -28(s0)                     # 4-byte Folded Spill
.LBB87_5:
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	sw	a0, -20(s0)
	j	.LBB87_6
.LBB87_6:                               # =>This Inner Loop Header: Depth=1
.Lpcrel_hi281:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi281)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, -16(s0)
	srli	a1, a0, 31
	add	a1, a0, a1
	andi	a1, a1, -2
	sub	a0, a0, a1
	beqz	a0, .LBB87_8
	j	.LBB87_7
.LBB87_7:                               #   in Loop: Header=BB87_6 Depth=1
.Lpcrel_hi282:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi282)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a1, -20(s0)
	lw	a0, -12(s0)
	call	__mulsf3
	sw	a0, -12(s0)
	j	.LBB87_8
.LBB87_8:                               #   in Loop: Header=BB87_6 Depth=1
	lw	a0, -16(s0)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	bnez	a0, .LBB87_10
	j	.LBB87_9
.LBB87_9:
.Lpcrel_hi283:
	auipc	a0, %pcrel_hi(.L__profc_ldexpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi283)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	j	.LBB87_11
.LBB87_10:                              #   in Loop: Header=BB87_6 Depth=1
	lw	a1, -20(s0)
	mv	a0, a1
	call	__mulsf3
	sw	a0, -20(s0)
	j	.LBB87_6
.LBB87_11:
	j	.LBB87_12
.LBB87_12:
	lw	a0, -12(s0)
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	2
	.type	ldexp,@function
ldexp:                                  # @ldexp
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
.Lpcrel_hi284:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi284)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a2, 48(sp)
	lw	a0, 52(sp)
	slli	a0, a0, 1
	srli	a0, a0, 1
	lui	a1, 524032
	slt	a3, a1, a0
	sw	a3, 24(sp)                      # 4-byte Folded Spill
	snez	a2, a2
	sw	a2, 28(sp)                      # 4-byte Folded Spill
	beq	a0, a1, .LBB88_2
# %bb.1:
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a0, 28(sp)                      # 4-byte Folded Spill
.LBB88_2:
	lw	a0, 28(sp)                      # 4-byte Folded Reload
	bnez	a0, .LBB88_14
	j	.LBB88_3
.LBB88_3:
.Lpcrel_hi285:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi285)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a2, 48(sp)
	sw	a2, 16(sp)                      # 4-byte Folded Spill
	lw	a3, 52(sp)
	sw	a3, 20(sp)                      # 4-byte Folded Spill
	mv	a0, a2
	mv	a1, a3
	call	__adddf3
	lw	a2, 16(sp)                      # 4-byte Folded Reload
	lw	a3, 20(sp)                      # 4-byte Folded Reload
	call	__eqdf2
	beqz	a0, .LBB88_14
	j	.LBB88_4
.LBB88_4:
.Lpcrel_hi286:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi286)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB88_5
.LBB88_5:
.Lpcrel_hi287:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi287)
	sw	a2, 4(sp)                       # 4-byte Folded Spill
	lw	a0, 12(a2)
	lw	a1, 8(a2)
	addi	a1, a1, 1
	seqz	a3, a1
	add	a0, a0, a3
	sw	a1, 8(a2)
	sw	a0, 12(a2)
	lw	a0, 44(sp)
	srli	a3, a0, 31
	lw	a1, 36(a2)
	lw	ra, 32(a2)
	add	a3, ra, a3
	sltu	ra, a3, ra
	add	a1, a1, ra
	sw	a3, 32(a2)
	sw	a1, 36(a2)
	lui	a1, 262144
	sw	a1, 8(sp)                       # 4-byte Folded Spill
	lui	a1, 261632
	sw	a1, 12(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB88_7
# %bb.6:
	lw	a0, 8(sp)                       # 4-byte Folded Reload
	sw	a0, 12(sp)                      # 4-byte Folded Spill
.LBB88_7:
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a0, 36(sp)
	li	a0, 0
	sw	a0, 32(sp)
	j	.LBB88_8
.LBB88_8:                               # =>This Inner Loop Header: Depth=1
.Lpcrel_hi288:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi288)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, 44(sp)
	srli	a1, a0, 31
	add	a1, a0, a1
	andi	a1, a1, -2
	sub	a0, a0, a1
	beqz	a0, .LBB88_10
	j	.LBB88_9
.LBB88_9:                               #   in Loop: Header=BB88_8 Depth=1
.Lpcrel_hi289:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi289)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a2, 32(sp)
	lw	a3, 36(sp)
	lw	a0, 48(sp)
	lw	a1, 52(sp)
	call	__muldf3
	sw	a1, 52(sp)
	sw	a0, 48(sp)
	j	.LBB88_10
.LBB88_10:                              #   in Loop: Header=BB88_8 Depth=1
	lw	a0, 44(sp)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, 44(sp)
	lw	a0, 44(sp)
	bnez	a0, .LBB88_12
	j	.LBB88_11
.LBB88_11:
.Lpcrel_hi290:
	auipc	a0, %pcrel_hi(.L__profc_ldexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi290)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	j	.LBB88_13
.LBB88_12:                              #   in Loop: Header=BB88_8 Depth=1
	lw	a2, 32(sp)
	lw	a3, 36(sp)
	mv	a0, a2
	mv	a1, a3
	call	__muldf3
	sw	a1, 36(sp)
	sw	a0, 32(sp)
	j	.LBB88_8
.LBB88_13:
	j	.LBB88_14
.LBB88_14:
	lw	a0, 48(sp)
	lw	a1, 52(sp)
	addi	sp, s0, -64
	lw	ra, 60(sp)                      # 4-byte Folded Reload
	lw	s0, 56(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 64
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
.Lpcrel_hi291:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi291)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bnez	a0, .LBB89_16
	j	.LBB89_5
.LBB89_5:
.Lpcrel_hi292:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi292)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
	beqz	a0, .LBB89_16
	j	.LBB89_6
.LBB89_6:
.Lpcrel_hi293:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi293)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB89_7
.LBB89_7:
.Lpcrel_hi294:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a2, a0, %pcrel_lo(.Lpcrel_hi294)
	sw	a2, 20(sp)                      # 4-byte Folded Spill
	lw	a0, 12(a2)
	lw	a1, 8(a2)
	addi	a1, a1, 1
	seqz	a3, a1
	add	a0, a0, a3
	sw	a1, 8(a2)
	sw	a0, 12(a2)
	lw	a0, 300(sp)
	srli	a3, a0, 31
	lw	a1, 36(a2)
	lw	ra, 32(a2)
	add	a3, ra, a3
	sltu	ra, a3, ra
	add	a1, a1, ra
	sw	a3, 32(a2)
	sw	a1, 36(a2)
	lui	a1, 262144
	sw	a1, 24(sp)                      # 4-byte Folded Spill
	lui	a1, 262112
	sw	a1, 28(sp)                      # 4-byte Folded Spill
	bltz	a0, .LBB89_9
# %bb.8:
	lw	a0, 24(sp)                      # 4-byte Folded Reload
	sw	a0, 28(sp)                      # 4-byte Folded Spill
.LBB89_9:
	lw	a0, 28(sp)                      # 4-byte Folded Reload
	sw	a0, 284(sp)
	li	a0, 0
	sw	a0, 280(sp)
	sw	a0, 276(sp)
	sw	a0, 272(sp)
	j	.LBB89_10
.LBB89_10:                              # =>This Inner Loop Header: Depth=1
.Lpcrel_hi295:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi295)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, 300(sp)
	srli	a1, a0, 31
	add	a1, a0, a1
	andi	a1, a1, -2
	sub	a0, a0, a1
	beqz	a0, .LBB89_12
	j	.LBB89_11
.LBB89_11:                              #   in Loop: Header=BB89_10 Depth=1
.Lpcrel_hi296:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi296)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	ra, 272(sp)
	lw	a0, 276(sp)
	sw	a0, 12(sp)                      # 4-byte Folded Spill
	lw	a0, 280(sp)
	sw	a0, 8(sp)                       # 4-byte Folded Spill
	lw	a0, 284(sp)
	lw	a1, 304(sp)
	sw	a1, 16(sp)                      # 4-byte Folded Spill
	lw	a1, 308(sp)
	lw	a2, 312(sp)
	lw	a3, 316(sp)
	sw	a0, 156(sp)
	lw	a0, 8(sp)                       # 4-byte Folded Reload
	sw	a0, 152(sp)
	lw	a0, 12(sp)                      # 4-byte Folded Reload
	sw	a0, 148(sp)
	lw	a0, 16(sp)                      # 4-byte Folded Reload
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
	j	.LBB89_12
.LBB89_12:                              #   in Loop: Header=BB89_10 Depth=1
	lw	a0, 300(sp)
	srli	a1, a0, 31
	add	a0, a0, a1
	srai	a0, a0, 1
	sw	a0, 300(sp)
	lw	a0, 300(sp)
	bnez	a0, .LBB89_14
	j	.LBB89_13
.LBB89_13:
.Lpcrel_hi297:
	auipc	a0, %pcrel_hi(.L__profc_ldexpl)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi297)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	j	.LBB89_15
.LBB89_14:                              #   in Loop: Header=BB89_10 Depth=1
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
	j	.LBB89_10
.LBB89_15:
	j	.LBB89_16
.LBB89_16:
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
.Lpcrel_hi298:
	auipc	a0, %pcrel_hi(.L__profc_memxor)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi298)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi299:
	auipc	a0, %pcrel_hi(.L__profc_memxor)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi299)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	addi	sp, sp, -36
	sw	ra, 32(sp)                      # 4-byte Folded Spill
	sw	s0, 28(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 36
	sw	a0, -12(s0)
	sw	a1, -16(s0)
	sw	a2, -20(s0)
.Lpcrel_hi300:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi300)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	beqz	a0, .LBB91_4
	j	.LBB91_2
.LBB91_2:                               #   in Loop: Header=BB91_1 Depth=1
.Lpcrel_hi301:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi301)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	lw	a1, -24(s0)
	sb	a0, 0(a1)
	snez	a1, a0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB91_4
	j	.LBB91_3
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
.Lpcrel_hi302:
	auipc	a1, %pcrel_hi(.L__profc_strncat)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi302)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB91_7
	j	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
.Lpcrel_hi303:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi303)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB91_6
.LBB91_6:                               #   in Loop: Header=BB91_1 Depth=1
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
.LBB91_7:
	lw	a0, -20(s0)
	bnez	a0, .LBB91_9
	j	.LBB91_8
.LBB91_8:
.Lpcrel_hi304:
	auipc	a0, %pcrel_hi(.L__profc_strncat)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi304)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a1, -24(s0)
	li	a0, 0
	sb	a0, 0(a1)
	j	.LBB91_9
.LBB91_9:
	lw	a0, -12(s0)
	lw	ra, 32(sp)                      # 4-byte Folded Reload
	lw	s0, 28(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 36
	ret
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	2
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	addi	sp, sp, -28
	sw	ra, 24(sp)                      # 4-byte Folded Spill
	sw	s0, 20(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 28
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Lpcrel_hi305:
	auipc	a0, %pcrel_hi(.L__profc_strnlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi305)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	lw	a1, -16(s0)
	li	a2, 0
	sw	a2, -24(s0)                     # 4-byte Folded Spill
	bgeu	a0, a1, .LBB92_4
	j	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
.Lpcrel_hi306:
	auipc	a0, %pcrel_hi(.L__profc_strnlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi306)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -12(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lbu	a0, 0(a0)
	snez	a1, a0
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	sw	a1, -24(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB92_4
	j	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
.Lpcrel_hi307:
	auipc	a1, %pcrel_hi(.L__profc_strnlen)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi307)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -24(s0)                     # 4-byte Folded Spill
	j	.LBB92_4
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	lw	a0, -24(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB92_7
	j	.LBB92_5
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
.Lpcrel_hi308:
	auipc	a0, %pcrel_hi(.L__profc_strnlen)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi308)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB92_6
.LBB92_6:                               #   in Loop: Header=BB92_1 Depth=1
	lw	a0, -20(s0)
	addi	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB92_1
.LBB92_7:
	lw	a0, -20(s0)
	lw	ra, 24(sp)                      # 4-byte Folded Reload
	lw	s0, 20(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 28
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
.Lpcrel_hi309:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi309)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	j	.LBB93_1
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	lw	a0, -16(s0)
	lbu	a0, 0(a0)
	beqz	a0, .LBB93_8
	j	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
.Lpcrel_hi310:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi310)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi311:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi311)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -24(s0)
	addi	a1, a0, 1
	sw	a1, -24(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB93_6
	j	.LBB93_5
.LBB93_5:
.Lpcrel_hi312:
	auipc	a0, %pcrel_hi(.L__profc_strpbrk)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi312)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi313:
	auipc	a0, %pcrel_hi(.L__profc_strrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi313)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB94_2
.LBB94_1:                               #   in Loop: Header=BB94_2 Depth=1
.Lpcrel_hi314:
	auipc	a0, %pcrel_hi(.L__profc_strrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi314)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	j	.LBB94_2
.LBB94_2:                               # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	lbu	a0, 0(a0)
	lw	a1, -16(s0)
	bne	a0, a1, .LBB94_4
	j	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_2 Depth=1
.Lpcrel_hi315:
	auipc	a0, %pcrel_hi(.L__profc_strrchr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi315)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -12(s0)
	sw	a0, -20(s0)
	j	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_2 Depth=1
	j	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_2 Depth=1
	lw	a0, -12(s0)
	addi	a1, a0, 1
	sw	a1, -12(s0)
	lbu	a0, 0(a0)
	bnez	a0, .LBB94_1
	j	.LBB94_6
.LBB94_6:
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
.Lpcrel_hi316:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi316)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	sw	a0, -24(s0)
	lw	a0, -20(s0)
	call	strlen
	sw	a0, -28(s0)
	lw	a0, -28(s0)
	bnez	a0, .LBB95_2
	j	.LBB95_1
.LBB95_1:
.Lpcrel_hi317:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi317)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi318:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi318)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	lw	a2, -28(s0)
	call	strncmp
	bnez	a0, .LBB95_6
	j	.LBB95_5
.LBB95_5:
.Lpcrel_hi319:
	auipc	a0, %pcrel_hi(.L__profc_strstr)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi319)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi320:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi320)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a3, 0
	mv	a2, a3
	call	__ltdf2
	bgez	a0, .LBB96_3
	j	.LBB96_1
.LBB96_1:
.Lpcrel_hi321:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi321)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	li	a3, 0
	sw	a3, 4(sp)                       # 4-byte Folded Spill
	mv	a2, a3
	call	__gtdf2
	mv	a1, a0
	lw	a0, 4(sp)                       # 4-byte Folded Reload
	bge	a0, a1, .LBB96_3
	j	.LBB96_2
.LBB96_2:
.Lpcrel_hi322:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi322)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	j	.LBB96_6
.LBB96_3:
.Lpcrel_hi323:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi323)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a3, 0
	sw	a3, 0(sp)                       # 4-byte Folded Spill
	mv	a2, a3
	call	__gtdf2
	mv	a1, a0
	lw	a0, 0(sp)                       # 4-byte Folded Reload
	bge	a0, a1, .LBB96_7
	j	.LBB96_4
.LBB96_4:
.Lpcrel_hi324:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi324)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	li	a3, 0
	mv	a2, a3
	call	__ltdf2
	bgez	a0, .LBB96_7
	j	.LBB96_5
.LBB96_5:
.Lpcrel_hi325:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi325)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	j	.LBB96_6
.LBB96_6:
.Lpcrel_hi326:
	auipc	a0, %pcrel_hi(.L__profc_copysign)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi326)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a1, 16(sp)
	lw	a0, 20(sp)
	lui	a2, 524288
	xor	a0, a0, a2
	sw	a1, 24(sp)
	sw	a0, 28(sp)
	j	.LBB96_8
.LBB96_7:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	sw	a1, 28(sp)
	sw	a0, 24(sp)
	j	.LBB96_8
.LBB96_8:
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
.Lpcrel_hi327:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi327)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi328:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi328)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB97_13
.LBB97_2:
	lw	a0, -20(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB97_4
	j	.LBB97_3
.LBB97_3:
.Lpcrel_hi329:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi329)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB97_13
.LBB97_4:
	lw	a0, -16(s0)
	sw	a0, -32(s0)
	j	.LBB97_5
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	lw	a1, -32(s0)
	lw	a0, -36(s0)
	bltu	a0, a1, .LBB97_12
	j	.LBB97_6
.LBB97_6:                               #   in Loop: Header=BB97_5 Depth=1
.Lpcrel_hi330:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi330)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lw	a0, -32(s0)
	lbu	a0, 0(a0)
	lw	a1, -24(s0)
	lbu	a1, 0(a1)
	bne	a0, a1, .LBB97_10
	j	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_5 Depth=1
.Lpcrel_hi331:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi331)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, -32(s0)
	addi	a0, a0, 1
	lw	a1, -24(s0)
	addi	a1, a1, 1
	lw	a2, -28(s0)
	addi	a2, a2, -1
	call	memcmp
	bnez	a0, .LBB97_10
	j	.LBB97_8
.LBB97_8:
.Lpcrel_hi332:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi332)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	j	.LBB97_9
.LBB97_9:
.Lpcrel_hi333:
	auipc	a0, %pcrel_hi(.L__profc_memmem)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi333)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB97_13
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	j	.LBB97_11
.LBB97_11:                              #   in Loop: Header=BB97_5 Depth=1
	lw	a0, -32(s0)
	addi	a0, a0, 1
	sw	a0, -32(s0)
	j	.LBB97_5
.LBB97_12:
	li	a0, 0
	sw	a0, -12(s0)
	j	.LBB97_13
.LBB97_13:
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
.Lpcrel_hi334:
	auipc	a0, %pcrel_hi(.L__profc_mempcpy)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi334)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi335:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi335)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi336:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi336)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi337:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi337)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi338:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi338)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
	j	.LBB99_15
.LBB99_7:
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a2, 0
	lui	a3, 261632
	call	__ltdf2
	bgez	a0, .LBB99_14
	j	.LBB99_8
.LBB99_8:
.Lpcrel_hi339:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi339)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a3, 0
	mv	a2, a3
	call	__eqdf2
	beqz	a0, .LBB99_14
	j	.LBB99_9
.LBB99_9:
.Lpcrel_hi340:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi340)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	j	.LBB99_10
.LBB99_10:
.Lpcrel_hi341:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi341)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	j	.LBB99_11
.LBB99_11:                              # =>This Inner Loop Header: Depth=1
	lw	a0, 16(sp)
	lw	a1, 20(sp)
	li	a2, 0
	lui	a3, 261632
	call	__ltdf2
	bgez	a0, .LBB99_13
	j	.LBB99_12
.LBB99_12:                              #   in Loop: Header=BB99_11 Depth=1
.Lpcrel_hi342:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi342)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
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
	j	.LBB99_11
.LBB99_13:
	j	.LBB99_14
.LBB99_14:
	j	.LBB99_15
.LBB99_15:
	lw	a0, 4(sp)
	lw	a1, 12(sp)
	sw	a0, 0(a1)
	lw	a0, 8(sp)
	beqz	a0, .LBB99_17
	j	.LBB99_16
.LBB99_16:
.Lpcrel_hi343:
	auipc	a0, %pcrel_hi(.L__profc_frexp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi343)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	lw	a0, 20(sp)
	lui	a1, 524288
	xor	a0, a0, a1
	sw	a0, 20(sp)
	j	.LBB99_17
.LBB99_17:
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
.Lpcrel_hi344:
	auipc	a0, %pcrel_hi(.L__profc___muldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi344)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi345:
	auipc	a0, %pcrel_hi(.L__profc___muldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi345)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lbu	a0, 0(sp)
	andi	a0, a0, 1
	beqz	a0, .LBB100_4
	j	.LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
.Lpcrel_hi346:
	auipc	a0, %pcrel_hi(.L__profc___muldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi346)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
.Lpcrel_hi347:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi347)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bgeu	a0, a1, .LBB101_6
	j	.LBB101_2
.LBB101_2:                              #   in Loop: Header=BB101_1 Depth=1
.Lpcrel_hi348:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi348)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -28(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB101_6
	j	.LBB101_3
.LBB101_3:                              #   in Loop: Header=BB101_1 Depth=1
.Lpcrel_hi349:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi349)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	j	.LBB101_4
.LBB101_4:                              #   in Loop: Header=BB101_1 Depth=1
.Lpcrel_hi350:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi350)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -20(s0)
	lui	a1, 524288
	and	a0, a0, a1
	seqz	a1, a0
	sw	a1, -40(s0)                     # 4-byte Folded Spill
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	bnez	a0, .LBB101_6
	j	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	lw	a0, -40(s0)                     # 4-byte Folded Reload
.Lpcrel_hi351:
	auipc	a1, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi351)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB101_6
.LBB101_6:                              #   in Loop: Header=BB101_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB101_8
	j	.LBB101_7
.LBB101_7:                              #   in Loop: Header=BB101_1 Depth=1
.Lpcrel_hi352:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi352)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -28(s0)
	slli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB101_1
.LBB101_8:
	j	.LBB101_9
.LBB101_9:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB101_13
	j	.LBB101_10
.LBB101_10:                             #   in Loop: Header=BB101_9 Depth=1
.Lpcrel_hi353:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi353)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bltu	a0, a1, .LBB101_12
	j	.LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_9 Depth=1
.Lpcrel_hi354:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi354)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	or	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_9 Depth=1
	lw	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB101_9
.LBB101_13:
	lw	a0, -24(s0)
	beqz	a0, .LBB101_15
	j	.LBB101_14
.LBB101_14:
.Lpcrel_hi355:
	auipc	a0, %pcrel_hi(.L__profc_udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi355)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB101_16
.LBB101_15:
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB101_16
.LBB101_16:
	lw	a0, -12(s0)
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
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
.Lpcrel_hi356:
	auipc	a0, %pcrel_hi(.L__profc___clrsbqi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi356)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 1
	bnez	a0, .LBB102_2
	j	.LBB102_1
.LBB102_1:
.Lpcrel_hi357:
	auipc	a0, %pcrel_hi(.L__profc___clrsbqi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi357)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lbu	a0, -13(s0)
	not	a0, a0
	sb	a0, -13(s0)
	j	.LBB102_2
.LBB102_2:
	lbu	a0, -13(s0)
	bnez	a0, .LBB102_4
	j	.LBB102_3
.LBB102_3:
.Lpcrel_hi358:
	auipc	a0, %pcrel_hi(.L__profc___clrsbqi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi358)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi359:
	auipc	a0, %pcrel_hi(.L__profc___clrsbdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi359)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, 28(sp)
	bgez	a0, .LBB103_2
	j	.LBB103_1
.LBB103_1:
.Lpcrel_hi360:
	auipc	a0, %pcrel_hi(.L__profc___clrsbdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi360)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi361:
	auipc	a0, %pcrel_hi(.L__profc___clrsbdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi361)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi362:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi362)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB104_1
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	beqz	a0, .LBB104_5
	j	.LBB104_2
.LBB104_2:                              #   in Loop: Header=BB104_1 Depth=1
.Lpcrel_hi363:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi363)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lbu	a0, -12(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB104_4
	j	.LBB104_3
.LBB104_3:                              #   in Loop: Header=BB104_1 Depth=1
.Lpcrel_hi364:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi364)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi365:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi365)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bltu	a0, a1, .LBB105_3
	j	.LBB105_1
.LBB105_1:
.Lpcrel_hi366:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi366)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a1, -36(s0)
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	bltu	a0, a1, .LBB105_3
	j	.LBB105_2
.LBB105_2:
.Lpcrel_hi367:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi367)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB105_11
.LBB105_3:
.Lpcrel_hi368:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi368)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB105_4
.LBB105_4:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB105_7
	j	.LBB105_5
.LBB105_5:                              #   in Loop: Header=BB105_4 Depth=1
.Lpcrel_hi369:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi369)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
	j	.LBB105_6
.LBB105_6:                              #   in Loop: Header=BB105_4 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB105_4
.LBB105_7:
	j	.LBB105_8
.LBB105_8:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -20(s0)
	lw	a0, -32(s0)
	bgeu	a0, a1, .LBB105_10
	j	.LBB105_9
.LBB105_9:                              #   in Loop: Header=BB105_8 Depth=1
.Lpcrel_hi370:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi370)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
	j	.LBB105_8
.LBB105_10:
	j	.LBB105_15
.LBB105_11:
	j	.LBB105_12
.LBB105_12:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB105_14
	j	.LBB105_13
.LBB105_13:                             #   in Loop: Header=BB105_12 Depth=1
.Lpcrel_hi371:
	auipc	a0, %pcrel_hi(.L__profc___cmovd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi371)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB105_12
.LBB105_14:
	j	.LBB105_15
.LBB105_15:
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
.Lpcrel_hi372:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi372)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -12(s0)
	sw	a0, -32(s0)
	lw	a0, -16(s0)
	sw	a0, -36(s0)
	lw	a0, -32(s0)
	lw	a1, -36(s0)
	bltu	a0, a1, .LBB106_3
	j	.LBB106_1
.LBB106_1:
.Lpcrel_hi373:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi373)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a1, -32(s0)
	lw	a0, -36(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	bltu	a0, a1, .LBB106_3
	j	.LBB106_2
.LBB106_2:
.Lpcrel_hi374:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi374)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB106_10
.LBB106_3:
.Lpcrel_hi375:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi375)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB106_4
.LBB106_4:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB106_7
	j	.LBB106_5
.LBB106_5:                              #   in Loop: Header=BB106_4 Depth=1
.Lpcrel_hi376:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi376)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	slli	a2, a1, 1
	add	a0, a0, a2
	lh	a0, 0(a0)
	lw	a1, -12(s0)
	add	a1, a1, a2
	sh	a0, 0(a1)
	j	.LBB106_6
.LBB106_6:                              #   in Loop: Header=BB106_4 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB106_4
.LBB106_7:
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB106_9
	j	.LBB106_8
.LBB106_8:
.Lpcrel_hi377:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi377)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a0, -36(s0)
	lw	a1, -20(s0)
	addi	a2, a1, -1
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB106_9
.LBB106_9:
	j	.LBB106_14
.LBB106_10:
	j	.LBB106_11
.LBB106_11:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB106_13
	j	.LBB106_12
.LBB106_12:                             #   in Loop: Header=BB106_11 Depth=1
.Lpcrel_hi378:
	auipc	a0, %pcrel_hi(.L__profc___cmovh)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi378)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -36(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -32(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB106_11
.LBB106_13:
	j	.LBB106_14
.LBB106_14:
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
.Lpcrel_hi379:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi379)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bltu	a0, a1, .LBB107_3
	j	.LBB107_1
.LBB107_1:
.Lpcrel_hi380:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi380)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a1, -36(s0)
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	bltu	a0, a1, .LBB107_3
	j	.LBB107_2
.LBB107_2:
.Lpcrel_hi381:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi381)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	j	.LBB107_11
.LBB107_3:
.Lpcrel_hi382:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi382)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	li	a0, 0
	sw	a0, -24(s0)
	j	.LBB107_4
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -24(s0)
	lw	a1, -28(s0)
	bgeu	a0, a1, .LBB107_7
	j	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_4 Depth=1
.Lpcrel_hi383:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi383)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	slli	a2, a1, 2
	add	a0, a0, a2
	lw	a0, 0(a0)
	lw	a1, -12(s0)
	add	a1, a1, a2
	sw	a0, 0(a1)
	j	.LBB107_6
.LBB107_6:                              #   in Loop: Header=BB107_4 Depth=1
	lw	a0, -24(s0)
	addi	a0, a0, 1
	sw	a0, -24(s0)
	j	.LBB107_4
.LBB107_7:
	j	.LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -20(s0)
	lw	a0, -32(s0)
	bgeu	a0, a1, .LBB107_10
	j	.LBB107_9
.LBB107_9:                              #   in Loop: Header=BB107_8 Depth=1
.Lpcrel_hi384:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi384)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
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
	j	.LBB107_8
.LBB107_10:
	j	.LBB107_15
.LBB107_11:
	j	.LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	lw	a0, -20(s0)
	addi	a1, a0, -1
	sw	a1, -20(s0)
	beqz	a0, .LBB107_14
	j	.LBB107_13
.LBB107_13:                             #   in Loop: Header=BB107_12 Depth=1
.Lpcrel_hi385:
	auipc	a0, %pcrel_hi(.L__profc___cmovw)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi385)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -40(s0)
	lw	a2, -20(s0)
	add	a0, a0, a2
	lbu	a0, 0(a0)
	lw	a1, -36(s0)
	add	a1, a1, a2
	sb	a0, 0(a1)
	j	.LBB107_12
.LBB107_14:
	j	.LBB107_15
.LBB107_15:
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
.Lpcrel_hi386:
	auipc	a0, %pcrel_hi(.L__profc___modi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi386)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi387:
	auipc	a0, %pcrel_hi(.L__profc___uitod)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi387)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi388:
	auipc	a0, %pcrel_hi(.L__profc___uitof)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi388)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi389:
	auipc	a0, %pcrel_hi(.L__profc___ulltod)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi389)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi390:
	auipc	a0, %pcrel_hi(.L__profc___ulltof)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi390)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi391:
	auipc	a0, %pcrel_hi(.L__profc___umodi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi391)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi392:
	auipc	a0, %pcrel_hi(.L__profc___clzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi392)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -16(s0)
	j	.LBB114_1
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -16(s0)
	li	a0, 15
	blt	a0, a1, .LBB114_6
	j	.LBB114_2
.LBB114_2:                              #   in Loop: Header=BB114_1 Depth=1
.Lpcrel_hi393:
	auipc	a0, %pcrel_hi(.L__profc___clzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi393)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lhu	a0, -10(s0)
	lw	a2, -16(s0)
	li	a1, 15
	sub	a1, a1, a2
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB114_4
	j	.LBB114_3
.LBB114_3:
.Lpcrel_hi394:
	auipc	a0, %pcrel_hi(.L__profc___clzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi394)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi395:
	auipc	a0, %pcrel_hi(.L__profc___ctzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi395)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -16(s0)
	j	.LBB115_1
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	lw	a1, -16(s0)
	li	a0, 15
	blt	a0, a1, .LBB115_6
	j	.LBB115_2
.LBB115_2:                              #   in Loop: Header=BB115_1 Depth=1
.Lpcrel_hi396:
	auipc	a0, %pcrel_hi(.L__profc___ctzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi396)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lhu	a0, -10(s0)
	lw	a1, -16(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB115_4
	j	.LBB115_3
.LBB115_3:
.Lpcrel_hi397:
	auipc	a0, %pcrel_hi(.L__profc___ctzhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi397)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi398:
	auipc	a0, %pcrel_hi(.L__profc___fixunssfsi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi398)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	lui	a1, 290816
	call	__gesf2
	bltz	a0, .LBB116_2
	j	.LBB116_1
.LBB116_1:
.Lpcrel_hi399:
	auipc	a0, %pcrel_hi(.L__profc___fixunssfsi)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi399)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi400:
	auipc	a0, %pcrel_hi(.L__profc___parityhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi400)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi401:
	auipc	a0, %pcrel_hi(.L__profc___parityhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi401)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lhu	a0, -10(s0)
	lw	a1, -16(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB117_4
	j	.LBB117_3
.LBB117_3:                              #   in Loop: Header=BB117_1 Depth=1
.Lpcrel_hi402:
	auipc	a0, %pcrel_hi(.L__profc___parityhi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi402)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi403:
	auipc	a0, %pcrel_hi(.L__profc___popcounthi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi403)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi404:
	auipc	a0, %pcrel_hi(.L__profc___popcounthi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi404)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lhu	a0, -10(s0)
	lw	a1, -16(s0)
	srl	a0, a0, a1
	andi	a0, a0, 1
	beqz	a0, .LBB118_4
	j	.LBB118_3
.LBB118_3:                              #   in Loop: Header=BB118_1 Depth=1
.Lpcrel_hi405:
	auipc	a0, %pcrel_hi(.L__profc___popcounthi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi405)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi406:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_iq2000)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi406)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -20(s0)
	j	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	beqz	a0, .LBB119_5
	j	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
.Lpcrel_hi407:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_iq2000)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi407)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lbu	a0, -12(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB119_4
	j	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
.Lpcrel_hi408:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_iq2000)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi408)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi409:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi409)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -24(s0)
	lw	a0, -16(s0)
	bnez	a0, .LBB120_2
	j	.LBB120_1
.LBB120_1:
.Lpcrel_hi410:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi410)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi411:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi411)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lbu	a0, -20(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB120_6
	j	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_3 Depth=1
.Lpcrel_hi412:
	auipc	a0, %pcrel_hi(.L__profc___mulsi3_lm32)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi412)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
.Lpcrel_hi413:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi413)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bgeu	a0, a1, .LBB121_6
	j	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
.Lpcrel_hi414:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi414)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -28(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB121_6
	j	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
.Lpcrel_hi415:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi415)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	j	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
.Lpcrel_hi416:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi416)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -20(s0)
	lui	a1, 524288
	and	a0, a0, a1
	seqz	a1, a0
	sw	a1, -40(s0)                     # 4-byte Folded Spill
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	bnez	a0, .LBB121_6
	j	.LBB121_5
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	lw	a0, -40(s0)                     # 4-byte Folded Reload
.Lpcrel_hi417:
	auipc	a1, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi417)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB121_6
.LBB121_6:                              #   in Loop: Header=BB121_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB121_8
	j	.LBB121_7
.LBB121_7:                              #   in Loop: Header=BB121_1 Depth=1
.Lpcrel_hi418:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi418)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -28(s0)
	slli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB121_1
.LBB121_8:
	j	.LBB121_9
.LBB121_9:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB121_13
	j	.LBB121_10
.LBB121_10:                             #   in Loop: Header=BB121_9 Depth=1
.Lpcrel_hi419:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi419)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bltu	a0, a1, .LBB121_12
	j	.LBB121_11
.LBB121_11:                             #   in Loop: Header=BB121_9 Depth=1
.Lpcrel_hi420:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi420)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	or	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB121_12
.LBB121_12:                             #   in Loop: Header=BB121_9 Depth=1
	lw	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB121_9
.LBB121_13:
	lw	a0, -24(s0)
	beqz	a0, .LBB121_15
	j	.LBB121_14
.LBB121_14:
.Lpcrel_hi421:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi421)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB121_16
.LBB121_15:
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB121_16
.LBB121_16:
	lw	a0, -12(s0)
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
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
.Lpcrel_hi422:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi422)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	call	__ltsf2
	bgez	a0, .LBB122_2
	j	.LBB122_1
.LBB122_1:
.Lpcrel_hi423:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi423)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi424:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpf)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi424)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi425:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi425)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, 8(sp)
	lw	a1, 12(sp)
	lw	a2, 0(sp)
	lw	a3, 4(sp)
	call	__ltdf2
	bgez	a0, .LBB123_2
	j	.LBB123_1
.LBB123_1:
.Lpcrel_hi426:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi426)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi427:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_cmpd)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi427)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi428:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_mpysll)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi428)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi429:
	auipc	a0, %pcrel_hi(.L__profc___mspabi_mpyull)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi429)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -12(s0)
	sw	a1, -16(s0)
.Lpcrel_hi430:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi430)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -24(s0)
	sw	a0, -28(s0)
	lw	a0, -16(s0)
	bgez	a0, .LBB126_2
	j	.LBB126_1
.LBB126_1:
.Lpcrel_hi431:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi431)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
	beqz	a0, .LBB126_6
	j	.LBB126_4
.LBB126_4:                              #   in Loop: Header=BB126_3 Depth=1
.Lpcrel_hi432:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi432)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	lbu	a1, -17(s0)
	sltiu	a2, a1, 32
	sw	a2, -36(s0)                     # 4-byte Folded Spill
	li	a0, 31
	sw	a2, -32(s0)                     # 4-byte Folded Spill
	bltu	a0, a1, .LBB126_6
	j	.LBB126_5
.LBB126_5:                              #   in Loop: Header=BB126_3 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
.Lpcrel_hi433:
	auipc	a1, %pcrel_hi(.L__profc___mulhi3)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi433)
	lw	a1, 36(a2)
	lw	a3, 32(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 32(a2)
	sw	a1, 36(a2)
	sw	a0, -32(s0)                     # 4-byte Folded Spill
	j	.LBB126_6
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB126_11
	j	.LBB126_7
.LBB126_7:                              #   in Loop: Header=BB126_3 Depth=1
.Lpcrel_hi434:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi434)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lbu	a0, -16(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB126_9
	j	.LBB126_8
.LBB126_8:                              #   in Loop: Header=BB126_3 Depth=1
.Lpcrel_hi435:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi435)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	lw	a1, -12(s0)
	lw	a0, -28(s0)
	add	a0, a0, a1
	sw	a0, -28(s0)
	j	.LBB126_9
.LBB126_9:                              #   in Loop: Header=BB126_3 Depth=1
	lw	a0, -12(s0)
	slli	a0, a0, 1
	sw	a0, -12(s0)
	lw	a0, -16(s0)
	srai	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB126_10
.LBB126_10:                             #   in Loop: Header=BB126_3 Depth=1
	lbu	a0, -17(s0)
	addi	a0, a0, 1
	sb	a0, -17(s0)
	j	.LBB126_3
.LBB126_11:
	lw	a0, -24(s0)
	beqz	a0, .LBB126_13
	j	.LBB126_12
.LBB126_12:
.Lpcrel_hi436:
	auipc	a0, %pcrel_hi(.L__profc___mulhi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi436)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a1, -28(s0)
	li	a0, 0
	sub	a0, a0, a1
	sw	a0, -40(s0)                     # 4-byte Folded Spill
	j	.LBB126_14
.LBB126_13:
	lw	a0, -28(s0)
	sw	a0, -40(s0)                     # 4-byte Folded Spill
	j	.LBB126_14
.LBB126_14:
	lw	a0, -40(s0)                     # 4-byte Folded Reload
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
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
.Lpcrel_hi437:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi437)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	bgez	a0, .LBB127_2
	j	.LBB127_1
.LBB127_1:
.Lpcrel_hi438:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi438)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi439:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi439)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi440:
	auipc	a0, %pcrel_hi(.L__profc___divsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi440)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi441:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi441)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	li	a0, 0
	sw	a0, -20(s0)
	lw	a0, -12(s0)
	bgez	a0, .LBB128_2
	j	.LBB128_1
.LBB128_1:
.Lpcrel_hi442:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi442)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi443:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi443)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi444:
	auipc	a0, %pcrel_hi(.L__profc___modsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi444)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
	addi	sp, sp, -32
	sw	ra, 28(sp)                      # 4-byte Folded Spill
	sw	s0, 24(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 32
                                        # kill: def $x13 killed $x11
                                        # kill: def $x13 killed $x10
	sh	a0, -12(s0)
	sh	a1, -14(s0)
	sw	a2, -20(s0)
.Lpcrel_hi445:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi445)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bge	a0, a1, .LBB129_6
	j	.LBB129_2
.LBB129_2:                              #   in Loop: Header=BB129_1 Depth=1
.Lpcrel_hi446:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi446)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lhu	a0, -22(s0)
	li	a1, 0
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB129_6
	j	.LBB129_3
.LBB129_3:                              #   in Loop: Header=BB129_1 Depth=1
.Lpcrel_hi447:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi447)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	j	.LBB129_4
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
.Lpcrel_hi448:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi448)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lhu	a0, -14(s0)
	lui	a1, 8
	and	a0, a0, a1
	seqz	a1, a0
	sw	a1, -32(s0)                     # 4-byte Folded Spill
	sw	a1, -28(s0)                     # 4-byte Folded Spill
	bnez	a0, .LBB129_6
	j	.LBB129_5
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	lw	a0, -32(s0)                     # 4-byte Folded Reload
.Lpcrel_hi449:
	auipc	a1, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi449)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -28(s0)                     # 4-byte Folded Spill
	j	.LBB129_6
.LBB129_6:                              #   in Loop: Header=BB129_1 Depth=1
	lw	a0, -28(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB129_8
	j	.LBB129_7
.LBB129_7:                              #   in Loop: Header=BB129_1 Depth=1
.Lpcrel_hi450:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi450)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lh	a0, -14(s0)
	slli	a0, a0, 1
	sh	a0, -14(s0)
	lh	a0, -22(s0)
	slli	a0, a0, 1
	sh	a0, -22(s0)
	j	.LBB129_1
.LBB129_8:
	j	.LBB129_9
.LBB129_9:                              # =>This Inner Loop Header: Depth=1
	lhu	a0, -22(s0)
	beqz	a0, .LBB129_13
	j	.LBB129_10
.LBB129_10:                             #   in Loop: Header=BB129_9 Depth=1
.Lpcrel_hi451:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi451)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lhu	a0, -12(s0)
	lhu	a1, -14(s0)
	blt	a0, a1, .LBB129_12
	j	.LBB129_11
.LBB129_11:                             #   in Loop: Header=BB129_9 Depth=1
.Lpcrel_hi452:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi452)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	lh	a1, -14(s0)
	lh	a0, -12(s0)
	sub	a0, a0, a1
	sh	a0, -12(s0)
	lh	a1, -22(s0)
	lh	a0, -24(s0)
	or	a0, a0, a1
	sh	a0, -24(s0)
	j	.LBB129_12
.LBB129_12:                             #   in Loop: Header=BB129_9 Depth=1
	lhu	a0, -22(s0)
	srli	a0, a0, 1
	sh	a0, -22(s0)
	lhu	a0, -14(s0)
	srli	a0, a0, 1
	sh	a0, -14(s0)
	j	.LBB129_9
.LBB129_13:
	lw	a0, -20(s0)
	beqz	a0, .LBB129_15
	j	.LBB129_14
.LBB129_14:
.Lpcrel_hi453:
	auipc	a0, %pcrel_hi(.L__profc___udivmodhi4)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi453)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	lh	a0, -12(s0)
	sh	a0, -10(s0)
	j	.LBB129_16
.LBB129_15:
	lh	a0, -24(s0)
	sh	a0, -10(s0)
	j	.LBB129_16
.LBB129_16:
	lhu	a0, -10(s0)
	lw	ra, 28(sp)                      # 4-byte Folded Reload
	lw	s0, 24(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 32
	ret
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	2
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
	addi	sp, sp, -40
	sw	ra, 36(sp)                      # 4-byte Folded Spill
	sw	s0, 32(sp)                      # 4-byte Folded Spill
	addi	s0, sp, 40
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
.Lpcrel_hi454:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi454)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	bgeu	a0, a1, .LBB130_6
	j	.LBB130_2
.LBB130_2:                              #   in Loop: Header=BB130_1 Depth=1
.Lpcrel_hi455:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi455)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
	lw	a0, -28(s0)
	li	a1, 0
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	beqz	a0, .LBB130_6
	j	.LBB130_3
.LBB130_3:                              #   in Loop: Header=BB130_1 Depth=1
.Lpcrel_hi456:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi456)
	lw	a0, 44(a1)
	lw	a2, 40(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 40(a1)
	sw	a0, 44(a1)
	j	.LBB130_4
.LBB130_4:                              #   in Loop: Header=BB130_1 Depth=1
.Lpcrel_hi457:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi457)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	lw	a0, -20(s0)
	lui	a1, 524288
	and	a0, a0, a1
	seqz	a1, a0
	sw	a1, -40(s0)                     # 4-byte Folded Spill
	sw	a1, -36(s0)                     # 4-byte Folded Spill
	bnez	a0, .LBB130_6
	j	.LBB130_5
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	lw	a0, -40(s0)                     # 4-byte Folded Reload
.Lpcrel_hi458:
	auipc	a1, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a2, a1, %pcrel_lo(.Lpcrel_hi458)
	lw	a1, 28(a2)
	lw	a3, 24(a2)
	addi	a3, a3, 1
	seqz	ra, a3
	add	a1, a1, ra
	sw	a3, 24(a2)
	sw	a1, 28(a2)
	sw	a0, -36(s0)                     # 4-byte Folded Spill
	j	.LBB130_6
.LBB130_6:                              #   in Loop: Header=BB130_1 Depth=1
	lw	a0, -36(s0)                     # 4-byte Folded Reload
	andi	a0, a0, 1
	beqz	a0, .LBB130_8
	j	.LBB130_7
.LBB130_7:                              #   in Loop: Header=BB130_1 Depth=1
.Lpcrel_hi459:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi459)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lw	a0, -20(s0)
	slli	a0, a0, 1
	sw	a0, -20(s0)
	lw	a0, -28(s0)
	slli	a0, a0, 1
	sw	a0, -28(s0)
	j	.LBB130_1
.LBB130_8:
	j	.LBB130_9
.LBB130_9:                              # =>This Inner Loop Header: Depth=1
	lw	a0, -28(s0)
	beqz	a0, .LBB130_13
	j	.LBB130_10
.LBB130_10:                             #   in Loop: Header=BB130_9 Depth=1
.Lpcrel_hi460:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi460)
	lw	a0, 52(a1)
	lw	a2, 48(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 48(a1)
	sw	a0, 52(a1)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	bltu	a0, a1, .LBB130_12
	j	.LBB130_11
.LBB130_11:                             #   in Loop: Header=BB130_9 Depth=1
.Lpcrel_hi461:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi461)
	lw	a0, 60(a1)
	lw	a2, 56(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 56(a1)
	sw	a0, 60(a1)
	lw	a1, -20(s0)
	lw	a0, -16(s0)
	sub	a0, a0, a1
	sw	a0, -16(s0)
	lw	a1, -28(s0)
	lw	a0, -32(s0)
	or	a0, a0, a1
	sw	a0, -32(s0)
	j	.LBB130_12
.LBB130_12:                             #   in Loop: Header=BB130_9 Depth=1
	lw	a0, -28(s0)
	srli	a0, a0, 1
	sw	a0, -28(s0)
	lw	a0, -20(s0)
	srli	a0, a0, 1
	sw	a0, -20(s0)
	j	.LBB130_9
.LBB130_13:
	lw	a0, -24(s0)
	beqz	a0, .LBB130_15
	j	.LBB130_14
.LBB130_14:
.Lpcrel_hi462:
	auipc	a0, %pcrel_hi(.L__profc___udivmodsi4_libgcc)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi462)
	lw	a0, 68(a1)
	lw	a2, 64(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 64(a1)
	sw	a0, 68(a1)
	lw	a0, -16(s0)
	sw	a0, -12(s0)
	j	.LBB130_16
.LBB130_15:
	lw	a0, -32(s0)
	sw	a0, -12(s0)
	j	.LBB130_16
.LBB130_16:
	lw	a0, -12(s0)
	lw	ra, 36(sp)                      # 4-byte Folded Reload
	lw	s0, 32(sp)                      # 4-byte Folded Reload
	addi	sp, sp, 40
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
.Lpcrel_hi463:
	auipc	a0, %pcrel_hi(.L__profc___ashldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi463)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi464:
	auipc	a0, %pcrel_hi(.L__profc___ashldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi464)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi465:
	auipc	a0, %pcrel_hi(.L__profc___ashldi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi465)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi466:
	auipc	a0, %pcrel_hi(.L__profc___ashrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi466)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi467:
	auipc	a0, %pcrel_hi(.L__profc___ashrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi467)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi468:
	auipc	a0, %pcrel_hi(.L__profc___ashrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi468)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi469:
	auipc	a0, %pcrel_hi(.L__profc___bswapdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi469)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi470:
	auipc	a0, %pcrel_hi(.L__profc___bswapsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi470)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi471:
	auipc	a0, %pcrel_hi(.L__profc___clzsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi471)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi472:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi472)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi473:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi473)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_2:
	lw	a1, 12(sp)
	lw	a0, 4(sp)
	bge	a0, a1, .LBB136_4
	j	.LBB136_3
.LBB136_3:
.Lpcrel_hi474:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi474)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	li	a0, 2
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_4:
	lw	a0, 8(sp)
	lw	a1, 0(sp)
	bgeu	a0, a1, .LBB136_6
	j	.LBB136_5
.LBB136_5:
.Lpcrel_hi475:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi475)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB136_9
.LBB136_6:
	lw	a1, 8(sp)
	lw	a0, 0(sp)
	bgeu	a0, a1, .LBB136_8
	j	.LBB136_7
.LBB136_7:
.Lpcrel_hi476:
	auipc	a0, %pcrel_hi(.L__profc___cmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi476)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi477:
	auipc	a0, %pcrel_hi(.L__profc___aeabi_lcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi477)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi478:
	auipc	a0, %pcrel_hi(.L__profc___ctzsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi478)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi479:
	auipc	a0, %pcrel_hi(.L__profc___lshrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi479)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi480:
	auipc	a0, %pcrel_hi(.L__profc___lshrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi480)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
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
.Lpcrel_hi481:
	auipc	a0, %pcrel_hi(.L__profc___lshrdi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi481)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi482:
	auipc	a0, %pcrel_hi(.L__profc___muldsi3)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi482)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi483:
	auipc	a0, %pcrel_hi(.L__profc___muldi3_compiler_rt)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi483)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi484:
	auipc	a0, %pcrel_hi(.L__profc___negdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi484)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi485:
	auipc	a0, %pcrel_hi(.L__profc___paritydi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi485)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi486:
	auipc	a0, %pcrel_hi(.L__profc___paritysi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi486)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi487:
	auipc	a0, %pcrel_hi(.L__profc___popcountdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi487)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi488:
	auipc	a0, %pcrel_hi(.L__profc___popcountsi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi488)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi489:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi489)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, 20(sp)
	srli	a0, a0, 31
	sw	a0, 16(sp)
	lui	a0, 261888
	sw	a0, 12(sp)
	li	a0, 0
	sw	a0, 8(sp)
	j	.LBB147_1
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
.Lpcrel_hi490:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi490)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lbu	a0, 20(sp)
	andi	a0, a0, 1
	beqz	a0, .LBB147_3
	j	.LBB147_2
.LBB147_2:                              #   in Loop: Header=BB147_1 Depth=1
.Lpcrel_hi491:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi491)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi492:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi492)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi493:
	auipc	a0, %pcrel_hi(.L__profc___powidf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi493)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi494:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi494)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
	lw	a0, -16(s0)
	srli	a0, a0, 31
	sw	a0, -20(s0)
	lui	a0, 260096
	sw	a0, -24(s0)
	j	.LBB148_1
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
.Lpcrel_hi495:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi495)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	lbu	a0, -16(s0)
	andi	a0, a0, 1
	beqz	a0, .LBB148_3
	j	.LBB148_2
.LBB148_2:                              #   in Loop: Header=BB148_1 Depth=1
.Lpcrel_hi496:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi496)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
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
.Lpcrel_hi497:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi497)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
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
.Lpcrel_hi498:
	auipc	a0, %pcrel_hi(.L__profc___powisf2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi498)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi499:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi499)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
.Lpcrel_hi500:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi500)
	lw	a0, 12(a1)
	lw	a2, 8(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 8(a1)
	sw	a0, 12(a1)
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_2:
	lw	a1, 12(sp)
	lw	a0, 4(sp)
	bgeu	a0, a1, .LBB149_4
	j	.LBB149_3
.LBB149_3:
.Lpcrel_hi501:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi501)
	lw	a0, 20(a1)
	lw	a2, 16(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 16(a1)
	sw	a0, 20(a1)
	li	a0, 2
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_4:
	lw	a0, 8(sp)
	lw	a1, 0(sp)
	bgeu	a0, a1, .LBB149_6
	j	.LBB149_5
.LBB149_5:
.Lpcrel_hi502:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi502)
	lw	a0, 28(a1)
	lw	a2, 24(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 24(a1)
	sw	a0, 28(a1)
	li	a0, 0
	sw	a0, 36(sp)
	j	.LBB149_9
.LBB149_6:
	lw	a1, 8(sp)
	lw	a0, 0(sp)
	bgeu	a0, a1, .LBB149_8
	j	.LBB149_7
.LBB149_7:
.Lpcrel_hi503:
	auipc	a0, %pcrel_hi(.L__profc___ucmpdi2)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi503)
	lw	a0, 36(a1)
	lw	a2, 32(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 32(a1)
	sw	a0, 36(a1)
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
.Lpcrel_hi504:
	auipc	a0, %pcrel_hi(.L__profc___aeabi_ulcmp)
	addi	a1, a0, %pcrel_lo(.Lpcrel_hi504)
	lw	a0, 4(a1)
	lw	a2, 0(a1)
	addi	a2, a2, 1
	seqz	a3, a2
	add	a0, a0, a3
	sw	a2, 0(a1)
	sw	a0, 4(a1)
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
	.word	.L__profc_memmove-.L__profd_memmove
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memccpy-.L__profd_memccpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memchr-.L__profd_memchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memcmp-.L__profd_memcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memcpy-.L__profd_memcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memrchr-.L__profd_memrchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memset-.L__profd_memset
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_stpcpy-.L__profd_stpcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strchrnul-.L__profd_strchrnul
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strchr-.L__profd_strchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strcmp-.L__profd_strcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strlen-.L__profd_strlen
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strncmp-.L__profd_strncmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_swab-.L__profd_swab
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isalpha-.L__profd_isalpha
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isascii-.L__profd_isascii
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isblank-.L__profd_isblank
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_iscntrl-.L__profd_iscntrl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isdigit-.L__profd_isdigit
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isgraph-.L__profd_isgraph
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_islower-.L__profd_islower
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isprint-.L__profd_isprint
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isspace-.L__profd_isspace
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_isupper-.L__profd_isupper
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_iswcntrl-.L__profd_iswcntrl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_iswdigit-.L__profd_iswdigit
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_iswprint-.L__profd_iswprint
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	10                              # 0xa
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_iswxdigit-.L__profd_iswxdigit
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_toascii-.L__profd_toascii
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fdim-.L__profd_fdim
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fdimf-.L__profd_fdimf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fmax-.L__profd_fmax
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fmaxf-.L__profd_fmaxf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fmaxl-.L__profd_fmaxl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fmin-.L__profd_fmin
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fminf-.L__profd_fminf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_fminl-.L__profd_fminl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_l64a-.L__profd_l64a
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_srand-.L__profd_srand
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rand-.L__profd_rand
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_insque-.L__profd_insque
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_remque-.L__profd_remque
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_lsearch-.L__profd_lsearch
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_lfind-.L__profd_lfind
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_abs-.L__profd_abs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_atoi-.L__profd_atoi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_atol-.L__profd_atol
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_atoll-.L__profd_atoll
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_bsearch-.L__profd_bsearch
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_bsearch_r-.L__profd_bsearch_r
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_div-.L__profd_div
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_imaxabs-.L__profd_imaxabs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_imaxdiv-.L__profd_imaxdiv
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_labs-.L__profd_labs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_ldiv-.L__profd_ldiv
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_llabs-.L__profd_llabs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_lldiv-.L__profd_lldiv
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wcschr-.L__profd_wcschr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wcscmp-.L__profd_wcscmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wcscpy-.L__profd_wcscpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wcslen-.L__profd_wcslen
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wcsncmp-.L__profd_wcsncmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	10                              # 0xa
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wmemchr-.L__profd_wmemchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wmemcmp-.L__profd_wmemcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wmemcpy-.L__profd_wmemcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wmemmove-.L__profd_wmemmove
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_wmemset-.L__profd_wmemset
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_bcopy-.L__profd_bcopy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotl64-.L__profd_rotl64
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotr64-.L__profd_rotr64
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotl32-.L__profd_rotl32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotr32-.L__profd_rotr32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotl_sz-.L__profd_rotl_sz
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotr_sz-.L__profd_rotr_sz
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotl16-.L__profd_rotl16
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotr16-.L__profd_rotr16
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotl8-.L__profd_rotl8
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_rotr8-.L__profd_rotr8
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_bswap_16-.L__profd_bswap_16
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_bswap_32-.L__profd_bswap_32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_bswap_64-.L__profd_bswap_64
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_ffs-.L__profd_ffs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_gl_isinff-.L__profd_gl_isinff
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_ldexpf-.L__profd_ldexpf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	8                               # 0x8
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_ldexp-.L__profd_ldexp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	8                               # 0x8
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_ldexpl-.L__profd_ldexpl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	8                               # 0x8
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memxor-.L__profd_memxor
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strncat-.L__profd_strncat
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strnlen-.L__profd_strnlen
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strpbrk-.L__profd_strpbrk
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strrchr-.L__profd_strrchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_strstr-.L__profd_strstr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_copysign-.L__profd_copysign
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_memmem-.L__profd_memmem
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_mempcpy-.L__profd_mempcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_frexp-.L__profd_frexp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___muldi3-.L__profd___muldi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mulsi3-.L__profd___mulsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___cmovd-.L__profd___cmovd
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___cmovh-.L__profd___cmovh
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___cmovw-.L__profd___cmovw
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___modi-.L__profd___modi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___uitod-.L__profd___uitod
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___uitof-.L__profd___uitof
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___ulltod-.L__profd___ulltod
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___ulltof-.L__profd___ulltof
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___umodi-.L__profd___umodi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___clzhi2-.L__profd___clzhi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___ctzhi2-.L__profd___ctzhi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___parityhi2-.L__profd___parityhi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___popcounthi2-.L__profd___popcounthi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___mulhi3-.L__profd___mulhi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___divsi3-.L__profd___divsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___modsi3-.L__profd___modsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___ashldi3-.L__profd___ashldi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___ashrdi3-.L__profd___ashrdi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___bswapdi2-.L__profd___bswapdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___bswapsi2-.L__profd___bswapsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___clzsi2-.L__profd___clzsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___cmpdi2-.L__profd___cmpdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___ctzsi2-.L__profd___ctzsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___lshrdi3-.L__profd___lshrdi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___muldsi3-.L__profd___muldsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___negdi2-.L__profd___negdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___paritydi2-.L__profd___paritydi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___paritysi2-.L__profd___paritysi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___popcountdi2-.L__profd___popcountdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___popcountsi2-.L__profd___popcountsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___powidf2-.L__profd___powidf2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___powisf2-.L__profd___powisf2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
	.word	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.zero	6
	.zero	2
	.word	0                               # 0x0
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
