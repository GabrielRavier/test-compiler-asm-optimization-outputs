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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB0_12
.LBB0_12:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.1)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.1)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.1)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.1)
	ld.w	$a1, $a2, 12
	ld.w	$a3, $a2, 8
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 8
	st.w	$a1, $a2, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.1)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.1)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.1)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.1)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.1)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.1)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.2)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.2)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.2)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.2)
	ld.w	$a1, $a2, 12
	ld.w	$a3, $a2, 8
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 8
	st.w	$a1, $a2, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.2)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.2)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.2)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.2)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.2)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.2)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.3)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.3)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.3)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.3)
	ld.w	$a1, $a2, 12
	ld.w	$a3, $a2, 8
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 8
	st.w	$a1, $a2, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.3)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.3)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.3)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.3)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.3)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.3)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.4)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.4)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.4)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.4)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.5)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.5)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.5)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.5)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	b	.LBB5_1
.LBB5_5:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.5)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.5)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.6)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.6)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.6)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.6)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.7)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.7)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.7)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.7)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.8)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.8)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.8)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.8)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.8)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.8)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.8)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.8)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.9)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.9)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.9)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.9)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.9)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.9)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.10)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.10)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.10)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.10)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.10)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.10)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.10)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.10)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.11)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.11)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.11)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.11)
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.12)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.12)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
	b	.LBB12_3
.LBB12_3:                               # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $fp, -28
	ld.bu	$a0, $a0, 0
	move	$a1, $zero
	st.w	$a1, $fp, -36                   # 4-byte Folded Spill
	beqz	$a0, .LBB12_10
	b	.LBB12_4
.LBB12_4:                               #   in Loop: Header=BB12_3 Depth=1
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.12)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.12)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.12)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.12)
	ld.w	$a1, $a2, 44
	ld.w	$a3, $a2, 40
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 40
	st.w	$a1, $a2, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.12)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.13)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.13)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.13)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.13)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.14)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.14)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.15)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.15)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.16)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.16)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.16)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.16)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.16)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.16)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.17)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.17)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.17)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.17)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.17)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.17)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.18)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.18)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.19)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.19)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.20)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.20)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.21)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.21)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.22)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.22)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.22)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.22)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.22)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.22)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.23)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.23)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.24)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.24)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.24)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.24)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.24)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.24)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.24)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.24)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.24)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.24)
	ld.w	$a1, $a2, 36
	ld.w	$a3, $a2, 32
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 32
	st.w	$a1, $a2, 36
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.25)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.25)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.27)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.27)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.27)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.27)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.27)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.27)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.28)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.28)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.29)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.29)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.29)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.29)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.29)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.29)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.29)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.29)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.30)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.30)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.30)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.30)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.30)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.30)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.30)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.30)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.31)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.31)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.31)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.31)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.31)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.31)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.31)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.31)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.31)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.31)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.31)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.31)
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.32)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.32)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.32)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.32)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.32)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.32)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.32)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.32)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.32)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.32)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.32)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.32)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.33)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.33)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.33)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.33)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.33)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.33)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.33)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.33)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.33)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.33)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.33)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.33)
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.34)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.34)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.34)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.34)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.34)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.34)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.34)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.34)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.34)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.34)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.34)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.34)
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.35)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.35)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.35)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.35)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.35)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.35)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.35)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.35)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.35)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.35)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.35)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.35)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.36)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.36)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.36)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.36)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.36)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.36)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.36)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.36)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.36)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.36)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.36)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.36)
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.37)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.37)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.37)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.37)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.38)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.38)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.39)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.39)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.40)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.40)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.40)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.40)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.40)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.40)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.41)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.41)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.41)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.41)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.41)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.41)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.42)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.42)
	ld.w	$a0, $a1, 4
	ld.w	$a3, $a1, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.42)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.42)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -44
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB42_1
.LBB42_6:
	ld.w	$a2, $fp, -48                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.42)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.42)
	ld.w	$a0, $a1, 20
	ld.w	$a3, $a1, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.43)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.43)
	ld.w	$a0, $a1, 4
	ld.w	$a3, $a1, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a0, $a0, $a4
	st.w	$a3, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.43)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.43)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -44
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB43_1
.LBB43_6:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.43)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.43)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.44)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.44)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.44)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.44)
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.45)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.45)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.45)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.45)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.45)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.45)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.45)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.45)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.45)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.45)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.45)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.45)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.46)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.46)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.46)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.46)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.46)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.46)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.46)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.46)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.46)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.46)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.46)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.46)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.47)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.47)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.47)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.47)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.47)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.47)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.47)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.47)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.47)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.47)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.47)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.47)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.48)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.48)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.48)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.48)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -36
	st.w	$a0, $fp, -12
	b	.LBB48_10
.LBB48_7:                               #   in Loop: Header=BB48_1 Depth=1
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.48)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.48)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB48_8
.LBB48_8:                               #   in Loop: Header=BB48_1 Depth=1
	b	.LBB48_1
.LBB48_9:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.48)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.48)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.49)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.49)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.49)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.49)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.49)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.49)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -44
	srai.w	$a0, $a0, 1
	st.w	$a0, $fp, -44
	b	.LBB49_1
.LBB49_8:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.49)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.49)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.50)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.50)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.51)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.51)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.51)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.51)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a5, %pc_hi20(__llvm_gcov_ctr.52)
	addi.w	$a6, $a5, %pc_lo12(__llvm_gcov_ctr.52)
	ld.w	$a5, $a6, 4
	ld.w	$a7, $a6, 0
	addi.w	$a7, $a7, 1
	sltui	$t0, $a7, 1
	add.w	$a5, $a5, $t0
	st.w	$a7, $a6, 0
	st.w	$a5, $a6, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.53)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.53)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.53)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.53)
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.54)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.54)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.55)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.55)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.55)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.55)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a5, %pc_hi20(__llvm_gcov_ctr.56)
	addi.w	$a6, $a5, %pc_lo12(__llvm_gcov_ctr.56)
	ld.w	$a5, $a6, 4
	ld.w	$a7, $a6, 0
	addi.w	$a7, $a7, 1
	sltui	$t0, $a7, 1
	add.w	$a5, $a5, $t0
	st.w	$a7, $a6, 0
	st.w	$a5, $a6, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.57)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.57)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.57)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.57)
	ld.w	$a1, $a2, 12
	ld.w	$a3, $a2, 8
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 8
	st.w	$a1, $a2, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.57)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.57)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.57)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.57)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.57)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.57)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.58)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.58)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.58)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.58)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.58)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.58)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.58)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.58)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.58)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.58)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.58)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.58)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.59)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.59)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.59)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.59)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.60)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.60)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.60)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.60)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a1, $a2, 28
	ld.w	$a3, $a2, 24
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 24
	st.w	$a1, $a2, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.62)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.62)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.62)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.62)
	ld.w	$a1, $a2, 12
	ld.w	$a3, $a2, 8
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 8
	st.w	$a1, $a2, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.62)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.62)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.62)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.62)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.62)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.62)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.63)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.63)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.63)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.63)
	ld.w	$a1, $a2, 12
	ld.w	$a3, $a2, 8
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 8
	st.w	$a1, $a2, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.63)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.63)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.63)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.63)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.63)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.63)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.63)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.63)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.64)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.64)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.64)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.64)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.65)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.65)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.65)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.65)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.65)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.65)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.65)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.65)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.65)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.65)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.66)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.66)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.66)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.66)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.67)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.67)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.67)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.67)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.67)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.67)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.67)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.67)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	b	.LBB67_12
.LBB67_12:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.67)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.67)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.68)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.68)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.69)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.69)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.70)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.70)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.71)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.71)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.72)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.72)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.73)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.73)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.74)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.74)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.75)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.75)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.76)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.76)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.77)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.77)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.78)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.78)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.79)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.79)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.80)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.80)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.81)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.81)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.81)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.81)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
	ld.w	$a0, $fp, -20
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -20
	b	.LBB81_1
.LBB81_6:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.81)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.81)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.82)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.82)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.82)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.82)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.82)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.82)
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.83)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.83)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.83)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.83)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.83)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.83)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.84)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.84)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.84)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.84)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.84)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.84)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a4, %pc_hi20(__llvm_gcov_ctr.85)
	addi.w	$a5, $a4, %pc_lo12(__llvm_gcov_ctr.85)
	ld.w	$a4, $a5, 4
	ld.w	$a6, $a5, 0
	addi.w	$a6, $a6, 1
	sltui	$a7, $a6, 1
	add.w	$a4, $a4, $a7
	st.w	$a6, $a5, 0
	st.w	$a4, $a5, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.85)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.85)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.85)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.85)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.86)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.86)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.87)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.87)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.87)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.87)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.87)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.87)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.87)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.87)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.87)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.87)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.88)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.88)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.88)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.88)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.88)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.88)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.88)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.88)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.88)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.88)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a5, %pc_hi20(__llvm_gcov_ctr.89)
	addi.w	$a6, $a5, %pc_lo12(__llvm_gcov_ctr.89)
	ld.w	$a5, $a6, 4
	ld.w	$a7, $a6, 0
	addi.w	$a7, $a7, 1
	sltui	$t0, $a7, 1
	add.w	$a5, $a5, $t0
	st.w	$a7, $a6, 0
	st.w	$a5, $a6, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.89)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.89)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.89)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.89)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.89)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.89)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.89)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.89)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.90)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.90)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.90)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.90)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.91)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.91)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.91)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.91)
	ld.w	$a1, $a2, 12
	ld.w	$a3, $a2, 8
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 8
	st.w	$a1, $a2, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.91)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.91)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.91)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.91)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -20
	bnez	$a0, .LBB91_9
	b	.LBB91_8
.LBB91_8:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.91)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.91)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.92)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.92)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.92)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.92)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.92)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.92)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.92)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.92)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.93)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.93)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.93)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.93)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	b	.LBB93_3
.LBB93_7:                               #   in Loop: Header=BB93_1 Depth=1
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.93)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.93)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
	ld.w	$a0, $fp, -16
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -16
	b	.LBB93_1
.LBB93_8:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.93)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.93)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.94)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.94)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.94)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.94)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.94)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.94)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.95)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.95)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.95)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.95)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.95)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.95)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
	ld.w	$a0, $fp, -24
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -24
	b	.LBB95_3
.LBB95_8:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.95)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.95)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.96)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.96)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.96)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.96)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.96)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.96)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.96)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.96)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.96)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.96)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.97)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.97)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.97)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.97)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.97)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.97)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.97)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.97)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.97)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.97)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.w	$a0, $fp, -32
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, -32
	b	.LBB97_5
.LBB97_12:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.97)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.97)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a3, %pc_hi20(__llvm_gcov_ctr.98)
	addi.w	$a4, $a3, %pc_lo12(__llvm_gcov_ctr.98)
	ld.w	$a3, $a4, 4
	ld.w	$a5, $a4, 0
	addi.w	$a5, $a5, 1
	sltui	$a6, $a5, 1
	add.w	$a3, $a3, $a6
	st.w	$a5, $a4, 0
	st.w	$a3, $a4, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
	b	.LBB99_14
.LBB99_14:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
	b	.LBB99_15
.LBB99_15:
	ld.w	$a0, $fp, -28
	ld.w	$a1, $fp, -20
	st.w	$a0, $a1, 0
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB99_17
	b	.LBB99_16
.LBB99_16:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
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
	pcalau12i	$a4, %pc_hi20(__llvm_gcov_ctr.100)
	addi.w	$a5, $a4, %pc_lo12(__llvm_gcov_ctr.100)
	ld.w	$a4, $a5, 4
	ld.w	$a6, $a5, 0
	addi.w	$a6, $a6, 1
	sltui	$a7, $a6, 1
	add.w	$a4, $a4, $a7
	st.w	$a6, $a5, 0
	st.w	$a4, $a5, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.100)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.100)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.100)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.100)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.102)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.102)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.102)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.102)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.102)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.102)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.103)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.103)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.103)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.103)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.103)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.103)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.104)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.104)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.104)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.104)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.104)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.104)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.105)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.105)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.105)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.105)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.105)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.105)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.105)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.105)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.105)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.105)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.105)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.105)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.106)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.106)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.106)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.106)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.106)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.106)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.106)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.106)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.106)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.106)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.106)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.106)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.107)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.107)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.107)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.107)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.107)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.107)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.107)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.107)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.107)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.107)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.107)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.107)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.108)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.108)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.109)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.109)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.110)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.110)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.111)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.111)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.112)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.112)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.113)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.113)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.114)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.114)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.114)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.114)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.114)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.114)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.115)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.115)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.115)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.115)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.115)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.115)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.116)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.116)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.116)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.116)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.117)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.117)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.117)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.117)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.117)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.117)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.118)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.118)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.118)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.118)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.118)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.118)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.119)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.119)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.119)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.119)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.119)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.119)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.120)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.120)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.120)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.120)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.120)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.120)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.120)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.120)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.122)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.122)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.122)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.122)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.122)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.122)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.123)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.123)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.123)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.123)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.123)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.123)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.124)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.124)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.125)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.125)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.126)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.126)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.126)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.126)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.126)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
	ld.b	$a0, $fp, -17
	addi.w	$a0, $a0, 1
	st.b	$a0, $fp, -17
	b	.LBB126_3
.LBB126_11:
	ld.w	$a0, $fp, -24
	beqz	$a0, .LBB126_13
	b	.LBB126_12
.LBB126_12:
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.126)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.126)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.127)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.127)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.127)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.127)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.127)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.127)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.127)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.127)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.128)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.128)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.128)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.128)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.128)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.128)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.128)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.128)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a1, $a2, 20
	ld.w	$a3, $a2, 16
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 16
	st.w	$a1, $a2, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a0, $a1, 44
	ld.w	$a2, $a1, 40
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 40
	st.w	$a0, $a1, 44
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a0, $a1, 52
	ld.w	$a2, $a1, 48
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 48
	st.w	$a0, $a1, 52
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	ld.w	$a0, $a1, 60
	ld.w	$a2, $a1, 56
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 56
	st.w	$a0, $a1, 60
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.131)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.131)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.131)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.131)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.131)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.131)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.132)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.132)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.132)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.132)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.132)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.132)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.133)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.133)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.134)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.134)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.135)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.135)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.136)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.136)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.136)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.136)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.136)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.136)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.136)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.136)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.136)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.136)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a4, %pc_hi20(__llvm_gcov_ctr.137)
	addi.w	$a5, $a4, %pc_lo12(__llvm_gcov_ctr.137)
	ld.w	$a4, $a5, 4
	ld.w	$a6, $a5, 0
	addi.w	$a6, $a6, 1
	sltui	$a7, $a6, 1
	add.w	$a4, $a4, $a7
	st.w	$a6, $a5, 0
	st.w	$a4, $a5, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.138)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.138)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.139)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.139)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.139)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.139)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.139)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.139)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.140)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.140)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a4, %pc_hi20(__llvm_gcov_ctr.141)
	addi.w	$a5, $a4, %pc_lo12(__llvm_gcov_ctr.141)
	ld.w	$a4, $a5, 4
	ld.w	$a6, $a5, 0
	addi.w	$a6, $a6, 1
	sltui	$a7, $a6, 1
	add.w	$a4, $a4, $a7
	st.w	$a6, $a5, 0
	st.w	$a4, $a5, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.142)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.142)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.143)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.143)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.144)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.144)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a2, %pc_hi20(__llvm_gcov_ctr.145)
	addi.w	$a3, $a2, %pc_lo12(__llvm_gcov_ctr.145)
	ld.w	$a2, $a3, 4
	ld.w	$a4, $a3, 0
	addi.w	$a4, $a4, 1
	sltui	$a5, $a4, 1
	add.w	$a2, $a2, $a5
	st.w	$a4, $a3, 0
	st.w	$a2, $a3, 4
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
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.146)
	addi.w	$a2, $a1, %pc_lo12(__llvm_gcov_ctr.146)
	ld.w	$a1, $a2, 4
	ld.w	$a3, $a2, 0
	addi.w	$a3, $a3, 1
	sltui	$a4, $a3, 1
	add.w	$a1, $a1, $a4
	st.w	$a3, $a2, 0
	st.w	$a1, $a2, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.147)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.147)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.147)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.147)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.147)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.147)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.147)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.147)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.148)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.148)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.148)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.148)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.148)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.148)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.148)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.148)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.149)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.149)
	ld.w	$a0, $a1, 4
	ld.w	$a2, $a1, 0
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 0
	st.w	$a0, $a1, 4
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.149)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.149)
	ld.w	$a0, $a1, 12
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 8
	st.w	$a0, $a1, 12
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.149)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.149)
	ld.w	$a0, $a1, 20
	ld.w	$a2, $a1, 16
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 16
	st.w	$a0, $a1, 20
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.149)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.149)
	ld.w	$a0, $a1, 28
	ld.w	$a2, $a1, 24
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 24
	st.w	$a0, $a1, 28
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
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.149)
	addi.w	$a1, $a0, %pc_lo12(__llvm_gcov_ctr.149)
	ld.w	$a0, $a1, 36
	ld.w	$a2, $a1, 32
	addi.w	$a2, $a2, 1
	sltui	$a3, $a2, 1
	add.w	$a0, $a0, $a3
	st.w	$a2, $a1, 32
	st.w	$a0, $a1, 36
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
	pcalau12i	$a4, %pc_hi20(__llvm_gcov_ctr.150)
	addi.w	$a5, $a4, %pc_lo12(__llvm_gcov_ctr.150)
	ld.w	$a4, $a5, 4
	ld.w	$a6, $a5, 0
	addi.w	$a6, $a6, 1
	sltui	$a7, $a6, 1
	add.w	$a4, $a4, $a7
	st.w	$a6, $a5, 0
	st.w	$a4, $a5, 4
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
	.p2align	5                               # -- Begin function __llvm_gcov_writeout
	.type	__llvm_gcov_writeout,@function
__llvm_gcov_writeout:                   # @__llvm_gcov_writeout
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	move	$a0, $zero
	st.w	$a0, $fp, -12                   # 4-byte Folded Spill
.LBB151_1:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB151_2 Depth 2
	ld.w	$a0, $fp, -12                   # 4-byte Folded Reload
	st.w	$a0, $fp, -36                   # 4-byte Folded Spill
	slli.w	$a1, $a0, 4
	alsl.w	$a1, $a0, $a1, 3
	pcalau12i	$a0, %pc_hi20(__llvm_internal_gcov_emit_file_info)
	addi.w	$a0, $a0, %pc_lo12(__llvm_internal_gcov_emit_file_info)
	add.w	$a2, $a0, $a1
	st.w	$a2, $fp, -32                   # 4-byte Folded Spill
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a2, 4
	ld.w	$a2, $a2, 8
	bl	%plt(llvm_gcda_start_file)
	ld.w	$a1, $fp, -32                   # 4-byte Folded Reload
	ld.w	$a0, $a1, 12
	st.w	$a0, $fp, -28                   # 4-byte Folded Spill
	ld.w	$a2, $a1, 16
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	ld.w	$a1, $a1, 20
	st.w	$a1, $fp, -20                   # 4-byte Folded Spill
	move	$a2, $zero
	ori	$a1, $zero, 1
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB151_3
	b	.LBB151_2
.LBB151_2:                              #   Parent Loop BB151_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a1, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -24                   # 4-byte Folded Reload
	st.w	$a1, $fp, -40                   # 4-byte Folded Spill
	slli.w	$a2, $a1, 3
	alsl.w	$a1, $a1, $a2, 2
	add.w	$a2, $a0, $a1
	ld.w	$a0, $a2, 0
	ld.w	$a1, $a2, 4
	ld.w	$a2, $a2, 8
	bl	%plt(llvm_gcda_emit_function)
	ld.w	$a1, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	alsl.w	$a1, $a0, $a1, 3
	ld.w	$a0, $a1, 0
	ld.w	$a1, $a1, 4
	bl	%plt(llvm_gcda_emit_arcs)
	ld.w	$a0, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -28                   # 4-byte Folded Reload
	addi.w	$a0, $a0, 1
	move	$a2, $a0
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB151_2
	b	.LBB151_3
.LBB151_3:                              #   in Loop: Header=BB151_1 Depth=1
	bl	%plt(llvm_gcda_summary_info)
	bl	%plt(llvm_gcda_end_file)
	ld.w	$a0, $fp, -36                   # 4-byte Folded Reload
	addi.w	$a0, $a0, 1
	ori	$a1, $zero, 1
	move	$a2, $a0
	st.w	$a2, $fp, -12                   # 4-byte Folded Spill
	blt	$a0, $a1, .LBB151_1
	b	.LBB151_4
.LBB151_4:
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end151:
	.size	__llvm_gcov_writeout, .Lfunc_end151-__llvm_gcov_writeout
                                        # -- End function
	.p2align	5                               # -- Begin function __llvm_gcov_reset
	.type	__llvm_gcov_reset,@function
__llvm_gcov_reset:                      # @__llvm_gcov_reset
# %bb.0:
	addi.w	$sp, $sp, -48
	st.w	$ra, $sp, 44                    # 4-byte Folded Spill
	st.w	$fp, $sp, 40                    # 4-byte Folded Spill
	addi.w	$fp, $sp, 48
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr)
	move	$a1, $zero
	st.w	$a1, $fp, -12                   # 4-byte Folded Spill
	ori	$a2, $zero, 40
	st.w	$a2, $fp, -16                   # 4-byte Folded Spill
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.1)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.1)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.2)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.2)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.3)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.3)
	bl	%plt(memset)
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.4)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.4)
	ori	$a2, $zero, 16
	st.w	$a2, $fp, -36                   # 4-byte Folded Spill
	bl	%plt(memset)
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.5)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.5)
	ori	$a2, $zero, 24
	st.w	$a2, $fp, -24                   # 4-byte Folded Spill
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.6)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.6)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.7)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.7)
	bl	%plt(memset)
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.8)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.8)
	ori	$a2, $zero, 32
	st.w	$a2, $fp, -20                   # 4-byte Folded Spill
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.9)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.9)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.10)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.10)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.11)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.11)
	bl	%plt(memset)
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.12)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.12)
	ori	$a2, $zero, 56
	st.w	$a2, $fp, -32                   # 4-byte Folded Spill
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.13)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.13)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.14)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.14)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.15)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.15)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.16)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.16)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.17)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.17)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.18)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.18)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.19)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.19)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.20)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.20)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.21)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.21)
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.22)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.22)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.23)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.23)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.24)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.24)
	bl	%plt(memset)
	ld.w	$a2, $fp, -32                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.25)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.25)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.26)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.26)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.27)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.27)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.28)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.28)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.29)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.29)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.30)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.30)
	bl	%plt(memset)
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.31)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.31)
	ori	$a2, $zero, 48
	st.w	$a2, $fp, -40                   # 4-byte Folded Spill
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.32)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.32)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.33)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.33)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.34)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.34)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.35)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.35)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.36)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.36)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.37)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.37)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.38)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.38)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.39)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.39)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.40)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.40)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.41)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.41)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.42)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.42)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.43)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.43)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.44)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.44)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.45)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.45)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.46)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.46)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.47)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.47)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.48)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.48)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.49)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.49)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.50)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.50)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.51)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.51)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.52)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.52)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.53)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.53)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.54)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.54)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.55)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.55)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.56)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.56)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.57)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.57)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.58)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.58)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.59)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.59)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.60)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.60)
	bl	%plt(memset)
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.61)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.61)
	ori	$a2, $zero, 64
	st.w	$a2, $fp, -28                   # 4-byte Folded Spill
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.62)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.62)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.63)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.63)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.64)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.64)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.65)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.65)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.66)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.66)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.67)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.67)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.68)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.68)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.69)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.69)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.70)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.70)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.71)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.71)
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.72)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.72)
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.73)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.73)
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.74)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.74)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.75)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.75)
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.76)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.76)
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.77)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.77)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.78)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.78)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.79)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.79)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.80)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.80)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.81)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.81)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.82)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.82)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.83)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.83)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.84)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.84)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.85)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.85)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.86)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.86)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.87)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.87)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.88)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.88)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.89)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.89)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.90)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.90)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.91)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.91)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.92)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.92)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.93)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.93)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.94)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.94)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.95)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.95)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.96)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.96)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.97)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.97)
	bl	%plt(memset)
	ld.w	$a2, $fp, -28                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.98)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.98)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.99)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.99)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.100)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.100)
	bl	%plt(memset)
	ld.w	$a2, $fp, -28                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.101)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.101)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.102)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.102)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.103)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.103)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.104)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.104)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.105)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.105)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.106)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.106)
	bl	%plt(memset)
	ld.w	$a2, $fp, -40                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.107)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.107)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.108)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.108)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.109)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.109)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.110)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.110)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.111)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.111)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.112)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.112)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.113)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.113)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.114)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.114)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.115)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.115)
	bl	%plt(memset)
	ld.w	$a2, $fp, -36                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.116)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.116)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.117)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.117)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.118)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.118)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.119)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.119)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.120)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.120)
	bl	%plt(memset)
	ld.w	$a2, $fp, -28                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.121)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.121)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.122)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.122)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.123)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.123)
	bl	%plt(memset)
	ld.w	$a2, $fp, -32                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.124)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.124)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.125)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.125)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.126)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.126)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.127)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.127)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.128)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.128)
	bl	%plt(memset)
	ld.w	$a2, $fp, -28                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.129)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.129)
	bl	%plt(memset)
	ld.w	$a2, $fp, -28                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.130)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.130)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.131)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.131)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.132)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.132)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.133)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.133)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.134)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.134)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.135)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.135)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.136)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.136)
	bl	%plt(memset)
	ld.w	$a2, $fp, -24                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.137)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.137)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.138)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.138)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.139)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.139)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.140)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.140)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.141)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.141)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.142)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.142)
	st.b	$a1, $a0, 0
	st.b	$a1, $a0, 1
	st.b	$a1, $a0, 2
	st.b	$a1, $a0, 3
	st.b	$a1, $a0, 4
	st.b	$a1, $a0, 5
	st.b	$a1, $a0, 6
	st.b	$a1, $a0, 7
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.143)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.143)
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.144)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.144)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.145)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.145)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.146)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.146)
	st.w	$a1, $a0, 0
	st.w	$a1, $a0, 4
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.147)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.147)
	bl	%plt(memset)
	ld.w	$a2, $fp, -20                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.148)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.148)
	bl	%plt(memset)
	ld.w	$a2, $fp, -16                   # 4-byte Folded Reload
	ld.w	$a1, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_ctr.149)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_ctr.149)
	bl	%plt(memset)
                                        # kill: def $r5 killed $r4
	ld.w	$a0, $fp, -12                   # 4-byte Folded Reload
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_ctr.150)
	addi.w	$a1, $a1, %pc_lo12(__llvm_gcov_ctr.150)
	st.b	$a0, $a1, 0
	st.b	$a0, $a1, 1
	st.b	$a0, $a1, 2
	st.b	$a0, $a1, 3
	st.b	$a0, $a1, 4
	st.b	$a0, $a1, 5
	st.b	$a0, $a1, 6
	st.b	$a0, $a1, 7
	ld.w	$fp, $sp, 40                    # 4-byte Folded Reload
	ld.w	$ra, $sp, 44                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 48
	ret
.Lfunc_end152:
	.size	__llvm_gcov_reset, .Lfunc_end152-__llvm_gcov_reset
                                        # -- End function
	.p2align	5                               # -- Begin function __llvm_gcov_init
	.type	__llvm_gcov_init,@function
__llvm_gcov_init:                       # @__llvm_gcov_init
# %bb.0:
	addi.w	$sp, $sp, -16
	st.w	$ra, $sp, 12                    # 4-byte Folded Spill
	st.w	$fp, $sp, 8                     # 4-byte Folded Spill
	addi.w	$fp, $sp, 16
	pcalau12i	$a0, %pc_hi20(__llvm_gcov_writeout)
	addi.w	$a0, $a0, %pc_lo12(__llvm_gcov_writeout)
	pcalau12i	$a1, %pc_hi20(__llvm_gcov_reset)
	addi.w	$a1, $a1, %pc_lo12(__llvm_gcov_reset)
	bl	%plt(llvm_gcov_init)
	ld.w	$fp, $sp, 8                     # 4-byte Folded Reload
	ld.w	$ra, $sp, 12                    # 4-byte Folded Reload
	addi.w	$sp, $sp, 16
	ret
.Lfunc_end153:
	.size	__llvm_gcov_init, .Lfunc_end153-__llvm_gcov_init
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
	.type	__llvm_gcov_ctr,@object         # @__llvm_gcov_ctr
	.local	__llvm_gcov_ctr
	.comm	__llvm_gcov_ctr,40,16
	.type	__llvm_gcov_ctr.1,@object       # @__llvm_gcov_ctr.1
	.local	__llvm_gcov_ctr.1
	.comm	__llvm_gcov_ctr.1,40,16
	.type	__llvm_gcov_ctr.2,@object       # @__llvm_gcov_ctr.2
	.local	__llvm_gcov_ctr.2
	.comm	__llvm_gcov_ctr.2,40,16
	.type	__llvm_gcov_ctr.3,@object       # @__llvm_gcov_ctr.3
	.local	__llvm_gcov_ctr.3
	.comm	__llvm_gcov_ctr.3,40,16
	.type	__llvm_gcov_ctr.4,@object       # @__llvm_gcov_ctr.4
	.local	__llvm_gcov_ctr.4
	.comm	__llvm_gcov_ctr.4,16,8
	.type	__llvm_gcov_ctr.5,@object       # @__llvm_gcov_ctr.5
	.local	__llvm_gcov_ctr.5
	.comm	__llvm_gcov_ctr.5,24,16
	.type	__llvm_gcov_ctr.6,@object       # @__llvm_gcov_ctr.6
	.local	__llvm_gcov_ctr.6
	.comm	__llvm_gcov_ctr.6,16,8
	.type	__llvm_gcov_ctr.7,@object       # @__llvm_gcov_ctr.7
	.local	__llvm_gcov_ctr.7
	.comm	__llvm_gcov_ctr.7,16,8
	.type	__llvm_gcov_ctr.8,@object       # @__llvm_gcov_ctr.8
	.local	__llvm_gcov_ctr.8
	.comm	__llvm_gcov_ctr.8,32,16
	.type	__llvm_gcov_ctr.9,@object       # @__llvm_gcov_ctr.9
	.local	__llvm_gcov_ctr.9
	.comm	__llvm_gcov_ctr.9,24,16
	.type	__llvm_gcov_ctr.10,@object      # @__llvm_gcov_ctr.10
	.local	__llvm_gcov_ctr.10
	.comm	__llvm_gcov_ctr.10,32,16
	.type	__llvm_gcov_ctr.11,@object      # @__llvm_gcov_ctr.11
	.local	__llvm_gcov_ctr.11
	.comm	__llvm_gcov_ctr.11,16,8
	.type	__llvm_gcov_ctr.12,@object      # @__llvm_gcov_ctr.12
	.local	__llvm_gcov_ctr.12
	.comm	__llvm_gcov_ctr.12,56,16
	.type	__llvm_gcov_ctr.13,@object      # @__llvm_gcov_ctr.13
	.local	__llvm_gcov_ctr.13
	.comm	__llvm_gcov_ctr.13,16,8
	.type	__llvm_gcov_ctr.14,@object      # @__llvm_gcov_ctr.14
	.local	__llvm_gcov_ctr.14
	.comm	__llvm_gcov_ctr.14,8,8
	.type	__llvm_gcov_ctr.15,@object      # @__llvm_gcov_ctr.15
	.local	__llvm_gcov_ctr.15
	.comm	__llvm_gcov_ctr.15,8,8
	.type	__llvm_gcov_ctr.16,@object      # @__llvm_gcov_ctr.16
	.local	__llvm_gcov_ctr.16
	.comm	__llvm_gcov_ctr.16,24,16
	.type	__llvm_gcov_ctr.17,@object      # @__llvm_gcov_ctr.17
	.local	__llvm_gcov_ctr.17
	.comm	__llvm_gcov_ctr.17,24,16
	.type	__llvm_gcov_ctr.18,@object      # @__llvm_gcov_ctr.18
	.local	__llvm_gcov_ctr.18
	.comm	__llvm_gcov_ctr.18,8,8
	.type	__llvm_gcov_ctr.19,@object      # @__llvm_gcov_ctr.19
	.local	__llvm_gcov_ctr.19
	.comm	__llvm_gcov_ctr.19,8,8
	.type	__llvm_gcov_ctr.20,@object      # @__llvm_gcov_ctr.20
	.local	__llvm_gcov_ctr.20
	.comm	__llvm_gcov_ctr.20,8,8
	.type	__llvm_gcov_ctr.21,@object      # @__llvm_gcov_ctr.21
	.local	__llvm_gcov_ctr.21
	.comm	__llvm_gcov_ctr.21,8,8
	.type	__llvm_gcov_ctr.22,@object      # @__llvm_gcov_ctr.22
	.local	__llvm_gcov_ctr.22
	.comm	__llvm_gcov_ctr.22,24,16
	.type	__llvm_gcov_ctr.23,@object      # @__llvm_gcov_ctr.23
	.local	__llvm_gcov_ctr.23
	.comm	__llvm_gcov_ctr.23,8,8
	.type	__llvm_gcov_ctr.24,@object      # @__llvm_gcov_ctr.24
	.local	__llvm_gcov_ctr.24
	.comm	__llvm_gcov_ctr.24,40,16
	.type	__llvm_gcov_ctr.25,@object      # @__llvm_gcov_ctr.25
	.local	__llvm_gcov_ctr.25
	.comm	__llvm_gcov_ctr.25,8,8
	.type	__llvm_gcov_ctr.26,@object      # @__llvm_gcov_ctr.26
	.local	__llvm_gcov_ctr.26
	.comm	__llvm_gcov_ctr.26,56,16
	.type	__llvm_gcov_ctr.27,@object      # @__llvm_gcov_ctr.27
	.local	__llvm_gcov_ctr.27
	.comm	__llvm_gcov_ctr.27,24,16
	.type	__llvm_gcov_ctr.28,@object      # @__llvm_gcov_ctr.28
	.local	__llvm_gcov_ctr.28
	.comm	__llvm_gcov_ctr.28,8,8
	.type	__llvm_gcov_ctr.29,@object      # @__llvm_gcov_ctr.29
	.local	__llvm_gcov_ctr.29
	.comm	__llvm_gcov_ctr.29,32,16
	.type	__llvm_gcov_ctr.30,@object      # @__llvm_gcov_ctr.30
	.local	__llvm_gcov_ctr.30
	.comm	__llvm_gcov_ctr.30,32,16
	.type	__llvm_gcov_ctr.31,@object      # @__llvm_gcov_ctr.31
	.local	__llvm_gcov_ctr.31
	.comm	__llvm_gcov_ctr.31,48,16
	.type	__llvm_gcov_ctr.32,@object      # @__llvm_gcov_ctr.32
	.local	__llvm_gcov_ctr.32
	.comm	__llvm_gcov_ctr.32,48,16
	.type	__llvm_gcov_ctr.33,@object      # @__llvm_gcov_ctr.33
	.local	__llvm_gcov_ctr.33
	.comm	__llvm_gcov_ctr.33,48,16
	.type	__llvm_gcov_ctr.34,@object      # @__llvm_gcov_ctr.34
	.local	__llvm_gcov_ctr.34
	.comm	__llvm_gcov_ctr.34,48,16
	.type	__llvm_gcov_ctr.35,@object      # @__llvm_gcov_ctr.35
	.local	__llvm_gcov_ctr.35
	.comm	__llvm_gcov_ctr.35,48,16
	.type	__llvm_gcov_ctr.36,@object      # @__llvm_gcov_ctr.36
	.local	__llvm_gcov_ctr.36
	.comm	__llvm_gcov_ctr.36,48,16
	.type	__llvm_gcov_ctr.37,@object      # @__llvm_gcov_ctr.37
	.local	__llvm_gcov_ctr.37
	.comm	__llvm_gcov_ctr.37,16,8
	.type	__llvm_gcov_ctr.38,@object      # @__llvm_gcov_ctr.38
	.local	__llvm_gcov_ctr.38
	.comm	__llvm_gcov_ctr.38,8,8
	.type	__llvm_gcov_ctr.39,@object      # @__llvm_gcov_ctr.39
	.local	__llvm_gcov_ctr.39
	.comm	__llvm_gcov_ctr.39,8,8
	.type	__llvm_gcov_ctr.40,@object      # @__llvm_gcov_ctr.40
	.local	__llvm_gcov_ctr.40
	.comm	__llvm_gcov_ctr.40,24,16
	.type	__llvm_gcov_ctr.41,@object      # @__llvm_gcov_ctr.41
	.local	__llvm_gcov_ctr.41
	.comm	__llvm_gcov_ctr.41,24,16
	.type	__llvm_gcov_ctr.42,@object      # @__llvm_gcov_ctr.42
	.local	__llvm_gcov_ctr.42
	.comm	__llvm_gcov_ctr.42,24,16
	.type	__llvm_gcov_ctr.43,@object      # @__llvm_gcov_ctr.43
	.local	__llvm_gcov_ctr.43
	.comm	__llvm_gcov_ctr.43,24,16
	.type	__llvm_gcov_ctr.44,@object      # @__llvm_gcov_ctr.44
	.local	__llvm_gcov_ctr.44
	.comm	__llvm_gcov_ctr.44,16,8
	.type	__llvm_gcov_ctr.45,@object      # @__llvm_gcov_ctr.45
	.local	__llvm_gcov_ctr.45
	.comm	__llvm_gcov_ctr.45,48,16
	.type	__llvm_gcov_ctr.46,@object      # @__llvm_gcov_ctr.46
	.local	__llvm_gcov_ctr.46
	.comm	__llvm_gcov_ctr.46,48,16
	.type	__llvm_gcov_ctr.47,@object      # @__llvm_gcov_ctr.47
	.local	__llvm_gcov_ctr.47
	.comm	__llvm_gcov_ctr.47,48,16
	.type	__llvm_gcov_ctr.48,@object      # @__llvm_gcov_ctr.48
	.local	__llvm_gcov_ctr.48
	.comm	__llvm_gcov_ctr.48,32,16
	.type	__llvm_gcov_ctr.49,@object      # @__llvm_gcov_ctr.49
	.local	__llvm_gcov_ctr.49
	.comm	__llvm_gcov_ctr.49,32,16
	.type	__llvm_gcov_ctr.50,@object      # @__llvm_gcov_ctr.50
	.local	__llvm_gcov_ctr.50
	.comm	__llvm_gcov_ctr.50,8,8
	.type	__llvm_gcov_ctr.51,@object      # @__llvm_gcov_ctr.51
	.local	__llvm_gcov_ctr.51
	.comm	__llvm_gcov_ctr.51,16,8
	.type	__llvm_gcov_ctr.52,@object      # @__llvm_gcov_ctr.52
	.local	__llvm_gcov_ctr.52
	.comm	__llvm_gcov_ctr.52,8,8
	.type	__llvm_gcov_ctr.53,@object      # @__llvm_gcov_ctr.53
	.local	__llvm_gcov_ctr.53
	.comm	__llvm_gcov_ctr.53,16,8
	.type	__llvm_gcov_ctr.54,@object      # @__llvm_gcov_ctr.54
	.local	__llvm_gcov_ctr.54
	.comm	__llvm_gcov_ctr.54,8,8
	.type	__llvm_gcov_ctr.55,@object      # @__llvm_gcov_ctr.55
	.local	__llvm_gcov_ctr.55
	.comm	__llvm_gcov_ctr.55,16,8
	.type	__llvm_gcov_ctr.56,@object      # @__llvm_gcov_ctr.56
	.local	__llvm_gcov_ctr.56
	.comm	__llvm_gcov_ctr.56,8,8
	.type	__llvm_gcov_ctr.57,@object      # @__llvm_gcov_ctr.57
	.local	__llvm_gcov_ctr.57
	.comm	__llvm_gcov_ctr.57,40,16
	.type	__llvm_gcov_ctr.58,@object      # @__llvm_gcov_ctr.58
	.local	__llvm_gcov_ctr.58
	.comm	__llvm_gcov_ctr.58,48,16
	.type	__llvm_gcov_ctr.59,@object      # @__llvm_gcov_ctr.59
	.local	__llvm_gcov_ctr.59
	.comm	__llvm_gcov_ctr.59,16,8
	.type	__llvm_gcov_ctr.60,@object      # @__llvm_gcov_ctr.60
	.local	__llvm_gcov_ctr.60
	.comm	__llvm_gcov_ctr.60,16,8
	.type	__llvm_gcov_ctr.61,@object      # @__llvm_gcov_ctr.61
	.local	__llvm_gcov_ctr.61
	.comm	__llvm_gcov_ctr.61,64,16
	.type	__llvm_gcov_ctr.62,@object      # @__llvm_gcov_ctr.62
	.local	__llvm_gcov_ctr.62
	.comm	__llvm_gcov_ctr.62,40,16
	.type	__llvm_gcov_ctr.63,@object      # @__llvm_gcov_ctr.63
	.local	__llvm_gcov_ctr.63
	.comm	__llvm_gcov_ctr.63,48,16
	.type	__llvm_gcov_ctr.64,@object      # @__llvm_gcov_ctr.64
	.local	__llvm_gcov_ctr.64
	.comm	__llvm_gcov_ctr.64,16,8
	.type	__llvm_gcov_ctr.65,@object      # @__llvm_gcov_ctr.65
	.local	__llvm_gcov_ctr.65
	.comm	__llvm_gcov_ctr.65,40,16
	.type	__llvm_gcov_ctr.66,@object      # @__llvm_gcov_ctr.66
	.local	__llvm_gcov_ctr.66
	.comm	__llvm_gcov_ctr.66,16,8
	.type	__llvm_gcov_ctr.67,@object      # @__llvm_gcov_ctr.67
	.local	__llvm_gcov_ctr.67
	.comm	__llvm_gcov_ctr.67,40,16
	.type	__llvm_gcov_ctr.68,@object      # @__llvm_gcov_ctr.68
	.local	__llvm_gcov_ctr.68
	.comm	__llvm_gcov_ctr.68,8,8
	.type	__llvm_gcov_ctr.69,@object      # @__llvm_gcov_ctr.69
	.local	__llvm_gcov_ctr.69
	.comm	__llvm_gcov_ctr.69,8,8
	.type	__llvm_gcov_ctr.70,@object      # @__llvm_gcov_ctr.70
	.local	__llvm_gcov_ctr.70
	.comm	__llvm_gcov_ctr.70,8,8
	.type	__llvm_gcov_ctr.71,@object      # @__llvm_gcov_ctr.71
	.local	__llvm_gcov_ctr.71
	.comm	__llvm_gcov_ctr.71,8,8
	.type	__llvm_gcov_ctr.72,@object      # @__llvm_gcov_ctr.72
	.local	__llvm_gcov_ctr.72
	.comm	__llvm_gcov_ctr.72,8,8
	.type	__llvm_gcov_ctr.73,@object      # @__llvm_gcov_ctr.73
	.local	__llvm_gcov_ctr.73
	.comm	__llvm_gcov_ctr.73,8,8
	.type	__llvm_gcov_ctr.74,@object      # @__llvm_gcov_ctr.74
	.local	__llvm_gcov_ctr.74
	.comm	__llvm_gcov_ctr.74,8,8
	.type	__llvm_gcov_ctr.75,@object      # @__llvm_gcov_ctr.75
	.local	__llvm_gcov_ctr.75
	.comm	__llvm_gcov_ctr.75,8,8
	.type	__llvm_gcov_ctr.76,@object      # @__llvm_gcov_ctr.76
	.local	__llvm_gcov_ctr.76
	.comm	__llvm_gcov_ctr.76,8,8
	.type	__llvm_gcov_ctr.77,@object      # @__llvm_gcov_ctr.77
	.local	__llvm_gcov_ctr.77
	.comm	__llvm_gcov_ctr.77,8,8
	.type	__llvm_gcov_ctr.78,@object      # @__llvm_gcov_ctr.78
	.local	__llvm_gcov_ctr.78
	.comm	__llvm_gcov_ctr.78,8,8
	.type	__llvm_gcov_ctr.79,@object      # @__llvm_gcov_ctr.79
	.local	__llvm_gcov_ctr.79
	.comm	__llvm_gcov_ctr.79,8,8
	.type	__llvm_gcov_ctr.80,@object      # @__llvm_gcov_ctr.80
	.local	__llvm_gcov_ctr.80
	.comm	__llvm_gcov_ctr.80,8,8
	.type	__llvm_gcov_ctr.81,@object      # @__llvm_gcov_ctr.81
	.local	__llvm_gcov_ctr.81
	.comm	__llvm_gcov_ctr.81,24,16
	.type	__llvm_gcov_ctr.82,@object      # @__llvm_gcov_ctr.82
	.local	__llvm_gcov_ctr.82
	.comm	__llvm_gcov_ctr.82,24,16
	.type	__llvm_gcov_ctr.83,@object      # @__llvm_gcov_ctr.83
	.local	__llvm_gcov_ctr.83
	.comm	__llvm_gcov_ctr.83,24,16
	.type	__llvm_gcov_ctr.84,@object      # @__llvm_gcov_ctr.84
	.local	__llvm_gcov_ctr.84
	.comm	__llvm_gcov_ctr.84,24,16
	.type	__llvm_gcov_ctr.85,@object      # @__llvm_gcov_ctr.85
	.local	__llvm_gcov_ctr.85
	.comm	__llvm_gcov_ctr.85,24,16
	.type	__llvm_gcov_ctr.86,@object      # @__llvm_gcov_ctr.86
	.local	__llvm_gcov_ctr.86
	.comm	__llvm_gcov_ctr.86,8,8
	.type	__llvm_gcov_ctr.87,@object      # @__llvm_gcov_ctr.87
	.local	__llvm_gcov_ctr.87
	.comm	__llvm_gcov_ctr.87,40,16
	.type	__llvm_gcov_ctr.88,@object      # @__llvm_gcov_ctr.88
	.local	__llvm_gcov_ctr.88
	.comm	__llvm_gcov_ctr.88,40,16
	.type	__llvm_gcov_ctr.89,@object      # @__llvm_gcov_ctr.89
	.local	__llvm_gcov_ctr.89
	.comm	__llvm_gcov_ctr.89,40,16
	.type	__llvm_gcov_ctr.90,@object      # @__llvm_gcov_ctr.90
	.local	__llvm_gcov_ctr.90
	.comm	__llvm_gcov_ctr.90,16,8
	.type	__llvm_gcov_ctr.91,@object      # @__llvm_gcov_ctr.91
	.local	__llvm_gcov_ctr.91
	.comm	__llvm_gcov_ctr.91,40,16
	.type	__llvm_gcov_ctr.92,@object      # @__llvm_gcov_ctr.92
	.local	__llvm_gcov_ctr.92
	.comm	__llvm_gcov_ctr.92,32,16
	.type	__llvm_gcov_ctr.93,@object      # @__llvm_gcov_ctr.93
	.local	__llvm_gcov_ctr.93
	.comm	__llvm_gcov_ctr.93,32,16
	.type	__llvm_gcov_ctr.94,@object      # @__llvm_gcov_ctr.94
	.local	__llvm_gcov_ctr.94
	.comm	__llvm_gcov_ctr.94,24,16
	.type	__llvm_gcov_ctr.95,@object      # @__llvm_gcov_ctr.95
	.local	__llvm_gcov_ctr.95
	.comm	__llvm_gcov_ctr.95,32,16
	.type	__llvm_gcov_ctr.96,@object      # @__llvm_gcov_ctr.96
	.local	__llvm_gcov_ctr.96
	.comm	__llvm_gcov_ctr.96,40,16
	.type	__llvm_gcov_ctr.97,@object      # @__llvm_gcov_ctr.97
	.local	__llvm_gcov_ctr.97
	.comm	__llvm_gcov_ctr.97,48,16
	.type	__llvm_gcov_ctr.98,@object      # @__llvm_gcov_ctr.98
	.local	__llvm_gcov_ctr.98
	.comm	__llvm_gcov_ctr.98,8,8
	.type	__llvm_gcov_ctr.99,@object      # @__llvm_gcov_ctr.99
	.local	__llvm_gcov_ctr.99
	.comm	__llvm_gcov_ctr.99,64,16
	.type	__llvm_gcov_ctr.100,@object     # @__llvm_gcov_ctr.100
	.local	__llvm_gcov_ctr.100
	.comm	__llvm_gcov_ctr.100,24,16
	.type	__llvm_gcov_ctr.101,@object     # @__llvm_gcov_ctr.101
	.local	__llvm_gcov_ctr.101
	.comm	__llvm_gcov_ctr.101,64,16
	.type	__llvm_gcov_ctr.102,@object     # @__llvm_gcov_ctr.102
	.local	__llvm_gcov_ctr.102
	.comm	__llvm_gcov_ctr.102,24,16
	.type	__llvm_gcov_ctr.103,@object     # @__llvm_gcov_ctr.103
	.local	__llvm_gcov_ctr.103
	.comm	__llvm_gcov_ctr.103,24,16
	.type	__llvm_gcov_ctr.104,@object     # @__llvm_gcov_ctr.104
	.local	__llvm_gcov_ctr.104
	.comm	__llvm_gcov_ctr.104,24,16
	.type	__llvm_gcov_ctr.105,@object     # @__llvm_gcov_ctr.105
	.local	__llvm_gcov_ctr.105
	.comm	__llvm_gcov_ctr.105,48,16
	.type	__llvm_gcov_ctr.106,@object     # @__llvm_gcov_ctr.106
	.local	__llvm_gcov_ctr.106
	.comm	__llvm_gcov_ctr.106,48,16
	.type	__llvm_gcov_ctr.107,@object     # @__llvm_gcov_ctr.107
	.local	__llvm_gcov_ctr.107
	.comm	__llvm_gcov_ctr.107,48,16
	.type	__llvm_gcov_ctr.108,@object     # @__llvm_gcov_ctr.108
	.local	__llvm_gcov_ctr.108
	.comm	__llvm_gcov_ctr.108,8,8
	.type	__llvm_gcov_ctr.109,@object     # @__llvm_gcov_ctr.109
	.local	__llvm_gcov_ctr.109
	.comm	__llvm_gcov_ctr.109,8,8
	.type	__llvm_gcov_ctr.110,@object     # @__llvm_gcov_ctr.110
	.local	__llvm_gcov_ctr.110
	.comm	__llvm_gcov_ctr.110,8,8
	.type	__llvm_gcov_ctr.111,@object     # @__llvm_gcov_ctr.111
	.local	__llvm_gcov_ctr.111
	.comm	__llvm_gcov_ctr.111,8,8
	.type	__llvm_gcov_ctr.112,@object     # @__llvm_gcov_ctr.112
	.local	__llvm_gcov_ctr.112
	.comm	__llvm_gcov_ctr.112,8,8
	.type	__llvm_gcov_ctr.113,@object     # @__llvm_gcov_ctr.113
	.local	__llvm_gcov_ctr.113
	.comm	__llvm_gcov_ctr.113,8,8
	.type	__llvm_gcov_ctr.114,@object     # @__llvm_gcov_ctr.114
	.local	__llvm_gcov_ctr.114
	.comm	__llvm_gcov_ctr.114,24,16
	.type	__llvm_gcov_ctr.115,@object     # @__llvm_gcov_ctr.115
	.local	__llvm_gcov_ctr.115
	.comm	__llvm_gcov_ctr.115,24,16
	.type	__llvm_gcov_ctr.116,@object     # @__llvm_gcov_ctr.116
	.local	__llvm_gcov_ctr.116
	.comm	__llvm_gcov_ctr.116,16,8
	.type	__llvm_gcov_ctr.117,@object     # @__llvm_gcov_ctr.117
	.local	__llvm_gcov_ctr.117
	.comm	__llvm_gcov_ctr.117,24,16
	.type	__llvm_gcov_ctr.118,@object     # @__llvm_gcov_ctr.118
	.local	__llvm_gcov_ctr.118
	.comm	__llvm_gcov_ctr.118,24,16
	.type	__llvm_gcov_ctr.119,@object     # @__llvm_gcov_ctr.119
	.local	__llvm_gcov_ctr.119
	.comm	__llvm_gcov_ctr.119,24,16
	.type	__llvm_gcov_ctr.120,@object     # @__llvm_gcov_ctr.120
	.local	__llvm_gcov_ctr.120
	.comm	__llvm_gcov_ctr.120,32,16
	.type	__llvm_gcov_ctr.121,@object     # @__llvm_gcov_ctr.121
	.local	__llvm_gcov_ctr.121
	.comm	__llvm_gcov_ctr.121,64,16
	.type	__llvm_gcov_ctr.122,@object     # @__llvm_gcov_ctr.122
	.local	__llvm_gcov_ctr.122
	.comm	__llvm_gcov_ctr.122,24,16
	.type	__llvm_gcov_ctr.123,@object     # @__llvm_gcov_ctr.123
	.local	__llvm_gcov_ctr.123
	.comm	__llvm_gcov_ctr.123,24,16
	.type	__llvm_gcov_ctr.124,@object     # @__llvm_gcov_ctr.124
	.local	__llvm_gcov_ctr.124
	.comm	__llvm_gcov_ctr.124,8,8
	.type	__llvm_gcov_ctr.125,@object     # @__llvm_gcov_ctr.125
	.local	__llvm_gcov_ctr.125
	.comm	__llvm_gcov_ctr.125,8,8
	.type	__llvm_gcov_ctr.126,@object     # @__llvm_gcov_ctr.126
	.local	__llvm_gcov_ctr.126
	.comm	__llvm_gcov_ctr.126,56,16
	.type	__llvm_gcov_ctr.127,@object     # @__llvm_gcov_ctr.127
	.local	__llvm_gcov_ctr.127
	.comm	__llvm_gcov_ctr.127,32,16
	.type	__llvm_gcov_ctr.128,@object     # @__llvm_gcov_ctr.128
	.local	__llvm_gcov_ctr.128
	.comm	__llvm_gcov_ctr.128,32,16
	.type	__llvm_gcov_ctr.129,@object     # @__llvm_gcov_ctr.129
	.local	__llvm_gcov_ctr.129
	.comm	__llvm_gcov_ctr.129,64,16
	.type	__llvm_gcov_ctr.130,@object     # @__llvm_gcov_ctr.130
	.local	__llvm_gcov_ctr.130
	.comm	__llvm_gcov_ctr.130,64,16
	.type	__llvm_gcov_ctr.131,@object     # @__llvm_gcov_ctr.131
	.local	__llvm_gcov_ctr.131
	.comm	__llvm_gcov_ctr.131,24,16
	.type	__llvm_gcov_ctr.132,@object     # @__llvm_gcov_ctr.132
	.local	__llvm_gcov_ctr.132
	.comm	__llvm_gcov_ctr.132,24,16
	.type	__llvm_gcov_ctr.133,@object     # @__llvm_gcov_ctr.133
	.local	__llvm_gcov_ctr.133
	.comm	__llvm_gcov_ctr.133,8,8
	.type	__llvm_gcov_ctr.134,@object     # @__llvm_gcov_ctr.134
	.local	__llvm_gcov_ctr.134
	.comm	__llvm_gcov_ctr.134,8,8
	.type	__llvm_gcov_ctr.135,@object     # @__llvm_gcov_ctr.135
	.local	__llvm_gcov_ctr.135
	.comm	__llvm_gcov_ctr.135,8,8
	.type	__llvm_gcov_ctr.136,@object     # @__llvm_gcov_ctr.136
	.local	__llvm_gcov_ctr.136
	.comm	__llvm_gcov_ctr.136,40,16
	.type	__llvm_gcov_ctr.137,@object     # @__llvm_gcov_ctr.137
	.local	__llvm_gcov_ctr.137
	.comm	__llvm_gcov_ctr.137,8,8
	.type	__llvm_gcov_ctr.138,@object     # @__llvm_gcov_ctr.138
	.local	__llvm_gcov_ctr.138
	.comm	__llvm_gcov_ctr.138,8,8
	.type	__llvm_gcov_ctr.139,@object     # @__llvm_gcov_ctr.139
	.local	__llvm_gcov_ctr.139
	.comm	__llvm_gcov_ctr.139,24,16
	.type	__llvm_gcov_ctr.140,@object     # @__llvm_gcov_ctr.140
	.local	__llvm_gcov_ctr.140
	.comm	__llvm_gcov_ctr.140,8,8
	.type	__llvm_gcov_ctr.141,@object     # @__llvm_gcov_ctr.141
	.local	__llvm_gcov_ctr.141
	.comm	__llvm_gcov_ctr.141,8,8
	.type	__llvm_gcov_ctr.142,@object     # @__llvm_gcov_ctr.142
	.local	__llvm_gcov_ctr.142
	.comm	__llvm_gcov_ctr.142,8,8
	.type	__llvm_gcov_ctr.143,@object     # @__llvm_gcov_ctr.143
	.local	__llvm_gcov_ctr.143
	.comm	__llvm_gcov_ctr.143,8,8
	.type	__llvm_gcov_ctr.144,@object     # @__llvm_gcov_ctr.144
	.local	__llvm_gcov_ctr.144
	.comm	__llvm_gcov_ctr.144,8,8
	.type	__llvm_gcov_ctr.145,@object     # @__llvm_gcov_ctr.145
	.local	__llvm_gcov_ctr.145
	.comm	__llvm_gcov_ctr.145,8,8
	.type	__llvm_gcov_ctr.146,@object     # @__llvm_gcov_ctr.146
	.local	__llvm_gcov_ctr.146
	.comm	__llvm_gcov_ctr.146,8,8
	.type	__llvm_gcov_ctr.147,@object     # @__llvm_gcov_ctr.147
	.local	__llvm_gcov_ctr.147
	.comm	__llvm_gcov_ctr.147,32,16
	.type	__llvm_gcov_ctr.148,@object     # @__llvm_gcov_ctr.148
	.local	__llvm_gcov_ctr.148
	.comm	__llvm_gcov_ctr.148,32,16
	.type	__llvm_gcov_ctr.149,@object     # @__llvm_gcov_ctr.149
	.local	__llvm_gcov_ctr.149
	.comm	__llvm_gcov_ctr.149,40,16
	.type	__llvm_gcov_ctr.150,@object     # @__llvm_gcov_ctr.150
	.local	__llvm_gcov_ctr.150
	.comm	__llvm_gcov_ctr.150,8,8
	.type	.L__unnamed_1,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_1:
	.asciz	"/home/gravier/tmp/some-libc-opt/clang-loongarch32.gcda"
	.size	.L__unnamed_1, 55

	.type	__llvm_internal_gcov_emit_function_args.0,@object # @__llvm_internal_gcov_emit_function_args.0
	.section	.rodata,"a",@progbits
	.p2align	4, 0x0
__llvm_internal_gcov_emit_function_args.0:
	.word	0                               # 0x0
	.word	560687177                       # 0x216b6849
	.word	3469251760                      # 0xcec894b0
	.word	1                               # 0x1
	.word	1589591758                      # 0x5ebf3ece
	.word	3469251760                      # 0xcec894b0
	.word	2                               # 0x2
	.word	2176136383                      # 0x81b534bf
	.word	3469251760                      # 0xcec894b0
	.word	3                               # 0x3
	.word	3586625172                      # 0xd5c78e94
	.word	3469251760                      # 0xcec894b0
	.word	4                               # 0x4
	.word	2323119728                      # 0x8a77fe70
	.word	3469251760                      # 0xcec894b0
	.word	5                               # 0x5
	.word	2314569740                      # 0x89f5880c
	.word	3469251760                      # 0xcec894b0
	.word	6                               # 0x6
	.word	2833673551                      # 0xa8e66d4f
	.word	3469251760                      # 0xcec894b0
	.word	7                               # 0x7
	.word	1458633189                      # 0x56f0f9e5
	.word	3469251760                      # 0xcec894b0
	.word	8                               # 0x8
	.word	1190300833                      # 0x46f28ca1
	.word	3469251760                      # 0xcec894b0
	.word	9                               # 0x9
	.word	758327989                       # 0x2d332ab5
	.word	3469251760                      # 0xcec894b0
	.word	10                              # 0xa
	.word	1651479037                      # 0x626f91fd
	.word	3469251760                      # 0xcec894b0
	.word	11                              # 0xb
	.word	4132343275                      # 0xf64e8deb
	.word	3469251760                      # 0xcec894b0
	.word	12                              # 0xc
	.word	734262523                       # 0x2bc3f4fb
	.word	3469251760                      # 0xcec894b0
	.word	13                              # 0xd
	.word	2463424677                      # 0x92d4e0a5
	.word	3469251760                      # 0xcec894b0
	.word	14                              # 0xe
	.word	1419026334                      # 0x54949f9e
	.word	3469251760                      # 0xcec894b0
	.word	15                              # 0xf
	.word	3154471370                      # 0xbc0569ca
	.word	3469251760                      # 0xcec894b0
	.word	16                              # 0x10
	.word	2077973487                      # 0x7bdb5bef
	.word	3469251760                      # 0xcec894b0
	.word	17                              # 0x11
	.word	1474691227                      # 0x57e6009b
	.word	3469251760                      # 0xcec894b0
	.word	18                              # 0x12
	.word	3710986016                      # 0xdd312720
	.word	3469251760                      # 0xcec894b0
	.word	19                              # 0x13
	.word	1305101473                      # 0x4dca44a1
	.word	3469251760                      # 0xcec894b0
	.word	20                              # 0x14
	.word	3762036564                      # 0xe03c1f54
	.word	3469251760                      # 0xcec894b0
	.word	21                              # 0x15
	.word	477914433                       # 0x1c7c6541
	.word	3469251760                      # 0xcec894b0
	.word	22                              # 0x16
	.word	3923035234                      # 0xe9d4c462
	.word	3469251760                      # 0xcec894b0
	.word	23                              # 0x17
	.word	951651702                       # 0x38b90d76
	.word	3469251760                      # 0xcec894b0
	.word	24                              # 0x18
	.word	4206925919                      # 0xfac0985f
	.word	3469251760                      # 0xcec894b0
	.word	25                              # 0x19
	.word	32773942                        # 0x1f41736
	.word	3469251760                      # 0xcec894b0
	.word	26                              # 0x1a
	.word	2877267246                      # 0xab7f9d2e
	.word	3469251760                      # 0xcec894b0
	.word	27                              # 0x1b
	.word	860405771                       # 0x3348c00b
	.word	3469251760                      # 0xcec894b0
	.word	28                              # 0x1c
	.word	815674877                       # 0x309e35fd
	.word	3469251760                      # 0xcec894b0
	.word	29                              # 0x1d
	.word	1778838753                      # 0x6a06ece1
	.word	3469251760                      # 0xcec894b0
	.word	30                              # 0x1e
	.word	2718307199                      # 0xa206137f
	.word	3469251760                      # 0xcec894b0
	.word	31                              # 0x1f
	.word	856224820                       # 0x3308f434
	.word	3469251760                      # 0xcec894b0
	.word	32                              # 0x20
	.word	1111195143                      # 0x423b7e07
	.word	3469251760                      # 0xcec894b0
	.word	33                              # 0x21
	.word	1178414519                      # 0x463d2db7
	.word	3469251760                      # 0xcec894b0
	.word	34                              # 0x22
	.word	3477640633                      # 0xcf4895b9
	.word	3469251760                      # 0xcec894b0
	.word	35                              # 0x23
	.word	4294770115                      # 0xfffcfdc3
	.word	3469251760                      # 0xcec894b0
	.word	36                              # 0x24
	.word	3650660234                      # 0xd998a78a
	.word	3469251760                      # 0xcec894b0
	.word	37                              # 0x25
	.word	289327647                       # 0x113eca1f
	.word	3469251760                      # 0xcec894b0
	.word	38                              # 0x26
	.word	2093612798                      # 0x7cc9fefe
	.word	3469251760                      # 0xcec894b0
	.word	39                              # 0x27
	.word	4177956716                      # 0xf9068f6c
	.word	3469251760                      # 0xcec894b0
	.word	40                              # 0x28
	.word	3434808461                      # 0xccbb048d
	.word	3469251760                      # 0xcec894b0
	.word	41                              # 0x29
	.word	3206497114                      # 0xbf1f435a
	.word	3469251760                      # 0xcec894b0
	.word	42                              # 0x2a
	.word	1537257434                      # 0x5ba0afda
	.word	3469251760                      # 0xcec894b0
	.word	43                              # 0x2b
	.word	3028077325                      # 0xb47ccb0d
	.word	3469251760                      # 0xcec894b0
	.word	44                              # 0x2c
	.word	1369848209                      # 0x51a63991
	.word	3469251760                      # 0xcec894b0
	.word	45                              # 0x2d
	.word	938831176                       # 0x37f56d48
	.word	3469251760                      # 0xcec894b0
	.word	46                              # 0x2e
	.word	1663146323                      # 0x63219953
	.word	3469251760                      # 0xcec894b0
	.word	47                              # 0x2f
	.word	4111410217                      # 0xf50f2429
	.word	3469251760                      # 0xcec894b0
	.word	48                              # 0x30
	.word	1475378556                      # 0x57f07d7c
	.word	3469251760                      # 0xcec894b0
	.word	49                              # 0x31
	.word	3356195547                      # 0xc80b7adb
	.word	3469251760                      # 0xcec894b0
	.word	50                              # 0x32
	.word	514931786                       # 0x1eb13c4a
	.word	3469251760                      # 0xcec894b0
	.word	51                              # 0x33
	.word	2854034444                      # 0xaa1d1c0c
	.word	3469251760                      # 0xcec894b0
	.word	52                              # 0x34
	.word	2747937306                      # 0xa3ca321a
	.word	3469251760                      # 0xcec894b0
	.word	53                              # 0x35
	.word	4192776208                      # 0xf9e8b010
	.word	3469251760                      # 0xcec894b0
	.word	54                              # 0x36
	.word	984436227                       # 0x3aad4e03
	.word	3469251760                      # 0xcec894b0
	.word	55                              # 0x37
	.word	1477657574                      # 0x581343e6
	.word	3469251760                      # 0xcec894b0
	.word	56                              # 0x38
	.word	1339127973                      # 0x4fd178a5
	.word	3469251760                      # 0xcec894b0
	.word	57                              # 0x39
	.word	2960567906                      # 0xb076ae62
	.word	3469251760                      # 0xcec894b0
	.word	58                              # 0x3a
	.word	3390076872                      # 0xca1077c8
	.word	3469251760                      # 0xcec894b0
	.word	59                              # 0x3b
	.word	1543282230                      # 0x5bfc9e36
	.word	3469251760                      # 0xcec894b0
	.word	60                              # 0x3c
	.word	2934101789                      # 0xaee2d71d
	.word	3469251760                      # 0xcec894b0
	.word	61                              # 0x3d
	.word	3737986119                      # 0xdecd2447
	.word	3469251760                      # 0xcec894b0
	.word	62                              # 0x3e
	.word	49556427                        # 0x2f42bcb
	.word	3469251760                      # 0xcec894b0
	.word	63                              # 0x3f
	.word	234051526                       # 0xdf357c6
	.word	3469251760                      # 0xcec894b0
	.word	64                              # 0x40
	.word	2341800126                      # 0x8b9508be
	.word	3469251760                      # 0xcec894b0
	.word	65                              # 0x41
	.word	3256799948                      # 0xc21ed2cc
	.word	3469251760                      # 0xcec894b0
	.word	66                              # 0x42
	.word	777295480                       # 0x2e549678
	.word	3469251760                      # 0xcec894b0
	.word	67                              # 0x43
	.word	14040531                        # 0xd63dd3
	.word	3469251760                      # 0xcec894b0
	.word	68                              # 0x44
	.word	8047973                         # 0x7acd65
	.word	3469251760                      # 0xcec894b0
	.word	69                              # 0x45
	.word	719459161                       # 0x2ae21359
	.word	3469251760                      # 0xcec894b0
	.word	70                              # 0x46
	.word	243358501                       # 0xe815b25
	.word	3469251760                      # 0xcec894b0
	.word	71                              # 0x47
	.word	3262173932                      # 0xc270d2ec
	.word	3469251760                      # 0xcec894b0
	.word	72                              # 0x48
	.word	398910553                       # 0x17c6e459
	.word	3469251760                      # 0xcec894b0
	.word	73                              # 0x49
	.word	3354219739                      # 0xc7ed54db
	.word	3469251760                      # 0xcec894b0
	.word	74                              # 0x4a
	.word	2570308788                      # 0x9933ccb4
	.word	3469251760                      # 0xcec894b0
	.word	75                              # 0x4b
	.word	982429111                       # 0x3a8eadb7
	.word	3469251760                      # 0xcec894b0
	.word	76                              # 0x4c
	.word	211491241                       # 0xc9b19a9
	.word	3469251760                      # 0xcec894b0
	.word	77                              # 0x4d
	.word	1075683319                      # 0x401d9ff7
	.word	3469251760                      # 0xcec894b0
	.word	78                              # 0x4e
	.word	1886352651                      # 0x706f750b
	.word	3469251760                      # 0xcec894b0
	.word	79                              # 0x4f
	.word	248637203                       # 0xed1e713
	.word	3469251760                      # 0xcec894b0
	.word	80                              # 0x50
	.word	703327087                       # 0x29ebeb6f
	.word	3469251760                      # 0xcec894b0
	.word	81                              # 0x51
	.word	3690160730                      # 0xdbf3625a
	.word	3469251760                      # 0xcec894b0
	.word	82                              # 0x52
	.word	787048238                       # 0x2ee9672e
	.word	3469251760                      # 0xcec894b0
	.word	83                              # 0x53
	.word	1937497967                      # 0x737bdf6f
	.word	3469251760                      # 0xcec894b0
	.word	84                              # 0x54
	.word	4205062514                      # 0xfaa42972
	.word	3469251760                      # 0xcec894b0
	.word	85                              # 0x55
	.word	694462539                       # 0x2964a84b
	.word	3469251760                      # 0xcec894b0
	.word	86                              # 0x56
	.word	85970907                        # 0x51fcfdb
	.word	3469251760                      # 0xcec894b0
	.word	87                              # 0x57
	.word	3681984728                      # 0xdb76a0d8
	.word	3469251760                      # 0xcec894b0
	.word	88                              # 0x58
	.word	3620297642                      # 0xd7c95baa
	.word	3469251760                      # 0xcec894b0
	.word	89                              # 0x59
	.word	3394804480                      # 0xca589b00
	.word	3469251760                      # 0xcec894b0
	.word	90                              # 0x5a
	.word	2119330183                      # 0x7e526987
	.word	3469251760                      # 0xcec894b0
	.word	91                              # 0x5b
	.word	1963040266                      # 0x75019e0a
	.word	3469251760                      # 0xcec894b0
	.word	92                              # 0x5c
	.word	1603391838                      # 0x5f91d15e
	.word	3469251760                      # 0xcec894b0
	.word	93                              # 0x5d
	.word	2340921237                      # 0x8b879f95
	.word	3469251760                      # 0xcec894b0
	.word	94                              # 0x5e
	.word	3028177438                      # 0xb47e521e
	.word	3469251760                      # 0xcec894b0
	.word	95                              # 0x5f
	.word	2265525308                      # 0x87092c3c
	.word	3469251760                      # 0xcec894b0
	.word	96                              # 0x60
	.word	2598903994                      # 0x9ae820ba
	.word	3469251760                      # 0xcec894b0
	.word	97                              # 0x61
	.word	139524705                       # 0x850fa61
	.word	3469251760                      # 0xcec894b0
	.word	98                              # 0x62
	.word	1076410600                      # 0x4028b8e8
	.word	3469251760                      # 0xcec894b0
	.word	99                              # 0x63
	.word	220237413                       # 0xd208e65
	.word	3469251760                      # 0xcec894b0
	.word	100                             # 0x64
	.word	3913623866                      # 0xe945293a
	.word	3469251760                      # 0xcec894b0
	.word	101                             # 0x65
	.word	3453026372                      # 0xcdd10044
	.word	3469251760                      # 0xcec894b0
	.word	102                             # 0x66
	.word	2321387380                      # 0x8a5d8f74
	.word	3469251760                      # 0xcec894b0
	.word	103                             # 0x67
	.word	3319939363                      # 0xc5e24123
	.word	3469251760                      # 0xcec894b0
	.word	104                             # 0x68
	.word	398991913                       # 0x17c82229
	.word	3469251760                      # 0xcec894b0
	.word	105                             # 0x69
	.word	333429647                       # 0x13dfbb8f
	.word	3469251760                      # 0xcec894b0
	.word	106                             # 0x6a
	.word	3927133990                      # 0xea134f26
	.word	3469251760                      # 0xcec894b0
	.word	107                             # 0x6b
	.word	1797971294                      # 0x6b2add5e
	.word	3469251760                      # 0xcec894b0
	.word	108                             # 0x6c
	.word	1622314776                      # 0x60b28f18
	.word	3469251760                      # 0xcec894b0
	.word	109                             # 0x6d
	.word	1092862330                      # 0x4123c17a
	.word	3469251760                      # 0xcec894b0
	.word	110                             # 0x6e
	.word	2568657322                      # 0x991a99aa
	.word	3469251760                      # 0xcec894b0
	.word	111                             # 0x6f
	.word	2168129897                      # 0x813b0969
	.word	3469251760                      # 0xcec894b0
	.word	112                             # 0x70
	.word	2890303119                      # 0xac46868f
	.word	3469251760                      # 0xcec894b0
	.word	113                             # 0x71
	.word	1713332582                      # 0x661f6166
	.word	3469251760                      # 0xcec894b0
	.word	114                             # 0x72
	.word	2375727721                      # 0x8d9aba69
	.word	3469251760                      # 0xcec894b0
	.word	115                             # 0x73
	.word	3586767156                      # 0xd5c9b934
	.word	3469251760                      # 0xcec894b0
	.word	116                             # 0x74
	.word	2191348475                      # 0x829d52fb
	.word	3469251760                      # 0xcec894b0
	.word	117                             # 0x75
	.word	3910023869                      # 0xe90e3abd
	.word	3469251760                      # 0xcec894b0
	.word	118                             # 0x76
	.word	4189915105                      # 0xf9bd07e1
	.word	3469251760                      # 0xcec894b0
	.word	119                             # 0x77
	.word	2527353334                      # 0x96a459f6
	.word	3469251760                      # 0xcec894b0
	.word	120                             # 0x78
	.word	3429265923                      # 0xcc667203
	.word	3469251760                      # 0xcec894b0
	.word	121                             # 0x79
	.word	1283962724                      # 0x4c87b764
	.word	3469251760                      # 0xcec894b0
	.word	122                             # 0x7a
	.word	1970290990                      # 0x7570412e
	.word	3469251760                      # 0xcec894b0
	.word	123                             # 0x7b
	.word	2615950861                      # 0x9bec3e0d
	.word	3469251760                      # 0xcec894b0
	.word	124                             # 0x7c
	.word	3338450337                      # 0xc6fcb5a1
	.word	3469251760                      # 0xcec894b0
	.word	125                             # 0x7d
	.word	3971836509                      # 0xecbd6a5d
	.word	3469251760                      # 0xcec894b0
	.word	126                             # 0x7e
	.word	4260339231                      # 0xfdef9e1f
	.word	3469251760                      # 0xcec894b0
	.word	127                             # 0x7f
	.word	4160738226                      # 0xf7ffd3b2
	.word	3469251760                      # 0xcec894b0
	.word	128                             # 0x80
	.word	1309372079                      # 0x4e0b6eaf
	.word	3469251760                      # 0xcec894b0
	.word	129                             # 0x81
	.word	3151575564                      # 0xbbd93a0c
	.word	3469251760                      # 0xcec894b0
	.word	130                             # 0x82
	.word	3938977714                      # 0xeac807b2
	.word	3469251760                      # 0xcec894b0
	.word	131                             # 0x83
	.word	3228738087                      # 0xc072a227
	.word	3469251760                      # 0xcec894b0
	.word	132                             # 0x84
	.word	3135705803                      # 0xbae712cb
	.word	3469251760                      # 0xcec894b0
	.word	133                             # 0x85
	.word	4061147315                      # 0xf21030b3
	.word	3469251760                      # 0xcec894b0
	.word	134                             # 0x86
	.word	2783543715                      # 0xa5e981a3
	.word	3469251760                      # 0xcec894b0
	.word	135                             # 0x87
	.word	2471046843                      # 0x93492ebb
	.word	3469251760                      # 0xcec894b0
	.word	136                             # 0x88
	.word	260073473                       # 0xf806801
	.word	3469251760                      # 0xcec894b0
	.word	137                             # 0x89
	.word	1259876295                      # 0x4b182fc7
	.word	3469251760                      # 0xcec894b0
	.word	138                             # 0x8a
	.word	2579807359                      # 0x99c4bc7f
	.word	3469251760                      # 0xcec894b0
	.word	139                             # 0x8b
	.word	90061610                        # 0x55e3b2a
	.word	3469251760                      # 0xcec894b0
	.word	140                             # 0x8c
	.word	3598610789                      # 0xd67e7165
	.word	3469251760                      # 0xcec894b0
	.word	141                             # 0x8d
	.word	2351688191                      # 0x8c2be9ff
	.word	3469251760                      # 0xcec894b0
	.word	142                             # 0x8e
	.word	1438161982                      # 0x55b89c3e
	.word	3469251760                      # 0xcec894b0
	.word	143                             # 0x8f
	.word	2438880600                      # 0x915e5d58
	.word	3469251760                      # 0xcec894b0
	.word	144                             # 0x90
	.word	3593193962                      # 0xd62bc9ea
	.word	3469251760                      # 0xcec894b0
	.word	145                             # 0x91
	.word	1755082314                      # 0x689c6e4a
	.word	3469251760                      # 0xcec894b0
	.word	146                             # 0x92
	.word	3432612426                      # 0xcc99824a
	.word	3469251760                      # 0xcec894b0
	.word	147                             # 0x93
	.word	3374828335                      # 0xc927cb2f
	.word	3469251760                      # 0xcec894b0
	.word	148                             # 0x94
	.word	3311814731                      # 0xc566484b
	.word	3469251760                      # 0xcec894b0
	.word	149                             # 0x95
	.word	413908966                       # 0x18abbfe6
	.word	3469251760                      # 0xcec894b0
	.word	150                             # 0x96
	.word	3027808697                      # 0xb478b1b9
	.word	3469251760                      # 0xcec894b0
	.size	__llvm_internal_gcov_emit_function_args.0, 1812

	.type	__llvm_internal_gcov_emit_arcs_args.0,@object # @__llvm_internal_gcov_emit_arcs_args.0
	.p2align	4, 0x0
__llvm_internal_gcov_emit_arcs_args.0:
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.1
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.2
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.3
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.4
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.5
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.6
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.7
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.8
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.9
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.10
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.11
	.word	7                               # 0x7
	.word	__llvm_gcov_ctr.12
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.13
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.14
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.15
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.16
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.17
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.18
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.19
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.20
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.21
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.22
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.23
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.24
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.25
	.word	7                               # 0x7
	.word	__llvm_gcov_ctr.26
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.27
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.28
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.29
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.30
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.31
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.32
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.33
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.34
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.35
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.36
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.37
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.38
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.39
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.40
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.41
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.42
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.43
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.44
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.45
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.46
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.47
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.48
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.49
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.50
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.51
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.52
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.53
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.54
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.55
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.56
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.57
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.58
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.59
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.60
	.word	8                               # 0x8
	.word	__llvm_gcov_ctr.61
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.62
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.63
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.64
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.65
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.66
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.67
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.68
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.69
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.70
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.71
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.72
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.73
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.74
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.75
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.76
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.77
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.78
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.79
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.80
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.81
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.82
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.83
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.84
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.85
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.86
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.87
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.88
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.89
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.90
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.91
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.92
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.93
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.94
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.95
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.96
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.97
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.98
	.word	8                               # 0x8
	.word	__llvm_gcov_ctr.99
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.100
	.word	8                               # 0x8
	.word	__llvm_gcov_ctr.101
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.102
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.103
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.104
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.105
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.106
	.word	6                               # 0x6
	.word	__llvm_gcov_ctr.107
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.108
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.109
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.110
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.111
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.112
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.113
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.114
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.115
	.word	2                               # 0x2
	.word	__llvm_gcov_ctr.116
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.117
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.118
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.119
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.120
	.word	8                               # 0x8
	.word	__llvm_gcov_ctr.121
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.122
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.123
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.124
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.125
	.word	7                               # 0x7
	.word	__llvm_gcov_ctr.126
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.127
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.128
	.word	8                               # 0x8
	.word	__llvm_gcov_ctr.129
	.word	8                               # 0x8
	.word	__llvm_gcov_ctr.130
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.131
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.132
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.133
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.134
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.135
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.136
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.137
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.138
	.word	3                               # 0x3
	.word	__llvm_gcov_ctr.139
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.140
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.141
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.142
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.143
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.144
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.145
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.146
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.147
	.word	4                               # 0x4
	.word	__llvm_gcov_ctr.148
	.word	5                               # 0x5
	.word	__llvm_gcov_ctr.149
	.word	1                               # 0x1
	.word	__llvm_gcov_ctr.150
	.size	__llvm_internal_gcov_emit_arcs_args.0, 1208

	.type	__llvm_internal_gcov_emit_file_info,@object # @__llvm_internal_gcov_emit_file_info
	.p2align	4, 0x0
__llvm_internal_gcov_emit_file_info:
	.word	.L__unnamed_1
	.word	875575338                       # 0x3430382a
	.word	3469251760                      # 0xcec894b0
	.word	151                             # 0x97
	.word	__llvm_internal_gcov_emit_function_args.0
	.word	__llvm_internal_gcov_emit_arcs_args.0
	.size	__llvm_internal_gcov_emit_file_info, 24

	.section	.init_array.0,"aw",@init_array
	.p2align	2, 0x0
	.word	__llvm_gcov_init
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
