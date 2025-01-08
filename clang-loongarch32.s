	.text
	.file	"mini-libc.c"
	.globl	memmove                         # -- Begin function memmove
	.p2align	5
	.type	memmove,@function
memmove:                                # @memmove
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_memmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmove)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	bgeu	$a0, $a1, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_memmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmove)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -28
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	b	.LBB0_2
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB0_5
	b	.LBB0_3
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmove)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -28
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -28
	ld.b	$a0, $a0, -1
	ld.w	$a1, $fp, -24
	addi.w	$a2, $a1, -1
	st.w	$a2, $fp, -24
	st.b	$a0, $a1, -1
	b	.LBB0_4
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_13
.LBB0_6:
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	beq	$a0, $a1, .LBB0_12
	b	.LBB0_7
.LBB0_7:
	pcalau12i	$a0, %pc_hi20(.L__profc_memmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmove)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB0_11
	b	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmove)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -28
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -28
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -24
	addi.w	$a2, $a1, 1
	st.w	$a2, $fp, -24
	st.b	$a0, $a1, 0
	b	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB0_8
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	memmove, .Lfunc_end0-memmove
                                        # -- End function
	.globl	memccpy                         # -- Begin function memccpy
	.p2align	5
	.type	memccpy,@function
memccpy:                                # @memccpy
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a3, $fp, -28
	pcalau12i	$a0, %pc_hi20(.L__profc_memccpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memccpy)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -36
	ld.bu	$a0, $fp, -24
	st.w	$a0, $fp, -24
	b	.LBB1_1
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	move	$a1, $zero
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	beqz	$a0, .LBB1_4
	b	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memccpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memccpy)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -36
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	st.b	$a0, $a1, 0
	ld.w	$a1, $fp, -24
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.w	$a2, $fp, -44                   # 4-byte Folded Spill
	st.w	$a2, $fp, -40                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB1_4
	b	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $fp, -44                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_memccpy)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_memccpy)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -40                   # 4-byte Folded Spill
	b	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_7
	b	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memccpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memccpy)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $fp, -28
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -36
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -32
	b	.LBB1_1
.LBB1_7:
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB1_9
	b	.LBB1_8
.LBB1_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_memccpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memccpy)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB1_10
.LBB1_9:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB1_10
.LBB1_10:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	memccpy, .Lfunc_end1-memccpy
                                        # -- End function
	.globl	memchr                          # -- Begin function memchr
	.p2align	5
	.type	memchr,@function
memchr:                                 # @memchr
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_memchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memchr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.bu	$a0, $fp, -16
	st.w	$a0, $fp, -16
	b	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	beqz	$a0, .LBB2_4
	b	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memchr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.w	$a2, $fp, -32                   # 4-byte Folded Spill
	st.w	$a2, $fp, -28                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB2_4
	b	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_memchr)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_memchr)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_7
	b	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memchr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB2_6
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB2_1
.LBB2_7:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB2_9
	b	.LBB2_8
.LBB2_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_memchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memchr)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB2_10
.LBB2_9:
	move	$a0, $zero
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB2_10
.LBB2_10:
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end2:
	.size	memchr, .Lfunc_end2-memchr
                                        # -- End function
	.globl	memcmp                          # -- Begin function memcmp
	.p2align	5
	.type	memcmp,@function
memcmp:                                 # @memcmp
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_memcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memcmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	b	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -32                   # 4-byte Folded Spill
	beqz	$a0, .LBB3_4
	b	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memcmp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	ld.bu	$a1, $a1, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	st.w	$a2, $fp, -32                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB3_4
	b	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_memcmp)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_memcmp)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_7
	b	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memcmp)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB3_6
.LBB3_6:                                #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -28
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB3_1
.LBB3_7:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB3_9
	b	.LBB3_8
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_memcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memcmp)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	ld.bu	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -40                   # 4-byte Folded Spill
	b	.LBB3_10
.LBB3_9:
	move	$a0, $zero
	st.w	$a0, $fp, -40                   # 4-byte Folded Spill
	b	.LBB3_10
.LBB3_10:
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	memcmp, .Lfunc_end3-memcmp
                                        # -- End function
	.globl	memcpy                          # -- Begin function memcpy
	.p2align	5
	.type	memcpy,@function
memcpy:                                 # @memcpy
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_memcpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memcpy)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	b	.LBB4_1
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB4_4
	b	.LBB4_2
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memcpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memcpy)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -28
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -28
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -24
	addi.w	$a2, $a1, 1
	st.w	$a2, $fp, -24
	st.b	$a0, $a1, 0
	b	.LBB4_3
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB4_1
.LBB4_4:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	memcpy, .Lfunc_end4-memcpy
                                        # -- End function
	.globl	memrchr                         # -- Begin function memrchr
	.p2align	5
	.type	memrchr,@function
memrchr:                                # @memrchr
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc_memrchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memrchr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.bu	$a0, $fp, -20
	st.w	$a0, $fp, -20
	b	.LBB5_1
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -24
	beqz	$a0, .LBB5_5
	b	.LBB5_2
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memrchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memrchr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	add.w	$a0, $a0, $a1
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -20
	bne	$a0, $a1, .LBB5_4
	b	.LBB5_3
.LBB5_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_memrchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memrchr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB5_6
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_1
.LBB5_5:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB5_6
.LBB5_6:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end5:
	.size	memrchr, .Lfunc_end5-memrchr
                                        # -- End function
	.globl	memset                          # -- Begin function memset
	.p2align	5
	.type	memset,@function
memset:                                 # @memset
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_memset)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memset)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	b	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB6_4
	b	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memset)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memset)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -24
	st.b	$a0, $a1, 0
	b	.LBB6_3
.LBB6_3:                                #   in Loop: Header=BB6_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB6_1
.LBB6_4:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	memset, .Lfunc_end6-memset
                                        # -- End function
	.globl	stpcpy                          # -- Begin function stpcpy
	.p2align	5
	.type	stpcpy,@function
stpcpy:                                 # @stpcpy
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_stpcpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_stpcpy)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -12
	st.b	$a0, $a1, 0
	beqz	$a0, .LBB7_4
	b	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_stpcpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_stpcpy)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB7_3
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB7_1
.LBB7_4:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end7:
	.size	stpcpy, .Lfunc_end7-stpcpy
                                        # -- End function
	.globl	strchrnul                       # -- Begin function strchrnul
	.p2align	5
	.type	strchrnul,@function
strchrnul:                              # @strchrnul
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_strchrnul)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strchrnul)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.bu	$a0, $fp, -16
	st.w	$a0, $fp, -16
	b	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB8_4
	b	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strchrnul)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strchrnul)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -12
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB8_4
	b	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_strchrnul)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_strchrnul)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_7
	b	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strchrnul)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strchrnul)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB8_6
.LBB8_6:                                #   in Loop: Header=BB8_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB8_1
.LBB8_7:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end8:
	.size	strchrnul, .Lfunc_end8-strchrnul
                                        # -- End function
	.globl	strchr                          # -- Begin function strchr
	.p2align	5
	.type	strchr,@function
strchr:                                 # @strchr
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_strchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strchr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB9_2
.LBB9_1:                                #   in Loop: Header=BB9_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strchr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB9_2
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -20
	bne	$a0, $a1, .LBB9_4
	b	.LBB9_3
.LBB9_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_strchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strchr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB9_7
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	b	.LBB9_5
.LBB9_5:                                #   in Loop: Header=BB9_2 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -16
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB9_1
	b	.LBB9_6
.LBB9_6:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB9_7
.LBB9_7:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end9:
	.size	strchr, .Lfunc_end9-strchr
                                        # -- End function
	.globl	strcmp                          # -- Begin function strcmp
	.p2align	5
	.type	strcmp,@function
strcmp:                                 # @strcmp
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_strcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strcmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.b	$a1, $a1, 0
	move	$a2, $zero
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB10_4
	b	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strcmp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB10_4
	b	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_strcmp)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_strcmp)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_7
	b	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strcmp)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB10_6
.LBB10_6:                               #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB10_1
.LBB10_7:
	ld.w	$a0, $fp, -12
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.bu	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end10:
	.size	strcmp, .Lfunc_end10-strcmp
                                        # -- End function
	.globl	strlen                          # -- Begin function strlen
	.p2align	5
	.type	strlen,@function
strlen:                                 # @strlen
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_strlen)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strlen)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB11_4
	b	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strlen)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strlen)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB11_3
.LBB11_3:                               #   in Loop: Header=BB11_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB11_1
.LBB11_4:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	sub.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen
                                        # -- End function
	.globl	strncmp                         # -- Begin function strncmp
	.p2align	5
	.type	strncmp,@function
strncmp:                                # @strncmp
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -24
	bnez	$a0, .LBB12_2
	b	.LBB12_1
.LBB12_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB12_14
.LBB12_2:
	b	.LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB12_10
	b	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	ld.w	$a0, $fp, -32
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB12_10
	b	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	b	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -24
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB12_10
	b	.LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	b	.LBB12_8
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -28
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	ld.bu	$a1, $a1, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	st.w	$a2, $fp, -40                   # 4-byte Folded Spill
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB12_10
	b	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_strncmp)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_strncmp)
	ld.w	$a1, $a2, 36
	ld.w	$a3, $a2, 32
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 32
	st.w	$a1, $a2, 36
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB12_10
.LBB12_10:                              #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_13
	b	.LBB12_11
.LBB12_11:                              #   in Loop: Header=BB12_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncmp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB12_12
.LBB12_12:                              #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, -28
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -24
	b	.LBB12_3
.LBB12_13:
	ld.w	$a0, $fp, -28
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	ld.bu	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB12_14
.LBB12_14:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end12:
	.size	strncmp, .Lfunc_end12-strncmp
                                        # -- End function
	.globl	swab                            # -- Begin function swab
	.p2align	5
	.type	swab,@function
swab:                                   # @swab
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_swab)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_swab)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	b	.LBB13_1
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB13_4
	b	.LBB13_2
.LBB13_2:                               #   in Loop: Header=BB13_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_swab)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_swab)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -24
	ld.b	$a0, $a0, 1
	ld.w	$a1, $fp, -28
	st.b	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	st.b	$a0, $a1, 1
	ld.w	$a0, $fp, -28
	addi.w	$a0, $a0, 2
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 2
	st.w	$a0, $fp, -24
	b	.LBB13_3
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -2
	st.w	$a0, $fp, -20
	b	.LBB13_1
.LBB13_4:
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end13:
	.size	swab, .Lfunc_end13-swab
                                        # -- End function
	.globl	isalpha                         # -- Begin function isalpha
	.p2align	5
	.type	isalpha,@function
isalpha:                                # @isalpha
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isalpha)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isalpha)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ori	$a0, $a0, 32
	addi.w	$a0, $a0, -97
	sltui	$a0, $a0, 26
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	isalpha, .Lfunc_end14-isalpha
                                        # -- End function
	.globl	isascii                         # -- Begin function isascii
	.p2align	5
	.type	isascii,@function
isascii:                                # @isascii
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isascii)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isascii)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	bstrins.w	$a0, $zero, 6, 0
	sltui	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	isascii, .Lfunc_end15-isascii
                                        # -- End function
	.globl	isblank                         # -- Begin function isblank
	.p2align	5
	.type	isblank,@function
isblank:                                # @isblank
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isblank)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isblank)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB16_3
	b	.LBB16_1
.LBB16_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_isblank)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isblank)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	addi.w	$a1, $a0, -9
	sltui	$a2, $a1, 1
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	ori	$a1, $zero, 9
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB16_3
	b	.LBB16_2
.LBB16_2:
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_isblank)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_isblank)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB16_3
.LBB16_3:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	5
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_iscntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iscntrl)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB17_3
	b	.LBB17_1
.LBB17_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_iscntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iscntrl)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	addi.w	$a1, $a0, -127
	sltui	$a2, $a1, 1
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	ori	$a1, $zero, 127
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB17_3
	b	.LBB17_2
.LBB17_2:
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_iscntrl)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_iscntrl)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB17_3
.LBB17_3:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end17:
	.size	iscntrl, .Lfunc_end17-iscntrl
                                        # -- End function
	.globl	isdigit                         # -- Begin function isdigit
	.p2align	5
	.type	isdigit,@function
isdigit:                                # @isdigit
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isdigit)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isdigit)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -48
	sltui	$a0, $a0, 10
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end18:
	.size	isdigit, .Lfunc_end18-isdigit
                                        # -- End function
	.globl	isgraph                         # -- Begin function isgraph
	.p2align	5
	.type	isgraph,@function
isgraph:                                # @isgraph
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isgraph)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isgraph)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -33
	sltui	$a0, $a0, 94
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end19:
	.size	isgraph, .Lfunc_end19-isgraph
                                        # -- End function
	.globl	islower                         # -- Begin function islower
	.p2align	5
	.type	islower,@function
islower:                                # @islower
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_islower)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_islower)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -97
	sltui	$a0, $a0, 26
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end20:
	.size	islower, .Lfunc_end20-islower
                                        # -- End function
	.globl	isprint                         # -- Begin function isprint
	.p2align	5
	.type	isprint,@function
isprint:                                # @isprint
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isprint)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -32
	sltui	$a0, $a0, 95
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end21:
	.size	isprint, .Lfunc_end21-isprint
                                        # -- End function
	.globl	isspace                         # -- Begin function isspace
	.p2align	5
	.type	isspace,@function
isspace:                                # @isspace
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isspace)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isspace)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB22_3
	b	.LBB22_1
.LBB22_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_isspace)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isspace)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -9
	sltui	$a2, $a0, 5
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	ori	$a1, $zero, 5
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB22_3
	b	.LBB22_2
.LBB22_2:
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_isspace)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_isspace)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB22_3
.LBB22_3:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end22:
	.size	isspace, .Lfunc_end22-isspace
                                        # -- End function
	.globl	isupper                         # -- Begin function isupper
	.p2align	5
	.type	isupper,@function
isupper:                                # @isupper
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_isupper)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_isupper)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -65
	sltui	$a0, $a0, 26
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end23:
	.size	isupper, .Lfunc_end23-isupper
                                        # -- End function
	.globl	iswcntrl                        # -- Begin function iswcntrl
	.p2align	5
	.type	iswcntrl,@function
iswcntrl:                               # @iswcntrl
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_iswcntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswcntrl)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB24_7
	b	.LBB24_1
.LBB24_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswcntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswcntrl)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -127
	ori	$a2, $zero, 1
	ori	$a1, $zero, 33
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB24_7
	b	.LBB24_2
.LBB24_2:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswcntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswcntrl)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	b	.LBB24_3
.LBB24_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswcntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswcntrl)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4056
	add.w	$a0, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a1, $zero, 2
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB24_7
	b	.LBB24_4
.LBB24_4:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswcntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswcntrl)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	b	.LBB24_5
.LBB24_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswcntrl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswcntrl)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -16
	ori	$a1, $a1, 7
	add.w	$a0, $a0, $a1
	sltui	$a2, $a0, 3
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	ori	$a1, $zero, 3
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB24_7
	b	.LBB24_6
.LBB24_6:
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_iswcntrl)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_iswcntrl)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB24_7
.LBB24_7:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end24:
	.size	iswcntrl, .Lfunc_end24-iswcntrl
                                        # -- End function
	.globl	iswdigit                        # -- Begin function iswdigit
	.p2align	5
	.type	iswdigit,@function
iswdigit:                               # @iswdigit
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_iswdigit)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswdigit)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -48
	sltui	$a0, $a0, 10
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end25:
	.size	iswdigit, .Lfunc_end25-iswdigit
                                        # -- End function
	.globl	iswprint                        # -- Begin function iswprint
	.p2align	5
	.type	iswprint,@function
iswprint:                               # @iswprint
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 254
	bltu	$a0, $a1, .LBB26_2
	b	.LBB26_1
.LBB26_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	andi	$a1, $a0, 127
	ori	$a0, $zero, 32
	sltu	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB26_13
.LBB26_2:
	ld.w	$a0, $fp, -16
	srli.w	$a0, $a0, 3
	ori	$a1, $zero, 1029
	bltu	$a0, $a1, .LBB26_7
	b	.LBB26_3
.LBB26_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4054
	add.w	$a0, $a0, $a1
	lu12i.w	$a1, 11
	ori	$a1, $a1, 2006
	bltu	$a0, $a1, .LBB26_7
	b	.LBB26_4
.LBB26_4:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	b	.LBB26_5
.LBB26_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, -14
	add.w	$a0, $a0, $a1
	lu12i.w	$a1, 1
	ori	$a1, $a1, 4089
	bltu	$a0, $a1, .LBB26_7
	b	.LBB26_6
.LBB26_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	b	.LBB26_8
.LBB26_7:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB26_13
.LBB26_8:
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, -16
	ori	$a1, $a1, 4
	add.w	$a1, $a0, $a1
	lu12i.w	$a0, 256
	ori	$a0, $a0, 3
	bltu	$a0, $a1, .LBB26_11
	b	.LBB26_9
.LBB26_9:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 15, 1
	slli.w	$a0, $a0, 1
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4094
	beq	$a0, $a1, .LBB26_11
	b	.LBB26_10
.LBB26_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 76
	ld.w	$a2, $a1, 72
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 72
	st.w	$a0, $a1, 76
	b	.LBB26_12
.LBB26_11:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswprint)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswprint)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB26_13
.LBB26_12:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB26_13
.LBB26_13:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end26:
	.size	iswprint, .Lfunc_end26-iswprint
                                        # -- End function
	.globl	iswxdigit                       # -- Begin function iswxdigit
	.p2align	5
	.type	iswxdigit,@function
iswxdigit:                              # @iswxdigit
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_iswxdigit)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswxdigit)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -48
	ori	$a2, $zero, 1
	ori	$a1, $zero, 10
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB27_3
	b	.LBB27_1
.LBB27_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_iswxdigit)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_iswxdigit)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	ori	$a0, $a0, 32
	addi.w	$a0, $a0, -97
	sltui	$a2, $a0, 6
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	ori	$a1, $zero, 6
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB27_3
	b	.LBB27_2
.LBB27_2:
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_iswxdigit)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_iswxdigit)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB27_3
.LBB27_3:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end27:
	.size	iswxdigit, .Lfunc_end27-iswxdigit
                                        # -- End function
	.globl	toascii                         # -- Begin function toascii
	.p2align	5
	.type	toascii,@function
toascii:                                # @toascii
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_toascii)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_toascii)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	andi	$a0, $a0, 127
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end28:
	.size	toascii, .Lfunc_end28-toascii
                                        # -- End function
	.globl	fdim                            # -- Begin function fdim
	.p2align	5
	.type	fdim,@function
fdim:                                   # @fdim
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a2, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_fdim)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdim)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	bstrpick.w	$a2, $a1, 30, 0
	lu12i.w	$a3, 524032
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB29_2
	b	.LBB29_1
.LBB29_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fdim)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdim)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB29_8
.LBB29_2:
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	bstrpick.w	$a2, $a1, 30, 0
	lu12i.w	$a3, 524032
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB29_4
	b	.LBB29_3
.LBB29_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fdim)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdim)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB29_8
.LBB29_4:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__gtdf2)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB29_6
	b	.LBB29_5
.LBB29_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fdim)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdim)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__subdf3)
	st.w	$a0, $fp, -44                   # 4-byte Folded Spill
	move	$a0, $a1
	ld.w	$a1, $fp, -44                   # 4-byte Folded Reload
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB29_7
.LBB29_6:
	move	$a1, $zero
	move	$a0, $a1
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB29_7
.LBB29_7:
	ld.w	$a1, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	st.w	$a1, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB29_8
.LBB29_8:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end29:
	.size	fdim, .Lfunc_end29-fdim
                                        # -- End function
	.globl	fdimf                           # -- Begin function fdimf
	.p2align	5
	.type	fdimf,@function
fdimf:                                  # @fdimf
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_fdimf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdimf)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB30_2
	b	.LBB30_1
.LBB30_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fdimf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdimf)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB30_8
.LBB30_2:
	ld.w	$a0, $fp, -20
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB30_4
	b	.LBB30_3
.LBB30_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fdimf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdimf)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -12
	b	.LBB30_8
.LBB30_4:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bl	%plt(__gtsf2)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB30_6
	b	.LBB30_5
.LBB30_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fdimf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fdimf)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bl	%plt(__subsf3)
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB30_7
.LBB30_6:
	move	$a0, $zero
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB30_7
.LBB30_7:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	st.w	$a0, $fp, -12
	b	.LBB30_8
.LBB30_8:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end30:
	.size	fdimf, .Lfunc_end30-fdimf
                                        # -- End function
	.globl	fmax                            # -- Begin function fmax
	.p2align	5
	.type	fmax,@function
fmax:                                   # @fmax
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a2, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_fmax)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmax)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	bstrpick.w	$a2, $a1, 30, 0
	lu12i.w	$a3, 524032
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB31_2
	b	.LBB31_1
.LBB31_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmax)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmax)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB31_13
.LBB31_2:
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	bstrpick.w	$a2, $a1, 30, 0
	lu12i.w	$a3, 524032
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB31_4
	b	.LBB31_3
.LBB31_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmax)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmax)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB31_13
.LBB31_4:
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 31
	ld.w	$a1, $fp, -28
	srli.w	$a1, $a1, 31
	beq	$a0, $a1, .LBB31_9
	b	.LBB31_5
.LBB31_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmax)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmax)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -20
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB31_7
	b	.LBB31_6
.LBB31_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmax)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmax)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB31_8
.LBB31_7:
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB31_8
.LBB31_8:
	ld.w	$a1, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	st.w	$a1, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB31_13
.LBB31_9:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB31_11
	b	.LBB31_10
.LBB31_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmax)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmax)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	st.w	$a1, $fp, -48                   # 4-byte Folded Spill
	st.w	$a0, $fp, -44                   # 4-byte Folded Spill
	b	.LBB31_12
.LBB31_11:
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	st.w	$a1, $fp, -48                   # 4-byte Folded Spill
	st.w	$a0, $fp, -44                   # 4-byte Folded Spill
	b	.LBB31_12
.LBB31_12:
	ld.w	$a1, $fp, -48                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -44                   # 4-byte Folded Reload
	st.w	$a1, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB31_13
.LBB31_13:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end31:
	.size	fmax, .Lfunc_end31-fmax
                                        # -- End function
	.globl	fmaxf                           # -- Begin function fmaxf
	.p2align	5
	.type	fmaxf,@function
fmaxf:                                  # @fmaxf
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxf)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB32_2
	b	.LBB32_1
.LBB32_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxf)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -12
	b	.LBB32_13
.LBB32_2:
	ld.w	$a0, $fp, -20
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB32_4
	b	.LBB32_3
.LBB32_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxf)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB32_13
.LBB32_4:
	ld.w	$a0, $fp, -16
	srli.w	$a0, $a0, 31
	ld.w	$a1, $fp, -20
	srli.w	$a1, $a1, 31
	beq	$a0, $a1, .LBB32_9
	b	.LBB32_5
.LBB32_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxf)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB32_7
	b	.LBB32_6
.LBB32_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxf)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB32_8
.LBB32_7:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB32_8
.LBB32_8:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	st.w	$a0, $fp, -12
	b	.LBB32_13
.LBB32_9:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bl	%plt(__ltsf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB32_11
	b	.LBB32_10
.LBB32_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxf)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB32_12
.LBB32_11:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB32_12
.LBB32_12:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	st.w	$a0, $fp, -12
	b	.LBB32_13
.LBB32_13:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end32:
	.size	fmaxf, .Lfunc_end32-fmaxf
                                        # -- End function
	.globl	fmaxl                           # -- Begin function fmaxl
	.p2align	5
	.type	fmaxl,@function
fmaxl:                                  # @fmaxl
# %bb.0:
	addi.w	$sp, $sp, -144
	st.w	$ra, $sp, 140                   # 4-byte Folded Spill
	st.w	$fp, $sp, 136                   # 4-byte Folded Spill
	addi.w	$fp, $sp, 144
	move	$a3, $a2
	move	$a7, $a1
	move	$t0, $a0
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 4
	ld.w	$a2, $a3, 8
	ld.w	$a3, $a3, 12
	ld.w	$a4, $a7, 0
	ld.w	$a5, $a7, 4
	ld.w	$a6, $a7, 8
	ld.w	$a7, $a7, 12
	st.w	$t0, $fp, -100                  # 4-byte Folded Spill
	st.w	$a7, $fp, -36
	st.w	$a6, $fp, -40
	st.w	$a5, $fp, -44
	st.w	$a4, $fp, -48
	st.w	$a3, $fp, -52
	st.w	$a2, $fp, -56
	st.w	$a1, $fp, -60
	st.w	$a0, $fp, -64
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxl)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -48
	ld.w	$a3, $fp, -44
	ld.w	$a2, $fp, -40
	ld.w	$a1, $fp, -36
	bstrpick.w	$a4, $a1, 30, 0
	lu12i.w	$a5, 524272
	slt	$a1, $a4, $a5
	xor	$a4, $a4, $a5
	or	$a2, $a2, $a4
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a3, $a3, 1
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a3
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB33_2
	b	.LBB33_1
.LBB33_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxl)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -64
	ld.w	$a1, $fp, -60
	ld.w	$a2, $fp, -56
	ld.w	$a3, $fp, -52
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB33_13
.LBB33_2:
	ld.w	$a0, $fp, -64
	ld.w	$a3, $fp, -60
	ld.w	$a2, $fp, -56
	ld.w	$a1, $fp, -52
	bstrpick.w	$a4, $a1, 30, 0
	lu12i.w	$a5, 524272
	slt	$a1, $a4, $a5
	xor	$a4, $a4, $a5
	or	$a2, $a2, $a4
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a3, $a3, 1
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a3
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB33_4
	b	.LBB33_3
.LBB33_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxl)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	ld.w	$a2, $fp, -40
	ld.w	$a3, $fp, -36
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB33_13
.LBB33_4:
	ld.w	$a0, $fp, -36
	srli.w	$a0, $a0, 31
	ld.w	$a1, $fp, -52
	srli.w	$a1, $a1, 31
	beq	$a0, $a1, .LBB33_9
	b	.LBB33_5
.LBB33_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxl)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -36
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB33_7
	b	.LBB33_6
.LBB33_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxl)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -52
	ld.w	$a1, $fp, -56
	ld.w	$a2, $fp, -60
	ld.w	$a3, $fp, -64
	st.w	$a3, $fp, -116                  # 4-byte Folded Spill
	st.w	$a2, $fp, -112                  # 4-byte Folded Spill
	st.w	$a1, $fp, -108                  # 4-byte Folded Spill
	st.w	$a0, $fp, -104                  # 4-byte Folded Spill
	b	.LBB33_8
.LBB33_7:
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -40
	ld.w	$a2, $fp, -44
	ld.w	$a3, $fp, -48
	st.w	$a3, $fp, -116                  # 4-byte Folded Spill
	st.w	$a2, $fp, -112                  # 4-byte Folded Spill
	st.w	$a1, $fp, -108                  # 4-byte Folded Spill
	st.w	$a0, $fp, -104                  # 4-byte Folded Spill
	b	.LBB33_8
.LBB33_8:
	ld.w	$a3, $fp, -116                  # 4-byte Folded Reload
	ld.w	$a2, $fp, -112                  # 4-byte Folded Reload
	ld.w	$a1, $fp, -108                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -104                  # 4-byte Folded Reload
	st.w	$a3, $fp, -32
	st.w	$a2, $fp, -28
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB33_13
.LBB33_9:
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	ld.w	$a2, $fp, -40
	ld.w	$a3, $fp, -36
	ld.w	$a4, $fp, -64
	ld.w	$a5, $fp, -60
	ld.w	$a6, $fp, -56
	ld.w	$a7, $fp, -52
	st.w	$a7, $fp, -84
	st.w	$a6, $fp, -88
	st.w	$a5, $fp, -92
	st.w	$a4, $fp, -96
	st.w	$a3, $fp, -68
	st.w	$a2, $fp, -72
	st.w	$a1, $fp, -76
	st.w	$a0, $fp, -80
	addi.w	$a0, $fp, -80
	addi.w	$a1, $fp, -96
	bl	%plt(__lttf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB33_11
	b	.LBB33_10
.LBB33_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmaxl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmaxl)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -52
	ld.w	$a1, $fp, -56
	ld.w	$a2, $fp, -60
	ld.w	$a3, $fp, -64
	st.w	$a3, $fp, -132                  # 4-byte Folded Spill
	st.w	$a2, $fp, -128                  # 4-byte Folded Spill
	st.w	$a1, $fp, -124                  # 4-byte Folded Spill
	st.w	$a0, $fp, -120                  # 4-byte Folded Spill
	b	.LBB33_12
.LBB33_11:
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -40
	ld.w	$a2, $fp, -44
	ld.w	$a3, $fp, -48
	st.w	$a3, $fp, -132                  # 4-byte Folded Spill
	st.w	$a2, $fp, -128                  # 4-byte Folded Spill
	st.w	$a1, $fp, -124                  # 4-byte Folded Spill
	st.w	$a0, $fp, -120                  # 4-byte Folded Spill
	b	.LBB33_12
.LBB33_12:
	ld.w	$a3, $fp, -132                  # 4-byte Folded Reload
	ld.w	$a2, $fp, -128                  # 4-byte Folded Reload
	ld.w	$a1, $fp, -124                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -120                  # 4-byte Folded Reload
	st.w	$a3, $fp, -32
	st.w	$a2, $fp, -28
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB33_13
.LBB33_13:
	ld.w	$a1, $fp, -100                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -32
	ld.w	$a2, $fp, -28
	ld.w	$a3, $fp, -24
	ld.w	$a4, $fp, -20
	st.w	$a4, $a1, 12
	st.w	$a3, $a1, 8
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	ld.w	$fp, $sp, 136                   # 4-byte Folded Reload
	ld.w	$ra, $sp, 140                   # 4-byte Folded Reload
	addi.w	$sp, $sp, 144
	ret
.Lfunc_end33:
	.size	fmaxl, .Lfunc_end33-fmaxl
                                        # -- End function
	.globl	fmin                            # -- Begin function fmin
	.p2align	5
	.type	fmin,@function
fmin:                                   # @fmin
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a2, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_fmin)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmin)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	bstrpick.w	$a2, $a1, 30, 0
	lu12i.w	$a3, 524032
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB34_2
	b	.LBB34_1
.LBB34_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmin)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmin)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB34_13
.LBB34_2:
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	bstrpick.w	$a2, $a1, 30, 0
	lu12i.w	$a3, 524032
	slt	$a1, $a2, $a3
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB34_4
	b	.LBB34_3
.LBB34_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmin)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmin)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB34_13
.LBB34_4:
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 31
	ld.w	$a1, $fp, -28
	srli.w	$a1, $a1, 31
	beq	$a0, $a1, .LBB34_9
	b	.LBB34_5
.LBB34_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmin)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmin)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -20
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB34_7
	b	.LBB34_6
.LBB34_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmin)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmin)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB34_8
.LBB34_7:
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB34_8
.LBB34_8:
	ld.w	$a1, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	st.w	$a1, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB34_13
.LBB34_9:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB34_11
	b	.LBB34_10
.LBB34_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_fmin)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fmin)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	st.w	$a1, $fp, -48                   # 4-byte Folded Spill
	st.w	$a0, $fp, -44                   # 4-byte Folded Spill
	b	.LBB34_12
.LBB34_11:
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	st.w	$a1, $fp, -48                   # 4-byte Folded Spill
	st.w	$a0, $fp, -44                   # 4-byte Folded Spill
	b	.LBB34_12
.LBB34_12:
	ld.w	$a1, $fp, -48                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -44                   # 4-byte Folded Reload
	st.w	$a1, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB34_13
.LBB34_13:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end34:
	.size	fmin, .Lfunc_end34-fmin
                                        # -- End function
	.globl	fminf                           # -- Begin function fminf
	.p2align	5
	.type	fminf,@function
fminf:                                  # @fminf
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_fminf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminf)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB35_2
	b	.LBB35_1
.LBB35_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminf)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -12
	b	.LBB35_13
.LBB35_2:
	ld.w	$a0, $fp, -20
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB35_4
	b	.LBB35_3
.LBB35_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminf)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB35_13
.LBB35_4:
	ld.w	$a0, $fp, -16
	srli.w	$a0, $a0, 31
	ld.w	$a1, $fp, -20
	srli.w	$a1, $a1, 31
	beq	$a0, $a1, .LBB35_9
	b	.LBB35_5
.LBB35_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminf)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB35_7
	b	.LBB35_6
.LBB35_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminf)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB35_8
.LBB35_7:
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB35_8
.LBB35_8:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	st.w	$a0, $fp, -12
	b	.LBB35_13
.LBB35_9:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bl	%plt(__ltsf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB35_11
	b	.LBB35_10
.LBB35_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminf)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB35_12
.LBB35_11:
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB35_12
.LBB35_12:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	st.w	$a0, $fp, -12
	b	.LBB35_13
.LBB35_13:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end35:
	.size	fminf, .Lfunc_end35-fminf
                                        # -- End function
	.globl	fminl                           # -- Begin function fminl
	.p2align	5
	.type	fminl,@function
fminl:                                  # @fminl
# %bb.0:
	addi.w	$sp, $sp, -144
	st.w	$ra, $sp, 140                   # 4-byte Folded Spill
	st.w	$fp, $sp, 136                   # 4-byte Folded Spill
	addi.w	$fp, $sp, 144
	move	$a3, $a2
	move	$a7, $a1
	move	$t0, $a0
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 4
	ld.w	$a2, $a3, 8
	ld.w	$a3, $a3, 12
	ld.w	$a4, $a7, 0
	ld.w	$a5, $a7, 4
	ld.w	$a6, $a7, 8
	ld.w	$a7, $a7, 12
	st.w	$t0, $fp, -100                  # 4-byte Folded Spill
	st.w	$a7, $fp, -36
	st.w	$a6, $fp, -40
	st.w	$a5, $fp, -44
	st.w	$a4, $fp, -48
	st.w	$a3, $fp, -52
	st.w	$a2, $fp, -56
	st.w	$a1, $fp, -60
	st.w	$a0, $fp, -64
	pcalau12i	$a0, %pc_hi20(.L__profc_fminl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminl)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -48
	ld.w	$a3, $fp, -44
	ld.w	$a2, $fp, -40
	ld.w	$a1, $fp, -36
	bstrpick.w	$a4, $a1, 30, 0
	lu12i.w	$a5, 524272
	slt	$a1, $a4, $a5
	xor	$a4, $a4, $a5
	or	$a2, $a2, $a4
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a3, $a3, 1
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a3
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB36_2
	b	.LBB36_1
.LBB36_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminl)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -64
	ld.w	$a1, $fp, -60
	ld.w	$a2, $fp, -56
	ld.w	$a3, $fp, -52
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB36_13
.LBB36_2:
	ld.w	$a0, $fp, -64
	ld.w	$a3, $fp, -60
	ld.w	$a2, $fp, -56
	ld.w	$a1, $fp, -52
	bstrpick.w	$a4, $a1, 30, 0
	lu12i.w	$a5, 524272
	slt	$a1, $a4, $a5
	xor	$a4, $a4, $a5
	or	$a2, $a2, $a4
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltui	$a3, $a3, 1
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a3
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB36_4
	b	.LBB36_3
.LBB36_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminl)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	ld.w	$a2, $fp, -40
	ld.w	$a3, $fp, -36
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB36_13
.LBB36_4:
	ld.w	$a0, $fp, -36
	srli.w	$a0, $a0, 31
	ld.w	$a1, $fp, -52
	srli.w	$a1, $a1, 31
	beq	$a0, $a1, .LBB36_9
	b	.LBB36_5
.LBB36_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminl)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -36
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB36_7
	b	.LBB36_6
.LBB36_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminl)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -40
	ld.w	$a2, $fp, -44
	ld.w	$a3, $fp, -48
	st.w	$a3, $fp, -116                  # 4-byte Folded Spill
	st.w	$a2, $fp, -112                  # 4-byte Folded Spill
	st.w	$a1, $fp, -108                  # 4-byte Folded Spill
	st.w	$a0, $fp, -104                  # 4-byte Folded Spill
	b	.LBB36_8
.LBB36_7:
	ld.w	$a0, $fp, -52
	ld.w	$a1, $fp, -56
	ld.w	$a2, $fp, -60
	ld.w	$a3, $fp, -64
	st.w	$a3, $fp, -116                  # 4-byte Folded Spill
	st.w	$a2, $fp, -112                  # 4-byte Folded Spill
	st.w	$a1, $fp, -108                  # 4-byte Folded Spill
	st.w	$a0, $fp, -104                  # 4-byte Folded Spill
	b	.LBB36_8
.LBB36_8:
	ld.w	$a3, $fp, -116                  # 4-byte Folded Reload
	ld.w	$a2, $fp, -112                  # 4-byte Folded Reload
	ld.w	$a1, $fp, -108                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -104                  # 4-byte Folded Reload
	st.w	$a3, $fp, -32
	st.w	$a2, $fp, -28
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB36_13
.LBB36_9:
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	ld.w	$a2, $fp, -40
	ld.w	$a3, $fp, -36
	ld.w	$a4, $fp, -64
	ld.w	$a5, $fp, -60
	ld.w	$a6, $fp, -56
	ld.w	$a7, $fp, -52
	st.w	$a7, $fp, -84
	st.w	$a6, $fp, -88
	st.w	$a5, $fp, -92
	st.w	$a4, $fp, -96
	st.w	$a3, $fp, -68
	st.w	$a2, $fp, -72
	st.w	$a1, $fp, -76
	st.w	$a0, $fp, -80
	addi.w	$a0, $fp, -80
	addi.w	$a1, $fp, -96
	bl	%plt(__lttf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB36_11
	b	.LBB36_10
.LBB36_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_fminl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_fminl)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -40
	ld.w	$a2, $fp, -44
	ld.w	$a3, $fp, -48
	st.w	$a3, $fp, -132                  # 4-byte Folded Spill
	st.w	$a2, $fp, -128                  # 4-byte Folded Spill
	st.w	$a1, $fp, -124                  # 4-byte Folded Spill
	st.w	$a0, $fp, -120                  # 4-byte Folded Spill
	b	.LBB36_12
.LBB36_11:
	ld.w	$a0, $fp, -52
	ld.w	$a1, $fp, -56
	ld.w	$a2, $fp, -60
	ld.w	$a3, $fp, -64
	st.w	$a3, $fp, -132                  # 4-byte Folded Spill
	st.w	$a2, $fp, -128                  # 4-byte Folded Spill
	st.w	$a1, $fp, -124                  # 4-byte Folded Spill
	st.w	$a0, $fp, -120                  # 4-byte Folded Spill
	b	.LBB36_12
.LBB36_12:
	ld.w	$a3, $fp, -132                  # 4-byte Folded Reload
	ld.w	$a2, $fp, -128                  # 4-byte Folded Reload
	ld.w	$a1, $fp, -124                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -120                  # 4-byte Folded Reload
	st.w	$a3, $fp, -32
	st.w	$a2, $fp, -28
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB36_13
.LBB36_13:
	ld.w	$a1, $fp, -100                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -32
	ld.w	$a2, $fp, -28
	ld.w	$a3, $fp, -24
	ld.w	$a4, $fp, -20
	st.w	$a4, $a1, 12
	st.w	$a3, $a1, 8
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	ld.w	$fp, $sp, 136                   # 4-byte Folded Reload
	ld.w	$ra, $sp, 140                   # 4-byte Folded Reload
	addi.w	$sp, $sp, 144
	ret
.Lfunc_end36:
	.size	fminl, .Lfunc_end36-fminl
                                        # -- End function
	.globl	l64a                            # -- Begin function l64a
	.p2align	5
	.type	l64a,@function
l64a:                                   # @l64a
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_l64a)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_l64a)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -20
	pcalau12i	$a0, %pc_hi20(l64a.s)
	addi.w	$a0, $a0, %pc_lo12(l64a.s)
	st.w	$a0, $fp, -16
	b	.LBB37_1
.LBB37_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB37_4
	b	.LBB37_2
.LBB37_2:                               #   in Loop: Header=BB37_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_l64a)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_l64a)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	andi	$a1, $a0, 63
	pcalau12i	$a0, %pc_hi20(digits)
	addi.w	$a0, $a0, %pc_lo12(digits)
	add.w	$a0, $a0, $a1
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	st.b	$a0, $a1, 0
	b	.LBB37_3
.LBB37_3:                               #   in Loop: Header=BB37_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 6
	st.w	$a0, $fp, -20
	b	.LBB37_1
.LBB37_4:
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	st.b	$a0, $a1, 0
	pcalau12i	$a0, %pc_hi20(l64a.s)
	addi.w	$a0, $a0, %pc_lo12(l64a.s)
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end37:
	.size	l64a, .Lfunc_end37-l64a
                                        # -- End function
	.globl	srand                           # -- Begin function srand
	.p2align	5
	.type	srand,@function
srand:                                  # @srand
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_srand)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_srand)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -1
	pcalau12i	$a1, %pc_hi20(seed)
	addi.w	$a1, $a1, %pc_lo12(seed)
	move	$a2, $zero
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end38:
	.size	srand, .Lfunc_end38-srand
                                        # -- End function
	.globl	rand                            # -- Begin function rand
	.p2align	5
	.type	rand,@function
rand:                                   # @rand
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L__profc_rand)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rand)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	pcalau12i	$a0, %pc_hi20(seed)
	addi.w	$a0, $a0, %pc_lo12(seed)
	ld.w	$a4, $a0, 4
	ld.w	$a2, $a0, 0
	lu12i.w	$a1, 361759
	ori	$a1, $a1, 1069
	mul.w	$a5, $a2, $a1
	lu12i.w	$a1, 313687
	ori	$a3, $a1, 3885
	mulh.wu	$a1, $a2, $a3
	add.w	$a1, $a1, $a5
	mul.w	$a4, $a4, $a3
	add.w	$a1, $a1, $a4
	mul.w	$a2, $a2, $a3
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a1, $a1, $a3
	st.w	$a2, $a0, 0
	st.w	$a1, $a0, 4
	ld.w	$a0, $a0, 4
	srli.w	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end39:
	.size	rand, .Lfunc_end39-rand
                                        # -- End function
	.globl	insque                          # -- Begin function insque
	.p2align	5
	.type	insque,@function
insque:                                 # @insque
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_insque)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_insque)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB40_2
	b	.LBB40_1
.LBB40_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_insque)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_insque)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -20
	move	$a0, $zero
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -20
	st.w	$a0, $a1, 0
	b	.LBB40_4
.LBB40_2:
	ld.w	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -20
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -20
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB40_4
	b	.LBB40_3
.LBB40_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_insque)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_insque)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	ld.w	$a1, $a0, 0
	st.w	$a0, $a1, 4
	b	.LBB40_4
.LBB40_4:
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end40:
	.size	insque, .Lfunc_end40-insque
                                        # -- End function
	.globl	remque                          # -- Begin function remque
	.p2align	5
	.type	remque,@function
remque:                                 # @remque
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_remque)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_remque)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB41_2
	b	.LBB41_1
.LBB41_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_remque)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_remque)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -16
	ld.w	$a0, $a1, 4
	ld.w	$a1, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB41_2
.LBB41_2:
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB41_4
	b	.LBB41_3
.LBB41_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_remque)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_remque)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -16
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a1, 4
	st.w	$a0, $a1, 0
	b	.LBB41_4
.LBB41_4:
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end41:
	.size	remque, .Lfunc_end41-remque
                                        # -- End function
	.globl	lsearch                         # -- Begin function lsearch
	.p2align	5
	.type	lsearch,@function
lsearch:                                # @lsearch
# %bb.0:
	addi.w	$sp, $sp, -64
	st.w	$ra, $sp, 60                    # 4-byte Folded Spill
	st.w	$fp, $sp, 56                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 64
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a4, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_lsearch)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_lsearch)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -48                   # 4-byte Folded Spill
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, -40
	move	$a0, $zero
	st.w	$a0, $fp, -44
	b	.LBB42_1
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -44
	ld.w	$a1, $fp, -40
	bgeu	$a0, $a1, .LBB42_6
	b	.LBB42_2
.LBB42_2:                               #   in Loop: Header=BB42_1 Depth=1
	ld.w	$a4, $fp, -48                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L__profc_lsearch)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_lsearch)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a2, $fp, -32
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -36
	ld.w	$a3, $fp, -44
	mul.w	$a3, $a3, $a4
	add.w	$a1, $a1, $a3
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB42_4
	b	.LBB42_3
.LBB42_3:
	ld.w	$a2, $fp, -48                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L__profc_lsearch)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_lsearch)
	ld.w	$a0, $a1, 20
	ld.w	$a3, $a1, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -44
	mul.w	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB42_7
.LBB42_4:                               #   in Loop: Header=BB42_1 Depth=1
	b	.LBB42_5
.LBB42_5:                               #   in Loop: Header=BB42_1 Depth=1
	ld.w	$a0, $fp, -44
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB42_1
.LBB42_6:
	ld.w	$a2, $fp, -48                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -40
	addi.w	$a0, $a0, 1
	ld.w	$a1, $fp, -24
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -40
	mul.w	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -52                   # 4-byte Folded Spill
	ld.w	$a1, $fp, -16
	ld.w	$a2, $fp, -28
	bl	%plt(memcpy)
                                        # kill: def $r5 killed $r4
	ld.w	$a0, $fp, -52                   # 4-byte Folded Reload
	st.w	$a0, $fp, -12
	b	.LBB42_7
.LBB42_7:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 56                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 60                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 64
	ret
.Lfunc_end42:
	.size	lsearch, .Lfunc_end42-lsearch
                                        # -- End function
	.globl	lfind                           # -- Begin function lfind
	.p2align	5
	.type	lfind,@function
lfind:                                  # @lfind
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a4, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_lfind)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_lfind)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -48                   # 4-byte Folded Spill
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -24
	ld.w	$a0, $a0, 0
	st.w	$a0, $fp, -40
	move	$a0, $zero
	st.w	$a0, $fp, -44
	b	.LBB43_1
.LBB43_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -44
	ld.w	$a1, $fp, -40
	bgeu	$a0, $a1, .LBB43_6
	b	.LBB43_2
.LBB43_2:                               #   in Loop: Header=BB43_1 Depth=1
	ld.w	$a4, $fp, -48                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L__profc_lfind)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_lfind)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a2, $fp, -32
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -36
	ld.w	$a3, $fp, -44
	mul.w	$a3, $a3, $a4
	add.w	$a1, $a1, $a3
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB43_4
	b	.LBB43_3
.LBB43_3:
	ld.w	$a2, $fp, -48                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L__profc_lfind)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_lfind)
	ld.w	$a0, $a1, 20
	ld.w	$a3, $a1, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -44
	mul.w	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB43_7
.LBB43_4:                               #   in Loop: Header=BB43_1 Depth=1
	b	.LBB43_5
.LBB43_5:                               #   in Loop: Header=BB43_1 Depth=1
	ld.w	$a0, $fp, -44
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB43_1
.LBB43_6:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB43_7
.LBB43_7:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end43:
	.size	lfind, .Lfunc_end43-lfind
                                        # -- End function
	.globl	abs                             # -- Begin function abs
	.p2align	5
	.type	abs,@function
abs:                                    # @abs
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_abs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_abs)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB44_2
	b	.LBB44_1
.LBB44_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_abs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_abs)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB44_3
.LBB44_2:
	ld.w	$a1, $fp, -12
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB44_3
.LBB44_3:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end44:
	.size	abs, .Lfunc_end44-abs
                                        # -- End function
	.globl	atoi                            # -- Begin function atoi
	.p2align	5
	.type	atoi,@function
atoi:                                   # @atoi
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_atoi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoi)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -16
	st.w	$a0, $fp, -20
	b	.LBB45_1
.LBB45_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isspace
	beqz	$a0, .LBB45_3
	b	.LBB45_2
.LBB45_2:                               #   in Loop: Header=BB45_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_atoi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoi)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB45_1
.LBB45_3:
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB45_6
	b	.LBB45_4
.LBB45_4:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB45_8
	b	.LBB45_5
.LBB45_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoi)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB45_7
.LBB45_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoi)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	b	.LBB45_7
.LBB45_7:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB45_8
.LBB45_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoi)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB45_9
.LBB45_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isdigit
	beqz	$a0, .LBB45_11
	b	.LBB45_10
.LBB45_10:                              #   in Loop: Header=BB45_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_atoi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoi)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -16
	slli.w	$a1, $a0, 3
	alsl.w	$a0, $a0, $a1, 1
	ld.w	$a1, $fp, -12
	addi.w	$a2, $a1, 1
	st.w	$a2, $fp, -12
	ld.b	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 48
	st.w	$a0, $fp, -16
	b	.LBB45_9
.LBB45_11:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB45_13
	b	.LBB45_12
.LBB45_12:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoi)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB45_14
.LBB45_13:
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB45_14
.LBB45_14:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end45:
	.size	atoi, .Lfunc_end45-atoi
                                        # -- End function
	.globl	atol                            # -- Begin function atol
	.p2align	5
	.type	atol,@function
atol:                                   # @atol
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_atol)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atol)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -16
	st.w	$a0, $fp, -20
	b	.LBB46_1
.LBB46_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isspace
	beqz	$a0, .LBB46_3
	b	.LBB46_2
.LBB46_2:                               #   in Loop: Header=BB46_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_atol)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atol)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB46_1
.LBB46_3:
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB46_6
	b	.LBB46_4
.LBB46_4:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB46_8
	b	.LBB46_5
.LBB46_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_atol)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atol)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB46_7
.LBB46_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_atol)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atol)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	b	.LBB46_7
.LBB46_7:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB46_8
.LBB46_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_atol)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atol)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB46_9
.LBB46_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isdigit
	beqz	$a0, .LBB46_11
	b	.LBB46_10
.LBB46_10:                              #   in Loop: Header=BB46_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_atol)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atol)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -16
	slli.w	$a1, $a0, 3
	alsl.w	$a0, $a0, $a1, 1
	ld.w	$a1, $fp, -12
	addi.w	$a2, $a1, 1
	st.w	$a2, $fp, -12
	ld.b	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	addi.w	$a0, $a0, 48
	st.w	$a0, $fp, -16
	b	.LBB46_9
.LBB46_11:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB46_13
	b	.LBB46_12
.LBB46_12:
	pcalau12i	$a0, %pc_hi20(.L__profc_atol)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atol)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB46_14
.LBB46_13:
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB46_14
.LBB46_14:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end46:
	.size	atol, .Lfunc_end46-atol
                                        # -- End function
	.globl	atoll                           # -- Begin function atoll
	.p2align	5
	.type	atoll,@function
atoll:                                  # @atoll
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_atoll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoll)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a0, $fp, -28
	b	.LBB47_1
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isspace
	beqz	$a0, .LBB47_3
	b	.LBB47_2
.LBB47_2:                               #   in Loop: Header=BB47_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_atoll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoll)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB47_1
.LBB47_3:
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	ori	$a1, $zero, 43
	beq	$a0, $a1, .LBB47_6
	b	.LBB47_4
.LBB47_4:
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	ori	$a1, $zero, 45
	bne	$a0, $a1, .LBB47_8
	b	.LBB47_5
.LBB47_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoll)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -28
	b	.LBB47_7
.LBB47_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoll)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	b	.LBB47_7
.LBB47_7:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB47_8
.LBB47_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoll)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB47_9
.LBB47_9:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isdigit
	beqz	$a0, .LBB47_11
	b	.LBB47_10
.LBB47_10:                              #   in Loop: Header=BB47_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_atoll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoll)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a1, $fp, -24
	ld.w	$a0, $fp, -20
	ori	$a2, $zero, 10
	mul.w	$a3, $a0, $a2
	mulh.wu	$a0, $a1, $a2
	add.w	$a0, $a0, $a3
	mul.w	$a1, $a1, $a2
	ld.w	$a2, $fp, -12
	addi.w	$a3, $a2, 1
	st.w	$a3, $fp, -12
	ld.b	$a2, $a2, 0
	addi.w	$a2, $a2, -48
	srai.w	$a3, $a2, 31
	sub.w	$a0, $a0, $a3
	sltu	$a3, $a1, $a2
	sub.w	$a0, $a0, $a3
	sub.w	$a1, $a1, $a2
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	b	.LBB47_9
.LBB47_11:
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB47_13
	b	.LBB47_12
.LBB47_12:
	pcalau12i	$a0, %pc_hi20(.L__profc_atoll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_atoll)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB47_14
.LBB47_13:
	ld.w	$a2, $fp, -20
	ld.w	$a3, $fp, -24
	move	$a0, $zero
	sub.w	$a1, $a0, $a3
	sltu	$a3, $zero, $a3
	add.w	$a2, $a2, $a3
	sub.w	$a0, $a0, $a2
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB47_14
.LBB47_14:
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end47:
	.size	atoll, .Lfunc_end47-atoll
                                        # -- End function
	.globl	bsearch                         # -- Begin function bsearch
	.p2align	5
	.type	bsearch,@function
bsearch:                                # @bsearch
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a4, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB48_9
	b	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -28
	ld.w	$a2, $fp, -24
	srli.w	$a2, $a2, 1
	mul.w	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.w	$a2, $fp, -32
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -36
	jirl	$ra, $a2, 0
	st.w	$a0, $fp, -40
	ld.w	$a1, $fp, -40
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB48_4
	b	.LBB48_3
.LBB48_3:                               #   in Loop: Header=BB48_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB48_8
.LBB48_4:                               #   in Loop: Header=BB48_1 Depth=1
	ld.w	$a0, $fp, -40
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB48_6
	b	.LBB48_5
.LBB48_5:                               #   in Loop: Header=BB48_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -28
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	srli.w	$a0, $a1, 1
	nor	$a0, $a0, $zero
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	b	.LBB48_7
.LBB48_6:
	ld.w	$a0, $fp, -36
	st.w	$a0, $fp, -12
	b	.LBB48_10
.LBB48_7:                               #   in Loop: Header=BB48_1 Depth=1
	b	.LBB48_8
.LBB48_8:                               #   in Loop: Header=BB48_1 Depth=1
	b	.LBB48_1
.LBB48_9:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB48_10
.LBB48_10:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end48:
	.size	bsearch, .Lfunc_end48-bsearch
                                        # -- End function
	.globl	bsearch_r                       # -- Begin function bsearch_r
	.p2align	5
	.type	bsearch_r,@function
bsearch_r:                              # @bsearch_r
# %bb.0:
	addi.w	$sp, $sp, -64
	st.w	$ra, $sp, 60                    # 4-byte Folded Spill
	st.w	$fp, $sp, 56                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 64
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a4, $fp, -32
	st.w	$a5, $fp, -36
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch_r)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch_r)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -40
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -44
	b	.LBB49_1
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -44
	beqz	$a0, .LBB49_8
	b	.LBB49_2
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch_r)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch_r)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -44
	srai.w	$a1, $a1, 1
	ld.w	$a2, $fp, -28
	mul.w	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -52
	ld.w	$a3, $fp, -32
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -52
	ld.w	$a2, $fp, -36
	jirl	$ra, $a3, 0
	st.w	$a0, $fp, -48
	ld.w	$a0, $fp, -48
	bnez	$a0, .LBB49_4
	b	.LBB49_3
.LBB49_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch_r)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch_r)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -52
	st.w	$a0, $fp, -12
	b	.LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	ld.w	$a0, $fp, -48
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB49_6
	b	.LBB49_5
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_bsearch_r)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bsearch_r)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -52
	ld.w	$a1, $fp, -28
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -40
	ld.w	$a0, $fp, -44
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -44
	b	.LBB49_6
.LBB49_6:                               #   in Loop: Header=BB49_1 Depth=1
	b	.LBB49_7
.LBB49_7:                               #   in Loop: Header=BB49_1 Depth=1
	ld.w	$a0, $fp, -44
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB49_1
.LBB49_8:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB49_9
.LBB49_9:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 56                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 60                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 64
	ret
.Lfunc_end49:
	.size	bsearch_r, .Lfunc_end49-bsearch_r
                                        # -- End function
	.globl	div                             # -- Begin function div
	.p2align	5
	.type	div,@function
div:                                    # @div
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc_div)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_div)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	div.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	mod.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end50:
	.size	div, .Lfunc_end50-div
                                        # -- End function
	.globl	imaxabs                         # -- Begin function imaxabs
	.p2align	5
	.type	imaxabs,@function
imaxabs:                                # @imaxabs
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_imaxabs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_imaxabs)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	sltui	$a2, $a1, 1
	slti	$a1, $a1, 0
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB51_2
	b	.LBB51_1
.LBB51_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_imaxabs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_imaxabs)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB51_3
.LBB51_2:
	ld.w	$a2, $fp, -12
	ld.w	$a3, $fp, -16
	move	$a0, $zero
	sub.w	$a1, $a0, $a3
	sltu	$a3, $zero, $a3
	add.w	$a2, $a2, $a3
	sub.w	$a0, $a0, $a2
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB51_3
.LBB51_3:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -20                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end51:
	.size	imaxabs, .Lfunc_end51-imaxabs
                                        # -- End function
	.globl	imaxdiv                         # -- Begin function imaxdiv
	.p2align	5
	.type	imaxdiv,@function
imaxdiv:                                # @imaxdiv
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
                                        # kill: def $r9 killed $r8
                                        # kill: def $r9 killed $r7
                                        # kill: def $r9 killed $r6
                                        # kill: def $r9 killed $r5
	st.w	$a0, $fp, -12
	st.w	$a2, $fp, -20
	st.w	$a1, $fp, -24
	st.w	$a4, $fp, -28
	st.w	$a3, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_imaxdiv)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_imaxdiv)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__divdi3)
	move	$a2, $a1
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__moddi3)
	move	$a2, $a1
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	st.w	$a2, $a1, 12
	st.w	$a0, $a1, 8
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end52:
	.size	imaxdiv, .Lfunc_end52-imaxdiv
                                        # -- End function
	.globl	labs                            # -- Begin function labs
	.p2align	5
	.type	labs,@function
labs:                                   # @labs
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_labs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_labs)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB53_2
	b	.LBB53_1
.LBB53_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_labs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_labs)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB53_3
.LBB53_2:
	ld.w	$a1, $fp, -12
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB53_3
.LBB53_3:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end53:
	.size	labs, .Lfunc_end53-labs
                                        # -- End function
	.globl	ldiv                            # -- Begin function ldiv
	.p2align	5
	.type	ldiv,@function
ldiv:                                   # @ldiv
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -20
	st.w	$a1, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc_ldiv)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldiv)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	div.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	mod.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end54:
	.size	ldiv, .Lfunc_end54-ldiv
                                        # -- End function
	.globl	llabs                           # -- Begin function llabs
	.p2align	5
	.type	llabs,@function
llabs:                                  # @llabs
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_llabs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_llabs)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	sltui	$a2, $a1, 1
	slti	$a1, $a1, 0
	masknez	$a1, $a1, $a2
	sltui	$a0, $a0, 1
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB55_2
	b	.LBB55_1
.LBB55_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_llabs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_llabs)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB55_3
.LBB55_2:
	ld.w	$a2, $fp, -12
	ld.w	$a3, $fp, -16
	move	$a0, $zero
	sub.w	$a1, $a0, $a3
	sltu	$a3, $zero, $a3
	add.w	$a2, $a2, $a3
	sub.w	$a0, $a0, $a2
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB55_3
.LBB55_3:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -20                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end55:
	.size	llabs, .Lfunc_end55-llabs
                                        # -- End function
	.globl	lldiv                           # -- Begin function lldiv
	.p2align	5
	.type	lldiv,@function
lldiv:                                  # @lldiv
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
                                        # kill: def $r9 killed $r8
                                        # kill: def $r9 killed $r7
                                        # kill: def $r9 killed $r6
                                        # kill: def $r9 killed $r5
	st.w	$a0, $fp, -12
	st.w	$a2, $fp, -20
	st.w	$a1, $fp, -24
	st.w	$a4, $fp, -28
	st.w	$a3, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_lldiv)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_lldiv)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__divdi3)
	move	$a2, $a1
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__moddi3)
	move	$a2, $a1
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	st.w	$a2, $a1, 12
	st.w	$a0, $a1, 8
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end56:
	.size	lldiv, .Lfunc_end56-lldiv
                                        # -- End function
	.globl	wcschr                          # -- Begin function wcschr
	.p2align	5
	.type	wcschr,@function
wcschr:                                 # @wcschr
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_wcschr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcschr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB57_1
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB57_4
	b	.LBB57_2
.LBB57_2:                               #   in Loop: Header=BB57_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcschr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcschr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB57_4
	b	.LBB57_3
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_wcschr)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_wcschr)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB57_4
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB57_7
	b	.LBB57_5
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcschr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcschr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB57_6
.LBB57_6:                               #   in Loop: Header=BB57_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	b	.LBB57_1
.LBB57_7:
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB57_9
	b	.LBB57_8
.LBB57_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_wcschr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcschr)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB57_10
.LBB57_9:
	move	$a0, $zero
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB57_10
.LBB57_10:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end57:
	.size	wcschr, .Lfunc_end57-wcschr
                                        # -- End function
	.globl	wcscmp                          # -- Begin function wcscmp
	.p2align	5
	.type	wcscmp,@function
wcscmp:                                 # @wcscmp
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB58_1
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB58_6
	b	.LBB58_2
.LBB58_2:                               #   in Loop: Header=BB58_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscmp)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB58_6
	b	.LBB58_3
.LBB58_3:                               #   in Loop: Header=BB58_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscmp)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	b	.LBB58_4
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscmp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB58_6
	b	.LBB58_5
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_wcscmp)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_wcscmp)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB58_6
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB58_9
	b	.LBB58_7
.LBB58_7:                               #   in Loop: Header=BB58_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscmp)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB58_8
.LBB58_8:                               #   in Loop: Header=BB58_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -16
	b	.LBB58_1
.LBB58_9:
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB58_11
	b	.LBB58_10
.LBB58_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscmp)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB58_12
.LBB58_11:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $a0, 0
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB58_12
.LBB58_12:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end58:
	.size	wcscmp, .Lfunc_end58-wcscmp
                                        # -- End function
	.globl	wcscpy                          # -- Begin function wcscpy
	.p2align	5
	.type	wcscpy,@function
wcscpy:                                 # @wcscpy
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscpy)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -20
	b	.LBB59_1
.LBB59_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a1, $a0, 4
	st.w	$a1, $fp, -16
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -12
	addi.w	$a2, $a1, 4
	st.w	$a2, $fp, -12
	st.w	$a0, $a1, 0
	beqz	$a0, .LBB59_3
	b	.LBB59_2
.LBB59_2:                               #   in Loop: Header=BB59_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcscpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcscpy)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB59_1
.LBB59_3:
	ld.w	$a0, $fp, -20
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end59:
	.size	wcscpy, .Lfunc_end59-wcscpy
                                        # -- End function
	.globl	wcslen                          # -- Begin function wcslen
	.p2align	5
	.type	wcslen,@function
wcslen:                                 # @wcslen
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_wcslen)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcslen)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB60_4
	b	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcslen)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcslen)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB60_3
.LBB60_3:                               #   in Loop: Header=BB60_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	b	.LBB60_1
.LBB60_4:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	sub.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 2
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end60:
	.size	wcslen, .Lfunc_end60-wcslen
                                        # -- End function
	.globl	wcsncmp                         # -- Begin function wcsncmp
	.p2align	5
	.type	wcsncmp,@function
wcsncmp:                                # @wcsncmp
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB61_8
	b	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB61_8
	b	.LBB61_3
.LBB61_3:                               #   in Loop: Header=BB61_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	b	.LBB61_4
.LBB61_4:                               #   in Loop: Header=BB61_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB61_8
	b	.LBB61_5
.LBB61_5:                               #   in Loop: Header=BB61_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	b	.LBB61_6
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB61_8
	b	.LBB61_7
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB61_8
.LBB61_8:                               #   in Loop: Header=BB61_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB61_11
	b	.LBB61_9
.LBB61_9:                               #   in Loop: Header=BB61_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB61_10
.LBB61_10:                              #   in Loop: Header=BB61_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -16
	b	.LBB61_1
.LBB61_11:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB61_16
	b	.LBB61_12
.LBB61_12:
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB61_14
	b	.LBB61_13
.LBB61_13:
	pcalau12i	$a0, %pc_hi20(.L__profc_wcsncmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wcsncmp)
	ld.w	$a0, $a1, 76
	ld.w	$a2, $a1, 72
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 72
	st.w	$a0, $a1, 76
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB61_15
.LBB61_14:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $a0, 0
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB61_15
.LBB61_15:
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB61_17
.LBB61_16:
	move	$a0, $zero
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB61_17
.LBB61_17:
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end61:
	.size	wcsncmp, .Lfunc_end61-wcsncmp
                                        # -- End function
	.globl	wmemchr                         # -- Begin function wmemchr
	.p2align	5
	.type	wmemchr,@function
wmemchr:                                # @wmemchr
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemchr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB62_4
	b	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemchr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a2, $a0, $a1
	sltu	$a2, $zero, $a2
	st.w	$a2, $fp, -28                   # 4-byte Folded Spill
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB62_4
	b	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemchr)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_wmemchr)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB62_7
	b	.LBB62_5
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemchr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB62_6
.LBB62_6:                               #   in Loop: Header=BB62_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	b	.LBB62_1
.LBB62_7:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB62_9
	b	.LBB62_8
.LBB62_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemchr)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB62_10
.LBB62_9:
	move	$a0, $zero
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB62_10
.LBB62_10:
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end62:
	.size	wmemchr, .Lfunc_end62-wmemchr
                                        # -- End function
	.globl	wmemcmp                         # -- Begin function wmemcmp
	.p2align	5
	.type	wmemcmp,@function
wmemcmp:                                # @wmemcmp
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemcmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB63_4
	b	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemcmp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	st.w	$a2, $fp, -28                   # 4-byte Folded Spill
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB63_4
	b	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_wmemcmp)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_wmemcmp)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB63_7
	b	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemcmp)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB63_6
.LBB63_6:                               #   in Loop: Header=BB63_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -16
	b	.LBB63_1
.LBB63_7:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB63_12
	b	.LBB63_8
.LBB63_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemcmp)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB63_10
	b	.LBB63_9
.LBB63_9:
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemcmp)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB63_11
.LBB63_10:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $a0, 0
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB63_11
.LBB63_11:
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB63_13
.LBB63_12:
	move	$a0, $zero
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB63_13
.LBB63_13:
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end63:
	.size	wmemcmp, .Lfunc_end63-wmemcmp
                                        # -- End function
	.globl	wmemcpy                         # -- Begin function wmemcpy
	.p2align	5
	.type	wmemcpy,@function
wmemcpy:                                # @wmemcpy
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemcpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemcpy)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	b	.LBB64_1
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB64_3
	b	.LBB64_2
.LBB64_2:                               #   in Loop: Header=BB64_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemcpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemcpy)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	addi.w	$a1, $a0, 4
	st.w	$a1, $fp, -16
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -12
	addi.w	$a2, $a1, 4
	st.w	$a2, $fp, -12
	st.w	$a0, $a1, 0
	b	.LBB64_1
.LBB64_3:
	ld.w	$a0, $fp, -24
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end64:
	.size	wmemcpy, .Lfunc_end64-wmemcpy
                                        # -- End function
	.globl	wmemmove                        # -- Begin function wmemmove
	.p2align	5
	.type	wmemmove,@function
wmemmove:                               # @wmemmove
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemmove)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bne	$a0, $a1, .LBB65_2
	b	.LBB65_1
.LBB65_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemmove)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB65_12
.LBB65_2:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	sub.w	$a0, $a0, $a1
	ld.w	$a1, $fp, -24
	slli.w	$a1, $a1, 2
	bgeu	$a0, $a1, .LBB65_7
	b	.LBB65_3
.LBB65_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemmove)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB65_4
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -24
	beqz	$a0, .LBB65_6
	b	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemmove)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	alsl.w	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, 0
	ld.w	$a2, $fp, -16
	alsl.w	$a1, $a1, $a2, 2
	st.w	$a0, $a1, 0
	b	.LBB65_4
.LBB65_6:
	b	.LBB65_11
.LBB65_7:
	b	.LBB65_8
.LBB65_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -24
	beqz	$a0, .LBB65_10
	b	.LBB65_9
.LBB65_9:                               #   in Loop: Header=BB65_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemmove)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemmove)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, 4
	st.w	$a1, $fp, -20
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	addi.w	$a2, $a1, 4
	st.w	$a2, $fp, -16
	st.w	$a0, $a1, 0
	b	.LBB65_8
.LBB65_10:
	b	.LBB65_11
.LBB65_11:
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -12
	b	.LBB65_12
.LBB65_12:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end65:
	.size	wmemmove, .Lfunc_end65-wmemmove
                                        # -- End function
	.globl	wmemset                         # -- Begin function wmemset
	.p2align	5
	.type	wmemset,@function
wmemset:                                # @wmemset
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemset)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemset)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	b	.LBB66_1
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB66_3
	b	.LBB66_2
.LBB66_2:                               #   in Loop: Header=BB66_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_wmemset)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_wmemset)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	addi.w	$a2, $a1, 4
	st.w	$a2, $fp, -12
	st.w	$a0, $a1, 0
	b	.LBB66_1
.LBB66_3:
	ld.w	$a0, $fp, -24
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end66:
	.size	wmemset, .Lfunc_end66-wmemset
                                        # -- End function
	.globl	bcopy                           # -- Begin function bcopy
	.p2align	5
	.type	bcopy,@function
bcopy:                                  # @bcopy
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_bcopy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bcopy)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB67_6
	b	.LBB67_1
.LBB67_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_bcopy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bcopy)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -28
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	b	.LBB67_2
.LBB67_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB67_5
	b	.LBB67_3
.LBB67_3:                               #   in Loop: Header=BB67_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_bcopy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bcopy)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -24
	ld.b	$a0, $a0, -1
	ld.w	$a1, $fp, -28
	addi.w	$a2, $a1, -1
	st.w	$a2, $fp, -28
	st.b	$a0, $a1, -1
	b	.LBB67_4
.LBB67_4:                               #   in Loop: Header=BB67_2 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB67_2
.LBB67_5:
	b	.LBB67_13
.LBB67_6:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	beq	$a0, $a1, .LBB67_12
	b	.LBB67_7
.LBB67_7:
	pcalau12i	$a0, %pc_hi20(.L__profc_bcopy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bcopy)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB67_11
	b	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_bcopy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bcopy)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -24
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	addi.w	$a2, $a1, 1
	st.w	$a2, $fp, -28
	st.b	$a0, $a1, 0
	b	.LBB67_10
.LBB67_10:                              #   in Loop: Header=BB67_8 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB67_8
.LBB67_11:
	b	.LBB67_12
.LBB67_12:
	b	.LBB67_13
.LBB67_13:
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end67:
	.size	bcopy, .Lfunc_end67-bcopy
                                        # -- End function
	.globl	rotl64                          # -- Begin function rotl64
	.p2align	5
	.type	rotl64,@function
rotl64:                                 # @rotl64
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_rotl64)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotl64)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a2, $fp, -16
	ld.w	$a7, $fp, -12
	ld.w	$a5, $fp, -20
	sll.w	$a0, $a7, $a5
	xori	$a3, $a5, 31
	srli.w	$a1, $a2, 1
	srl.w	$a1, $a1, $a3
	or	$a1, $a0, $a1
	addi.w	$a0, $a5, -32
	slti	$a4, $a0, 0
	maskeqz	$a1, $a1, $a4
	sll.w	$a3, $a2, $a0
	masknez	$a3, $a3, $a4
	or	$a1, $a1, $a3
	sll.w	$a3, $a2, $a5
	srai.w	$a0, $a0, 31
	and	$a0, $a0, $a3
	ori	$a3, $zero, 64
	sub.w	$t0, $a3, $a5
	move	$a3, $zero
	sub.w	$t1, $a3, $a5
	srl.w	$a4, $a7, $t1
	ori	$a3, $zero, 32
	sub.w	$a3, $a3, $a5
	slti	$a6, $a3, 0
	masknez	$a5, $a4, $a6
	srl.w	$a2, $a2, $t1
	xori	$t0, $t0, 31
	slli.w	$a7, $a7, 1
	sll.w	$a7, $a7, $t0
	or	$a2, $a2, $a7
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	srai.w	$a3, $a3, 31
	and	$a3, $a3, $a4
	or	$a1, $a1, $a3
	or	$a0, $a0, $a2
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end68:
	.size	rotl64, .Lfunc_end68-rotl64
                                        # -- End function
	.globl	rotr64                          # -- Begin function rotr64
	.p2align	5
	.type	rotr64,@function
rotr64:                                 # @rotr64
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_rotr64)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotr64)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a2, $fp, -12
	ld.w	$a7, $fp, -16
	ld.w	$a5, $fp, -20
	srl.w	$a0, $a7, $a5
	xori	$a3, $a5, 31
	slli.w	$a1, $a2, 1
	sll.w	$a1, $a1, $a3
	or	$a0, $a0, $a1
	addi.w	$a1, $a5, -32
	slti	$a4, $a1, 0
	maskeqz	$a0, $a0, $a4
	srl.w	$a3, $a2, $a1
	masknez	$a3, $a3, $a4
	or	$a0, $a0, $a3
	srl.w	$a3, $a2, $a5
	srai.w	$a1, $a1, 31
	and	$a1, $a1, $a3
	ori	$a3, $zero, 64
	sub.w	$t0, $a3, $a5
	move	$a3, $zero
	sub.w	$t1, $a3, $a5
	sll.w	$a4, $a7, $t1
	ori	$a3, $zero, 32
	sub.w	$a3, $a3, $a5
	slti	$a6, $a3, 0
	masknez	$a5, $a4, $a6
	sll.w	$a2, $a2, $t1
	xori	$t0, $t0, 31
	srli.w	$a7, $a7, 1
	srl.w	$a7, $a7, $t0
	or	$a2, $a2, $a7
	maskeqz	$a2, $a2, $a6
	or	$a2, $a2, $a5
	srai.w	$a3, $a3, 31
	and	$a3, $a3, $a4
	or	$a0, $a0, $a3
	or	$a1, $a1, $a2
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end69:
	.size	rotr64, .Lfunc_end69-rotr64
                                        # -- End function
	.globl	rotl32                          # -- Begin function rotl32
	.p2align	5
	.type	rotl32,@function
rotl32:                                 # @rotl32
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotl32)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotl32)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ld.w	$a2, $fp, -16
	ori	$a1, $zero, 32
	sub.w	$a1, $a1, $a2
	rotr.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end70:
	.size	rotl32, .Lfunc_end70-rotl32
                                        # -- End function
	.globl	rotr32                          # -- Begin function rotr32
	.p2align	5
	.type	rotr32,@function
rotr32:                                 # @rotr32
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotr32)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotr32)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	rotr.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end71:
	.size	rotr32, .Lfunc_end71-rotr32
                                        # -- End function
	.globl	rotl_sz                         # -- Begin function rotl_sz
	.p2align	5
	.type	rotl_sz,@function
rotl_sz:                                # @rotl_sz
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotl_sz)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotl_sz)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ld.w	$a2, $fp, -16
	ori	$a1, $zero, 32
	sub.w	$a1, $a1, $a2
	rotr.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end72:
	.size	rotl_sz, .Lfunc_end72-rotl_sz
                                        # -- End function
	.globl	rotr_sz                         # -- Begin function rotr_sz
	.p2align	5
	.type	rotr_sz,@function
rotr_sz:                                # @rotr_sz
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotr_sz)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotr_sz)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	rotr.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end73:
	.size	rotr_sz, .Lfunc_end73-rotr_sz
                                        # -- End function
	.globl	rotl16                          # -- Begin function rotl16
	.p2align	5
	.type	rotl16,@function
rotl16:                                 # @rotl16
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r4
	st.h	$a0, $fp, -10
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotl16)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotl16)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.hu	$a1, $fp, -10
	ld.w	$a3, $fp, -16
	sll.w	$a0, $a1, $a3
	ori	$a2, $zero, 16
	sub.w	$a2, $a2, $a3
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	bstrpick.w	$a0, $a0, 15, 0
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end74:
	.size	rotl16, .Lfunc_end74-rotl16
                                        # -- End function
	.globl	rotr16                          # -- Begin function rotr16
	.p2align	5
	.type	rotr16,@function
rotr16:                                 # @rotr16
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r4
	st.h	$a0, $fp, -10
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotr16)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotr16)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.hu	$a1, $fp, -10
	ld.w	$a3, $fp, -16
	srl.w	$a0, $a1, $a3
	ori	$a2, $zero, 16
	sub.w	$a2, $a2, $a3
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	bstrpick.w	$a0, $a0, 15, 0
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end75:
	.size	rotr16, .Lfunc_end75-rotr16
                                        # -- End function
	.globl	rotl8                           # -- Begin function rotl8
	.p2align	5
	.type	rotl8,@function
rotl8:                                  # @rotl8
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r4
	st.b	$a0, $fp, -9
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotl8)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotl8)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.bu	$a1, $fp, -9
	ld.w	$a3, $fp, -16
	sll.w	$a0, $a1, $a3
	ori	$a2, $zero, 8
	sub.w	$a2, $a2, $a3
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end76:
	.size	rotl8, .Lfunc_end76-rotl8
                                        # -- End function
	.globl	rotr8                           # -- Begin function rotr8
	.p2align	5
	.type	rotr8,@function
rotr8:                                  # @rotr8
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r4
	st.b	$a0, $fp, -9
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_rotr8)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_rotr8)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.bu	$a1, $fp, -9
	ld.w	$a3, $fp, -16
	srl.w	$a0, $a1, $a3
	ori	$a2, $zero, 8
	sub.w	$a2, $a2, $a3
	sll.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	andi	$a0, $a0, 255
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end77:
	.size	rotr8, .Lfunc_end77-rotr8
                                        # -- End function
	.globl	bswap_16                        # -- Begin function bswap_16
	.p2align	5
	.type	bswap_16,@function
bswap_16:                               # @bswap_16
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -10
	pcalau12i	$a0, %pc_hi20(.L__profc_bswap_16)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bswap_16)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 255
	st.h	$a0, $fp, -12
	ld.hu	$a1, $fp, -10
	ld.hu	$a2, $fp, -12
	slli.w	$a0, $a2, 8
	and	$a0, $a1, $a0
	srli.w	$a0, $a0, 8
	and	$a1, $a1, $a2
	slli.w	$a1, $a1, 8
	or	$a0, $a0, $a1
	bstrpick.w	$a0, $a0, 15, 0
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end78:
	.size	bswap_16, .Lfunc_end78-bswap_16
                                        # -- End function
	.globl	bswap_32                        # -- Begin function bswap_32
	.p2align	5
	.type	bswap_32,@function
bswap_32:                               # @bswap_32
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_bswap_32)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bswap_32)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 255
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$a2, $fp, -16
	slli.w	$a0, $a2, 24
	and	$a0, $a1, $a0
	srli.w	$a0, $a0, 24
	slli.w	$a3, $a2, 16
	and	$a4, $a1, $a3
	srli.w	$a4, $a4, 8
	or	$a0, $a0, $a4
	slli.w	$a4, $a1, 8
	and	$a3, $a3, $a4
	or	$a0, $a0, $a3
	and	$a1, $a1, $a2
	slli.w	$a1, $a1, 24
	or	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end79:
	.size	bswap_32, .Lfunc_end79-bswap_32
                                        # -- End function
	.globl	bswap_64                        # -- Begin function bswap_64
	.p2align	5
	.type	bswap_64,@function
bswap_64:                               # @bswap_64
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_bswap_64)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_bswap_64)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	ori	$a0, $zero, 255
	st.w	$a0, $fp, -24
	ld.w	$a2, $fp, -16
	ld.w	$a6, $fp, -12
	ld.w	$a3, $fp, -24
	slli.w	$a0, $a3, 24
	and	$a0, $a6, $a0
	srli.w	$a0, $a0, 24
	slli.w	$a4, $a3, 16
	and	$a1, $a6, $a4
	srli.w	$a1, $a1, 8
	or	$a0, $a0, $a1
	slli.w	$a5, $a3, 8
	and	$a7, $a6, $a5
	srli.w	$a1, $a7, 24
	slli.w	$a7, $a7, 8
	or	$a0, $a0, $a7
	and	$t0, $a6, $a3
	srli.w	$a7, $t0, 8
	slli.w	$t0, $t0, 24
	or	$a0, $a0, $t0
	or	$a1, $a1, $a7
	bytepick.w	$a7, $a2, $a6, 1
	and	$a7, $a3, $a7
	or	$a1, $a1, $a7
	bytepick.w	$a6, $a2, $a6, 3
	and	$a5, $a5, $a6
	or	$a1, $a1, $a5
	slli.w	$a5, $a2, 8
	and	$a4, $a4, $a5
	or	$a1, $a1, $a4
	and	$a2, $a2, $a3
	slli.w	$a2, $a2, 24
	or	$a1, $a1, $a2
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end80:
	.size	bswap_64, .Lfunc_end80-bswap_64
                                        # -- End function
	.globl	ffs                             # -- Begin function ffs
	.p2align	5
	.type	ffs,@function
ffs:                                    # @ffs
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_ffs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ffs)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB81_1
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -20
	ori	$a0, $zero, 31
	bltu	$a0, $a1, .LBB81_6
	b	.LBB81_2
.LBB81_2:                               #   in Loop: Header=BB81_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_ffs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ffs)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB81_4
	b	.LBB81_3
.LBB81_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_ffs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ffs)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB81_7
.LBB81_4:                               #   in Loop: Header=BB81_1 Depth=1
	b	.LBB81_5
.LBB81_5:                               #   in Loop: Header=BB81_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB81_1
.LBB81_6:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB81_7
.LBB81_7:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end81:
	.size	ffs, .Lfunc_end81-ffs
                                        # -- End function
	.globl	libiberty_ffs                   # -- Begin function libiberty_ffs
	.p2align	5
	.type	libiberty_ffs,@function
libiberty_ffs:                          # @libiberty_ffs
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_libiberty_ffs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_libiberty_ffs)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	bnez	$a0, .LBB82_2
	b	.LBB82_1
.LBB82_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_libiberty_ffs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_libiberty_ffs)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB82_7
.LBB82_2:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB82_3
.LBB82_3:                               # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, -16
	andi	$a0, $a0, 1
	bnez	$a0, .LBB82_6
	b	.LBB82_4
.LBB82_4:                               #   in Loop: Header=BB82_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_libiberty_ffs)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_libiberty_ffs)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -16
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB82_5
.LBB82_5:                               #   in Loop: Header=BB82_3 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB82_3
.LBB82_6:
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -12
	b	.LBB82_7
.LBB82_7:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end82:
	.size	libiberty_ffs, .Lfunc_end82-libiberty_ffs
                                        # -- End function
	.globl	gl_isinff                       # -- Begin function gl_isinff
	.p2align	5
	.type	gl_isinff,@function
gl_isinff:                              # @gl_isinff
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc_gl_isinff)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_gl_isinff)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -2049
	ori	$a1, $a1, 4095
	bl	%plt(__ltsf2)
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB83_3
	b	.LBB83_1
.LBB83_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_gl_isinff)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_gl_isinff)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	bl	%plt(__gtsf2)
	move	$a1, $a0
	move	$a0, $zero
	slt	$a2, $a0, $a1
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB83_3
	b	.LBB83_2
.LBB83_2:
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinff)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_gl_isinff)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB83_3
.LBB83_3:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end83:
	.size	gl_isinff, .Lfunc_end83-gl_isinff
                                        # -- End function
	.globl	gl_isinfd                       # -- Begin function gl_isinfd
	.p2align	5
	.type	gl_isinfd,@function
gl_isinfd:                              # @gl_isinfd
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_gl_isinfd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_gl_isinfd)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	lu12i.w	$a2, -257
	ori	$a3, $a2, 4095
	addi.w	$a2, $zero, -1
	bl	%plt(__ltdf2)
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB84_3
	b	.LBB84_1
.LBB84_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_gl_isinfd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_gl_isinfd)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	lu12i.w	$a2, 524031
	ori	$a3, $a2, 4095
	addi.w	$a2, $zero, -1
	bl	%plt(__gtdf2)
	move	$a1, $a0
	move	$a0, $zero
	slt	$a2, $a0, $a1
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB84_3
	b	.LBB84_2
.LBB84_2:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinfd)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_gl_isinfd)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB84_3
.LBB84_3:
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end84:
	.size	gl_isinfd, .Lfunc_end84-gl_isinfd
                                        # -- End function
	.globl	gl_isinfl                       # -- Begin function gl_isinfl
	.p2align	5
	.type	gl_isinfl,@function
gl_isinfl:                              # @gl_isinfl
# %bb.0:
	addi.w	$sp, $sp, -112
	st.w	$ra, $sp, 108                   # 4-byte Folded Spill
	st.w	$fp, $sp, 104                   # 4-byte Folded Spill
	addi.w	$fp, $sp, 112
	move	$a3, $a0
	ld.w	$a0, $a3, 0
	ld.w	$a1, $a3, 4
	ld.w	$a2, $a3, 8
	ld.w	$a3, $a3, 12
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_gl_isinfl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_gl_isinfl)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	ld.w	$a2, $fp, -24
	ld.w	$a3, $fp, -20
	addi.w	$a4, $zero, -1
	st.w	$a4, $fp, -56
	st.w	$a4, $fp, -60
	st.w	$a4, $fp, -64
	lu12i.w	$a4, -17
	ori	$a4, $a4, 4095
	st.w	$a4, $fp, -52
	st.w	$a3, $fp, -36
	st.w	$a2, $fp, -40
	st.w	$a1, $fp, -44
	st.w	$a0, $fp, -48
	addi.w	$a0, $fp, -48
	addi.w	$a1, $fp, -64
	bl	%plt(__lttf2)
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.w	$a2, $fp, -100                  # 4-byte Folded Spill
	blt	$a0, $a1, .LBB85_3
	b	.LBB85_1
.LBB85_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_gl_isinfl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_gl_isinfl)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	ld.w	$a2, $fp, -24
	ld.w	$a3, $fp, -20
	addi.w	$a4, $zero, -1
	st.w	$a4, $fp, -88
	st.w	$a4, $fp, -92
	st.w	$a4, $fp, -96
	lu12i.w	$a4, 524271
	ori	$a4, $a4, 4095
	st.w	$a4, $fp, -84
	st.w	$a3, $fp, -68
	st.w	$a2, $fp, -72
	st.w	$a1, $fp, -76
	st.w	$a0, $fp, -80
	addi.w	$a0, $fp, -80
	addi.w	$a1, $fp, -96
	bl	%plt(__gttf2)
	move	$a1, $a0
	move	$a0, $zero
	slt	$a2, $a0, $a1
	st.w	$a2, $fp, -104                  # 4-byte Folded Spill
	st.w	$a2, $fp, -100                  # 4-byte Folded Spill
	blt	$a0, $a1, .LBB85_3
	b	.LBB85_2
.LBB85_2:
	ld.w	$a0, $fp, -104                  # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_gl_isinfl)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_gl_isinfl)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
	st.w	$a0, $fp, -100                  # 4-byte Folded Spill
	b	.LBB85_3
.LBB85_3:
	ld.w	$a0, $fp, -100                  # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 104                   # 4-byte Folded Reload
	ld.w	$ra, $sp, 108                   # 4-byte Folded Reload
	addi.w	$sp, $sp, 112
	ret
.Lfunc_end85:
	.size	gl_isinfl, .Lfunc_end85-gl_isinfl
                                        # -- End function
	.globl	_Qp_itoq                        # -- Begin function _Qp_itoq
	.p2align	5
	.type	_Qp_itoq,@function
_Qp_itoq:                               # @_Qp_itoq
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc__Qp_itoq)
	addi.w	$a1, $a0, %pc_lo12(.L__profc__Qp_itoq)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	bl	%plt(__floatsidf)
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	move	$a2, $a1
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	addi.w	$a0, $fp, -32
	bl	%plt(__extenddftf2)
	ld.w	$a0, $fp, -32
	ld.w	$a2, $fp, -28
	ld.w	$a3, $fp, -24
	ld.w	$a4, $fp, -20
	ld.w	$a1, $fp, -12
	st.w	$a4, $a1, 12
	st.w	$a3, $a1, 8
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end86:
	.size	_Qp_itoq, .Lfunc_end86-_Qp_itoq
                                        # -- End function
	.globl	ldexpf                          # -- Begin function ldexpf
	.p2align	5
	.type	ldexpf,@function
ldexpf:                                 # @ldexpf
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpf)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	bstrpick.w	$a1, $a0, 30, 0
	lu12i.w	$a0, 522240
	blt	$a0, $a1, .LBB87_10
	b	.LBB87_1
.LBB87_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpf)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -12
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	move	$a0, $a1
	bl	%plt(__addsf3)
	ld.w	$a1, $fp, -24                   # 4-byte Folded Reload
	bl	%plt(__eqsf2)
	beqz	$a0, .LBB87_10
	b	.LBB87_2
.LBB87_2:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpf)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB87_3
.LBB87_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpf)
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	slti	$a2, $a0, 0
	srli.w	$a3, $a0, 31
	ld.w	$a0, $a1, 36
	ld.w	$a4, $a1, 32
	add.w	$a3, $a4, $a3
	sltu	$a4, $a3, $a4
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 32
	st.w	$a0, $a1, 36
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 258048
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB87_4
.LBB87_4:                               # =>This Inner Loop Header: Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpf)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 31
	add.w	$a1, $a0, $a1
	bstrins.w	$a1, $zero, 0, 0
	sub.w	$a0, $a0, $a1
	beqz	$a0, .LBB87_6
	b	.LBB87_5
.LBB87_5:                               #   in Loop: Header=BB87_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpf)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -12
	bl	%plt(__mulsf3)
	st.w	$a0, $fp, -12
	b	.LBB87_6
.LBB87_6:                               #   in Loop: Header=BB87_4 Depth=1
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	bnez	$a0, .LBB87_8
	b	.LBB87_7
.LBB87_7:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpf)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	b	.LBB87_9
.LBB87_8:                               #   in Loop: Header=BB87_4 Depth=1
	ld.w	$a1, $fp, -20
	move	$a0, $a1
	bl	%plt(__mulsf3)
	st.w	$a0, $fp, -20
	b	.LBB87_4
.LBB87_9:
	b	.LBB87_10
.LBB87_10:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end87:
	.size	ldexpf, .Lfunc_end87-ldexpf
                                        # -- End function
	.globl	ldexp                           # -- Begin function ldexp
	.p2align	5
	.type	ldexp,@function
ldexp:                                  # @ldexp
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	bstrpick.w	$a2, $a1, 30, 0
	lu12i.w	$a3, 524032
	slt	$a1, $a3, $a2
	xor	$a2, $a2, $a3
	sltui	$a2, $a2, 1
	masknez	$a1, $a1, $a2
	sltu	$a0, $zero, $a0
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB88_10
	b	.LBB88_1
.LBB88_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a2, $fp, -16
	st.w	$a2, $fp, -40                   # 4-byte Folded Spill
	ld.w	$a3, $fp, -12
	st.w	$a3, $fp, -36                   # 4-byte Folded Spill
	move	$a0, $a2
	move	$a1, $a3
	bl	%plt(__adddf3)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a3, $fp, -36                   # 4-byte Folded Reload
	bl	%plt(__eqdf2)
	beqz	$a0, .LBB88_10
	b	.LBB88_2
.LBB88_2:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexp)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB88_3
.LBB88_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexp)
	st.w	$a1, $fp, -44                   # 4-byte Folded Spill
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	slti	$a2, $a0, 0
	srli.w	$a3, $a0, 31
	ld.w	$a0, $a1, 36
	ld.w	$a4, $a1, 32
	add.w	$a3, $a4, $a3
	sltu	$a4, $a3, $a4
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 32
	st.w	$a0, $a1, 36
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 261632
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	move	$a0, $zero
	st.w	$a0, $fp, -32
	b	.LBB88_4
.LBB88_4:                               # =>This Inner Loop Header: Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexp)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -20
	srli.w	$a1, $a0, 31
	add.w	$a1, $a0, $a1
	bstrins.w	$a1, $zero, 0, 0
	sub.w	$a0, $a0, $a1
	beqz	$a0, .LBB88_6
	b	.LBB88_5
.LBB88_5:                               #   in Loop: Header=BB88_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexp)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	bl	%plt(__muldf3)
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB88_6
.LBB88_6:                               #   in Loop: Header=BB88_4 Depth=1
	ld.w	$a0, $fp, -20
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	bnez	$a0, .LBB88_8
	b	.LBB88_7
.LBB88_7:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexp)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	b	.LBB88_9
.LBB88_8:                               #   in Loop: Header=BB88_4 Depth=1
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	move	$a0, $a2
	move	$a1, $a3
	bl	%plt(__muldf3)
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB88_4
.LBB88_9:
	b	.LBB88_10
.LBB88_10:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end88:
	.size	ldexp, .Lfunc_end88-ldexp
                                        # -- End function
	.globl	ldexpl                          # -- Begin function ldexpl
	.p2align	5
	.type	ldexpl,@function
ldexpl:                                 # @ldexpl
# %bb.0:
	addi.w	$sp, $sp, -272
	st.w	$ra, $sp, 268                   # 4-byte Folded Spill
	st.w	$fp, $sp, 264                   # 4-byte Folded Spill
	addi.w	$fp, $sp, 272
	move	$a4, $a1
	move	$a5, $a0
	ld.w	$a0, $a4, 0
	ld.w	$a1, $a4, 4
	ld.w	$a3, $a4, 8
	ld.w	$a4, $a4, 12
	st.w	$a5, $fp, -244                  # 4-byte Folded Spill
	st.w	$a4, $fp, -20
	st.w	$a3, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	st.w	$a2, $fp, -36
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpl)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -24
	ld.w	$a2, $fp, -20
	ld.w	$a0, $fp, -32
	ld.w	$a3, $fp, -28
	sltui	$a4, $a3, 1
	sltu	$a3, $zero, $a3
	masknez	$a3, $a3, $a4
	sltu	$a0, $zero, $a0
	maskeqz	$a0, $a0, $a4
	or	$a0, $a0, $a3
	bstrpick.w	$a5, $a2, 30, 0
	lu12i.w	$a3, 524272
	xor	$a4, $a5, $a3
	or	$a2, $a1, $a4
	sltui	$a2, $a2, 1
	maskeqz	$a0, $a0, $a2
	slt	$a3, $a3, $a5
	sltui	$a4, $a4, 1
	masknez	$a3, $a3, $a4
	sltu	$a1, $zero, $a1
	maskeqz	$a1, $a1, $a4
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	bnez	$a0, .LBB89_10
	b	.LBB89_1
.LBB89_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpl)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -248                  # 4-byte Folded Spill
	ld.w	$a1, $fp, -28
	st.w	$a1, $fp, -252                  # 4-byte Folded Spill
	ld.w	$a2, $fp, -24
	st.w	$a2, $fp, -256                  # 4-byte Folded Spill
	ld.w	$a3, $fp, -20
	st.w	$a3, $fp, -260                  # 4-byte Folded Spill
	st.w	$a3, $fp, -100
	st.w	$a2, $fp, -104
	st.w	$a1, $fp, -108
	st.w	$a0, $fp, -112
	st.w	$a3, $fp, -84
	st.w	$a2, $fp, -88
	st.w	$a1, $fp, -92
	st.w	$a0, $fp, -96
	addi.w	$a0, $fp, -80
	addi.w	$a1, $fp, -96
	addi.w	$a2, $fp, -112
	bl	%plt(__addtf3)
	ld.w	$a7, $fp, -260                  # 4-byte Folded Reload
	ld.w	$a6, $fp, -256                  # 4-byte Folded Reload
	ld.w	$a5, $fp, -252                  # 4-byte Folded Reload
	ld.w	$a4, $fp, -248                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -80
	ld.w	$a1, $fp, -76
	ld.w	$a2, $fp, -72
	ld.w	$a3, $fp, -68
	st.w	$a7, $fp, -132
	st.w	$a6, $fp, -136
	st.w	$a5, $fp, -140
	st.w	$a4, $fp, -144
	st.w	$a3, $fp, -116
	st.w	$a2, $fp, -120
	st.w	$a1, $fp, -124
	st.w	$a0, $fp, -128
	addi.w	$a0, $fp, -128
	addi.w	$a1, $fp, -144
	bl	%plt(__eqtf2)
	beqz	$a0, .LBB89_10
	b	.LBB89_2
.LBB89_2:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpl)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB89_3
.LBB89_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpl)
	st.w	$a1, $fp, -264                  # 4-byte Folded Spill
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -36
	slti	$a2, $a0, 0
	srli.w	$a3, $a0, 31
	ld.w	$a0, $a1, 36
	ld.w	$a4, $a1, 32
	add.w	$a3, $a4, $a3
	sltu	$a4, $a3, $a4
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 32
	st.w	$a0, $a1, 36
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 262112
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -52
	move	$a0, $zero
	st.w	$a0, $fp, -56
	st.w	$a0, $fp, -60
	st.w	$a0, $fp, -64
	b	.LBB89_4
.LBB89_4:                               # =>This Inner Loop Header: Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpl)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -36
	srli.w	$a1, $a0, 31
	add.w	$a1, $a0, $a1
	bstrins.w	$a1, $zero, 0, 0
	sub.w	$a0, $a0, $a1
	beqz	$a0, .LBB89_6
	b	.LBB89_5
.LBB89_5:                               #   in Loop: Header=BB89_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpl)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a4, $fp, -64
	ld.w	$a5, $fp, -60
	ld.w	$a6, $fp, -56
	ld.w	$a7, $fp, -52
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	ld.w	$a2, $fp, -24
	ld.w	$a3, $fp, -20
	st.w	$a7, $fp, -180
	st.w	$a6, $fp, -184
	st.w	$a5, $fp, -188
	st.w	$a4, $fp, -192
	st.w	$a3, $fp, -164
	st.w	$a2, $fp, -168
	st.w	$a1, $fp, -172
	st.w	$a0, $fp, -176
	addi.w	$a0, $fp, -160
	addi.w	$a1, $fp, -176
	addi.w	$a2, $fp, -192
	bl	%plt(__multf3)
	ld.w	$a0, $fp, -160
	ld.w	$a1, $fp, -156
	ld.w	$a2, $fp, -152
	ld.w	$a3, $fp, -148
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB89_6
.LBB89_6:                               #   in Loop: Header=BB89_4 Depth=1
	ld.w	$a0, $fp, -36
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	bnez	$a0, .LBB89_8
	b	.LBB89_7
.LBB89_7:
	pcalau12i	$a0, %pc_hi20(.L__profc_ldexpl)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_ldexpl)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	b	.LBB89_9
.LBB89_8:                               #   in Loop: Header=BB89_4 Depth=1
	ld.w	$a0, $fp, -64
	ld.w	$a1, $fp, -60
	ld.w	$a2, $fp, -56
	ld.w	$a3, $fp, -52
	st.w	$a3, $fp, -228
	st.w	$a2, $fp, -232
	st.w	$a1, $fp, -236
	st.w	$a0, $fp, -240
	st.w	$a3, $fp, -212
	st.w	$a2, $fp, -216
	st.w	$a1, $fp, -220
	st.w	$a0, $fp, -224
	addi.w	$a0, $fp, -208
	addi.w	$a1, $fp, -224
	addi.w	$a2, $fp, -240
	bl	%plt(__multf3)
	ld.w	$a0, $fp, -208
	ld.w	$a1, $fp, -204
	ld.w	$a2, $fp, -200
	ld.w	$a3, $fp, -196
	st.w	$a3, $fp, -52
	st.w	$a2, $fp, -56
	st.w	$a1, $fp, -60
	st.w	$a0, $fp, -64
	b	.LBB89_4
.LBB89_9:
	b	.LBB89_10
.LBB89_10:
	ld.w	$a1, $fp, -244                  # 4-byte Folded Reload
	ld.w	$a0, $fp, -32
	ld.w	$a2, $fp, -28
	ld.w	$a3, $fp, -24
	ld.w	$a4, $fp, -20
	st.w	$a4, $a1, 12
	st.w	$a3, $a1, 8
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	ld.w	$fp, $sp, 264                   # 4-byte Folded Reload
	ld.w	$ra, $sp, 268                   # 4-byte Folded Reload
	addi.w	$sp, $sp, 272
	ret
.Lfunc_end89:
	.size	ldexpl, .Lfunc_end89-ldexpl
                                        # -- End function
	.globl	memxor                          # -- Begin function memxor
	.p2align	5
	.type	memxor,@function
memxor:                                 # @memxor
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_memxor)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memxor)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -28
	b	.LBB90_1
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB90_4
	b	.LBB90_2
.LBB90_2:                               #   in Loop: Header=BB90_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memxor)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memxor)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -24
	ld.b	$a2, $a0, 0
	ld.w	$a1, $fp, -28
	addi.w	$a0, $a1, 1
	st.w	$a0, $fp, -28
	ld.b	$a0, $a1, 0
	xor	$a0, $a0, $a2
	st.b	$a0, $a1, 0
	b	.LBB90_3
.LBB90_3:                               #   in Loop: Header=BB90_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB90_1
.LBB90_4:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end90:
	.size	memxor, .Lfunc_end90-memxor
                                        # -- End function
	.globl	strncat                         # -- Begin function strncat
	.p2align	5
	.type	strncat,@function
strncat:                                # @strncat
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_strncat)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncat)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	bl	strlen
	move	$a1, $a0
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	b	.LBB91_1
.LBB91_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -32                   # 4-byte Folded Spill
	beqz	$a0, .LBB91_4
	b	.LBB91_2
.LBB91_2:                               #   in Loop: Header=BB91_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncat)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncat)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -16
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -24
	st.b	$a0, $a1, 0
	sltu	$a1, $zero, $a0
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	st.w	$a1, $fp, -32                   # 4-byte Folded Spill
	beqz	$a0, .LBB91_4
	b	.LBB91_3
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_strncat)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_strncat)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB91_7
	b	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strncat)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncat)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB91_6
.LBB91_6:                               #   in Loop: Header=BB91_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB91_1
.LBB91_7:
	ld.w	$a0, $fp, -20
	bnez	$a0, .LBB91_9
	b	.LBB91_8
.LBB91_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_strncat)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strncat)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a1, $fp, -24
	move	$a0, $zero
	st.b	$a0, $a1, 0
	b	.LBB91_9
.LBB91_9:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end91:
	.size	strncat, .Lfunc_end91-strncat
                                        # -- End function
	.globl	strnlen                         # -- Begin function strnlen
	.p2align	5
	.type	strnlen,@function
strnlen:                                # @strnlen
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_strnlen)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strnlen)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -16
	move	$a2, $zero
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	bgeu	$a0, $a1, .LBB92_4
	b	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strnlen)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strnlen)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -20
	add.w	$a0, $a0, $a1
	ld.b	$a0, $a0, 0
	sltu	$a1, $zero, $a0
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB92_4
	b	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_strnlen)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_strnlen)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB92_4
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB92_7
	b	.LBB92_5
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strnlen)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strnlen)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB92_6
.LBB92_6:                               #   in Loop: Header=BB92_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB92_1
.LBB92_7:
	ld.w	$a0, $fp, -20
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end92:
	.size	strnlen, .Lfunc_end92-strnlen
                                        # -- End function
	.globl	strpbrk                         # -- Begin function strpbrk
	.p2align	5
	.type	strpbrk,@function
strpbrk:                                # @strpbrk
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_strpbrk)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strpbrk)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB93_1
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	ld.w	$a0, $fp, -16
	ld.b	$a0, $a0, 0
	beqz	$a0, .LBB93_8
	b	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strpbrk)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strpbrk)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	b	.LBB93_3
.LBB93_3:                               #   Parent Loop BB93_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $fp, -24
	ld.b	$a0, $a0, 0
	beqz	$a0, .LBB93_7
	b	.LBB93_4
.LBB93_4:                               #   in Loop: Header=BB93_3 Depth=2
	pcalau12i	$a0, %pc_hi20(.L__profc_strpbrk)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strpbrk)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -24
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB93_6
	b	.LBB93_5
.LBB93_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_strpbrk)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strpbrk)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB93_9
.LBB93_6:                               #   in Loop: Header=BB93_3 Depth=2
	b	.LBB93_3
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB93_1
.LBB93_8:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB93_9
.LBB93_9:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end93:
	.size	strpbrk, .Lfunc_end93-strpbrk
                                        # -- End function
	.globl	strrchr                         # -- Begin function strrchr
	.p2align	5
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc_strrchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strrchr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB94_2
.LBB94_1:                               #   in Loop: Header=BB94_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strrchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strrchr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB94_2
.LBB94_2:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	bne	$a0, $a1, .LBB94_4
	b	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_2 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strrchr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strrchr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -20
	b	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_2 Depth=1
	b	.LBB94_5
.LBB94_5:                               #   in Loop: Header=BB94_2 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -12
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB94_1
	b	.LBB94_6
.LBB94_6:
	ld.w	$a0, $fp, -20
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end94:
	.size	strrchr, .Lfunc_end94-strrchr
                                        # -- End function
	.globl	strstr                          # -- Begin function strstr
	.p2align	5
	.type	strstr,@function
strstr:                                 # @strstr
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_strstr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strstr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	bl	strlen
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB95_2
	b	.LBB95_1
.LBB95_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_strstr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strstr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB95_9
.LBB95_2:
	b	.LBB95_3
.LBB95_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.b	$a1, $a1, 0
	bl	strchr
	st.w	$a0, $fp, -24
	beqz	$a0, .LBB95_8
	b	.LBB95_4
.LBB95_4:                               #   in Loop: Header=BB95_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_strstr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strstr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -28
	bl	strncmp
	bnez	$a0, .LBB95_6
	b	.LBB95_5
.LBB95_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_strstr)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_strstr)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -12
	b	.LBB95_9
.LBB95_6:                               #   in Loop: Header=BB95_3 Depth=1
	b	.LBB95_7
.LBB95_7:                               #   in Loop: Header=BB95_3 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB95_3
.LBB95_8:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB95_9
.LBB95_9:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end95:
	.size	strstr, .Lfunc_end95-strstr
                                        # -- End function
	.globl	copysign                        # -- Begin function copysign
	.p2align	5
	.type	copysign,@function
copysign:                               # @copysign
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a2, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc_copysign)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_copysign)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB96_3
	b	.LBB96_1
.LBB96_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_copysign)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_copysign)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__gtdf2)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB96_3
	b	.LBB96_2
.LBB96_2:
	pcalau12i	$a0, %pc_hi20(.L__profc_copysign)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_copysign)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	b	.LBB96_6
.LBB96_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_copysign)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_copysign)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__gtdf2)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB96_7
	b	.LBB96_4
.LBB96_4:
	pcalau12i	$a0, %pc_hi20(.L__profc_copysign)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_copysign)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB96_7
	b	.LBB96_5
.LBB96_5:
	pcalau12i	$a0, %pc_hi20(.L__profc_copysign)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_copysign)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	b	.LBB96_6
.LBB96_6:
	pcalau12i	$a0, %pc_hi20(.L__profc_copysign)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_copysign)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -24
	ld.w	$a0, $fp, -20
	lu12i.w	$a2, -524288
	xor	$a0, $a0, $a2
	st.w	$a1, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB96_8
.LBB96_7:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB96_8
.LBB96_8:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end96:
	.size	copysign, .Lfunc_end96-copysign
                                        # -- End function
	.globl	memmem                          # -- Begin function memmem
	.p2align	5
	.type	memmem,@function
memmem:                                 # @memmem
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	st.w	$a3, $fp, -28
	pcalau12i	$a0, %pc_hi20(.L__profc_memmem)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmem)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	add.w	$a0, $a0, $a1
	ld.w	$a1, $fp, -28
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB97_2
	b	.LBB97_1
.LBB97_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_memmem)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmem)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB97_13
.LBB97_2:
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB97_4
	b	.LBB97_3
.LBB97_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_memmem)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmem)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB97_13
.LBB97_4:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -32
	b	.LBB97_5
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -32
	ld.w	$a0, $fp, -36
	bltu	$a0, $a1, .LBB97_12
	b	.LBB97_6
.LBB97_6:                               #   in Loop: Header=BB97_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memmem)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmem)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -32
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -24
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB97_10
	b	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_memmem)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmem)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	ld.w	$a1, $fp, -24
	addi.w	$a1, $a1, 1
	ld.w	$a2, $fp, -28
	addi.w	$a2, $a2, -1
	bl	memcmp
	bnez	$a0, .LBB97_10
	b	.LBB97_8
.LBB97_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_memmem)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmem)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	b	.LBB97_9
.LBB97_9:
	pcalau12i	$a0, %pc_hi20(.L__profc_memmem)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_memmem)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB97_13
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	b	.LBB97_11
.LBB97_11:                              #   in Loop: Header=BB97_5 Depth=1
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -32
	b	.LBB97_5
.LBB97_12:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB97_13
.LBB97_13:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end97:
	.size	memmem, .Lfunc_end97-memmem
                                        # -- End function
	.globl	mempcpy                         # -- Begin function mempcpy
	.p2align	5
	.type	mempcpy,@function
mempcpy:                                # @mempcpy
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_mempcpy)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_mempcpy)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	ld.w	$a1, $fp, -16
	ld.w	$a2, $fp, -20
	bl	%plt(memcpy)
                                        # kill: def $r5 killed $r4
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -20
	add.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end98:
	.size	mempcpy, .Lfunc_end98-mempcpy
                                        # -- End function
	.globl	frexp                           # -- Begin function frexp
	.p2align	5
	.type	frexp,@function
frexp:                                  # @frexp
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a3, $zero
	st.w	$a3, $fp, -28
	st.w	$a3, $fp, -24
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $a3
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB99_2
	b	.LBB99_1
.LBB99_1:
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -524288
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -24
	b	.LBB99_2
.LBB99_2:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $zero
	st.w	$a2, $fp, -32                   # 4-byte Folded Spill
	lu12i.w	$a3, 261888
	bl	%plt(__gedf2)
	ld.w	$a1, $fp, -32                   # 4-byte Folded Reload
	blt	$a0, $a1, .LBB99_7
	b	.LBB99_3
.LBB99_3:
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB99_4
.LBB99_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $zero
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	lu12i.w	$a3, 261888
	bl	%plt(__gedf2)
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	blt	$a0, $a1, .LBB99_6
	b	.LBB99_5
.LBB99_5:                               #   in Loop: Header=BB99_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -28
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $zero
	lu12i.w	$a3, 261632
	bl	%plt(__muldf3)
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB99_4
.LBB99_6:
	b	.LBB99_15
.LBB99_7:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $zero
	lu12i.w	$a3, 261632
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB99_14
	b	.LBB99_8
.LBB99_8:
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__eqdf2)
	beqz	$a0, .LBB99_14
	b	.LBB99_9
.LBB99_9:
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	b	.LBB99_10
.LBB99_10:
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	b	.LBB99_11
.LBB99_11:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $zero
	lu12i.w	$a3, 261632
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB99_13
	b	.LBB99_12
.LBB99_12:                              #   in Loop: Header=BB99_11 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	ld.w	$a0, $fp, -28
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -28
	ld.w	$a2, $fp, -16
	ld.w	$a3, $fp, -12
	move	$a0, $a2
	move	$a1, $a3
	bl	%plt(__adddf3)
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB99_11
.LBB99_13:
	b	.LBB99_14
.LBB99_14:
	b	.LBB99_15
.LBB99_15:
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -20
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB99_17
	b	.LBB99_16
.LBB99_16:
	pcalau12i	$a0, %pc_hi20(.L__profc_frexp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_frexp)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -524288
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB99_17
.LBB99_17:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end99:
	.size	frexp, .Lfunc_end99-frexp
                                        # -- End function
	.globl	__muldi3                        # -- Begin function __muldi3
	.p2align	5
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc___muldi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___muldi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -28
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	b	.LBB100_1
.LBB100_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -40
	or	$a0, $a0, $a1
	beqz	$a0, .LBB100_5
	b	.LBB100_2
.LBB100_2:                              #   in Loop: Header=BB100_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___muldi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___muldi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.bu	$a0, $fp, -40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB100_4
	b	.LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___muldi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___muldi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -24
	ld.w	$a3, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a0, $fp, -28
	add.w	$a0, $a0, $a3
	add.w	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	add.w	$a0, $a0, $a2
	st.w	$a1, $fp, -32
	st.w	$a0, $fp, -28
	b	.LBB100_4
.LBB100_4:                              #   in Loop: Header=BB100_1 Depth=1
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	srli.w	$a2, $a1, 31
	slli.w	$a0, $a0, 1
	or	$a0, $a0, $a2
	slli.w	$a1, $a1, 1
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -36
	slli.w	$a2, $a1, 31
	srli.w	$a0, $a0, 1
	or	$a0, $a0, $a2
	srli.w	$a1, $a1, 1
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	b	.LBB100_1
.LBB100_5:
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end100:
	.size	__muldi3, .Lfunc_end100-__muldi3
                                        # -- End function
	.globl	udivmodsi4                      # -- Begin function udivmodsi4
	.p2align	5
	.type	udivmodsi4,@function
udivmodsi4:                             # @udivmodsi4
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -28
	move	$a0, $zero
	st.w	$a0, $fp, -32
	b	.LBB101_1
.LBB101_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -16
	move	$a2, $zero
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	bgeu	$a0, $a1, .LBB101_6
	b	.LBB101_2
.LBB101_2:                              #   in Loop: Header=BB101_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -28
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB101_6
	b	.LBB101_3
.LBB101_3:                              #   in Loop: Header=BB101_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	b	.LBB101_4
.LBB101_4:                              #   in Loop: Header=BB101_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	bstrins.w	$a0, $zero, 30, 0
	sltui	$a1, $a0, 1
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	bnez	$a0, .LBB101_6
	b	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a2, $a1, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB101_6
.LBB101_6:                              #   in Loop: Header=BB101_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB101_8
	b	.LBB101_7
.LBB101_7:                              #   in Loop: Header=BB101_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -28
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB101_1
.LBB101_8:
	b	.LBB101_9
.LBB101_9:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB101_13
	b	.LBB101_10
.LBB101_10:                             #   in Loop: Header=BB101_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bltu	$a0, $a1, .LBB101_12
	b	.LBB101_11
.LBB101_11:                             #   in Loop: Header=BB101_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	b	.LBB101_12
.LBB101_12:                             #   in Loop: Header=BB101_9 Depth=1
	ld.w	$a0, $fp, -28
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB101_9
.LBB101_13:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB101_15
	b	.LBB101_14
.LBB101_14:
	pcalau12i	$a0, %pc_hi20(.L__profc_udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc_udivmodsi4)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB101_16
.LBB101_15:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB101_16
.LBB101_16:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end101:
	.size	udivmodsi4, .Lfunc_end101-udivmodsi4
                                        # -- End function
	.globl	__clrsbqi2                      # -- Begin function __clrsbqi2
	.p2align	5
	.type	__clrsbqi2,@function
__clrsbqi2:                             # @__clrsbqi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.b	$a0, $fp, -13
	pcalau12i	$a0, %pc_hi20(.L__profc___clrsbqi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clrsbqi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.b	$a1, $fp, -13
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB102_2
	b	.LBB102_1
.LBB102_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___clrsbqi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clrsbqi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.b	$a0, $fp, -13
	nor	$a0, $a0, $zero
	st.b	$a0, $fp, -13
	b	.LBB102_2
.LBB102_2:
	ld.b	$a0, $fp, -13
	bnez	$a0, .LBB102_4
	b	.LBB102_3
.LBB102_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___clrsbqi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clrsbqi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ori	$a0, $zero, 7
	st.w	$a0, $fp, -12
	b	.LBB102_5
.LBB102_4:
	ld.b	$a0, $fp, -13
	slli.w	$a0, $a0, 8
	clz.w	$a0, $a0
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -12
	b	.LBB102_5
.LBB102_5:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end102:
	.size	__clrsbqi2, .Lfunc_end102-__clrsbqi2
                                        # -- End function
	.globl	__clrsbdi2                      # -- Begin function __clrsbdi2
	.p2align	5
	.type	__clrsbdi2,@function
__clrsbdi2:                             # @__clrsbdi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc___clrsbdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clrsbdi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -20
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB103_2
	b	.LBB103_1
.LBB103_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___clrsbdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clrsbdi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	nor	$a0, $a0, $zero
	nor	$a1, $a1, $zero
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	b	.LBB103_2
.LBB103_2:
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	or	$a0, $a0, $a1
	bnez	$a0, .LBB103_4
	b	.LBB103_3
.LBB103_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___clrsbdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clrsbdi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ori	$a0, $zero, 63
	st.w	$a0, $fp, -12
	b	.LBB103_5
.LBB103_4:
	ld.w	$a1, $fp, -24
	ld.w	$a0, $fp, -20
	sltu	$a2, $zero, $a0
	clz.w	$a0, $a0
	maskeqz	$a0, $a0, $a2
	clz.w	$a1, $a1
	addi.w	$a1, $a1, 32
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -12
	b	.LBB103_5
.LBB103_5:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end103:
	.size	__clrsbdi2, .Lfunc_end103-__clrsbdi2
                                        # -- End function
	.globl	__mulsi3                        # -- Begin function __mulsi3
	.p2align	5
	.type	__mulsi3,@function
__mulsi3:                               # @__mulsi3
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB104_1
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	beqz	$a0, .LBB104_5
	b	.LBB104_2
.LBB104_2:                              #   in Loop: Header=BB104_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.bu	$a0, $fp, -12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB104_4
	b	.LBB104_3
.LBB104_3:                              #   in Loop: Header=BB104_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -16
	ld.w	$a0, $fp, -20
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB104_4
.LBB104_4:                              #   in Loop: Header=BB104_1 Depth=1
	ld.w	$a0, $fp, -12
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB104_1
.LBB104_5:
	ld.w	$a0, $fp, -20
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end104:
	.size	__mulsi3, .Lfunc_end104-__mulsi3
                                        # -- End function
	.globl	__cmovd                         # -- Begin function __cmovd
	.p2align	5
	.type	__cmovd,@function
__cmovd:                                # @__cmovd
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovd)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 3
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	bstrins.w	$a0, $zero, 2, 0
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -40
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -40
	bltu	$a0, $a1, .LBB105_3
	b	.LBB105_1
.LBB105_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovd)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	bltu	$a0, $a1, .LBB105_3
	b	.LBB105_2
.LBB105_2:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovd)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB105_11
.LBB105_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovd)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -24
	b	.LBB105_4
.LBB105_4:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB105_7
	b	.LBB105_5
.LBB105_5:                              #   in Loop: Header=BB105_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovd)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -24
	alsl.w	$a2, $a1, $a0, 3
	ld.w	$a0, $a2, 0
	ld.w	$a2, $a2, 4
	ld.w	$a3, $fp, -12
	alsl.w	$a1, $a1, $a3, 3
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	b	.LBB105_6
.LBB105_6:                              #   in Loop: Header=BB105_4 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB105_4
.LBB105_7:
	b	.LBB105_8
.LBB105_8:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -32
	bgeu	$a0, $a1, .LBB105_10
	b	.LBB105_9
.LBB105_9:                              #   in Loop: Header=BB105_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovd)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -32
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -32
	b	.LBB105_8
.LBB105_10:
	b	.LBB105_15
.LBB105_11:
	b	.LBB105_12
.LBB105_12:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB105_14
	b	.LBB105_13
.LBB105_13:                             #   in Loop: Header=BB105_12 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovd)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB105_12
.LBB105_14:
	b	.LBB105_15
.LBB105_15:
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end105:
	.size	__cmovd, .Lfunc_end105-__cmovd
                                        # -- End function
	.globl	__cmovh                         # -- Begin function __cmovh
	.p2align	5
	.type	__cmovh,@function
__cmovh:                                # @__cmovh
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovh)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovh)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -36
	bltu	$a0, $a1, .LBB106_3
	b	.LBB106_1
.LBB106_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovh)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovh)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -32
	ld.w	$a0, $fp, -36
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	bltu	$a0, $a1, .LBB106_3
	b	.LBB106_2
.LBB106_2:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovh)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovh)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB106_10
.LBB106_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovh)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovh)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -24
	b	.LBB106_4
.LBB106_4:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB106_7
	b	.LBB106_5
.LBB106_5:                              #   in Loop: Header=BB106_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovh)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovh)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -24
	alsl.w	$a0, $a1, $a0, 1
	ld.h	$a0, $a0, 0
	ld.w	$a2, $fp, -12
	alsl.w	$a1, $a1, $a2, 1
	st.h	$a0, $a1, 0
	b	.LBB106_6
.LBB106_6:                              #   in Loop: Header=BB106_4 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB106_4
.LBB106_7:
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB106_9
	b	.LBB106_8
.LBB106_8:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovh)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovh)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -20
	addi.w	$a2, $a1, -1
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB106_9
.LBB106_9:
	b	.LBB106_14
.LBB106_10:
	b	.LBB106_11
.LBB106_11:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB106_13
	b	.LBB106_12
.LBB106_12:                             #   in Loop: Header=BB106_11 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovh)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovh)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -36
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB106_11
.LBB106_13:
	b	.LBB106_14
.LBB106_14:
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end106:
	.size	__cmovh, .Lfunc_end106-__cmovh
                                        # -- End function
	.globl	__cmovw                         # -- Begin function __cmovw
	.p2align	5
	.type	__cmovw,@function
__cmovw:                                # @__cmovw
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovw)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovw)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 2
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	bstrins.w	$a0, $zero, 1, 0
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -40
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -40
	bltu	$a0, $a1, .LBB107_3
	b	.LBB107_1
.LBB107_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovw)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovw)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	bltu	$a0, $a1, .LBB107_3
	b	.LBB107_2
.LBB107_2:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovw)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovw)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB107_11
.LBB107_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovw)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovw)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -24
	b	.LBB107_4
.LBB107_4:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB107_7
	b	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_4 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovw)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovw)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -24
	alsl.w	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, 0
	ld.w	$a2, $fp, -12
	alsl.w	$a1, $a1, $a2, 2
	st.w	$a0, $a1, 0
	b	.LBB107_6
.LBB107_6:                              #   in Loop: Header=BB107_4 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB107_4
.LBB107_7:
	b	.LBB107_8
.LBB107_8:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -32
	bgeu	$a0, $a1, .LBB107_10
	b	.LBB107_9
.LBB107_9:                              #   in Loop: Header=BB107_8 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovw)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovw)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -32
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -32
	b	.LBB107_8
.LBB107_10:
	b	.LBB107_15
.LBB107_11:
	b	.LBB107_12
.LBB107_12:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB107_14
	b	.LBB107_13
.LBB107_13:                             #   in Loop: Header=BB107_12 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___cmovw)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmovw)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB107_12
.LBB107_14:
	b	.LBB107_15
.LBB107_15:
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end107:
	.size	__cmovw, .Lfunc_end107-__cmovw
                                        # -- End function
	.globl	__modi                          # -- Begin function __modi
	.p2align	5
	.type	__modi,@function
__modi:                                 # @__modi
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___modi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___modi)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	mod.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end108:
	.size	__modi, .Lfunc_end108-__modi
                                        # -- End function
	.globl	__uitod                         # -- Begin function __uitod
	.p2align	5
	.type	__uitod,@function
__uitod:                                # @__uitod
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc___uitod)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___uitod)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	bl	%plt(__floatunsidf)
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end109:
	.size	__uitod, .Lfunc_end109-__uitod
                                        # -- End function
	.globl	__uitof                         # -- Begin function __uitof
	.p2align	5
	.type	__uitof,@function
__uitof:                                # @__uitof
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc___uitof)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___uitof)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	bl	%plt(__floatunsisf)
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end110:
	.size	__uitof, .Lfunc_end110-__uitof
                                        # -- End function
	.globl	__ulltod                        # -- Begin function __ulltod
	.p2align	5
	.type	__ulltod,@function
__ulltod:                               # @__ulltod
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___ulltod)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ulltod)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	bl	%plt(__floatundidf)
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end111:
	.size	__ulltod, .Lfunc_end111-__ulltod
                                        # -- End function
	.globl	__ulltof                        # -- Begin function __ulltof
	.p2align	5
	.type	__ulltof,@function
__ulltof:                               # @__ulltof
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___ulltof)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ulltof)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	bl	%plt(__floatundisf)
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end112:
	.size	__ulltof, .Lfunc_end112-__ulltof
                                        # -- End function
	.globl	__umodi                         # -- Begin function __umodi
	.p2align	5
	.type	__umodi,@function
__umodi:                                # @__umodi
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___umodi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___umodi)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	mod.wu	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end113:
	.size	__umodi, .Lfunc_end113-__umodi
                                        # -- End function
	.globl	__clzhi2                        # -- Begin function __clzhi2
	.p2align	5
	.type	__clzhi2,@function
__clzhi2:                               # @__clzhi2
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -10
	pcalau12i	$a0, %pc_hi20(.L__profc___clzhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clzhi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -16
	b	.LBB114_1
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB114_6
	b	.LBB114_2
.LBB114_2:                              #   in Loop: Header=BB114_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___clzhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clzhi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.hu	$a0, $fp, -10
	ld.w	$a2, $fp, -16
	ori	$a1, $zero, 15
	sub.w	$a1, $a1, $a2
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB114_4
	b	.LBB114_3
.LBB114_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___clzhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clzhi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB114_6
.LBB114_4:                              #   in Loop: Header=BB114_1 Depth=1
	b	.LBB114_5
.LBB114_5:                              #   in Loop: Header=BB114_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB114_1
.LBB114_6:
	ld.w	$a0, $fp, -16
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end114:
	.size	__clzhi2, .Lfunc_end114-__clzhi2
                                        # -- End function
	.globl	__ctzhi2                        # -- Begin function __ctzhi2
	.p2align	5
	.type	__ctzhi2,@function
__ctzhi2:                               # @__ctzhi2
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -10
	pcalau12i	$a0, %pc_hi20(.L__profc___ctzhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ctzhi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -16
	b	.LBB115_1
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB115_6
	b	.LBB115_2
.LBB115_2:                              #   in Loop: Header=BB115_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___ctzhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ctzhi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.hu	$a0, $fp, -10
	ld.w	$a1, $fp, -16
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB115_4
	b	.LBB115_3
.LBB115_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___ctzhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ctzhi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB115_6
.LBB115_4:                              #   in Loop: Header=BB115_1 Depth=1
	b	.LBB115_5
.LBB115_5:                              #   in Loop: Header=BB115_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB115_1
.LBB115_6:
	ld.w	$a0, $fp, -16
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end115:
	.size	__ctzhi2, .Lfunc_end115-__ctzhi2
                                        # -- End function
	.globl	__fixunssfsi                    # -- Begin function __fixunssfsi
	.p2align	5
	.type	__fixunssfsi,@function
__fixunssfsi:                           # @__fixunssfsi
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___fixunssfsi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___fixunssfsi)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, 290816
	bl	%plt(__gesf2)
	move	$a1, $zero
	blt	$a0, $a1, .LBB116_2
	b	.LBB116_1
.LBB116_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___fixunssfsi)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___fixunssfsi)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, -233472
	bl	%plt(__addsf3)
	bl	%plt(__fixsfsi)
	lu12i.w	$a1, 8
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB116_3
.LBB116_2:
	ld.w	$a0, $fp, -16
	bl	%plt(__fixsfsi)
	st.w	$a0, $fp, -12
	b	.LBB116_3
.LBB116_3:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end116:
	.size	__fixunssfsi, .Lfunc_end116-__fixunssfsi
                                        # -- End function
	.globl	__parityhi2                     # -- Begin function __parityhi2
	.p2align	5
	.type	__parityhi2,@function
__parityhi2:                            # @__parityhi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -10
	pcalau12i	$a0, %pc_hi20(.L__profc___parityhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___parityhi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	st.w	$a0, $fp, -16
	b	.LBB117_1
.LBB117_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB117_6
	b	.LBB117_2
.LBB117_2:                              #   in Loop: Header=BB117_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___parityhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___parityhi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.hu	$a0, $fp, -10
	ld.w	$a1, $fp, -16
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB117_4
	b	.LBB117_3
.LBB117_3:                              #   in Loop: Header=BB117_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___parityhi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___parityhi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB117_4
.LBB117_4:                              #   in Loop: Header=BB117_1 Depth=1
	b	.LBB117_5
.LBB117_5:                              #   in Loop: Header=BB117_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB117_1
.LBB117_6:
	ld.w	$a0, $fp, -20
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end117:
	.size	__parityhi2, .Lfunc_end117-__parityhi2
                                        # -- End function
	.globl	__popcounthi2                   # -- Begin function __popcounthi2
	.p2align	5
	.type	__popcounthi2,@function
__popcounthi2:                          # @__popcounthi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r5 killed $r4
	st.h	$a0, $fp, -10
	pcalau12i	$a0, %pc_hi20(.L__profc___popcounthi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___popcounthi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	st.w	$a0, $fp, -16
	b	.LBB118_1
.LBB118_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB118_6
	b	.LBB118_2
.LBB118_2:                              #   in Loop: Header=BB118_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___popcounthi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___popcounthi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.hu	$a0, $fp, -10
	ld.w	$a1, $fp, -16
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB118_4
	b	.LBB118_3
.LBB118_3:                              #   in Loop: Header=BB118_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___popcounthi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___popcounthi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB118_4
.LBB118_4:                              #   in Loop: Header=BB118_1 Depth=1
	b	.LBB118_5
.LBB118_5:                              #   in Loop: Header=BB118_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB118_1
.LBB118_6:
	ld.w	$a0, $fp, -20
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end118:
	.size	__popcounthi2, .Lfunc_end118-__popcounthi2
                                        # -- End function
	.globl	__mulsi3_iq2000                 # -- Begin function __mulsi3_iq2000
	.p2align	5
	.type	__mulsi3_iq2000,@function
__mulsi3_iq2000:                        # @__mulsi3_iq2000
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3_iq2000)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3_iq2000)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	beqz	$a0, .LBB119_5
	b	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3_iq2000)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3_iq2000)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.bu	$a0, $fp, -12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB119_4
	b	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3_iq2000)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3_iq2000)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -16
	ld.w	$a0, $fp, -20
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB119_4
.LBB119_4:                              #   in Loop: Header=BB119_1 Depth=1
	ld.w	$a0, $fp, -12
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB119_1
.LBB119_5:
	ld.w	$a0, $fp, -20
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end119:
	.size	__mulsi3_iq2000, .Lfunc_end119-__mulsi3_iq2000
                                        # -- End function
	.globl	__mulsi3_lm32                   # -- Begin function __mulsi3_lm32
	.p2align	5
	.type	__mulsi3_lm32,@function
__mulsi3_lm32:                          # @__mulsi3_lm32
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3_lm32)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	bnez	$a0, .LBB120_2
	b	.LBB120_1
.LBB120_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3_lm32)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB120_8
.LBB120_2:
	b	.LBB120_3
.LBB120_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB120_7
	b	.LBB120_4
.LBB120_4:                              #   in Loop: Header=BB120_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3_lm32)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB120_6
	b	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulsi3_lm32)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulsi3_lm32)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -16
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	b	.LBB120_6
.LBB120_6:                              #   in Loop: Header=BB120_3 Depth=1
	ld.w	$a0, $fp, -16
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB120_3
.LBB120_7:
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -12
	b	.LBB120_8
.LBB120_8:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end120:
	.size	__mulsi3_lm32, .Lfunc_end120-__mulsi3_lm32
                                        # -- End function
	.globl	__udivmodsi4                    # -- Begin function __udivmodsi4
	.p2align	5
	.type	__udivmodsi4,@function
__udivmodsi4:                           # @__udivmodsi4
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -28
	move	$a0, $zero
	st.w	$a0, $fp, -32
	b	.LBB121_1
.LBB121_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -16
	move	$a2, $zero
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	bgeu	$a0, $a1, .LBB121_6
	b	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -28
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB121_6
	b	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	b	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	bstrins.w	$a0, $zero, 30, 0
	sltui	$a1, $a0, 1
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	bnez	$a0, .LBB121_6
	b	.LBB121_5
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a2, $a1, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB121_6
.LBB121_6:                              #   in Loop: Header=BB121_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB121_8
	b	.LBB121_7
.LBB121_7:                              #   in Loop: Header=BB121_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -28
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB121_1
.LBB121_8:
	b	.LBB121_9
.LBB121_9:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB121_13
	b	.LBB121_10
.LBB121_10:                             #   in Loop: Header=BB121_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bltu	$a0, $a1, .LBB121_12
	b	.LBB121_11
.LBB121_11:                             #   in Loop: Header=BB121_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	b	.LBB121_12
.LBB121_12:                             #   in Loop: Header=BB121_9 Depth=1
	ld.w	$a0, $fp, -28
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB121_9
.LBB121_13:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB121_15
	b	.LBB121_14
.LBB121_14:
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB121_16
.LBB121_15:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB121_16
.LBB121_16:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end121:
	.size	__udivmodsi4, .Lfunc_end121-__udivmodsi4
                                        # -- End function
	.globl	__mspabi_cmpf                   # -- Begin function __mspabi_cmpf
	.p2align	5
	.type	__mspabi_cmpf,@function
__mspabi_cmpf:                          # @__mspabi_cmpf
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_cmpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_cmpf)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bl	%plt(__ltsf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB122_2
	b	.LBB122_1
.LBB122_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_cmpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_cmpf)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -12
	b	.LBB122_5
.LBB122_2:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bl	%plt(__gtsf2)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB122_4
	b	.LBB122_3
.LBB122_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_cmpf)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_cmpf)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB122_5
.LBB122_4:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB122_5
.LBB122_5:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end122:
	.size	__mspabi_cmpf, .Lfunc_end122-__mspabi_cmpf
                                        # -- End function
	.globl	__mspabi_cmpd                   # -- Begin function __mspabi_cmpd
	.p2align	5
	.type	__mspabi_cmpd,@function
__mspabi_cmpd:                          # @__mspabi_cmpd
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a2, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_cmpd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_cmpd)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB123_2
	b	.LBB123_1
.LBB123_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_cmpd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_cmpd)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -12
	b	.LBB123_5
.LBB123_2:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	bl	%plt(__gtdf2)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB123_4
	b	.LBB123_3
.LBB123_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_cmpd)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_cmpd)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB123_5
.LBB123_4:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB123_5
.LBB123_5:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end123:
	.size	__mspabi_cmpd, .Lfunc_end123-__mspabi_cmpd
                                        # -- End function
	.globl	__mspabi_mpysll                 # -- Begin function __mspabi_mpysll
	.p2align	5
	.type	__mspabi_mpysll,@function
__mspabi_mpysll:                        # @__mspabi_mpysll
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_mpysll)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_mpysll)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -12
	ld.w	$a2, $fp, -16
	mul.w	$a0, $a1, $a2
	mulh.w	$a1, $a1, $a2
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end124:
	.size	__mspabi_mpysll, .Lfunc_end124-__mspabi_mpysll
                                        # -- End function
	.globl	__mspabi_mpyull                 # -- Begin function __mspabi_mpyull
	.p2align	5
	.type	__mspabi_mpyull,@function
__mspabi_mpyull:                        # @__mspabi_mpyull
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___mspabi_mpyull)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mspabi_mpyull)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -12
	ld.w	$a2, $fp, -16
	mul.w	$a0, $a1, $a2
	mulh.wu	$a1, $a1, $a2
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end125:
	.size	__mspabi_mpyull, .Lfunc_end125-__mspabi_mpyull
                                        # -- End function
	.globl	__mulhi3                        # -- Begin function __mulhi3
	.p2align	5
	.type	__mulhi3,@function
__mulhi3:                               # @__mulhi3
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___mulhi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulhi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -24
	st.w	$a0, $fp, -28
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB126_2
	b	.LBB126_1
.LBB126_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___mulhi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulhi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -24
	b	.LBB126_2
.LBB126_2:
	move	$a0, $zero
	st.b	$a0, $fp, -17
	b	.LBB126_3
.LBB126_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	move	$a1, $zero
	st.w	$a1, $fp, -32                   # 4-byte Folded Spill
	beqz	$a0, .LBB126_6
	b	.LBB126_4
.LBB126_4:                              #   in Loop: Header=BB126_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulhi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulhi3)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.b	$a1, $fp, -17
	sltui	$a2, $a1, 32
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	ori	$a0, $zero, 31
	st.w	$a2, $fp, -32                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB126_6
	b	.LBB126_5
.LBB126_5:                              #   in Loop: Header=BB126_3 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc___mulhi3)
	addi.w	$a2, $a1, %pc_lo12(.L__profc___mulhi3)
	ld.w	$a1, $a2, 36
	ld.w	$a3, $a2, 32
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 32
	st.w	$a1, $a2, 36
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB126_6
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB126_11
	b	.LBB126_7
.LBB126_7:                              #   in Loop: Header=BB126_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulhi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulhi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.bu	$a0, $fp, -16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB126_9
	b	.LBB126_8
.LBB126_8:                              #   in Loop: Header=BB126_3 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___mulhi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulhi3)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	ld.w	$a1, $fp, -12
	ld.w	$a0, $fp, -28
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	b	.LBB126_9
.LBB126_9:                              #   in Loop: Header=BB126_3 Depth=1
	ld.w	$a0, $fp, -12
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB126_10
.LBB126_10:                             #   in Loop: Header=BB126_3 Depth=1
	ld.b	$a0, $fp, -17
	addi.w	$a0, $a0, 1
	st.b	$a0, $fp, -17
	b	.LBB126_3
.LBB126_11:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB126_13
	b	.LBB126_12
.LBB126_12:
	pcalau12i	$a0, %pc_hi20(.L__profc___mulhi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___mulhi3)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a1, $fp, -28
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -40                   # 4-byte Folded Spill
	b	.LBB126_14
.LBB126_13:
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -40                   # 4-byte Folded Spill
	b	.LBB126_14
.LBB126_14:
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end126:
	.size	__mulhi3, .Lfunc_end126-__mulhi3
                                        # -- End function
	.globl	__divsi3                        # -- Begin function __divsi3
	.p2align	5
	.type	__divsi3,@function
__divsi3:                               # @__divsi3
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___divsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___divsi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -12
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB127_2
	b	.LBB127_1
.LBB127_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___divsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___divsi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -12
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -20
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB127_2
.LBB127_2:
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB127_4
	b	.LBB127_3
.LBB127_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___divsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___divsi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -20
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB127_4
.LBB127_4:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	move	$a2, $zero
	bl	__udivmodsi4
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB127_6
	b	.LBB127_5
.LBB127_5:
	pcalau12i	$a0, %pc_hi20(.L__profc___divsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___divsi3)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -24
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	b	.LBB127_6
.LBB127_6:
	ld.w	$a0, $fp, -24
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end127:
	.size	__divsi3, .Lfunc_end127-__divsi3
                                        # -- End function
	.globl	__modsi3                        # -- Begin function __modsi3
	.p2align	5
	.type	__modsi3,@function
__modsi3:                               # @__modsi3
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___modsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___modsi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	move	$a0, $zero
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -12
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB128_2
	b	.LBB128_1
.LBB128_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___modsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___modsi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a1, $fp, -12
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB128_2
.LBB128_2:
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB128_4
	b	.LBB128_3
.LBB128_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___modsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___modsi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	b	.LBB128_4
.LBB128_4:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -16
	ori	$a2, $zero, 1
	bl	__udivmodsi4
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB128_6
	b	.LBB128_5
.LBB128_5:
	pcalau12i	$a0, %pc_hi20(.L__profc___modsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___modsi3)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a1, $fp, -24
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	b	.LBB128_6
.LBB128_6:
	ld.w	$a0, $fp, -24
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end128:
	.size	__modsi3, .Lfunc_end128-__modsi3
                                        # -- End function
	.globl	__udivmodhi4                    # -- Begin function __udivmodhi4
	.p2align	5
	.type	__udivmodhi4,@function
__udivmodhi4:                           # @__udivmodhi4
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.h	$a0, $fp, -12
	st.h	$a1, $fp, -14
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 1
	st.h	$a0, $fp, -22
	move	$a0, $zero
	st.h	$a0, $fp, -24
	b	.LBB129_1
.LBB129_1:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, -14
	ld.hu	$a1, $fp, -12
	move	$a2, $zero
	st.w	$a2, $fp, -28                   # 4-byte Folded Spill
	bge	$a0, $a1, .LBB129_6
	b	.LBB129_2
.LBB129_2:                              #   in Loop: Header=BB129_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.hu	$a0, $fp, -22
	move	$a1, $zero
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	beqz	$a0, .LBB129_6
	b	.LBB129_3
.LBB129_3:                              #   in Loop: Header=BB129_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	b	.LBB129_4
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.hu	$a0, $fp, -14
	lu12i.w	$a1, 8
	and	$a0, $a0, $a1
	sltui	$a1, $a0, 1
	st.w	$a1, $fp, -32                   # 4-byte Folded Spill
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	bnez	$a0, .LBB129_6
	b	.LBB129_5
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a2, $a1, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB129_6
.LBB129_6:                              #   in Loop: Header=BB129_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB129_8
	b	.LBB129_7
.LBB129_7:                              #   in Loop: Header=BB129_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.h	$a0, $fp, -14
	slli.w	$a0, $a0, 1
	st.h	$a0, $fp, -14
	ld.h	$a0, $fp, -22
	slli.w	$a0, $a0, 1
	st.h	$a0, $fp, -22
	b	.LBB129_1
.LBB129_8:
	b	.LBB129_9
.LBB129_9:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, -22
	beqz	$a0, .LBB129_13
	b	.LBB129_10
.LBB129_10:                             #   in Loop: Header=BB129_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.hu	$a0, $fp, -12
	ld.hu	$a1, $fp, -14
	blt	$a0, $a1, .LBB129_12
	b	.LBB129_11
.LBB129_11:                             #   in Loop: Header=BB129_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	ld.h	$a1, $fp, -14
	ld.h	$a0, $fp, -12
	sub.w	$a0, $a0, $a1
	st.h	$a0, $fp, -12
	ld.h	$a1, $fp, -22
	ld.h	$a0, $fp, -24
	or	$a0, $a0, $a1
	st.h	$a0, $fp, -24
	b	.LBB129_12
.LBB129_12:                             #   in Loop: Header=BB129_9 Depth=1
	ld.hu	$a0, $fp, -22
	srli.w	$a0, $a0, 1
	st.h	$a0, $fp, -22
	ld.hu	$a0, $fp, -14
	srli.w	$a0, $a0, 1
	st.h	$a0, $fp, -14
	b	.LBB129_9
.LBB129_13:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB129_15
	b	.LBB129_14
.LBB129_14:
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodhi4)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodhi4)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	ld.h	$a0, $fp, -12
	st.h	$a0, $fp, -10
	b	.LBB129_16
.LBB129_15:
	ld.h	$a0, $fp, -24
	st.h	$a0, $fp, -10
	b	.LBB129_16
.LBB129_16:
	ld.hu	$a0, $fp, -10
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end129:
	.size	__udivmodhi4, .Lfunc_end129-__udivmodhi4
                                        # -- End function
	.globl	__udivmodsi4_libgcc             # -- Begin function __udivmodsi4_libgcc
	.p2align	5
	.type	__udivmodsi4_libgcc,@function
__udivmodsi4_libgcc:                    # @__udivmodsi4_libgcc
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -16
	st.w	$a1, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -28
	move	$a0, $zero
	st.w	$a0, $fp, -32
	b	.LBB130_1
.LBB130_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -16
	move	$a2, $zero
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	bgeu	$a0, $a1, .LBB130_6
	b	.LBB130_2
.LBB130_2:                              #   in Loop: Header=BB130_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -28
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB130_6
	b	.LBB130_3
.LBB130_3:                              #   in Loop: Header=BB130_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	b	.LBB130_4
.LBB130_4:                              #   in Loop: Header=BB130_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	bstrins.w	$a0, $zero, 30, 0
	sltui	$a1, $a0, 1
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	bnez	$a0, .LBB130_6
	b	.LBB130_5
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a2, $a1, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB130_6
.LBB130_6:                              #   in Loop: Header=BB130_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB130_8
	b	.LBB130_7
.LBB130_7:                              #   in Loop: Header=BB130_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -28
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB130_1
.LBB130_8:
	b	.LBB130_9
.LBB130_9:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB130_13
	b	.LBB130_10
.LBB130_10:                             #   in Loop: Header=BB130_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bltu	$a0, $a1, .LBB130_12
	b	.LBB130_11
.LBB130_11:                             #   in Loop: Header=BB130_9 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	b	.LBB130_12
.LBB130_12:                             #   in Loop: Header=BB130_9 Depth=1
	ld.w	$a0, $fp, -28
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB130_9
.LBB130_13:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB130_15
	b	.LBB130_14
.LBB130_14:
	pcalau12i	$a0, %pc_hi20(.L__profc___udivmodsi4_libgcc)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___udivmodsi4_libgcc)
	ld.w	$a0, $a1, 68
	ld.w	$a2, $a1, 64
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 64
	st.w	$a0, $a1, 68
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB130_16
.LBB130_15:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB130_16
.LBB130_16:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end130:
	.size	__udivmodsi4_libgcc, .Lfunc_end130-__udivmodsi4_libgcc
                                        # -- End function
	.globl	__ashldi3                       # -- Begin function __ashldi3
	.p2align	5
	.type	__ashldi3,@function
__ashldi3:                              # @__ashldi3
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a2, $fp, -28
	pcalau12i	$a0, %pc_hi20(.L__profc___ashldi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ashldi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	ld.bu	$a0, $fp, -28
	andi	$a0, $a0, 32
	beqz	$a0, .LBB131_2
	b	.LBB131_1
.LBB131_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___ashldi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ashldi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -48
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -28
	addi.w	$a1, $a1, -32
	sll.w	$a0, $a0, $a1
	st.w	$a0, $fp, -44
	b	.LBB131_5
.LBB131_2:
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB131_4
	b	.LBB131_3
.LBB131_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___ashldi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ashldi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB131_6
.LBB131_4:
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -28
	sll.w	$a0, $a0, $a1
	st.w	$a0, $fp, -48
	ld.w	$a0, $fp, -36
	ld.w	$a3, $fp, -28
	sll.w	$a0, $a0, $a3
	ld.w	$a1, $fp, -40
	move	$a2, $zero
	sub.w	$a2, $a2, $a3
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -44
	b	.LBB131_5
.LBB131_5:
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB131_6
.LBB131_6:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end131:
	.size	__ashldi3, .Lfunc_end131-__ashldi3
                                        # -- End function
	.globl	__ashrdi3                       # -- Begin function __ashrdi3
	.p2align	5
	.type	__ashrdi3,@function
__ashrdi3:                              # @__ashrdi3
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a2, $fp, -28
	pcalau12i	$a0, %pc_hi20(.L__profc___ashrdi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ashrdi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	ld.bu	$a0, $fp, -28
	andi	$a0, $a0, 32
	beqz	$a0, .LBB132_2
	b	.LBB132_1
.LBB132_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___ashrdi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ashrdi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -36
	srai.w	$a0, $a0, 31
	st.w	$a0, $fp, -44
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -28
	addi.w	$a1, $a1, -32
	sra.w	$a0, $a0, $a1
	st.w	$a0, $fp, -48
	b	.LBB132_5
.LBB132_2:
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB132_4
	b	.LBB132_3
.LBB132_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___ashrdi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ashrdi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB132_6
.LBB132_4:
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -28
	sra.w	$a0, $a0, $a1
	st.w	$a0, $fp, -44
	ld.w	$a0, $fp, -36
	ld.w	$a2, $fp, -28
	move	$a1, $zero
	sub.w	$a1, $a1, $a2
	sll.w	$a0, $a0, $a1
	ld.w	$a1, $fp, -40
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -48
	b	.LBB132_5
.LBB132_5:
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB132_6
.LBB132_6:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end132:
	.size	__ashrdi3, .Lfunc_end132-__ashrdi3
                                        # -- End function
	.globl	__bswapdi2                      # -- Begin function __bswapdi2
	.p2align	5
	.type	__bswapdi2,@function
__bswapdi2:                             # @__bswapdi2
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___bswapdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___bswapdi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a2, $fp, -16
	ld.w	$a1, $fp, -12
	srli.w	$a0, $a1, 24
	lu12i.w	$a3, 4080
	and	$a4, $a1, $a3
	srli.w	$a4, $a4, 8
	or	$a0, $a0, $a4
	bstrpick.w	$a4, $a1, 15, 8
	slli.w	$a4, $a4, 16
	or	$a0, $a0, $a4
	slli.w	$a1, $a1, 24
	or	$a0, $a0, $a1
	srli.w	$a1, $a2, 24
	and	$a3, $a2, $a3
	srli.w	$a3, $a3, 8
	or	$a1, $a1, $a3
	bstrpick.w	$a3, $a2, 15, 8
	slli.w	$a3, $a3, 16
	or	$a1, $a1, $a3
	slli.w	$a2, $a2, 24
	or	$a1, $a1, $a2
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end133:
	.size	__bswapdi2, .Lfunc_end133-__bswapdi2
                                        # -- End function
	.globl	__bswapsi2                      # -- Begin function __bswapsi2
	.p2align	5
	.type	__bswapsi2,@function
__bswapsi2:                             # @__bswapsi2
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc___bswapsi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___bswapsi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -12
	srli.w	$a0, $a1, 24
	lu12i.w	$a2, 4080
	and	$a2, $a1, $a2
	srli.w	$a2, $a2, 8
	or	$a0, $a0, $a2
	bstrpick.w	$a2, $a1, 15, 8
	slli.w	$a2, $a2, 16
	or	$a0, $a0, $a2
	slli.w	$a1, $a1, 24
	or	$a0, $a0, $a1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end134:
	.size	__bswapsi2, .Lfunc_end134-__bswapsi2
                                        # -- End function
	.globl	__clzsi2                        # -- Begin function __clzsi2
	.p2align	5
	.type	__clzsi2,@function
__clzsi2:                               # @__clzsi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc___clzsi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___clzsi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	ld.hu	$a0, $fp, -14
	slli.w	$a0, $a0, 16
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 4
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ori	$a0, $zero, 16
	sub.w	$a1, $a0, $a1
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	ld.bu	$a0, $fp, -15
	slli.w	$a0, $a0, 8
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 3
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ori	$a0, $zero, 8
	sub.w	$a1, $a0, $a1
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	andi	$a0, $a0, 240
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 2
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ori	$a0, $zero, 4
	sub.w	$a1, $a0, $a1
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	andi	$a0, $a0, 12
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	ori	$a1, $zero, 2
	sub.w	$a2, $a1, $a0
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a2
	st.w	$a0, $fp, -16
	ld.w	$a2, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a2
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	ld.w	$a2, $fp, -16
	sub.w	$a1, $a1, $a2
	andi	$a2, $a2, 2
	sltui	$a3, $a2, 1
	move	$a2, $zero
	sub.w	$a2, $a2, $a3
	and	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end135:
	.size	__clzsi2, .Lfunc_end135-__clzsi2
                                        # -- End function
	.globl	__cmpdi2                        # -- Begin function __cmpdi2
	.p2align	5
	.type	__cmpdi2,@function
__cmpdi2:                               # @__cmpdi2
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a2, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc___cmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmpdi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	st.w	$a1, $fp, -44
	st.w	$a0, $fp, -48
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -44
	bge	$a0, $a1, .LBB136_2
	b	.LBB136_1
.LBB136_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmpdi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_2:
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -44
	bge	$a0, $a1, .LBB136_4
	b	.LBB136_3
.LBB136_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmpdi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_4:
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -48
	bgeu	$a0, $a1, .LBB136_6
	b	.LBB136_5
.LBB136_5:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmpdi2)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_6:
	ld.w	$a1, $fp, -40
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB136_8
	b	.LBB136_7
.LBB136_7:
	pcalau12i	$a0, %pc_hi20(.L__profc___cmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___cmpdi2)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_8:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_9:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end136:
	.size	__cmpdi2, .Lfunc_end136-__cmpdi2
                                        # -- End function
	.globl	__aeabi_lcmp                    # -- Begin function __aeabi_lcmp
	.p2align	5
	.type	__aeabi_lcmp,@function
__aeabi_lcmp:                           # @__aeabi_lcmp
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc___aeabi_lcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___aeabi_lcmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -12
	ld.w	$a0, $fp, -16
	ld.w	$a3, $fp, -20
	ld.w	$a2, $fp, -24
	bl	__cmpdi2
	addi.w	$a0, $a0, -1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end137:
	.size	__aeabi_lcmp, .Lfunc_end137-__aeabi_lcmp
                                        # -- End function
	.globl	__ctzsi2                        # -- Begin function __ctzsi2
	.p2align	5
	.type	__ctzsi2,@function
__ctzsi2:                               # @__ctzsi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc___ctzsi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ctzsi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	ld.hu	$a0, $fp, -16
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 4
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -20
	st.w	$a0, $fp, -24
	ld.bu	$a0, $fp, -16
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 3
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	andi	$a0, $a0, 15
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 2
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	andi	$a0, $a0, 3
	sltui	$a0, $a0, 1
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	andi	$a0, $a0, 3
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	ld.w	$a2, $fp, -16
	srli.w	$a3, $a2, 1
	ori	$a1, $zero, 2
	sub.w	$a1, $a1, $a3
	andi	$a2, $a2, 1
	addi.w	$a2, $a2, -1
	and	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end138:
	.size	__ctzsi2, .Lfunc_end138-__ctzsi2
                                        # -- End function
	.globl	__lshrdi3                       # -- Begin function __lshrdi3
	.p2align	5
	.type	__lshrdi3,@function
__lshrdi3:                              # @__lshrdi3
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a2, $fp, -28
	pcalau12i	$a0, %pc_hi20(.L__profc___lshrdi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___lshrdi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 32
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	ld.bu	$a0, $fp, -28
	andi	$a0, $a0, 32
	beqz	$a0, .LBB139_2
	b	.LBB139_1
.LBB139_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___lshrdi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___lshrdi3)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -44
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -28
	addi.w	$a1, $a1, -32
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -48
	b	.LBB139_5
.LBB139_2:
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB139_4
	b	.LBB139_3
.LBB139_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___lshrdi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___lshrdi3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB139_6
.LBB139_4:
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -28
	srl.w	$a0, $a0, $a1
	st.w	$a0, $fp, -44
	ld.w	$a0, $fp, -36
	ld.w	$a2, $fp, -28
	move	$a1, $zero
	sub.w	$a1, $a1, $a2
	sll.w	$a0, $a0, $a1
	ld.w	$a1, $fp, -40
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -48
	b	.LBB139_5
.LBB139_5:
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB139_6
.LBB139_6:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end139:
	.size	__lshrdi3, .Lfunc_end139-__lshrdi3
                                        # -- End function
	.globl	__muldsi3                       # -- Begin function __muldsi3
	.p2align	5
	.type	__muldsi3,@function
__muldsi3:                              # @__muldsi3
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___muldsi3)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___muldsi3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ori	$a0, $zero, 16
	st.w	$a0, $fp, -28
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, -32
	ld.hu	$a0, $fp, -12
	ld.hu	$a1, $fp, -16
	mul.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.hu	$a0, $fp, -22
	st.w	$a0, $fp, -36
	ld.hu	$a0, $fp, -24
	st.w	$a0, $fp, -24
	ld.hu	$a0, $fp, -10
	ld.hu	$a1, $fp, -16
	mul.w	$a1, $a0, $a1
	ld.w	$a0, $fp, -36
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	slli.w	$a1, $a0, 16
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.hu	$a0, $fp, -34
	st.w	$a0, $fp, -20
	ld.hu	$a0, $fp, -22
	st.w	$a0, $fp, -36
	ld.hu	$a0, $fp, -24
	st.w	$a0, $fp, -24
	ld.hu	$a0, $fp, -14
	ld.hu	$a1, $fp, -12
	mul.w	$a1, $a0, $a1
	ld.w	$a0, $fp, -36
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	slli.w	$a1, $a0, 16
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -24
	ld.hu	$a1, $fp, -34
	ld.w	$a0, $fp, -20
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	ld.hu	$a0, $fp, -10
	ld.hu	$a1, $fp, -14
	mul.w	$a1, $a0, $a1
	ld.w	$a0, $fp, -20
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end140:
	.size	__muldsi3, .Lfunc_end140-__muldsi3
                                        # -- End function
	.globl	__muldi3_compiler_rt            # -- Begin function __muldi3_compiler_rt
	.p2align	5
	.type	__muldi3_compiler_rt,@function
__muldi3_compiler_rt:                   # @__muldi3_compiler_rt
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc___muldi3_compiler_rt)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___muldi3_compiler_rt)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -40
	bl	__muldsi3
	st.w	$a1, $fp, -44
	st.w	$a0, $fp, -48
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -40
	mul.w	$a0, $a0, $a1
	ld.w	$a1, $fp, -32
	ld.w	$a2, $fp, -36
	mul.w	$a1, $a1, $a2
	add.w	$a1, $a0, $a1
	ld.w	$a0, $fp, -44
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -44
	ld.w	$a0, $fp, -48
	ld.w	$a1, $fp, -44
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end141:
	.size	__muldi3_compiler_rt, .Lfunc_end141-__muldi3_compiler_rt
                                        # -- End function
	.globl	__negdi2                        # -- Begin function __negdi2
	.p2align	5
	.type	__negdi2,@function
__negdi2:                               # @__negdi2
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___negdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___negdi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a2, $fp, -12
	ld.w	$a3, $fp, -16
	move	$a1, $zero
	sub.w	$a0, $a1, $a3
	sltu	$a3, $zero, $a3
	add.w	$a2, $a2, $a3
	sub.w	$a1, $a1, $a2
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end142:
	.size	__negdi2, .Lfunc_end142-__negdi2
                                        # -- End function
	.globl	__paritydi2                     # -- Begin function __paritydi2
	.p2align	5
	.type	__paritydi2,@function
__paritydi2:                            # @__paritydi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___paritydi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___paritydi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	srli.w	$a1, $a0, 16
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	srli.w	$a1, $a0, 8
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	srli.w	$a1, $a0, 4
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	andi	$a1, $a0, 15
	lu12i.w	$a0, 6
	ori	$a0, $a0, 2454
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end143:
	.size	__paritydi2, .Lfunc_end143-__paritydi2
                                        # -- End function
	.globl	__paritysi2                     # -- Begin function __paritysi2
	.p2align	5
	.type	__paritysi2,@function
__paritysi2:                            # @__paritysi2
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc___paritysi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___paritysi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 16
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 8
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 4
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	andi	$a1, $a0, 15
	lu12i.w	$a0, 6
	ori	$a0, $a0, 2454
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end144:
	.size	__paritysi2, .Lfunc_end144-__paritysi2
                                        # -- End function
	.globl	__popcountdi2                   # -- Begin function __popcountdi2
	.p2align	5
	.type	__popcountdi2,@function
__popcountdi2:                          # @__popcountdi2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r5
                                        # kill: def $r6 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___popcountdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___popcountdi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	srli.w	$a2, $a1, 1
	srli.w	$a4, $a0, 1
	lu12i.w	$a3, 349525
	ori	$a3, $a3, 1365
	and	$a4, $a4, $a3
	and	$a2, $a2, $a3
	sltu	$a3, $a1, $a2
	sub.w	$a0, $a0, $a4
	sub.w	$a0, $a0, $a3
	sub.w	$a1, $a1, $a2
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	ld.w	$a3, $fp, -20
	srli.w	$a0, $a3, 2
	srli.w	$a2, $a1, 2
	lu12i.w	$a4, 209715
	ori	$a4, $a4, 819
	and	$a2, $a2, $a4
	and	$a0, $a0, $a4
	and	$a1, $a1, $a4
	and	$a3, $a3, $a4
	add.w	$a0, $a0, $a3
	add.w	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	add.w	$a0, $a0, $a2
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	ld.w	$a2, $fp, -24
	ld.w	$a0, $fp, -20
	slli.w	$a3, $a0, 28
	srli.w	$a1, $a2, 4
	or	$a1, $a1, $a3
	srli.w	$a3, $a0, 4
	add.w	$a0, $a0, $a3
	add.w	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	add.w	$a0, $a0, $a2
	lu12i.w	$a2, 61680
	ori	$a2, $a2, 3855
	and	$a0, $a0, $a2
	and	$a1, $a1, $a2
	st.w	$a1, $fp, -24
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -24
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	srli.w	$a1, $a0, 16
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	srli.w	$a1, $a0, 8
	add.w	$a0, $a0, $a1
	andi	$a0, $a0, 127
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end145:
	.size	__popcountdi2, .Lfunc_end145-__popcountdi2
                                        # -- End function
	.globl	__popcountsi2                   # -- Begin function __popcountsi2
	.p2align	5
	.type	__popcountsi2,@function
__popcountsi2:                          # @__popcountsi2
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	pcalau12i	$a0, %pc_hi20(.L__profc___popcountsi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___popcountsi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 1
	lu12i.w	$a2, 349525
	ori	$a2, $a2, 1365
	and	$a1, $a1, $a2
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -16
	srli.w	$a0, $a1, 2
	lu12i.w	$a2, 209715
	ori	$a2, $a2, 819
	and	$a0, $a0, $a2
	and	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 4
	add.w	$a0, $a0, $a1
	lu12i.w	$a1, 61680
	ori	$a1, $a1, 3855
	and	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 16
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 8
	add.w	$a0, $a0, $a1
	andi	$a0, $a0, 63
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end146:
	.size	__popcountsi2, .Lfunc_end146-__popcountsi2
                                        # -- End function
	.globl	__powidf2                       # -- Begin function __powidf2
	.p2align	5
	.type	__powidf2,@function
__powidf2:                              # @__powidf2
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r7 killed $r5
                                        # kill: def $r7 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a2, $fp, -20
	pcalau12i	$a0, %pc_hi20(.L__profc___powidf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powidf2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 31
	st.w	$a0, $fp, -24
	lu12i.w	$a0, 261888
	st.w	$a0, $fp, -28
	move	$a0, $zero
	st.w	$a0, $fp, -32
	b	.LBB147_1
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___powidf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powidf2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB147_3
	b	.LBB147_2
.LBB147_2:                              #   in Loop: Header=BB147_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___powidf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powidf2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a2, $fp, -16
	ld.w	$a3, $fp, -12
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	bl	%plt(__muldf3)
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB147_3
.LBB147_3:                              #   in Loop: Header=BB147_1 Depth=1
	ld.w	$a0, $fp, -20
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	bnez	$a0, .LBB147_5
	b	.LBB147_4
.LBB147_4:
	pcalau12i	$a0, %pc_hi20(.L__profc___powidf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powidf2)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB147_6
.LBB147_5:                              #   in Loop: Header=BB147_1 Depth=1
	ld.w	$a2, $fp, -16
	ld.w	$a3, $fp, -12
	move	$a0, $a2
	move	$a1, $a3
	bl	%plt(__muldf3)
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB147_1
.LBB147_6:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB147_8
	b	.LBB147_7
.LBB147_7:
	pcalau12i	$a0, %pc_hi20(.L__profc___powidf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powidf2)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	move	$a0, $zero
	lu12i.w	$a1, 261888
	bl	%plt(__divdf3)
	st.w	$a0, $fp, -40                   # 4-byte Folded Spill
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	b	.LBB147_9
.LBB147_8:
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -32
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB147_9
.LBB147_9:
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -36                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end147:
	.size	__powidf2, .Lfunc_end147-__powidf2
                                        # -- End function
	.globl	__powisf2                       # -- Begin function __powisf2
	.p2align	5
	.type	__powisf2,@function
__powisf2:                              # @__powisf2
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r6 killed $r4
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	pcalau12i	$a0, %pc_hi20(.L__profc___powisf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powisf2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -16
	srli.w	$a0, $a0, 31
	st.w	$a0, $fp, -20
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, -24
	b	.LBB148_1
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___powisf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powisf2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.bu	$a0, $fp, -16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB148_3
	b	.LBB148_2
.LBB148_2:                              #   in Loop: Header=BB148_1 Depth=1
	pcalau12i	$a0, %pc_hi20(.L__profc___powisf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powisf2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a1, $fp, -12
	ld.w	$a0, $fp, -24
	bl	%plt(__mulsf3)
	st.w	$a0, $fp, -24
	b	.LBB148_3
.LBB148_3:                              #   in Loop: Header=BB148_1 Depth=1
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	bnez	$a0, .LBB148_5
	b	.LBB148_4
.LBB148_4:
	pcalau12i	$a0, %pc_hi20(.L__profc___powisf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powisf2)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB148_6
.LBB148_5:                              #   in Loop: Header=BB148_1 Depth=1
	ld.w	$a1, $fp, -12
	move	$a0, $a1
	bl	%plt(__mulsf3)
	st.w	$a0, $fp, -12
	b	.LBB148_1
.LBB148_6:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB148_8
	b	.LBB148_7
.LBB148_7:
	pcalau12i	$a0, %pc_hi20(.L__profc___powisf2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___powisf2)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a1, $fp, -24
	lu12i.w	$a0, 260096
	bl	%plt(__divsf3)
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB148_9
.LBB148_8:
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB148_9
.LBB148_9:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end148:
	.size	__powisf2, .Lfunc_end148-__powisf2
                                        # -- End function
	.globl	__ucmpdi2                       # -- Begin function __ucmpdi2
	.p2align	5
	.type	__ucmpdi2,@function
__ucmpdi2:                              # @__ucmpdi2
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -20
	st.w	$a0, $fp, -24
	st.w	$a3, $fp, -28
	st.w	$a2, $fp, -32
	pcalau12i	$a0, %pc_hi20(.L__profc___ucmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ucmpdi2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -36
	st.w	$a0, $fp, -40
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	st.w	$a1, $fp, -44
	st.w	$a0, $fp, -48
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -44
	bgeu	$a0, $a1, .LBB149_2
	b	.LBB149_1
.LBB149_1:
	pcalau12i	$a0, %pc_hi20(.L__profc___ucmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ucmpdi2)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_2:
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -44
	bgeu	$a0, $a1, .LBB149_4
	b	.LBB149_3
.LBB149_3:
	pcalau12i	$a0, %pc_hi20(.L__profc___ucmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ucmpdi2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_4:
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -48
	bgeu	$a0, $a1, .LBB149_6
	b	.LBB149_5
.LBB149_5:
	pcalau12i	$a0, %pc_hi20(.L__profc___ucmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ucmpdi2)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_6:
	ld.w	$a1, $fp, -40
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB149_8
	b	.LBB149_7
.LBB149_7:
	pcalau12i	$a0, %pc_hi20(.L__profc___ucmpdi2)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___ucmpdi2)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_8:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_9:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end149:
	.size	__ucmpdi2, .Lfunc_end149-__ucmpdi2
                                        # -- End function
	.globl	__aeabi_ulcmp                   # -- Begin function __aeabi_ulcmp
	.p2align	5
	.type	__aeabi_ulcmp,@function
__aeabi_ulcmp:                          # @__aeabi_ulcmp
# %bb.0:
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
                                        # kill: def $r8 killed $r7
                                        # kill: def $r8 killed $r6
                                        # kill: def $r8 killed $r5
                                        # kill: def $r8 killed $r4
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	st.w	$a3, $fp, -20
	st.w	$a2, $fp, -24
	pcalau12i	$a0, %pc_hi20(.L__profc___aeabi_ulcmp)
	addi.w	$a1, $a0, %pc_lo12(.L__profc___aeabi_ulcmp)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	ld.w	$a1, $fp, -12
	ld.w	$a0, $fp, -16
	ld.w	$a3, $fp, -20
	ld.w	$a2, $fp, -24
	bl	__ucmpdi2
	addi.w	$a0, $a0, -1
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
	ret
.Lfunc_end150:
	.size	__aeabi_ulcmp, .Lfunc_end150-__aeabi_ulcmp
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
	.space	40
	.size	.L__profc_memmove, 40

	.type	.L__profd_memmove,@object       # @__profd_memmove
	.section	__llvm_prf_data,"awG",@progbits,__profc_memmove
	.p2align	3, 0x0
.L__profd_memmove:
	.dword	-306081897096246147             # 0xfbc09422e3668c7d
	.dword	-4061701397412038936            # 0xc7a1f0194f8c36e8
	.word	.L__profc_memmove-.L__profd_memmove
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1590863763861247346            # 0xe9ec1dd5e5026a8e
	.dword	1189690007454808                # 0x43a044a498458
	.word	.L__profc_memccpy-.L__profd_memccpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5708666158622859656             # 0x4f3941a01e026188
	.dword	4538308109                      # 0x10e81160d
	.word	.L__profc_memchr-.L__profd_memchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4679550853048924350            # 0xbf0ee54adfa48742
	.dword	4538045965                      # 0x10e7d160d
	.word	.L__profc_memcmp-.L__profd_memcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3893303423671325810             # 0x3607cad612bdd472
	.dword	17496                           # 0x4458
	.word	.L__profc_memcpy-.L__profd_memcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-548334422562728352             # 0xf863ecbf75079660
	.dword	9516882138200                   # 0x8a7d2611458
	.word	.L__profc_memrchr-.L__profd_memrchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2741574704065975695            # 0xd9f3f85506f36a71
	.dword	17496                           # 0x4458
	.word	.L__profc_memset-.L__profd_memset
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4454833295779690053             # 0x3dd2bf47a087f645
	.dword	17496                           # 0x4458
	.word	.L__profc_stpcpy-.L__profd_stpcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5039208642683934005             # 0x45eedd8fc8411535
	.dword	70911064                        # 0x43a0458
	.word	.L__profc_strchrnul-.L__profd_strchrnul
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5671522429266412413            # 0xb14ab4664bea3c83
	.dword	13914928649304                  # 0xca7d2611458
	.word	.L__profc_strchr-.L__profd_strchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1013198891307352868             # 0xe0f9b060331c324
	.dword	70906968                        # 0x439f458
	.word	.L__profc_strcmp-.L__profd_strcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2965136410638013299             # 0x292647db02a7d373
	.dword	17496                           # 0x4458
	.word	.L__profc_strlen-.L__profd_strlen
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6058495834680104774            # 0xabebe6233cb568ba
	.dword	7207353986825238351             # 0x6405aa43cb36b74f
	.word	.L__profc_strncmp-.L__profd_strncmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1619950660557759641            # 0xe984c77503cb9b67
	.dword	18193                           # 0x4711
	.word	.L__profc_swab-.L__profd_swab
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1429966999967671460            # 0xec27bc96fe655b5c
	.dword	1563                            # 0x61b
	.word	.L__profc_isalpha-.L__profd_isalpha
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4792250000779744687            # 0xbd7e8203c4a86a51
	.dword	1562                            # 0x61a
	.word	.L__profc_isascii-.L__profd_isascii
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2465200613623135234             # 0x223626e59b14fc02
	.dword	6354911                         # 0x60f7df
	.word	.L__profc_isblank-.L__profd_isblank
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8897732069425577183             # 0x7b7b182cc8b67cdf
	.dword	6354655                         # 0x60f6df
	.word	.L__profc_iscntrl-.L__profd_iscntrl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3483985654529092453             # 0x30599a7e6cc36b65
	.dword	1563                            # 0x61b
	.word	.L__profc_isdigit-.L__profd_isdigit
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-127227288456547236             # 0xfe3bff7489cfb45c
	.dword	1563                            # 0x61b
	.word	.L__profc_isgraph-.L__profd_isgraph
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7501983819047161697             # 0x681c66894508cf61
	.dword	1563                            # 0x61b
	.word	.L__profc_islower-.L__profd_islower
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7275761640889424986            # 0x9b074d56145f63a6
	.dword	1563                            # 0x61b
	.word	.L__profc_isprint-.L__profd_isprint
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	9032360604355461395             # 0x7d59641d39d70113
	.dword	6354907                         # 0x60f7db
	.word	.L__profc_isspace-.L__profd_isspace
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4174714232255583053             # 0x39ef9079c45c934d
	.dword	1563                            # 0x61b
	.word	.L__profc_isupper-.L__profd_isupper
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7000259844681188668             # 0x6125eb3d61a7453c
	.dword	106600273393371                 # 0x60f3cf6db6db
	.word	.L__profc_iswcntrl-.L__profd_iswcntrl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8583753245428091608             # 0x771f9e1919590ad8
	.dword	1563                            # 0x61b
	.word	.L__profc_iswdigit-.L__profd_iswdigit
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-719555261641779946             # 0xf603a04d49941516
	.dword	-2566119187471392224            # 0xdc635031e3742220
	.word	.L__profc_iswprint-.L__profd_iswprint
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	10                              # 0xa
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	624771703830219826              # 0x8aba28df0840c32
	.dword	6354651                         # 0x60f6db
	.word	.L__profc_iswxdigit-.L__profd_iswxdigit
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4548159975983457080             # 0x3f1e4f66a624a338
	.dword	24                              # 0x18
	.word	.L__profc_toascii-.L__profd_toascii
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3545869933759497925            # 0xceca8a150286f93b
	.dword	7369846577040809592             # 0x6646f46a29a55e78
	.word	.L__profc_fdim-.L__profd_fdim
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1547869627280940664            # 0xea84dcc6634da188
	.dword	7369846577040809592             # 0x6646f46a29a55e78
	.word	.L__profc_fdimf-.L__profd_fdimf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2423801789625842334            # 0xde5ced1d3b654562
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.word	.L__profc_fmax-.L__profd_fmax
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5134209104457391460            # 0xb8bfa0058e3da29c
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.word	.L__profc_fmaxf-.L__profd_fmaxf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3138580006960380340            # 0xd471861cd1fbc64c
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.word	.L__profc_fmaxl-.L__profd_fmaxl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	965427315610335377              # 0xd65e3074b69b891
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.word	.L__profc_fmin-.L__profd_fmin
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7710199602704325723             # 0x6b0021b0328c9c5b
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.word	.L__profc_fminf-.L__profd_fminf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2487418697363824514             # 0x2285162058091f82
	.dword	3977842549302548673             # 0x373422b91b9cd8c1
	.word	.L__profc_fminl-.L__profd_fminl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6158745991357604691            # 0xaa87bd26bb44dcad
	.dword	17496                           # 0x4458
	.word	.L__profc_l64a-.L__profd_l64a
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2085616837322687880            # 0xe30e668959ceba78
	.dword	0                               # 0x0
	.word	.L__profc_srand-.L__profd_srand
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7206085285791387956             # 0x6401286350c3d134
	.dword	24                              # 0x18
	.word	.L__profc_rand-.L__profd_rand
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5080349535175464041            # 0xb97ef903bd0bab97
	.dword	45786906010769                  # 0x29a49844a491
	.word	.L__profc_insque-.L__profd_insque
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7214219538753974334            # 0x9be1f18d54e30fc2
	.dword	11043906705                     # 0x29244a491
	.word	.L__profc_remque-.L__profd_remque
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7032153342590886098            # 0x9e68c5caf8cb5f2e
	.dword	1245367951758424                # 0x46ca7d2611458
	.word	.L__profc_lsearch-.L__profd_lsearch
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6350214982902907667            # 0xa7df811e30b57ced
	.dword	1245367951758424                # 0x46ca7d2611458
	.word	.L__profc_lfind-.L__profd_lfind
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-238465663743841031             # 0xfcb0ccbe056bacf9
	.dword	99164                           # 0x1835c
	.word	.L__profc_abs-.L__profd_abs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6544211519801369139            # 0xa52e4a4ba3385dcd
	.dword	638206505195021                 # 0x244720809160d
	.word	.L__profc_atoi-.L__profd_atoi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8236175749196770609             # 0x724cc634ee8f6d31
	.dword	638206505195021                 # 0x244720809160d
	.word	.L__profc_atol-.L__profd_atol
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3653807471789013357             # 0x32b4ee8971a6f96d
	.dword	638206505195021                 # 0x244720809160d
	.word	.L__profc_atoll-.L__profd_atoll
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8750110911118262334             # 0x796ea3837a79403e
	.dword	-852542619444921222             # 0xf42b29012c1abc7a
	.word	.L__profc_bsearch-.L__profd_bsearch
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1417097008757763708             # 0x13aa8a38ab466e7c
	.dword	1259382983000112142             # 0x117a3a2689e4bc0e
	.word	.L__profc_bsearch_r-.L__profd_bsearch_r
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5497092892325669176             # 0x4c4998dc58656938
	.dword	24                              # 0x18
	.word	.L__profc_div-.L__profd_div
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8946668544180752025             # 0x7c28f3a3b30e0e99
	.dword	99164                           # 0x1835c
	.word	.L__profc_imaxabs-.L__profd_imaxabs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3928426486442246988            # 0xc97b6cec9d5fbcb4
	.dword	24                              # 0x18
	.word	.L__profc_imaxdiv-.L__profd_imaxdiv
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7118441263952323418            # 0x9d363762b3a39ca6
	.dword	99164                           # 0x1835c
	.word	.L__profc_labs-.L__profd_labs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7149836041034155625             # 0x633951ff74204669
	.dword	24                              # 0x18
	.word	.L__profc_ldiv-.L__profd_ldiv
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7684789126781046466             # 0x6aa5dafebb918ec2
	.dword	99164                           # 0x1835c
	.word	.L__profc_llabs-.L__profd_llabs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5329156747615108898            # 0xb60b082c520680de
	.dword	24                              # 0x18
	.word	.L__profc_lldiv-.L__profd_lldiv
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2279810736707830048            # 0xe05c7c36c3687ee0
	.dword	4538308109                      # 0x10e81160d
	.word	.L__profc_wcschr-.L__profd_wcschr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3710185595167438704            # 0xcc82c5dbcd460890
	.dword	1188468208228060                # 0x438e7d160d6dc
	.word	.L__profc_wcscmp-.L__profd_wcscmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8381368184235816342            # 0x8baf660af6dd0a6a
	.dword	9304                            # 0x2458
	.word	.L__profc_wcscpy-.L__profd_wcscpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3988408974905483574             # 0x3759acd4c838a136
	.dword	17496                           # 0x4458
	.word	.L__profc_wcslen-.L__profd_wcslen
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5425166749483878188            # 0xb4b5ef95c9c0b8d4
	.dword	6710790269995215964             # 0x5d218431fd366c5c
	.word	.L__profc_wcsncmp-.L__profd_wcsncmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	10                              # 0xa
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-150916099757221660             # 0xfde7d69b5b1558e4
	.dword	4538308109                      # 0x10e81160d
	.word	.L__profc_wmemchr-.L__profd_wmemchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5386172057678365784             # 0x4abf86f3050dc458
	.dword	1189621521503964                # 0x439f45834d6dc
	.word	.L__profc_wmemcmp-.L__profd_wmemcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	6                               # 0x6
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7326050423799855187             # 0x65ab5c0b9d30b853
	.dword	9304                            # 0x2458
	.word	.L__profc_wmemcpy-.L__profd_wmemcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4659407939446788683            # 0xbf56752a69a3adb5
	.dword	-1500206092990891740            # 0xeb2e3281c166b924
	.word	.L__profc_wmemmove-.L__profd_wmemmove
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8291142148468431281            # 0x8ceff224f245264f
	.dword	9304                            # 0x2458
	.word	.L__profc_wmemset-.L__profd_wmemset
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8407331144368071880            # 0x8b5328de3edcdb38
	.dword	5234109875325077019             # 0x48a34b333a1d861b
	.word	.L__profc_bcopy-.L__profd_bcopy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4714666614722164144             # 0x416ddc4e84e875b0
	.dword	24                              # 0x18
	.word	.L__profc_rotl64-.L__profd_rotl64
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8427642833712987187            # 0x8b0aff7e8aabc3cd
	.dword	24                              # 0x18
	.word	.L__profc_rotr64-.L__profd_rotr64
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6417704780586152324             # 0x5910447ed829f184
	.dword	24                              # 0x18
	.word	.L__profc_rotl32-.L__profd_rotl32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5668908084823466940            # 0xb153fe21cbc1dc44
	.dword	24                              # 0x18
	.word	.L__profc_rotr32-.L__profd_rotr32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3686623714176605670            # 0xccd67b43b7f8e21a
	.dword	24                              # 0x18
	.word	.L__profc_rotl_sz-.L__profd_rotl_sz
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3415499704483829380             # 0x2f664ae29835d684
	.dword	24                              # 0x18
	.word	.L__profc_rotr_sz-.L__profd_rotr_sz
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7327166975465201445             # 0x65af538b0e939f25
	.dword	24                              # 0x18
	.word	.L__profc_rotl16-.L__profd_rotl16
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5274763753728838268             # 0x4933b9afe71d0a7c
	.dword	24                              # 0x18
	.word	.L__profc_rotr16-.L__profd_rotr16
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4408423234350850624             # 0x3d2ddd93270fa240
	.dword	24                              # 0x18
	.word	.L__profc_rotl8-.L__profd_rotl8
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6535801773217052896            # 0xa54c2aea59078720
	.dword	24                              # 0x18
	.word	.L__profc_rotr8-.L__profd_rotr8
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8870828063230114195            # 0x84e47ce04b9a466d
	.dword	24                              # 0x18
	.word	.L__profc_bswap_16-.L__profd_bswap_16
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7304833549461180700             # 0x655ffb691afd511c
	.dword	24                              # 0x18
	.word	.L__profc_bswap_32-.L__profd_bswap_32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2873856403134720854             # 0x27e1fd2c1c53ab56
	.dword	24                              # 0x18
	.word	.L__profc_bswap_64-.L__profd_bswap_64
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	9222170723057548859             # 0x7ffbbb6955da3e3b
	.dword	19458657686616                  # 0x11b292611458
	.word	.L__profc_ffs-.L__profd_ffs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	65216057573358521               # 0xe7b1a8a94fbbb9
	.dword	2952352215704664                # 0xa7d261111a458
	.word	.L__profc_libiberty_ffs-.L__profd_libiberty_ffs
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6535010584615638394             # 0x5ab10580b36ed57a
	.dword	6354652                         # 0x60f6dc
	.word	.L__profc_gl_isinff-.L__profd_gl_isinff
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-9165907066207032774            # 0x80cc28161a7caa3a
	.dword	6354652                         # 0x60f6dc
	.word	.L__profc_gl_isinfd-.L__profd_gl_isinfd
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4731159788068304891             # 0x41a874c2af6c77fb
	.dword	6354652                         # 0x60f6dc
	.word	.L__profc_gl_isinfl-.L__profd_gl_isinfl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3858125999267273921            # 0xca752ed84af9a33f
	.dword	0                               # 0x0
	.word	.L__profc__Qp_itoq-.L__profd__Qp_itoq
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2560632889718296859            # 0xdc76cdf42028aee5
	.dword	-2048372819454505383            # 0xe392b7c600d94e59
	.word	.L__profc_ldexpf-.L__profd_ldexpf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	8                               # 0x8
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-240549059163932437             # 0xfca965e7b97ab8eb
	.dword	-2048372819454505383            # 0xe392b7c600d94e59
	.word	.L__profc_ldexp-.L__profd_ldexp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	8                               # 0x8
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5097262943286299417            # 0xb942e25c0aa874e7
	.dword	-2048372819454505383            # 0xe392b7c600d94e59
	.word	.L__profc_ldexpl-.L__profd_ldexpl
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	8                               # 0x8
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8368025376422999318            # 0x8bdecd417eda4aea
	.dword	1164376                         # 0x11c458
	.word	.L__profc_memxor-.L__profd_memxor
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3582483947543505905            # 0xce4875d49d21540f
	.dword	76123606467028056               # 0x10e72044a7d2458
	.word	.L__profc_strncat-.L__profd_strncat
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	517590790318988421              # 0x72eda14dbfa1c85
	.dword	4537021528                      # 0x10e6d7458
	.word	.L__profc_strnlen-.L__profd_strnlen
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6867074718569872870            # 0xa0b33fed4193c21a
	.dword	-4444802448421279214            # 0xc250e3b905102a12
	.word	.L__profc_strpbrk-.L__profd_strpbrk
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5307837722043833871             # 0x49a93a493bd75e0f
	.dword	217420731480                    # 0x329f491458
	.word	.L__profc_strrchr-.L__profd_strrchr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3560562421867190603             # 0x3169a8a873ff994b
	.dword	-7798267876297541628            # 0x93c6fcaef9f1f804
	.word	.L__profc_strstr-.L__profd_strstr
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-9076603418344796971            # 0x82096d47ea764cd5
	.dword	4200982705386070127             # 0x3a4ce3834618a06f
	.word	.L__profc_copysign-.L__profd_copysign
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7485463843177831536            # 0x981e4a4b585ae390
	.dword	5508063777036862020             # 0x4c7092d27e7a8244
	.word	.L__profc_memmem-.L__profd_memmem
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-722907995699078206             # 0xf5f7b7020f111bc2
	.dword	24                              # 0x18
	.word	.L__profc_mempcpy-.L__profd_mempcpy
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2997169543230593137            # 0xd667ea2e1c1ee78f
	.dword	-2373782428686282824            # 0xdf0ea1753c170fb8
	.word	.L__profc_frexp-.L__profd_frexp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3987271357918321816             # 0x3755a22cafcf9c98
	.dword	2320045144                      # 0x8a491458
	.word	.L__profc___muldi3-.L__profd___muldi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4670832108574850701             # 0x40d2210e3d17be8d
	.dword	842736872197088594              # 0xbb200b8626e6552
	.word	.L__profc_udivmodsi4-.L__profd_udivmodsi4
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7858138078702729622            # 0x92f2490d36f4066a
	.dword	187824153796641880              # 0x29b49129f498458
	.word	.L__profc___clrsbqi2-.L__profd___clrsbqi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1533375985051215657            # 0xeab85aaa6fe858d7
	.dword	187824153796641880              # 0x29b49129f498458
	.word	.L__profc___clrsbdi2-.L__profd___clrsbdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5127670123023436031             # 0x472924cf303208ff
	.dword	2320045144                      # 0x8a491458
	.word	.L__profc___mulsi3-.L__profd___mulsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1458405851566781960             # 0x143d4c6520fd3608
	.dword	-6411111704588201945            # 0xa70727df48abd027
	.word	.L__profc___cmovd-.L__profd___cmovd
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1240290101804783090            # 0xeec99ab9477e2a0e
	.dword	3130117398598530023             # 0x2b706930a0bc33e7
	.word	.L__profc___cmovh-.L__profd___cmovh
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6631700889337257300            # 0xa3f7772d6a6922ac
	.dword	-6411111704588201945            # 0xa70727df48abd027
	.word	.L__profc___cmovw-.L__profd___cmovw
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4130297501716739761             # 0x3951c3b1ce8276b1
	.dword	24                              # 0x18
	.word	.L__profc___modi-.L__profd___modi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3793169221884876252            # 0xcb5bf4b0949b6a24
	.dword	24                              # 0x18
	.word	.L__profc___uitod-.L__profd___uitod
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2684105554667313846             # 0x253fdbc7ed991ab6
	.dword	24                              # 0x18
	.word	.L__profc___uitof-.L__profd___uitof
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3995277539005434566             # 0x377213c0fb840ac6
	.dword	24                              # 0x18
	.word	.L__profc___ulltod-.L__profd___ulltod
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1906554817873249395            # 0xe58a8e7e97dafb8d
	.dword	24                              # 0x18
	.word	.L__profc___ulltof-.L__profd___ulltof
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6154071623751134202             # 0x5567a7893fff6bfa
	.dword	24                              # 0x18
	.word	.L__profc___umodi-.L__profd___umodi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-9221703320275173474            # 0x8005edb05af53f9e
	.dword	19458657162328                  # 0x11b292591458
	.word	.L__profc___clzhi2-.L__profd___clzhi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1569202989881991136            # 0xea391231d79a6020
	.dword	19458657162328                  # 0x11b292591458
	.word	.L__profc___ctzhi2-.L__profd___ctzhi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-7800469359816066749            # 0x93bf2a7226d83943
	.dword	11245552728                     # 0x29e498458
	.word	.L__profc___fixunssfsi-.L__profd___fixunssfsi
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	2                               # 0x2
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1203893203113466329             # 0x10b5167d5f15d9d9
	.dword	304041497688                    # 0x46ca491458
	.word	.L__profc___parityhi2-.L__profd___parityhi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3943219574947026310             # 0x36b9214fb4159586
	.dword	304041497688                    # 0x46ca491458
	.word	.L__profc___popcounthi2-.L__profd___popcounthi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3976353352410196972            # 0xc8d127b190281414
	.dword	171971253336                    # 0x280a491458
	.word	.L__profc___mulsi3_iq2000-.L__profd___mulsi3_iq2000
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2775651425054705869             # 0x26851843dab148cd
	.dword	-6210685127595396365            # 0xa9cf36c835dff2f3
	.word	.L__profc___mulsi3_lm32-.L__profd___mulsi3_lm32
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-6720389007632434094            # 0xa2bc61cdbfa0fc52
	.dword	842736872197088594              # 0xbb200b8626e6552
	.word	.L__profc___udivmodsi4-.L__profd___udivmodsi4
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6399771733438470391             # 0x58d08e7bef2f98f7
	.dword	1352614535537600836             # 0x12c573c0ecbfa944
	.word	.L__profc___mspabi_cmpf-.L__profd___mspabi_cmpf
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5775354270414500759            # 0xafd9d1e3e3e88c69
	.dword	1352614535537600836             # 0x12c573c0ecbfa944
	.word	.L__profc___mspabi_cmpd-.L__profd___mspabi_cmpd
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-359228324547500507             # 0xfb03c3bdfa166625
	.dword	24                              # 0x18
	.word	.L__profc___mspabi_mpysll-.L__profd___mspabi_mpysll
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	6629829186354316853             # 0x5c01e284c62a8635
	.dword	24                              # 0x18
	.word	.L__profc___mspabi_mpyull-.L__profd___mspabi_mpyull
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-4671748085078636676            # 0xbf2a9dde5cc6c77c
	.dword	-5374843387156864121            # 0xb568b86aa1286387
	.word	.L__profc___mulhi3-.L__profd___mulhi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	7                               # 0x7
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	5631431475223784324             # 0x4e26dd1711aaeb84
	.dword	510575534943447681              # 0x715edbe6f4f2a81
	.word	.L__profc___divsi3-.L__profd___divsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-8995696579390192574            # 0x8328dd9f4e404442
	.dword	2121116644152358499             # 0x1d6fb85985deb663
	.word	.L__profc___modsi3-.L__profd___modsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	4                               # 0x4
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	2241631039268115874             # 0x1f1bdf8db510d5a2
	.dword	842736872197088594              # 0xbb200b8626e6552
	.word	.L__profc___udivmodhi4-.L__profd___udivmodhi4
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1484205535638993157            # 0xeb670aedd291c6fb
	.dword	842736872197088594              # 0xbb200b8626e6552
	.word	.L__profc___udivmodsi4_libgcc-.L__profd___udivmodsi4_libgcc
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	9                               # 0x9
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	3719210884952086607             # 0x339d4a983a55d84f
	.dword	185294818348438616              # 0x2924ca7d2611458
	.word	.L__profc___ashldi3-.L__profd___ashldi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1855717345837424946            # 0xe63f2ae7edd45ece
	.dword	185294818348438616              # 0x2924ca7d2611458
	.word	.L__profc___ashrdi3-.L__profd___ashrdi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	9149352740892555196             # 0x7ef907d7ada5b7bc
	.dword	24                              # 0x18
	.word	.L__profc___bswapdi2-.L__profd___bswapdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3374945843358245974            # 0xd129c8a2fe735baa
	.dword	24                              # 0x18
	.word	.L__profc___bswapsi2-.L__profd___bswapsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	1382681549752930563             # 0x1330458b32829103
	.dword	33814345247                     # 0x7df7df61f
	.word	.L__profc___clzsi2-.L__profd___clzsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5499644794300757496            # 0xb3ad5632ace08a08
	.dword	-7406659272189927428            # 0x993642a254c41ffc
	.word	.L__profc___cmpdi2-.L__profd___cmpdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	7067747365298492588             # 0x6215aec83ed1d4ac
	.dword	24                              # 0x18
	.word	.L__profc___aeabi_lcmp-.L__profd___aeabi_lcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5501728155980453225            # 0xb3a5ef643c052a97
	.dword	33814345247                     # 0x7df7df61f
	.word	.L__profc___ctzsi2-.L__profd___ctzsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	10441766047587925               # 0x2518bb1c181e55
	.dword	185294818348438616              # 0x2924ca7d2611458
	.word	.L__profc___lshrdi3-.L__profd___lshrdi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	3                               # 0x3
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4756674255824047264             # 0x42031a08a2a34ca0
	.dword	24                              # 0x18
	.word	.L__profc___muldsi3-.L__profd___muldsi3
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-737717619142303851             # 0xf5c319bbe679df95
	.dword	24                              # 0x18
	.word	.L__profc___muldi3_compiler_rt-.L__profd___muldi3_compiler_rt
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2796404983763388037            # 0xd9312c7bb6a6b97b
	.dword	24                              # 0x18
	.word	.L__profc___negdi2-.L__profd___negdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-5102883611502574357            # 0xb92eea643e3a04eb
	.dword	24                              # 0x18
	.word	.L__profc___paritydi2-.L__profd___paritydi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	8495812714014201054             # 0x75e730a6911054de
	.dword	24                              # 0x18
	.word	.L__profc___paritysi2-.L__profd___paritysi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	4342496508124198892             # 0x3c43a5910d1df7ec
	.dword	24                              # 0x18
	.word	.L__profc___popcountdi2-.L__profd___popcountdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2149276146439341705            # 0xe22c3cbb6f433977
	.dword	24                              # 0x18
	.word	.L__profc___popcountsi2-.L__profd___popcountsi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-1752541073601039051            # 0xe7adb92dcdba7535
	.dword	-4868838055443737378            # 0xbc6e6995b45f54de
	.word	.L__profc___powidf2-.L__profd___powidf2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-3807360110918407144            # 0xcb298a26c0b76c18
	.dword	-4868838055443737378            # 0xbc6e6995b45f54de
	.word	.L__profc___powisf2-.L__profd___powisf2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	-2044349310657886323            # 0xe3a10322256c078d
	.dword	-7406659272189927428            # 0x993642a254c41ffc
	.word	.L__profc___ucmpdi2-.L__profd___ucmpdi2
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	5                               # 0x5
	.space	6
	.space	2
	.word	0                               # 0x0
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
	.dword	448670595368434735              # 0x639ff8782193c2f
	.dword	24                              # 0x18
	.word	.L__profc___aeabi_ulcmp-.L__profd___aeabi_ulcmp
	.word	0                               # 0x0
	.word	0
	.word	0
	.word	1                               # 0x1
	.space	6
	.space	2
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
