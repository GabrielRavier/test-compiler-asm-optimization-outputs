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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	bgeu	$a0, $a1, .LBB0_6
	b	.LBB0_1
.LBB0_1:
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
	b	.LBB0_8
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB0_11
	b	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_8 Depth=1
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
	beqz	$a0, .LBB1_3
	b	.LBB1_2
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $fp, -36
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	st.b	$a0, $a1, 0
	ld.w	$a1, $fp, -24
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -40                   # 4-byte Folded Spill
	b	.LBB1_3
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_6
	b	.LBB1_4
.LBB1_4:                                #   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_5
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
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
.LBB1_6:
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB1_8
	b	.LBB1_7
.LBB1_7:
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB1_9
.LBB1_8:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB1_9
.LBB1_9:
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
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.bu	$a0, $fp, -16
	st.w	$a0, $fp, -16
	b	.LBB2_1
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	beqz	$a0, .LBB2_3
	b	.LBB2_2
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB2_3
.LBB2_3:                                #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB2_6
	b	.LBB2_4
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_5
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	b	.LBB2_1
.LBB2_6:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB2_8
	b	.LBB2_7
.LBB2_7:
	ld.w	$a0, $fp, -24
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB2_9
.LBB2_8:
	move	$a0, $zero
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB2_9
.LBB2_9:
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	b	.LBB3_1
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -32                   # 4-byte Folded Spill
	beqz	$a0, .LBB3_3
	b	.LBB3_2
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	ld.bu	$a1, $a1, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB3_3
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_6
	b	.LBB3_4
.LBB3_4:                                #   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_5
.LBB3_5:                                #   in Loop: Header=BB3_1 Depth=1
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
.LBB3_6:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB3_8
	b	.LBB3_7
.LBB3_7:
	ld.w	$a0, $fp, -24
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -28
	ld.bu	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB3_9
.LBB3_8:
	move	$a0, $zero
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB3_9
.LBB3_9:
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
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
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -24
	add.w	$a0, $a0, $a1
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -20
	bne	$a0, $a1, .LBB5_4
	b	.LBB5_3
.LBB5_3:
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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	b	.LBB6_1
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB6_4
	b	.LBB6_2
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
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
	b	.LBB7_1
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -12
	st.b	$a0, $a1, 0
	beqz	$a0, .LBB7_4
	b	.LBB7_2
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
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
	ld.bu	$a0, $fp, -16
	st.w	$a0, $fp, -16
	b	.LBB8_1
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB8_3
	b	.LBB8_2
.LBB8_2:                                #   in Loop: Header=BB8_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB8_3
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB8_6
	b	.LBB8_4
.LBB8_4:                                #   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_5
.LBB8_5:                                #   in Loop: Header=BB8_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB8_1
.LBB8_6:
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
	b	.LBB9_1
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -20
	bne	$a0, $a1, .LBB9_3
	b	.LBB9_2
.LBB9_2:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB9_6
.LBB9_3:                                #   in Loop: Header=BB9_1 Depth=1
	b	.LBB9_4
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	ld.w	$a0, $fp, -16
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -16
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB9_1
	b	.LBB9_5
.LBB9_5:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB9_6
.LBB9_6:
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
	b	.LBB10_1
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.b	$a1, $a1, 0
	move	$a2, $zero
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB10_3
	b	.LBB10_2
.LBB10_2:                               #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB10_3
.LBB10_3:                               #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB10_6
	b	.LBB10_4
.LBB10_4:                               #   in Loop: Header=BB10_1 Depth=1
	b	.LBB10_5
.LBB10_5:                               #   in Loop: Header=BB10_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB10_1
.LBB10_6:
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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB11_1
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB11_4
	b	.LBB11_2
.LBB11_2:                               #   in Loop: Header=BB11_1 Depth=1
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
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB12_11
.LBB12_2:
	b	.LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB12_7
	b	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, -32
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB12_7
	b	.LBB12_5
.LBB12_5:                               #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, -24
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB12_7
	b	.LBB12_6
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, -28
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	ld.bu	$a1, $a1, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB12_7
.LBB12_7:                               #   in Loop: Header=BB12_3 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB12_10
	b	.LBB12_8
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=1
	b	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=1
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
.LBB12_10:
	ld.w	$a0, $fp, -28
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	ld.bu	$a1, $a1, 0
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB12_11
.LBB12_11:
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
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB16_2
	b	.LBB16_1
.LBB16_1:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -9
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB16_2
.LBB16_2:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end16:
	.size	isblank, .Lfunc_end16-isblank
                                        # -- End function
	.globl	iscntrl                         # -- Begin function iscntrl
	.p2align	5
	.type	iscntrl,@function
iscntrl:                                # @iscntrl
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB17_2
	b	.LBB17_1
.LBB17_1:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -127
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB17_2
.LBB17_2:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
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
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	beq	$a0, $a1, .LBB22_2
	b	.LBB22_1
.LBB22_1:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -9
	sltui	$a0, $a0, 5
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB22_2
.LBB22_2:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
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
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -12
	ori	$a2, $zero, 1
	ori	$a1, $zero, 32
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB24_4
	b	.LBB24_1
.LBB24_1:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -127
	ori	$a2, $zero, 1
	ori	$a1, $zero, 33
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB24_4
	b	.LBB24_2
.LBB24_2:
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4056
	add.w	$a0, $a0, $a1
	ori	$a2, $zero, 1
	ori	$a1, $zero, 2
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB24_4
	b	.LBB24_3
.LBB24_3:
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -16
	ori	$a1, $a1, 7
	add.w	$a0, $a0, $a1
	sltui	$a0, $a0, 3
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB24_4
.LBB24_4:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
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
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 254
	bltu	$a0, $a1, .LBB26_2
	b	.LBB26_1
.LBB26_1:
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	andi	$a1, $a0, 127
	ori	$a0, $zero, 32
	sltu	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB26_10
.LBB26_2:
	ld.w	$a0, $fp, -16
	srli.w	$a0, $a0, 3
	ori	$a1, $zero, 1029
	bltu	$a0, $a1, .LBB26_5
	b	.LBB26_3
.LBB26_3:
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, -3
	ori	$a1, $a1, 4054
	add.w	$a0, $a0, $a1
	lu12i.w	$a1, 11
	ori	$a1, $a1, 2006
	bltu	$a0, $a1, .LBB26_5
	b	.LBB26_4
.LBB26_4:
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, -14
	add.w	$a1, $a0, $a1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4088
	bltu	$a0, $a1, .LBB26_6
	b	.LBB26_5
.LBB26_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB26_10
.LBB26_6:
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, -16
	ori	$a1, $a1, 4
	add.w	$a1, $a0, $a1
	lu12i.w	$a0, 256
	ori	$a0, $a0, 3
	bltu	$a0, $a1, .LBB26_8
	b	.LBB26_7
.LBB26_7:
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 15, 1
	slli.w	$a0, $a0, 1
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4094
	bne	$a0, $a1, .LBB26_9
	b	.LBB26_8
.LBB26_8:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB26_10
.LBB26_9:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -12
	b	.LBB26_10
.LBB26_10:
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
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, -48
	ori	$a2, $zero, 1
	ori	$a1, $zero, 10
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bltu	$a0, $a1, .LBB27_2
	b	.LBB27_1
.LBB27_1:
	ld.w	$a0, $fp, -12
	ori	$a0, $a0, 32
	addi.w	$a0, $a0, -97
	sltui	$a0, $a0, 6
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB27_2
.LBB27_2:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
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
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB30_2
	b	.LBB30_1
.LBB30_1:
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
	ld.w	$a1, $fp, -20
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB31_7
	b	.LBB31_6
.LBB31_6:
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
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB32_2
	b	.LBB32_1
.LBB32_1:
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
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB32_7
	b	.LBB32_6
.LBB32_6:
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
	ld.w	$a1, $fp, -36
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB33_7
	b	.LBB33_6
.LBB33_6:
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
	ld.w	$a1, $fp, -20
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB34_7
	b	.LBB34_6
.LBB34_6:
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
	ld.w	$a0, $fp, -16
	bstrpick.w	$a0, $a0, 30, 0
	lu12i.w	$a1, 522240
	ori	$a1, $a1, 1
	blt	$a0, $a1, .LBB35_2
	b	.LBB35_1
.LBB35_1:
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
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB35_7
	b	.LBB35_6
.LBB35_6:
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
	ld.w	$a1, $fp, -36
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB36_7
	b	.LBB36_6
.LBB36_6:
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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -24
	bnez	$a0, .LBB40_2
	b	.LBB40_1
.LBB40_1:
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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB41_2
	b	.LBB41_1
.LBB41_1:
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
	ld.w	$a0, $fp, -12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB44_2
	b	.LBB44_1
.LBB44_1:
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
	bne	$a0, $a1, .LBB45_7
	b	.LBB45_5
.LBB45_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB45_6
.LBB45_6:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB45_7
.LBB45_7:
	b	.LBB45_8
.LBB45_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isdigit
	beqz	$a0, .LBB45_10
	b	.LBB45_9
.LBB45_9:                               #   in Loop: Header=BB45_8 Depth=1
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
	b	.LBB45_8
.LBB45_10:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB45_12
	b	.LBB45_11
.LBB45_11:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB45_13
.LBB45_12:
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB45_13
.LBB45_13:
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
	bne	$a0, $a1, .LBB46_7
	b	.LBB46_5
.LBB46_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -20
	b	.LBB46_6
.LBB46_6:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB46_7
.LBB46_7:
	b	.LBB46_8
.LBB46_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isdigit
	beqz	$a0, .LBB46_10
	b	.LBB46_9
.LBB46_9:                               #   in Loop: Header=BB46_8 Depth=1
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
	b	.LBB46_8
.LBB46_10:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB46_12
	b	.LBB46_11
.LBB46_11:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB46_13
.LBB46_12:
	ld.w	$a1, $fp, -16
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB46_13
.LBB46_13:
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
	bne	$a0, $a1, .LBB47_7
	b	.LBB47_5
.LBB47_5:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, -28
	b	.LBB47_6
.LBB47_6:
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	b	.LBB47_7
.LBB47_7:
	b	.LBB47_8
.LBB47_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	bl	isdigit
	beqz	$a0, .LBB47_10
	b	.LBB47_9
.LBB47_9:                               #   in Loop: Header=BB47_8 Depth=1
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
	b	.LBB47_8
.LBB47_10:
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB47_12
	b	.LBB47_11
.LBB47_11:
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -24
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB47_13
.LBB47_12:
	ld.w	$a2, $fp, -20
	ld.w	$a3, $fp, -24
	move	$a0, $zero
	sub.w	$a1, $a0, $a3
	sltu	$a3, $zero, $a3
	add.w	$a2, $a2, $a3
	sub.w	$a0, $a0, $a2
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB47_13
.LBB47_13:
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
	b	.LBB48_1
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB48_9
	b	.LBB48_2
.LBB48_2:                               #   in Loop: Header=BB48_1 Depth=1
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
	ld.w	$a0, $fp, -52
	st.w	$a0, $fp, -12
	b	.LBB49_9
.LBB49_4:                               #   in Loop: Header=BB49_1 Depth=1
	ld.w	$a0, $fp, -48
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB49_6
	b	.LBB49_5
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
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
	ld.w	$a0, $fp, -12
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB53_2
	b	.LBB53_1
.LBB53_1:
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
	b	.LBB57_1
.LBB57_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB57_3
	b	.LBB57_2
.LBB57_2:                               #   in Loop: Header=BB57_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB57_3
.LBB57_3:                               #   in Loop: Header=BB57_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB57_6
	b	.LBB57_4
.LBB57_4:                               #   in Loop: Header=BB57_1 Depth=1
	b	.LBB57_5
.LBB57_5:                               #   in Loop: Header=BB57_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	b	.LBB57_1
.LBB57_6:
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB57_8
	b	.LBB57_7
.LBB57_7:
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB57_9
.LBB57_8:
	move	$a0, $zero
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB57_9
.LBB57_9:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
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
	b	.LBB58_1
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB58_4
	b	.LBB58_2
.LBB58_2:                               #   in Loop: Header=BB58_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	beqz	$a0, .LBB58_4
	b	.LBB58_3
.LBB58_3:                               #   in Loop: Header=BB58_1 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB58_4
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	ld.w	$a0, $fp, -20                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB58_7
	b	.LBB58_5
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	b	.LBB58_6
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -16
	b	.LBB58_1
.LBB58_7:
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB58_9
	b	.LBB58_8
.LBB58_8:
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB58_10
.LBB58_9:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $a0, 0
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB58_10
.LBB58_10:
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB60_1
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB60_4
	b	.LBB60_2
.LBB60_2:                               #   in Loop: Header=BB60_1 Depth=1
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
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	b	.LBB61_1
.LBB61_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB61_5
	b	.LBB61_2
.LBB61_2:                               #   in Loop: Header=BB61_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	move	$a2, $zero
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	bne	$a0, $a1, .LBB61_5
	b	.LBB61_3
.LBB61_3:                               #   in Loop: Header=BB61_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB61_5
	b	.LBB61_4
.LBB61_4:                               #   in Loop: Header=BB61_1 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB61_5
.LBB61_5:                               #   in Loop: Header=BB61_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB61_8
	b	.LBB61_6
.LBB61_6:                               #   in Loop: Header=BB61_1 Depth=1
	b	.LBB61_7
.LBB61_7:                               #   in Loop: Header=BB61_1 Depth=1
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
.LBB61_8:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB61_13
	b	.LBB61_9
.LBB61_9:
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB61_11
	b	.LBB61_10
.LBB61_10:
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB61_12
.LBB61_11:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $a0, 0
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB61_12
.LBB61_12:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB61_14
.LBB61_13:
	move	$a0, $zero
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB61_14
.LBB61_14:
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
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
	b	.LBB62_1
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB62_3
	b	.LBB62_2
.LBB62_2:                               #   in Loop: Header=BB62_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	xor	$a0, $a0, $a1
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB62_3
.LBB62_3:                               #   in Loop: Header=BB62_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB62_6
	b	.LBB62_4
.LBB62_4:                               #   in Loop: Header=BB62_1 Depth=1
	b	.LBB62_5
.LBB62_5:                               #   in Loop: Header=BB62_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, -1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -12
	addi.w	$a0, $a0, 4
	st.w	$a0, $fp, -12
	b	.LBB62_1
.LBB62_6:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB62_8
	b	.LBB62_7
.LBB62_7:
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB62_9
.LBB62_8:
	move	$a0, $zero
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB62_9
.LBB62_9:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
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
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
	b	.LBB63_1
.LBB63_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	move	$a1, $zero
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	beqz	$a0, .LBB63_3
	b	.LBB63_2
.LBB63_2:                               #   in Loop: Header=BB63_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB63_3
.LBB63_3:                               #   in Loop: Header=BB63_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB63_6
	b	.LBB63_4
.LBB63_4:                               #   in Loop: Header=BB63_1 Depth=1
	b	.LBB63_5
.LBB63_5:                               #   in Loop: Header=BB63_1 Depth=1
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
.LBB63_6:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB63_11
	b	.LBB63_7
.LBB63_7:
	ld.w	$a0, $fp, -12
	ld.w	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.w	$a1, $a1, 0
	bge	$a0, $a1, .LBB63_9
	b	.LBB63_8
.LBB63_8:
	addi.w	$a0, $zero, -1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB63_10
.LBB63_9:
	ld.w	$a0, $fp, -12
	ld.w	$a1, $a0, 0
	ld.w	$a0, $fp, -16
	ld.w	$a0, $a0, 0
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB63_10
.LBB63_10:
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB63_12
.LBB63_11:
	move	$a0, $zero
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB63_12
.LBB63_12:
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
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
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bne	$a0, $a1, .LBB65_2
	b	.LBB65_1
.LBB65_1:
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
	b	.LBB65_4
.LBB65_4:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -24
	beqz	$a0, .LBB65_6
	b	.LBB65_5
.LBB65_5:                               #   in Loop: Header=BB65_4 Depth=1
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
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB67_6
	b	.LBB67_1
.LBB67_1:
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
	b	.LBB67_8
.LBB67_8:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB67_11
	b	.LBB67_9
.LBB67_9:                               #   in Loop: Header=BB67_8 Depth=1
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
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB81_1
.LBB81_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -20
	ori	$a0, $zero, 31
	bltu	$a0, $a1, .LBB81_6
	b	.LBB81_2
.LBB81_2:                               #   in Loop: Header=BB81_1 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB81_4
	b	.LBB81_3
.LBB81_3:
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
	ld.w	$a0, $fp, -16
	bnez	$a0, .LBB82_2
	b	.LBB82_1
.LBB82_1:
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
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
                                        # kill: def $r5 killed $r4
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -2049
	ori	$a1, $a1, 4095
	bl	%plt(__ltsf2)
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB83_2
	b	.LBB83_1
.LBB83_1:
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, 522239
	ori	$a1, $a1, 4095
	bl	%plt(__gtsf2)
	move	$a1, $a0
	move	$a0, $zero
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -16                   # 4-byte Folded Spill
	b	.LBB83_2
.LBB83_2:
	ld.w	$a0, $fp, -16                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
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
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	lu12i.w	$a2, -257
	ori	$a3, $a2, 4095
	addi.w	$a2, $zero, -1
	bl	%plt(__ltdf2)
	ori	$a2, $zero, 1
	move	$a1, $zero
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB84_2
	b	.LBB84_1
.LBB84_1:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	lu12i.w	$a2, 524031
	ori	$a3, $a2, 4095
	addi.w	$a2, $zero, -1
	bl	%plt(__gtdf2)
	move	$a1, $a0
	move	$a0, $zero
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -20                   # 4-byte Folded Spill
	b	.LBB84_2
.LBB84_2:
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
	blt	$a0, $a1, .LBB85_2
	b	.LBB85_1
.LBB85_1:
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	ld.w	$a2, $fp, -24
	ld.w	$a3, $fp, -20
	addi.w	$a4, $zero, -1
	st.w	$a4, $fp, -88
	st.w	$a4, $fp, -92
	st.w	$a4, $fp, -96
	st.w	$a3, $fp, -68
	st.w	$a2, $fp, -72
	st.w	$a1, $fp, -76
	st.w	$a0, $fp, -80
	lu12i.w	$a0, 524271
	ori	$a0, $a0, 4095
	st.w	$a0, $fp, -84
	addi.w	$a0, $fp, -80
	addi.w	$a1, $fp, -96
	bl	%plt(__gttf2)
	move	$a1, $a0
	move	$a0, $zero
	slt	$a0, $a0, $a1
	st.w	$a0, $fp, -100                  # 4-byte Folded Spill
	b	.LBB85_2
.LBB85_2:
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
	ld.w	$a0, $fp, -12
	bstrpick.w	$a1, $a0, 30, 0
	lu12i.w	$a0, 522240
	blt	$a0, $a1, .LBB87_9
	b	.LBB87_1
.LBB87_1:
	ld.w	$a1, $fp, -12
	st.w	$a1, $fp, -24                   # 4-byte Folded Spill
	move	$a0, $a1
	bl	%plt(__addsf3)
	ld.w	$a1, $fp, -24                   # 4-byte Folded Reload
	bl	%plt(__eqsf2)
	beqz	$a0, .LBB87_9
	b	.LBB87_2
.LBB87_2:
	ld.w	$a0, $fp, -16
	slti	$a2, $a0, 0
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 258048
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -20
	b	.LBB87_3
.LBB87_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 31
	add.w	$a1, $a0, $a1
	bstrins.w	$a1, $zero, 0, 0
	sub.w	$a0, $a0, $a1
	beqz	$a0, .LBB87_5
	b	.LBB87_4
.LBB87_4:                               #   in Loop: Header=BB87_3 Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -12
	bl	%plt(__mulsf3)
	st.w	$a0, $fp, -12
	b	.LBB87_5
.LBB87_5:                               #   in Loop: Header=BB87_3 Depth=1
	ld.w	$a0, $fp, -16
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	ld.w	$a0, $fp, -16
	bnez	$a0, .LBB87_7
	b	.LBB87_6
.LBB87_6:
	b	.LBB87_8
.LBB87_7:                               #   in Loop: Header=BB87_3 Depth=1
	ld.w	$a1, $fp, -20
	move	$a0, $a1
	bl	%plt(__mulsf3)
	st.w	$a0, $fp, -20
	b	.LBB87_3
.LBB87_8:
	b	.LBB87_9
.LBB87_9:
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
	bnez	$a0, .LBB88_9
	b	.LBB88_1
.LBB88_1:
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
	beqz	$a0, .LBB88_9
	b	.LBB88_2
.LBB88_2:
	ld.w	$a0, $fp, -20
	slti	$a2, $a0, 0
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 261632
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	move	$a1, $zero
	st.w	$a1, $fp, -32
	st.w	$a0, $fp, -28
	b	.LBB88_3
.LBB88_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	srli.w	$a1, $a0, 31
	add.w	$a1, $a0, $a1
	bstrins.w	$a1, $zero, 0, 0
	sub.w	$a0, $a0, $a1
	beqz	$a0, .LBB88_5
	b	.LBB88_4
.LBB88_4:                               #   in Loop: Header=BB88_3 Depth=1
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	bl	%plt(__muldf3)
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB88_5
.LBB88_5:                               #   in Loop: Header=BB88_3 Depth=1
	ld.w	$a0, $fp, -20
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -20
	bnez	$a0, .LBB88_7
	b	.LBB88_6
.LBB88_6:
	b	.LBB88_8
.LBB88_7:                               #   in Loop: Header=BB88_3 Depth=1
	ld.w	$a2, $fp, -32
	ld.w	$a3, $fp, -28
	move	$a0, $a2
	move	$a1, $a3
	bl	%plt(__muldf3)
	st.w	$a1, $fp, -28
	st.w	$a0, $fp, -32
	b	.LBB88_3
.LBB88_8:
	b	.LBB88_9
.LBB88_9:
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
	bnez	$a0, .LBB89_9
	b	.LBB89_1
.LBB89_1:
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
	beqz	$a0, .LBB89_9
	b	.LBB89_2
.LBB89_2:
	ld.w	$a0, $fp, -36
	slti	$a2, $a0, 0
	lu12i.w	$a0, 262144
	masknez	$a1, $a0, $a2
	lu12i.w	$a0, 262112
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	move	$a1, $zero
	st.w	$a1, $fp, -60
	st.w	$a1, $fp, -64
	st.w	$a1, $fp, -56
	st.w	$a0, $fp, -52
	b	.LBB89_3
.LBB89_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -36
	srli.w	$a1, $a0, 31
	add.w	$a1, $a0, $a1
	bstrins.w	$a1, $zero, 0, 0
	sub.w	$a0, $a0, $a1
	beqz	$a0, .LBB89_5
	b	.LBB89_4
.LBB89_4:                               #   in Loop: Header=BB89_3 Depth=1
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
	b	.LBB89_5
.LBB89_5:                               #   in Loop: Header=BB89_3 Depth=1
	ld.w	$a0, $fp, -36
	srli.w	$a1, $a0, 31
	add.w	$a0, $a0, $a1
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -36
	bnez	$a0, .LBB89_7
	b	.LBB89_6
.LBB89_6:
	b	.LBB89_8
.LBB89_7:                               #   in Loop: Header=BB89_3 Depth=1
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
	b	.LBB89_3
.LBB89_8:
	b	.LBB89_9
.LBB89_9:
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
	addi.w	$sp, $sp, -32
	st.w	$ra, $sp, 28                    # 4-byte Folded Spill
	st.w	$fp, $sp, 24                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 32
	st.w	$a0, $fp, -12
	st.w	$a1, $fp, -16
	st.w	$a2, $fp, -20
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
	beqz	$a0, .LBB91_3
	b	.LBB91_2
.LBB91_2:                               #   in Loop: Header=BB91_1 Depth=1
	ld.w	$a0, $fp, -16
	ld.bu	$a0, $a0, 0
	ld.w	$a1, $fp, -24
	st.b	$a0, $a1, 0
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB91_3
.LBB91_3:                               #   in Loop: Header=BB91_1 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB91_6
	b	.LBB91_4
.LBB91_4:                               #   in Loop: Header=BB91_1 Depth=1
	b	.LBB91_5
.LBB91_5:                               #   in Loop: Header=BB91_1 Depth=1
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
.LBB91_6:
	ld.w	$a0, $fp, -20
	bnez	$a0, .LBB91_8
	b	.LBB91_7
.LBB91_7:
	ld.w	$a1, $fp, -24
	move	$a0, $zero
	st.b	$a0, $a1, 0
	b	.LBB91_8
.LBB91_8:
	ld.w	$a0, $fp, -12
	ld.w	$fp, $sp, 24                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 28                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 32
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
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB92_1
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -16
	move	$a2, $zero
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	bgeu	$a0, $a1, .LBB92_3
	b	.LBB92_2
.LBB92_2:                               #   in Loop: Header=BB92_1 Depth=1
	ld.w	$a0, $fp, -12
	ld.w	$a1, $fp, -20
	add.w	$a0, $a0, $a1
	ld.b	$a0, $a0, 0
	sltu	$a0, $zero, $a0
	st.w	$a0, $fp, -24                   # 4-byte Folded Spill
	b	.LBB92_3
.LBB92_3:                               #   in Loop: Header=BB92_1 Depth=1
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB92_6
	b	.LBB92_4
.LBB92_4:                               #   in Loop: Header=BB92_1 Depth=1
	b	.LBB92_5
.LBB92_5:                               #   in Loop: Header=BB92_1 Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB92_1
.LBB92_6:
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
	b	.LBB93_1
.LBB93_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB93_3 Depth 2
	ld.w	$a0, $fp, -16
	ld.b	$a0, $a0, 0
	beqz	$a0, .LBB93_8
	b	.LBB93_2
.LBB93_2:                               #   in Loop: Header=BB93_1 Depth=1
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
	ld.w	$a0, $fp, -24
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -24
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB93_6
	b	.LBB93_5
.LBB93_5:
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
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB94_1
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -16
	bne	$a0, $a1, .LBB94_3
	b	.LBB94_2
.LBB94_2:                               #   in Loop: Header=BB94_1 Depth=1
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -20
	b	.LBB94_3
.LBB94_3:                               #   in Loop: Header=BB94_1 Depth=1
	b	.LBB94_4
.LBB94_4:                               #   in Loop: Header=BB94_1 Depth=1
	ld.w	$a0, $fp, -12
	addi.w	$a1, $a0, 1
	st.w	$a1, $fp, -12
	ld.bu	$a0, $a0, 0
	bnez	$a0, .LBB94_1
	b	.LBB94_5
.LBB94_5:
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
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -20
	bl	strlen
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -28
	bnez	$a0, .LBB95_2
	b	.LBB95_1
.LBB95_1:
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
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	ld.w	$a2, $fp, -28
	bl	strncmp
	bnez	$a0, .LBB95_6
	b	.LBB95_5
.LBB95_5:
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
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB96_2
	b	.LBB96_1
.LBB96_1:
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	move	$a3, $zero
	st.w	$a3, $fp, -36                   # 4-byte Folded Spill
	move	$a2, $a3
	bl	%plt(__gtdf2)
	move	$a1, $a0
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	blt	$a0, $a1, .LBB96_4
	b	.LBB96_2
.LBB96_2:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__gtdf2)
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB96_5
	b	.LBB96_3
.LBB96_3:
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -28
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB96_5
	b	.LBB96_4
.LBB96_4:
	ld.w	$a1, $fp, -24
	ld.w	$a0, $fp, -20
	lu12i.w	$a2, -524288
	xor	$a0, $a0, $a2
	st.w	$a1, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB96_6
.LBB96_5:
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -20
	st.w	$a1, $fp, -12
	st.w	$a0, $fp, -16
	b	.LBB96_6
.LBB96_6:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
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
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB97_12
.LBB97_2:
	ld.w	$a0, $fp, -20
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB97_4
	b	.LBB97_3
.LBB97_3:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB97_12
.LBB97_4:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -32
	b	.LBB97_5
.LBB97_5:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -32
	ld.w	$a0, $fp, -36
	bltu	$a0, $a1, .LBB97_11
	b	.LBB97_6
.LBB97_6:                               #   in Loop: Header=BB97_5 Depth=1
	ld.w	$a0, $fp, -32
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -24
	ld.b	$a1, $a1, 0
	bne	$a0, $a1, .LBB97_9
	b	.LBB97_7
.LBB97_7:                               #   in Loop: Header=BB97_5 Depth=1
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	ld.w	$a1, $fp, -24
	addi.w	$a1, $a1, 1
	ld.w	$a2, $fp, -28
	addi.w	$a2, $a2, -1
	bl	memcmp
	bnez	$a0, .LBB97_9
	b	.LBB97_8
.LBB97_8:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB97_12
.LBB97_9:                               #   in Loop: Header=BB97_5 Depth=1
	b	.LBB97_10
.LBB97_10:                              #   in Loop: Header=BB97_5 Depth=1
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -32
	b	.LBB97_5
.LBB97_11:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB97_12
.LBB97_12:
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
	b	.LBB99_14
.LBB99_7:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $zero
	lu12i.w	$a3, 261632
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB99_13
	b	.LBB99_8
.LBB99_8:
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a3, $zero
	move	$a2, $a3
	bl	%plt(__eqdf2)
	beqz	$a0, .LBB99_13
	b	.LBB99_9
.LBB99_9:
	b	.LBB99_10
.LBB99_10:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -12
	move	$a2, $zero
	lu12i.w	$a3, 261632
	bl	%plt(__ltdf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB99_12
	b	.LBB99_11
.LBB99_11:                              #   in Loop: Header=BB99_10 Depth=1
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
	b	.LBB99_10
.LBB99_12:
	b	.LBB99_13
.LBB99_13:
	b	.LBB99_14
.LBB99_14:
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -20
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB99_16
	b	.LBB99_15
.LBB99_15:
	ld.w	$a0, $fp, -12
	lu12i.w	$a1, -524288
	xor	$a0, $a0, $a1
	st.w	$a0, $fp, -12
	b	.LBB99_16
.LBB99_16:
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
	ld.bu	$a0, $fp, -40
	andi	$a0, $a0, 1
	beqz	$a0, .LBB100_4
	b	.LBB100_3
.LBB100_3:                              #   in Loop: Header=BB100_1 Depth=1
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
	bgeu	$a0, $a1, .LBB101_4
	b	.LBB101_2
.LBB101_2:                              #   in Loop: Header=BB101_1 Depth=1
	ld.w	$a0, $fp, -28
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB101_4
	b	.LBB101_3
.LBB101_3:                              #   in Loop: Header=BB101_1 Depth=1
	ld.bu	$a0, $fp, -17
	andi	$a0, $a0, 128
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB101_4
.LBB101_4:                              #   in Loop: Header=BB101_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB101_6
	b	.LBB101_5
.LBB101_5:                              #   in Loop: Header=BB101_1 Depth=1
	ld.w	$a0, $fp, -20
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -28
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB101_1
.LBB101_6:
	b	.LBB101_7
.LBB101_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB101_11
	b	.LBB101_8
.LBB101_8:                              #   in Loop: Header=BB101_7 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bltu	$a0, $a1, .LBB101_10
	b	.LBB101_9
.LBB101_9:                              #   in Loop: Header=BB101_7 Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	b	.LBB101_10
.LBB101_10:                             #   in Loop: Header=BB101_7 Depth=1
	ld.w	$a0, $fp, -28
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB101_7
.LBB101_11:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB101_13
	b	.LBB101_12
.LBB101_12:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB101_14
.LBB101_13:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB101_14
.LBB101_14:
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
	ld.b	$a1, $fp, -13
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB102_2
	b	.LBB102_1
.LBB102_1:
	ld.b	$a0, $fp, -13
	nor	$a0, $a0, $zero
	st.b	$a0, $fp, -13
	b	.LBB102_2
.LBB102_2:
	ld.b	$a0, $fp, -13
	bnez	$a0, .LBB102_4
	b	.LBB102_3
.LBB102_3:
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
	ld.w	$a1, $fp, -20
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB103_2
	b	.LBB103_1
.LBB103_1:
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
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB104_1
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	beqz	$a0, .LBB104_5
	b	.LBB104_2
.LBB104_2:                              #   in Loop: Header=BB104_1 Depth=1
	ld.bu	$a0, $fp, -12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB104_4
	b	.LBB104_3
.LBB104_3:                              #   in Loop: Header=BB104_1 Depth=1
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
	bltu	$a0, $a1, .LBB105_2
	b	.LBB105_1
.LBB105_1:
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB105_10
	b	.LBB105_2
.LBB105_2:
	move	$a0, $zero
	st.w	$a0, $fp, -24
	b	.LBB105_3
.LBB105_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB105_6
	b	.LBB105_4
.LBB105_4:                              #   in Loop: Header=BB105_3 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -24
	alsl.w	$a2, $a1, $a0, 3
	ld.w	$a0, $a2, 0
	ld.w	$a2, $a2, 4
	ld.w	$a3, $fp, -12
	alsl.w	$a1, $a1, $a3, 3
	st.w	$a2, $a1, 4
	st.w	$a0, $a1, 0
	b	.LBB105_5
.LBB105_5:                              #   in Loop: Header=BB105_3 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB105_3
.LBB105_6:
	b	.LBB105_7
.LBB105_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -32
	bgeu	$a0, $a1, .LBB105_9
	b	.LBB105_8
.LBB105_8:                              #   in Loop: Header=BB105_7 Depth=1
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
	b	.LBB105_7
.LBB105_9:
	b	.LBB105_14
.LBB105_10:
	b	.LBB105_11
.LBB105_11:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB105_13
	b	.LBB105_12
.LBB105_12:                             #   in Loop: Header=BB105_11 Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB105_11
.LBB105_13:
	b	.LBB105_14
.LBB105_14:
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
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -12
	st.w	$a0, $fp, -32
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -36
	ld.w	$a0, $fp, -32
	ld.w	$a1, $fp, -36
	bltu	$a0, $a1, .LBB106_2
	b	.LBB106_1
.LBB106_1:
	ld.w	$a1, $fp, -32
	ld.w	$a0, $fp, -36
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB106_9
	b	.LBB106_2
.LBB106_2:
	move	$a0, $zero
	st.w	$a0, $fp, -24
	b	.LBB106_3
.LBB106_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB106_6
	b	.LBB106_4
.LBB106_4:                              #   in Loop: Header=BB106_3 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -24
	alsl.w	$a0, $a1, $a0, 1
	ld.h	$a0, $a0, 0
	ld.w	$a2, $fp, -12
	alsl.w	$a1, $a1, $a2, 1
	st.h	$a0, $a1, 0
	b	.LBB106_5
.LBB106_5:                              #   in Loop: Header=BB106_3 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB106_3
.LBB106_6:
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB106_8
	b	.LBB106_7
.LBB106_7:
	ld.w	$a0, $fp, -36
	ld.w	$a1, $fp, -20
	addi.w	$a2, $a1, -1
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB106_8
.LBB106_8:
	b	.LBB106_13
.LBB106_9:
	b	.LBB106_10
.LBB106_10:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB106_12
	b	.LBB106_11
.LBB106_11:                             #   in Loop: Header=BB106_10 Depth=1
	ld.w	$a0, $fp, -36
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -32
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB106_10
.LBB106_12:
	b	.LBB106_13
.LBB106_13:
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
	bltu	$a0, $a1, .LBB107_2
	b	.LBB107_1
.LBB107_1:
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	bgeu	$a0, $a1, .LBB107_10
	b	.LBB107_2
.LBB107_2:
	move	$a0, $zero
	st.w	$a0, $fp, -24
	b	.LBB107_3
.LBB107_3:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -24
	ld.w	$a1, $fp, -28
	bgeu	$a0, $a1, .LBB107_6
	b	.LBB107_4
.LBB107_4:                              #   in Loop: Header=BB107_3 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -24
	alsl.w	$a0, $a1, $a0, 2
	ld.w	$a0, $a0, 0
	ld.w	$a2, $fp, -12
	alsl.w	$a1, $a1, $a2, 2
	st.w	$a0, $a1, 0
	b	.LBB107_5
.LBB107_5:                              #   in Loop: Header=BB107_3 Depth=1
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB107_3
.LBB107_6:
	b	.LBB107_7
.LBB107_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -32
	bgeu	$a0, $a1, .LBB107_9
	b	.LBB107_8
.LBB107_8:                              #   in Loop: Header=BB107_7 Depth=1
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
	b	.LBB107_7
.LBB107_9:
	b	.LBB107_14
.LBB107_10:
	b	.LBB107_11
.LBB107_11:                             # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -20
	addi.w	$a1, $a0, -1
	st.w	$a1, $fp, -20
	beqz	$a0, .LBB107_13
	b	.LBB107_12
.LBB107_12:                             #   in Loop: Header=BB107_11 Depth=1
	ld.w	$a0, $fp, -40
	ld.w	$a2, $fp, -20
	add.w	$a0, $a0, $a2
	ld.b	$a0, $a0, 0
	ld.w	$a1, $fp, -36
	add.w	$a1, $a1, $a2
	st.b	$a0, $a1, 0
	b	.LBB107_11
.LBB107_13:
	b	.LBB107_14
.LBB107_14:
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
	move	$a0, $zero
	st.w	$a0, $fp, -16
	b	.LBB114_1
.LBB114_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB114_6
	b	.LBB114_2
.LBB114_2:                              #   in Loop: Header=BB114_1 Depth=1
	ld.hu	$a0, $fp, -10
	ld.w	$a2, $fp, -16
	ori	$a1, $zero, 15
	sub.w	$a1, $a1, $a2
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB114_4
	b	.LBB114_3
.LBB114_3:
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
	move	$a0, $zero
	st.w	$a0, $fp, -16
	b	.LBB115_1
.LBB115_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $fp, -16
	ori	$a0, $zero, 15
	blt	$a0, $a1, .LBB115_6
	b	.LBB115_2
.LBB115_2:                              #   in Loop: Header=BB115_1 Depth=1
	ld.hu	$a0, $fp, -10
	ld.w	$a1, $fp, -16
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB115_4
	b	.LBB115_3
.LBB115_3:
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
	ld.w	$a0, $fp, -16
	lu12i.w	$a1, 290816
	bl	%plt(__gesf2)
	move	$a1, $zero
	blt	$a0, $a1, .LBB116_2
	b	.LBB116_1
.LBB116_1:
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
	ld.hu	$a0, $fp, -10
	ld.w	$a1, $fp, -16
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB117_4
	b	.LBB117_3
.LBB117_3:                              #   in Loop: Header=BB117_1 Depth=1
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
	ld.hu	$a0, $fp, -10
	ld.w	$a1, $fp, -16
	srl.w	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB118_4
	b	.LBB118_3
.LBB118_3:                              #   in Loop: Header=BB118_1 Depth=1
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
	move	$a0, $zero
	st.w	$a0, $fp, -20
	b	.LBB119_1
.LBB119_1:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -12
	beqz	$a0, .LBB119_5
	b	.LBB119_2
.LBB119_2:                              #   in Loop: Header=BB119_1 Depth=1
	ld.bu	$a0, $fp, -12
	andi	$a0, $a0, 1
	beqz	$a0, .LBB119_4
	b	.LBB119_3
.LBB119_3:                              #   in Loop: Header=BB119_1 Depth=1
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
	move	$a0, $zero
	st.w	$a0, $fp, -24
	ld.w	$a0, $fp, -16
	bnez	$a0, .LBB120_2
	b	.LBB120_1
.LBB120_1:
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
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB120_6
	b	.LBB120_5
.LBB120_5:                              #   in Loop: Header=BB120_3 Depth=1
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
	bgeu	$a0, $a1, .LBB121_4
	b	.LBB121_2
.LBB121_2:                              #   in Loop: Header=BB121_1 Depth=1
	ld.w	$a0, $fp, -28
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB121_4
	b	.LBB121_3
.LBB121_3:                              #   in Loop: Header=BB121_1 Depth=1
	ld.bu	$a0, $fp, -17
	andi	$a0, $a0, 128
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB121_4
.LBB121_4:                              #   in Loop: Header=BB121_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB121_6
	b	.LBB121_5
.LBB121_5:                              #   in Loop: Header=BB121_1 Depth=1
	ld.w	$a0, $fp, -20
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -28
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB121_1
.LBB121_6:
	b	.LBB121_7
.LBB121_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB121_11
	b	.LBB121_8
.LBB121_8:                              #   in Loop: Header=BB121_7 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bltu	$a0, $a1, .LBB121_10
	b	.LBB121_9
.LBB121_9:                              #   in Loop: Header=BB121_7 Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	b	.LBB121_10
.LBB121_10:                             #   in Loop: Header=BB121_7 Depth=1
	ld.w	$a0, $fp, -28
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB121_7
.LBB121_11:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB121_13
	b	.LBB121_12
.LBB121_12:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB121_14
.LBB121_13:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB121_14
.LBB121_14:
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
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bl	%plt(__ltsf2)
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB122_2
	b	.LBB122_1
.LBB122_1:
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
	move	$a0, $zero
	st.w	$a0, $fp, -24
	st.w	$a0, $fp, -28
	ld.w	$a1, $fp, -16
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB126_2
	b	.LBB126_1
.LBB126_1:
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
	beqz	$a0, .LBB126_5
	b	.LBB126_4
.LBB126_4:                              #   in Loop: Header=BB126_3 Depth=1
	ld.b	$a0, $fp, -17
	sltui	$a0, $a0, 32
	st.w	$a0, $fp, -32                   # 4-byte Folded Spill
	b	.LBB126_5
.LBB126_5:                              #   in Loop: Header=BB126_3 Depth=1
	ld.w	$a0, $fp, -32                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB126_10
	b	.LBB126_6
.LBB126_6:                              #   in Loop: Header=BB126_3 Depth=1
	ld.bu	$a0, $fp, -16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB126_8
	b	.LBB126_7
.LBB126_7:                              #   in Loop: Header=BB126_3 Depth=1
	ld.w	$a1, $fp, -12
	ld.w	$a0, $fp, -28
	add.w	$a0, $a0, $a1
	st.w	$a0, $fp, -28
	b	.LBB126_8
.LBB126_8:                              #   in Loop: Header=BB126_3 Depth=1
	ld.w	$a0, $fp, -12
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -12
	ld.w	$a0, $fp, -16
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB126_9
.LBB126_9:                              #   in Loop: Header=BB126_3 Depth=1
	ld.b	$a0, $fp, -17
	addi.w	$a0, $a0, 1
	st.b	$a0, $fp, -17
	b	.LBB126_3
.LBB126_10:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB126_12
	b	.LBB126_11
.LBB126_11:
	ld.w	$a1, $fp, -28
	move	$a0, $zero
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB126_13
.LBB126_12:
	ld.w	$a0, $fp, -28
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB126_13
.LBB126_13:
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
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
	move	$a0, $zero
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -12
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB127_2
	b	.LBB127_1
.LBB127_1:
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
	move	$a0, $zero
	st.w	$a0, $fp, -20
	ld.w	$a1, $fp, -12
	addi.w	$a0, $zero, -1
	blt	$a0, $a1, .LBB128_2
	b	.LBB128_1
.LBB128_1:
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
	bge	$a0, $a1, .LBB129_4
	b	.LBB129_2
.LBB129_2:                              #   in Loop: Header=BB129_1 Depth=1
	ld.hu	$a0, $fp, -22
	move	$a1, $zero
	st.w	$a1, $fp, -28                   # 4-byte Folded Spill
	beqz	$a0, .LBB129_4
	b	.LBB129_3
.LBB129_3:                              #   in Loop: Header=BB129_1 Depth=1
	ld.hu	$a0, $fp, -14
	lu12i.w	$a1, 8
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	b	.LBB129_4
.LBB129_4:                              #   in Loop: Header=BB129_1 Depth=1
	ld.w	$a0, $fp, -28                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB129_6
	b	.LBB129_5
.LBB129_5:                              #   in Loop: Header=BB129_1 Depth=1
	ld.h	$a0, $fp, -14
	slli.w	$a0, $a0, 1
	st.h	$a0, $fp, -14
	ld.h	$a0, $fp, -22
	slli.w	$a0, $a0, 1
	st.h	$a0, $fp, -22
	b	.LBB129_1
.LBB129_6:
	b	.LBB129_7
.LBB129_7:                              # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $fp, -22
	beqz	$a0, .LBB129_11
	b	.LBB129_8
.LBB129_8:                              #   in Loop: Header=BB129_7 Depth=1
	ld.hu	$a0, $fp, -12
	ld.hu	$a1, $fp, -14
	blt	$a0, $a1, .LBB129_10
	b	.LBB129_9
.LBB129_9:                              #   in Loop: Header=BB129_7 Depth=1
	ld.h	$a1, $fp, -14
	ld.h	$a0, $fp, -12
	sub.w	$a0, $a0, $a1
	st.h	$a0, $fp, -12
	ld.h	$a1, $fp, -22
	ld.h	$a0, $fp, -24
	or	$a0, $a0, $a1
	st.h	$a0, $fp, -24
	b	.LBB129_10
.LBB129_10:                             #   in Loop: Header=BB129_7 Depth=1
	ld.hu	$a0, $fp, -22
	srli.w	$a0, $a0, 1
	st.h	$a0, $fp, -22
	ld.hu	$a0, $fp, -14
	srli.w	$a0, $a0, 1
	st.h	$a0, $fp, -14
	b	.LBB129_7
.LBB129_11:
	ld.w	$a0, $fp, -20
	beqz	$a0, .LBB129_13
	b	.LBB129_12
.LBB129_12:
	ld.h	$a0, $fp, -12
	st.h	$a0, $fp, -10
	b	.LBB129_14
.LBB129_13:
	ld.h	$a0, $fp, -24
	st.h	$a0, $fp, -10
	b	.LBB129_14
.LBB129_14:
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
	bgeu	$a0, $a1, .LBB130_4
	b	.LBB130_2
.LBB130_2:                              #   in Loop: Header=BB130_1 Depth=1
	ld.w	$a0, $fp, -28
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB130_4
	b	.LBB130_3
.LBB130_3:                              #   in Loop: Header=BB130_1 Depth=1
	ld.bu	$a0, $fp, -17
	andi	$a0, $a0, 128
	sltui	$a0, $a0, 1
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	b	.LBB130_4
.LBB130_4:                              #   in Loop: Header=BB130_1 Depth=1
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	andi	$a0, $a0, 1
	beqz	$a0, .LBB130_6
	b	.LBB130_5
.LBB130_5:                              #   in Loop: Header=BB130_1 Depth=1
	ld.w	$a0, $fp, -20
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	ld.w	$a0, $fp, -28
	slli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	b	.LBB130_1
.LBB130_6:
	b	.LBB130_7
.LBB130_7:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	beqz	$a0, .LBB130_11
	b	.LBB130_8
.LBB130_8:                              #   in Loop: Header=BB130_7 Depth=1
	ld.w	$a0, $fp, -16
	ld.w	$a1, $fp, -20
	bltu	$a0, $a1, .LBB130_10
	b	.LBB130_9
.LBB130_9:                              #   in Loop: Header=BB130_7 Depth=1
	ld.w	$a1, $fp, -20
	ld.w	$a0, $fp, -16
	sub.w	$a0, $a0, $a1
	st.w	$a0, $fp, -16
	ld.w	$a1, $fp, -28
	ld.w	$a0, $fp, -32
	or	$a0, $a0, $a1
	st.w	$a0, $fp, -32
	b	.LBB130_10
.LBB130_10:                             #   in Loop: Header=BB130_7 Depth=1
	ld.w	$a0, $fp, -28
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -28
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB130_7
.LBB130_11:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB130_13
	b	.LBB130_12
.LBB130_12:
	ld.w	$a0, $fp, -16
	st.w	$a0, $fp, -12
	b	.LBB130_14
.LBB130_13:
	ld.w	$a0, $fp, -32
	st.w	$a0, $fp, -12
	b	.LBB130_14
.LBB130_14:
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
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_2:
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -44
	bge	$a0, $a1, .LBB136_4
	b	.LBB136_3
.LBB136_3:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_4:
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -48
	bgeu	$a0, $a1, .LBB136_6
	b	.LBB136_5
.LBB136_5:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB136_9
.LBB136_6:
	ld.w	$a1, $fp, -40
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB136_8
	b	.LBB136_7
.LBB136_7:
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
	ld.w	$a0, $fp, -20
	srli.w	$a0, $a0, 31
	st.w	$a0, $fp, -24
	lu12i.w	$a0, 261888
	st.w	$a0, $fp, -28
	move	$a0, $zero
	st.w	$a0, $fp, -32
	b	.LBB147_1
.LBB147_1:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, -20
	andi	$a0, $a0, 1
	beqz	$a0, .LBB147_3
	b	.LBB147_2
.LBB147_2:                              #   in Loop: Header=BB147_1 Depth=1
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
	ld.w	$a0, $fp, -16
	srli.w	$a0, $a0, 31
	st.w	$a0, $fp, -20
	lu12i.w	$a0, 260096
	st.w	$a0, $fp, -24
	b	.LBB148_1
.LBB148_1:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, -16
	andi	$a0, $a0, 1
	beqz	$a0, .LBB148_3
	b	.LBB148_2
.LBB148_2:                              #   in Loop: Header=BB148_1 Depth=1
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
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_2:
	ld.w	$a1, $fp, -36
	ld.w	$a0, $fp, -44
	bgeu	$a0, $a1, .LBB149_4
	b	.LBB149_3
.LBB149_3:
	ori	$a0, $zero, 2
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_4:
	ld.w	$a0, $fp, -40
	ld.w	$a1, $fp, -48
	bgeu	$a0, $a1, .LBB149_6
	b	.LBB149_5
.LBB149_5:
	move	$a0, $zero
	st.w	$a0, $fp, -12
	b	.LBB149_9
.LBB149_6:
	ld.w	$a1, $fp, -40
	ld.w	$a0, $fp, -48
	bgeu	$a0, $a1, .LBB149_8
	b	.LBB149_7
.LBB149_7:
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
